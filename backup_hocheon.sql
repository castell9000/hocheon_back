-- MySQL dump 10.16  Distrib 10.1.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.20-MariaDB-1~xenial

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
-- Table structure for table `a_write`
--

DROP TABLE IF EXISTS `a_write`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_write` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_name` varchar(200) NOT NULL,
  `w_contents` varchar(400) DEFAULT NULL,
  `w_time` date NOT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_write`
--

LOCK TABLES `a_write` WRITE;
/*!40000 ALTER TABLE `a_write` DISABLE KEYS */;
INSERT INTO `a_write` VALUES (2,'parkMin','우와아아아아아아아아아아아아아','2016-12-29');
/*!40000 ALTER TABLE `a_write` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_activity`
--

DROP TABLE IF EXISTS `h_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_activity` (
  `act_code` varchar(10) NOT NULL,
  `art_name` varchar(20) NOT NULL,
  `act_name` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `sort` varchar(20) NOT NULL,
  PRIMARY KEY (`act_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_activity`
--

LOCK TABLES `h_activity` WRITE;
/*!40000 ALTER TABLE `h_activity` DISABLE KEYS */;
INSERT INTO `h_activity` VALUES ('A01','김미영','고무신공예','monday','공예'),('A02','김미영','나무공예','tuesday','공예'),('A03','박동일','종이공예','wednesday','공예'),('B01','홍길동','나무그림','friday','그림'),('B02','김기동','동양화','saturday','그림'),('C01','나희영','찱흙조소','thursday','조소'),('C02','하지원','종이조소','sunday','조소');
/*!40000 ALTER TABLE `h_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_reserve`
--

DROP TABLE IF EXISTS `h_reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reser_name` varchar(20) NOT NULL,
  `reser_phone` varchar(30) NOT NULL,
  `act_code` varchar(10) NOT NULL,
  `act_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `h_reserve_h_activity_act_code_fk` (`act_code`),
  CONSTRAINT `h_reserve_h_activity_act_code_fk` FOREIGN KEY (`act_code`) REFERENCES `h_activity` (`act_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_reserve`
--

LOCK TABLES `h_reserve` WRITE;
/*!40000 ALTER TABLE `h_reserve` DISABLE KEYS */;
INSERT INTO `h_reserve` VALUES (1,'홍길동','010-0000-0000','A01','2016-12-26'),(3,'ㅇㅇㅇ','010','A01','0000-00-00'),(4,'ㅇㅇㅇ','010','A01','2016-12-29');
/*!40000 ALTER TABLE `h_reserve` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-29  8:28:06
