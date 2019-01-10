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
  `date` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_diogonised` int(11) DEFAULT '0',
  `is_expired` int(11) DEFAULT '0',
  `slot_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (14,'fever','2019-01-09',0,0,1,1,'2019-01-10 05:39:02','2019-01-10 05:39:02'),(16,'fever','2020-01-01',0,0,16,1,'2019-01-10 12:38:01','2019-01-10 12:38:01'),(17,'gdhjhkjktadfjhjgdrtsydgjhkjgtyytukgljuytukhj','2019-01-10',0,0,30,1,'2019-01-10 12:40:50','2019-01-10 12:40:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (1,2,1,'2019-01-09 17:50:40','2019-01-09 17:50:40'),(2,2,1,'2019-01-09 17:50:40','2019-01-09 17:50:40'),(3,2,1,'2019-01-09 17:50:40','2019-01-09 17:50:40'),(4,2,1,'2019-01-09 17:50:40','2019-01-09 17:50:40'),(5,2,1,'2019-01-09 17:50:40','2019-01-09 17:50:40'),(6,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(7,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(8,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(9,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(10,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(11,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(12,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(13,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(14,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(15,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(16,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(17,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(18,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(19,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(20,2,2,'2019-01-09 17:50:46','2019-01-09 17:50:46'),(21,2,3,'2019-01-09 17:50:51','2019-01-09 17:50:51'),(22,2,3,'2019-01-09 17:50:51','2019-01-09 17:50:51'),(23,2,3,'2019-01-09 17:50:51','2019-01-09 17:50:51'),(24,2,3,'2019-01-09 17:50:51','2019-01-09 17:50:51'),(25,2,3,'2019-01-09 17:50:51','2019-01-09 17:50:51'),(26,2,4,'2019-01-09 17:50:57','2019-01-09 17:50:57'),(27,2,4,'2019-01-09 17:50:57','2019-01-09 17:50:57'),(28,2,4,'2019-01-09 17:50:57','2019-01-09 17:50:57');
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
INSERT INTO `bloodgroups` VALUES (1,'A+','2019-01-09 16:24:37','2019-01-09 16:24:37'),(2,'O+','2019-01-09 16:24:37','2019-01-09 16:24:37'),(3,'B+','2019-01-09 16:24:37','2019-01-09 16:24:37'),(4,'AB+','2019-01-09 16:24:37','2019-01-09 16:24:37'),(5,'A-','2019-01-09 16:24:37','2019-01-09 16:24:37'),(6,'O-','2019-01-09 16:24:37','2019-01-09 16:24:37'),(7,'B-','2019-01-09 16:24:38','2019-01-09 16:24:38'),(8,'AB-','2019-01-09 16:24:38','2019-01-09 16:24:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,NULL,NULL,'2019-01-09 16:24:38','2019-01-09 16:24:38'),(2,'Bangladesh','BD','2019-01-09 16:24:38','2019-01-09 16:24:38'),(3,'Barbados','BB','2019-01-09 16:24:38','2019-01-09 16:24:38'),(4,'Belarus','BY','2019-01-09 16:24:38','2019-01-09 16:24:38'),(5,'Belgium','BE','2019-01-09 16:24:38','2019-01-09 16:24:38'),(6,'Belize','BZ','2019-01-09 16:24:38','2019-01-09 16:24:38'),(7,'Benin','BJ','2019-01-09 16:24:38','2019-01-09 16:24:38'),(8,'Bermuda','BM','2019-01-09 16:24:38','2019-01-09 16:24:38'),(9,'Bhutan','BT','2019-01-09 16:24:38','2019-01-09 16:24:38'),(10,'Bolivia','BO','2019-01-09 16:24:39','2019-01-09 16:24:39'),(11,'Bosnia And Herzegovina','BA','2019-01-09 16:24:39','2019-01-09 16:24:39'),(12,'Botswana','BW','2019-01-09 16:24:39','2019-01-09 16:24:39'),(13,'Bouvet Island','BV','2019-01-09 16:24:39','2019-01-09 16:24:39'),(14,'Brazil','BR','2019-01-09 16:24:39','2019-01-09 16:24:39'),(15,'British Indian Ocean Territory','IO','2019-01-09 16:24:39','2019-01-09 16:24:39'),(16,'Brunei Darussalam','BN','2019-01-09 16:24:39','2019-01-09 16:24:39'),(17,'Bulgaria','BG','2019-01-09 16:24:39','2019-01-09 16:24:39'),(18,'Burkina Faso','BF','2019-01-09 16:24:39','2019-01-09 16:24:39'),(19,'Burundi','BI','2019-01-09 16:24:39','2019-01-09 16:24:39'),(20,'Cambodia','KH','2019-01-09 16:24:39','2019-01-09 16:24:39'),(21,'Cameroon','CM','2019-01-09 16:24:39','2019-01-09 16:24:39'),(22,'Canada','CA','2019-01-09 16:24:39','2019-01-09 16:24:39'),(23,'Cape Verde','CV','2019-01-09 16:24:39','2019-01-09 16:24:39'),(24,'Cayman Islands','KY','2019-01-09 16:24:39','2019-01-09 16:24:39'),(25,'Central African Republic','CF','2019-01-09 16:24:39','2019-01-09 16:24:39'),(26,'Chad','TD','2019-01-09 16:24:39','2019-01-09 16:24:39'),(27,'Chile','CL','2019-01-09 16:24:39','2019-01-09 16:24:39'),(28,'China','CN','2019-01-09 16:24:39','2019-01-09 16:24:39'),(29,'Christmas Island','CX','2019-01-09 16:24:39','2019-01-09 16:24:39'),(30,'Cocos (keeling) Islands','CC','2019-01-09 16:24:40','2019-01-09 16:24:40'),(31,'Colombia','CO','2019-01-09 16:24:40','2019-01-09 16:24:40'),(32,'Comoros','KM','2019-01-09 16:24:40','2019-01-09 16:24:40'),(33,'Congo','CG','2019-01-09 16:24:40','2019-01-09 16:24:40'),(34,'Congo, The Democratic Republic Of The','CD','2019-01-09 16:24:40','2019-01-09 16:24:40'),(35,'Cook Islands','CK','2019-01-09 16:24:40','2019-01-09 16:24:40'),(36,'Costa Rica','CR','2019-01-09 16:24:40','2019-01-09 16:24:40'),(37,'Cote D\'ivoire','CI','2019-01-09 16:24:40','2019-01-09 16:24:40'),(38,'Croatia','HR','2019-01-09 16:24:40','2019-01-09 16:24:40'),(39,'Cuba','CU','2019-01-09 16:24:40','2019-01-09 16:24:40'),(40,'Cyprus','CY','2019-01-09 16:24:40','2019-01-09 16:24:40'),(41,'Czech Republic','CZ','2019-01-09 16:24:40','2019-01-09 16:24:40'),(42,'Denmark','DK','2019-01-09 16:24:40','2019-01-09 16:24:40'),(43,'Djibouti','DJ','2019-01-09 16:24:40','2019-01-09 16:24:40'),(44,'Dominica','DM','2019-01-09 16:24:40','2019-01-09 16:24:40'),(45,'Dominican Republic','DO','2019-01-09 16:24:40','2019-01-09 16:24:40'),(46,'East Timor','TP','2019-01-09 16:24:40','2019-01-09 16:24:40'),(47,'Ecuador','EC','2019-01-09 16:24:40','2019-01-09 16:24:40'),(48,'Egypt','EG','2019-01-09 16:24:40','2019-01-09 16:24:40'),(49,'El Salvador','SV','2019-01-09 16:24:40','2019-01-09 16:24:40'),(50,'Equatorial Guinea','GQ','2019-01-09 16:24:40','2019-01-09 16:24:40'),(51,'Eritrea','ER','2019-01-09 16:24:40','2019-01-09 16:24:40'),(52,'Estonia','EE','2019-01-09 16:24:40','2019-01-09 16:24:40'),(53,'Ethiopia','ET','2019-01-09 16:24:40','2019-01-09 16:24:40'),(54,'Falkland Islands (malvinas)','FK','2019-01-09 16:24:41','2019-01-09 16:24:41'),(55,'Faroe Islands','FO','2019-01-09 16:24:41','2019-01-09 16:24:41'),(56,'Fiji','FJ','2019-01-09 16:24:41','2019-01-09 16:24:41'),(57,'Finland','FI','2019-01-09 16:24:41','2019-01-09 16:24:41'),(58,'France','FR','2019-01-09 16:24:41','2019-01-09 16:24:41'),(59,'French Guiana','GF','2019-01-09 16:24:41','2019-01-09 16:24:41'),(60,'French Polynesia','PF','2019-01-09 16:24:41','2019-01-09 16:24:41'),(61,'French Southern Territories','TF','2019-01-09 16:24:41','2019-01-09 16:24:41'),(62,'Gabon','GA','2019-01-09 16:24:41','2019-01-09 16:24:41'),(63,'Gambia','GM','2019-01-09 16:24:41','2019-01-09 16:24:41'),(64,'Georgia','GE','2019-01-09 16:24:41','2019-01-09 16:24:41'),(65,'Germany','DE','2019-01-09 16:24:41','2019-01-09 16:24:41'),(66,'Ghana','GH','2019-01-09 16:24:41','2019-01-09 16:24:41'),(67,'Gibraltar','GI','2019-01-09 16:24:41','2019-01-09 16:24:41'),(68,'Greece','GR','2019-01-09 16:24:41','2019-01-09 16:24:41'),(69,'Greenland','GL','2019-01-09 16:24:41','2019-01-09 16:24:41'),(70,'Grenada','GD','2019-01-09 16:24:41','2019-01-09 16:24:41'),(71,'Guadeloupe','GP','2019-01-09 16:24:41','2019-01-09 16:24:41'),(72,'Guam','GU','2019-01-09 16:24:41','2019-01-09 16:24:41'),(73,'Guatemala','GT','2019-01-09 16:24:41','2019-01-09 16:24:41'),(74,'Guinea','GN','2019-01-09 16:24:41','2019-01-09 16:24:41'),(75,'Guinea-bissau','GW','2019-01-09 16:24:41','2019-01-09 16:24:41'),(76,'Guyana','GY','2019-01-09 16:24:41','2019-01-09 16:24:41'),(77,'Haiti','HT','2019-01-09 16:24:41','2019-01-09 16:24:41'),(78,'Heard Island And Mcdonald Islands','HM','2019-01-09 16:24:41','2019-01-09 16:24:41'),(79,'Holy See (vatican City State)','VA','2019-01-09 16:24:42','2019-01-09 16:24:42'),(80,'Honduras','HN','2019-01-09 16:24:42','2019-01-09 16:24:42'),(81,'Hong Kong','HK','2019-01-09 16:24:42','2019-01-09 16:24:42'),(82,'Hungary','HU','2019-01-09 16:24:42','2019-01-09 16:24:42'),(83,'Iceland','IS','2019-01-09 16:24:42','2019-01-09 16:24:42'),(84,'India','IN','2019-01-09 16:24:42','2019-01-09 16:24:42'),(85,'Indonesia','ID','2019-01-09 16:24:42','2019-01-09 16:24:42'),(86,'Iran, Islamic Republic Of','IR','2019-01-09 16:24:42','2019-01-09 16:24:42'),(87,'Iraq','IQ','2019-01-09 16:24:42','2019-01-09 16:24:42'),(88,'Ireland','IE','2019-01-09 16:24:42','2019-01-09 16:24:42'),(89,'Israel','IL','2019-01-09 16:24:42','2019-01-09 16:24:42'),(90,'Italy','IT','2019-01-09 16:24:42','2019-01-09 16:24:42'),(91,'Jamaica','JM','2019-01-09 16:24:42','2019-01-09 16:24:42'),(92,'Japan','JP','2019-01-09 16:24:42','2019-01-09 16:24:42'),(93,'Jordan','JO','2019-01-09 16:24:42','2019-01-09 16:24:42'),(94,'Kazakstan','KZ','2019-01-09 16:24:42','2019-01-09 16:24:42'),(95,'Kenya','KE','2019-01-09 16:24:42','2019-01-09 16:24:42'),(96,'Kiribati','KI','2019-01-09 16:24:42','2019-01-09 16:24:42'),(97,'Korea, Democratic People\'s Republic Of','KP','2019-01-09 16:24:42','2019-01-09 16:24:42'),(98,'Korea, Republic Of','KR','2019-01-09 16:24:42','2019-01-09 16:24:42'),(99,'Kosovo','KV','2019-01-09 16:24:42','2019-01-09 16:24:42'),(100,'Kuwait','KW','2019-01-09 16:24:42','2019-01-09 16:24:42'),(101,'Kyrgyzstan','KG','2019-01-09 16:24:42','2019-01-09 16:24:42'),(102,'Lao People\'s Democratic Republic','LA','2019-01-09 16:24:43','2019-01-09 16:24:43'),(103,'Latvia','LV','2019-01-09 16:24:43','2019-01-09 16:24:43'),(104,'Lebanon','LB','2019-01-09 16:24:43','2019-01-09 16:24:43'),(105,'Lesotho','LS','2019-01-09 16:24:43','2019-01-09 16:24:43'),(106,'Liberia','LR','2019-01-09 16:24:43','2019-01-09 16:24:43'),(107,'Libyan Arab Jamahiriya','LY','2019-01-09 16:24:43','2019-01-09 16:24:43'),(108,'Liechtenstein','LI','2019-01-09 16:24:43','2019-01-09 16:24:43'),(109,'Lithuania','LT','2019-01-09 16:24:43','2019-01-09 16:24:43'),(110,'Luxembourg','LU','2019-01-09 16:24:43','2019-01-09 16:24:43'),(111,'Macau','MO','2019-01-09 16:24:43','2019-01-09 16:24:43'),(112,'Macedonia, The Former Yugoslav Republic Of','MK','2019-01-09 16:24:43','2019-01-09 16:24:43'),(113,'Madagascar','MG','2019-01-09 16:24:43','2019-01-09 16:24:43'),(114,'Malawi','MW','2019-01-09 16:24:43','2019-01-09 16:24:43'),(115,'Malaysia','MY','2019-01-09 16:24:43','2019-01-09 16:24:43'),(116,'Maldives','MV','2019-01-09 16:24:43','2019-01-09 16:24:43'),(117,'Mali','ML','2019-01-09 16:24:44','2019-01-09 16:24:44'),(118,'Malta','MT','2019-01-09 16:24:44','2019-01-09 16:24:44'),(119,'Marshall Islands','MH','2019-01-09 16:24:44','2019-01-09 16:24:44'),(120,'Martinique','MQ','2019-01-09 16:24:44','2019-01-09 16:24:44'),(121,'Mauritania','MR','2019-01-09 16:24:44','2019-01-09 16:24:44'),(122,'Mauritius','MU','2019-01-09 16:24:44','2019-01-09 16:24:44'),(123,'Mayotte','YT','2019-01-09 16:24:44','2019-01-09 16:24:44'),(124,'Mexico','MX','2019-01-09 16:24:44','2019-01-09 16:24:44'),(125,'Micronesia, Federated States Of','FM','2019-01-09 16:24:44','2019-01-09 16:24:44'),(126,'Moldova, Republic Of','MD','2019-01-09 16:24:44','2019-01-09 16:24:44'),(127,'Monaco','MC','2019-01-09 16:24:44','2019-01-09 16:24:44'),(128,'Mongolia','MN','2019-01-09 16:24:44','2019-01-09 16:24:44'),(129,'Montserrat','MS','2019-01-09 16:24:44','2019-01-09 16:24:44'),(130,'Montenegro','ME','2019-01-09 16:24:44','2019-01-09 16:24:44'),(131,'Morocco','MA','2019-01-09 16:24:44','2019-01-09 16:24:44'),(132,'Mozambique','MZ','2019-01-09 16:24:45','2019-01-09 16:24:45'),(133,'Myanmar','MM','2019-01-09 16:24:45','2019-01-09 16:24:45'),(134,'Namibia','NA','2019-01-09 16:24:45','2019-01-09 16:24:45'),(135,'Nauru','NR','2019-01-09 16:24:45','2019-01-09 16:24:45'),(136,'Nepal','NP','2019-01-09 16:24:45','2019-01-09 16:24:45'),(137,'Netherlands','NL','2019-01-09 16:24:45','2019-01-09 16:24:45'),(138,'Netherlands Antilles','AN','2019-01-09 16:24:45','2019-01-09 16:24:45'),(139,'New Caledonia','NC','2019-01-09 16:24:45','2019-01-09 16:24:45'),(140,'New Zealand','NZ','2019-01-09 16:24:45','2019-01-09 16:24:45'),(141,'Nicaragua','NI','2019-01-09 16:24:45','2019-01-09 16:24:45'),(142,'Niger','NE','2019-01-09 16:24:45','2019-01-09 16:24:45'),(143,'Nigeria','NG','2019-01-09 16:24:45','2019-01-09 16:24:45'),(144,'Niue','NU','2019-01-09 16:24:45','2019-01-09 16:24:45'),(145,'Norfolk Island','NF','2019-01-09 16:24:45','2019-01-09 16:24:45'),(146,'Northern Mariana Islands','MP','2019-01-09 16:24:45','2019-01-09 16:24:45'),(147,'Norway','NO','2019-01-09 16:24:46','2019-01-09 16:24:46'),(148,'Oman','OM','2019-01-09 16:24:46','2019-01-09 16:24:46'),(149,'Pakistan','PK','2019-01-09 16:24:46','2019-01-09 16:24:46'),(150,'Palau','PW','2019-01-09 16:24:46','2019-01-09 16:24:46'),(151,'Palestinian Territory, Occupied','PS','2019-01-09 16:24:46','2019-01-09 16:24:46'),(152,'Panama','PA','2019-01-09 16:24:46','2019-01-09 16:24:46'),(153,'Papua New Guinea','PG','2019-01-09 16:24:46','2019-01-09 16:24:46'),(154,'Paraguay','PY','2019-01-09 16:24:46','2019-01-09 16:24:46'),(155,'Peru','PE','2019-01-09 16:24:46','2019-01-09 16:24:46'),(156,'Philippines','PH','2019-01-09 16:24:46','2019-01-09 16:24:46'),(157,'Pitcairn','PN','2019-01-09 16:24:46','2019-01-09 16:24:46'),(158,'Poland','PL','2019-01-09 16:24:46','2019-01-09 16:24:46'),(159,'Portugal','PT','2019-01-09 16:24:46','2019-01-09 16:24:46'),(160,'Puerto Rico','PR','2019-01-09 16:24:46','2019-01-09 16:24:46'),(161,'Qatar','QA','2019-01-09 16:24:46','2019-01-09 16:24:46'),(162,'Reunion','RE','2019-01-09 16:24:47','2019-01-09 16:24:47'),(163,'Romania','RO','2019-01-09 16:24:47','2019-01-09 16:24:47'),(164,'Russian Federation','RU','2019-01-09 16:24:47','2019-01-09 16:24:47'),(165,'Rwanda','RW','2019-01-09 16:24:47','2019-01-09 16:24:47'),(166,'Saint Helena','SH','2019-01-09 16:24:47','2019-01-09 16:24:47'),(167,'Saint Kitts And Nevis','KN','2019-01-09 16:24:47','2019-01-09 16:24:47'),(168,'Saint Lucia','LC','2019-01-09 16:24:47','2019-01-09 16:24:47'),(169,'Saint Pierre And Miquelon','PM','2019-01-09 16:24:47','2019-01-09 16:24:47'),(170,'Saint Vincent And The Grenadines','VC','2019-01-09 16:24:47','2019-01-09 16:24:47'),(171,'Samoa','WS','2019-01-09 16:24:47','2019-01-09 16:24:47'),(172,'San Marino','SM','2019-01-09 16:24:47','2019-01-09 16:24:47'),(173,'Sao Tome And Principe','ST','2019-01-09 16:24:47','2019-01-09 16:24:47'),(174,'Saudi Arabia','SA','2019-01-09 16:24:47','2019-01-09 16:24:47'),(175,'Senegal','SN','2019-01-09 16:24:47','2019-01-09 16:24:47'),(176,'Serbia','RS','2019-01-09 16:24:47','2019-01-09 16:24:47'),(177,'Seychelles','SC','2019-01-09 16:24:47','2019-01-09 16:24:47'),(178,'Sierra Leone','SL','2019-01-09 16:24:48','2019-01-09 16:24:48'),(179,'Singapore','SG','2019-01-09 16:24:48','2019-01-09 16:24:48'),(180,'Slovakia','SK','2019-01-09 16:24:48','2019-01-09 16:24:48'),(181,'Slovenia','SI','2019-01-09 16:24:48','2019-01-09 16:24:48'),(182,'Solomon Islands','SB','2019-01-09 16:24:48','2019-01-09 16:24:48'),(183,'Somalia','SO','2019-01-09 16:24:48','2019-01-09 16:24:48'),(184,'South Africa','ZA','2019-01-09 16:24:48','2019-01-09 16:24:48'),(185,'South Georgia And The South Sandwich Islands','GS','2019-01-09 16:24:48','2019-01-09 16:24:48'),(186,'Spain','ES','2019-01-09 16:24:48','2019-01-09 16:24:48'),(187,'Sri Lanka','LK','2019-01-09 16:24:48','2019-01-09 16:24:48'),(188,'Sudan','SD','2019-01-09 16:24:48','2019-01-09 16:24:48'),(189,'Suriname','SR','2019-01-09 16:24:48','2019-01-09 16:24:48'),(190,'Svalbard And Jan Mayen','SJ','2019-01-09 16:24:48','2019-01-09 16:24:48'),(191,'Swaziland','SZ','2019-01-09 16:24:48','2019-01-09 16:24:48'),(192,'Sweden','SE','2019-01-09 16:24:49','2019-01-09 16:24:49'),(193,'Switzerland','CH','2019-01-09 16:24:49','2019-01-09 16:24:49'),(194,'Syrian Arab Republic','SY','2019-01-09 16:24:49','2019-01-09 16:24:49'),(195,'Taiwan, Province Of China','TW','2019-01-09 16:24:49','2019-01-09 16:24:49'),(196,'Tajikistan','TJ','2019-01-09 16:24:49','2019-01-09 16:24:49'),(197,'Tanzania, United Republic Of','TZ','2019-01-09 16:24:49','2019-01-09 16:24:49'),(198,'Thailand','TH','2019-01-09 16:24:49','2019-01-09 16:24:49'),(199,'Togo','TG','2019-01-09 16:24:49','2019-01-09 16:24:49'),(200,'Tokelau','TK','2019-01-09 16:24:49','2019-01-09 16:24:49'),(201,'Tonga','TO','2019-01-09 16:24:49','2019-01-09 16:24:49'),(202,'Trinidad And Tobago','TT','2019-01-09 16:24:49','2019-01-09 16:24:49'),(203,'Tunisia','TN','2019-01-09 16:24:49','2019-01-09 16:24:49'),(204,'Turkey','TR','2019-01-09 16:24:49','2019-01-09 16:24:49'),(205,'Turkmenistan','TM','2019-01-09 16:24:49','2019-01-09 16:24:49'),(206,'Turks And Caicos Islands','TC','2019-01-09 16:24:50','2019-01-09 16:24:50'),(207,'Tuvalu','TV','2019-01-09 16:24:50','2019-01-09 16:24:50'),(208,'Uganda','UG','2019-01-09 16:24:50','2019-01-09 16:24:50'),(209,'Ukraine','UA','2019-01-09 16:24:50','2019-01-09 16:24:50'),(210,'United Arab Emirates','AE','2019-01-09 16:24:50','2019-01-09 16:24:50'),(211,'United Kingdom','GB','2019-01-09 16:24:50','2019-01-09 16:24:50'),(212,'United States','US','2019-01-09 16:24:50','2019-01-09 16:24:50'),(213,'United States Minor Outlying Islands','UM','2019-01-09 16:24:50','2019-01-09 16:24:50'),(214,'Uruguay','UY','2019-01-09 16:24:50','2019-01-09 16:24:50'),(215,'Uzbekistan','UZ','2019-01-09 16:24:50','2019-01-09 16:24:50'),(216,'Vanuatu','VU','2019-01-09 16:24:50','2019-01-09 16:24:50'),(217,'Venezuela','VE','2019-01-09 16:24:50','2019-01-09 16:24:50'),(218,'Viet Nam','VN','2019-01-09 16:24:50','2019-01-09 16:24:50'),(219,'Virgin Islands, British','VG','2019-01-09 16:24:51','2019-01-09 16:24:51'),(220,'Virgin Islands, U.s.','VI','2019-01-09 16:24:51','2019-01-09 16:24:51'),(221,'Wallis And Futuna','WF','2019-01-09 16:24:51','2019-01-09 16:24:51'),(222,'Western Sahara','EH','2019-01-09 16:24:51','2019-01-09 16:24:51'),(223,'Yemen','YE','2019-01-09 16:24:51','2019-01-09 16:24:51'),(224,'Zambia','ZM','2019-01-09 16:24:51','2019-01-09 16:24:51'),(225,'Zimbabwe','ZW','2019-01-09 16:24:51','2019-01-09 16:24:51');
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
INSERT INTO `departments` VALUES (1,'Anesthesiology & Perioperative Care','2019-01-09 17:29:23','2019-01-09 17:29:24'),(2,'Emergency Medicine','2019-01-09 17:29:28','2019-01-09 17:29:28'),(3,'Dental','2019-01-09 17:29:32','2019-01-09 17:29:32'),(4,'Casuality','2019-01-09 17:29:36','2019-01-09 17:29:36'),(5,'Cardiology','2019-01-09 17:29:40','2019-01-09 17:29:40'),(6,'Dermatology','2019-01-09 17:29:44','2019-01-09 17:29:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Hijas','','Ajmal',NULL,'Hijas@gmail.com',NULL,NULL,NULL,NULL,NULL,1,'2019-01-09 17:42:08','2019-01-10 06:53:32','--- !map:HashWithIndifferentAccess \ntypefile: 1.png\n',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Male','2019-01-09 16:24:38','2019-01-09 16:24:38'),(2,'Female','2019-01-09 16:24:38','2019-01-09 16:24:38'),(3,'Other','2019-01-09 16:24:38','2019-01-09 16:24:38');
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
INSERT INTO `options` VALUES (1,'Yes',NULL,NULL),(2,'No',NULL,NULL),(3,'Yes',NULL,NULL),(4,'No',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_conditions`
--

LOCK TABLES `patient_conditions` WRITE;
/*!40000 ALTER TABLE `patient_conditions` DISABLE KEYS */;
INSERT INTO `patient_conditions` VALUES (1,'Undetermined','2019-01-09 16:24:38','2019-01-09 16:24:38'),(2,'Good','2019-01-09 16:24:38','2019-01-09 16:24:38'),(3,'Fair','2019-01-09 16:24:38','2019-01-09 16:24:38'),(4,'Serious','2019-01-09 16:24:38','2019-01-09 16:24:38'),(5,'Critical','2019-01-09 16:24:38','2019-01-09 16:24:38'),(6,'Treated and Released','2019-01-09 16:24:38','2019-01-09 16:24:38'),(7,'Confirming patient deaths','2019-01-09 16:24:38','2019-01-09 16:24:38');
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
  `is_admitted` int(11) DEFAULT '2',
  `is_discharged` int(11) DEFAULT '2',
  `appointment_id` int(11) DEFAULT NULL,
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
INSERT INTO `patients` VALUES (1,'Hijas','','Ajmal','8907018654','Hija@gmail.com','2014-03-06','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','A+',2,2,NULL,'2019-01-09 18:26:31','2019-01-10 11:32:21',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (30,2,'2019-01-10 11:12:05','2019-01-10 11:12:05','Screenshot_from_2018-12-20_09-53-05.png','image/png',452870,'2019-01-10 11:12:05'),(31,6,'2019-01-10 11:28:27','2019-01-10 11:28:27','Screenshot_from_2018-12-26_10-34-02.png','image/png',366291,'2019-01-10 11:28:27');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,5,4,'2019-01-09 17:50:40','2019-01-09 17:50:40'),(2,15,5,'2019-01-09 17:50:45','2019-01-09 17:50:45'),(3,5,1,'2019-01-09 17:50:51','2019-01-09 17:50:51'),(4,3,3,'2019-01-09 17:50:57','2019-01-09 17:50:57');
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
INSERT INTO `schema_migrations` VALUES ('20181214101939'),('20181214103027'),('20181214103036'),('20181221043506'),('20181226072931'),('20181230061331'),('20190103070840'),('20190103072534'),('20190103165626'),('20190103165728'),('20190103172419'),('20190105064059'),('20190106155943'),('20190106170443'),('20190106173833'),('20190107114643'),('20190109085314'),('20190109100544'),('20190110070524'),('20190110070650'),('20190110070849'),('20190110071346'),('20190110071355'),('20190110071531'),('20190110071537');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'2019-01-09','08:44:00',1,1,'2019-01-09 17:44:52','2019-01-10 05:39:02'),(2,'2019-01-09','08:49:00',0,1,'2019-01-09 17:44:52','2019-01-09 19:03:48'),(3,'2019-01-09','08:54:00',0,1,'2019-01-09 17:44:52','2019-01-09 18:59:33'),(4,'2019-01-09','08:59:00',0,1,'2019-01-09 17:44:52','2019-01-09 18:45:39'),(5,'2019-01-09','09:05:00',0,1,'2019-01-09 17:44:52','2019-01-09 17:44:52'),(6,'2019-01-09','09:10:00',0,1,'2019-01-09 17:44:52','2019-01-09 17:44:52'),(7,'2019-01-09','09:15:00',0,1,'2019-01-09 17:44:52','2019-01-09 19:10:26'),(8,'2019-01-09','09:20:00',0,1,'2019-01-09 17:44:52','2019-01-09 17:44:52'),(9,'2019-01-09','09:25:00',0,1,'2019-01-09 17:44:53','2019-01-09 17:44:53'),(10,'2019-01-09','09:30:00',0,1,'2019-01-09 17:44:53','2019-01-09 19:03:13'),(11,'2019-01-09','09:35:00',0,1,'2019-01-09 17:44:53','2019-01-09 19:13:26'),(12,'2019-01-09','09:40:00',0,1,'2019-01-09 17:44:53','2019-01-09 17:44:53'),(13,'2019-01-09','09:45:00',0,1,'2019-01-09 17:44:53','2019-01-09 17:44:53'),(14,'2019-01-09','09:50:00',0,1,'2019-01-09 17:44:53','2019-01-09 19:12:32'),(15,'2019-01-09','09:55:00',0,1,'2019-01-09 17:44:53','2019-01-09 18:53:33'),(16,'2020-01-01','05:19:00',1,2,'2019-01-10 05:20:02','2019-01-10 12:38:02'),(17,'2020-01-01','05:24:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(18,'2020-01-01','05:29:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(19,'2020-01-01','05:34:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(20,'2020-01-01','05:39:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:24:13'),(21,'2020-01-01','05:44:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(22,'2020-01-01','05:49:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(23,'2020-01-01','05:54:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(24,'2020-01-01','05:59:00',0,2,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(25,'2019-01-10','05:42:00',0,3,'2019-01-10 05:42:27','2019-01-10 05:42:27'),(26,'2019-01-10','05:47:00',0,3,'2019-01-10 05:42:27','2019-01-10 05:42:27'),(27,'2019-01-10','05:52:00',0,3,'2019-01-10 05:42:27','2019-01-10 05:42:27'),(28,'2019-01-10','05:57:00',1,3,'2019-01-10 05:42:27','2019-01-10 05:47:04'),(29,'2019-01-10','12:39:00',0,4,'2019-01-10 12:40:01','2019-01-10 12:40:01'),(30,'2019-01-10','12:44:00',1,4,'2019-01-10 12:40:01','2019-01-10 12:40:50'),(31,'2019-01-10','12:49:00',0,4,'2019-01-10 12:40:01','2019-01-10 12:40:01'),(32,'2019-01-10','12:54:00',0,4,'2019-01-10 12:40:01','2019-01-10 12:40:01'),(33,'2019-01-10','12:59:00',0,4,'2019-01-10 12:40:01','2019-01-10 12:40:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslots`
--

LOCK TABLES `timeslots` WRITE;
/*!40000 ALTER TABLE `timeslots` DISABLE KEYS */;
INSERT INTO `timeslots` VALUES (1,'2019-01-09','08:44:00','10:44:00','00:05:00',1,'2019-01-09 17:44:52','2019-01-09 17:44:52'),(2,'2020-01-01','05:19:00','06:19:00','00:05:00',1,'2019-01-10 05:20:02','2019-01-10 05:20:02'),(3,'2019-01-10','05:42:00','06:42:00','00:05:00',1,'2019-01-10 05:42:27','2019-01-10 05:42:27'),(4,'2019-01-10','12:39:00','13:39:00','00:05:00',1,'2019-01-10 12:40:00','2019-01-10 12:40:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hijas',' ','Ajmal','8907018654','Hijasajmal@gmail.com','.virus','A001',NULL,1,NULL,1,NULL,'Admin','2019-01-09 16:24:51','2019-01-09 16:24:51'),(2,NULL,NULL,NULL,NULL,NULL,'Hijas@U1','Hijas@U2','',1,NULL,1,1,'Doctor','2019-01-09 17:42:07','2019-01-09 17:42:08'),(6,NULL,NULL,NULL,NULL,NULL,'Hijas@U1','Hijas@U6','',1,NULL,1,1,'Patient','2019-01-09 18:26:31','2019-01-10 11:32:21');
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

-- Dump completed on 2019-01-10 18:32:12
