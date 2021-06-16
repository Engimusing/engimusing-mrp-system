from django.shortcuts import render, get_object_or_404, redirect
from django.http import (HttpResponse, HttpResponseRedirect, HttpResponseNotFound,
                         JsonResponse)
from django.utils.decorators import method_decorator
from django.views.generic import ListView, TemplateView
from django.contrib.auth.models import User
from mrp_system.models import (Part, Type, Field, Vendor,
                               ManufacturerRelationship, Location,
                               LocationRelationship, DigiKeyAPI,
                               PartAmount, Product, ProductAmount, ManufacturingOrder,
                               MOProduct, ProductLocation, PurchaseOrder, PurchaseOrderParts)
from mrp_system.forms import (FilterForm, PartForm, ViewPartForm, LocationForm, LocationFormSet,
                              MergeLocationsForm, ManufacturerFormSet,
                              MergeVendorsForm, FieldFormSet, TypeForm, APIForm,
                              ProductForm, PartToProductFormSet, PartToProductForm,
                              ProductToProductFormSet, ProductLocationFormSet,
                              ManufacturingOrderForm, ManufacturingProductFormSet,
                              EditFieldFormSet, QuickTypeForm, EnterTokensForm, GetSelectedManufacturerForm,
                              VendorForm, PurchaseOrderForm, POPartFormSet)
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.forms.models import inlineformset_factory
from django.urls import reverse, reverse_lazy
from django.forms import ModelForm
from django import forms
from django.db.models.functions import Cast
from django.db.models import CharField, Sum
from django.contrib.postgres.search import SearchVector
from django.core.files.storage import DefaultStorage
import requests, json, urllib, xlsxwriter, io, sys, re, time
from bs4 import BeautifulSoup
from urllib.parse import urlparse
from django.contrib import messages
from django.core.files.base import ContentFile
from django.utils.safestring import mark_safe
from itertools import chain
import logging
from django.conf import settings
import http.client
from django.contrib.auth.decorators import login_required, permission_required
from django.views.decorators.csrf import csrf_protect
from rest_framework import viewsets, status
from rest_framework.views import APIView
from rest_framework.response import Response
from .serializers import PartSerializer
# logger = logging.getLogger(__name__)


class InventoryViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Part.objects.all()
    serializer_class = PartSerializer



@method_decorator(csrf_protect, name='dispatch')
class AddPart(APIView):
    def post(self, request, format=None):

        parts = json.dumps(request.data)
        payload = json.loads(parts)
        partType_instance, _ = Type.objects.get_or_create(name=payload['partType'])

        jsonpart = {
            **payload,
            "partType": partType_instance.id,
            "engimusing_part_number": payload['engimusing_part_number'],
            "description": payload['description'],
            "location": payload['location'],
            "manufacturer": payload['manufacturer']
        }
        part = PartSerializer(data=jsonpart)
        if part.is_valid():
            part.save()
            return Response({'Part': part.data}, status=status.HTTP_201_CREATED)
        return Response(part.errors, status=status.HTTP_400_BAD_REQUEST)


