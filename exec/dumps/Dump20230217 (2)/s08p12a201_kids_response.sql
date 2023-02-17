-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Win64 (AMD64)
--
-- Host: stg-yswa-kr-practice-db-master.mariadb.database.azure.com    Database: s08p12a201
-- ------------------------------------------------------
-- Server version	5.6.47.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kids_response`
--

DROP TABLE IF EXISTS `kids_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kids_response` (
  `kids_response_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `reaction` int(11) NOT NULL,
  `req_key` bigint(20) DEFAULT NULL,
  `res_key` bigint(20) DEFAULT NULL,
  `res_type` int(11) NOT NULL,
  PRIMARY KEY (`kids_response_key`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kids_response`
--

LOCK TABLES `kids_response` WRITE;
/*!40000 ALTER TABLE `kids_response` DISABLE KEYS */;
INSERT INTO `kids_response` VALUES (1,0,0,1,1),(2,0,0,2,1),(3,0,0,10,2),(4,0,0,11,2),(5,0,0,15,3),(6,0,0,17,3),(7,1,1,27,5),(8,1,1,34,5),(9,0,1,36,5),(10,1,2,27,5),(11,1,2,34,5),(12,0,2,36,5),(13,1,10,38,5),(14,0,10,35,5),(15,0,38,40,5),(16,1,11,38,5),(17,0,11,35,5),(18,1,15,34,5),(19,0,15,36,5),(20,1,17,34,5),(21,0,17,36,5),(22,1,27,49,6),(23,0,27,41,5),(24,1,34,49,6),(25,0,34,41,5),(26,1,36,49,6),(27,0,36,43,5),(28,1,35,49,6),(29,0,35,48,5),(30,1,40,49,6),(31,0,40,41,5),(32,1,41,49,6),(33,0,41,43,5),(34,1,43,49,6),(35,0,43,48,5),(36,1,48,49,6),(37,0,48,90,6),(38,1,38,49,6),(39,1,60,83,8),(40,1,1,67,7),(41,1,2,67,7),(42,1,10,67,7),(43,1,11,67,7),(44,1,15,67,7),(45,1,17,67,7),(46,0,1,70,7),(47,0,2,70,7),(48,0,10,70,7),(49,0,11,70,7),(50,0,15,70,7),(51,0,17,70,7),(52,1,67,83,8),(53,0,67,76,7),(54,1,76,83,8),(55,0,76,75,7),(56,1,75,83,8),(57,0,75,80,8);
/*!40000 ALTER TABLE `kids_response` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:53:28
