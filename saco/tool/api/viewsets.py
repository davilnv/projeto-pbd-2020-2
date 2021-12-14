from rest_framework import viewsets
from tool.api import serializers
from tool import models
from django_filters.rest_framework import DjangoFilterBackend

class OrdemServicoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.OrdemServicoSerializer
    queryset = models.OrdemServico.objects.all()

class ClienteViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.ClienteSerializer
    queryset = models.Cliente.objects.all()

class ClienteVeiculoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.ClienteVeiculoSerializer
    queryset = models.ClienteVeiculo.objects.all()

class EmpresaViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.EmpresaSerializer
    queryset = models.Empresa.objects.all()

class EnderecoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.EnderecoSerializer
    queryset = models.Endereco.objects.all()

class FuncionarioViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.FuncionarioSerializer
    queryset = models.Funcionario.objects.all()

class ItemViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.ItemSerializer
    queryset = models.Item.objects.all()

class NfservicoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.NfservicoSerializer
    queryset = models.Nfservico.objects.all()

class Ordem_ServicoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.Ordem_ServicoSerializer
    queryset = models.Ordem_Servico.objects.all()
    filter_backends = [DjangoFilterBackend,]
    filter_fields = ['codordemservico',]

class ServicoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.ServicoSerializer
    queryset = models.Servico.objects.all()

class ServicoItemViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.ServicoItemSerializer
    queryset = models.ServicoItem.objects.all()

class UsuarioViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.UsuarioSerializer
    queryset = models.Usuario.objects.all()

class VeiculoViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.VeiculoSerializer
    queryset = models.Veiculo.objects.all()
