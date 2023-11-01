-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: db_new_developers
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` enum('UY','BR','AR') NOT NULL DEFAULT 'UY',
  `cant_employees` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Heller, Lueilwitz and O\'Conner','AR',10),(2,'Prosacco-Doyle','BR',13),(3,'Koepp, McLaughlin and Hintz','BR',1),(4,'Bogisich Inc','AR',10),(5,'Dicki PLC','BR',9),(6,'West, Dickinson and Labadie','AR',3),(7,'D\'Amore, Leuschke and Bergnaum','BR',12),(8,'Rosenbaum-Kertzmann','UY',14),(9,'Blanda-Abshire','UY',7),(10,'Mills, Okuneva and Schowalter','UY',5);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `document_number` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_admission` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'D\'Amore, Leuschke and Bergnaum',99640462,'Mr. Ward Lockman','Howell','2005-05-11'),(2,'Prosacco-Doyle',55944455,'Otho Hyatt','Walker','1984-06-24'),(3,'Heller, Lueilwitz and O\'Conner',20387241,'Dr. Sofia Borer','Windler','1972-01-07'),(4,'Prosacco-Doyle',3717348,'Prof. Dameon Schoen V','Cummerata','1984-10-22'),(5,'Rosenbaum-Kertzmann',33761258,'Jannie Abernathy','O\'Kon','1996-10-06'),(6,'Dicki PLC',61066097,'Prof. Estelle Kunze','Rolfson','1980-05-08'),(7,'Prosacco-Doyle',19318137,'Kasandra Kling','Romaguera','1973-08-24'),(8,'Bogisich Inc',53287558,'Rafaela Brown','King','2011-02-11'),(9,'Heller, Lueilwitz and O\'Conner',66507633,'Theodora Volkman','Turcotte','1994-08-20'),(10,'Bogisich Inc',20008633,'Madisen Klein PhD','Little','2021-08-26'),(11,'Koepp, McLaughlin and Hintz',84451517,'Tomasa Pouros','Kulas','2015-04-28'),(12,'Mills, Okuneva and Schowalter',54092216,'Orion McCullough','Christiansen','1978-10-02'),(13,'Prosacco-Doyle',59039024,'Shakira Homenick','Tremblay','1974-05-22'),(14,'Blanda-Abshire',90084557,'Mr. Mario Goodwin MD','Larson','1990-06-11'),(15,'Prosacco-Doyle',38987511,'Arnold Deckow','Renner','2014-07-17'),(16,'Rosenbaum-Kertzmann',28382049,'Joshuah Zboncak','Kassulke','1970-01-20'),(17,'Koepp, McLaughlin and Hintz',15854983,'Dr. Deshaun Jaskolski','Weber','2009-12-16'),(18,'Prosacco-Doyle',6581124,'Verdie Bode','Bauch','1975-08-01'),(19,'Heller, Lueilwitz and O\'Conner',79244076,'Mr. Orrin Koss','Quitzon','2007-06-22'),(20,'Blanda-Abshire',59617159,'June Bergstrom','Fritsch','1986-06-13'),(21,'Prosacco-Doyle',40874949,'Dr. Norval Prosacco DDS','Raynor','2013-05-21'),(22,'Blanda-Abshire',67765821,'Lewis Huels','Ruecker','2005-04-04'),(23,'Heller, Lueilwitz and O\'Conner',87671362,'Gwendolyn Crona','Lueilwitz','2000-04-07'),(24,'West, Dickinson and Labadie',63937913,'Josefa Adams','Walsh','1971-04-18'),(25,'Heller, Lueilwitz and O\'Conner',97313241,'Stewart Baumbach MD','Cormier','1980-08-23'),(26,'Dicki PLC',36449923,'Frieda Bergstrom','Rodriguez','1984-04-25'),(27,'Prosacco-Doyle',96787514,'Ms. Jade Mertz III','Auer','2002-08-10'),(28,'Dicki PLC',87359934,'Joan Beier','Ebert','2011-05-26'),(29,'Rosenbaum-Kertzmann',65684615,'Dr. Adonis Schamberger','Trantow','1988-02-17'),(30,'West, Dickinson and Labadie',21985904,'Miss Beverly Swift','Wisoky','1973-06-10'),(31,'Mills, Okuneva and Schowalter',87275984,'Orville Smith','Cummerata','1977-11-23'),(32,'Koepp, McLaughlin and Hintz',94537601,'Stephan McCullough V','Wisozk','2023-10-10'),(33,'Mills, Okuneva and Schowalter',52273816,'Allan Leannon','Thompson','2010-08-20'),(34,'Prosacco-Doyle',12315400,'Lurline Fay MD','Robel','1996-09-05'),(35,'Prosacco-Doyle',74116365,'Dayton Trantow Sr.','Hoppe','1984-05-05'),(36,'D\'Amore, Leuschke and Bergnaum',50912840,'Ms. Neoma Altenwerth','Borer','1987-08-08'),(37,'Blanda-Abshire',75810345,'Oral Wilkinson','Schiller','1985-12-27'),(38,'West, Dickinson and Labadie',57656539,'Freddie White','Schinner','1995-02-12'),(39,'Bogisich Inc',91819508,'Haylee Lind III','Lynch','1980-01-12'),(40,'Heller, Lueilwitz and O\'Conner',74384518,'Roselyn Feest','Okuneva','2006-04-27'),(41,'Heller, Lueilwitz and O\'Conner',80666970,'Prof. Norwood Ruecker','O\'Hara','2004-07-01'),(42,'Prosacco-Doyle',1477547,'Noah Leannon','Collier','2022-12-05'),(43,'Koepp, McLaughlin and Hintz',11182637,'Ignatius Keebler','Stoltenberg','1990-05-07'),(44,'Bogisich Inc',27523224,'Pamela Emard','Altenwerth','2018-09-19'),(45,'Koepp, McLaughlin and Hintz',55640462,'Leta Cronin II','Fisher','2018-08-19'),(46,'Blanda-Abshire',17253566,'Adriana Jones','Wolf','1985-11-08'),(47,'Koepp, McLaughlin and Hintz',4955188,'Prof. Cordia Grimes Jr.','Brown','1974-07-14'),(48,'Dicki PLC',91044363,'Andres Schamberger','Zieme','1980-01-22'),(49,'Bogisich Inc',86244107,'Dr. Torey Nader','Pollich','2016-06-12'),(50,'Bogisich Inc',36683909,'Lilliana Kuphal','Wiza','1971-05-21');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-30 18:58:44
