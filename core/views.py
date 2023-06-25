from django.http import Http404
from django.shortcuts import render, redirect, get_object_or_404
from .models import *
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from django.contrib.auth.decorators import login_required, user_passes_test
from .serializers import *
import requests
from django.db.models import Sum
from django.contrib.auth import authenticate, login


# Funcion generica que valida el grupo:
# para su uso: grupo_requerido('vendedor')
def grupo_requerido(nombre_grupo):
     def decorator(view_func):
          @user_passes_test(lambda user: user.groups.filter(name=nombre_grupo).exists())
          def wrapper(request, *args, **kwargs):
               return view_func(request, *args, **kwargs)
          return wrapper
     return decorator


#instalar el requirements, poner resT_framework en settings, 
# crear serializers.py y crear todo
# en al view se importa y se crea un viewset
# Creamos permisos para el grupo:

# Creando una clase que va a permitir la transformacion
class ProductoViewset(viewsets.ModelViewSet):
    #queryset = Producto.objects.filter(tipo=3)
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

class UserViewset(viewsets.ModelViewSet):
     queryset = User.objects.all()
     serializer_class = UserSerializers

class CompraViewset(viewsets.ModelViewSet):
     queryset = Compra.objects.all()
     serializer_class = CompraSerializers

# Create your views here.
def blog(request):
		return render(request, 'core/blog.html')



def category(request):
    productosAll = Producto.objects.all() # SELECT * FROM producto
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productosAll, 9)
        productosAll = paginator.page(page)
    except:
        raise Http404

    for producto in productosAll:
        precio_descuento = producto.precio - (producto.precio * 0.05) 
        producto.precio_descuento = round(precio_descuento)
    data = {
        'listado': productosAll,
        'paginator': paginator
    }
    return render(request, 'core/category.html', data)

def shopapi(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    
    # Transformacion del json, todos los datos de respuesta se almacenan en data
    productos = respuesta.json()
    

    data = {
        'listado': productos,
    }

    return render(request, 'core/shopapi.html', data)


@grupo_requerido('Cliente')
def checkout(request):
    respuesta = requests.get('https://mindicador.cl/api/dolar')
    monedas = respuesta.json()
    valor_usd = monedas['serie'][0]['valor']
    carro_compras = CarroCompras.objects.get(usuario=request.user)
    items = carro_compras.items.all()
    total = carro_compras.total()

    total_rebaja = 0
    precio_rebajado = 0
    total_rebaja_prod = 0
    
    total_productos = 0
    
    for x in items:
        total_productos += x.producto.precio * x.cantidad

        precio_rebajado = round(x.producto.precio * 0.95)
        x.precio_rebajado = precio_rebajado

        total_rebaja_prod = precio_rebajado * x.cantidad
        x.total_rebaja_prod = total_rebaja_prod

    total_rebaja += round(total * 0.95)

    valor_fijo = 2000

    total_final_clp = (total_productos + valor_fijo)
    total_final_usd = (total_productos + valor_fijo)/valor_usd

    total_final_clp_reb = (total_rebaja + valor_fijo)
    total_final_usd_reb = (total_rebaja + valor_fijo)/valor_usd
    data = {
        'items': items,
        'total': total,
        'total_final_usd' : round(total_final_usd,2),
        'total_final_clp' : total_final_clp,
        'total_rebaja': total_rebaja,
        'total_final_clp_reb': total_final_clp_reb,
        'total_final_usd_reb': round(total_final_usd_reb,2),

    }

    if request.method == 'POST':
        compra = Compra.objects.create(usuario=request.user)
        for item in items:
            CompraItem.objects.create(compra=compra, carro_item=item)

    return render(request,'core/checkout.html',data)





@grupo_requerido('Cliente')
def miscompras(request):
    compras = Compra.objects.filter(usuario=request.user)

    for x in compras:
        total_con_descuento = round(x.total * 0.95) + 2000
        x.total_con_descuento = total_con_descuento

        total_compra= x.total + 2000
        x.total_compra = total_compra



    data = {
        'compras': compras,
    }

    return render(request, 'core/miscompras.html', data)

def contact(request):
		return render(request, 'core/contact.html')


def index(request):
    productosAll = Producto.objects.all() # SELECT * FROM PRODUCTO
    for producto in productosAll:
        precio_descuento = producto.precio - (producto.precio * 0.05) 
        producto.precio_descuento = round(precio_descuento)

    data = {
        'listado': productosAll,
    }

    return render(request, 'core/index.html', data)

def singleproduct(request, id):
    producto = Producto.objects.get(id=id) #buscamos un producto por su id (primer campo base de datos y el otro es nuestro)
    
    precio_descuento = round(producto.precio * 0.95)
    data = {
        #'form' : ProductoForm(instance=producto) #Carga la info en el formulario
        'producto' : producto,
        'precio_descuento': precio_descuento,
    }

    return render(request,'core/single-product.html',data)

@grupo_requerido('Cliente')
def trackingorder(request,id):
    compra = Compra.objects.get(id=id)
    
    data = {
        'compra': compra,
    }

    return render(request, 'core/tracking-order.html',data)

@grupo_requerido('Cliente')
def perfil(request):
    username = request.user.username
    email = request.user.email
    first_name = request.user.first_name
    last_name = request.user.last_name
    return render(request, 'core/perfil.html', {'username': username, 'email': email, 'first_name': first_name, 'last_name': last_name})


## Crud
@grupo_requerido('Vendedor')
def add(request):
    data = {
        'form' : ProductoForm()
    }

    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES) #Recibe toda la info del formulario
        if formulario.is_valid():
            formulario.save() # Commit, Insert into
            #data['msj'] = "Producto guardado correctamente"
            messages.success(request, "Producto almacenado correctamente")

    return render(request,'core/add-product.html', data)

