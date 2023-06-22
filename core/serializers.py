# SE ENCARGA DE CONVERTIR LOS DATOS
# SERIALIZER -> VIEWSET -> URL
from .models import *
from rest_framework import serializers
from django.contrib.auth.models import User

class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields = '__all__'

class ProductoSerializers(serializers.ModelSerializer):
    # Agrear las claves foraneas (FK)
    tipo = TipoProductoSerializers(read_only=True)

    class Meta:
        model = Producto
        fields = '__all__'

class UserSerializers(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'email']

class CompraSerializers(serializers.ModelSerializer):
    usuario = UserSerializers(read_only = True)
    class Meta:
        model = Compra
        fields = '__all__'