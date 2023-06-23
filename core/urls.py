from django.urls import path, include
from .views import *
from rest_framework import routers
from . import views

# creamos las rutas para la API
router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('tipo productos', TipoProductoViewset)
router.register('usuarios', UserViewset)
router.register('compras', CompraViewset)


urlpatterns = [
    #API
    path('api/', include(router.urls)),

    path('shopapi/', shopapi, name="shopapi"),
    path('blog/', blog, name="blog"),
  
    path('category/', category, name="category"),
    path('checkout/', checkout, name="checkout"),
    path('contact/', contact, name="contact"),
    path('', index, name="index"),
    path('singleproduct/<id>/', singleproduct, name="singleproduct"),
    path('trackingorder/<id>', trackingorder, name="trackingorder"),
    path('perfil/', perfil, name="perfil"),
    path('add/', add, name="add"),
    path('update/<id>/', update, name="update"),
    path('delete/<id>/', delete, name="delete"),
    path('cart/', cart, name="cart"),
    path('cartadd/<id>/', cartadd, name="cartadd"),
    path('cart/cartdel/<id>/', cartdel, name="cartdel"),
    path('cart/cartadd/<id>/',cartadd, name="cartaddd"),
    path('cart/cartdelete/<id>/',cartdelete, name="cartdelete"),
    path('add_compra/', add_compra, name="add_compra"),
    path('miscompras/', miscompras, name = "miscompras"),
    path('detalle/<id>/', detalle, name="detalle"),
    path('registro/', registro, name="registro"),
    path('compras/', compras, name="compras"),
    path('estadocompra/<id>', estadocompra, name="estadocompra"),
    path('confirmation/<id>', confirmation, name="confirmation")
]
