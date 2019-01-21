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
  `is_discharged` int(11) DEFAULT '0',
  `discharged_date` datetime DEFAULT '0000-00-00 00:00:00',
  `discharged_time` datetime DEFAULT '0000-00-00 00:00:00',
  `patient_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admitted_records`
--

LOCK TABLES `admitted_records` WRITE;
/*!40000 ALTER TABLE `admitted_records` DISABLE KEYS */;
INSERT INTO `admitted_records` VALUES (1,39,'2019-01-21 00:00:00','2019-01-20 01:50:00',1,'2019-01-21 00:00:00','2019-01-20 01:51:00',1,'2019-01-20 20:20:03','2019-01-20 20:21:29',1),(2,39,'2019-01-21 00:00:00','2019-01-20 01:51:00',0,NULL,NULL,1,'2019-01-20 20:21:02','2019-01-20 20:21:02',1);
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
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_diogonised` int(11) DEFAULT '0',
  `is_expired` int(11) DEFAULT '0',
  `slot_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'fever','2019-01-21',1,0,1,1,1,'2019-01-20 20:03:16','2019-01-20 20:10:38');
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
  `is_engaged` int(11) DEFAULT '0',
  `room_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (37,0,13,'2019-01-20 19:30:16','2019-01-21 06:37:36'),(38,0,13,'2019-01-20 19:30:16','2019-01-20 19:30:16'),(39,1,13,'2019-01-20 19:30:16','2019-01-20 20:18:25');
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_groups`
--

DROP TABLE IF EXISTS `blood_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_groups`
--

