from django.db import models
from django.contrib.auth.models import User

# Create your models here.

#Tabla Tipo producto 
class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


    def __str__(self):
        return self.descripcion
# TABLA PRODUCTO
class Producto(models.Model):
    nombre = models.CharField(max_length=50)
    precio = models.PositiveIntegerField()
    stock = models.PositiveIntegerField()
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    descripcion = models.CharField(max_length=250)
    imagen = models.ImageField(null=True,blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.nombre

class CarroItem(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default = 1)
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def subtotal(self):
        return self.producto.precio * self.cantidad

class CarroCompras(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    items = models.ManyToManyField(CarroItem)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def total(self):
        total = 0
        for item in self.items.all():
            total += item.subtotal()
        return total

class Compra(models.Model):
    ESTADOS = (
        ('Validación', 'Validación'),
        ('Preparación', 'Preparación'),
        ('Reparto', 'Reparto'),
        ('Entregado', 'Entregado'),
    )

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    fecha = models.DateTimeField(auto_now_add=True)
    total = models.PositiveIntegerField()
    estado = models.CharField(max_length=20, choices=ESTADOS, default='validacion')

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f'Compra #{self.pk} realizada por {self.usuario.username}'

class CompraItem(models.Model):
    compra = models.ForeignKey(Compra, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, null=True, blank=True)
    cantidad = models.PositiveIntegerField(default=1)
    subtotal = models.PositiveIntegerField()

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"CompraItem #{self.pk} - Compra #{self.compra.pk}"
