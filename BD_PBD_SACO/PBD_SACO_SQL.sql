-- *********************************************
-- * SQL MySQL               
-- *--------------------------------------------           
-- * Datate: 05/11/2021 22:00:18 
-- * Schema: PBD_SACO
-- * Criador: Davi de Lima das Neves
-- * E-mail: davilima871@gmail.com
-- ********************************************* 


-- Banco de dados
-- ________________ 

create database PBD_SACO;
use PBD_SACO;


-- Tabelas
-- _____________ 

create table CLIENTE (
     CODCLIENTE bigint not null auto_increment,
     NOME varchar(255) not null,
     CPFCNPJ bigint not null,
     RG int not null,
     TELEFONE bigint not null,
     CELULAR bigint not null,
     CODENDERECO bigint not null,
     TIPOCLIENTE varchar(100) not null,
     constraint IDCLIENTE_1 unique (CPFCNPJ),
     constraint IDCLIENTE primary key (CODCLIENTE));

create table CLIENTE_VEICULO (
     CODIGO bigint not null auto_increment,
     CPFCNPJ bigint not null,
     PLACA varchar(7) not null,
     constraint IDCLIENTE_VEICULO primary key (CODIGO));

create table ENDERECO (
     CODENDERECO bigint not null auto_increment,
     RUA varchar(255) not null,
     NUMERO int not null,
     BAIRRO varchar(100) not null,
     CIDADE varchar(100) not null,
     ESTADO varchar(2) not null,
     CEP int not null,
     LATITUDE float not null,
     LONGITUDE float not null,
     constraint IDENDERECO primary key (CODENDERECO));

create table FUNCIONARIO (
     CODFUNCIONARIO bigint not null auto_increment,
     NOME varchar(255) not null,
     CPFCNPJ bigint not null,
     RG int not null,
     TELEFONE bigint not null,
     DATAADMISSAO date not null,
     SALARIO float not null,
     ESPECIALIDADE varchar(100) not null,
     FOTO varchar(255),
     constraint IDFUNCIONARIO_1 unique (CPFCNPJ),
     constraint IDFUNCIONARIO primary key (CODFUNCIONARIO));

create table EMPRESA (
     CODEMPRESA bigint not null auto_increment,
     CNPJ bigint not null,
     RAZAOSOCIAL varchar(255) not null,
     CODENDERECO bigint not null,
     LOGOEMPRESA varchar(255) not null,
     constraint IDEMPRESA_1 unique (CNPJ),
     constraint IDEMPRESA primary key (CODEMPRESA));

create table ITEM (
     CODITEM bigint not null auto_increment,
     INSTRUCAO varchar(255) not null,
     constraint IDITEM primary key (CODITEM));

create table SERVICO_ITEM (
     CODIGO bigint not null auto_increment,
     CODSERVICO bigint not null,
     CODITEM bigint not null,
     constraint IDSERVICO_ITEM primary key (CODIGO));

create table ORDEM_SERVICO (
     CODIGO bigint not null auto_increment,
     CODORDEMSERVICO bigint not null,
     CODSERVICO bigint not null,
     CODFUNCIONARIO bigint not null,
     constraint IDORDEM_SERVICO primary key (CODIGO));

create table SERVICO (
     CODSERVICO bigint not null auto_increment,
     DESCRICAO varchar(255) not null,
     PRECO float not null,
     constraint IDSERVICO primary key (CODSERVICO));

create table NFSERVICO (
     CODIGONF bigint not null auto_increment,
     NUMERONOTA bigint not null,
     DATAFATURAMENTO date not null,
     CODEMPRESA bigint not null,
     CODCLIENTE bigint not null,
     ATIVIDADE varchar(100) not null,
     OBSERVACAO varchar(255) not null,
     CODORDEMSERVICO bigint not null,
     VALORTOTAL float not null,
     VALORDESCONTO float not null,
     TIPOVENDA varchar(100) not null,
     constraint IDNFSERVICO primary key (CODIGONF),
     constraint IDNFSERVICO_1 unique (NUMERONOTA));

create table ORDEMSERVICO (
     CODORDEMSERVICO bigint not null auto_increment,
     ENTRADA date not null,
     SAIDA date not null,
     TOTAL float not null,
     CODCLIENTE bigint not null,
     PLACA varchar(7) not null,
     CODFUNCIONARIO bigint not null,
     PENDENTE char(1) not null,
     TOTALSERVICO float not null,
     VALORDESCONTO float not null,
     constraint IDORDEMSERVICO primary key (CODOREDEMSERVICO));

create table USUARIO (
     CODUSUARIO bigint not null auto_increment,
     LOGIN varchar(255) not null,
     SENHA varchar(255) not null,
     CADASTRO date not null,
     CODFUNCIONARIO bigint not null,
     constraint IDUSUARIO primary key (CODUSUARIO));

create table VEICULO (
     PLACA varchar(7) not null,
     MARCA varchar(100) not null,
     MODELO varchar(100) not null,
     constraint IDVEICULO primary key (PLACA));
