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
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `story_key` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`story_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'옛날, 바닷속 깊은 곳에 커다란 용궁이 있었어요. 그곳에는 용왕님을 비롯하여 많은 백성들이 살고 있었는데, 마침 용왕님이 심한 병으로 고생을 하고 있었어요.어느날, 토끼의 간을 먹으면 병이 낫는다는 말을 들은 용왕님은충실한 신하인 거북이를 시켜 토끼의 간을 구해오도록 했어요. 거북이는 토끼를 찾으로 뭍으로 떠났어요.그리고 마침 낮잠을 자고 있던 토끼를 발견하게 되었지요.\"옳지! 토끼가 저기 있구나.\"마음속으로 환호성을 지른 거북이는잠자는 토끼를 흔들어 깨워서 공손하게 말했어요.\"토끼님, 지금 우리 용궁에서는 큰 잔치가 열리고 있는데,용왕님께서는 산 중의 왕인 토끼님을 꼭 모셔오라고 하셨습니다.부디 잔치에 참석하셔서 자리를 빛내 주십시요.\"토끼는 거북이의 달콤한 속임수에 우쭐해졌어요.그래서 그만 거불이의 꽴에 빠져 용궁으로 가게 되었지요.용궁에 도착한 토끼를 보고 용왕님이 반가와서 소리쳤어요.\"오! 토끼선생, 내 병을 고치기 위해이 먼곳까지 토끼 선생의 간을 가지고 오셨군요.\"용왕님의 이 말을 들은 토끼는 가슴이 철렁했어요.거북이의 달콤한 말에 속아 그만 죽으러 들어온 것을 깨달았으니까요.토끼는 너무나 약이 올랐어요. 그래서 자기도 한가지꾀를 써서 이렇게 말했어요.\"용왕님, 제 간이 워낙 만병 특효약이라서, 그것을 노리는 자들이 많습니다.그래서 생각한 끝에, 간을 꺼내어 감추어 두고 있습니다.거북이가 미리 애기를 해줬더라면 간을 놓고 오는 일은 없었을 텐데.....허지만 꼭 필요하시다면 제가 지금 당장 나가서 가지고 오겠습니다.토끼의 이 말에 용왕님은 감격해서 눈물까지 흘렸어요.\"토끼 선생, 정말 고맙소! 내 그대를 위해 잔치를 베풀겠소.러니 잔치가 끝나는 대로 곧 간을 가져다 주시요.\"잔치가 벌어져 맛있는 음식을 실컷 먹은 토끼는 거북이와 함께 육지로 나왔어요.\"어휴, 이젠 안심이다.\"무사히 육지에 도착한 토끼는 안도의 한숨을 내쉬었어요.사정도 모르는 거북이는\"토끼야, 어서 간을 가져오지 않고 뭐하니?\"하고 재촉을 했어요. 그러자 토끼는 깔깔 웃으며 말했어요.\"이 미련한 거북아, 뱃 속에 있는 간을 어떻게 넣었다 뺏다 하니?\"토끼는 거북이의 약을 올리며 재빨리 숲 속으로 뛰어갔어요.거북이가 속였던 것처럼, 거북이도 토끼의 꾀에 속고 만 것이지요.','토끼의 간');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 10:53:26
