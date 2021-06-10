-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: minhaloja
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cidadestado`
--

DROP TABLE IF EXISTS `cidadestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidadestado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidadestado`
--

LOCK TABLES `cidadestado` WRITE;
/*!40000 ALTER TABLE `cidadestado` DISABLE KEYS */;
INSERT INTO `cidadestado` VALUES (1,'Recife','PE'),(2,'São Paulo','SP'),(3,'São Paulo','SP'),(4,'Rio de Janeiro','RJ');
/*!40000 ALTER TABLE `cidadestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `whatsapp` bigint DEFAULT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'anaferraz@gmail.com','Ana Ferraz',81998989898,'anaferraz'),(2,'joaomiguel@gmail.com','João Miguel',11978788787,'joaomig'),(3,'beatrizlima@gmail.com','Beatriz Lima',11967676767,'bialima'),(4,'fernando@gmail.com','Fernando Augusto',21756564545,'nando');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'adaptadores'),(2,'ferramentas'),(3,'eletrônicos'),(4,'casa');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `tipologradouro` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidadestado` int NOT NULL,
  `clienteid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkcidadestado_idx` (`cidadestado`),
  KEY `fkclienteid_idx` (`clienteid`),
  CONSTRAINT `fkcidadestado` FOREIGN KEY (`cidadestado`) REFERENCES `cidadestado` (`id`),
  CONSTRAINT `fkclienteid` FOREIGN KEY (`clienteid`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (2,'residencial','Bernardo Vilela','Rua','33','ap 1002','90909-234','Espinheiro',1,1),(3,'residencial','Agamenon Magalhães','Avenida','23','ap 23','88888-000','Perdizes',2,2),(4,'residencial','da Paz','Largo','34','ap101','89990-999','Higienópolis',2,3),(5,'comercial','Chora Menino','Praça','144','sala 12','51029-999','Paraisópolis',3,4);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id` int NOT NULL,
  `produto` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkprodutoid_idx` (`produto`),
  CONSTRAINT `fkprodutoid` FOREIGN KEY (`produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `datapedido` datetime NOT NULL,
  `codigo` int NOT NULL,
  `pedidosstatus` int NOT NULL,
  `cliente` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkcliente_idx` (`cliente`),
  KEY `fkpedidosstatus_idx` (`pedidosstatus`),
  CONSTRAINT `fkcliente` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fkpedidosstatus` FOREIGN KEY (`pedidosstatus`) REFERENCES `pedidosstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2021-05-10 00:00:00',11719,2,4),(2,'2021-04-27 00:00:00',6530,1,2);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosstatus`
--

DROP TABLE IF EXISTS `pedidosstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidosstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosstatus`
--

LOCK TABLES `pedidosstatus` WRITE;
/*!40000 ALTER TABLE `pedidosstatus` DISABLE KEYS */;
INSERT INTO `pedidosstatus` VALUES (1,'postado'),(2,'concluído');
/*!40000 ALTER TABLE `pedidosstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtopedido`
--

DROP TABLE IF EXISTS `produtopedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtopedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `precounitario` int NOT NULL,
  `precototal` int NOT NULL,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtopedido`
--

LOCK TABLES `produtopedido` WRITE;
/*!40000 ALTER TABLE `produtopedido` DISABLE KEYS */;
INSERT INTO `produtopedido` VALUES (1,'2',15,15,'Alicate para Crimpar TL-315 3 em 1'),(2,'4',6,6,'Adaptador VGA Macho / RJ45');
/*!40000 ALTER TABLE `produtopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` int NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` int NOT NULL,
  `disponivel` int NOT NULL,
  `destaque` int NOT NULL,
  `departamentoid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkdepartamento_idx` (`departamentoid`),
  CONSTRAINT `fkdepartamento` FOREIGN KEY (`departamentoid`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,6530,'Adaptador VGA Macho / RJ45',6,1,1,1),(2,26333,'Babá Eletrônica Motorola MBP161TIMER branco',36,1,1,4),(3,19141,'Câmera Webcam Razer  RZ19-02320100-R3U1 KIYO 720P',91,2,2,3),(4,11719,'Alicate para Crimpar TL-315 3 em 1',15,1,1,2);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'minhaloja'
--

--
-- Dumping routines for database 'minhaloja'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-10 20:26:04
