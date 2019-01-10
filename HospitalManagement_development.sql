-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: HospitalManagement_development
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB-0ubuntu0.18.04.1

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
  `is_discharged` int(11) DEFAULT '2',
  `discharged_date` datetime DEFAULT NULL,
  `discharged_time` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admitted_records`
--

LOCK TABLES `admitted_records` WRITE;
/*!40000 ALTER TABLE `admitted_records` DISABLE KEYS */;
INSERT INTO `admitted_records` VALUES (1,4,'2019-01-11 00:00:00','2019-01-10 00:29:00',2,NULL,NULL,1,'2019-01-10 18:59:50','2019-01-10 18:59:50');
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
  `patient_id` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (2,'fever','2019-01-11',1,0,3,1,'2019-01-10 18:11:05','2019-01-10 18:37:07'),(3,'abcd','2019-01-17',0,0,15,1,'2019-01-10 18:34:05','2019-01-10 18:34:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
INSERT INTO `beds` VALUES (1,2,1,'2019-01-10 18:57:57','2019-01-10 18:57:57'),(2,2,1,'2019-01-10 18:57:57','2019-01-10 18:57:57'),(3,2,1,'2019-01-10 18:57:57','2019-01-10 18:57:57'),(4,1,1,'2019-01-10 18:57:57','2019-01-10 18:59:50'),(5,2,1,'2019-01-10 18:57:57','2019-01-10 18:57:57'),(6,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(7,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(8,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(9,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(10,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(11,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(12,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(13,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(14,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(15,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(16,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(17,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(18,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(19,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03'),(20,2,2,'2019-01-10 18:58:03','2019-01-10 18:58:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodgroups`
--