LOCK TABLES `blood_groups` WRITE;
/*!40000 ALTER TABLE `blood_groups` DISABLE KEYS */;
INSERT INTO `blood_groups` VALUES (1,'A+','2019-01-20 18:21:39','2019-01-20 18:21:39'),(2,'O+','2019-01-20 18:21:39','2019-01-20 18:21:39'),(3,'B+','2019-01-20 18:21:39','2019-01-20 18:21:39'),(4,'AB+','2019-01-20 18:21:39','2019-01-20 18:21:39'),(5,'A-','2019-01-20 18:21:39','2019-01-20 18:21:39'),(6,'O-','2019-01-20 18:21:39','2019-01-20 18:21:39'),(7,'B-','2019-01-20 18:21:39','2019-01-20 18:21:39'),(8,'AB-','2019-01-20 18:21:39','2019-01-20 18:21:39');
/*!40000 ALTER TABLE `blood_groups` ENABLE KEYS */;
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
  `doctor_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_recommended` int(11) DEFAULT '0',
  `recommendation_status` int(11) DEFAULT '0',
  `appointment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,'something..........>!',NULL,1,0,1,'2019-01-20 20:10:38','2019-01-20 20:17:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (2,'Bangladesh','BD','2019-01-20 18:21:40','2019-01-20 18:21:40'),(3,'Barbados','BB','2019-01-20 18:21:40','2019-01-20 18:21:40'),(4,'Belarus','BY','2019-01-20 18:21:40','2019-01-20 18:21:40'),(5,'Belgium','BE','2019-01-20 18:21:40','2019-01-20 18:21:40'),(6,'Belize','BZ','2019-01-20 18:21:40','2019-01-20 18:21:40'),(7,'Benin','BJ','2019-01-20 18:21:40','2019-01-20 18:21:40'),(8,'Bermuda','BM','2019-01-20 18:21:40','2019-01-20 18:21:40'),(9,'Bhutan','BT','2019-01-20 18:21:40','2019-01-20 18:21:40'),(10,'Bolivia','BO','2019-01-20 18:21:40','2019-01-20 18:21:40'),(11,'Bosnia And Herzegovina','BA','2019-01-20 18:21:40','2019-01-20 18:21:40'),(12,'Botswana','BW','2019-01-20 18:21:40','2019-01-20 18:21:40'),(13,'Bouvet Island','BV','2019-01-20 18:21:40','2019-01-20 18:21:40'),(14,'Brazil','BR','2019-01-20 18:21:40','2019-01-20 18:21:40'),(15,'British Indian Ocean Territory','IO','2019-01-20 18:21:40','2019-01-20 18:21:40'),(16,'Brunei Darussalam','BN','2019-01-20 18:21:40','2019-01-20 18:21:40'),(17,'Bulgaria','BG','2019-01-20 18:21:41','2019-01-20 18:21:41'),(18,'Burkina Faso','BF','2019-01-20 18:21:41','2019-01-20 18:21:41'),(19,'Burundi','BI','2019-01-20 18:21:41','2019-01-20 18:21:41'),(20,'Cambodia','KH','2019-01-20 18:21:41','2019-01-20 18:21:41'),(21,'Cameroon','CM','2019-01-20 18:21:41','2019-01-20 18:21:41'),(22,'Canada','CA','2019-01-20 18:21:41','2019-01-20 18:21:41'),(23,'Cape Verde','CV','2019-01-20 18:21:41','2019-01-20 18:21:41'),(24,'Cayman Islands','KY','2019-01-20 18:21:41','2019-01-20 18:21:41'),(25,'Central African Republic','CF','2019-01-20 18:21:41','2019-01-20 18:21:41'),(26,'Chad','TD','2019-01-20 18:21:41','2019-01-20 18:21:41'),(27,'Chile','CL','2019-01-20 18:21:41','2019-01-20 18:21:41'),(28,'China','CN','2019-01-20 18:21:41','2019-01-20 18:21:41'),(29,'Christmas Island','CX','2019-01-20 18:21:41','2019-01-20 18:21:41'),(30,'Cocos (keeling) Islands','CC','2019-01-20 18:21:41','2019-01-20 18:21:41'),(31,'Colombia','CO','2019-01-20 18:21:41','2019-01-20 18:21:41'),(32,'Comoros','KM','2019-01-20 18:21:41','2019-01-20 18:21:41'),(33,'Congo','CG','2019-01-20 18:21:41','2019-01-20 18:21:41'),(34,'Congo, The Democratic Republic Of The','CD','2019-01-20 18:21:41','2019-01-20 18:21:41'),(35,'Cook Islands','CK','2019-01-20 18:21:41','2019-01-20 18:21:41'),(36,'Costa Rica','CR','2019-01-20 18:21:41','2019-01-20 18:21:41'),(37,'Cote D\'ivoire','CI','2019-01-20 18:21:41','2019-01-20 18:21:41'),(38,'Croatia','HR','2019-01-20 18:21:42','2019-01-20 18:21:42'),(39,'Cuba','CU','2019-01-20 18:21:42','2019-01-20 18:21:42'),(40,'Cyprus','CY','2019-01-20 18:21:42','2019-01-20 18:21:42'),(41,'Czech Republic','CZ','2019-01-20 18:21:42','2019-01-20 18:21:42'),(42,'Denmark','DK','2019-01-20 18:21:42','2019-01-20 18:21:42'),(43,'Djibouti','DJ','2019-01-20 18:21:42','2019-01-20 18:21:42'),(44,'Dominica','DM','2019-01-20 18:21:42','2019-01-20 18:21:42'),(45,'Dominican Republic','DO','2019-01-20 18:21:42','2019-01-20 18:21:42'),(46,'East Timor','TP','2019-01-20 18:21:42','2019-01-20 18:21:42'),(47,'Ecuador','EC','2019-01-20 18:21:42','2019-01-20 18:21:42'),(48,'Egypt','EG','2019-01-20 18:21:42','2019-01-20 18:21:42'),(49,'El Salvador','SV','2019-01-20 18:21:42','2019-01-20 18:21:42'),(50,'Equatorial Guinea','GQ','2019-01-20 18:21:42','2019-01-20 18:21:42'),(51,'Eritrea','ER','2019-01-20 18:21:42','2019-01-20 18:21:42'),(52,'Estonia','EE','2019-01-20 18:21:42','2019-01-20 18:21:42'),(53,'Ethiopia','ET','2019-01-20 18:21:42','2019-01-20 18:21:42'),(54,'Falkland Islands (malvinas)','FK','2019-01-20 18:21:42','2019-01-20 18:21:42'),(55,'Faroe Islands','FO','2019-01-20 18:21:42','2019-01-20 18:21:42'),(56,'Fiji','FJ','2019-01-20 18:21:42','2019-01-20 18:21:42'),(57,'Finland','FI','2019-01-20 18:21:42','2019-01-20 18:21:42'),(58,'France','FR','2019-01-20 18:21:42','2019-01-20 18:21:42'),(59,'French Guiana','GF','2019-01-20 18:21:42','2019-01-20 18:21:42'),(60,'French Polynesia','PF','2019-01-20 18:21:43','2019-01-20 18:21:43'),(61,'French Southern Territories','TF','2019-01-20 18:21:43','2019-01-20 18:21:43'),(62,'Gabon','GA','2019-01-20 18:21:43','2019-01-20 18:21:43'),(63,'Gambia','GM','2019-01-20 18:21:43','2019-01-20 18:21:43'),(64,'Georgia','GE','2019-01-20 18:21:43','2019-01-20 18:21:43'),(65,'Germany','DE','2019-01-20 18:21:43','2019-01-20 18:21:43'),(66,'Ghana','GH','2019-01-20 18:21:43','2019-01-20 18:21:43'),(67,'Gibraltar','GI','2019-01-20 18:21:43','2019-01-20 18:21:43'),(68,'Greece','GR','2019-01-20 18:21:43','2019-01-20 18:21:43'),(69,'Greenland','GL','2019-01-20 18:21:43','2019-01-20 18:21:43'),(70,'Grenada','GD','2019-01-20 18:21:43','2019-01-20 18:21:43'),(71,'Guadeloupe','GP','2019-01-20 18:21:43','2019-01-20 18:21:43'),(72,'Guam','GU','2019-01-20 18:21:43','2019-01-20 18:21:43'),(73,'Guatemala','GT','2019-01-20 18:21:44','2019-01-20 18:21:44'),(74,'Guinea','GN','2019-01-20 18:21:44','2019-01-20 18:21:44'),(75,'Guinea-bissau','GW','2019-01-20 18:21:44','2019-01-20 18:21:44'),(76,'Guyana','GY','2019-01-20 18:21:44','2019-01-20 18:21:44'),(77,'Haiti','HT','2019-01-20 18:21:44','2019-01-20 18:21:44'),(78,'Heard Island And Mcdonald Islands','HM','2019-01-20 18:21:44','2019-01-20 18:21:44'),(79,'Holy See (vatican City State)','VA','2019-01-20 18:21:44','2019-01-20 18:21:44'),(80,'Honduras','HN','2019-01-20 18:21:44','2019-01-20 18:21:44'),(81,'Hong Kong','HK','2019-01-20 18:21:44','2019-01-20 18:21:44'),(82,'Hungary','HU','2019-01-20 18:21:44','2019-01-20 18:21:44'),(83,'Iceland','IS','2019-01-20 18:21:44','2019-01-20 18:21:44'),(84,'India','IN','2019-01-20 18:21:44','2019-01-20 18:21:44'),(85,'Indonesia','ID','2019-01-20 18:21:44','2019-01-20 18:21:44'),(86,'Iran, Islamic Republic Of','IR','2019-01-20 18:21:44','2019-01-20 18:21:44'),(87,'Iraq','IQ','2019-01-20 18:21:44','2019-01-20 18:21:44'),(88,'Ireland','IE','2019-01-20 18:21:44','2019-01-20 18:21:44'),(89,'Israel','IL','2019-01-20 18:21:44','2019-01-20 18:21:44'),(90,'Italy','IT','2019-01-20 18:21:44','2019-01-20 18:21:44'),(91,'Jamaica','JM','2019-01-20 18:21:44','2019-01-20 18:21:44'),(92,'Japan','JP','2019-01-20 18:21:44','2019-01-20 18:21:44'),(93,'Jordan','JO','2019-01-20 18:21:44','2019-01-20 18:21:44'),(94,'Kazakstan','KZ','2019-01-20 18:21:45','2019-01-20 18:21:45'),(95,'Kenya','KE','2019-01-20 18:21:45','2019-01-20 18:21:45'),(96,'Kiribati','KI','2019-01-20 18:21:45','2019-01-20 18:21:45'),(97,'Korea, Democratic People\'s Republic Of','KP','2019-01-20 18:21:45','2019-01-20 18:21:45'),(98,'Korea, Republic Of','KR','2019-01-20 18:21:45','2019-01-20 18:21:45'),(99,'Kosovo','KV','2019-01-20 18:21:45','2019-01-20 18:21:45'),(100,'Kuwait','KW','2019-01-20 18:21:45','2019-01-20 18:21:45'),(101,'Kyrgyzstan','KG','2019-01-20 18:21:45','2019-01-20 18:21:45'),(102,'Lao People\'s Democratic Republic','LA','2019-01-20 18:21:45','2019-01-20 18:21:45'),(103,'Latvia','LV','2019-01-20 18:21:45','2019-01-20 18:21:45'),(104,'Lebanon','LB','2019-01-20 18:21:45','2019-01-20 18:21:45'),(105,'Lesotho','LS','2019-01-20 18:21:45','2019-01-20 18:21:45'),(106,'Liberia','LR','2019-01-20 18:21:45','2019-01-20 18:21:45'),(107,'Libyan Arab Jamahiriya','LY','2019-01-20 18:21:45','2019-01-20 18:21:45'),(108,'Liechtenstein','LI','2019-01-20 18:21:45','2019-01-20 18:21:45'),(109,'Lithuania','LT','2019-01-20 18:21:45','2019-01-20 18:21:45'),(110,'Luxembourg','LU','2019-01-20 18:21:45','2019-01-20 18:21:45'),(111,'Macau','MO','2019-01-20 18:21:45','2019-01-20 18:21:45'),(112,'Macedonia, The Former Yugoslav Republic Of','MK','2019-01-20 18:21:46','2019-01-20 18:21:46'),(113,'Madagascar','MG','2019-01-20 18:21:46','2019-01-20 18:21:46'),(114,'Malawi','MW','2019-01-20 18:21:46','2019-01-20 18:21:46'),(115,'Malaysia','MY','2019-01-20 18:21:46','2019-01-20 18:21:46'),(116,'Maldives','MV','2019-01-20 18:21:46','2019-01-20 18:21:46'),(117,'Mali','ML','2019-01-20 18:21:46','2019-01-20 18:21:46'),(118,'Malta','MT','2019-01-20 18:21:46','2019-01-20 18:21:46'),(119,'Marshall Islands','MH','2019-01-20 18:21:46','2019-01-20 18:21:46'),(120,'Martinique','MQ','2019-01-20 18:21:46','2019-01-20 18:21:46'),(121,'Mauritania','MR','2019-01-20 18:21:46','2019-01-20 18:21:46'),(122,'Mauritius','MU','2019-01-20 18:21:46','2019-01-20 18:21:46'),(123,'Mayotte','YT','2019-01-20 18:21:46','2019-01-20 18:21:46'),(124,'Mexico','MX','2019-01-20 18:21:46','2019-01-20 18:21:46'),(125,'Micronesia, Federated States Of','FM','2019-01-20 18:21:46','2019-01-20 18:21:46'),(126,'Moldova, Republic Of','MD','2019-01-20 18:21:46','2019-01-20 18:21:46'),(127,'Monaco','MC','2019-01-20 18:21:46','2019-01-20 18:21:46'),(128,'Mongolia','MN','2019-01-20 18:21:46','2019-01-20 18:21:46'),(129,'Montserrat','MS','2019-01-20 18:21:46','2019-01-20 18:21:46'),(130,'Montenegro','ME','2019-01-20 18:21:47','2019-01-20 18:21:47'),(131,'Morocco','MA','2019-01-20 18:21:47','2019-01-20 18:21:47'),(132,'Mozambique','MZ','2019-01-20 18:21:47','2019-01-20 18:21:47'),(133,'Myanmar','MM','2019-01-20 18:21:47','2019-01-20 18:21:47'),(134,'Namibia','NA','2019-01-20 18:21:47','2019-01-20 18:21:47'),(135,'Nauru','NR','2019-01-20 18:21:47','2019-01-20 18:21:47'),(136,'Nepal','NP','2019-01-20 18:21:47','2019-01-20 18:21:47'),(137,'Netherlands','NL','2019-01-20 18:21:47','2019-01-20 18:21:47'),(138,'Netherlands Antilles','AN','2019-01-20 18:21:47','2019-01-20 18:21:47'),(139,'New Caledonia','NC','2019-01-20 18:21:47','2019-01-20 18:21:47'),(140,'New Zealand','NZ','2019-01-20 18:21:47','2019-01-20 18:21:47'),(141,'Nicaragua','NI','2019-01-20 18:21:47','2019-01-20 18:21:47'),(142,'Niger','NE','2019-01-20 18:21:47','2019-01-20 18:21:47'),(143,'Nigeria','NG','2019-01-20 18:21:47','2019-01-20 18:21:47'),(144,'Niue','NU','2019-01-20 18:21:47','2019-01-20 18:21:47'),(145,'Norfolk Island','NF','2019-01-20 18:21:47','2019-01-20 18:21:47'),(146,'Northern Mariana Islands','MP','2019-01-20 18:21:47','2019-01-20 18:21:47'),(147,'Norway','NO','2019-01-20 18:21:47','2019-01-20 18:21:47'),(148,'Oman','OM','2019-01-20 18:21:48','2019-01-20 18:21:48'),(149,'Pakistan','PK','2019-01-20 18:21:48','2019-01-20 18:21:48'),(150,'Palau','PW','2019-01-20 18:21:48','2019-01-20 18:21:48'),(151,'Palestinian Territory, Occupied','PS','2019-01-20 18:21:48','2019-01-20 18:21:48'),(152,'Panama','PA','2019-01-20 18:21:48','2019-01-20 18:21:48'),(153,'Papua New Guinea','PG','2019-01-20 18:21:48','2019-01-20 18:21:48'),(154,'Paraguay','PY','2019-01-20 18:21:48','2019-01-20 18:21:48'),(155,'Peru','PE','2019-01-20 18:21:48','2019-01-20 18:21:48'),(156,'Philippines','PH','2019-01-20 18:21:48','2019-01-20 18:21:48'),(157,'Pitcairn','PN','2019-01-20 18:21:48','2019-01-20 18:21:48'),(158,'Poland','PL','2019-01-20 18:21:48','2019-01-20 18:21:48'),(159,'Portugal','PT','2019-01-20 18:21:48','2019-01-20 18:21:48'),(160,'Puerto Rico','PR','2019-01-20 18:21:48','2019-01-20 18:21:48'),(161,'Qatar','QA','2019-01-20 18:21:48','2019-01-20 18:21:48'),(162,'Reunion','RE','2019-01-20 18:21:48','2019-01-20 18:21:48'),(163,'Romania','RO','2019-01-20 18:21:48','2019-01-20 18:21:48'),(164,'Russian Federation','RU','2019-01-20 18:21:48','2019-01-20 18:21:48'),(165,'Rwanda','RW','2019-01-20 18:21:49','2019-01-20 18:21:49'),(166,'Saint Helena','SH','2019-01-20 18:21:49','2019-01-20 18:21:49'),(167,'Saint Kitts And Nevis','KN','2019-01-20 18:21:49','2019-01-20 18:21:49'),(168,'Saint Lucia','LC','2019-01-20 18:21:49','2019-01-20 18:21:49'),(169,'Saint Pierre And Miquelon','PM','2019-01-20 18:21:49','2019-01-20 18:21:49'),(170,'Saint Vincent And The Grenadines','VC','2019-01-20 18:21:49','2019-01-20 18:21:49'),(171,'Samoa','WS','2019-01-20 18:21:49','2019-01-20 18:21:49'),(172,'San Marino','SM','2019-01-20 18:21:49','2019-01-20 18:21:49'),(173,'Sao Tome And Principe','ST','2019-01-20 18:21:49','2019-01-20 18:21:49'),(174,'Saudi Arabia','SA','2019-01-20 18:21:49','2019-01-20 18:21:49'),(175,'Senegal','SN','2019-01-20 18:21:49','2019-01-20 18:21:49'),(176,'Serbia','RS','2019-01-20 18:21:49','2019-01-20 18:21:49'),(177,'Seychelles','SC','2019-01-20 18:21:49','2019-01-20 18:21:49'),(178,'Sierra Leone','SL','2019-01-20 18:21:49','2019-01-20 18:21:49'),(179,'Singapore','SG','2019-01-20 18:21:49','2019-01-20 18:21:49'),(180,'Slovakia','SK','2019-01-20 18:21:49','2019-01-20 18:21:49'),(181,'Slovenia','SI','2019-01-20 18:21:49','2019-01-20 18:21:49'),(182,'Solomon Islands','SB','2019-01-20 18:21:50','2019-01-20 18:21:50'),(183,'Somalia','SO','2019-01-20 18:21:50','2019-01-20 18:21:50'),(184,'South Africa','ZA','2019-01-20 18:21:50','2019-01-20 18:21:50'),(185,'South Georgia And The South Sandwich Islands','GS','2019-01-20 18:21:50','2019-01-20 18:21:50'),(186,'Spain','ES','2019-01-20 18:21:50','2019-01-20 18:21:50'),(187,'Sri Lanka','LK','2019-01-20 18:21:50','2019-01-20 18:21:50'),(188,'Sudan','SD','2019-01-20 18:21:50','2019-01-20 18:21:50'),(189,'Suriname','SR','2019-01-20 18:21:50','2019-01-20 18:21:50'),(190,'Svalbard And Jan Mayen','SJ','2019-01-20 18:21:50','2019-01-20 18:21:50'),(191,'Swaziland','SZ','2019-01-20 18:21:50','2019-01-20 18:21:50'),(192,'Sweden','SE','2019-01-20 18:21:50','2019-01-20 18:21:50'),(193,'Switzerland','CH','2019-01-20 18:21:50','2019-01-20 18:21:50'),(194,'Syrian Arab Republic','SY','2019-01-20 18:21:50','2019-01-20 18:21:50'),(195,'Taiwan, Province Of China','TW','2019-01-20 18:21:50','2019-01-20 18:21:50'),(196,'Tajikistan','TJ','2019-01-20 18:21:50','2019-01-20 18:21:50'),(197,'Tanzania, United Republic Of','TZ','2019-01-20 18:21:51','2019-01-20 18:21:51'),(198,'Thailand','TH','2019-01-20 18:21:51','2019-01-20 18:21:51'),(199,'Togo','TG','2019-01-20 18:21:51','2019-01-20 18:21:51'),(200,'Tokelau','TK','2019-01-20 18:21:51','2019-01-20 18:21:51'),(201,'Tonga','TO','2019-01-20 18:21:51','2019-01-20 18:21:51'),(202,'Trinidad And Tobago','TT','2019-01-20 18:21:51','2019-01-20 18:21:51'),(203,'Tunisia','TN','2019-01-20 18:21:51','2019-01-20 18:21:51'),(204,'Turkey','TR','2019-01-20 18:21:51','2019-01-20 18:21:51'),(205,'Turkmenistan','TM','2019-01-20 18:21:51','2019-01-20 18:21:51'),(206,'Turks And Caicos Islands','TC','2019-01-20 18:21:51','2019-01-20 18:21:51'),(207,'Tuvalu','TV','2019-01-20 18:21:51','2019-01-20 18:21:51'),(208,'Uganda','UG','2019-01-20 18:21:52','2019-01-20 18:21:52'),(209,'Ukraine','UA','2019-01-20 18:21:52','2019-01-20 18:21:52'),(210,'United Arab Emirates','AE','2019-01-20 18:21:52','2019-01-20 18:21:52'),(211,'United Kingdom','GB','2019-01-20 18:21:52','2019-01-20 18:21:52'),(212,'United States','US','2019-01-20 18:21:52','2019-01-20 18:21:52'),(213,'United States Minor Outlying Islands','UM','2019-01-20 18:21:52','2019-01-20 18:21:52'),(214,'Uruguay','UY','2019-01-20 18:21:52','2019-01-20 18:21:52'),(215,'Uzbekistan','UZ','2019-01-20 18:21:52','2019-01-20 18:21:52'),(216,'Vanuatu','VU','2019-01-20 18:21:52','2019-01-20 18:21:52'),(217,'Venezuela','VE','2019-01-20 18:21:52','2019-01-20 18:21:52'),(218,'Viet Nam','VN','2019-01-20 18:21:52','2019-01-20 18:21:52'),(219,'Virgin Islands, British','VG','2019-01-20 18:21:52','2019-01-20 18:21:52'),(220,'Virgin Islands, U.s.','VI','2019-01-20 18:21:52','2019-01-20 18:21:52'),(221,'Wallis And Futuna','WF','2019-01-20 18:21:52','2019-01-20 18:21:52'),(222,'Western Sahara','EH','2019-01-20 18:21:53','2019-01-20 18:21:53'),(223,'Yemen','YE','2019-01-20 18:21:53','2019-01-20 18:21:53'),(224,'Zambia','ZM','2019-01-20 18:21:53','2019-01-20 18:21:53'),(225,'Zimbabwe','ZW','2019-01-20 18:21:53','2019-01-20 18:21:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'General','2019-01-20 18:23:05','2019-01-20 18:23:05'),(2,'Accident and emergency (A&E)','2019-01-20 18:23:11','2019-01-20 18:23:11'),(3,'Anaesthetics','2019-01-20 18:23:16','2019-01-20 18:23:16'),(4,'Cardiology','2019-01-20 18:23:21','2019-01-20 18:23:21'),(5,'Critical care','2019-01-20 18:23:32','2019-01-20 18:23:32'),(6,'Diagnostic imaging','2019-01-20 18:23:39','2019-01-20 18:23:39');
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
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `qualifications` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Python','2','6','7807018654','python@gmail.com','05/08/1956','Male',74,'MBBS','2-years',1,'2019-01-20 18:24:18','2019-01-20 18:52:13'),(2,'Java','1','8','8907652656','java@gmail.com','05/08/1995','Male',84,'abc','3-years',2,'2019-01-20 18:24:48','2019-01-21 04:53:09'),(3,'Ruby','2','5','5634561234','ruby@gmail.com','05/08/1998','Female',10,'qwerty','1-years',3,'2019-01-20 18:25:07','2019-01-21 04:54:14'),(4,'perl','1','5','7894561235','perl@gmail.com','05/08/1984','Female',9,'zxcv','6-years',4,'2019-01-20 18:25:27','2019-01-21 04:55:32');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_conditions`
--

