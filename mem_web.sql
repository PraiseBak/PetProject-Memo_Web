-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mem_web
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
-- Table structure for table `board_content_table`
--

DROP TABLE IF EXISTS `board_content_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_content_table` (
  `board_content` varchar(256) NOT NULL,
  `board_content_idx` bigint NOT NULL AUTO_INCREMENT,
  `write_time` datetime DEFAULT NULL,
  `board_content_title` varchar(256) NOT NULL,
  `write_user_name` varchar(256) NOT NULL,
  `content_password` varchar(256) NOT NULL,
  PRIMARY KEY (`board_content_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_content_table`
--

LOCK TABLES `board_content_table` WRITE;
/*!40000 ALTER TABLE `board_content_table` DISABLE KEYS */;
INSERT INTO `board_content_table` VALUES ('ff',1,'2021-06-13 07:36:57','ff','ff','ff'),('dd',2,'2021-06-13 06:53:19','dd','dd33','dd44'),('dddd',3,'2021-06-13 08:09:47','dddd','dddd','dddd'),('ddddd',4,'2021-06-13 08:28:58','dd','dd','dddd'),('dd',5,'2021-06-13 08:31:10','ddddd','dddd','dddd'),('dddd',6,'2021-06-13 08:38:03','dddd','dddd','dddd'),('ㅇㅇ',7,'2021-06-18 07:26:23','포스트기능 추가 ㄱ','TODO','1234');
/*!40000 ALTER TABLE `board_content_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_list`
--

DROP TABLE IF EXISTS `check_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_list` (
  `user_idx` int unsigned NOT NULL,
  `content_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(256) NOT NULL,
  PRIMARY KEY (`content_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_list`
--

LOCK TABLES `check_list` WRITE;
/*!40000 ALTER TABLE `check_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_table`
--

DROP TABLE IF EXISTS `comment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_table` (
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `board_idx` int unsigned DEFAULT NULL,
  `write_time` datetime NOT NULL,
  `comment_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_comment_idx` int unsigned DEFAULT NULL,
  PRIMARY KEY (`comment_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_table`
--

LOCK TABLES `comment_table` WRITE;
/*!40000 ALTER TABLE `comment_table` DISABLE KEYS */;
INSERT INTO `comment_table` VALUES ('ㅇㅇ','1234','1234',2,'2021-06-18 05:21:36',1,NULL),('ㅇㅇ2','1234','1234',2,'2021-06-18 06:28:05',2,1),('ㅇㅇ3','1234','12345',2,'2021-06-18 06:28:26',3,1),('예아 메끼겠습니다','1234','12345',2,'2021-06-18 06:36:11',4,4),('2222','2222','2222',2,'2021-06-18 06:54:32',5,4),('3333','3333','3333',2,'2021-06-18 06:54:40',6,4),('ㅇㅇ','1234','예아',7,'2021-06-18 21:36:09',7,NULL);
/*!40000 ALTER TABLE `comment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('praisebak','Pcy3062!',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-19 11:04:35
