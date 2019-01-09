-- MySQL dump 10.15  Distrib 10.0.36-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: HospitalManagement_development
-- ------------------------------------------------------
-- Server version	10.0.36-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `admitted_records`
--

DROP TABLE IF EXISTS `admitted_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admitted_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bed_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `is_discharged` int(11) DEFAULT NULL,
  `discharged_date` datetime DEFAULT NULL,
  `discharged_time` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admitted_records`
--

LOCK TABLES `admitted_records` WRITE;
/*!40000 ALTER TABLE `admitted_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `admitted_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `is_diogonised` int(11) DEFAULT '0',
  `is_expired` int(11) DEFAULT '0',
  `slot_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'fever',1,0,0,1,NULL,'2019-01-09 11:51:25','2019-01-09 11:51:25'),(2,'gdhjhkjktadfjhjgdrtsydgjhkjgtyytukgljuytukhj',1,0,0,9,NULL,'2019-01-09 12:22:58','2019-01-09 12:22:58'),(3,'refdgshv',1,0,0,11,NULL,'2019-01-09 12:23:41','2019-01-09 12:23:41'),(4,'he',1,0,0,5,'2019-01-09 12:41:25','2019-01-09 12:41:29','2019-01-09 12:41:29'),(5,'fever',1,0,0,3,'2019-01-09 12:42:53','2019-01-09 12:42:57','2019-01-09 12:42:57'),(6,'fever',1,0,0,6,'2019-01-09 12:43:23','2019-01-09 12:43:25','2019-01-09 12:43:25');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_engaged` int(11) DEFAULT '2',
  `room_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (1,2,1,'2019-01-09 11:31:05','2019-01-09 11:31:05'),(2,2,1,'2019-01-09 11:31:05','2019-01-09 11:31:05'),(3,2,1,'2019-01-09 11:31:05','2019-01-09 11:31:05'),(4,2,1,'2019-01-09 11:31:05','2019-01-09 11:31:05'),(5,2,1,'2019-01-09 11:31:05','2019-01-09 11:31:05'),(6,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(7,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(8,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(9,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(10,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(11,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(12,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(13,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(14,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(15,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(16,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(17,2,2,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(18,2,2,'2019-01-09 11:31:13','2019-01-09 11:31:13'),(19,2,2,'2019-01-09 11:31:13','2019-01-09 11:31:13'),(20,2,2,'2019-01-09 11:31:13','2019-01-09 11:31:13'),(21,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(22,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(23,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(24,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(25,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(26,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(27,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(28,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(29,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(30,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(31,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(32,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(33,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(34,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(35,2,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(36,2,4,'2019-01-09 11:31:23','2019-01-09 11:31:23'),(37,2,4,'2019-01-09 11:31:23','2019-01-09 11:31:23'),(38,2,5,'2019-01-09 11:31:32','2019-01-09 11:31:32'),(39,2,5,'2019-01-09 11:31:32','2019-01-09 11:31:32'),(40,2,5,'2019-01-09 11:31:32','2019-01-09 11:31:32'),(41,2,5,'2019-01-09 11:31:32','2019-01-09 11:31:32'),(42,2,6,'2019-01-09 11:31:44','2019-01-09 11:31:44'),(43,2,6,'2019-01-09 11:31:44','2019-01-09 11:31:44'),(44,2,6,'2019-01-09 11:31:44','2019-01-09 11:31:44');
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodgroups`
--

DROP TABLE IF EXISTS `bloodgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloodgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodgroups`
--

LOCK TABLES `bloodgroups` WRITE;
/*!40000 ALTER TABLE `bloodgroups` DISABLE KEYS */;
INSERT INTO `bloodgroups` VALUES (1,'A+','2019-01-09 11:44:19','2019-01-09 11:44:19'),(2,'O+','2019-01-09 11:44:19','2019-01-09 11:44:19'),(3,'B+','2019-01-09 11:44:19','2019-01-09 11:44:19'),(4,'AB+','2019-01-09 11:44:19','2019-01-09 11:44:19'),(5,'A-','2019-01-09 11:44:19','2019-01-09 11:44:19'),(6,'O-','2019-01-09 11:44:19','2019-01-09 11:44:19'),(7,'B-','2019-01-09 11:44:19','2019-01-09 11:44:19'),(8,'AB-','2019-01-09 11:44:19','2019-01-09 11:44:19');
/*!40000 ALTER TABLE `bloodgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_condition` int(11) DEFAULT NULL,
  `medication` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_recommended` int(11) DEFAULT '0',
  `recommendation_status` int(11) DEFAULT '2',
  `appointment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Anesthesiology & Perioperative Care','2019-01-09 10:29:18','2019-01-09 10:29:18'),(2,'Dental','2019-01-09 10:29:27','2019-01-09 10:29:27'),(3,'Emergency Medicine','2019-01-09 10:29:31','2019-01-09 10:29:31'),(4,'Casuality','2019-01-09 11:30:38','2019-01-09 11:30:38'),(5,'Cardiology','2019-01-09 11:30:43','2019-01-09 11:30:44'),(6,'Dermatology','2019-01-09 11:30:52','2019-01-09 11:30:52');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualifications` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Hijas','','Ajmal','8907018654','Hijas@foradian.com',NULL,'05/08/1995','--- !map:HashWithIndifferentAccess \nid: \"\"\n','--- !map:HashWithIndifferentAccess \nid: \"\"\n',NULL,NULL,1,'2019-01-09 10:31:13','2019-01-09 11:19:26','--- !map:HashWithIndifferentAccess \ntypefile: Screenshot from 2018-12-20 09-53-05.png\n',NULL,NULL,NULL),(2,'a','b','c',NULL,'hijas@foradian.com',NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-01-09 11:24:48','2019-01-09 11:24:48',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'Yes',NULL,NULL),(2,'No\r\n',NULL,NULL),(3,'Yes',NULL,NULL),(4,'No\r\n',NULL,NULL);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_conditions`
--

DROP TABLE IF EXISTS `patient_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_conditions`
--

LOCK TABLES `patient_conditions` WRITE;
/*!40000 ALTER TABLE `patient_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admitted` int(11) DEFAULT '2',
  `is_discharged` int(11) DEFAULT '2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'dsaf','asdfas','sadfd','8907018654','asdf@gmail.com','05/08/1995','Pevungattil(h), akkaparamba (po), Malappurm','Male','B+',NULL,2,2,'2019-01-09 11:26:56','2019-01-09 11:26:56',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_beds` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,5,1,'2019-01-09 11:31:05','2019-01-09 11:31:05'),(2,15,1,'2019-01-09 11:31:12','2019-01-09 11:31:12'),(3,15,3,'2019-01-09 11:31:18','2019-01-09 11:31:18'),(4,2,6,'2019-01-09 11:31:23','2019-01-09 11:31:23'),(5,4,5,'2019-01-09 11:31:32','2019-01-09 11:31:32'),(6,3,5,'2019-01-09 11:31:44','2019-01-09 11:31:44');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20181214101939'),('20181214103027'),('20181214103036'),('20181221043506'),('20181226072931'),('20181230061331'),('20190103070840'),('20190103072534'),('20190103165626'),('20190103165728'),('20190103172419'),('20190105064059'),('20190106155943'),('20190106170443'),('20190106173833'),('20190107114643'),('20190109085314'),('20190109100544');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `timeslot_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'2019-01-09','04:45:00',1,1,'2019-01-09 11:46:23','2019-01-09 11:51:25'),(2,'2019-01-09','04:48:00',0,1,'2019-01-09 11:46:23','2019-01-09 11:46:23'),(3,'2019-01-09','04:51:00',1,1,'2019-01-09 11:46:24','2019-01-09 12:42:57'),(4,'2019-01-09','04:54:00',0,1,'2019-01-09 11:46:24','2019-01-09 11:46:24'),(5,'2019-01-09','04:57:00',1,1,'2019-01-09 11:46:24','2019-01-09 12:41:29'),(6,'2019-01-09','10:46:00',1,2,'2019-01-09 11:47:00','2019-01-09 12:43:26'),(7,'2019-01-09','10:56:00',0,2,'2019-01-09 11:47:00','2019-01-09 11:47:00'),(8,'2019-01-09','11:07:00',0,2,'2019-01-09 11:47:01','2019-01-09 11:47:01'),(9,'2019-01-09','11:17:00',1,2,'2019-01-09 11:47:01','2019-01-09 12:22:58'),(10,'2019-01-09','11:27:00',0,2,'2019-01-09 11:47:01','2019-01-09 11:47:01'),(11,'2019-01-09','11:37:00',1,2,'2019-01-09 11:47:01','2019-01-09 12:23:41'),(12,'2019-01-09','11:47:00',0,2,'2019-01-09 11:47:01','2019-01-09 11:47:01'),(13,'2019-01-09','11:57:00',0,2,'2019-01-09 11:47:01','2019-01-09 11:47:01');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeslots`
--

DROP TABLE IF EXISTS `timeslots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeslots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `slot_count_constant` time DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslots`
--

LOCK TABLES `timeslots` WRITE;
/*!40000 ALTER TABLE `timeslots` DISABLE KEYS */;
INSERT INTO `timeslots` VALUES (1,'2019-01-09','04:45:00','05:45:00','00:03:00',1,'2019-01-09 11:46:23','2019-01-09 11:46:23'),(2,'2019-01-09','10:46:00','12:46:00','00:10:00',2,'2019-01-09 11:47:00','2019-01-09 11:47:00');
/*!40000 ALTER TABLE `timeslots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` int(11) DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_status` int(11) DEFAULT '0',
  `user_record_id` int(11) DEFAULT NULL,
  `user_record_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hijas',NULL,'Ajmal','8907018654','Hijasajmal@gmail.com','.virus','A001',NULL,1,NULL,1,NULL,'Admin',NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,'Hijas@U1','Hijas@U3',NULL,1,NULL,1,1,'Doctor','2019-01-09 10:31:13','2019-01-09 10:32:18'),(4,NULL,NULL,NULL,NULL,NULL,'a@U2','a@U4','',1,NULL,1,2,'Doctor','2019-01-09 11:24:48','2019-01-09 11:24:48'),(5,NULL,NULL,NULL,NULL,NULL,'dsaf@U1','dsaf@U5','',1,NULL,1,1,'Patient','2019-01-09 11:26:56','2019-01-09 11:26:56');
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

-- Dump completed on 2019-01-09 18:14:08
