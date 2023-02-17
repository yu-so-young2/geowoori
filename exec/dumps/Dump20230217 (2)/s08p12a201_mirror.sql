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
-- Table structure for table `mirror`
--

DROP TABLE IF EXISTS `mirror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mirror` (
  `serial_number` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`serial_number`),
  KEY `FK5jd1k7g2lsc5y45yoyiyd2thd` (`user_key`),
  CONSTRAINT `FK5jd1k7g2lsc5y45yoyiyd2thd` FOREIGN KEY (`user_key`) REFERENCES `user` (`user_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mirror`
--

LOCK TABLES `mirror` WRITE;
/*!40000 ALTER TABLE `mirror` DISABLE KEYS */;
INSERT INTO `mirror` VALUES ('8DLL-44yh-x7vB-VuWK','1조의 해피해피 거울','Fyw3-DOwW');
/*!40000 ALTER TABLE `mirror` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:53:37
