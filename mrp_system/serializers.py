from .models import Field, Part, Type, Location, LocationRelationship, Vendor, ManufacturerRelationship
from rest_framework import serializers


class LocationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Location
        fields = "__all__"
        extra_kwargs = {
            "name": {"validators": []}
        }

    def to_representation(self, instance):
        return f"{instance.name}"

class ManufacturerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vendor
        fields = ["name"]
        extra_kwargs = {'name': {"validators": []}}
    
    def to_representation(self, instance):
        return f"{instance.name}"

class TypeField(serializers.RelatedField):
    def to_representation(self, value):
        return f"{value.name}"
    
    def to_internal_value(self, data):
        try:
            part_id = data
            return Type.objects.get(id=part_id)
        except KeyError:
            raise serializers.ValidationError("PartType is a required field")
        except Type.DoesNotExist:
            raise serializers.ValidationError("Type does not exist.")

class FieldSerializer(serializers.ModelSerializer):
    class Meta(object):
        model = Field
        fields = "__all__"

class PartSerializer(serializers.ModelSerializer):
    partType = TypeField(many=False, queryset=Type.objects.all())
    location = LocationSerializer(many=True)
    manufacturer = ManufacturerSerializer(many=True)
    TypeFields = serializers.SerializerMethodField()

    class Meta(object):
        model = Part
        fields = "__all__"

    def create(self, validated_data):
        location = validated_data.pop('location', None)
        manufacturer = validated_data.pop('manufacturer', None)

        part = Part.objects.create(**validated_data)
        for loc in location:
            add_loc = Location.objects.filter(name=loc['name'])[0] or Location.objects.create(loc)
            if add_loc:
                part.location.add(add_loc)
        for man in manufacturer:
            add_man = Vendor.objects.filter(name=man['name'])[0] or Vendor.objects.create(man)
            if add_man:
                part.manufacturer.add(add_man)
        return part

    def get_TypeFields(self, instance):
        TypeFields = Field.objects.filter(typePart__name=instance.partType)
        return FieldSerializer(TypeFields, many=True).data

    

