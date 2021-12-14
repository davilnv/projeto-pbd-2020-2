CREATE DATABASE  IF NOT EXISTS `pbd_saco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pbd_saco`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pbd_saco
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CODCLIENTE` bigint NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `CPFCNPJ` bigint NOT NULL,
  `RG` int NOT NULL,
  `TELEFONE` bigint NOT NULL,
  `CELULAR` bigint NOT NULL,
  `CODENDERECO` bigint NOT NULL,
  `TIPOCLIENTE` varchar(100) NOT NULL,
  PRIMARY KEY (`CODCLIENTE`),
  UNIQUE KEY `IDCLIENTE_1` (`CPFCNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Davi de Lima das Neves',60197669000,348369025,8192332163,81992332163,1,'ESPECIAL'),(2,'Mariana de Carvalho Nunes',65191419090,104526725,8796230399,87996230399,1,'ESPECIAL'),(3,'Maria da Fonseca Souza',66863480077,294003277,8199544687,81999544687,3,'FREGUES'),(4,'Isaac Samuel Assis',54042619606,288627143,38793754,999472299,5,'MAUPAGADOR'),(5,'Luís Erick Monteiro',14261490340,445235299,28266993,989907121,9,'FREGUES'),(6,'Vitor Cláudio Assunção',46736818001,242069745,35241306,991776219,7,'FREGUES'),(7,'Manoel Iago Julio Pereira',61868631826,238434229,25551914,984637292,8,'FREGUES'),(8,'Marcelo Enrico Assis',17144517554,390515255,26325320,994077084,11,'FREGUES'),(9,'Carlos Noah Leonardo da Cunha',83824694425,297288106,25816372,983761514,3,'FREGUES'),(10,'Lorenzo Thiago Nelson Santos',80518223310,419963844,39787452,996377175,12,'ESPECIAL'),(11,'Benedito Nathan da Silva',93456228023,412515921,28435012,985569600,13,'FREGUES'),(12,'Henry Heitor Davi Souza',14870567539,358615021,39268119,999326138,16,'MAUPAGADOR'),(13,'Marcos Thiago Juan Castro',23326687052,377855856,36074923,987872585,17,'DEVEDOR');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_veiculo`
--