@grupo_requerido('Vendedor')
def update(request, id):
    producto = Producto.objects.get(id=id) #buscamos un producto por su id (primer campo base de datos y el otro es nuestro)
    data = {
        'form' : ProductoForm(instance=producto) #Carga la info en el formulario
    }

    if request.method == 'POST':
        #recibe toda la nueva info del formulario
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES) 
        if formulario.is_valid():
            formulario.save() #Commit, update 
            #data['msj'] = "Producto modificado correctamente"
            messages.success(request, "Producto modificado correctamente")
            data['form'] = formulario #actualizar visualmente el formulario
        

    return render(request,'core/update-product.html',data)

@grupo_requerido('Vendedor')
def delete(request,id):
    producto = Producto.objects.get(id=id)
    producto.delete()

    return redirect(to="category")


@grupo_requerido('Cliente')
def cartadd(request, id):
    producto = Producto.objects.get(id=id)
    carro_compras, created = CarroCompras.objects.get_or_create(usuario=request.user)
    carro_item, item_created = CarroItem.objects.get_or_create(producto=producto, usuario=request.user)

    if not item_created:
        if producto.stock >= 1:
            carro_item.cantidad += 1
            carro_item.save()
            producto.stock -= 1
            producto.save()
            carro_compras.items.add(carro_item)
        else:
            return redirect(to='cart')
    else:
        if producto.stock >= 1:  
            carro_item.cantidad = 1
            carro_item.save()
            producto.stock -= 1
            producto.save()
            carro_compras.items.add(carro_item)
        else:
            return redirect(to='cart')
    
    carro_compras.save()

    return redirect(to='cart')

@grupo_requerido('Cliente')
def cartdel(request,id):
    producto = Producto.objects.get(id=id)
    carro_compras = CarroCompras.objects.get(usuario = request.user)
    carro_item = carro_compras.items.get(producto=producto)
    
    if carro_item.cantidad > 1:
        carro_item.cantidad -= 1
        carro_item.save()
        
    else:
        carro_compras.items.remove(carro_item)
        carro_item.delete()
    
    producto.stock +=1
    producto.save()

    return redirect(to='cart')

@grupo_requerido('Cliente')
def cart(request):
    carro_compras = CarroCompras.objects.get(usuario=request.user)
    items = carro_compras.items.all()
    total = carro_compras.total()

    total_rebaja = 0
    precio_rebajado = 0
    total_rebaja_prod = 0

    for x in items:
        precio_rebajado = round(x.producto.precio * 0.95)
        x.precio_rebajado = precio_rebajado

        total_rebaja_prod = precio_rebajado * x.cantidad
        x.total_rebaja_prod = total_rebaja_prod
    
    total_rebaja += round(total * 0.95)

    data = {
        'items': items,
        'total': total,
        'total_rebaja': total_rebaja,
    }


    return render(request,'core/cart.html',data)

