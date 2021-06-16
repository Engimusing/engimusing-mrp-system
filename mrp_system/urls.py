from django.urls import path, include
from django.conf.urls import url
from rest_framework.routers import DefaultRouter
from mrp_system.views import InventoryViewSet, AddPart, UpdatePart, SinglePart
from . import views

# inventory_list = InventoryViewSet.as_view({'get': 'list'})

router = DefaultRouter()
router.register('inventory', InventoryViewSet)



urlpatterns = [
    #part types
    path('', views.TypeListView.as_view(), name='list_types'),
    path('api/', include(router.urls)),
    path('api/addPart', AddPart.as_view()),
    path('api/updatePart/<int:part_id>', UpdatePart.as_view()),
    path('api/part/<int:part_id>', SinglePart.as_view()),
    path('type/create/',
         views.TypeCreate.as_view(),
         name='create_type'),
    url(r'^type/edit/(?P<type_id>\d+)/$',
        views.EditType.as_view(),
        name='edit_type'),
    url(r'^type/delete/(?P<type_id>\d+)/$',
        views.DeleteType.as_view(),
        name='delete_type'),
    url(r'^type/quick_create/$',
        views.quick_type_create,
        name='quick_type'),

    #parts
    url(r'^parts/(?P<type_id>\d+)/$',
        views.ListParts,
        name='list_parts'),
    url(r'^part/create/(?P<type_id>\d+)/$',
        views.PartCreate,
        name='create_part'),
    url(r'^part/edit/(?P<type_id>\d+)/(?P<id>\d+)$',
        views.PartEdit,
        name='edit_part'),
    url(r'^part/delete/(?P<part_id>\d+)/$',
        views.DeletePart.as_view(),
        name='delete_part'),
    url(r'part/view/(?P<type_id>\d+)/(?P<id>\d+)$',
        views.PartView,
        name='part_view'),


    #manufacturers and locations
    path('vendor/create/',
         views.CreateVendor.as_view(),
         name='create_vendor'),
    path('location/create/',
         views.CreateLocation.as_view(),
         name='create_location'),
    path('vendor/',
         views.VendorListView.as_view(),
         name='list_vendors'),
    path('location/',
         views.LocationListView.as_view(),
         name='list_locations'),
    url('vendor/(?P<vendor_id>\d+)/$',
        views.VendorUpdate.as_view(),
        name='edit_vendor'),
    url('location/(?P<location_id>\d+)/$',
        views.LocationUpdate.as_view(),
        name='edit_location'),
    url('vendor/delete/(?P<vendor_id>\d+)/$',
        views.VendorDelete.as_view(),
        name='delete_vendor'),
    url('location/delete/(?P<location_id>\d+)/$',
        views.LocationDelete.as_view(),
        name='delete_location'),
    url('vendor/merge/',
        views.MergeVendorView,
        name='merge_vendors'),
    url('location/merge/',
        views.MergeLocationView,
        name='merge_locations'),
    url('location/relationship/(?P<locationrelationship_id>\d+)/$',
        views.LocationRelationshipEdit,
        name='edit_loc_rel'),
    url('location/relationship/add/(?P<part_id>\d+)\$',
        views.LocationRelationshipAdd,
        name='add_loc_rel'),
    url('location/relationship/delete/(?P<locationrelationship_id>\d+)/$',
        views.LocationRelationshipDelete.as_view(),
        name='delete_loc_rel'),

    #part by location
    url('digikey/partLocation/(?P<loc_id>\d+)/$',
        views.get_location,
        name='part_location'),

    #api enter part and access urls
    url('digikey/enter/$',
        views.enter_digi_part,
        name='digi_part'),
    url('tokens/$',
        views.print_tokens_digi,
        name='print_tokens'),
    url('tokens/enter/$',
        views.enter_tokens,
        name='enter_tokens'),

    #products
    url('product/create/$',
        views.CreateProduct,
        name='create_product'),
    url('product/$',
        views.ProductListView.as_view(),
        name='list_product'),
    url(r'^product/edit/(?P<id>\d+)/$',
        views.EditProduct,
        name='edit_product'),
    url('product/delete/(?P<product_id>\d+)/$',
        views.DeleteProduct.as_view(),
        name='delete_product'),
    url('product/(?P<product_id>\d+)/$',
        views.ProductDetailView,
        name='product_detail'),
    url('bom/(?P<product_id>\d+)/$',
        views.billOfMaterialsDetail,
        name='bom_detail'),
    path('ajax/load-parts/',
         views.get_parts,
         name='ajax_load_parts'),

    #Manufacturing Orders
    url('mo/create/$',
        views.CreateMO,
        name='create_mo'),
    url('mo/edit/(?P<id>\d+)/$',
        views.EditMO,
        name='edit_mo'),
    url('mo/$',
        views.MOListView.as_view(),
        name='list_mo'),
    url('mo/delete/(?P<manufacturingorder_id>\d+)/$',
        views.DeleteMO.as_view(),
        name='delete_mo'),
    url('mo/(?P<mo_id>\d+)/$',
        views.MODetailView,
        name='detail_mo'),

    #purchase orders
    url('purchase_order/$',
        views.po_list_view,
        name='list_po'),
    url('purchase_order/create/$',
        views.create_purchase_order,
        name='create_po'),
    url(r'^purchase_order/edit/(?P<id>\d+)/$',
        views.edit_purchase_order,
        name='edit_po'),
    url('purchase_order/delete/(?P<purchaseorder_id>\d+)/$',
        views.DeletePurchaseOrder.as_view(),
        name='delete_po'),
    url('purchase_order/(?P<purchaseorder_id>\d+)/$',
        views.purchase_order_detail,
        name='detail_po'),
    url('purchase_order/part/(?P<part_id>\d+)/$',
        views.get_po_from_part,
        name='part_po'),

    # search results
    url('search_query_results',
        views.search_all_models,
        name='open_search_results'),
    
    
]
