"""saco URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

from rest_framework import routers

from tool.api import viewsets as toolviewsets

route = routers.DefaultRouter()

route.register(r'os', toolviewsets.OrdemServicoViewSet, basename='os')
route.register(r'cliente', toolviewsets.ClienteViewSet, basename='cliente')
route.register(r'clienteveiculo', toolviewsets.ClienteVeiculoViewSet, basename='clienteveiculo')
route.register(r'empresa', toolviewsets.EmpresaViewSet, basename='empresa')
route.register(r'endereco', toolviewsets.EnderecoViewSet, basename='endereco')
route.register(r'funcionario', toolviewsets.FuncionarioViewSet, basename='funcionario')
route.register(r'item', toolviewsets.ItemViewSet, basename='item')
route.register(r'nfservico', toolviewsets.NfservicoViewSet, basename='nfservico')
route.register(r'ordem_servico', toolviewsets.Ordem_ServicoViewSet, basename='ordem_servico')
route.register(r'servico', toolviewsets.ServicoViewSet, basename='servico')
route.register(r'servicoitem', toolviewsets.ServicoItemViewSet, basename='servicoitem')
route.register(r'usuario', toolviewsets.UsuarioViewSet, basename='usuario')
route.register(r'veiculo', toolviewsets.VeiculoViewSet, basename='veiculo')

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(route.urls)),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