LOCK TABLES `bloodgroups` WRITE;
/*!40000 ALTER TABLE `bloodgroups` DISABLE KEYS */;
INSERT INTO `bloodgroups` VALUES (9,'A+','2019-01-10 15:56:26','2019-01-10 15:56:26'),(10,'O+','2019-01-10 15:56:26','2019-01-10 15:56:26'),(11,'B+','2019-01-10 15:56:26','2019-01-10 15:56:26'),(12,'AB+','2019-01-10 15:56:26','2019-01-10 15:56:26'),(13,'A-','2019-01-10 15:56:26','2019-01-10 15:56:26'),(14,'O-','2019-01-10 15:56:26','2019-01-10 15:56:26'),(15,'B-','2019-01-10 15:56:26','2019-01-10 15:56:26'),(16,'AB-','2019-01-10 15:56:26','2019-01-10 15:56:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,10,'sdf',1,1,2,'2019-01-10 18:37:07','2019-01-10 18:59:50');
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
INSERT INTO `countries` VALUES (1,NULL,NULL,'2019-01-10 15:56:27','2019-01-10 15:56:27'),(2,'Bangladesh','BD','2019-01-10 15:56:27','2019-01-10 15:56:27'),(3,'Barbados','BB','2019-01-10 15:56:27','2019-01-10 15:56:27'),(4,'Belarus','BY','2019-01-10 15:56:27','2019-01-10 15:56:27'),(5,'Belgium','BE','2019-01-10 15:56:27','2019-01-10 15:56:27'),(6,'Belize','BZ','2019-01-10 15:56:27','2019-01-10 15:56:27'),(7,'Benin','BJ','2019-01-10 15:56:27','2019-01-10 15:56:27'),(8,'Bermuda','BM','2019-01-10 15:56:27','2019-01-10 15:56:27'),(9,'Bhutan','BT','2019-01-10 15:56:27','2019-01-10 15:56:27'),(10,'Bolivia','BO','2019-01-10 15:56:27','2019-01-10 15:56:27'),(11,'Bosnia And Herzegovina','BA','2019-01-10 15:56:27','2019-01-10 15:56:27'),(12,'Botswana','BW','2019-01-10 15:56:27','2019-01-10 15:56:27'),(13,'Bouvet Island','BV','2019-01-10 15:56:27','2019-01-10 15:56:27'),(14,'Brazil','BR','2019-01-10 15:56:27','2019-01-10 15:56:27'),(15,'British Indian Ocean Territory','IO','2019-01-10 15:56:27','2019-01-10 15:56:27'),(16,'Brunei Darussalam','BN','2019-01-10 15:56:27','2019-01-10 15:56:27'),(17,'Bulgaria','BG','2019-01-10 15:56:28','2019-01-10 15:56:28'),(18,'Burkina Faso','BF','2019-01-10 15:56:28','2019-01-10 15:56:28'),(19,'Burundi','BI','2019-01-10 15:56:28','2019-01-10 15:56:28'),(20,'Cambodia','KH','2019-01-10 15:56:28','2019-01-10 15:56:28'),(21,'Cameroon','CM','2019-01-10 15:56:28','2019-01-10 15:56:28'),(22,'Canada','CA','2019-01-10 15:56:28','2019-01-10 15:56:28'),(23,'Cape Verde','CV','2019-01-10 15:56:28','2019-01-10 15:56:28'),(24,'Cayman Islands','KY','2019-01-10 15:56:28','2019-01-10 15:56:28'),(25,'Central African Republic','CF','2019-01-10 15:56:28','2019-01-10 15:56:28'),(26,'Chad','TD','2019-01-10 15:56:28','2019-01-10 15:56:28'),(27,'Chile','CL','2019-01-10 15:56:28','2019-01-10 15:56:28'),(28,'China','CN','2019-01-10 15:56:28','2019-01-10 15:56:28'),(29,'Christmas Island','CX','2019-01-10 15:56:28','2019-01-10 15:56:28'),(30,'Cocos (keeling) Islands','CC','2019-01-10 15:56:28','2019-01-10 15:56:28'),(31,'Colombia','CO','2019-01-10 15:56:28','2019-01-10 15:56:28'),(32,'Comoros','KM','2019-01-10 15:56:28','2019-01-10 15:56:28'),(33,'Congo','CG','2019-01-10 15:56:28','2019-01-10 15:56:28'),(34,'Congo, The Democratic Republic Of The','CD','2019-01-10 15:56:28','2019-01-10 15:56:28'),(35,'Cook Islands','CK','2019-01-10 15:56:28','2019-01-10 15:56:28'),(36,'Costa Rica','CR','2019-01-10 15:56:28','2019-01-10 15:56:28'),(37,'Cote D\'ivoire','CI','2019-01-10 15:56:28','2019-01-10 15:56:28'),(38,'Croatia','HR','2019-01-10 15:56:28','2019-01-10 15:56:28'),(39,'Cuba','CU','2019-01-10 15:56:28','2019-01-10 15:56:28'),(40,'Cyprus','CY','2019-01-10 15:56:28','2019-01-10 15:56:28'),(41,'Czech Republic','CZ','2019-01-10 15:56:28','2019-01-10 15:56:28'),(42,'Denmark','DK','2019-01-10 15:56:28','2019-01-10 15:56:28'),(43,'Djibouti','DJ','2019-01-10 15:56:28','2019-01-10 15:56:28'),(44,'Dominica','DM','2019-01-10 15:56:28','2019-01-10 15:56:28'),(45,'Dominican Republic','DO','2019-01-10 15:56:29','2019-01-10 15:56:29'),(46,'East Timor','TP','2019-01-10 15:56:29','2019-01-10 15:56:29'),(47,'Ecuador','EC','2019-01-10 15:56:29','2019-01-10 15:56:29'),(48,'Egypt','EG','2019-01-10 15:56:29','2019-01-10 15:56:29'),(49,'El Salvador','SV','2019-01-10 15:56:29','2019-01-10 15:56:29'),(50,'Equatorial Guinea','GQ','2019-01-10 15:56:29','2019-01-10 15:56:29'),(51,'Eritrea','ER','2019-01-10 15:56:29','2019-01-10 15:56:29'),(52,'Estonia','EE','2019-01-10 15:56:29','2019-01-10 15:56:29'),(53,'Ethiopia','ET','2019-01-10 15:56:29','2019-01-10 15:56:29'),(54,'Falkland Islands (malvinas)','FK','2019-01-10 15:56:29','2019-01-10 15:56:29'),(55,'Faroe Islands','FO','2019-01-10 15:56:29','2019-01-10 15:56:29'),(56,'Fiji','FJ','2019-01-10 15:56:29','2019-01-10 15:56:29'),(57,'Finland','FI','2019-01-10 15:56:29','2019-01-10 15:56:29'),(58,'France','FR','2019-01-10 15:56:29','2019-01-10 15:56:29'),(59,'French Guiana','GF','2019-01-10 15:56:29','2019-01-10 15:56:29'),(60,'French Polynesia','PF','2019-01-10 15:56:29','2019-01-10 15:56:29'),(61,'French Southern Territories','TF','2019-01-10 15:56:29','2019-01-10 15:56:29'),(62,'Gabon','GA','2019-01-10 15:56:29','2019-01-10 15:56:29'),(63,'Gambia','GM','2019-01-10 15:56:29','2019-01-10 15:56:29'),(64,'Georgia','GE','2019-01-10 15:56:29','2019-01-10 15:56:29'),(65,'Germany','DE','2019-01-10 15:56:29','2019-01-10 15:56:29'),(66,'Ghana','GH','2019-01-10 15:56:29','2019-01-10 15:56:29'),(67,'Gibraltar','GI','2019-01-10 15:56:29','2019-01-10 15:56:29'),(68,'Greece','GR','2019-01-10 15:56:29','2019-01-10 15:56:29'),(69,'Greenland','GL','2019-01-10 15:56:30','2019-01-10 15:56:30'),(70,'Grenada','GD','2019-01-10 15:56:30','2019-01-10 15:56:30'),(71,'Guadeloupe','GP','2019-01-10 15:56:30','2019-01-10 15:56:30'),(72,'Guam','GU','2019-01-10 15:56:30','2019-01-10 15:56:30'),(73,'Guatemala','GT','2019-01-10 15:56:30','2019-01-10 15:56:30'),(74,'Guinea','GN','2019-01-10 15:56:30','2019-01-10 15:56:30'),(75,'Guinea-bissau','GW','2019-01-10 15:56:30','2019-01-10 15:56:30'),(76,'Guyana','GY','2019-01-10 15:56:30','2019-01-10 15:56:30'),(77,'Haiti','HT','2019-01-10 15:56:30','2019-01-10 15:56:30'),(78,'Heard Island And Mcdonald Islands','HM','2019-01-10 15:56:30','2019-01-10 15:56:30'),(79,'Holy See (vatican City State)','VA','2019-01-10 15:56:30','2019-01-10 15:56:30'),(80,'Honduras','HN','2019-01-10 15:56:30','2019-01-10 15:56:30'),(81,'Hong Kong','HK','2019-01-10 15:56:30','2019-01-10 15:56:30'),(82,'Hungary','HU','2019-01-10 15:56:30','2019-01-10 15:56:30'),(83,'Iceland','IS','2019-01-10 15:56:30','2019-01-10 15:56:30'),(84,'India','IN','2019-01-10 15:56:30','2019-01-10 15:56:30'),(85,'Indonesia','ID','2019-01-10 15:56:30','2019-01-10 15:56:30'),(86,'Iran, Islamic Republic Of','IR','2019-01-10 15:56:30','2019-01-10 15:56:30'),(87,'Iraq','IQ','2019-01-10 15:56:30','2019-01-10 15:56:30'),(88,'Ireland','IE','2019-01-10 15:56:30','2019-01-10 15:56:30'),(89,'Israel','IL','2019-01-10 15:56:30','2019-01-10 15:56:30'),(90,'Italy','IT','2019-01-10 15:56:30','2019-01-10 15:56:30'),(91,'Jamaica','JM','2019-01-10 15:56:30','2019-01-10 15:56:30'),(92,'Japan','JP','2019-01-10 15:56:31','2019-01-10 15:56:31'),(93,'Jordan','JO','2019-01-10 15:56:31','2019-01-10 15:56:31'),(94,'Kazakstan','KZ','2019-01-10 15:56:31','2019-01-10 15:56:31'),(95,'Kenya','KE','2019-01-10 15:56:31','2019-01-10 15:56:31'),(96,'Kiribati','KI','2019-01-10 15:56:31','2019-01-10 15:56:31'),(97,'Korea, Democratic People\'s Republic Of','KP','2019-01-10 15:56:31','2019-01-10 15:56:31'),(98,'Korea, Republic Of','KR','2019-01-10 15:56:31','2019-01-10 15:56:31'),(99,'Kosovo','KV','2019-01-10 15:56:31','2019-01-10 15:56:31'),(100,'Kuwait','KW','2019-01-10 15:56:31','2019-01-10 15:56:31'),(101,'Kyrgyzstan','KG','2019-01-10 15:56:31','2019-01-10 15:56:31'),(102,'Lao People\'s Democratic Republic','LA','2019-01-10 15:56:31','2019-01-10 15:56:31'),(103,'Latvia','LV','2019-01-10 15:56:31','2019-01-10 15:56:31'),(104,'Lebanon','LB','2019-01-10 15:56:31','2019-01-10 15:56:31'),(105,'Lesotho','LS','2019-01-10 15:56:31','2019-01-10 15:56:31'),(106,'Liberia','LR','2019-01-10 15:56:31','2019-01-10 15:56:31'),(107,'Libyan Arab Jamahiriya','LY','2019-01-10 15:56:31','2019-01-10 15:56:31'),(108,'Liechtenstein','LI','2019-01-10 15:56:31','2019-01-10 15:56:31'),(109,'Lithuania','LT','2019-01-10 15:56:31','2019-01-10 15:56:31'),(110,'Luxembourg','LU','2019-01-10 15:56:31','2019-01-10 15:56:31'),(111,'Macau','MO','2019-01-10 15:56:31','2019-01-10 15:56:31'),(112,'Macedonia, The Former Yugoslav Republic Of','MK','2019-01-10 15:56:31','2019-01-10 15:56:31'),(113,'Madagascar','MG','2019-01-10 15:56:31','2019-01-10 15:56:31'),(114,'Malawi','MW','2019-01-10 15:56:31','2019-01-10 15:56:31'),(115,'Malaysia','MY','2019-01-10 15:56:31','2019-01-10 15:56:31'),(116,'Maldives','MV','2019-01-10 15:56:32','2019-01-10 15:56:32'),(117,'Mali','ML','2019-01-10 15:56:32','2019-01-10 15:56:32'),(118,'Malta','MT','2019-01-10 15:56:32','2019-01-10 15:56:32'),(119,'Marshall Islands','MH','2019-01-10 15:56:32','2019-01-10 15:56:32'),(120,'Martinique','MQ','2019-01-10 15:56:32','2019-01-10 15:56:32'),(121,'Mauritania','MR','2019-01-10 15:56:32','2019-01-10 15:56:32'),(122,'Mauritius','MU','2019-01-10 15:56:32','2019-01-10 15:56:32'),(123,'Mayotte','YT','2019-01-10 15:56:32','2019-01-10 15:56:32'),(124,'Mexico','MX','2019-01-10 15:56:32','2019-01-10 15:56:32'),(125,'Micronesia, Federated States Of','FM','2019-01-10 15:56:32','2019-01-10 15:56:32'),(126,'Moldova, Republic Of','MD','2019-01-10 15:56:32','2019-01-10 15:56:32'),(127,'Monaco','MC','2019-01-10 15:56:32','2019-01-10 15:56:32'),(128,'Mongolia','MN','2019-01-10 15:56:32','2019-01-10 15:56:32'),(129,'Montserrat','MS','2019-01-10 15:56:32','2019-01-10 15:56:32'),(130,'Montenegro','ME','2019-01-10 15:56:32','2019-01-10 15:56:32'),(131,'Morocco','MA','2019-01-10 15:56:32','2019-01-10 15:56:32'),(132,'Mozambique','MZ','2019-01-10 15:56:32','2019-01-10 15:56:32'),(133,'Myanmar','MM','2019-01-10 15:56:32','2019-01-10 15:56:32'),(134,'Namibia','NA','2019-01-10 15:56:32','2019-01-10 15:56:32'),(135,'Nauru','NR','2019-01-10 15:56:32','2019-01-10 15:56:32'),(136,'Nepal','NP','2019-01-10 15:56:32','2019-01-10 15:56:32'),(137,'Netherlands','NL','2019-01-10 15:56:32','2019-01-10 15:56:32'),(138,'Netherlands Antilles','AN','2019-01-10 15:56:32','2019-01-10 15:56:32'),(139,'New Caledonia','NC','2019-01-10 15:56:32','2019-01-10 15:56:32'),(140,'New Zealand','NZ','2019-01-10 15:56:32','2019-01-10 15:56:32'),(141,'Nicaragua','NI','2019-01-10 15:56:32','2019-01-10 15:56:32'),(142,'Niger','NE','2019-01-10 15:56:32','2019-01-10 15:56:32'),(143,'Nigeria','NG','2019-01-10 15:56:32','2019-01-10 15:56:32'),(144,'Niue','NU','2019-01-10 15:56:32','2019-01-10 15:56:32'),(145,'Norfolk Island','NF','2019-01-10 15:56:33','2019-01-10 15:56:33'),(146,'Northern Mariana Islands','MP','2019-01-10 15:56:33','2019-01-10 15:56:33'),(147,'Norway','NO','2019-01-10 15:56:33','2019-01-10 15:56:33'),(148,'Oman','OM','2019-01-10 15:56:33','2019-01-10 15:56:33'),(149,'Pakistan','PK','2019-01-10 15:56:33','2019-01-10 15:56:33'),(150,'Palau','PW','2019-01-10 15:56:33','2019-01-10 15:56:33'),(151,'Palestinian Territory, Occupied','PS','2019-01-10 15:56:33','2019-01-10 15:56:33'),(152,'Panama','PA','2019-01-10 15:56:33','2019-01-10 15:56:33'),(153,'Papua New Guinea','PG','2019-01-10 15:56:33','2019-01-10 15:56:33'),(154,'Paraguay','PY','2019-01-10 15:56:33','2019-01-10 15:56:33'),(155,'Peru','PE','2019-01-10 15:56:33','2019-01-10 15:56:33'),(156,'Philippines','PH','2019-01-10 15:56:33','2019-01-10 15:56:33'),(157,'Pitcairn','PN','2019-01-10 15:56:33','2019-01-10 15:56:33'),(158,'Poland','PL','2019-01-10 15:56:33','2019-01-10 15:56:33'),(159,'Portugal','PT','2019-01-10 15:56:33','2019-01-10 15:56:33'),(160,'Puerto Rico','PR','2019-01-10 15:56:33','2019-01-10 15:56:33'),(161,'Qatar','QA','2019-01-10 15:56:33','2019-01-10 15:56:33'),(162,'Reunion','RE','2019-01-10 15:56:33','2019-01-10 15:56:33'),(163,'Romania','RO','2019-01-10 15:56:33','2019-01-10 15:56:33'),(164,'Russian Federation','RU','2019-01-10 15:56:33','2019-01-10 15:56:33'),(165,'Rwanda','RW','2019-01-10 15:56:33','2019-01-10 15:56:33'),(166,'Saint Helena','SH','2019-01-10 15:56:33','2019-01-10 15:56:33'),(167,'Saint Kitts And Nevis','KN','2019-01-10 15:56:33','2019-01-10 15:56:33'),(168,'Saint Lucia','LC','2019-01-10 15:56:33','2019-01-10 15:56:33'),(169,'Saint Pierre And Miquelon','PM','2019-01-10 15:56:33','2019-01-10 15:56:33'),(170,'Saint Vincent And The Grenadines','VC','2019-01-10 15:56:33','2019-01-10 15:56:33'),(171,'Samoa','WS','2019-01-10 15:56:33','2019-01-10 15:56:33'),(172,'San Marino','SM','2019-01-10 15:56:34','2019-01-10 15:56:34'),(173,'Sao Tome And Principe','ST','2019-01-10 15:56:34','2019-01-10 15:56:34'),(174,'Saudi Arabia','SA','2019-01-10 15:56:34','2019-01-10 15:56:34'),(175,'Senegal','SN','2019-01-10 15:56:34','2019-01-10 15:56:34'),(176,'Serbia','RS','2019-01-10 15:56:34','2019-01-10 15:56:34'),(177,'Seychelles','SC','2019-01-10 15:56:34','2019-01-10 15:56:34'),(178,'Sierra Leone','SL','2019-01-10 15:56:34','2019-01-10 15:56:34'),(179,'Singapore','SG','2019-01-10 15:56:34','2019-01-10 15:56:34'),(180,'Slovakia','SK','2019-01-10 15:56:34','2019-01-10 15:56:34'),(181,'Slovenia','SI','2019-01-10 15:56:34','2019-01-10 15:56:34'),(182,'Solomon Islands','SB','2019-01-10 15:56:34','2019-01-10 15:56:34'),(183,'Somalia','SO','2019-01-10 15:56:34','2019-01-10 15:56:34'),(184,'South Africa','ZA','2019-01-10 15:56:34','2019-01-10 15:56:34'),(185,'South Georgia And The South Sandwich Islands','GS','2019-01-10 15:56:34','2019-01-10 15:56:34'),(186,'Spain','ES','2019-01-10 15:56:34','2019-01-10 15:56:34'),(187,'Sri Lanka','LK','2019-01-10 15:56:34','2019-01-10 15:56:34'),(188,'Sudan','SD','2019-01-10 15:56:34','2019-01-10 15:56:34'),(189,'Suriname','SR','2019-01-10 15:56:34','2019-01-10 15:56:34'),(190,'Svalbard And Jan Mayen','SJ','2019-01-10 15:56:34','2019-01-10 15:56:34'),(191,'Swaziland','SZ','2019-01-10 15:56:34','2019-01-10 15:56:34'),(192,'Sweden','SE','2019-01-10 15:56:34','2019-01-10 15:56:34'),(193,'Switzerland','CH','2019-01-10 15:56:34','2019-01-10 15:56:34'),(194,'Syrian Arab Republic','SY','2019-01-10 15:56:34','2019-01-10 15:56:34'),(195,'Taiwan, Province Of China','TW','2019-01-10 15:56:34','2019-01-10 15:56:34'),(196,'Tajikistan','TJ','2019-01-10 15:56:35','2019-01-10 15:56:35'),(197,'Tanzania, United Republic Of','TZ','2019-01-10 15:56:35','2019-01-10 15:56:35'),(198,'Thailand','TH','2019-01-10 15:56:35','2019-01-10 15:56:35'),(199,'Togo','TG','2019-01-10 15:56:35','2019-01-10 15:56:35'),(200,'Tokelau','TK','2019-01-10 15:56:35','2019-01-10 15:56:35'),(201,'Tonga','TO','2019-01-10 15:56:35','2019-01-10 15:56:35'),(202,'Trinidad And Tobago','TT','2019-01-10 15:56:35','2019-01-10 15:56:35'),(203,'Tunisia','TN','2019-01-10 15:56:35','2019-01-10 15:56:35'),(204,'Turkey','TR','2019-01-10 15:56:35','2019-01-10 15:56:35'),(205,'Turkmenistan','TM','2019-01-10 15:56:35','2019-01-10 15:56:35'),(206,'Turks And Caicos Islands','TC','2019-01-10 15:56:35','2019-01-10 15:56:35'),(207,'Tuvalu','TV','2019-01-10 15:56:35','2019-01-10 15:56:35'),(208,'Uganda','UG','2019-01-10 15:56:35','2019-01-10 15:56:35'),(209,'Ukraine','UA','2019-01-10 15:56:35','2019-01-10 15:56:35'),(210,'United Arab Emirates','AE','2019-01-10 15:56:35','2019-01-10 15:56:35'),(211,'United Kingdom','GB','2019-01-10 15:56:35','2019-01-10 15:56:35'),(212,'United States','US','2019-01-10 15:56:35','2019-01-10 15:56:35'),(213,'United States Minor Outlying Islands','UM','2019-01-10 15:56:35','2019-01-10 15:56:35'),(214,'Uruguay','UY','2019-01-10 15:56:35','2019-01-10 15:56:35'),(215,'Uzbekistan','UZ','2019-01-10 15:56:35','2019-01-10 15:56:35'),(216,'Vanuatu','VU','2019-01-10 15:56:35','2019-01-10 15:56:35'),(217,'Venezuela','VE','2019-01-10 15:56:35','2019-01-10 15:56:35'),(218,'Viet Nam','VN','2019-01-10 15:56:36','2019-01-10 15:56:36'),(219,'Virgin Islands, British','VG','2019-01-10 15:56:36','2019-01-10 15:56:36'),(220,'Virgin Islands, U.s.','VI','2019-01-10 15:56:36','2019-01-10 15:56:36'),(221,'Wallis And Futuna','WF','2019-01-10 15:56:36','2019-01-10 15:56:36'),(222,'Western Sahara','EH','2019-01-10 15:56:36','2019-01-10 15:56:36'),(223,'Yemen','YE','2019-01-10 15:56:36','2019-01-10 15:56:36'),(224,'Zambia','ZM','2019-01-10 15:56:36','2019-01-10 15:56:36'),(225,'Zimbabwe','ZW','2019-01-10 15:56:36','2019-01-10 15:56:36');
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
INSERT INTO `departments` VALUES (1,'Anesthesiology & Perioperative Care','2019-01-10 16:57:20','2019-01-10 16:57:21'),(2,'Emergency Medicine','2019-01-10 16:57:26','2019-01-10 16:57:26'),(3,'Dental','2019-01-10 16:57:30','2019-01-10 16:57:30'),(4,'Casuality','2019-01-10 16:57:34','2019-01-10 16:57:34'),(5,'Cardiology','2019-01-10 16:57:39','2019-01-10 16:57:39'),(6,'Dermatology','2019-01-10 16:57:44','2019-01-10 16:57:44');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Hijas','','Ajmal','8907018654','Hijasajmal@gmail.co','05/08/1995','Burkina Faso','Male','M-Tech','2',1,'2019-01-10 17:09:22','2019-01-10 17:25:40'),(2,'awe','b','c','45556456','Hmal@gmail.com','05/08/1956','Botswana','Female','B-Tech','asdfsad',6,'2019-01-10 17:26:25','2019-01-10 17:27:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (4,'Male','2019-01-10 15:56:27','2019-01-10 15:56:27'),(5,'Female','2019-01-10 15:56:27','2019-01-10 15:56:27'),(6,'Other','2019-01-10 15:56:27','2019-01-10 15:56:27');
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
INSERT INTO `options` VALUES (1,'Yes',NULL,NULL),(2,'No',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_conditions`
--

LOCK TABLES `patient_conditions` WRITE;
/*!40000 ALTER TABLE `patient_conditions` DISABLE KEYS */;
INSERT INTO `patient_conditions` VALUES (8,'Undetermined','2019-01-10 15:56:26','2019-01-10 15:56:26'),(9,'Good','2019-01-10 15:56:26','2019-01-10 15:56:26'),(10,'Fair','2019-01-10 15:56:26','2019-01-10 15:56:26'),(11,'Serious','2019-01-10 15:56:27','2019-01-10 15:56:27'),(12,'Critical','2019-01-10 15:56:27','2019-01-10 15:56:27'),(13,'Treated and Released','2019-01-10 15:56:27','2019-01-10 15:56:27'),(14,'Confirming patient deaths','2019-01-10 15:56:27','2019-01-10 15:56:27');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Hijas','','Ajmal','5489070186','Hijasl@gmail.com','2014-01-17','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','B+',2,2,NULL,'2019-01-10 17:36:31','2019-01-10 17:40:05'),(2,'asd','Akku','asdsa','85445548654','adas@gmail.com','2015-03-19','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Female','O+',2,2,NULL,'2019-01-10 17:48:08','2019-01-10 17:49:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
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
  `no_of_beds` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,5,1,'2019-01-10 18:57:57','2019-01-10 18:57:57'),(2,15,6,'2019-01-10 18:58:03','2019-01-10 18:58:03');
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
INSERT INTO `schema_migrations` VALUES ('20181214101939'),('20181214103027'),('20181214103036'),('20181221043506'),('20181226072931'),('20181230061331'),('20190103070840'),('20190103072534'),('20190103165626'),('20190103165728'),('20190103172419'),('20190105064059'),('20190106155943'),('20190106170443'),('20190106173833'),('20190107114643'),('20190110071531'),('20190110071537'),('20190110193237'),('20190110193331');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'2019-01-10','10:50:00',0,1,'2019-01-10 17:50:56','2019-01-10 17:50:56'),(2,'2019-01-10','11:06:00',0,1,'2019-01-10 17:50:56','2019-01-10 17:50:56'),(3,'2019-01-10','11:21:00',1,1,'2019-01-10 17:50:57','2019-01-10 18:11:05'),(4,'2019-01-10','11:36:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(5,'2019-01-10','11:51:00',0,1,'2019-01-10 17:50:57','2019-01-10 18:06:12'),(6,'2019-01-10','12:07:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(7,'2019-01-10','12:22:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(8,'2019-01-10','12:37:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(9,'2019-01-10','12:52:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(10,'2019-01-10','13:08:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(11,'2019-01-10','13:23:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(12,'2019-01-10','13:38:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(13,'2019-01-10','13:53:00',0,1,'2019-01-10 17:50:57','2019-01-10 17:50:57'),(14,'2019-01-17','01:51:00',0,2,'2019-01-10 17:51:41','2019-01-10 17:51:41'),(15,'2019-01-17','02:22:00',1,2,'2019-01-10 17:51:41','2019-01-10 18:34:05'),(16,'2019-01-17','02:52:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(17,'2019-01-17','03:23:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(18,'2019-01-17','03:53:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(19,'2019-01-17','04:24:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(20,'2019-01-17','04:54:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(21,'2019-01-17','05:25:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(22,'2019-01-17','05:55:00',0,2,'2019-01-10 17:51:42','2019-01-10 17:51:42'),(23,'2019-01-29','05:51:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(24,'2019-01-29','06:04:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(25,'2019-01-29','06:16:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(26,'2019-01-29','06:28:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(27,'2019-01-29','06:40:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(28,'2019-01-29','06:52:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(29,'2019-01-29','07:05:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(30,'2019-01-29','07:17:00',0,3,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(31,'2019-01-29','07:29:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(32,'2019-01-29','07:41:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(33,'2019-01-29','07:53:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(34,'2019-01-29','08:06:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(35,'2019-01-29','08:18:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(36,'2019-01-29','08:30:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(37,'2019-01-29','08:42:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(38,'2019-01-29','08:54:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(39,'2019-01-29','09:07:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(40,'2019-01-29','09:19:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(41,'2019-01-29','09:31:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(42,'2019-01-29','09:43:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(43,'2019-01-29','09:55:00',0,3,'2019-01-10 17:52:10','2019-01-10 17:52:10'),(44,'2020-01-10','02:52:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(45,'2020-01-10','02:57:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(46,'2020-01-10','03:03:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(47,'2020-01-10','03:08:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(48,'2020-01-10','03:13:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(49,'2020-01-10','03:18:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(50,'2020-01-10','03:23:00',0,4,'2019-01-10 17:52:40','2019-01-10 17:52:40'),(51,'2020-01-10','03:28:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(52,'2020-01-10','03:33:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(53,'2020-01-10','03:38:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(54,'2020-01-10','03:43:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(55,'2020-01-10','03:48:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(56,'2020-01-10','03:53:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(57,'2020-01-10','03:58:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(58,'2020-01-10','04:04:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(59,'2020-01-10','04:09:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(60,'2020-01-10','04:14:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(61,'2020-01-10','04:19:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(62,'2020-01-10','04:24:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(63,'2020-01-10','04:29:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(64,'2020-01-10','04:34:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(65,'2020-01-10','04:39:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(66,'2020-01-10','04:44:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(67,'2020-01-10','04:49:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(68,'2020-01-10','04:54:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41'),(69,'2020-01-10','04:59:00',0,4,'2019-01-10 17:52:41','2019-01-10 17:52:41');
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
INSERT INTO `timeslots` VALUES (1,'2019-01-10','10:50:00','14:50:00','00:15:00',1,'2019-01-10 17:50:56','2019-01-10 17:50:56'),(2,'2019-01-17','01:51:00','06:51:00','00:30:00',2,'2019-01-10 17:51:41','2019-01-10 17:51:41'),(3,'2019-01-29','05:51:00','10:51:00','00:12:00',1,'2019-01-10 17:52:09','2019-01-10 17:52:09'),(4,'2020-01-10','02:52:00','05:52:00','00:05:00',2,'2019-01-10 17:52:40','2019-01-10 17:52:40');
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
INSERT INTO `users` VALUES (1,'Hijas',' ','Ajmal','8907018654','Hijasajmal@gmail.com','.virus','A001',NULL,1,NULL,1,NULL,'Admin','2019-01-10 15:56:36','2019-01-10 15:56:36'),(2,NULL,NULL,NULL,NULL,NULL,'Hijas@U1','Hijas@U2','',1,NULL,1,1,'Doctor','2019-01-10 17:09:22','2019-01-10 17:25:40'),(3,NULL,NULL,NULL,NULL,NULL,'awe@U2','awe@U3','',1,NULL,1,2,'Doctor','2019-01-10 17:26:26','2019-01-10 17:27:39'),(4,NULL,NULL,NULL,NULL,NULL,'Hijas@U1','Hijas@U4','',1,NULL,1,1,'Patient','2019-01-10 17:36:31','2019-01-10 17:40:05'),(5,NULL,NULL,NULL,NULL,NULL,'asd@U2','asd@U5','',1,NULL,1,2,'Patient','2019-01-10 17:48:09','2019-01-10 17:49:09');
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

-- Dump completed on 2019-01-11  1:50:18
