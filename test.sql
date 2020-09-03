-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Hanium
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Hanium`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hanium` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `Hanium`;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_title` varchar(255) NOT NULL,
  `problem_content` varchar(255) NOT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_check`
--

DROP TABLE IF EXISTS `problem_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_check` (
  `user_number` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `try_number` int(11) NOT NULL,
  `solve_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_check`
--

LOCK TABLES `problem_check` WRITE;
/*!40000 ALTER TABLE `problem_check` DISABLE KEYS */;
INSERT INTO `problem_check` VALUES (1,1,1,5,'2020-09-03 21:28:00'),(1,2,1,10,'2020-09-03 21:28:00'),(1,3,0,1,'2020-09-03 21:28:00'),(1,4,1,78,'2020-09-03 21:28:00'),(2,1,0,1,'2020-09-03 21:28:00'),(2,4,0,20,'2020-09-03 21:28:00'),(3,1,1,10,'2020-09-03 21:28:00'),(3,3,1,2,'2020-09-03 21:28:00'),(3,6,1,1,'2020-09-03 21:28:00'),(4,1,1,5,'2020-09-03 21:28:00'),(4,2,1,7,'2020-09-03 21:28:00'),(4,4,1,11,'2020-09-03 21:28:00'),(4,3,1,5,'2020-09-03 21:28:00'),(5,1,1,10,'2020-09-03 22:33:54'),(5,2,1,20,'2020-09-03 22:34:14'),(5,3,0,5,'2020-09-03 22:34:39'),(5,2,1,20,'2020-09-03 22:35:01'),(5,2,1,20,'2020-09-03 22:38:30');
/*!40000 ALTER TABLE `problem_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_number` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_pw` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_number`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'unn04012','1234','unn04012@naver.com','2020-09-03 20:45:00'),(2,'홍길동','1234','hong@naver.com','2020-09-03 20:45:00'),(3,'임꺽정','1234','Yim@naver.com','2020-09-03 20:45:00'),(4,'옥묵','1234','muk@naver.com','2020-09-03 20:45:00'),(5,'helloworld','1234','hello@daum.net','2020-09-03 20:45:00'),(6,'엄복동','1234','um@hanmail.net','2020-09-03 20:45:00'),(7,'이순신','1234','lee@naver.com','2020-09-03 20:45:00'),(8,'김옥자','1234','oak@naver.com','2020-09-03 20:45:00'),(9,'이나영','1234','lee@naver.com','2020-09-03 20:45:00'),(10,'흉길동','1234','hung@naver.com','2020-09-03 20:45:00');
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

-- Dump completed on 2020-09-04  0:31:47