DROP TABLE IF EXISTS `cliente_veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_veiculo` (
  `CODIGO` bigint NOT NULL AUTO_INCREMENT,
  `CPFCNPJ` bigint NOT NULL,
  `PLACA` varchar(7) NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_veiculo`
--

LOCK TABLES `cliente_veiculo` WRITE;
/*!40000 ALTER TABLE `cliente_veiculo` DISABLE KEYS */;
INSERT INTO `cliente_veiculo` VALUES (1,60197669000,'KLE2124'),(2,65191419090,'KLC5438'),(3,66863480077,'KIR8980'),(4,54042619606,'KLH6098'),(5,14261490340,'KLY7880'),(6,46736818001,'KKK5233'),(7,61868631826,'KGE9587'),(8,17144517554,'KJQ0759'),(9,83824694425,'KLY4260'),(10,80518223310,'KKN9114'),(11,93456228023,'KLI7347'),(12,14870567539,'KGF6677'),(13,23326687052,'KIK8444');
/*!40000 ALTER TABLE `cliente_veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `CODEMPRESA` bigint NOT NULL AUTO_INCREMENT,
  `CNPJ` bigint NOT NULL,
  `RAZAOSOCIAL` varchar(255) NOT NULL,
  `CODENDERECO` bigint NOT NULL,
  `LOGOEMPRESA` varchar(255) NOT NULL,
  PRIMARY KEY (`CODEMPRESA`),
  UNIQUE KEY `IDEMPRESA_1` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,42132091000169,'AUTO MECÂNICA LTDA',18,'https://www.sennaautomecanica.com.br/img/logo.png');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `CODENDERECO` bigint NOT NULL AUTO_INCREMENT,
  `RUA` varchar(255) NOT NULL,
  `NUMERO` int NOT NULL,
  `BAIRRO` varchar(100) NOT NULL,
  `CIDADE` varchar(100) NOT NULL,
  `ESTADO` varchar(2) NOT NULL,
  `CEP` int NOT NULL,
  `LATITUDE` float NOT NULL,
  `LONGITUDE` float NOT NULL,
  PRIMARY KEY (`CODENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'João Batista do Nascimento',17,'Bom Jesus','Serra Talhada','PE',56906330,-7.98922,-38.3093),(2,'Antônio Nunes de Souza',60,'Cagep','Serra Talhada','PE',56909640,-7.97755,-38.2931),(3,'Maria Luiza Kehrle Murato',197,'AABB','Serra Talhada','PE',56912194,-7.9957,-38.2854),(4,'Maria da Glória Nogueira',177,'Várzea','Serra Talhada','PE',56906530,-7.99877,-38.2958),(5,'Deputado Afrânio Ribeiro de Godoy',1321,'Nossa Senhora da Penha','Serra Talhada','PE',56903390,-7.99114,-38.2945),(6,'Irnério Inácio',28,'Nossa Senhora da Penha','Serra Talhada','PE',56903902,-7.99273,-38.2995),(7,'Antônio Terto',240,'Nossa Senhora da Penha','Serra Talhada','PE',56912390,-7.99011,-38.2923),(8,'Travessa João de Souza Santos',111,'Tancredo Neves','Serra Talhada','PE',56909225,-7.98308,-38.2778),(9,'Avenida Antônio Romão de Farias',355,'Bom Jesus','Serra Talhada','PE',56906170,-7.98451,-38.3069),(10,'Doutor Sérgio Magalhães',718,'Centro','Serra Talhada','PE',56903910,-7.99145,-38.3009),(11,'Praça Manoel Pereira Lins',887,'São Cristovão','Serra Talhada','PE',56903590,-7.98889,-38.2921),(12,'Francisco Porfiro',1375,'Caxixola','Serra Talhada','PE',56915050,-8.00029,-38.3053),(13,'Inocêncio Gomes de Andrade',839,'Nossa Senhora da Penha','Serra Talhada','PE',56903580,-7.98896,-38.2945),(14,'Manoel Rodrigues de Carvalho',341,'Várzea','Serra Talhada','PE',56912300,-7.9979,-38.2863),(15,'Joaquim Alves de Magalhães',1530,'AABB','Serra Talhada','PE',56912150,-7.9879,-38.2876),(16,'Coronel Cornélio Soares',474,'Nossa Senhora da Penha','Serra Talhada','PE',56903970,-7.99216,-38.301),(17,'Cap. Antônio Inácio de Medeiros',1098,'Bom Jesus','Serra Talhada','PE',56906340,-7.9886,-38.3102),(18,'Raimundo Airton Rodrigues Santos',24,'COHAB','Serra Talhada','PE',56909510,-7.9747,-38.2844),(19,'Professora Maria Luisa Duarte de Sá',6,'Vila Bela','Serra Talhada','PE',56907050,-7.99695,-38.3236),(20,'Apolinário de Souza Moreno',99,'Bomba','Serra Talhada','PE',56909690,-7.9809,-38.2952),(21,'Antônio de Melo Lima',953,'Nossa Senhora da Conceição','Serra Talhada','PE',56903260,-7.98629,-38.2886),(22,'Doutor Ademar Xavier',1018,'Nossa Senhora da Conceição','Serra Talhada','PE',56912510,-7.98642,-38.2878);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `CODFUNCIONARIO` bigint NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `CPFCNPJ` bigint NOT NULL,
  `RG` int NOT NULL,
  `TELEFONE` bigint NOT NULL,
  `DATAADMISSAO` date NOT NULL,
  `SALARIO` float NOT NULL,
  `ESPECIALIDADE` varchar(100) NOT NULL,
  `FOTO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODFUNCIONARIO`),
  UNIQUE KEY `IDFUNCIONARIO_1` (`CPFCNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Luís Erick Monteiro',14261490340,445235299,28266993,'2014-05-31',1100,'MECANICO','https://i1.wp.com/empregoses.com.br/wp-content/uploads/2021/03/aa-45.png?fit=500%2C265&ssl=1'),(2,'Marcelo Enrico Assis',17144517554,390515255,26325320,'2020-03-03',1100,'MECANICO','http://www.emasterelevadores.com.br/wp-content/uploads/2016/05/Ergonomia_na_oficina_mec%C3%A2nica.jpg.jpeg'),(3,'Lorenzo Thiago Nelson Santos',80518223310,390515255,39787452,'2013-01-10',1700,'SUPERVISOR DE MECANICO','https://i0.wp.com/blog.mundomidia.com/wp-content/uploads/2017/08/oficina-mecanica-mecanico.jpg?fit=800%2C600&ssl=1'),(4,'Marcelo da Fonseca Souza',89100047031,162565422,8739964793,'2013-01-10',3000,'CHEFE DE OFICINA','https://www.espogama.pt/wp-content/uploads/2017/11/oficinas-auto-1.jpg'),(5,'Maria Luciana Pereira',93225451436,173176884,8739940683,'2020-05-13',1300,'ADMINISTRAÇÃO','https://img.freepik.com/fotos-gratis/vista-superior-de-uma-funcionaria-de-escritorio-confiante-sentada-em-sua-mesa-e-posando-para-a-camera_140725-106270.jpg?size=626&ext=jpg'),(6,'José Claudio da Silva',66901237405,485471243,8725517942,'2020-05-14',1300,'FATURAMENTO','https://3.bp.blogspot.com/-k3m-9Cj-0JM/WyrIdDJBvJI/AAAAAAAALNQ/rHQyUgMy-IgPRwzpEMvaeUX1gtg8rjMwACLcBGAs/s1600/01.jpg'),(7,'Andréia Firmino Conceição',35524474405,151960574,8739061987,'2020-05-17',1100,'RECEPCIONISTA','https://thumbs.dreamstime.com/b/recepcionista-f%C3%AAmea-bonito-da-garagem-dentro-da-oficina-30458296.jpg'),(8,'Jorge Renan da Paz',94015285433,318750569,8738693786,'2019-04-02',1700,'SUPERVISOR DE MECANICO','https://chiptronic.com.br/blog/wp-content/uploads/2016/11/5-dicas-para-melhorar-a-produtividade-na-oficina-mec%C3%A2nica.jpg'),(9,'Edson Roberto Felipe Martins',64010105410,306169046,8727810963,'2017-01-02',1100,'MECANICO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-wV66lDmwwep-By5NGrvakye6YErOzbY_5b0tp93XZqsmn7pErgz6JVTQctLsn7l3rxM&usqp=CAU'),(10,'Benjamin César Elias Porto',52010863496,490404327,8736045526,'2020-02-02',1100,'MECANICO','https://truckcenter.com.br/wp-content/uploads/2019/11/1.-shutterstock_287173067.jpg');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `CODITEM` bigint NOT NULL AUTO_INCREMENT,
  `INSTRUCAO` varchar(255) NOT NULL,
  PRIMARY KEY (`CODITEM`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Verificar Óleo'),(2,'Levantar carro e escorrer o óleo'),(3,'Adicionar o novo óleo e descer o carro'),(4,'Inciar checklist'),(5,'Lubrificar todos parafusos'),(6,'Finalizar checklist'),(7,'Colocar macaco hidráulico e remover parafusos'),(8,'Remover pneu e colocar novo'),(9,'Colocar, apertar todos os parafusos e abaixar carro'),(10,'Iniciar Alinhamento e Balanceamento'),(11,'Verificar se tudo está de acordo com o checklist'),(12,'Finalizar Alinhamento e Balanceamento'),(13,'Iniciar revisão de acordo com o checklist'),(14,'Realizar limpeza do motor'),(15,'Finalizar revisão e validar checklist');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nfservico`
--

DROP TABLE IF EXISTS `nfservico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nfservico` (
  `CODIGONF` bigint NOT NULL AUTO_INCREMENT,
  `NUMERONOTA` bigint NOT NULL,
  `DATAFATURAMENTO` date NOT NULL,
  `CODEMPRESA` bigint NOT NULL,
  `CODCLIENTE` bigint NOT NULL,
  `ATIVIDADE` varchar(100) NOT NULL,
  `OBSERVACAO` varchar(255) NOT NULL,
  `CODORDEMSERVICO` bigint NOT NULL,
  `VALORTOTAL` float NOT NULL,
  `VALORDESCONTO` float NOT NULL,
  `TIPOVENDA` varchar(100) NOT NULL,
  PRIMARY KEY (`CODIGONF`),
  UNIQUE KEY `IDNFSERVICO_1` (`NUMERONOTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nfservico`
--

LOCK TABLES `nfservico` WRITE;
/*!40000 ALTER TABLE `nfservico` DISABLE KEYS */;
/*!40000 ALTER TABLE `nfservico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordem_servico`
--

DROP TABLE IF EXISTS `ordem_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordem_servico` (
  `CODIGO` bigint NOT NULL AUTO_INCREMENT,
  `CODORDEMSERVICO` bigint NOT NULL,
  `CODSERVICO` bigint NOT NULL,
  `CODFUNCIONARIO` bigint NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem_servico`
--

LOCK TABLES `ordem_servico` WRITE;
/*!40000 ALTER TABLE `ordem_servico` DISABLE KEYS */;
INSERT INTO `ordem_servico` VALUES (1,1,2,9),(2,2,4,10),(3,2,5,10),(4,3,4,1),(5,3,5,1),(6,4,2,1),(7,5,2,2),(8,6,4,2),(9,6,5,2),(10,7,4,10),(11,7,5,10),(12,8,4,10),(13,8,5,10),(14,9,4,1),(15,9,5,1),(16,10,2,9),(17,11,1,1),(18,12,1,1),(19,13,1,1),(20,14,2,10),(21,15,4,9),(22,16,5,2);
/*!40000 ALTER TABLE `ordem_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordemservico`
--

DROP TABLE IF EXISTS `ordemservico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordemservico` (
  `CODORDEMSERVICO` bigint NOT NULL AUTO_INCREMENT,
  `ENTRADA` date NOT NULL,
  `SAIDA` date NOT NULL,
  `TOTAL` float NOT NULL,
  `CODCLIENTE` bigint NOT NULL,
  `PLACA` varchar(7) NOT NULL,
  `CODFUNCIONARIO` bigint NOT NULL,
  `PENDENTE` char(1) NOT NULL,
  `TOTALSERVICO` float NOT NULL,
  `VALORDESCONTO` float NOT NULL,
  PRIMARY KEY (`CODORDEMSERVICO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordemservico`
--

LOCK TABLES `ordemservico` WRITE;
/*!40000 ALTER TABLE `ordemservico` DISABLE KEYS */;
INSERT INTO `ordemservico` VALUES (1,'2021-11-08','2021-11-11',350,1,'KLE2124',8,'N',350,0),(2,'2021-11-01','2021-11-08',570,2,'KLC5438',8,'N',570,0),(3,'2021-10-25','2021-11-01',570,3,'KIR8980',3,'N',550,20),(4,'2021-10-25','2021-10-28',350,4,'KLH6098',3,'N',350,0),(5,'2021-10-25','2021-10-28',350,5,'KLY7880',8,'N',350,0),(6,'2021-10-18','2021-10-25',570,6,'KKK5233',8,'N',570,0),(7,'2021-10-18','2021-10-25',570,7,'KGE9587',3,'N',570,0),(8,'2021-10-04','2021-10-11',570,8,'KJQ0759',8,'N',570,0),(9,'2021-10-04','2021-10-11',570,9,'KLY4260',3,'N',570,0),(10,'2021-10-04','2021-10-07',350,10,'KKN9114',3,'N',330,20),(11,'2021-09-27','2021-09-27',65,11,'KLI7347',8,'N',65,0),(12,'2021-09-30','2021-09-30',65,12,'KGF6677',8,'N',65,0),(13,'2021-10-18','2021-10-18',65,13,'KIK8444',8,'N',65,0),(14,'2021-11-11','0000-00-00',350,11,'KLI7347',3,'S',350,0),(15,'2021-11-11','0000-00-00',400,12,'KGF6677',8,'S',400,0),(16,'2021-11-11','0000-00-00',170,13,'KIK8444',3,'S',170,0);
/*!40000 ALTER TABLE `ordemservico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `CODSERVICO` bigint NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(255) NOT NULL,
  `PRECO` float NOT NULL,
  PRIMARY KEY (`CODSERVICO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Troca de Óleo',65),(2,'Revisão Geral',350),(3,'Troca de Pneu',20),(4,'Alinhamento e Balanceamento',400),(5,'Revisão do Motor',170);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico_item`
--

DROP TABLE IF EXISTS `servico_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico_item` (
  `CODIGO` bigint NOT NULL AUTO_INCREMENT,
  `CODSERVICO` bigint NOT NULL,
  `CODITEM` bigint NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico_item`
--

LOCK TABLES `servico_item` WRITE;
/*!40000 ALTER TABLE `servico_item` DISABLE KEYS */;
INSERT INTO `servico_item` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15);
/*!40000 ALTER TABLE `servico_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `CODUSUARIO` bigint NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(255) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `CADASTRO` date NOT NULL,
  `CODFUNCIONARIO` bigint NOT NULL,
  PRIMARY KEY (`CODUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `PLACA` varchar(7) NOT NULL,
  `MARCA` varchar(100) NOT NULL,
  `MODELO` varchar(100) NOT NULL,
  PRIMARY KEY (`PLACA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES ('KGE9587','Plymouth','Gran Voyager LE 2.5'),('KGF6677','Cadillac','Deville/Eldorado 4.9'),('KIK8444','MINI','COOPER 1.6 Mec.'),('KIR8980','Buggy','Buggy 1.6 2-Lug.'),('KJQ0759','Buggy','Buggy IV e V'),('KKK5233','Ford','Corcel II L'),('KKN9114','Rover','Mini Cooper 1.3'),('KLC5438','Engesa','Engesa 4x4 4.0 Diesel'),('KLE2124','Chrysler','TOWN & COUNTRY Touring 3.6 V6 Aut.'),('KLH6098','Mahindra','SUV 2.2 4x4 (diesel) Mec.'),('KLI7347','Porsche','911 Carrera Cabriolet 3.4/ 3.6 Mec'),('KLY4260','Renault','19 RT 1.8/ 1.8i'),('KLY7880','Mercury','Mystique GS 2.5 V6 Mec.');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 19:28:42
