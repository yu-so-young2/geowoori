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
-- Table structure for table `fortune`
--

DROP TABLE IF EXISTS `fortune`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortune` (
  `fortune_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `sentence` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`fortune_key`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fortune`
--

LOCK TABLES `fortune` WRITE;
/*!40000 ALTER TABLE `fortune` DISABLE KEYS */;
INSERT INTO `fortune` VALUES (1,'오늘은 왠지 달달한 게 땡기는걸?'),(2,'오늘 나 좀 매력적인 듯?'),(3,'오늘은 떡볶이 각!'),(4,'난 정말 완벽해!'),(5,'현실 감각이 중요한 때입니다.'),(6,'많은 사람들이 따르는 날입니다.'),(7,'늘! 웃음 가득한 당신'),(8,'조금 서툴러도 돼. 처음엔 누구나 서툰 법이야 :)'),(9,'좋아하는 걸 계속하려면 건강해야해. 운동하자!'),(10,'모든 게 잘 될 것만 같은 하루~'),(11,'너는 왜 매일 같은 티만 입어? 큐티…♥'),(12,'내일은 내일의 태양이 뜬다'),(13,'행복은 통장잔고에서 나온다'),(14,'오후에 좋은 일이 있습니다.'),(15,'운명적인 만남을 기대해 보세요'),(16,'본인을 믿으세요'),(17,'할까 말까 할 때는 해보자!!!'),(18,'의욕 넘치는 하루'),(19,'감정에 휘말리지 말 것'),(20,'오늘도 해피엔딩'),(21,'과감하게 시도하세요'),(22,'역시 내가 귀여운 탓인가?'),(23,'오늘은 확 질러버리자'),(24,'미뤄뒀던 계획을 실행하세요'),(25,'고민하던 일이 해결되는 하루가 될 겁니다'),(26,'지금 일에 집중하세요'),(27,'편견에 속지 마세요'),(28,'현실감각이 중요한 때입니다'),(29,'연애운이 풍부합니다. 도전!'),(30,'내일을 위해 신중해져야 합니다.'),(31,'귀인을 만납니다'),(32,'오늘도 로또를 기대해본다'),(33,'큰 행운이 따릅니다.'),(34,'이루지 못할 일은 없어요'),(35,'들뜨고 즐거운 하루!'),(36,'기분 좋은 만남이 있을 거에요'),(37,'가끔은 멀리 돌아가는 것도 좋아요'),(38,'여유를 가져보는 하루'),(39,'좋은 일이 있을 거야!'),(40,'오늘 저녁 메뉴는 김치찌개'),(41,'결정과 선택은 서두르지 마세요'),(42,'뭐든 잘 풀리니 행복한 하루!'),(43,'먹어도 먹어도 배고프네'),(44,'절 믿지 마세요'),(45,'예상치 못한 사건에 대비하세요!'),(46,'참지않긔'),(47,'묵묵히 할 일을 하세요'),(48,'반가운 소식이 있을 거예요'),(49,'오늘 스타일 좋은걸?'),(50,'때론 힘든 날도 있는 법이지');
/*!40000 ALTER TABLE `fortune` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:54:03
