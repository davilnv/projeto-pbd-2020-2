from rest_framework import serializers
from tool import models

class OrdemServicoSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.OrdemServico
        fields = [
            'codordemservico',
            'entrada',
            'saida',
            'total',
            'codcliente',
            'placa',
            'codfuncionario',
            'pendente',
            'totalservico',
            'valordesconto',
            'get_cliente_info',
            'get_funcionario_info',
            'get_veiculo_info'
        ]

class ClienteSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Cliente
        fields = '__all__'

class ClienteVeiculoSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.ClienteVeiculo
        fields = '__all__'

class EmpresaSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Empresa
        fields = '__all__'

class EnderecoSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Endereco
        fields = '__all__'

class FuncionarioSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Funcionario
        fields = '__all__'

class ItemSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Item
        fields = '__all__'

class NfservicoSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Nfservico
        fields = '__all__'

class Ordem_ServicoSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Ordem_Servico
        fields = '__all__'

class ServicoSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Servico
        fields = '__all__'

class ServicoItemSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.ServicoItem
        fields = '__all__'

class UsuarioSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Usuario
        fields = '__all__'

class VeiculoSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Veiculo
        fields = '__all__'
