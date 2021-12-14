from django.db import models
from uuid import uuid4

def upload_image_funcionario(instance, filename):
    return f"{instance.codfuncionario}-{filename}"

def upload_image_empresa(instance, filename):
    return f"{instance.codempresa}-{filename}"

class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Cliente(models.Model):
    codcliente = models.BigAutoField(db_column='CODCLIENTE', primary_key=True)  # Field name made lowercase.
    nome = models.CharField(db_column='NOME', max_length=255)  # Field name made lowercase.
    cpfcnpj = models.BigIntegerField(db_column='CPFCNPJ', unique=True)  # Field name made lowercase.
    rg = models.IntegerField(db_column='RG')  # Field name made lowercase.
    telefone = models.BigIntegerField(db_column='TELEFONE')  # Field name made lowercase.
    celular = models.BigIntegerField(db_column='CELULAR')  # Field name made lowercase.
    codendereco = models.BigIntegerField(db_column='CODENDERECO')  # Field name made lowercase.
    tipocliente = models.CharField(db_column='TIPOCLIENTE', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cliente'


class ClienteVeiculo(models.Model):
    codigo = models.BigAutoField(db_column='CODIGO', primary_key=True)  # Field name made lowercase.
    cpfcnpj = models.BigIntegerField(db_column='CPFCNPJ')  # Field name made lowercase.
    placa = models.CharField(db_column='PLACA', max_length=7)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cliente_veiculo'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Empresa(models.Model):
    codempresa = models.BigAutoField(db_column='CODEMPRESA', primary_key=True)  # Field name made lowercase.
    cnpj = models.BigIntegerField(db_column='CNPJ', unique=True)  # Field name made lowercase.
    razaosocial = models.CharField(db_column='RAZAOSOCIAL', max_length=255)  # Field name made lowercase.
    codendereco = models.BigIntegerField(db_column='CODENDERECO')  # Field name made lowercase.
    logoempresa = models.ImageField(upload_to=upload_image_empresa)

    class Meta:
        managed = False
        db_table = 'empresa'


class Endereco(models.Model):
    codendereco = models.BigAutoField(db_column='CODENDERECO', primary_key=True)  # Field name made lowercase.
    rua = models.CharField(db_column='RUA', max_length=255)  # Field name made lowercase.
    numero = models.IntegerField(db_column='NUMERO')  # Field name made lowercase.
    bairro = models.CharField(db_column='BAIRRO', max_length=100)  # Field name made lowercase.
    cidade = models.CharField(db_column='CIDADE', max_length=100)  # Field name made lowercase.
    estado = models.CharField(db_column='ESTADO', max_length=2)  # Field name made lowercase.
    cep = models.IntegerField(db_column='CEP')  # Field name made lowercase.
    latitude = models.FloatField(db_column='LATITUDE')  # Field name made lowercase.
    longitude = models.FloatField(db_column='LONGITUDE')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'endereco'


class Funcionario(models.Model):
    codfuncionario = models.BigAutoField(db_column='CODFUNCIONARIO', primary_key=True)  # Field name made lowercase.
    nome = models.CharField(db_column='NOME', max_length=255)  # Field name made lowercase.
    cpfcnpj = models.BigIntegerField(db_column='CPFCNPJ', unique=True)  # Field name made lowercase.
    rg = models.IntegerField(db_column='RG')  # Field name made lowercase.
    telefone = models.BigIntegerField(db_column='TELEFONE')  # Field name made lowercase.
    dataadmissao = models.DateField(db_column='DATAADMISSAO')  # Field name made lowercase.
    salario = models.FloatField(db_column='SALARIO')  # Field name made lowercase.
    especialidade = models.CharField(db_column='ESPECIALIDADE', max_length=100)  # Field name made lowercase.
    #foto = models.CharField(db_column='FOTO', max_length=255, blank=True, null=True)  # Field name made lowercase.
    foto = models.ImageField(upload_to=upload_image_funcionario)

    class Meta:
        managed = False
        db_table = 'funcionario'


class Item(models.Model):
    coditem = models.BigAutoField(db_column='CODITEM', primary_key=True)  # Field name made lowercase.
    instrucao = models.CharField(db_column='INSTRUCAO', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'item'


class Nfservico(models.Model):
    codigonf = models.BigAutoField(db_column='CODIGONF', primary_key=True)  # Field name made lowercase.
    numeronota = models.BigIntegerField(db_column='NUMERONOTA', unique=True)  # Field name made lowercase.
    datafaturamento = models.DateField(db_column='DATAFATURAMENTO')  # Field name made lowercase.
    codempresa = models.BigIntegerField(db_column='CODEMPRESA')  # Field name made lowercase.
    codcliente = models.BigIntegerField(db_column='CODCLIENTE')  # Field name made lowercase.
    atividade = models.CharField(db_column='ATIVIDADE', max_length=100)  # Field name made lowercase.
    observacao = models.CharField(db_column='OBSERVACAO', max_length=255)  # Field name made lowercase.
    codordemservico = models.BigIntegerField(db_column='CODORDEMSERVICO')  # Field name made lowercase.
    valortotal = models.FloatField(db_column='VALORTOTAL')  # Field name made lowercase.
    valordesconto = models.FloatField(db_column='VALORDESCONTO')  # Field name made lowercase.
    tipovenda = models.CharField(db_column='TIPOVENDA', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'nfservico'


class Ordem_Servico(models.Model):
    codigo = models.BigAutoField(db_column='CODIGO', primary_key=True)  # Field name made lowercase.
    codordemservico = models.BigIntegerField(db_column='CODORDEMSERVICO')  # Field name made lowercase.
    codservico = models.BigIntegerField(db_column='CODSERVICO')  # Field name made lowercase.
    codfuncionario = models.BigIntegerField(db_column='CODFUNCIONARIO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ordem_servico'


class OrdemServico(models.Model):
    codordemservico = models.BigAutoField(db_column='CODORDEMSERVICO', primary_key=True)  # Field name made lowercase.
    entrada = models.DateField(db_column='ENTRADA')  # Field name made lowercase.
    saida = models.DateField(db_column='SAIDA')  # Field name made lowercase.
    total = models.FloatField(db_column='TOTAL')  # Field name made lowercase.
    codcliente = models.BigIntegerField(db_column='CODCLIENTE')  # Field name made lowercase.
    placa = models.CharField(db_column='PLACA', max_length=7)  # Field name made lowercase.
    codfuncionario = models.BigIntegerField(db_column='CODFUNCIONARIO')  # Field name made lowercase.
    pendente = models.CharField(db_column='PENDENTE', max_length=1)  # Field name made lowercase.
    totalservico = models.FloatField(db_column='TOTALSERVICO')  # Field name made lowercase.
    valordesconto = models.FloatField(db_column='VALORDESCONTO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ordemservico'
    
    @property
    def get_cliente_info(self):
        cliente = Cliente.objects.get(codcliente = self.codcliente)

        return dict(
            nome = cliente.nome,
            cpf = cliente.cpfcnpj,
            codEndereco = cliente.codendereco
        )

    @property
    def get_funcionario_info(self):
        funcionario = Funcionario.objects.get(codfuncionario = self.codfuncionario)

        return dict(
            nome = funcionario.nome
        )

    @property
    def get_veiculo_info(self):
        veiculo = Veiculo.objects.get(placa = self.placa)

        return dict(
            marca = veiculo.marca,
            modelo = veiculo.modelo
        )

    


class Servico(models.Model):
    codservico = models.BigAutoField(db_column='CODSERVICO', primary_key=True)  # Field name made lowercase.
    descricao = models.CharField(db_column='DESCRICAO', max_length=255)  # Field name made lowercase.
    preco = models.FloatField(db_column='PRECO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'servico'


class ServicoItem(models.Model):
    codigo = models.BigAutoField(db_column='CODIGO', primary_key=True)  # Field name made lowercase.
    codservico = models.BigIntegerField(db_column='CODSERVICO')  # Field name made lowercase.
    coditem = models.BigIntegerField(db_column='CODITEM')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'servico_item'


class Usuario(models.Model):
    codusuario = models.BigAutoField(db_column='CODUSUARIO', primary_key=True)  # Field name made lowercase.
    login = models.CharField(db_column='LOGIN', max_length=255)  # Field name made lowercase.
    senha = models.CharField(db_column='SENHA', max_length=255)  # Field name made lowercase.
    cadastro = models.DateField(db_column='CADASTRO')  # Field name made lowercase.
    codfuncionario = models.BigIntegerField(db_column='CODFUNCIONARIO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'usuario'


class Veiculo(models.Model):
    placa = models.CharField(db_column='PLACA', primary_key=True, max_length=7)  # Field name made lowercase.
    marca = models.CharField(db_column='MARCA', max_length=100)  # Field name made lowercase.
    modelo = models.CharField(db_column='MODELO', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'veiculo'

