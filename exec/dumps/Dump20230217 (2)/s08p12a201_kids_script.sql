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
-- Table structure for table `kids_script`
--

DROP TABLE IF EXISTS `kids_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kids_script` (
  `script_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `script` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`script_key`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kids_script`
--

LOCK TABLES `kids_script` WRITE;
/*!40000 ALTER TABLE `kids_script` DISABLE KEYS */;
INSERT INTO `kids_script` VALUES (1,'안녕?! {name}?! 잘잤어? 좋은 아침이야!',1),(2,'어서왕!? 상쾌한 아침이지 {name}?!',1),(3,'안녕?! 오늘도 활기차게 시작해볼까 {name}?!',1),(4,'{name}, 굿모닝이야!!?',1),(5,'{name} 잘 잤어?! 오늘도 행복하게 보내자!?',1),(6,'잘 잤니 {name}?! 기지개 한 번 켜볼까?! 하나, 둘, 셋, 으으샤!!!!',1),(7,'안녕 {name}?! 오늘도 기지개 켜고 시작할까? 하나, 둘, 셋, 으으샤!!',1),(8,'안녕 {name}?! 아침에 잘 일어나는 멋진 어린이구나?!',1),(9,'좋은 아침이야~ 행복한 하루 되자!',1),(10,'안녕 {name}?! 점심은 맛있게 먹었어?',2),(11,'안녕 {name}?! 점심은 맛있게 먹었니?',2),(12,'안녕 {name}?! 오늘 점심은 맛있었어?',2),(13,'어서와 {name}! 점심은 잘 먹었어?',2),(14,'어서와 {name}! 배불리 맛있게 먹었어?',2),(15,'어서왕! {name}, 오늘 하루도 수고했어',3),(16,'어서왕! {name}, 오늘 하루도 잘 보냈니?',3),(17,'{name}?! 벌써 저녁이네, 오늘 하루 잘 보냈니?!',3),(18,'{name}?! 벌써 저녁이네, 오늘 하루도 고생했어',3),(19,'{name}?! 벌써 저녁이네, 오늘 하루도 고생 많았어',3),(20,'{name}?! 오늘 하루도 곧 끝나가네?! 고생했어!',3),(21,'어서왕! {name}?! 오늘 하루도 곧 끝나가네?! 수고했어!',3),(22,'안녕?! {name}',4),(23,'{name} hi!?',4),(24,'{name} 반가워!?',4),(25,'{name} 안녕?!',4),(26,'반가워 {name}?!',4),(27,'{name} 우리 상쾌하게 같이 양치해볼까?',5),(28,'{name} 우리 함께 양치해볼까?',5),(29,'{name} 우리 즐겁게 양치해볼까?',5),(30,'{name} 우리 즐거운 양치 시간을 가져볼까?',5),(31,'{name} 우리 즐겁게 양치 해보자!?',5),(32,'{name}? 우리 양치를 시작해볼까? 괜찮니?!',5),(33,'{name}? 오늘은 아직 양치를 안했네! 우리 양치하러 갈까?',5),(34,'{name} 우리 양치 하면서 충치를 물리쳐볼까?',5),(35,'헐 맛없었구나... {name} 그래두 우리 양치해볼까?',5),(36,'에고… {name} 그래두 우리 같이 양치하고 충치를 무찌르자!',5),(37,'밥 먹기 싫었구나! {name} 우리 양치하고 내일은 더 맛있는거 먹자?!',5),(38,'{name} 맛있는 밥을 먹었으면 우리 양치 해야지?!',5),(39,'아잇?! {name} 맛있게 밥을 먹었으니까 이제는 양치를 해야지?!',5),(40,'{name} 맛있는 밥을 먹었는데 양치를 안하겠다구?! 에이 멋있는 어린이는 양치도 잘 하는데..?! 우리 이제는 양치를 해보자?!',5),(41,'{name} 그래도 해야돼!...... 하면 안될까?',5),(42,'음… {name} 다시 한 번 더 생각해보자 우리 양치하는게 어때?!',5),(43,'{name} 양치를 하는 것은 엄청 중요한 일이야..! 충치가 생겨서 아야아야하면 안되겠지?!',5),(44,'{name} 양치를 해야 멋쟁이가 될걸?!',5),(45,'{name} 양치를 안하면 세균들이 아야아야하게 할거야 우리 양치하자!?',5),(46,'{name} 엄마가 혼낼걸?! 양치하고 우리 멋있는 어린이가 되자?!',5),(47,'{name} 우리 양치하면서 핑크퐁 보자아?!',5),(48,'진짜 마지막으로 물어본다? 양치하자아~',5),(49,'{name} 좋아!? 이제 양치를 시작해보자?!',6),(50,'{name} 좋아!? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(51,'{name} 좋아!? 이제 치카치카를 시작할게?! 화면을 잘 봐줘?!',6),(52,'{name} 너무 멋진 어린이다!? 이제 치카치카를 시작할게?! 화면을 잘 봐줘?!',6),(53,'이야아아? {name} 너무 좋았어!? 이제 치카치카를 시작할게?! 화면을 잘 봐줘?!',6),(54,'이야아아? {name} 좋았어 !? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(55,'어머? {name} 너무 좋은 생각이야!? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(56,'어머? {name} 좋았어 !? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(57,'{name} 너무 멋진 어린이다!? 이제 치카치카를 시작할게?! 화면을 잘 봐줘?!',6),(58,'이야아아? {name} 너무 좋았어!? 이제 치카치카를 시작할게?! 화면을 잘 봐줘?!',6),(59,'이야아아? {name} 좋았어 !? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(60,'어머? {name} 너무 좋은 생각이야!? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(61,'어머? {name} 좋았어 !? 이제 양치를 시작할게?! 화면을 잘 봐줘?!',6),(62,'{name} 손 씻으러 왔구나?!',7),(63,'{name} 세균 없애러 왔구나?!',7),(64,'{name} 손을 씻어볼까?!',7),(65,'하고 왔구나!! 그럼 손 씻으러 왔구나?!',7),(66,'그럼 세균 없애러 왔구나?!',7),(67,'그럼 손을 씻어볼까?!',7),(68,'그럼 세균 없애러 왔구나?!',7),(69,'그럼 손을 씻어볼까?!',7),(70,'그렇구나... {name} 대신 손씻으면서 기분전환해볼까?',7),(71,'{name} 기분이 별로 안좋았구나! 우리 손씻으면서 다 털어버리자!',7),(72,'{name} 기분이 안좋았다고 하니 거우리도 기분이 안좋다… 기분 전환할겸 손을 씻어보자!?',7),(73,'{name} 마음이 안좋구나… 우리 손 씻으면서 핑크퐁을 보자! 핑크퐁 보면서 다 잊어버리자!?',7),(74,'{name} 손 씻어야 착한 어린이지?!',7),(75,'{name} 손 씻어야 멋있는 어린이인데?!',7),(76,'{name} 손에는 세균이 엄청 많아서 아야아야하게 만들거야… 거우리는 아픈거 싫은데…. 손 씻어서 세균을 물리치자!?',7),(77,'{name} 손에 세균이 엄청 많을걸??! 할거지?',7),(78,'{name} 그래도 손 씻기는 해야해?! 자아 시이작!!',7),(79,'{name} 손 씻기는 엄청 엄청 멋있는 일이야! 우리 같이 손 씻기 해보자?! 준비 시이작!!',7),(80,'{name} 어쩔 수 없어! 자 셋하면 손 씻기 시작할게?! 하나,둘,셋!',7),(81,'{name} 손 씻기 해야 깨끗해질걸?! 손 씻기도 스스로하는 멋진 어린이가 되자?! 준비 시이작?!',7),(82,'진짜 마지막으로 물어보는거야!! 손 씻자아~',8),(83,'좋아! {name} 나랑 같이 손씻어보자!',8),(84,'그래그래! {name} 같이 손 씻기 시작해보자!',8),(85,'좋았어! {name} 같이 손을 씻어보자!',8),(86,'{name} 우리 같이 손에 있는 세균들을 없애보자?!',8),(87,'{name} 손 씻기 시작한다?! 시작?!',8),(88,'이야아아? {name} 좋아! 이제 손 씻기를 시작할게?! 화면을 잘 봐줘?!',8),(89,'어머? {name} 너무 좋은 생각이야!? 이제 손 씻기를 시작할게?! 화면을 잘 봐줘?!',8),(90,'어쩔 수 없어! 시작한다 하나 둘 셋!',6),(91,'어쩔 수 없어! 시작한다 하나 둘 셋!',8);
/*!40000 ALTER TABLE `kids_script` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:53:50