@method_decorator(csrf_protect, name='dispatch')
class UpdatePart(APIView):
    def put(self, request, part_id):
        part = json.dumps(request.data)
        payload = json.loads(part)

        try:
            part_to_update = Part.objects.filter(id=part_id)
            partType_id = Type.objects.get(name=payload['partType'])
            payload = {**payload, "partType": partType_id.id}
            part_to_update.update(**payload)
            updated_part = Part.objects.get(id=part_id)
            serializer = PartSerializer(updated_part)
            return Response({'part': serializer.data}, status=status.HTTP_200_OK)
        except Part.DoesNotExist as e:
            return Response({'error': str(e)}, status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            print(e)
            return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class SinglePart(APIView):
    def get(self, request, part_id):
        part = Part.objects.get(id=part_id)
        serializer = PartSerializer(part)
        return Response(serializer.data, status=status.HTTP_200_OK) 


def class_view_decorator(function_decorator):
    """Convert a function based decorator into a class based decorator usable
    on class based Views.

    Can't subclass the `View` as it breaks inheritance (super in particular),
    so we monkey-patch instead.
    """

    def simple_decorator(View):
        View.dispatch = method_decorator(function_decorator)(View.dispatch)
        return View

    return simple_decorator


@class_view_decorator(login_required)
class TypeListView(ListView):
    model = Type
    template_name = 'type_list.html'
    ordering = ['name']

#takes in list of type name, prefix and fields for fast entry
def quick_type_create(request):
    if request.method == 'POST':
        form = QuickTypeForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data['fields']
            #split up data and process it
            data = data.split(",")
            typeName = data.pop(0).strip()
            suffix = data.pop(0).strip()
            fields = {}
            number = 1
            #assign each field to a character field up to 35
            for d in data:
                if number > 35:
                    messages.warning(request, ('Part model can only track 35 fields.'))
                    url = reverse('quick_type')
                    return HttpResponseRedirect(url)
                fields[d.strip()] = "char"+str(number)
                number += 1
            #create type and field models    
            partType = Type.objects.create(name=typeName, prefix=suffix)
            for name, field in fields.items():
                Field.objects.create(name=name, fields=field, typePart=partType)
            redirect_url = reverse('edit_type', args=[partType.pk])
            return HttpResponseRedirect(redirect_url)
    else:
        form = QuickTypeForm()
    return render(request,'quick_type_form.html',{'form': form})


@class_view_decorator(login_required)
class TypeCreate(CreateView):
    form_class = TypeForm
    template_name = 'type_form.html'
    success_url = reverse_lazy('list_types')

    def get(self, request, *args, **kwargs):
            self.object = None
            form_class = self.get_form_class()
            form = self.get_form(form_class)
            field_formset = FieldFormSet()
            hint = "Enter Part Type name, Prefix for Engimusing Part Number, "
            hint += "and name of each individual field to be tracked (excluding description, "
            hint += "part numbers, manufacturer, location, and stock)."
            return render(request, self.template_name, {'form': form,
                                                    'field_formset': field_formset,
                                                    'hint': hint})

    def post(self, request, *args, **kwargs):
        self.object = None
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        field_formset = FieldFormSet(request.POST)
        if (form.is_valid() and field_formset.is_valid()):
            return self.form_valid(form, field_formset)
        else:
            return self.form_invalid(form, field_formset)

    def form_valid(self, form, field_formset):
        self.object = form.save()
        field_formset.instance = self.object
        forms = field_formset.save(commit=False)
        count = 1
        """assign field names to fields, don't need to check for 35 because
        only allows 35 fields in form"""
        for f in forms:
            f.fields = 'char' + str(count)
            count += 1
            f.save()
        return super(TypeCreate, self).form_valid(form)

    def form_invalid(self, form, field_formset):
        return self.render_to_response(
            self.get_context_data(form=form, field_formset=field_formset))


@class_view_decorator(login_required)
class EditType(UpdateView):
    model = Type
    form_class = TypeForm
    pk_url_kwarg = 'type_id'
    template_name = 'type_form.html'
    success_url = reverse_lazy('list_types')

    def get(self, request, *args, **kwargs):
            self.object = self.get_object()
            form_class = self.get_form_class()
            form = self.get_form(form_class)
            field_formset = EditFieldFormSet(instance=self.object)
            hint = "Enter Part Type name, Prefix for Engimusing Part Number, "
            hint += "and name of each individual field to be tracked (excluding description, "
            hint += "part numbers, manufacturer, location, and stock). \n"
            hint += "Ensure each field has a different Character field type selected!"
            return render(request, self.template_name, {'form': form,
                                                    'field_formset': field_formset,
                                                    'hint': hint})

    def post(self, request, *args, **kwargs):
        self.object = self.get_object()
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        field_formset = EditFieldFormSet(request.POST, instance=self.object)
        if (form.is_valid() and field_formset.is_valid()):
            return self.form_valid(form, field_formset)
        else:
            return self.form_invalid(form, field_formset)

    def form_valid(self, form, field_formset):
        self.object = form.save()
        #must save parent model first and then use it to save child models
        field_formset.instance = self.object
        field_formset.save()
        return HttpResponseRedirect(self.get_success_url())

    def form_invalid(self, form, field_formset):
        return self.render_to_response(
            self.get_context_data(form=form, field_formset=field_formset))


@class_view_decorator(login_required)
class DeleteType(DeleteView):
    model = Type
    success_url = reverse_lazy('list_types')
    pk_url_kwarg = 'type_id'
    template_name = 'delete_type.html' 


def PartCreate(request, type_id):
    partType = Type.objects.get(id=type_id)

    if request.method == 'POST':
        #must pass request.FILES for datasheets
        form = PartForm(type_id, request.POST, request.FILES)
        manu_formset = ManufacturerFormSet(request.POST)
        location_formset = LocationFormSet(request.POST)
        if form.is_valid() and manu_formset.is_valid() and location_formset.is_valid():
            self_object = form.save(commit=False)
            #add the part type to part
            self_object.partType_id = type_id
            self_object.save()
            #assign part to location and manufacturer relationship
            location_formset.instance = self_object
            location_formset.save()
            manu_formset.instance = self_object
            manu_formset.save()
            url = reverse('list_parts', args=[partType.pk])
            return HttpResponseRedirect(url)
    else:
        form = PartForm(type_id=type_id)
        manu_formset = ManufacturerFormSet()
        location_formset = LocationFormSet()
    return render(request,'part_form.html', {'part_form': form,
                                             'location_formset': location_formset,
                                             'manu_formset': manu_formset,
                                             'partType': partType})

def PartEdit(request, type_id, id):
    partType = Type.objects.get(id=type_id)
    instance = get_object_or_404(Part, id=id)

    if request.method == 'POST':
        form = PartForm(type_id, request.POST, request.FILES, instance=instance)
        manu_formset = ManufacturerFormSet(request.POST, instance=instance)
        location_formset = LocationFormSet(request.POST, instance=instance)
        if form.is_valid():
            part = form.save(commit=False)
            part.partType_id = type_id
            if manu_formset.is_valid() and location_formset.is_valid():
                part.save()
                manu_formset.save()
                location_formset.save()
                url = reverse('list_parts', args=[partType.pk])
                return HttpResponseRedirect(url)
    else:
        form = PartForm(type_id=type_id, instance=instance)
        manu_formset = ManufacturerFormSet(instance=instance)
        location_formset = LocationFormSet(instance=instance)
    return render(request,'part_form.html', {'part_form': form,
                                             'location_formset': location_formset,
                                             'manu_formset': manu_formset,
                                             'partType': partType})


def ListParts(request, type_id):
    # if not request.user.is_authenticated:
    #     return redirect('%s?next=%s' % (settings.LOGIN_URL, request.path))
    filters = {}
    partType = Type.objects.get(id=type_id)
    parts = Part.objects.filter(partType=partType)
    fields = Field.objects.filter(typePart_id=type_id)
    #list of all possible fields
    list_fields = ['manufacturer','location']
    for x in range(1,36):
        list_fields.append('char' + str(x))
    name = ''
    for field in fields:
        if field.fields == "char1":
            name = field.name
    searchField = None
    models = {}
    for field in fields:
        models[field.fields] = field.name
    if request.method == 'POST':
        #pass list of fields and field names for part type to filter form
        form = FilterForm(request.POST, models=models, type_id=type_id)
        #add all filters that have been selected
        for n in list_fields:
            if request.POST.getlist(n):
                filters[n + '__in'] = request.POST.getlist(n)
        searchField = request.POST.get('search')
        #reset a blank form that could be filtered again
        form=FilterForm(models=models, type_id=type_id)
    else:
        form = FilterForm(models=models, type_id=type_id)
    #apply filters to part list
    parts = parts.filter(**filters)
    #create list of current filters to notify user
    string_filters = 'Current Filters: '
    for key, value in filters.items():
        if key == 'location__in':
            locations = Location.objects.filter(id__in=value)
            string_filters += ", ".join(l.name for l in locations) + '; '
        elif key == 'manufacturer__in':
            manufacturers = Vendor.objects.filter(id__in=value)
            string_filters += ", ".join(m.name for m in manufacturers) + '; '
        else:
            string_filters += ", ".join(v for v in value) + '; '
    string_filters += "\t Search Field: "
    if searchField:
        string_filters += searchField
    if searchField == "" or searchField is None:
        parts = parts.distinct('id')
    else:
        #apply search field
        parts = parts.annotate(search=SearchVector('manufacturer__name', 'location__name', 'description',
                                                   'engimusingPartNumber', 'manufacturerrelationship__partNumber',
                                                   'char1', 'char2','char3','char4','char5','char6','char7','char8',
                                                   'char9','char10','char11','char12','char13','char14','char15',
                                                   'char16','char17','char18','char19','char20','char21','char22',
                                                   'char23','char24','char25','char26','char27','char28','char29',
                                                   'char30','char31','char32','char33','char34','char35')).filter(search=searchField)
        parts = parts.distinct('id')
    return render(request, 'part_list.html', {'type': partType, 'parts': parts,
                                              'fields': fields, 'form': form,
                                              'name': name, 'string_filters': string_filters})


def PartView(request, type_id, id):
    partType = Type.objects.get(id=type_id)
    instance = get_object_or_404(Part, id=id)
    selection = None
    if request.method == 'POST':
        form = ViewPartForm(type_id, request.POST, request.FILES, instance=instance)
        manu_formset = ManufacturerFormSet(request.POST, instance=instance)
        location_formset = LocationFormSet(request.POST, instance=instance)
        if form.is_valid():
            selection = form.cleaned_data['active_feed']
            part = form.save(commit=False)
            part.partType_id = type_id
            if manu_formset.is_valid() and location_formset.is_valid():
                part.save()
                manu_formset.save()
                location_formset.save()
                url = reverse('list_parts', args=[partType.pk])
                return HttpResponseRedirect(url)
    else:
        form = ViewPartForm(type_id=type_id, instance=instance)
        manu_formset = ManufacturerFormSet(instance=instance)
        location_formset = LocationFormSet(instance=instance)
    return render(request, 'part_view.html', {'view_part_form': form,
                                              'location_formset': location_formset,
                                              'manu_formset': manu_formset,
                                              'selection': selection,
                                              'partType': partType,
                                              'part': instance})


@class_view_decorator(login_required)
class DeletePart(DeleteView):
    model = Part
    success_url = reverse_lazy('list_types')
    pk_url_kwarg = 'part_id'
    template_name = 'delete_part.html'


@class_view_decorator(login_required)
class VendorListView(ListView):
    template_name = 'vendor_list.html'
    context_object_name = 'all_manufacturers'

    def get_queryset(self):

        return Vendor.objects.filter(vendor_type='manufacturer').order_by('name')

    def get_context_data(self, **kwargs):
        context = super(VendorListView, self).get_context_data(**kwargs)
        context['distributors'] = Vendor.objects.filter(vendor_type='distributor').order_by('name')
        return context


@class_view_decorator(login_required)
class LocationListView(ListView):
    model = Location
    template_name = 'location_list.html'
    ordering = ['name']


@class_view_decorator(login_required)
class CreateVendor(CreateView):
    model = Vendor
    form_class = VendorForm
    template_name = 'vendor_form.html'
    success_url = reverse_lazy('list_vendors')

    def get_context_data(self, **kwargs):
        #pass list of already created manufacturer to template to list under form
        kwargs['vendors'] = Vendor.objects.order_by('name')
        return super(CreateVendor, self).get_context_data(**kwargs)


@class_view_decorator(login_required)
class CreateLocation(CreateView):
    model = Location
    fields = ['name']
    template_name = 'location_form.html'
    success_url = reverse_lazy('list_locations')

    def get_context_data(self, **kwargs):
        kwargs['locations'] = Location.objects.order_by('name')
        return super(CreateLocation, self).get_context_data(**kwargs)


@class_view_decorator(login_required)
class VendorUpdate(UpdateView):
    
    # fields = ['name','vendor_type','address','phone','web_address']
    form_class = VendorForm
    model = Vendor
    pk_url_kwarg = 'vendor_id'
    template_name = 'update_vendor.html'
    success_url = reverse_lazy('list_vendors')


@class_view_decorator(login_required)
class LocationUpdate(UpdateView):
    model = Location
    fields = ['name']
    pk_url_kwarg = 'location_id'
    template_name = 'update_location.html'
    success_url = reverse_lazy('list_locations')


#used in part list to quickly edit location and stock
def LocationRelationshipEdit(request, locationrelationship_id):
    rel = get_object_or_404(LocationRelationship, id=locationrelationship_id)
    partType = Type.objects.get(part=rel.part)
    if request.method == "POST":
        form = LocationForm(request.POST, instance=rel)
        if form.is_valid():
            form.save()
            nextUrl = request.POST.get('next', '/')
            return HttpResponseRedirect(nextUrl)
    else:
        form = LocationForm(instance=rel)
    return render(request, 'update_loc_relationship.html', {'form': form,
                                                            'loc_rel': rel,
                                                            'partType': partType})


#used in part list to quickly add location and stock if there isn't one
def LocationRelationshipAdd(request, part_id):
    part = get_object_or_404(Part, id=part_id)
    partType = Type.objects.get(part=part)
    if request.method == "POST":
        form = LocationForm(request.POST)
        if form.is_valid():
            location = form.cleaned_data['location']
            stock = form.cleaned_data['stock']
            LocationRelationship.objects.create(part=part, location=location, stock=stock)
            nextUrl = request.POST.get('next', '/')
            return HttpResponseRedirect(nextUrl)
    else:
        form = LocationForm()
    return render(request, 'add_loc_relationship.html', {'form': form, 'partType': partType})


@class_view_decorator(login_required)
class LocationRelationshipDelete(DeleteView):
    model = LocationRelationship
    pk_url_kwarg = 'locationrelationship_id'    
    template_name = 'delete_location.html'

    def get_success_url(self):
        #redirect to part list view for part type
        loc_id=self.kwargs['locationrelationship_id']
        rel = get_object_or_404(LocationRelationship, id=loc_id)
        partType = Type.objects.get(part=rel.part)
        return reverse_lazy('list_parts', kwargs={'type_id': partType.id})


@class_view_decorator(login_required)
class VendorDelete(DeleteView):
    model = Vendor
    pk_url_kwarg = 'vendor_id'
    template_name = 'delete_vendor.html'
    success_url = reverse_lazy('list_vendors')


@class_view_decorator(login_required)
class LocationDelete(DeleteView):
    model = Location
    pk_url_kwarg = 'location_id'
    template_name = 'delete_location.html'
    success_url = reverse_lazy('list_locations')


#takes in 2 objects and passes to mergeVendor function
def MergeVendorView(request):
    if request.method == "POST":
        form = MergeVendorsForm(request.POST)
        if form.is_valid():
            primary_object = form.cleaned_data['primary']
            alias_object = form.cleaned_data['alias']
            if not isinstance(alias_object, Vendor):
                raise TypeError('Only Vendor instances can be merged')
            
            if not isinstance(primary_object, Vendor):
                raise TypeError('Only Vendor instances can be merged')

            type_alias = alias_object.vendor_type
            type_primary = primary_object.vendor_type
            if type_alias != "manufacturer" or type_primary != "manufacturer":
                messages.warning(request,'Vendors must be of manufacturer type to be merged.')
                return redirect(reverse('merge_vendors'))

            #replace all instance of alias vendor with primary vendor
            parts = alias_object.part_set.all()
            partNumber = []
            partSet = []
            #get all needed information from alias_object
            for part in parts:
                m = ManufacturerRelationship.objects.get(part=part, manufacturer=alias_object)
                partNumber.append(m.partNumber)
                partSet.append(m.part)
            alias_object.part_set.clear()
            length = len(partSet)
            #set all alias_object relationships to primary object
            for x in range(length):
                ManufacturerRelationship.objects.create(part=partSet[x],
                                                        manufacturer=primary_object,
                                                        partNumber=partNumber[x])
            alias_object.delete()
            return redirect('list_vendors')
    else: form = MergeVendorsForm()
    return render(request, "merge_vendors.html", {"form":form})


def MergeLocationView(request):
    if request.method == "POST":
        form = MergeLocationsForm(request.POST)
        if form.is_valid():
            primary_object = form.cleaned_data['primary']
            alias_object = form.cleaned_data['alias']
            MergeLocation(primary_object, alias_object)
            return redirect('list_locations')
    else: form = MergeLocationsForm()
    return render(request, "merge_locations.html", {"form":form})


def MergeLocation(primary_object, alias_object):
    #ensure objects are of type Location
    if not isinstance(alias_object, Location):
        raise TypeError('Only Location instances can be merged')
    
    if not isinstance(primary_object, Location):
        raise TypeError('Only Location instances can be merged')

    parts = alias_object.part_set.all()
    stock = []
    partSet = []
    #get all needed information from alias_object
    for part in parts:
        l = LocationRelationship.objects.get(part=part, location=alias_object)
        stock.append(l.stock)
        partSet.append(l.part)
    alias_object.part_set.clear()
    length = len(partSet)
    #set all alias_object relationships to primary object
    for x in range(length):
        LocationRelationship.objects.create(part=partSet[x],
                                            location=primary_object,
                                            stock=stock[x])
    alias_object.delete()


def enter_digi_part(request):
    if request.method == "POST":     
        barcode = request.POST.get('barcode','')
        partNumber = request.POST.get('partNumber','')
        mouserPartNumber = request.POST.get('mouserPartNumber','')
        emusPartNumb = request.POST.get('emusPartNumber','')
        location = request.POST.get('location','')
       
        search = ''
        buttonPressed = request.POST.get('lookupBtn','')
        if (buttonPressed == 'Lookup Digi-Key') or (buttonPressed == 'Lookup Barcode' ):
        #elif buttonPressed == 'Lookup Manu Part Number':
            #search = manuPartNumb
            #this model holds the access and refresh token for digikey API
            digi = DigiKeyAPI.objects.get(name="DigiKey")

            # get new access token with refresh token
            API_ENDPOINT = "https://sandbox-api.digikey.com/v1/oauth2/authorize"

            data = {'client_id': 'jT2cg2V4fAxE6gGO2XjPRVlTALrBdbmH',
                    'client_secret': 'rLzUdLh1ALOicWwo',
                    'refresh_token': digi.refresh_token,
                    'redirect_uri': 'http://localhost/',
                    'grant_type': 'refresh_token'
                    }
            r = requests.post(url=API_ENDPOINT, data=data)
            print(r.text)
            response = r.json()
            try:
                refreshToken = response['refresh_token']
            except (IndexError, KeyError) as e:
                print(e)
                messages.warning(request, ('Digi-Key access tokens are off.'))
                url = reverse('digi_part')
                return HttpResponseRedirect(url)

            # set access and refresh token from tokens returned with API
            accessToken = response['access_token']
            setattr(digi, "refresh_token", refreshToken)
            setattr(digi, "access_token", accessToken)
            digi.save()
            # if digikey barcode, use barcode api to get part number
            if (buttonPressed == "Lookup barcode" and barcode):
                conn = http.client.HTTPSConnection("api.digikey.com")

                headers = {
                    'x-ibm-client-id': '73432ca9-e8ba-4965-af17-a22107f63b35',
                    'authorization': digi.access_token,
                    'accept': "application/json"
                }

                conn.request("GET", "/services/barcode/v1/productbarcode/" + barcode, headers=headers)

                res = conn.getresponse()
                data = res.read().decode("utf-8")
                part = json.loads(data)
                partNumber = part['DigiKeyPartNumber']
                search = partNumber

        # if mouser barcode, its a manufacturer number
        if buttonPressed == 'Lookup Digi-Key':
            search = partNumber
        elif buttonPressed == 'Lookup Mouser Part Number':
            print('>>>>>>>>>> HELLO WORLD <<<<<<<<<<<') 
            try:         
                return lookupMouser(request, mouserPartNumber)
            except Exception as e:
                logger.exception("EXCEPTION OCCURED!")           
 
        elif buttonPressed == 'Lookup Emus Part Number':
            if emusPartNumb:
                search = emusPartNumb
                part = get_object_or_404(Part, engimusingPartNumber=search)
                if not part:
                    return HttpResponseNotFound('<h1>Invalid part number')
                else:
                    redirect_url = reverse('edit_part', args=[part.partType_id, part.id])
                    return HttpResponseRedirect(redirect_url)        
            else:
                return HttpResponseNotFound('<h1> You must enter a part number')

        elif buttonPressed == 'Lookup Location' and location:
            search = location
            loc = Location.objects.filter(name=search).first()
            if loc:
                exists = LocationRelationship.objects.filter(location_id=loc).first()
                if not exists:
                    return HttpResponseNotFound('<h1>No parts found for location entered')
                else:
                    redirect_url = reverse('part_location', args=[loc.id])
                    return HttpResponseRedirect(redirect_url)
            else:
                return HttpResponseNotFound('<h1>Invalid location')
        else:
            return HttpResponseNotFound('<h1>You must enter a number in a field!</h1>')



        # get part information from part number or manufacturer part number
        conn = http.client.HTTPSConnection("api.digikey.com")

        payload = "{\"SearchOptions\":[\"ManufacturerPartSearch\"],\"Keywords\":\"" + search + "\",\"RecordCount\":\"10\",\"RecordStartPosition\":\"0\",\"Filters\":{\"CategoryIds\":[27442628],\"FamilyIds\":[81316194],\"ManufacturerIds\":[88520800],\"ParametricFilters\":[{\"ParameterId\":\"725\",\"ValueId\":\"7\"}]},\"Sort\":{\"Option\":\"SortByUnitPrice\",\"Direction\":\"Ascending\",\"SortParameterId\":\"50\"},\"RequestedQuantity\":\"50\"}"

        headers = {
            'x-ibm-client-id': '73432ca9-e8ba-4965-af17-a22107f63b35',
            'x-digikey-locale-site': "US",
            'x-digikey-locale-language': "en",
            'x-digikey-locale-currency': "USD",
            'authorization': digi.access_token,
            'content-type': "application/json",
            'accept': "application/json"
        }

        conn.request("POST", "/services/partsearch/v2/keywordsearch", payload, headers)

        res = conn.getresponse()
        string = res.read().decode('utf-8')
        sys.stdout.flush()
        jstr = json.loads(string)
        logger.info('Im here')
    # try to get the part information
        try:
            part = jstr['ExactDigiKeyPart']
            logger.info(part)
            data = part['Parameters']
            logger.info(data)
        except(IndexError, KeyError, TypeError):
        # here's the alternative way
            try:
                part = jstr['ExactParts'][0]
                data = part['Parameters']
            except(IndexError, KeyError, TypeError):
                if buttonPressed== 'Lookup Mouser Part Number' and mouserPartNumber:
                    return HttpResponseNotFound(
                        '<h1>Invalid part number. Ensure the manufacturer part number exists on digi-key.</h1>')
                else:
                    return HttpResponseNotFound('<h1>Invalid Part Number.</h1>')
        # grab all parameters returned from api
        params = {}
        # loop through all of the parameters and stick them in parms
        for value in data:
            params[value['Parameter']] = value['Value']
        # create a type name
        typeName = part['Family']['Text']
        # get or create a part type
        partType, created = Type.objects.get_or_create(name=typeName)
        count = 1
        # if new part type, assign prefix
        if created:
            # get all words in type name, exclude -'s
            list_name = re.findall(r'\w+', typeName)
            # get word count
            word_count = len(list_name)
            # assign prefix based on amount of words in type name
            prefix = ""
            if word_count == 1:
                prefix = typeName[:3].upper()
            if word_count == 2:
                prefix = (list_name[0][:1] + list_name[1][:2]).upper()
            if word_count >= 3:
                prefix = (list_name[0][:1] + list_name[1][:1] + list_name[2][:1]).upper()
            setattr(partType, "prefix", prefix)
            partType.save()
            # series is always separate from the other parameters
            try:
                part['Series']['Parameter']
                Field.objects.create(name='Series', fields='char1', typePart=partType)
                count = 2
            except(IndexError, KeyError, TypeError):
                count = 1
            # create upo to 35 fields from the parameters
            for name, value in params.items():
                # print("here")
                if count <= 35:
                    field = "char" + str(count)
                    Field.objects.create(name=name, fields=field, typePart=partType)
                    count += 1
                # part model only allows for 35 fields currently
                else:
                    messages.warning(request, 'Can\'t create type, too many fields.')
                    url = reverse('digi_part')
                    return HttpResponseRedirect(url)
        fields = Field.objects.filter(typePart=partType)
        description = part['DetailedDescription']
        if not description:
            description = part['ProductDescription']
        try:
            number = part['ManufacturerPartNumber']
            manufacturer = part['ManufacturerName']['Text']
        except(IndexError, KeyError, TypeError):
            number = None
            manufacturer = None
        if manufacturer:
            manu, created = Vendor.objects.get_or_create(name=manufacturer, vendor_type="manufacturer")
            # this is our way of checking for duplicates
            exists = ManufacturerRelationship.objects.filter(manufacturer=manu, partNumber=number).first()
            if exists:
                messages.warning(request, 'Manufacturer Part Number already exists.')
                part = exists.part
                partType = exists.part.partType
                url = reverse('edit_part', args=(partType.pk, part.pk))
                return HttpResponseRedirect(url)
        new_part = Part.objects.create(partType=partType, description=description)
        if manufacturer:
            ManufacturerRelationship.objects.create(part=new_part, manufacturer=manu, partNumber=number)
        for field in fields:
            name = field.name
            field_name = field.fields
            # composition parameter is formatted differently
            if field.name == "Composition":
                try:
                    value = part['Family']['Text']
                    setattr(new_part, field.fields, value)
                except(IndexError, KeyError):
                    pass
            # try to get each value and assign it to the part
            try:
                value = part[name]['Value']
                setattr(new_part, field.fields, value)
            except(IndexError, KeyError):
                try:
                    value = params[name]
                    setattr(new_part, field.fields, value)
                except(IndexError, KeyError):
                    pass
        new_part.save()
        # assign datasheet if it exists
        try:
            datasheet_url = part['PrimaryDatasheet']
            if 'pdf' in datasheet_url:
                try:
                    datasheet_name = urlparse(datasheet_url).path.split('/')[-1]
                    headers = {
                        'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0'}
                    response = requests.get(datasheet_url, headers=headers, timeout=5)
                    if response.status_code == 200:
                        new_part.datasheet.save(datasheet_name, ContentFile(response.content), save=True)
                except (requests.exceptions.SSLError):
                    pass
        except(IndexError, KeyError, TypeError):
            pass
        redirect_url = reverse('edit_part', args=[partType.pk, new_part.id])
        return HttpResponseRedirect(redirect_url)
    
  #  return render(request, "oauth.html", {'form': form})
    return render(request, "oauth.html")


def lookupMouser(request, mouserPartNumber):
    # get part information from part number or manufacturer part number
        conn = http.client.HTTPSConnection("api.mouser.com")

        payload = "{\"SearchByKeywordRequest\":{\"keyword\":\"" + mouserPartNumber + "\"}}"

        headers = {
            'content-type': "application/json"    
        }

        conn.request("POST", "/api/V1.0/search/keyword/?apikey=4f3a5802-6d72-4ae2-b25d-b8f9e96d8fe4&", payload, headers)

        res = conn.getresponse()
        string = res.read().decode('utf-8')
        sys.stdout.flush()
        jstr = json.loads(string)
        searchResults = jstr['SearchResults']
        if searchResults['NumberOfResult'] == 0:
            return HttpResponseNotFound('<h1> invalid part number')
            
        parts = searchResults['Parts']
        part = parts[0]
        typeName = part['Category']
        partType, created = Type.objects.get_or_create(name=typeName)

        if created:
            # get all words in type name, exclude -'s
            list_name = re.findall(r'\w+', typeName)
            # get word count
            word_count = len(list_name)
            # assign prefix based on amount of words in type name
            prefix = ""
            if word_count == 1:
                prefix = typeName[:3].upper()
            if word_count == 2:
                prefix = (list_name[0][:1] + list_name[1][:2]).upper()
            if word_count >= 3:
                prefix = (list_name[0][:1] + list_name[1][:1] + list_name[2][:1]).upper()
            setattr(partType, "prefix", prefix)
            partType.save()
        description = part['Description']
        number = part['ManufacturerPartNumber']
        manufacturer = part['Manufacturer']
        if manufacturer:
            manu, created = Vendor.objects.get_or_create(name=manufacturer, vendor_type="manufacturer")
            # this is our way of checking for duplicates
            exists = ManufacturerRelationship.objects.filter(manufacturer=manu, partNumber=number).first()
            if exists:
                messages.warning(request, 'Manufacturer Part Number already exists.')
                part = exists.part
                partType = exists.part.partType
                url = reverse('edit_part', args=(partType.pk, part.pk))
                return HttpResponseRedirect(url)
        new_part = Part.objects.create(partType=partType, description=description)
        if manufacturer:
            ManufacturerRelationship.objects.create(part=new_part, manufacturer=manu, partNumber=number)
        
        try:
            
            field = Field.objects.create(name='ProductDetailUrl', fields='char1', typePart=partType)
            try:
                value = part['ProductDetailUrl']
                setattr(new_part, field.fields, value)
            except(IndexError, KeyError):
                pass
        except(IndexError, KeyError, TypeError):
            pass
            
        new_part.save()

        try:
            datasheet_url = part['DataSheetUrl']
            if 'pdf' in datasheet_url:
                try:
                    datasheet_name = urlparse(datasheet_url).path.split('/')[-1]
                    headers = {
                        'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0'}
                    response = requests.get(datasheet_url, headers=headers, timeout=5)
                    if response.status_code == 200:
                        new_part.datasheet.save(datasheet_name, ContentFile(response.content), save=True)
                except (requests.exceptions.SSLError):
                    pass
        except(IndexError, KeyError, TypeError):
            pass
        redirect_url = reverse('edit_part', args=[partType.pk, new_part.id])
        return HttpResponseRedirect(redirect_url)


def search_all_models(request):
    search_query = request.POST.get("search_text")
    all_checkbox = request.POST.get("all_checkbox")

    filter_list = [
        request.POST.get("part_checkbox"),
        request.POST.get("vendor_checkbox"),
        request.POST.get("location_checkbox"),
        request.POST.get("product_checkbox"),
        request.POST.get("manufacturingorder_checkbox"),
        request.POST.get("purchaseorder_checkbox"),
    ]
    models_list = [Part, Vendor, Location, Product, ManufacturingOrder, PurchaseOrder]

    if not all_checkbox:
        models_list = [model for model, checkbox in zip(models_list, filter_list) if checkbox is not None]

    results_list = []
    if search_query:
        for model in models_list:
            # get rid of auto-generated fields
            fields_list = []
            fields_list2 = []
            if model.__name__ == "ManufacturingOrder":
                # fields_list = [f for f in Product._meta.fields if f.get_internal_type()!="ForeignKey"]
                fields_list = [f for f in Part._meta.fields if f.get_internal_type()!="ForeignKey"]
                fields_list2 = [f for f in Vendor._meta.fields if f.get_internal_type()!="ForeignKey"]
                fields_list2 = [f for f in fields_list2 if "id" not in f.name]

            elif model.__name__ == "PurchaseOrder":
                fields_list = [f for f in Part._meta.fields if f.get_internal_type()!="ForeignKey"]
            else:
                fields_list = [f for f in model._meta.fields if f.get_internal_type()!="ForeignKey"]
            
            fields_list = [f for f in fields_list if "id" not in f.name]

            # create search vectors for each fielf and convert int and float fields to charfields
            search_vecs = [SearchVector(f.name) if f.get_internal_type()=="CharField"\
                            else SearchVector(Cast(f.name, CharField())) for f in fields_list]
            search_vecs2 = []
            if model.__name__ == "ManufacturingOrder":
                search_vecs2 = [SearchVector(f.name) if f.get_internal_type()=="CharField"\
                            else SearchVector(Cast(f.name, CharField())) for f in fields_list2]

            # ensure unique results               
            cache = set()

            if model.__name__ == "ManufacturingOrder":
                for query in search_query.split():
                    for vec, field in zip(search_vecs2, fields_list2):
                        kwargs = {f"{field.name}__icontains": query}
                        vendors = list(Vendor.objects.annotate(search=vec).filter(**kwargs))
                        # vendor -> manufacturing relationship -> part -> product -> manufacturing order
                        parts = []
                        for vendor in vendors:
                            for mr in list(ManufacturerRelationship.objects.filter(manufacturer=vendor)):
                                parts.append(mr.part)
                        products = []
                        for p in parts:
                            for product in list(Product.objects.filter(part=p)):
                                products.append(product)
                        for p in products:
                            for mo in list(ManufacturingOrder.objects.filter(product=p)):
                                if str(mo) in cache:
                                    continue

                                result_dict = {
                                    "mo_id": mo.id,
                                    "type": model.__name__,
                                    "result": mo
                                    }
                                results_list.append(result_dict)
                                cache.add(str(mo))


            for query in search_query.split():
                for vec, field in zip(search_vecs, fields_list):

                    kwargs = {}
                    results = []

                    if model.__name__ == "ManufacturingOrder":
                        kwargs = {f"{field.name}__icontains": query}
                        parts = list(Part.objects.annotate(search=vec).filter(**kwargs))
                        products = []
                        for part in parts:
                            for product in list(Product.objects.filter(part=part)):
                                products.append(product)
                        results = []
                        for p in products:
                            for mo in list(ManufacturingOrder.objects.filter(product=p)):
                                results.append(mo)

                    elif model.__name__ == "PurchaseOrder": 
                        kwargs = {f"part__{field.name}__icontains": query}
                        results = list(model.objects.filter(**kwargs))

                    else:
                        kwargs = {f"{field.name}__icontains": query}
                        results = list(model.objects.annotate(search=vec).filter(**kwargs))

                    for r in results:
                        if str(r) in cache:
                            continue

                        # if it's a Part
                        if model.__name__ == "Part":
                            locations = r.get_location()
                            stock_locations = r.get_stock()
                            stock = 0
                            # get total stock number
                            if stock_locations:
                                stock = sum([location.stock for location in stock_locations if location.stock is not None])
                            
                            results_list.append({
                                "part": str(r),
                                "part_id": r.pk,
                                "parttype_id": r.partType.pk,
                                "location": locations if locations else None,
                                "stock": stock,
                                "type": model.__name__,
                                "result": r
                                })
                        
                        # if manufacturing order
                        elif model.__name__ == "ManufacturingOrder":
                            results_list.append({
                                "result": str(r),
                                "mo_id": r.id,
                                "type": model.__name__
                            })
                        # if purchase order
                        elif model.__name__ == "PurchaseOrder":
                            results_list.append({
                                "result": str(r),
                                "po_id": r.id,
                                "type": model.__name__
                            })
                        # if vendor
                        elif model.__name__ == "Vendor":
                            results_list.append({
                                "result": str(r),
                                "vendor_id": r.id,
                                "type": model.__name__
                            })

                        else:
                            results_list.append({
                                "type": model.__name__,
                                "result": str(r)
                                })

                        cache.add(str(r))

    return render(
                request, 
                'search_query_results.html', 
                {
                    "query": search_query,
                    "results_list": results_list,
                    "num_results": len(results_list)
                })



def get_location(request, loc_id):

    if loc_id:
        location = Location.objects.filter(id=loc_id).first()
        if location:
            searchField=location.name
            parts = Part.objects.annotate(search=SearchVector('partType__name', 'description', 'location__name',
                                                              'engimusingPartNumber', 'manufacturer__name',
                                                              'manufacturerrelationship__partNumber'), ).filter(
                search=searchField)
        else:
            parts = Part.objects.all()
    else:
        parts = Part.objects.all()

    return render(request, 'part_by_location.html', {'location': location.name,
                                                   'parts': parts, })


"""used in create/edit product form to filter parts in dropdown
called in template with javascript"""

def get_parts(request):
    searchField = request.GET.get('search')
    if searchField:
        parts = Part.objects.annotate(search=SearchVector('partType__name', 'description', 'location__name',
                                                          'engimusingPartNumber', 'manufacturer__name',
                                                          'manufacturerrelationship__partNumber'),).filter(search=searchField)
    else:
        parts = Part.objects.all()
    parts_dict = {}
    for part in parts:
        parts_dict[part.id] = part.engimusingPartNumber + " - " + part.description
    return JsonResponse(parts_dict)


def CreateProduct(request):
    if request.method == 'POST':
        form = ProductForm(request.POST)
        part_formset = PartToProductFormSet(request.POST)
        product_formset = ProductToProductFormSet(request.POST)
        location_formset = ProductLocationFormSet(request.POST)
        if (form.is_valid() and part_formset.is_valid() and
           product_formset.is_valid() and location_formset.is_valid()):
            self_object = form.save()
            part_formset.instance = self_object
            part_formset.save()
            product_formset.instance = self_object
            product_formset.save()
            location_formset.instance = self_object
            location_formset.save()
            url = reverse('list_product')
            return HttpResponseRedirect(url)
    else:
        form = ProductForm()
        part_formset = PartToProductFormSet()
        product_formset = ProductToProductFormSet()
        location_formset = ProductLocationFormSet()
    return render(request,'product_create.html',{'form': form, 'part_formset': part_formset,
                                            'product_formset': product_formset, 'location_formset':
                                                 location_formset})
    
        
def EditProduct(request, id):
    instance = get_object_or_404(Product, id=id)
    if request.method == 'POST':
        form = ProductForm(request.POST, instance=instance)
        part_formset = PartToProductFormSet(request.POST, instance=instance)
        product_formset = ProductToProductFormSet(request.POST, instance=instance)
        location_formset = ProductLocationFormSet(request.POST, instance=instance)
        if (form.is_valid() and part_formset.is_valid() and
            product_formset.is_valid() and location_formset.is_valid()):
            self_object = form.save()
            part_formset.instance = self_object
            part_formset.save()
            product_formset.instance = self_object
            product_formset.save()
            location_formset.instance = self_object
            location_formset.save()
            url = reverse('list_product')
            return HttpResponseRedirect(url)
    else:
        form = ProductForm(instance=instance)
        part_formset = PartToProductFormSet(instance=instance)
        product_formset = ProductToProductFormSet(instance=instance)
        location_formset = ProductLocationFormSet(instance=instance)
    return render(request,'product_create.html', {'form': form, 'part_formset': part_formset,
                                                  'product_formset': product_formset,
                                                  'location_formset': location_formset})


@class_view_decorator(login_required)
class ProductListView(ListView):
    model = Product
    template_name = 'product_list.html'
    ordering = ['description']


@class_view_decorator(login_required)
class DeleteProduct(DeleteView):
    model = Product
    success_url = reverse_lazy('list_product')
    pk_url_kwarg = 'product_id'
    template_name = 'delete_product.html'


def ProductDetailView(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    parts = product.partamount_set.all()
    locations = product.productlocation_set.all()
    component_products = ProductAmount.objects.filter(from_product=product)
    return render(request, 'product_detail.html', {'product': product,
                                                   'locations': locations,
                                                   'parts': parts,
                                                   'component_products': component_products})


#used to gather Bill of material details into a downloadable excel sheet
def bomExcel(parts, description):
    output = io.BytesIO()
    title = "BOM-%s.xlsx" % description
    workbook = xlsxwriter.Workbook(output, {'in_memory': True})
    worksheet = workbook.add_worksheet()
    row = 0
    col = 0
    worksheet.write(row, col, 'Quantity')
    worksheet.write(row, col + 1, 'Engimusing Part Number')
    worksheet.write(row, col + 2, 'Manufacturer')
    worksheet.write(row, col + 3, 'Manufacturer Part Number')
    worksheet.write(row, col + 4, 'Description')
    row += 1
    for key, value in parts.items():
        worksheet.write(row, col, value)
        worksheet.write(row, col + 1, key.engimusingPartNumber)
        worksheet.write(row, col + 2, ",".join(p['manufacturer__name'] for p in
                                               key.manufacturerrelationship_set.values('manufacturer__name')))
        worksheet.write(row, col + 3, ",".join(p['partNumber'] for p in
                                               key.manufacturerrelationship_set.values('partNumber')))
        worksheet.write(row, col + 4, key.description)
        row += 1

    workbook.close()

    output.seek(0)

    #need this so that file will be downloaded
    response = HttpResponse(output, content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
        )
    response['Content-Disposition'] = 'attachment; filename=%s' % title

    return response                


def billOfMaterialsDetail(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    parts = {}
    #get all parts assigned to product
    partList = product.partamount_set.all()
    #create dictionary to group parts and assign value of total amount for duplicate parts
    for p in partList:
        if parts.get(p.part):
            parts[p.part]+=p.amount
        else:
            parts[p.part]=p.amount
    #get all sub products
    products = ProductAmount.objects.filter(from_product=product)
    while products:
        #copy over products and then clear queryset so it can be reassigned
        productList = products
        products = ProductAmount.objects.none()
        for pr in productList:
            partList2 = pr.to_product.partamount_set.all()
            #multiplier needed to get total part amount(amount * number of products)
            multiplier = pr.amount 
            for pa in partList2:
                if parts.get(pa.part):
                    parts[pa.part]+= (pa.amount * multiplier)
                else:
                    parts[pa.part]= (pa.amount * multiplier)
            #if product list has multiple sub products, combine for one big product list
            if products:
                products = products.union(ProductAmount.objects.filter(from_product=pr.to_product))
            else:
                products = ProductAmount.objects.filter(from_product=pr.to_product)
    #download BOM button has been pressed, call bomExcel function to download excel file
    if request.GET.get('downloadBtn'):
        return bomExcel(parts, product.description)
    return render(request, 'bom_detail.html', {'parts': parts, 'product': product}) 


def CreateMO(request):
    if request.method == 'POST':
        form = ManufacturingOrderForm(request.POST)
        manu_formset = ManufacturingProductFormSet(request.POST)
        if form.is_valid() and manu_formset.is_valid():
            self_object = form.save()
            manu_formset.instance = self_object
            manu_formset.save()
            url = reverse('list_mo')
            return HttpResponseRedirect(url)
    else:
        form = ManufacturingOrderForm()
        manu_formset = ManufacturingProductFormSet()
    return render(request, 'mo_form.html', {'form': form, 'manu_formset': manu_formset})


@class_view_decorator(login_required)
class MOListView(ListView):
    model = ManufacturingOrder
    template_name = 'mo_list.html'
    ordering = ['date_created']


def EditMO(request, id):
    instance = get_object_or_404(ManufacturingOrder, id=id)
    if request.method == 'POST':
        form = ManufacturingOrderForm(request.POST, instance=instance)
        manu_formset = ManufacturingProductFormSet(request.POST, instance=instance)
        if form.is_valid() and manu_formset.is_valid():
            self_object = form.save()
            manu_formset.instance = self_object
            manu_formset.save()
            url = reverse('list_mo')
            return HttpResponseRedirect(url)
    else:
        form = ManufacturingOrderForm(instance=instance)
        manu_formset = ManufacturingProductFormSet(instance=instance)
    return render(request,'mo_form.html',{'form': form, 'manu_formset': manu_formset})


@class_view_decorator(login_required)
class DeleteMO(DeleteView):
    model = ManufacturingOrder
    success_url = reverse_lazy('list_mo')
    pk_url_kwarg = 'manufacturingorder_id'
    template_name = 'delete_mo.html'


def MODetailView(request, mo_id):
    mo = get_object_or_404(ManufacturingOrder, id=mo_id)
    #get all manufacturing order products
    mos = mo.moproduct_set.all()
    products = {}
    parts = {}
    for m in mos:
        #get all parts in product
        partList = m.product.partamount_set.all()
        multiplier = m.amount
        #assign parts to dictionary and get amount needed (product amount * part amount)
        for p in partList:
            #if multiple of same part, combine amount needed
            if parts.get(p.part):
                #value of dictionary will be list to hold total amount needed and amount needed minus what we have
                parts[p.part][0] += (p.amount * multiplier)
            else:
                parts[p.part]= [p.amount * multiplier]
        #get sub products
        product_amounts = ProductAmount.objects.filter(from_product=m.product)
        #dictionary of sub products with their total amounts
        for pr in product_amounts:
            if products.get(pr.to_product):
                products[pr.to_product][0] += (pr.amount * multiplier)
            else:
                products[pr.to_product]= [pr.amount * multiplier]
    #get stock for parts
    for key, value in parts.items():
        locs = LocationRelationship.objects.filter(part=key)
        amount = 0
        for l in locs:
            amount += l.stock
        #checked if we need more of the part then we have
        needed = value[0] - amount
        if needed <= 0:
            needed = 0
        #add amount to order to value list
        parts[key].append(needed)
    #do the same with product stock as with part stock
    for key, value in products.items():
        locs = ProductLocation.objects.filter(product=key)
        amount = 0
        for l in locs:
            amount += l.stock
        needed = value[0] - amount
        if needed <= 0:
            needed = 0
        products[key].append(needed)
    #used to add parts to a Purchase Order
    if request.method == "POST":
        if "addPO" in request.POST:
            #get all checked parts
            checkedlist = request.POST.getlist("checkedbox")
            po_partlist = {}
            for part in checkedlist:
                #strip of engimusing part number
                number = part.split("-",1)[0].strip()
                #strip part description
                description = part.split("-",1)[1].strip()
                if number and description:
                    #get part from description and number
                    part_obj = Part.objects.filter(description=description, engimusingPartNumber=number).first()
                    #add part and quantity needed to dictionary
                    po_partlist[part_obj] = parts[part_obj]
                else:
                    messages.warning(request, ('Part must have an engimusing part number and description to be added.'))
                    url = reverse('detail_mo')
                    return HttpResponseRedirect(url)
            #pass dictionary of selected parts to save a Purchase Order object
            po_id = generate_po_from_mo(po_partlist)
            return HttpResponseRedirect(reverse('edit_po', args=[po_id]))
    return render(request, 'mo_detail.html', {'parts': parts, 'products': products,
                                              'mo': mo})


def generate_po_from_mo(partList):
    #create purchase order, PO number will be assigned
    po = PurchaseOrder.objects.create()
    #assign all parts from parts dictionary to the purchase order
    for key, value in partList.items():
        PurchaseOrderParts.objects.create(purchase_order=po, part=key, quantity=value[1])
    return po.id   


def po_list_view(request):
    purchase_orders = PurchaseOrder.objects.all()
    if request.method == 'POST':
        #used to filter POs by part or vendor
        search = request.POST["search"]
        purchase_orders = purchase_orders.annotate(search=SearchVector('part__engimusingPartNumber',
                                                                       'part__description',
                                                                       'vendor__name')).filter(search=search)
        #need this otherwise a purchase order may be listed several times
        purchase_orders = purchase_orders.distinct('number')
    return render(request, 'purchase_order_list.html',
                  {'purchase_orders': purchase_orders})


def create_purchase_order(request):
    if request.method == 'POST':
        form = PurchaseOrderForm(request.POST)
        part_formset = POPartFormSet(request.POST)
        if form.is_valid() and part_formset.is_valid():
            self_object = form.save()
            #assign purchase order to POPart relationship
            part_formset.instance = self_object
            part_formset.save()
            url = reverse('list_po')
            return HttpResponseRedirect(url)
    else:
        form = PurchaseOrderForm()
        part_formset = POPartFormSet()
    return render(request,'purchase_order_form.html',{'form': form,
                                                      'part_formset': part_formset})


def edit_purchase_order(request, id):
    instance = get_object_or_404(PurchaseOrder, id=id)
    if request.method == 'POST':
        form = PurchaseOrderForm(request.POST, instance=instance)
        part_formset = POPartFormSet(request.POST, instance=instance)
        if form.is_valid() and part_formset.is_valid():
            self_object = form.save()
            part_formset.instance = self_object
            part_formset.save()
            url = reverse('list_po')
            return HttpResponseRedirect(url)
    else:
        form = PurchaseOrderForm(instance=instance)
        part_formset = POPartFormSet(instance=instance)
    return render(request,'purchase_order_form.html',{'form': form,
                                                 'part_formset': part_formset})


@class_view_decorator(login_required)
class DeletePurchaseOrder(DeleteView):
    model = PurchaseOrder
    success_url = reverse_lazy('list_po')
    pk_url_kwarg = 'purchaseorder_id'
    template_name = 'delete_purchase_order.html'


def purchase_order_detail(request, purchaseorder_id):
    purchase_order = get_object_or_404(PurchaseOrder, id=purchaseorder_id)
    parts = purchase_order.purchaseorderparts_set.all()
    return render(request, 'purchase_order_detail.html',
                  {'purchase_order': purchase_order,
                   'parts': parts})


#in part list table, can click Purchase Orders to get list of all purchase orders that contain this part
def get_po_from_part(request, part_id):
    part = Part.objects.get(id=part_id)
    purchase_orders = part.purchaseorderparts_set.all()
    return render(request, 'part_po_list.html',
                  {'purchase_orders': purchase_orders,
                   'part': part})


#used to show current tokens for digikey model, useful to switch the access tokens from production to development
def print_tokens_digi(request):
    digi = DigiKeyAPI.objects.get(name="DigiKey")
    access = digi.access_token
    refresh = digi.refresh_token
    return render(request, 'print_tokens.html', {'access':access, 'refresh':refresh})


#form to enter correct access tokens 
def enter_tokens(request):
    if request.method == 'POST':
        form = EnterTokensForm(request.POST)
        if form.is_valid():
            access = form.cleaned_data['access_token']
            refresh = form.cleaned_data['refresh_token']
            digi = DigiKeyAPI.objects.get(name="DigiKey")
            setattr(digi,"access_token",access)
            setattr(digi,"refresh_token",refresh)
            digi.save()
            return HttpResponseRedirect(reverse('list_types'))
    else:
        form = EnterTokensForm()
    return render(request,'enter_tokens.html',{'form': form})

#was used to get part information from digikey through the long url, kept just in case we need it again

##def enter_part(request):
##    if request.method == "POST":
##        form = EnterPartForm(request.POST)
##        if form.is_valid():
##            url = form.cleaned_data['url']
##            partType = form.cleaned_data['partType']
##            page = requests.get(url, timeout=10)
##            data = BeautifulSoup(page.text, 'html.parser')
##            manufacturer_table = data.find(id="product-overview")
##            manufacturer_table_list = manufacturer_table.find_all("th")
##            for manufacturer in manufacturer_table_list:
##                header = manufacturer.text.strip()
##                row = manufacturer.find_next_sibling().text.strip()
##                if header == 'Manufacturer':
##                    manu = row
##                if header == 'Manufacturer Part Number':
##                    man_partNumber = row
##                if header == 'Detailed Description':
##                    detailed_descript = row
##
##            manu, created = Manufacturer.objects.get_or_create(name=manu)
##            
##            part_table = data.find(id="product-attribute-table")
##            part_table_list = part_table.find_all("th")
##            part_attr = {}
##            for part in part_table_list:
##                header = part.text.strip()
##                row = part.find_next_sibling().text.strip()
##                part_attr[header] = row
##                
##            part = Part.objects.create(partType=partType, description=detailed_descript)
##            for field in partType.field.all():
##                name = part_attr.get(field.name)
##                if name == 'null' or name is None or name == '-':
##                    name = ''
##                f = field.fields
##                setattr(part, f, name)
##
##            part.save()
##            
##            ManufacturerRelationship.objects.create(part=part, manufacturer=manu,
##                                                partNumber=man_partNumber)
##            redirect_url = reverse('list_parts', args=[partType.pk])
##            return HttpResponseRedirect(redirect_url)
##    else:
##        form = EnterPartForm()
##    return render(request, "enter_part.html", {"form":form})


#this connects to octopart which we haven't been approved to use

##def mouser_api(request):
##    if request.method == "POST":
##        form = MouserForm(request.POST)
##        if form.is_valid():
##            partNumber = form.cleaned_data['partNumber']
##            partType = form.cleaned_data['partType']
##            
##            url = 'http://octopart.com/api/v3/parts/match?'
##            url += '&queries=[{"sku":"' + partNumber + '"}]'
##            url += '&apikey=683454dc'
##            url += '&include[]=specs'
##            url += '&include[]=descriptions'
##
##            data = urllib.request.urlopen(url).read()
##            response = json.loads(data)
##
##            fields = Field.objects.filter(typePart=partType)
##            for result in response['results']:
##                description = ''
##                try:
##                    description = result['items'][0]['descriptions'][0]['value']
##                except(IndexError, KeyError):
##                    pass
##                new_part = Part.objects.create(partType=partType, description=description)
##                manufacturer = result['items'][0]['manufacturer']['name']
##                number = result['items'][0]['mpn']
##                manu, created = Manufacturer.objects.get_or_create(name=manufacturer)
##                ManufacturerRelationship.objects.create(part=new_part, manufacturer=manu, partNumber=number)
##                for item in result['items']:
##                    if item['specs']:
##                        for field in fields:
##                            if field.mouser_name:
##                                try:
##                                    value = item['specs'][field.mouser_name]['display_value']
##                                    setattr(new_part, field.fields, value)
##                                except(IndexError, KeyError):
##                                    pass
##                new_part.save()
##            redirect_url = reverse('list_parts', args=[partType.pk])
##            return HttpResponseRedirect(redirect_url)
##    else:
##        form = MouserForm()
##    return render(request, "mouser.html", {'form': form})


#used to gather what information is returned from octopart api to add to field object to get correct info

##def mouser_details(request):
##    response = ''
##    if request.method == "POST":
##        form = MouserForm(request.POST)
##        if form.is_valid():
##            partNumber = form.cleaned_data['partNumber']
##            partType = form.cleaned_data['partType']
##            
##            url = 'http://octopart.com/api/v3/parts/match?'
##            url += '&queries=[{"sku":"' + partNumber + '"}]'
##            url += '&apikey=683454dc'
##            url += '&include[]=specs'
##            url += '&include[]=descriptions'
##
##            data = urllib.request.urlopen(url).read()
##            resp = json.loads(data.decode())
##            res = json.dumps(resp, indent=4)
##            response = []
##            try:
##                respo = resp['results'][0]['items'][0]['specs']
##            except(IndexError, KeyError):
##                respo = {}
##                response.append("No specs can be retrieved")
##            #response = json.dumps(respo, indent=4)
##            
##            for key, value in respo.items():
##                response.append(key)
##            if not response:
##                response.append("No specs can be retrieved")
##    else:
##        form = MouserForm()
##    return render(request, "mouser_detail.html", {'form': form, 'response': response})
