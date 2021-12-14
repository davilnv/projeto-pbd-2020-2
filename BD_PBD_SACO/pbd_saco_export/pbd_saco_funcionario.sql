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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 19:24:12