LOCK TABLES `patient_conditions` WRITE;
/*!40000 ALTER TABLE `patient_conditions` DISABLE KEYS */;
INSERT INTO `patient_conditions` VALUES (1,'Undetermined','2019-01-20 18:21:40','2019-01-20 18:21:40'),(2,'Good','2019-01-20 18:21:40','2019-01-20 18:21:40'),(3,'Fair','2019-01-20 18:21:40','2019-01-20 18:21:40'),(4,'Serious','2019-01-20 18:21:40','2019-01-20 18:21:40'),(5,'Critical','2019-01-20 18:21:40','2019-01-20 18:21:40'),(6,'Treated and Released','2019-01-20 18:21:40','2019-01-20 18:21:40'),(7,'Confirming patient deaths','2019-01-20 18:21:40','2019-01-20 18:21:40');
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
  `is_admitted` int(11) DEFAULT '0',
  `is_discharged` int(11) DEFAULT '0',
  `appointment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'html','5','0','8907018654','html@gmail.com','2017-02-19','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','B+',0,0,NULL,'2019-01-20 18:26:39','2019-01-20 19:37:12'),(2,'css','2','7','6907018654','css@gmail.com','2018-12-27','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','O+',0,0,NULL,'2019-01-20 18:28:04','2019-01-21 04:56:21'),(3,'bootstrap','4','0','5827018654','bootstrap@gmail.com','2018-10-19','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','A-',0,0,NULL,'2019-01-20 18:29:15','2019-01-21 04:57:11'),(4,'django','5','2','8907015435','django@gmail.com','2015-09-14','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','O-',0,0,NULL,'2019-01-20 18:30:49','2019-01-21 04:57:52'),(5,'aqwe','b','cwd','890705455','abc@gmail.com','2018-05-18','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','B+',0,0,NULL,'2019-01-20 18:33:13','2019-01-21 04:58:30'),(6,'php','1','3',NULL,'php@gmail.com',NULL,NULL,NULL,NULL,0,0,NULL,'2019-01-21 12:11:24','2019-01-21 12:11:24');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
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
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (2,6,'2019-01-20 19:52:56','2019-01-20 19:52:56','Screenshot_from_2019-01-06_21-26-11.png','image/png',184265,'2019-01-20 19:52:55');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,6,'2019-01-20 20:14:27','2019-01-20 20:14:27','Hijas_Resume.pdf','application/pdf',57020,'2019-01-20 20:14:27','demo');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_beds` int(11) DEFAULT '0',
  `department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `room_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (13,3,1,'2019-01-20 19:30:16','2019-01-20 19:30:16','R001');
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
INSERT INTO `schema_migrations` VALUES ('20181214101939'),('20181214103027'),('20181214103036'),('20181221043506'),('20181226072931'),('20181230061331'),('20190103070840'),('20190103072534'),('20190103165626'),('20190103165728'),('20190105064059'),('20190106155943'),('20190106170443'),('20190107114643'),('20190110071531'),('20190110071537'),('20190110193237'),('20190110193331');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'2019-01-20','08:35:00',1,1,'2019-01-20 19:35:41','2019-01-20 20:03:16'),(2,'2019-01-20','09:10:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(3,'2019-01-20','09:45:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(4,'2019-01-20','10:20:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(5,'2019-01-20','10:55:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(6,'2019-01-20','11:30:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(7,'2019-01-20','12:05:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(8,'2019-01-20','12:40:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(9,'2019-01-20','13:15:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(10,'2019-01-20','13:50:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(11,'2019-01-20','14:25:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(12,'2019-01-20','15:00:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(13,'2019-01-20','15:35:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(14,'2019-01-20','16:10:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(15,'2019-01-20','16:45:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41'),(16,'2019-01-20','17:20:00',0,1,'2019-01-20 19:35:41','2019-01-20 19:35:41');
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
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `slot_count_constant` time DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslots`
--

LOCK TABLES `timeslots` WRITE;
/*!40000 ALTER TABLE `timeslots` DISABLE KEYS */;
INSERT INTO `timeslots` VALUES (1,'2019-01-20 08:35:00','2019-01-20 17:35:00','00:35:00',1,'2019-01-20 19:35:41','2019-01-20 19:35:41');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hijas',' ','Ajmal','8907018654','Hijasajmal@gmail.com','Hijas@A1','A001',NULL,1,NULL,1,NULL,'Admin','2019-01-20 18:21:53','2019-01-20 18:21:53'),(2,'Python','2','6',NULL,'python@gmail.com','1123','Python@U1','',1,NULL,1,1,'Doctor','2019-01-20 18:24:18','2019-01-20 18:52:13'),(3,'Java','1','8',NULL,'java@gmail.com','2123','Java@U2','',1,NULL,1,2,'Doctor','2019-01-20 18:24:48','2019-01-21 04:53:09'),(4,'Ruby','2','5',NULL,'ruby@gmail.com','3123','Ruby@U3','',1,NULL,1,3,'Doctor','2019-01-20 18:25:07','2019-01-21 04:54:14'),(5,'perl','1','5',NULL,'perl@gmail.com','4123','perl@U4','',1,NULL,1,4,'Doctor','2019-01-20 18:25:27','2019-01-21 04:55:32'),(6,'html','5','0',NULL,'html@gmail.com','1123','html@U1','',1,NULL,1,1,'Patient','2019-01-20 18:26:39','2019-01-20 19:37:12'),(7,'css','2','7',NULL,'css@gmail.com','2123','css@U2','',1,NULL,1,2,'Patient','2019-01-20 18:28:04','2019-01-21 04:56:21'),(8,'bootstrap','4','0',NULL,'bootstrap@gmail.com','3123','bootstrap@U3','',1,NULL,1,3,'Patient','2019-01-20 18:29:15','2019-01-21 04:57:11'),(9,'django','5','2',NULL,'django@gmail.com','4123','django@U4','',1,NULL,1,4,'Patient','2019-01-20 18:30:49','2019-01-21 04:57:52'),(10,'aqwe','b','cwd',NULL,'abc@gmail.com','5123','aqwe@U5','',1,NULL,1,5,'Patient','2019-01-20 18:33:13','2019-01-21 04:58:30'),(11,'php','1','3',NULL,'php@gmail.com','6123','php@U6','',1,NULL,0,6,'Patient','2019-01-21 12:11:24','2019-01-21 12:11:24');
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

-- Dump completed on 2019-01-21 18:14:45
