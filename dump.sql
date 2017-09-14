-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ipp
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sha1` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `thumbnail` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,4,'2017-2018-1(Fall)UndergraduateClass170907.xlsx','5e539f6f8366a89352aa40811962ef96c8f56c4f',59893,0);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `leader` varchar(255) NOT NULL,
  `users` varchar(255) NOT NULL,
  `leader_id` bigint(64) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `isFull` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'刘逸灏','',515370910207,'',0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `sponsor` varchar(255) NOT NULL,
  `detail` longtext,
  `wish1` varchar(255) DEFAULT NULL,
  `wish2` varchar(255) DEFAULT NULL,
  `wish3` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `chosen_num1` int(11) NOT NULL,
  `chosen_num2` int(11) NOT NULL,
  `chosen_num3` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `major` varchar(255) NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `assigned` varchar(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'1','1505372556.374436.png','1','1','','','',3,0,0,0,0,'ECE','1','n'),(2,'2','1505372772.2290943.png','2','2','','','',1,0,0,0,0,'ME','2','n'),(3,'Formal Methods','1505372764.6187446.png','符少','orz Luke Xuan','','','',4,0,0,0,0,'ECE','轩帝','n'),(4,'3','1505373176.4737446.png','3','*3*','','','',2,0,0,0,0,'ME','3','n'),(5,'4','1505372969.4012003.png','4','4','','','',1,0,0,0,0,'ECE','4','n');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(64) NOT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `phone` bigint(64) NOT NULL,
  `major` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `grouped` varchar(255) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `wish0` int(11) NOT NULL DEFAULT '0',
  `wish1` int(11) NOT NULL DEFAULT '0',
  `wish2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (515370910093,'符晓浛','stu',1234567890,'ECE','male','n',0,0,0,4,5),(515370910202,'王天泽','stu',13761911368,'ECE','male','n',0,0,3,0,0),(515370910207,'刘逸灏','stu',18964688141,'ECE','male','l',1,0,3,0,0),(515370910212,'荆远方','stu',15960249769,'ECE','male','y',1,0,3,0,0),(516370910031,'张怡斐','stu',12345678901,'ECE','female','n',0,0,0,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-14 17:02:03
