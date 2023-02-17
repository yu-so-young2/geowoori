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
-- Table structure for table `hand_washing`
--

DROP TABLE IF EXISTS `hand_washing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hand_washing` (
  `hand_washing_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `hand_washing_time` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`hand_washing_key`),
  KEY `FK2yarfyvxnwtc5na16j4dyxxnu` (`member_key`),
  CONSTRAINT `FK2yarfyvxnwtc5na16j4dyxxnu` FOREIGN KEY (`member_key`) REFERENCES `member` (`member_key`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hand_washing`
--

LOCK TABLES `hand_washing` WRITE;
/*!40000 ALTER TABLE `hand_washing` DISABLE KEYS */;
INSERT INTO `hand_washing` VALUES (17,'2023-02-13 16:36:07','nh3b-494F'),(18,'2023-02-13 17:10:38','nh3b-494F'),(19,'2023-02-13 17:10:47','nh3b-494F'),(20,'2023-02-13 17:10:48','nh3b-494F'),(21,'2023-02-13 17:10:49','nh3b-494F'),(22,'2023-02-13 17:10:51','nh3b-494F'),(23,'2023-02-13 17:10:52','nh3b-494F'),(24,'2023-02-13 17:10:53','nh3b-494F'),(25,'2023-02-13 17:10:53','nh3b-494F'),(26,'2023-02-13 17:10:54','nh3b-494F'),(27,'2023-02-13 17:10:55','nh3b-494F'),(28,'2023-02-13 17:10:55','nh3b-494F'),(29,'2023-02-13 17:10:56','nh3b-494F'),(51,'2023-02-15 10:07:45','B7T3-jX6r');
/*!40000 ALTER TABLE `hand_washing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:53:23
