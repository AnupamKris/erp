-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `present` int(11) DEFAULT NULL,
  `absent` int(11) DEFAULT NULL,
  `od` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (123456,50,45,5,0),(123457,50,43,5,2);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circular`
--

DROP TABLE IF EXISTS `circular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circular` (
  `message` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circular`
--

LOCK TABLES `circular` WRITE;
/*!40000 ALTER TABLE `circular` DISABLE KEYS */;
INSERT INTO `circular` VALUES ('This is a message','0-01.jpg'),('New notif','asd.pdf'),('Fee Payment','https://onlinesbi.com'),('A new notification','https://www.google.com');
/*!40000 ALTER TABLE `circular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `scholarship` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (123456,130000,65000,65000,NULL);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `number` int(11) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'CSE',1,'CSE1285','1.jpg','IAT 1 Paper','IAT Question Paper'),(2,'CSE',1,'CSE1285','2.jpg','IAT 2 Paper','IAT Question Paper');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `dateposted` date DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('2020-10-10','This is a new message'),('2020-09-03','Another Notification'),('2020-09-04','Last date of fees payment'),('2020-09-04','Last date of fees payment'),('2020-09-04','Last date of fees payment'),('2020-10-03','A new message'),('2020-10-03','A new message'),('2020-10-03','A new message'),('2020-10-03','A new message');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `brdpoint` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `fathername` varchar(255) DEFAULT NULL,
  `fatheroccupation` varchar(255) DEFAULT NULL,
  `fathercontact` varchar(255) DEFAULT NULL,
  `cutoff` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `bloodgrp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (12359,'Prem Kumar',12378,'2000-06-07','Some on Earth ',1234567890,'prekumar@gmail.com','Perambur','CSE','Perambur','ABCDE','EDCBA','98765321',199,2018,'B+ve'),(13262,'Kural',13262,'2002-09-14','asd ad ad sa a da asda adas a sa ',46554654,'anupamkris13262@gmail.com','asd','CSE','asd','asd','asd','31465978',199,2018,'B+ve'),(123456,'Anupam ',12346,'2002-09-03','alsjdioasjkdjl',984654231,'a@a.a','kgjhfd','CSE','asd','asd','Cnetral','978465',199,2018,'B+ve'),(123457,'Krishna',12347,'2002-09-04','asdsadasfasfAS',944431111,'b@b.b','xyz','CSE','None','None','None','3216546521',199,2018,'B+ve'),(123458,'Keeru',123789,'2002-06-04','asdsdsfvsv',46554654,'pramod71972@gmail.com','asd','CSE','asd','foidgjvd','asd','978465',199,2018,'B+ve'),(123460,'Sherly T R',345321,'1975-05-04','dfbsvb fdb f fsd bvb',46554654,'pramod71972@gmail.com','asd','ECE','asd','asd','asd','978465',199,2018,'B+ve');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semdates`
--

DROP TABLE IF EXISTS `semdates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semdates` (
  `year` int(11) DEFAULT NULL,
  `s1s` date DEFAULT NULL,
  `s1e` date DEFAULT NULL,
  `s2s` date DEFAULT NULL,
  `s2e` date DEFAULT NULL,
  `s3s` date DEFAULT NULL,
  `s3e` date DEFAULT NULL,
  `s4s` date DEFAULT NULL,
  `s4e` date DEFAULT NULL,
  `s5s` date DEFAULT NULL,
  `s5e` date DEFAULT NULL,
  `s6s` date DEFAULT NULL,
  `s6e` date DEFAULT NULL,
  `s7s` date DEFAULT NULL,
  `s7e` date DEFAULT NULL,
  `s8s` date DEFAULT NULL,
  `s8e` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semdates`
--

LOCK TABLES `semdates` WRITE;
/*!40000 ALTER TABLE `semdates` DISABLE KEYS */;
INSERT INTO `semdates` VALUES (2018,'2020-10-08','2020-10-12','2020-10-08','2020-10-12','2020-10-08','2020-10-12','2020-10-08','2020-10-12','2020-10-08','2020-10-12','2020-10-08','2020-10-12','2020-10-08','2020-10-12','2020-10-08','2020-10-12');
/*!40000 ALTER TABLE `semdates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `sem` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `staffid` varchar(255) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `section` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'CSE1285','Com Science 1','CSE','OMANA124',2018,'B'),(2,'S123','XYZ','CSE','sahd  ',2018,'B'),(3,'12e4as','CSE','CSE','OMANA124',2018,'B'),(4,'asd a af daf','sad g a','CSE','OMANA124asad',2018,'B'),(5,'XYZ123','kashd ask','CSE','asad  sad',2018,'B'),(6,'XYZ123','kashd ask','CSE','asad  sad',2018,'B'),(7,'XYZa123','kashd ask','CSE','asad  sad',2018,'B'),(8,'XYZa1a23','kashd ask','CSE','asad  sad',2018,'B'),(8,'XYZa1a23','kashd ask','CSE','asad  sad',2018,'B'),(1,'sfg4yd','AI','CSE','rg5u74',2,'A'),(1,'CSE14234','Java','CSE','prem1234',2,'A'),(1,'ma321','maths','AI','10',2017,'B'),(2,'mk321','maths 2','CSE','2342',2018,'A'),(2,'mk321','maths 2','CSE','2342',2018,'A'),(4,'ml321','malayalam','CSE','12asd5',2018,'A'),(3,'mn321','ml 21','CSE','OMAAN123',2018,'A');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-03 15:02:05
