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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `birth` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `kids_mode` bit(1) NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`member_key`),
  KEY `FKd12v4p1usuphknnvqcgr46etq` (`user_key`),
  CONSTRAINT `FKd12v4p1usuphknnvqcgr46etq` FOREIGN KEY (`user_key`) REFERENCES `user` (`user_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('60lm-pxTc','1996-11-04','https://firebasestorage.googleapis.com/v0/b/ddok-mirror.appspot.com/o/서보민.png?alt=media','\0','BM','Fyw3-DOwW'),('B7T3-jX6r','1993-02-03','https://firebasestorage.googleapis.com/v0/b/ddok-mirror.appspot.com/o/노현정.png?alt=media','','노노','Fyw3-DOwW'),('DnGc-bHAM','1995-07-10','https://firebasestorage.googleapis.com/v0/b/ddok-mirror.appspot.com/o/이동민.png?alt=media','\0','동밍','Fyw3-DOwW'),('GhhR-Habi','1996-12-21','https://firebasestorage.googleapis.com/v0/b/ddok-mirror.appspot.com/o/원영현.png?alt=media','','영현','Fyw3-DOwW'),('fSBS-lCHb','1997-09-01','https://firebasestorage.googleapis.com/v0/b/ddok-mirror.appspot.com/o/심정윤.png?alt=media','','짱윤','Fyw3-DOwW'),('nh3b-494F','1998-09-11','https://firebasestorage.googleapis.com/v0/b/ddok-mirror.appspot.com/o/유소영.png?alt=media','\0','쏘영','Fyw3-DOwW');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:53:24
