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
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `quiz_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `hint` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`quiz_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'원숭이','이 동물은 우끼끼 하고 운대','이 동물은 꼬리가 엄청 길대. 그리고 바나나를 진짜진짜 좋아한대. 나무도 엄청 잘 타.'),(2,'악어','늪지대가 나타나면 이 동물이 나올지도 몰라','이 동물은 물가에 살고, 몸이 길고 커. 그리고 입이 엄청 크고 이빨이 많고 날카롭대.'),(3,'코끼리','먹이를 주면 코로 받아서 먹는 동물이래','이 동물은 몸집이 크고, 다리가 4개래. 그리고 코가 엄~청 길고 귀가 커.'),(4,'토끼','이 동물은 엄청 빠른데도 거북이랑 달리기 시합해서 진 적이 있대!','이 동물은 귀가 엄청 길고 조그만한 동물이야. 깡총깡총 뛰어다니고 당근과 채소를 좋아하는 동물이야'),(5,'거북이','이 동물은 엉금엉금 느리게 걷는대도 엄청 빠른 토끼랑 경주해서 이긴 적이 있대!','이 동물은 크고 딱딱 등딱지를 가지고 있어, 그리고 땅에서 느리게 엉금엉금 걷는대.'),(6,'소','이 동물은 음메~ 하고 운대','이 동물은 뿔이 있고, 주로 농장에서 살아. 그리고 우리한테 맛있는 우유를 준대'),(7,'돼지','이 동물은 꿀꿀 거리는걸 좋아해','이 동물은 핑크빛에 뚱뚱하고, 다리가 네개인 동물이야. 그리고 꼬리가 짧고 말려 있어.'),(8,'고양이','가끔 다가와서 야옹거리는 동물이야','이 동물은 쥐를 잡는걸 좋아하고, 집에서 많이 키우는 동물이야. 수염과 털이 나 있어.'),(9,'닭','맛있는 달걀을 낳아주는 고마운 동물이야','이 동물은 깃털이 많고, 땅에서 두발로 걷는  동물이야. 그리고 알을 낳고 꼬끼오 하고 울지.');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:54:05
