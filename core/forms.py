from django import forms
from django.forms import ModelForm
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class ProductoForm(ModelForm):
    
    nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    precio = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Precio"}))
    stock = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Stock"}))
    descripcion = forms.CharField(min_length=10,max_length=200,widget=forms.Textarea(attrs={"rows":4}))

    class Meta:
        model = Producto
        #fields = ['nombre','precio','stock','tipo']
        fields = '__all__'

class CustomUserCreationForm(UserCreationForm):
    
    class Meta:
        model = User
        fields = ["username", "email", "password1", "password2"]

class EstadoFrom(ModelForm):

    class Meta:
        model = Compra
        fields = ['estado']
