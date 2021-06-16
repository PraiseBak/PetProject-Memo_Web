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
  `board_content_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `write_time` datetime DEFAULT NULL,
  `board_content_title` varchar(256) NOT NULL,
  `content_password` varchar(256) NOT NULL,
  `write_user_name` varchar(256) NOT NULL,
  PRIMARY KEY (`board_content_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_content_table`
--

LOCK TABLES `board_content_table` WRITE;
/*!40000 ALTER TABLE `board_content_table` DISABLE KEYS */;
INSERT INTO `board_content_table` VALUES ('12342',1,'2021-06-16 18:32:50','1234','1234','1234');
/*!40000 ALTER TABLE `board_content_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_manage`
--

DROP TABLE IF EXISTS `board_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_manage` (
  `board_name` varchar(256) NOT NULL,
  `board_idx` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`board_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_manage`
--

LOCK TABLES `board_manage` WRITE;
/*!40000 ALTER TABLE `board_manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_manage` ENABLE KEYS */;
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
  `user_name` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `board_idx` int unsigned DEFAULT NULL,
  `write_time` datetime NOT NULL,
  `comment_idx` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`comment_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_table`
--

LOCK TABLES `comment_table` WRITE;
/*!40000 ALTER TABLE `comment_table` DISABLE KEYS */;
INSERT INTO `comment_table` VALUES ('dd','1234','1234',3,'2021-06-16 16:01:12',1),('dd','1234','1234',3,'2021-06-16 16:01:16',2),('테스트닉네임','1234','테스트',3,'2021-06-16 16:05:23',3),('테스트닉네임','1234','테스트',3,'2021-06-16 16:05:31',4),('테스트닉네임','1234','테스트',3,'2021-06-16 16:06:08',5),('테스트1','1234','테스트1',3,'2021-06-16 16:08:11',6),('테스트1','1234','테스트1',3,'2021-06-16 16:09:27',7),('테스트1','1234','테스트1',3,'2021-06-16 16:09:43',8),('테스트1','1234','테스트1',3,'2021-06-16 16:09:56',9),('ㅇㅇ','1234','1234',3,'2021-06-16 16:13:43',10),('ㅇㅇ','1234','1234',3,'2021-06-16 16:13:45',11),('ㅇㅇ','1234','1234',3,'2021-06-16 16:14:23',12),('ㅇㅇ','1234','1234',3,'2021-06-16 16:14:25',13),('dd','1234','12345',3,'2021-06-16 16:14:49',14),('dd','1234','12345',3,'2021-06-16 16:14:52',15),('dd','1234','12345',3,'2021-06-16 16:15:20',16),('dd','1234','12345',3,'2021-06-16 16:15:22',17),('dd2','1234','1234',3,'2021-06-16 16:16:18',18),('dd2','1234','1234',3,'2021-06-16 16:16:20',19),('1234','1234','12345',3,'2021-06-16 16:21:02',20),('dd','1234','1234',3,'2021-06-16 16:21:25',21),('asdf','1234','1234',3,'2021-06-16 16:21:41',22),('테스트','1234','1234',3,'2021-06-16 16:22:28',23),('댓글 테스트1','1234','1234',5,'2021-06-16 16:23:19',24);
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

-- Dump completed on 2021-06-16 18:35:39