@grupo_requerido('Cliente')
def cartdelete(request,id):
    producto = Producto.objects.get(id=id)
    carro_compras = CarroCompras.objects.get(usuario = request.user)
    carro_item = carro_compras.items.get(producto=producto)

    carro_compras.items.remove(carro_item)
    carro_item.delete()

    producto.stock += carro_item.cantidad
    producto.save()
    return redirect(to='cart')



@grupo_requerido('Cliente')
def add_compra(request):
    carro_compras = CarroCompras.objects.get(usuario=request.user)
    total_carro = carro_compras.total()

    compra = Compra.objects.create(usuario=request.user, total=total_carro, estado='Validación')

    for item in carro_compras.items.all():
        producto = item.producto
        cantidad = item.cantidad
        subtotal = item.subtotal()

        compra_item = CompraItem.objects.create(compra=compra, producto=producto, cantidad=cantidad, subtotal=subtotal)
        item.delete()

    carro_compras.items.clear()

    return redirect('confirmation', id=compra.id)




@grupo_requerido('Cliente')
def detalle(request,id):
    compra = Compra.objects.get(id=id)
    items = compra.compraitem_set.all()
    
    total_compra = round(compra.total*0.95) + 2000
    total_productos = 0

    subtotal = round(compra.total*0.95)
    for x in items:
        total_productos += x.producto.precio * x.cantidad
        x.total_productos = total_productos

        total_productos = 0

        precio_rebajado = round(x.producto.precio * 0.95)
        x.precio_rebajado = precio_rebajado

        total_rebaja_prod = precio_rebajado * x.cantidad
        x.total_rebaja_prod = total_rebaja_prod
    
    data = {
        'compra': compra,
        'items': items,
        'total_compra': total_compra,
        'subtotal': subtotal,
    }
    
    return render(request, 'core/detalle.html', data)


def registro(request):
    data = {
        'form': CustomUserCreationForm()
    }

    if request.method == 'POST':
        formulario = CustomUserCreationForm(data=request.POST)
        if formulario.is_valid():
            user = formulario.save()
            user.groups.add(Group.objects.get(name='Cliente'))

            messages.success(request, "Te has registrado correctamente")

        data["form"] = formulario
    return render(request, 'registration/registro.html', data)


@grupo_requerido('Vendedor')
def compras(request):
    compras = Compra.objects.all()  

    data = {
        'compras': compras,
    }

    return render(request, 'core/compras.html', data)

@grupo_requerido('Vendedor')
def estadocompra(request, id):
    compra = Compra.objects.get(id=id)

    if request.method == 'POST':
        nuevo_estado = request.POST.get('nuevo_estado')
        compra.estado = nuevo_estado
        compra.save()
        messages.info(request, "Estado modificado correctamente")
    

    data = {
        'compra' : compra,
    }

    return render(request, 'core/estadocompra.html', data)

@grupo_requerido('Cliente')
def confirmation(request,id):
    compra = Compra.objects.get(id=id)
    items = compra.compraitem_set.all()
    last_name = request.user.last_name
    
    total_compra = round(compra.total*0.95) + 2000
    total_productos = 0

    total_compra_nor = compra.total + 2000

    subtotal = round(compra.total*0.95)
    for x in items:
        total_productos += x.producto.precio * x.cantidad
        x.total_producto = total_productos

        total_productos = 0
        #con descuento:
        precio_rebajado = round(x.producto.precio * 0.95)
        x.precio_rebajado = precio_rebajado

        total_rebaja_prod = precio_rebajado * x.cantidad
        x.total_rebaja_prod = total_rebaja_prod
    
    data = {
        'compra': compra,
        'items': items,
        'last_name': last_name,
        'total_compra': total_compra,
        'subtotal': subtotal,
        'total_compra_nor': total_compra_nor,
    }
    
    return render(request, 'core/confirmation.html', data)