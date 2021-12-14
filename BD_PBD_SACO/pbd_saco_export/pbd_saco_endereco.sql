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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 19:24:13
