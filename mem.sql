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
  `write_ip` varchar(256) NOT NULL,
  `recommend` int unsigned DEFAULT '0',
  `unrecommend` int unsigned DEFAULT '0',
  `login_user` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`board_content_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_content_table`
--

LOCK TABLES `board_content_table` WRITE;
/*!40000 ALTER TABLE `board_content_table` DISABLE KEYS */;
INSERT INTO `board_content_table` VALUES ('1234',1,'2021-06-20 01:41:03','1234','1234','22','118.39',1,1,NULL),('1234',2,'2021-06-20 01:42:03','1234','1234','dd','118.39',1,1,NULL),('dd\r<br>dd\r<br>dd',3,'2021-06-20 01:56:32','1234','1234','1234','118.39',0,0,NULL),('dd\r<br>dd\r<br>dd',4,'2021-06-20 01:57:12','1234','1234','1234','118.39',0,0,NULL),('사용자 갤로그 만들기\r\n페이징\r\n카테고리,사이드바,몇몇 페이지?',5,'2021-06-21 17:41:48','0621할것','1234','0621','118.39',0,0,NULL),('엄준식 화이팅!1',6,'2021-06-21 18:22:56','엄준식 화이팅!1','1234','엄준식1','118.39',0,0,NULL),('엄준식 화이팅!2',7,'2021-06-21 18:22:56','엄준식 화이팅!2','1234','엄준식2','118.39',0,0,NULL),('엄준식 화이팅!3',8,'2021-06-21 18:22:56','엄준식 화이팅!3','1234','엄준식3','118.39',0,0,NULL),('엄준식 화이팅!4',9,'2021-06-21 18:22:56','엄준식 화이팅!4','1234','엄준식4','118.39',0,0,NULL),('엄준식 화이팅!5',10,'2021-06-21 18:22:56','엄준식 화이팅!5','1234','엄준식5','118.39',0,0,NULL),('엄준식 화이팅!6',11,'2021-06-21 18:22:56','엄준식 화이팅!6','1234','엄준식6','118.39',0,0,NULL),('엄준식 화이팅!7',12,'2021-06-21 18:22:56','엄준식 화이팅!7','1234','엄준식7','118.39',0,0,NULL),('엄준식 화이팅!8',13,'2021-06-21 18:22:56','엄준식 화이팅!8','1234','엄준식8','118.39',0,0,NULL),('엄준식 화이팅!9',14,'2021-06-21 18:22:56','엄준식 화이팅!9','1234','엄준식9','118.39',0,0,NULL),('엄준식 화이팅!10',15,'2021-06-21 18:22:56','엄준식 화이팅!10','1234','엄준식10','118.39',0,0,NULL),('엄준식 화이팅!11',16,'2021-06-21 18:22:56','엄준식 화이팅!11','1234','엄준식11','118.39',0,0,NULL),('엄준식 화이팅!12',17,'2021-06-21 18:22:56','엄준식 화이팅!12','1234','엄준식12','118.39',0,0,NULL),('엄준식 화이팅!13',18,'2021-06-21 18:22:56','엄준식 화이팅!13','1234','엄준식13','118.39',0,0,NULL),('엄준식 화이팅!14',19,'2021-06-21 18:22:56','엄준식 화이팅!14','1234','엄준식14','118.39',0,0,NULL),('엄준식 화이팅!15',20,'2021-06-21 18:22:56','엄준식 화이팅!15','1234','엄준식15','118.39',0,0,NULL),('엄준식 화이팅!16',21,'2021-06-21 18:22:56','엄준식 화이팅!16','1234','엄준식16','118.39',0,0,NULL),('엄준식 화이팅!17',22,'2021-06-21 18:22:56','엄준식 화이팅!17','1234','엄준식17','118.39',0,0,NULL),('엄준식 화이팅!18',23,'2021-06-21 18:22:56','엄준식 화이팅!18','1234','엄준식18','118.39',0,0,NULL),('엄준식 화이팅!19',24,'2021-06-21 18:22:56','엄준식 화이팅!19','1234','엄준식19','118.39',0,0,NULL),('엄준식 화이팅!20',25,'2021-06-21 18:22:56','엄준식 화이팅!20','1234','엄준식20','118.39',0,0,NULL),('엄준식 화이팅!21',26,'2021-06-21 18:22:56','엄준식 화이팅!21','1234','엄준식21','118.39',0,0,NULL),('엄준식 화이팅!22',27,'2021-06-21 18:22:56','엄준식 화이팅!22','1234','엄준식22','118.39',0,0,NULL),('엄준식 화이팅!23',28,'2021-06-21 18:22:56','엄준식 화이팅!23','1234','엄준식23','118.39',0,0,NULL),('엄준식 화이팅!24',29,'2021-06-21 18:22:56','엄준식 화이팅!24','1234','엄준식24','118.39',0,0,NULL),('엄준식 화이팅!25',30,'2021-06-21 18:22:56','엄준식 화이팅!25','1234','엄준식25','118.39',0,0,NULL),('엄준식 화이팅!26',31,'2021-06-21 18:22:56','엄준식 화이팅!26','1234','엄준식26','118.39',0,0,NULL),('엄준식 화이팅!27',32,'2021-06-21 18:22:56','엄준식 화이팅!27','1234','엄준식27','118.39',0,0,NULL),('엄준식 화이팅!28',33,'2021-06-21 18:22:56','엄준식 화이팅!28','1234','엄준식28','118.39',0,0,NULL),('엄준식 화이팅!29',34,'2021-06-21 18:22:56','엄준식 화이팅!29','1234','엄준식29','118.39',0,0,NULL),('엄준식 화이팅!30',35,'2021-06-21 18:22:56','엄준식 화이팅!30','1234','엄준식30','118.39',0,0,NULL),('엄준식 화이팅!31',36,'2021-06-21 18:22:56','엄준식 화이팅!31','1234','엄준식31','118.39',0,0,NULL),('엄준식 화이팅!32',37,'2021-06-21 18:22:56','엄준식 화이팅!32','1234','엄준식32','118.39',0,0,NULL),('엄준식 화이팅!33',38,'2021-06-21 18:22:56','엄준식 화이팅!33','1234','엄준식33','118.39',0,0,NULL),('엄준식 화이팅!34',39,'2021-06-21 18:22:56','엄준식 화이팅!34','1234','엄준식34','118.39',0,0,NULL),('엄준식 화이팅!35',40,'2021-06-21 18:22:56','엄준식 화이팅!35','1234','엄준식35','118.39',0,0,NULL),('엄준식 화이팅!36',41,'2021-06-21 18:22:56','엄준식 화이팅!36','1234','엄준식36','118.39',0,0,NULL),('엄준식 화이팅!37',42,'2021-06-21 18:22:56','엄준식 화이팅!37','1234','엄준식37','118.39',0,0,NULL),('엄준식 화이팅!38',43,'2021-06-21 18:22:56','엄준식 화이팅!38','1234','엄준식38','118.39',0,0,NULL),('엄준식 화이팅!39',44,'2021-06-21 18:22:56','엄준식 화이팅!39','1234','엄준식39','118.39',0,0,NULL),('엄준식 화이팅!40',45,'2021-06-21 18:22:56','엄준식 화이팅!40','1234','엄준식40','118.39',0,0,NULL),('엄준식 화이팅!41',46,'2021-06-21 18:22:56','엄준식 화이팅!41','1234','엄준식41','118.39',0,0,NULL),('엄준식 화이팅!42',47,'2021-06-21 18:22:56','엄준식 화이팅!42','1234','엄준식42','118.39',0,0,NULL),('엄준식 화이팅!43',48,'2021-06-21 18:22:56','엄준식 화이팅!43','1234','엄준식43','118.39',0,0,NULL),('엄준식 화이팅!44',49,'2021-06-21 18:22:56','엄준식 화이팅!44','1234','엄준식44','118.39',0,0,NULL),('엄준식 화이팅!45',50,'2021-06-21 18:22:56','엄준식 화이팅!45','1234','엄준식45','118.39',0,0,NULL),('엄준식 화이팅!46',51,'2021-06-21 18:22:56','엄준식 화이팅!46','1234','엄준식46','118.39',0,0,NULL),('엄준식 화이팅!47',52,'2021-06-21 18:22:56','엄준식 화이팅!47','1234','엄준식47','118.39',0,0,NULL),('엄준식 화이팅!48',53,'2021-06-21 18:22:56','엄준식 화이팅!48','1234','엄준식48','118.39',0,0,NULL),('엄준식 화이팅!49',54,'2021-06-21 18:22:56','엄준식 화이팅!49','1234','엄준식49','118.39',0,0,NULL),('엄준식 화이팅!50',55,'2021-06-21 18:22:56','엄준식 화이팅!50','1234','엄준식50','118.39',0,0,NULL),('엄준식 화이팅!51',56,'2021-06-21 18:22:56','엄준식 화이팅!51','1234','엄준식51','118.39',0,0,NULL),('엄준식 화이팅!52',57,'2021-06-21 18:22:56','엄준식 화이팅!52','1234','엄준식52','118.39',0,0,NULL),('엄준식 화이팅!53',58,'2021-06-21 18:22:56','엄준식 화이팅!53','1234','엄준식53','118.39',0,0,NULL),('엄준식 화이팅!54',59,'2021-06-21 18:22:56','엄준식 화이팅!54','1234','엄준식54','118.39',0,0,NULL),('엄준식 화이팅!55',60,'2021-06-21 18:22:56','엄준식 화이팅!55','1234','엄준식55','118.39',0,0,NULL),('엄준식 화이팅!56',61,'2021-06-21 18:22:56','엄준식 화이팅!56','1234','엄준식56','118.39',0,0,NULL),('엄준식 화이팅!57',62,'2021-06-21 18:22:56','엄준식 화이팅!57','1234','엄준식57','118.39',0,0,NULL),('엄준식 화이팅!58',63,'2021-06-21 18:22:56','엄준식 화이팅!58','1234','엄준식58','118.39',0,0,NULL),('엄준식 화이팅!59',64,'2021-06-21 18:22:56','엄준식 화이팅!59','1234','엄준식59','118.39',0,0,NULL),('엄준식 화이팅!60',65,'2021-06-21 18:22:56','엄준식 화이팅!60','1234','엄준식60','118.39',0,0,NULL),('엄준식 화이팅!61',66,'2021-06-21 18:22:56','엄준식 화이팅!61','1234','엄준식61','118.39',0,0,NULL),('엄준식 화이팅!62',67,'2021-06-21 18:22:56','엄준식 화이팅!62','1234','엄준식62','118.39',0,0,NULL),('엄준식 화이팅!63',68,'2021-06-21 18:22:56','엄준식 화이팅!63','1234','엄준식63','118.39',0,0,NULL),('엄준식 화이팅!64',69,'2021-06-21 18:22:56','엄준식 화이팅!64','1234','엄준식64','118.39',0,0,NULL),('엄준식 화이팅!65',70,'2021-06-21 18:22:56','엄준식 화이팅!65','1234','엄준식65','118.39',0,0,NULL),('엄준식 화이팅!66',71,'2021-06-21 18:22:56','엄준식 화이팅!66','1234','엄준식66','118.39',0,0,NULL),('엄준식 화이팅!67',72,'2021-06-21 18:22:56','엄준식 화이팅!67','1234','엄준식67','118.39',0,0,NULL),('엄준식 화이팅!68',73,'2021-06-21 18:22:56','엄준식 화이팅!68','1234','엄준식68','118.39',0,0,NULL),('엄준식 화이팅!69',74,'2021-06-21 18:22:56','엄준식 화이팅!69','1234','엄준식69','118.39',0,0,NULL),('엄준식 화이팅!70',75,'2021-06-21 18:22:56','엄준식 화이팅!70','1234','엄준식70','118.39',0,0,NULL),('엄준식 화이팅!71',76,'2021-06-21 18:22:57','엄준식 화이팅!71','1234','엄준식71','118.39',0,0,NULL),('엄준식 화이팅!72',77,'2021-06-21 18:22:57','엄준식 화이팅!72','1234','엄준식72','118.39',0,0,NULL),('엄준식 화이팅!73',78,'2021-06-21 18:22:57','엄준식 화이팅!73','1234','엄준식73','118.39',0,0,NULL),('엄준식 화이팅!74',79,'2021-06-21 18:22:57','엄준식 화이팅!74','1234','엄준식74','118.39',0,0,NULL),('엄준식 화이팅!75',80,'2021-06-21 18:22:57','엄준식 화이팅!75','1234','엄준식75','118.39',0,0,NULL),('엄준식 화이팅!76',81,'2021-06-21 18:22:57','엄준식 화이팅!76','1234','엄준식76','118.39',0,0,NULL),('엄준식 화이팅!77',82,'2021-06-21 18:22:57','엄준식 화이팅!77','1234','엄준식77','118.39',0,0,NULL),('엄준식 화이팅!78',83,'2021-06-21 18:22:57','엄준식 화이팅!78','1234','엄준식78','118.39',0,0,NULL),('엄준식 화이팅!79',84,'2021-06-21 18:22:57','엄준식 화이팅!79','1234','엄준식79','118.39',0,0,NULL),('엄준식 화이팅!80',85,'2021-06-21 18:22:57','엄준식 화이팅!80','1234','엄준식80','118.39',0,0,NULL),('엄준식 화이팅!81',86,'2021-06-21 18:22:57','엄준식 화이팅!81','1234','엄준식81','118.39',0,0,NULL),('엄준식 화이팅!82',87,'2021-06-21 18:22:57','엄준식 화이팅!82','1234','엄준식82','118.39',0,0,NULL),('엄준식 화이팅!83',88,'2021-06-21 18:22:57','엄준식 화이팅!83','1234','엄준식83','118.39',0,0,NULL),('엄준식 화이팅!84',89,'2021-06-21 18:22:57','엄준식 화이팅!84','1234','엄준식84','118.39',0,0,NULL),('엄준식 화이팅!85',90,'2021-06-21 18:22:57','엄준식 화이팅!85','1234','엄준식85','118.39',0,0,NULL),('엄준식 화이팅!86',91,'2021-06-21 18:22:57','엄준식 화이팅!86','1234','엄준식86','118.39',0,0,NULL),('엄준식 화이팅!87',92,'2021-06-21 18:22:57','엄준식 화이팅!87','1234','엄준식87','118.39',0,0,NULL),('엄준식 화이팅!88',93,'2021-06-21 18:22:57','엄준식 화이팅!88','1234','엄준식88','118.39',0,0,NULL),('엄준식 화이팅!89',94,'2021-06-21 18:22:57','엄준식 화이팅!89','1234','엄준식89','118.39',0,0,NULL),('엄준식 화이팅!90',95,'2021-06-21 18:22:57','엄준식 화이팅!90','1234','엄준식90','118.39',0,0,NULL),('엄준식 화이팅!91',96,'2021-06-21 18:22:57','엄준식 화이팅!91','1234','엄준식91','118.39',0,0,NULL),('엄준식 화이팅!92',97,'2021-06-21 18:22:57','엄준식 화이팅!92','1234','엄준식92','118.39',0,0,NULL),('엄준식 화이팅!93',98,'2021-06-21 18:22:57','엄준식 화이팅!93','1234','엄준식93','118.39',0,0,NULL),('엄준식 화이팅!94',99,'2021-06-21 18:22:57','엄준식 화이팅!94','1234','엄준식94','118.39',0,0,NULL),('엄준식 화이팅!95',100,'2021-06-21 18:22:57','엄준식 화이팅!95','1234','엄준식95','118.39',0,0,NULL),('엄준식 화이팅!96',101,'2021-06-21 18:22:57','엄준식 화이팅!96','1234','엄준식96','118.39',0,0,NULL),('엄준식 화이팅!97',102,'2021-06-21 18:22:57','엄준식 화이팅!97','1234','엄준식97','118.39',0,0,NULL),('엄준식 화이팅!98',103,'2021-06-21 18:22:57','엄준식 화이팅!98','1234','엄준식98','118.39',0,0,NULL),('엄준식 화이팅!99',104,'2021-06-21 18:22:57','엄준식 화이팅!99','1234','엄준식99','118.39',0,0,NULL),('엄준식 화이팅!100',105,'2021-06-21 18:22:57','엄준식 화이팅!100','1234','엄준식100','118.39',0,0,NULL),('엄준식 화이팅!101',106,'2021-06-21 18:22:57','엄준식 화이팅!101','1234','엄준식101','118.39',0,0,NULL),('엄준식 화이팅!102',107,'2021-06-21 18:22:57','엄준식 화이팅!102','1234','엄준식102','118.39',0,0,NULL),('엄준식 화이팅!103',108,'2021-06-21 18:22:57','엄준식 화이팅!103','1234','엄준식103','118.39',0,0,NULL),('엄준식 화이팅!104',109,'2021-06-21 18:22:57','엄준식 화이팅!104','1234','엄준식104','118.39',0,0,NULL),('엄준식 화이팅!105',110,'2021-06-21 18:22:57','엄준식 화이팅!105','1234','엄준식105','118.39',0,0,NULL),('엄준식 화이팅!106',111,'2021-06-21 18:22:57','엄준식 화이팅!106','1234','엄준식106','118.39',0,0,NULL),('엄준식 화이팅!107',112,'2021-06-21 18:22:57','엄준식 화이팅!107','1234','엄준식107','118.39',0,0,NULL),('엄준식 화이팅!108',113,'2021-06-21 18:22:57','엄준식 화이팅!108','1234','엄준식108','118.39',0,0,NULL),('엄준식 화이팅!109',114,'2021-06-21 18:22:57','엄준식 화이팅!109','1234','엄준식109','118.39',0,0,NULL),('엄준식 화이팅!110',115,'2021-06-21 18:22:57','엄준식 화이팅!110','1234','엄준식110','118.39',0,0,NULL),('엄준식 화이팅!111',116,'2021-06-21 18:22:57','엄준식 화이팅!111','1234','엄준식111','118.39',0,0,NULL),('엄준식 화이팅!112',117,'2021-06-21 18:22:57','엄준식 화이팅!112','1234','엄준식112','118.39',0,0,NULL),('엄준식 화이팅!113',118,'2021-06-21 18:22:57','엄준식 화이팅!113','1234','엄준식113','118.39',0,0,NULL),('엄준식 화이팅!114',119,'2021-06-21 18:22:57','엄준식 화이팅!114','1234','엄준식114','118.39',0,0,NULL),('엄준식 화이팅!115',120,'2021-06-21 18:22:57','엄준식 화이팅!115','1234','엄준식115','118.39',0,0,NULL),('엄준식 화이팅!116',121,'2021-06-21 18:22:57','엄준식 화이팅!116','1234','엄준식116','118.39',0,0,NULL),('엄준식 화이팅!117',122,'2021-06-21 18:22:57','엄준식 화이팅!117','1234','엄준식117','118.39',0,0,NULL),('엄준식 화이팅!118',123,'2021-06-21 18:22:57','엄준식 화이팅!118','1234','엄준식118','118.39',0,0,NULL),('엄준식 화이팅!119',124,'2021-06-21 18:22:57','엄준식 화이팅!119','1234','엄준식119','118.39',0,0,NULL),('엄준식 화이팅!120',125,'2021-06-21 18:22:57','엄준식 화이팅!120','1234','엄준식120','118.39',0,0,NULL),('엄준식 화이팅!121',126,'2021-06-21 18:22:57','엄준식 화이팅!121','1234','엄준식121','118.39',0,0,NULL),('엄준식 화이팅!122',127,'2021-06-21 18:22:57','엄준식 화이팅!122','1234','엄준식122','118.39',0,0,NULL),('엄준식 화이팅!123',128,'2021-06-21 18:22:57','엄준식 화이팅!123','1234','엄준식123','118.39',0,0,NULL),('엄준식 화이팅!124',129,'2021-06-21 18:22:57','엄준식 화이팅!124','1234','엄준식124','118.39',0,0,NULL),('엄준식 화이팅!125',130,'2021-06-21 18:22:57','엄준식 화이팅!125','1234','엄준식125','118.39',0,0,NULL),('엄준식 화이팅!126',131,'2021-06-21 18:22:57','엄준식 화이팅!126','1234','엄준식126','118.39',0,0,NULL),('엄준식 화이팅!127',132,'2021-06-21 18:22:57','엄준식 화이팅!127','1234','엄준식127','118.39',0,0,NULL),('엄준식 화이팅!128',133,'2021-06-21 18:22:57','엄준식 화이팅!128','1234','엄준식128','118.39',0,0,NULL),('엄준식 화이팅!129',134,'2021-06-21 18:22:57','엄준식 화이팅!129','1234','엄준식129','118.39',0,0,NULL),('엄준식 화이팅!130',135,'2021-06-21 18:22:57','엄준식 화이팅!130','1234','엄준식130','118.39',0,0,NULL),('엄준식 화이팅!131',136,'2021-06-21 18:22:57','엄준식 화이팅!131','1234','엄준식131','118.39',0,0,NULL),('엄준식 화이팅!132',137,'2021-06-21 18:22:57','엄준식 화이팅!132','1234','엄준식132','118.39',0,0,NULL),('엄준식 화이팅!133',138,'2021-06-21 18:22:57','엄준식 화이팅!133','1234','엄준식133','118.39',0,0,NULL),('엄준식 화이팅!134',139,'2021-06-21 18:22:57','엄준식 화이팅!134','1234','엄준식134','118.39',0,0,NULL),('엄준식 화이팅!135',140,'2021-06-21 18:22:57','엄준식 화이팅!135','1234','엄준식135','118.39',0,0,NULL),('엄준식 화이팅!136',141,'2021-06-21 18:22:57','엄준식 화이팅!136','1234','엄준식136','118.39',0,0,NULL),('엄준식 화이팅!137',142,'2021-06-21 18:22:57','엄준식 화이팅!137','1234','엄준식137','118.39',0,0,NULL),('엄준식 화이팅!138',143,'2021-06-21 18:22:57','엄준식 화이팅!138','1234','엄준식138','118.39',0,0,NULL),('엄준식 화이팅!139',144,'2021-06-21 18:22:57','엄준식 화이팅!139','1234','엄준식139','118.39',0,0,NULL),('엄준식 화이팅!140',145,'2021-06-21 18:22:57','엄준식 화이팅!140','1234','엄준식140','118.39',0,0,NULL),('엄준식 화이팅!141',146,'2021-06-21 18:22:57','엄준식 화이팅!141','1234','엄준식141','118.39',0,0,NULL),('엄준식 화이팅!142',147,'2021-06-21 18:22:57','엄준식 화이팅!142','1234','엄준식142','118.39',0,0,NULL),('엄준식 화이팅!143',148,'2021-06-21 18:22:58','엄준식 화이팅!143','1234','엄준식143','118.39',0,0,NULL),('엄준식 화이팅!144',149,'2021-06-21 18:22:58','엄준식 화이팅!144','1234','엄준식144','118.39',0,0,NULL),('엄준식 화이팅!145',150,'2021-06-21 18:22:58','엄준식 화이팅!145','1234','엄준식145','118.39',0,0,NULL),('엄준식 화이팅!146',151,'2021-06-21 18:22:58','엄준식 화이팅!146','1234','엄준식146','118.39',0,0,NULL),('엄준식 화이팅!147',152,'2021-06-21 18:22:58','엄준식 화이팅!147','1234','엄준식147','118.39',0,0,NULL),('엄준식 화이팅!148',153,'2021-06-21 18:22:58','엄준식 화이팅!148','1234','엄준식148','118.39',0,0,NULL),('엄준식 화이팅!149',154,'2021-06-21 18:22:58','엄준식 화이팅!149','1234','엄준식149','118.39',0,0,NULL),('엄준식 화이팅!150',155,'2021-06-21 18:22:58','엄준식 화이팅!150','1234','엄준식150','118.39',0,0,NULL),('엄준식 화이팅!151',156,'2021-06-21 18:22:58','엄준식 화이팅!151','1234','엄준식151','118.39',0,0,NULL),('엄준식 화이팅!152',157,'2021-06-21 18:22:58','엄준식 화이팅!152','1234','엄준식152','118.39',0,0,NULL),('엄준식 화이팅!153',158,'2021-06-21 18:22:58','엄준식 화이팅!153','1234','엄준식153','118.39',0,0,NULL),('엄준식 화이팅!154',159,'2021-06-21 18:22:58','엄준식 화이팅!154','1234','엄준식154','118.39',0,0,NULL),('엄준식 화이팅!155',160,'2021-06-21 18:22:58','엄준식 화이팅!155','1234','엄준식155','118.39',0,0,NULL),('엄준식 화이팅!156',161,'2021-06-21 18:22:58','엄준식 화이팅!156','1234','엄준식156','118.39',0,0,NULL),('엄준식 화이팅!157',162,'2021-06-21 18:22:58','엄준식 화이팅!157','1234','엄준식157','118.39',0,0,NULL),('엄준식 화이팅!158',163,'2021-06-21 18:22:58','엄준식 화이팅!158','1234','엄준식158','118.39',0,0,NULL),('엄준식 화이팅!159',164,'2021-06-21 18:22:58','엄준식 화이팅!159','1234','엄준식159','118.39',0,0,NULL),('엄준식 화이팅!160',165,'2021-06-21 18:22:58','엄준식 화이팅!160','1234','엄준식160','118.39',0,0,NULL),('엄준식 화이팅!161',166,'2021-06-21 18:22:58','엄준식 화이팅!161','1234','엄준식161','118.39',0,0,NULL),('엄준식 화이팅!162',167,'2021-06-21 18:22:58','엄준식 화이팅!162','1234','엄준식162','118.39',0,0,NULL),('엄준식 화이팅!163',168,'2021-06-21 18:22:58','엄준식 화이팅!163','1234','엄준식163','118.39',0,0,NULL),('엄준식 화이팅!164',169,'2021-06-21 18:22:58','엄준식 화이팅!164','1234','엄준식164','118.39',0,0,NULL),('엄준식 화이팅!165',170,'2021-06-21 18:22:58','엄준식 화이팅!165','1234','엄준식165','118.39',0,0,NULL),('엄준식 화이팅!166',171,'2021-06-21 18:22:58','엄준식 화이팅!166','1234','엄준식166','118.39',0,0,NULL),('엄준식 화이팅!167',172,'2021-06-21 18:22:58','엄준식 화이팅!167','1234','엄준식167','118.39',0,0,NULL),('엄준식 화이팅!168',173,'2021-06-21 18:22:58','엄준식 화이팅!168','1234','엄준식168','118.39',0,0,NULL),('엄준식 화이팅!169',174,'2021-06-21 18:22:58','엄준식 화이팅!169','1234','엄준식169','118.39',0,0,NULL),('엄준식 화이팅!170',175,'2021-06-21 18:22:58','엄준식 화이팅!170','1234','엄준식170','118.39',0,0,NULL),('엄준식 화이팅!171',176,'2021-06-21 18:22:58','엄준식 화이팅!171','1234','엄준식171','118.39',0,0,NULL),('엄준식 화이팅!172',177,'2021-06-21 18:22:58','엄준식 화이팅!172','1234','엄준식172','118.39',0,0,NULL),('엄준식 화이팅!173',178,'2021-06-21 18:22:58','엄준식 화이팅!173','1234','엄준식173','118.39',0,0,NULL),('엄준식 화이팅!174',179,'2021-06-21 18:22:58','엄준식 화이팅!174','1234','엄준식174','118.39',0,0,NULL),('엄준식 화이팅!175',180,'2021-06-21 18:22:58','엄준식 화이팅!175','1234','엄준식175','118.39',0,0,NULL),('엄준식 화이팅!176',181,'2021-06-21 18:22:58','엄준식 화이팅!176','1234','엄준식176','118.39',0,0,NULL),('엄준식 화이팅!177',182,'2021-06-21 18:22:58','엄준식 화이팅!177','1234','엄준식177','118.39',0,0,NULL),('엄준식 화이팅!178',183,'2021-06-21 18:22:58','엄준식 화이팅!178','1234','엄준식178','118.39',0,0,NULL),('엄준식 화이팅!179',184,'2021-06-21 18:22:58','엄준식 화이팅!179','1234','엄준식179','118.39',0,0,NULL),('엄준식 화이팅!180',185,'2021-06-21 18:22:58','엄준식 화이팅!180','1234','엄준식180','118.39',0,0,NULL),('엄준식 화이팅!181',186,'2021-06-21 18:22:58','엄준식 화이팅!181','1234','엄준식181','118.39',0,0,NULL),('엄준식 화이팅!182',187,'2021-06-21 18:22:58','엄준식 화이팅!182','1234','엄준식182','118.39',0,0,NULL),('엄준식 화이팅!183',188,'2021-06-21 18:22:58','엄준식 화이팅!183','1234','엄준식183','118.39',0,0,NULL),('엄준식 화이팅!184',189,'2021-06-21 18:22:58','엄준식 화이팅!184','1234','엄준식184','118.39',0,0,NULL),('엄준식 화이팅!185',190,'2021-06-21 18:22:58','엄준식 화이팅!185','1234','엄준식185','118.39',0,0,NULL),('엄준식 화이팅!186',191,'2021-06-21 18:22:58','엄준식 화이팅!186','1234','엄준식186','118.39',0,0,NULL),('엄준식 화이팅!187',192,'2021-06-21 18:22:58','엄준식 화이팅!187','1234','엄준식187','118.39',0,0,NULL),('엄준식 화이팅!188',193,'2021-06-21 18:22:58','엄준식 화이팅!188','1234','엄준식188','118.39',0,0,NULL),('엄준식 화이팅!189',194,'2021-06-21 18:22:58','엄준식 화이팅!189','1234','엄준식189','118.39',0,0,NULL),('엄준식 화이팅!190',195,'2021-06-21 18:22:58','엄준식 화이팅!190','1234','엄준식190','118.39',0,0,NULL),('엄준식 화이팅!191',196,'2021-06-21 18:22:58','엄준식 화이팅!191','1234','엄준식191','118.39',0,0,NULL),('엄준식 화이팅!192',197,'2021-06-21 18:22:58','엄준식 화이팅!192','1234','엄준식192','118.39',0,0,NULL),('엄준식 화이팅!193',198,'2021-06-21 18:22:58','엄준식 화이팅!193','1234','엄준식193','118.39',0,0,NULL),('엄준식 화이팅!194',199,'2021-06-21 18:22:58','엄준식 화이팅!194','1234','엄준식194','118.39',0,0,NULL),('엄준식 화이팅!195',200,'2021-06-21 18:22:58','엄준식 화이팅!195','1234','엄준식195','118.39',0,0,NULL),('엄준식 화이팅!196',201,'2021-06-21 18:22:58','엄준식 화이팅!196','1234','엄준식196','118.39',0,0,NULL),('엄준식 화이팅!197',202,'2021-06-21 18:22:58','엄준식 화이팅!197','1234','엄준식197','118.39',0,0,NULL),('엄준식 화이팅!198',203,'2021-06-21 18:22:58','엄준식 화이팅!198','1234','엄준식198','118.39',0,0,NULL),('엄준식 화이팅!199',204,'2021-06-21 18:22:58','엄준식 화이팅!199','1234','엄준식199','118.39',0,0,NULL),('엄준식 화이팅!200',205,'2021-06-21 18:22:58','엄준식 화이팅!200','1234','엄준식200','118.39',0,0,NULL),('엄준식 화이팅!201',206,'2021-06-21 18:22:58','엄준식 화이팅!201','1234','엄준식201','118.39',0,0,NULL),('엄준식 화이팅!202',207,'2021-06-21 18:22:58','엄준식 화이팅!202','1234','엄준식202','118.39',0,0,NULL),('엄준식 화이팅!203',208,'2021-06-21 18:22:58','엄준식 화이팅!203','1234','엄준식203','118.39',0,0,NULL),('엄준식 화이팅!204',209,'2021-06-21 18:22:58','엄준식 화이팅!204','1234','엄준식204','118.39',0,0,NULL),('엄준식 화이팅!205',210,'2021-06-21 18:22:58','엄준식 화이팅!205','1234','엄준식205','118.39',0,0,NULL),('엄준식 화이팅!206',211,'2021-06-21 18:22:58','엄준식 화이팅!206','1234','엄준식206','118.39',0,0,NULL),('엄준식 화이팅!207',212,'2021-06-21 18:22:58','엄준식 화이팅!207','1234','엄준식207','118.39',0,0,NULL),('엄준식 화이팅!208',213,'2021-06-21 18:22:58','엄준식 화이팅!208','1234','엄준식208','118.39',0,0,NULL),('엄준식 화이팅!209',214,'2021-06-21 18:22:58','엄준식 화이팅!209','1234','엄준식209','118.39',0,0,NULL),('엄준식 화이팅!210',215,'2021-06-21 18:22:58','엄준식 화이팅!210','1234','엄준식210','118.39',0,0,NULL),('엄준식 화이팅!211',216,'2021-06-21 18:22:58','엄준식 화이팅!211','1234','엄준식211','118.39',0,0,NULL),('엄준식 화이팅!212',217,'2021-06-21 18:22:58','엄준식 화이팅!212','1234','엄준식212','118.39',0,0,NULL),('엄준식 화이팅!213',218,'2021-06-21 18:22:58','엄준식 화이팅!213','1234','엄준식213','118.39',0,0,NULL),('엄준식 화이팅!214',219,'2021-06-21 18:22:58','엄준식 화이팅!214','1234','엄준식214','118.39',0,0,NULL),('엄준식 화이팅!215',220,'2021-06-21 18:22:58','엄준식 화이팅!215','1234','엄준식215','118.39',0,0,NULL),('엄준식 화이팅!216',221,'2021-06-21 18:22:58','엄준식 화이팅!216','1234','엄준식216','118.39',0,0,NULL),('엄준식 화이팅!217',222,'2021-06-21 18:22:58','엄준식 화이팅!217','1234','엄준식217','118.39',0,0,NULL),('엄준식 화이팅!218',223,'2021-06-21 18:22:58','엄준식 화이팅!218','1234','엄준식218','118.39',0,0,NULL),('엄준식 화이팅!219',224,'2021-06-21 18:22:58','엄준식 화이팅!219','1234','엄준식219','118.39',0,0,NULL),('엄준식 화이팅!220',225,'2021-06-21 18:22:58','엄준식 화이팅!220','1234','엄준식220','118.39',0,0,NULL),('엄준식 화이팅!221',226,'2021-06-21 18:22:58','엄준식 화이팅!221','1234','엄준식221','118.39',0,0,NULL),('엄준식 화이팅!222',227,'2021-06-21 18:22:58','엄준식 화이팅!222','1234','엄준식222','118.39',0,0,NULL),('엄준식 화이팅!223',228,'2021-06-21 18:22:58','엄준식 화이팅!223','1234','엄준식223','118.39',0,0,NULL),('엄준식 화이팅!224',229,'2021-06-21 18:22:58','엄준식 화이팅!224','1234','엄준식224','118.39',0,0,NULL),('엄준식 화이팅!225',230,'2021-06-21 18:22:58','엄준식 화이팅!225','1234','엄준식225','118.39',0,0,NULL),('엄준식 화이팅!226',231,'2021-06-21 18:22:58','엄준식 화이팅!226','1234','엄준식226','118.39',0,0,NULL),('엄준식 화이팅!227',232,'2021-06-21 18:22:58','엄준식 화이팅!227','1234','엄준식227','118.39',0,0,NULL),('엄준식 화이팅!228',233,'2021-06-21 18:22:58','엄준식 화이팅!228','1234','엄준식228','118.39',0,0,NULL),('엄준식 화이팅!229',234,'2021-06-21 18:22:58','엄준식 화이팅!229','1234','엄준식229','118.39',0,0,NULL),('엄준식 화이팅!230',235,'2021-06-21 18:22:58','엄준식 화이팅!230','1234','엄준식230','118.39',0,0,NULL),('엄준식 화이팅!231',236,'2021-06-21 18:22:58','엄준식 화이팅!231','1234','엄준식231','118.39',0,0,NULL),('엄준식 화이팅!232',237,'2021-06-21 18:22:58','엄준식 화이팅!232','1234','엄준식232','118.39',0,0,NULL),('엄준식 화이팅!233',238,'2021-06-21 18:22:58','엄준식 화이팅!233','1234','엄준식233','118.39',0,0,NULL),('엄준식 화이팅!234',239,'2021-06-21 18:22:58','엄준식 화이팅!234','1234','엄준식234','118.39',0,0,NULL),('엄준식 화이팅!235',240,'2021-06-21 18:22:58','엄준식 화이팅!235','1234','엄준식235','118.39',0,0,NULL),('엄준식 화이팅!236',241,'2021-06-21 18:22:58','엄준식 화이팅!236','1234','엄준식236','118.39',0,0,NULL),('엄준식 화이팅!237',242,'2021-06-21 18:22:58','엄준식 화이팅!237','1234','엄준식237','118.39',0,0,NULL),('엄준식 화이팅!238',243,'2021-06-21 18:22:58','엄준식 화이팅!238','1234','엄준식238','118.39',0,0,NULL),('엄준식 화이팅!239',244,'2021-06-21 18:22:58','엄준식 화이팅!239','1234','엄준식239','118.39',0,0,NULL),('엄준식 화이팅!240',245,'2021-06-21 18:22:58','엄준식 화이팅!240','1234','엄준식240','118.39',0,0,NULL),('엄준식 화이팅!241',246,'2021-06-21 18:22:58','엄준식 화이팅!241','1234','엄준식241','118.39',0,0,NULL),('엄준식 화이팅!242',247,'2021-06-21 18:22:58','엄준식 화이팅!242','1234','엄준식242','118.39',0,0,NULL),('엄준식 화이팅!243',248,'2021-06-21 18:22:58','엄준식 화이팅!243','1234','엄준식243','118.39',0,0,NULL),('엄준식 화이팅!244',249,'2021-06-21 18:22:58','엄준식 화이팅!244','1234','엄준식244','118.39',0,0,NULL),('엄준식 화이팅!245',250,'2021-06-21 18:22:58','엄준식 화이팅!245','1234','엄준식245','118.39',0,0,NULL),('엄준식 화이팅!246',251,'2021-06-21 18:22:58','엄준식 화이팅!246','1234','엄준식246','118.39',0,0,NULL),('엄준식 화이팅!247',252,'2021-06-21 18:22:58','엄준식 화이팅!247','1234','엄준식247','118.39',0,0,NULL),('엄준식 화이팅!248',253,'2021-06-21 18:22:58','엄준식 화이팅!248','1234','엄준식248','118.39',0,0,NULL),('엄준식 화이팅!249',254,'2021-06-21 18:22:58','엄준식 화이팅!249','1234','엄준식249','118.39',0,0,NULL),('엄준식 화이팅!250',255,'2021-06-21 18:22:58','엄준식 화이팅!250','1234','엄준식250','118.39',0,0,NULL),('엄준식 화이팅!251',256,'2021-06-21 18:22:58','엄준식 화이팅!251','1234','엄준식251','118.39',0,0,NULL),('엄준식 화이팅!252',257,'2021-06-21 18:22:58','엄준식 화이팅!252','1234','엄준식252','118.39',0,0,NULL),('엄준식 화이팅!253',258,'2021-06-21 18:22:58','엄준식 화이팅!253','1234','엄준식253','118.39',0,0,NULL),('엄준식 화이팅!254',259,'2021-06-21 18:22:58','엄준식 화이팅!254','1234','엄준식254','118.39',0,0,NULL),('엄준식 화이팅!255',260,'2021-06-21 18:22:58','엄준식 화이팅!255','1234','엄준식255','118.39',0,0,NULL),('엄준식 화이팅!256',261,'2021-06-21 18:22:59','엄준식 화이팅!256','1234','엄준식256','118.39',0,0,NULL),('엄준식 화이팅!257',262,'2021-06-21 18:22:59','엄준식 화이팅!257','1234','엄준식257','118.39',0,0,NULL),('엄준식 화이팅!258',263,'2021-06-21 18:22:59','엄준식 화이팅!258','1234','엄준식258','118.39',0,0,NULL),('엄준식 화이팅!259',264,'2021-06-21 18:22:59','엄준식 화이팅!259','1234','엄준식259','118.39',0,0,NULL),('엄준식 화이팅!260',265,'2021-06-21 18:22:59','엄준식 화이팅!260','1234','엄준식260','118.39',0,0,NULL),('엄준식 화이팅!261',266,'2021-06-21 18:22:59','엄준식 화이팅!261','1234','엄준식261','118.39',0,0,NULL),('엄준식 화이팅!262',267,'2021-06-21 18:22:59','엄준식 화이팅!262','1234','엄준식262','118.39',0,0,NULL),('엄준식 화이팅!263',268,'2021-06-21 18:22:59','엄준식 화이팅!263','1234','엄준식263','118.39',0,0,NULL),('엄준식 화이팅!264',269,'2021-06-21 18:22:59','엄준식 화이팅!264','1234','엄준식264','118.39',0,0,NULL),('엄준식 화이팅!265',270,'2021-06-21 18:22:59','엄준식 화이팅!265','1234','엄준식265','118.39',0,0,NULL),('엄준식 화이팅!266',271,'2021-06-21 18:22:59','엄준식 화이팅!266','1234','엄준식266','118.39',0,0,NULL),('엄준식 화이팅!267',272,'2021-06-21 18:22:59','엄준식 화이팅!267','1234','엄준식267','118.39',0,0,NULL),('엄준식 화이팅!268',273,'2021-06-21 18:22:59','엄준식 화이팅!268','1234','엄준식268','118.39',0,0,NULL),('엄준식 화이팅!269',274,'2021-06-21 18:22:59','엄준식 화이팅!269','1234','엄준식269','118.39',0,0,NULL),('엄준식 화이팅!270',275,'2021-06-21 18:22:59','엄준식 화이팅!270','1234','엄준식270','118.39',0,0,NULL),('엄준식 화이팅!271',276,'2021-06-21 18:22:59','엄준식 화이팅!271','1234','엄준식271','118.39',0,0,NULL),('엄준식 화이팅!272',277,'2021-06-21 18:22:59','엄준식 화이팅!272','1234','엄준식272','118.39',0,0,NULL),('엄준식 화이팅!273',278,'2021-06-21 18:22:59','엄준식 화이팅!273','1234','엄준식273','118.39',0,0,NULL),('엄준식 화이팅!274',279,'2021-06-21 18:22:59','엄준식 화이팅!274','1234','엄준식274','118.39',0,0,NULL),('엄준식 화이팅!275',280,'2021-06-21 18:22:59','엄준식 화이팅!275','1234','엄준식275','118.39',0,0,NULL),('엄준식 화이팅!276',281,'2021-06-21 18:22:59','엄준식 화이팅!276','1234','엄준식276','118.39',0,0,NULL),('엄준식 화이팅!277',282,'2021-06-21 18:22:59','엄준식 화이팅!277','1234','엄준식277','118.39',0,0,NULL),('엄준식 화이팅!278',283,'2021-06-21 18:22:59','엄준식 화이팅!278','1234','엄준식278','118.39',0,0,NULL),('엄준식 화이팅!279',284,'2021-06-21 18:22:59','엄준식 화이팅!279','1234','엄준식279','118.39',0,0,NULL),('엄준식 화이팅!280',285,'2021-06-21 18:22:59','엄준식 화이팅!280','1234','엄준식280','118.39',0,0,NULL),('엄준식 화이팅!281',286,'2021-06-21 18:22:59','엄준식 화이팅!281','1234','엄준식281','118.39',0,0,NULL),('엄준식 화이팅!282',287,'2021-06-21 18:22:59','엄준식 화이팅!282','1234','엄준식282','118.39',0,0,NULL),('엄준식 화이팅!283',288,'2021-06-21 18:22:59','엄준식 화이팅!283','1234','엄준식283','118.39',0,0,NULL),('엄준식 화이팅!284',289,'2021-06-21 18:22:59','엄준식 화이팅!284','1234','엄준식284','118.39',0,0,NULL),('엄준식 화이팅!285',290,'2021-06-21 18:22:59','엄준식 화이팅!285','1234','엄준식285','118.39',1,1,NULL),('엄준식 화이팅!286',291,'2021-06-21 18:22:59','엄준식 화이팅!286','1234','엄준식286','118.39',0,0,NULL),('엄준식 화이팅!287',292,'2021-06-21 18:22:59','엄준식 화이팅!287','1234','엄준식287','118.39',0,0,NULL),('엄준식 화이팅!288',293,'2021-06-21 18:22:59','엄준식 화이팅!288','1234','엄준식288','118.39',0,0,NULL),('엄준식 화이팅!289',294,'2021-06-21 18:22:59','엄준식 화이팅!289','1234','엄준식289','118.39',0,0,NULL),('엄준식 화이팅!290',295,'2021-06-21 18:22:59','엄준식 화이팅!290','1234','엄준식290','118.39',0,0,NULL),('엄준식 화이팅!291',296,'2021-06-21 18:22:59','엄준식 화이팅!291','1234','엄준식291','118.39',0,0,NULL),('엄준식 화이팅!292',297,'2021-06-21 18:22:59','엄준식 화이팅!292','1234','엄준식292','118.39',0,0,NULL),('엄준식 화이팅!293',298,'2021-06-21 18:22:59','엄준식 화이팅!293','1234','엄준식293','118.39',0,0,NULL),('엄준식 화이팅!294',299,'2021-06-21 18:22:59','엄준식 화이팅!294','1234','엄준식294','118.39',0,0,NULL),('엄준식 화이팅!295',300,'2021-06-21 18:22:59','엄준식 화이팅!295','1234','엄준식295','118.39',0,0,NULL),('엄준식 화이팅!296',301,'2021-06-21 18:22:59','엄준식 화이팅!296','1234','엄준식296','118.39',0,0,NULL),('엄준식 화이팅!297',302,'2021-06-21 18:22:59','엄준식 화이팅!297','1234','엄준식297','118.39',0,0,NULL),('엄준식 화이팅!298',303,'2021-06-21 18:22:59','엄준식 화이팅!298','1234','엄준식298','118.39',9,1,NULL),('ㅇㅇ',304,'2021-06-24 20:33:12','나 로그인 아기','1234','응애','172.30',0,0,NULL),('1234',305,'2021-06-25 01:46:47','1234','1234','응애','118.39',0,0,0),('1234',306,'2021-06-25 01:47:24','1234','1234','로그인글쓰기테스트','118.39',0,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_list`
--

LOCK TABLES `check_list` WRITE;
/*!40000 ALTER TABLE `check_list` DISABLE KEYS */;
INSERT INTO `check_list` VALUES (1,3,'응애'),(1,4,'asdf'),(1,5,'gg');
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
  `comment_idx` int unsigned NOT NULL,
  `parent_comment_idx` int unsigned DEFAULT NULL,
  `write_ip` varchar(256) NOT NULL,
  `login_user` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_table`
--

LOCK TABLES `comment_table` WRITE;
/*!40000 ALTER TABLE `comment_table` DISABLE KEYS */;
INSERT INTO `comment_table` VALUES ('ㅇㅇ','1234','1234',6,'2021-06-22 18:45:32',1,NULL,'172.30',NULL),('대댓','1234','1234',6,'2021-06-22 18:45:39',2,1,'172.30',NULL),('대대댓','1234','1234',6,'2021-06-22 18:45:47',3,1,'172.30',NULL),('ㄹㄹ','1234','12345',6,'2021-06-22 18:45:53',4,NULL,'172.30',NULL),('ㅇㅇ','1234','1234',292,'2021-06-22 20:35:20',1,NULL,'172.30',NULL),('ff','1234','1234',292,'2021-06-22 20:37:44',2,NULL,'172.30',NULL),('gg','1234','1234',292,'2021-06-22 20:37:48',3,NULL,'172.30',NULL),('ad','1234','asf',292,'2021-06-22 20:37:56',4,1,'172.30',NULL),('ff','1234','1234',292,'2021-06-22 20:38:04',5,1,'172.30',NULL),('ㄹㄹ','1234','12345',292,'2021-06-22 20:41:24',6,3,'172.30',NULL),('dd','1234','1234',292,'2021-06-22 20:41:29',7,3,'172.30',NULL),('1234','1234','hh',292,'2021-06-22 20:41:36',8,NULL,'172.30',NULL);
/*!40000 ALTER TABLE `comment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend_table`
--

DROP TABLE IF EXISTS `recommend_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend_table` (
  `board_content_idx` int unsigned NOT NULL,
  `recommend_ip` varchar(256) DEFAULT NULL,
  `unrecommend_ip` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend_table`
--

LOCK TABLES `recommend_table` WRITE;
/*!40000 ALTER TABLE `recommend_table` DISABLE KEYS */;
INSERT INTO `recommend_table` VALUES (305,'172.30.1.47',NULL),(305,NULL,'172.30.1.47'),(292,'172.30.1.47',NULL),(292,NULL,'172.30.1.47'),(1,'172.30.1.4',NULL),(1,NULL,'172.30.1.4'),(2,'172.30.1.4',NULL),(2,NULL,'172.30.1.4');
/*!40000 ALTER TABLE `recommend_table` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('praisebak','Pcy3062!',1),('priasebak','Pcy3062!',2);
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

-- Dump completed on 2021-06-25  1:50:34
