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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `is_diogonised` int(11) NOT NULL DEFAULT '0',
  `is_expired` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (6,'refdgshv',1,118,1,0,'2019-01-05 06:56:00','2019-01-06 18:24:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
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
INSERT INTO `bloodgroups` VALUES (1,'A+','2019-01-04 05:05:44','2019-01-04 05:05:44'),(2,'O+','2019-01-04 05:05:44','2019-01-04 05:05:44'),(3,'B+','2019-01-04 05:05:44','2019-01-04 05:05:44'),(4,'AB+','2019-01-04 05:05:44','2019-01-04 05:05:44'),(5,'A-','2019-01-04 05:05:44','2019-01-04 05:05:44'),(6,'O-','2019-01-04 05:05:44','2019-01-04 05:05:44'),(7,'B-','2019-01-04 05:05:44','2019-01-04 05:05:44'),(8,'AB-','2019-01-04 05:05:44','2019-01-04 05:05:44');
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
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `appointment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (7,1,'Take Him for Operation\r\n',1,6,'2019-01-06 18:24:58','2019-01-06 18:24:58'),(8,1,'--- \n- hello\n',1,6,'2019-01-06 18:25:59','2019-01-06 18:25:59'),(9,1,'hello',1,6,'2019-01-06 18:26:50','2019-01-06 18:26:50');
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
INSERT INTO `countries` VALUES (2,'Bangladesh','BD','2019-01-04 05:07:15','2019-01-04 05:07:15'),(3,'Barbados','BB','2019-01-04 05:07:16','2019-01-04 05:07:16'),(4,'Belarus','BY','2019-01-04 05:07:16','2019-01-04 05:07:16'),(5,'Belgium','BE','2019-01-04 05:07:16','2019-01-04 05:07:16'),(6,'Belize','BZ','2019-01-04 05:07:16','2019-01-04 05:07:16'),(7,'Benin','BJ','2019-01-04 05:07:16','2019-01-04 05:07:16'),(8,'Bermuda','BM','2019-01-04 05:07:16','2019-01-04 05:07:16'),(9,'Bhutan','BT','2019-01-04 05:07:16','2019-01-04 05:07:16'),(10,'Bolivia','BO','2019-01-04 05:07:16','2019-01-04 05:07:16'),(11,'Bosnia And Herzegovina','BA','2019-01-04 05:07:16','2019-01-04 05:07:16'),(12,'Botswana','BW','2019-01-04 05:07:16','2019-01-04 05:07:16'),(13,'Bouvet Island','BV','2019-01-04 05:07:16','2019-01-04 05:07:16'),(14,'Brazil','BR','2019-01-04 05:07:16','2019-01-04 05:07:16'),(15,'British Indian Ocean Territory','IO','2019-01-04 05:07:16','2019-01-04 05:07:16'),(16,'Brunei Darussalam','BN','2019-01-04 05:07:16','2019-01-04 05:07:16'),(17,'Bulgaria','BG','2019-01-04 05:07:16','2019-01-04 05:07:16'),(18,'Burkina Faso','BF','2019-01-04 05:07:16','2019-01-04 05:07:16'),(19,'Burundi','BI','2019-01-04 05:07:16','2019-01-04 05:07:16'),(20,'Cambodia','KH','2019-01-04 05:07:16','2019-01-04 05:07:16'),(21,'Cameroon','CM','2019-01-04 05:07:16','2019-01-04 05:07:16'),(22,'Canada','CA','2019-01-04 05:07:16','2019-01-04 05:07:16'),(23,'Cape Verde','CV','2019-01-04 05:07:16','2019-01-04 05:07:16'),(24,'Cayman Islands','KY','2019-01-04 05:07:16','2019-01-04 05:07:16'),(25,'Central African Republic','CF','2019-01-04 05:07:16','2019-01-04 05:07:16'),(26,'Chad','TD','2019-01-04 05:07:16','2019-01-04 05:07:16'),(27,'Chile','CL','2019-01-04 05:07:16','2019-01-04 05:07:16'),(28,'China','CN','2019-01-04 05:07:16','2019-01-04 05:07:16'),(29,'Christmas Island','CX','2019-01-04 05:07:16','2019-01-04 05:07:16'),(30,'Cocos (keeling) Islands','CC','2019-01-04 05:07:17','2019-01-04 05:07:17'),(31,'Colombia','CO','2019-01-04 05:07:17','2019-01-04 05:07:17'),(32,'Comoros','KM','2019-01-04 05:07:17','2019-01-04 05:07:17'),(33,'Congo','CG','2019-01-04 05:07:17','2019-01-04 05:07:17'),(34,'Congo, The Democratic Republic Of The','CD','2019-01-04 05:07:17','2019-01-04 05:07:17'),(35,'Cook Islands','CK','2019-01-04 05:07:17','2019-01-04 05:07:17'),(36,'Costa Rica','CR','2019-01-04 05:07:17','2019-01-04 05:07:17'),(37,'Cote D\'ivoire','CI','2019-01-04 05:07:17','2019-01-04 05:07:17'),(38,'Croatia','HR','2019-01-04 05:07:17','2019-01-04 05:07:17'),(39,'Cuba','CU','2019-01-04 05:07:17','2019-01-04 05:07:17'),(40,'Cyprus','CY','2019-01-04 05:07:17','2019-01-04 05:07:17'),(41,'Czech Republic','CZ','2019-01-04 05:07:17','2019-01-04 05:07:17'),(42,'Denmark','DK','2019-01-04 05:07:17','2019-01-04 05:07:17'),(43,'Djibouti','DJ','2019-01-04 05:07:17','2019-01-04 05:07:17'),(44,'Dominica','DM','2019-01-04 05:07:17','2019-01-04 05:07:17'),(45,'Dominican Republic','DO','2019-01-04 05:07:17','2019-01-04 05:07:17'),(46,'East Timor','TP','2019-01-04 05:07:17','2019-01-04 05:07:17'),(47,'Ecuador','EC','2019-01-04 05:07:17','2019-01-04 05:07:17'),(48,'Egypt','EG','2019-01-04 05:07:17','2019-01-04 05:07:17'),(49,'El Salvador','SV','2019-01-04 05:07:17','2019-01-04 05:07:17'),(50,'Equatorial Guinea','GQ','2019-01-04 05:07:17','2019-01-04 05:07:17'),(51,'Eritrea','ER','2019-01-04 05:07:17','2019-01-04 05:07:17'),(52,'Estonia','EE','2019-01-04 05:07:17','2019-01-04 05:07:17'),(53,'Ethiopia','ET','2019-01-04 05:07:18','2019-01-04 05:07:18'),(54,'Falkland Islands (malvinas)','FK','2019-01-04 05:07:18','2019-01-04 05:07:18'),(55,'Faroe Islands','FO','2019-01-04 05:07:18','2019-01-04 05:07:18'),(56,'Fiji','FJ','2019-01-04 05:07:18','2019-01-04 05:07:18'),(57,'Finland','FI','2019-01-04 05:07:18','2019-01-04 05:07:18'),(58,'France','FR','2019-01-04 05:07:18','2019-01-04 05:07:18'),(59,'French Guiana','GF','2019-01-04 05:07:18','2019-01-04 05:07:18'),(60,'French Polynesia','PF','2019-01-04 05:07:18','2019-01-04 05:07:18'),(61,'French Southern Territories','TF','2019-01-04 05:07:18','2019-01-04 05:07:18'),(62,'Gabon','GA','2019-01-04 05:07:18','2019-01-04 05:07:18'),(63,'Gambia','GM','2019-01-04 05:07:18','2019-01-04 05:07:18'),(64,'Georgia','GE','2019-01-04 05:07:18','2019-01-04 05:07:18'),(65,'Germany','DE','2019-01-04 05:07:18','2019-01-04 05:07:18'),(66,'Ghana','GH','2019-01-04 05:07:18','2019-01-04 05:07:18'),(67,'Gibraltar','GI','2019-01-04 05:07:18','2019-01-04 05:07:18'),(68,'Greece','GR','2019-01-04 05:07:18','2019-01-04 05:07:18'),(69,'Greenland','GL','2019-01-04 05:07:18','2019-01-04 05:07:18'),(70,'Grenada','GD','2019-01-04 05:07:18','2019-01-04 05:07:18'),(71,'Guadeloupe','GP','2019-01-04 05:07:18','2019-01-04 05:07:18'),(72,'Guam','GU','2019-01-04 05:07:18','2019-01-04 05:07:18'),(73,'Guatemala','GT','2019-01-04 05:07:18','2019-01-04 05:07:18'),(74,'Guinea','GN','2019-01-04 05:07:18','2019-01-04 05:07:18'),(75,'Guinea-bissau','GW','2019-01-04 05:07:18','2019-01-04 05:07:18'),(76,'Guyana','GY','2019-01-04 05:07:18','2019-01-04 05:07:18'),(77,'Haiti','HT','2019-01-04 05:07:18','2019-01-04 05:07:18'),(78,'Heard Island And Mcdonald Islands','HM','2019-01-04 05:07:19','2019-01-04 05:07:19'),(79,'Holy See (vatican City State)','VA','2019-01-04 05:07:19','2019-01-04 05:07:19'),(80,'Honduras','HN','2019-01-04 05:07:19','2019-01-04 05:07:19'),(81,'Hong Kong','HK','2019-01-04 05:07:19','2019-01-04 05:07:19'),(82,'Hungary','HU','2019-01-04 05:07:19','2019-01-04 05:07:19'),(83,'Iceland','IS','2019-01-04 05:07:19','2019-01-04 05:07:19'),(84,'India','IN','2019-01-04 05:07:19','2019-01-04 05:07:19'),(85,'Indonesia','ID','2019-01-04 05:07:19','2019-01-04 05:07:19'),(86,'Iran, Islamic Republic Of','IR','2019-01-04 05:07:19','2019-01-04 05:07:19'),(87,'Iraq','IQ','2019-01-04 05:07:19','2019-01-04 05:07:19'),(88,'Ireland','IE','2019-01-04 05:07:19','2019-01-04 05:07:19'),(89,'Israel','IL','2019-01-04 05:07:19','2019-01-04 05:07:19'),(90,'Italy','IT','2019-01-04 05:07:19','2019-01-04 05:07:19'),(91,'Jamaica','JM','2019-01-04 05:07:19','2019-01-04 05:07:19'),(92,'Japan','JP','2019-01-04 05:07:19','2019-01-04 05:07:19'),(93,'Jordan','JO','2019-01-04 05:07:19','2019-01-04 05:07:19'),(94,'Kazakstan','KZ','2019-01-04 05:07:19','2019-01-04 05:07:19'),(95,'Kenya','KE','2019-01-04 05:07:19','2019-01-04 05:07:19'),(96,'Kiribati','KI','2019-01-04 05:07:19','2019-01-04 05:07:19'),(97,'Korea, Democratic People\'s Republic Of','KP','2019-01-04 05:07:19','2019-01-04 05:07:19'),(98,'Korea, Republic Of','KR','2019-01-04 05:07:19','2019-01-04 05:07:19'),(99,'Kosovo','KV','2019-01-04 05:07:19','2019-01-04 05:07:19'),(100,'Kuwait','KW','2019-01-04 05:07:19','2019-01-04 05:07:19'),(101,'Kyrgyzstan','KG','2019-01-04 05:07:19','2019-01-04 05:07:19'),(102,'Lao People\'s Democratic Republic','LA','2019-01-04 05:07:19','2019-01-04 05:07:19'),(103,'Latvia','LV','2019-01-04 05:07:19','2019-01-04 05:07:19'),(104,'Lebanon','LB','2019-01-04 05:07:19','2019-01-04 05:07:19'),(105,'Lesotho','LS','2019-01-04 05:07:19','2019-01-04 05:07:19'),(106,'Liberia','LR','2019-01-04 05:07:19','2019-01-04 05:07:19'),(107,'Libyan Arab Jamahiriya','LY','2019-01-04 05:07:20','2019-01-04 05:07:20'),(108,'Liechtenstein','LI','2019-01-04 05:07:20','2019-01-04 05:07:20'),(109,'Lithuania','LT','2019-01-04 05:07:20','2019-01-04 05:07:20'),(110,'Luxembourg','LU','2019-01-04 05:07:20','2019-01-04 05:07:20'),(111,'Macau','MO','2019-01-04 05:07:20','2019-01-04 05:07:20'),(112,'Macedonia, The Former Yugoslav Republic Of','MK','2019-01-04 05:07:20','2019-01-04 05:07:20'),(113,'Madagascar','MG','2019-01-04 05:07:20','2019-01-04 05:07:20'),(114,'Malawi','MW','2019-01-04 05:07:20','2019-01-04 05:07:20'),(115,'Malaysia','MY','2019-01-04 05:07:20','2019-01-04 05:07:20'),(116,'Maldives','MV','2019-01-04 05:07:20','2019-01-04 05:07:20'),(117,'Mali','ML','2019-01-04 05:07:20','2019-01-04 05:07:20'),(118,'Malta','MT','2019-01-04 05:07:20','2019-01-04 05:07:20'),(119,'Marshall Islands','MH','2019-01-04 05:07:20','2019-01-04 05:07:20'),(120,'Martinique','MQ','2019-01-04 05:07:20','2019-01-04 05:07:20'),(121,'Mauritania','MR','2019-01-04 05:07:20','2019-01-04 05:07:20'),(122,'Mauritius','MU','2019-01-04 05:07:20','2019-01-04 05:07:20'),(123,'Mayotte','YT','2019-01-04 05:07:20','2019-01-04 05:07:20'),(124,'Mexico','MX','2019-01-04 05:07:20','2019-01-04 05:07:20'),(125,'Micronesia, Federated States Of','FM','2019-01-04 05:07:20','2019-01-04 05:07:20'),(126,'Moldova, Republic Of','MD','2019-01-04 05:07:20','2019-01-04 05:07:20'),(127,'Monaco','MC','2019-01-04 05:07:21','2019-01-04 05:07:21'),(128,'Mongolia','MN','2019-01-04 05:07:21','2019-01-04 05:07:21'),(129,'Montserrat','MS','2019-01-04 05:07:21','2019-01-04 05:07:21'),(130,'Montenegro','ME','2019-01-04 05:07:21','2019-01-04 05:07:21'),(131,'Morocco','MA','2019-01-04 05:07:21','2019-01-04 05:07:21'),(132,'Mozambique','MZ','2019-01-04 05:07:21','2019-01-04 05:07:21'),(133,'Myanmar','MM','2019-01-04 05:07:21','2019-01-04 05:07:21'),(134,'Namibia','NA','2019-01-04 05:07:21','2019-01-04 05:07:21'),(135,'Nauru','NR','2019-01-04 05:07:21','2019-01-04 05:07:21'),(136,'Nepal','NP','2019-01-04 05:07:21','2019-01-04 05:07:21'),(137,'Netherlands','NL','2019-01-04 05:07:21','2019-01-04 05:07:21'),(138,'Netherlands Antilles','AN','2019-01-04 05:07:21','2019-01-04 05:07:21'),(139,'New Caledonia','NC','2019-01-04 05:07:21','2019-01-04 05:07:21'),(140,'New Zealand','NZ','2019-01-04 05:07:21','2019-01-04 05:07:21'),(141,'Nicaragua','NI','2019-01-04 05:07:21','2019-01-04 05:07:21'),(142,'Niger','NE','2019-01-04 05:07:21','2019-01-04 05:07:21'),(143,'Nigeria','NG','2019-01-04 05:07:21','2019-01-04 05:07:21'),(144,'Niue','NU','2019-01-04 05:07:21','2019-01-04 05:07:21'),(145,'Norfolk Island','NF','2019-01-04 05:07:21','2019-01-04 05:07:21'),(146,'Northern Mariana Islands','MP','2019-01-04 05:07:21','2019-01-04 05:07:21'),(147,'Norway','NO','2019-01-04 05:07:21','2019-01-04 05:07:21'),(148,'Oman','OM','2019-01-04 05:07:21','2019-01-04 05:07:21'),(149,'Pakistan','PK','2019-01-04 05:07:21','2019-01-04 05:07:21'),(150,'Palau','PW','2019-01-04 05:07:21','2019-01-04 05:07:21'),(151,'Palestinian Territory, Occupied','PS','2019-01-04 05:07:21','2019-01-04 05:07:21'),(152,'Panama','PA','2019-01-04 05:07:21','2019-01-04 05:07:21'),(153,'Papua New Guinea','PG','2019-01-04 05:07:21','2019-01-04 05:07:21'),(154,'Paraguay','PY','2019-01-04 05:07:22','2019-01-04 05:07:22'),(155,'Peru','PE','2019-01-04 05:07:22','2019-01-04 05:07:22'),(156,'Philippines','PH','2019-01-04 05:07:22','2019-01-04 05:07:22'),(157,'Pitcairn','PN','2019-01-04 05:07:22','2019-01-04 05:07:22'),(158,'Poland','PL','2019-01-04 05:07:22','2019-01-04 05:07:22'),(159,'Portugal','PT','2019-01-04 05:07:22','2019-01-04 05:07:22'),(160,'Puerto Rico','PR','2019-01-04 05:07:22','2019-01-04 05:07:22'),(161,'Qatar','QA','2019-01-04 05:07:22','2019-01-04 05:07:22'),(162,'Reunion','RE','2019-01-04 05:07:22','2019-01-04 05:07:22'),(163,'Romania','RO','2019-01-04 05:07:22','2019-01-04 05:07:22'),(164,'Russian Federation','RU','2019-01-04 05:07:22','2019-01-04 05:07:22'),(165,'Rwanda','RW','2019-01-04 05:07:22','2019-01-04 05:07:22'),(166,'Saint Helena','SH','2019-01-04 05:07:22','2019-01-04 05:07:22'),(167,'Saint Kitts And Nevis','KN','2019-01-04 05:07:22','2019-01-04 05:07:22'),(168,'Saint Lucia','LC','2019-01-04 05:07:22','2019-01-04 05:07:22'),(169,'Saint Pierre And Miquelon','PM','2019-01-04 05:07:22','2019-01-04 05:07:22'),(170,'Saint Vincent And The Grenadines','VC','2019-01-04 05:07:22','2019-01-04 05:07:22'),(171,'Samoa','WS','2019-01-04 05:07:22','2019-01-04 05:07:22'),(172,'San Marino','SM','2019-01-04 05:07:22','2019-01-04 05:07:22'),(173,'Sao Tome And Principe','ST','2019-01-04 05:07:22','2019-01-04 05:07:22'),(174,'Saudi Arabia','SA','2019-01-04 05:07:22','2019-01-04 05:07:22'),(175,'Senegal','SN','2019-01-04 05:07:22','2019-01-04 05:07:22'),(176,'Serbia','RS','2019-01-04 05:07:22','2019-01-04 05:07:22'),(177,'Seychelles','SC','2019-01-04 05:07:22','2019-01-04 05:07:22'),(178,'Sierra Leone','SL','2019-01-04 05:07:22','2019-01-04 05:07:22'),(179,'Singapore','SG','2019-01-04 05:07:23','2019-01-04 05:07:23'),(180,'Slovakia','SK','2019-01-04 05:07:23','2019-01-04 05:07:23'),(181,'Slovenia','SI','2019-01-04 05:07:23','2019-01-04 05:07:23'),(182,'Solomon Islands','SB','2019-01-04 05:07:23','2019-01-04 05:07:23'),(183,'Somalia','SO','2019-01-04 05:07:23','2019-01-04 05:07:23'),(184,'South Africa','ZA','2019-01-04 05:07:23','2019-01-04 05:07:23'),(185,'South Georgia And The South Sandwich Islands','GS','2019-01-04 05:07:23','2019-01-04 05:07:23'),(186,'Spain','ES','2019-01-04 05:07:23','2019-01-04 05:07:23'),(187,'Sri Lanka','LK','2019-01-04 05:07:23','2019-01-04 05:07:23'),(188,'Sudan','SD','2019-01-04 05:07:23','2019-01-04 05:07:23'),(189,'Suriname','SR','2019-01-04 05:07:23','2019-01-04 05:07:23'),(190,'Svalbard And Jan Mayen','SJ','2019-01-04 05:07:23','2019-01-04 05:07:23'),(191,'Swaziland','SZ','2019-01-04 05:07:23','2019-01-04 05:07:23'),(192,'Sweden','SE','2019-01-04 05:07:23','2019-01-04 05:07:23'),(193,'Switzerland','CH','2019-01-04 05:07:23','2019-01-04 05:07:23'),(194,'Syrian Arab Republic','SY','2019-01-04 05:07:23','2019-01-04 05:07:23'),(195,'Taiwan, Province Of China','TW','2019-01-04 05:07:23','2019-01-04 05:07:23'),(196,'Tajikistan','TJ','2019-01-04 05:07:23','2019-01-04 05:07:23'),(197,'Tanzania, United Republic Of','TZ','2019-01-04 05:07:23','2019-01-04 05:07:23'),(198,'Thailand','TH','2019-01-04 05:07:23','2019-01-04 05:07:23'),(199,'Togo','TG','2019-01-04 05:07:23','2019-01-04 05:07:23'),(200,'Tokelau','TK','2019-01-04 05:07:23','2019-01-04 05:07:23'),(201,'Tonga','TO','2019-01-04 05:07:23','2019-01-04 05:07:23'),(202,'Trinidad And Tobago','TT','2019-01-04 05:07:23','2019-01-04 05:07:23'),(203,'Tunisia','TN','2019-01-04 05:07:24','2019-01-04 05:07:24'),(204,'Turkey','TR','2019-01-04 05:07:24','2019-01-04 05:07:24'),(205,'Turkmenistan','TM','2019-01-04 05:07:24','2019-01-04 05:07:24'),(206,'Turks And Caicos Islands','TC','2019-01-04 05:07:24','2019-01-04 05:07:24'),(207,'Tuvalu','TV','2019-01-04 05:07:24','2019-01-04 05:07:24'),(208,'Uganda','UG','2019-01-04 05:07:24','2019-01-04 05:07:24'),(209,'Ukraine','UA','2019-01-04 05:07:24','2019-01-04 05:07:24'),(210,'United Arab Emirates','AE','2019-01-04 05:07:24','2019-01-04 05:07:24'),(211,'United Kingdom','GB','2019-01-04 05:07:24','2019-01-04 05:07:24'),(212,'United States','US','2019-01-04 05:07:24','2019-01-04 05:07:24'),(213,'United States Minor Outlying Islands','UM','2019-01-04 05:07:24','2019-01-04 05:07:24'),(214,'Uruguay','UY','2019-01-04 05:07:24','2019-01-04 05:07:24'),(215,'Uzbekistan','UZ','2019-01-04 05:07:24','2019-01-04 05:07:24'),(216,'Vanuatu','VU','2019-01-04 05:07:24','2019-01-04 05:07:24'),(217,'Venezuela','VE','2019-01-04 05:07:24','2019-01-04 05:07:24'),(218,'Viet Nam','VN','2019-01-04 05:07:24','2019-01-04 05:07:24'),(219,'Virgin Islands, British','VG','2019-01-04 05:07:24','2019-01-04 05:07:24'),(220,'Virgin Islands, U.s.','VI','2019-01-04 05:07:24','2019-01-04 05:07:24'),(221,'Wallis And Futuna','WF','2019-01-04 05:07:24','2019-01-04 05:07:24'),(222,'Western Sahara','EH','2019-01-04 05:07:24','2019-01-04 05:07:24'),(223,'Yemen','YE','2019-01-04 05:07:24','2019-01-04 05:07:24'),(224,'Zambia','ZM','2019-01-04 05:07:24','2019-01-04 05:07:24'),(225,'Zimbabwe','ZW','2019-01-04 05:07:24','2019-01-04 05:07:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (6,'Dermatology','2018-12-27 05:25:15','2018-12-27 05:25:15'),(7,'Emergency Medicine','2018-12-27 05:25:32','2018-12-27 05:25:33'),(8,'Family Medicine. Geriatric Medicine & Gerontology','2018-12-27 05:25:46','2018-12-27 05:25:46'),(9,'Neurological','2018-12-27 05:25:56','2018-12-27 05:25:56'),(11,'Obstetrics & Gynecology','2018-12-27 05:26:16','2018-12-27 05:26:16'),(12,'Anesthesiology & Perioperative Care','2018-12-27 05:50:29','2018-12-27 05:50:29'),(13,'Neurological Surgery','2018-12-28 05:10:37','2018-12-28 05:10:37');
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
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualifications` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (16,'Hijas','Ajmal','Ajmal','8907018654','Hijasajmal@gmail.com','Hijas','05/08/1995','Indian','Male','B-Tech','1-year','12','2018-12-17 05:23:21','2018-12-17 05:23:21'),(34,'Hijas','','Ajmal','4545454554',NULL,NULL,'454554','--- !map:HashWithIndifferentAccess \nid: \"\"\n','--- !map:HashWithIndifferentAccess \nid: \"\"\n',NULL,NULL,'6','2018-12-18 04:30:39','2019-01-06 07:20:03'),(35,'Akku','Aji','Binu','8907018654',NULL,'ADA','05/08/1998','India','Hijas Ajmal','M-Tech','2','8','2018-12-18 04:56:59','2018-12-18 04:56:59'),(38,'Dilkas','','Akmal','6765675678','dilkasakmal@gmail.com','nil','05/08/1995','India','Male','B-Tech','2','7','2018-12-18 09:43:01','2018-12-18 09:43:01'),(97,'Hijas','','Ajmal',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'12','2018-12-21 05:53:47','2018-12-21 05:53:47'),(98,'Hijas','','Ajmal',NULL,'Hijasajmal@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'9','2018-12-21 05:54:04','2018-12-21 05:54:04'),(99,'Hijas','','Ajmal',NULL,'Hijasajmal@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'11','2018-12-21 05:58:32','2018-12-21 05:58:32'),(103,'Hijas','','Ajmal',NULL,'Hijasajmal@gmail.com','',NULL,NULL,NULL,NULL,NULL,'13','2018-12-21 09:04:09','2018-12-21 09:04:09'),(114,'a','TC','Ajmal','asasdff','hijas@foradian.com','asdfasfd','asdf','asdf','asdf','asdf','asfd','8','2018-12-28 05:55:52','2018-12-28 06:25:17');
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
INSERT INTO `genders` VALUES (1,'Male','2019-01-04 05:05:44','2019-01-04 05:05:44'),(2,'Female','2019-01-04 05:05:45','2019-01-04 05:05:45'),(3,'Other','2019-01-04 05:05:45','2019-01-04 05:05:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_conditions`
--

LOCK TABLES `patient_conditions` WRITE;
/*!40000 ALTER TABLE `patient_conditions` DISABLE KEYS */;
INSERT INTO `patient_conditions` VALUES (1,'Undetermined',NULL,NULL),(2,'Good',NULL,NULL),(3,'Fair',NULL,NULL),(4,'Serious',NULL,NULL),(5,'Critical',NULL,NULL),(6,'Treated and Released',NULL,NULL),(7,'Confirming patient deaths',NULL,NULL);
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
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Hijas','Akku','Ajmal','8907018654','Hijasajmal@gmail.com','2014-08-05','Pevungattil (h), Akkaparamba (po), Puliyacode, Malappuram (dt), kerala 673641','Male','B+',NULL,'2018-12-18 10:13:08','2019-01-04 05:24:14'),(8,'Hijas','','Ajmal',NULL,'Hijasajmal@gmail.com',NULL,NULL,NULL,NULL,NULL,'2018-12-19 10:07:21','2018-12-19 10:07:21'),(9,'q','w','r',NULL,'Hijasajmal@gmail.com',NULL,NULL,NULL,NULL,NULL,'2018-12-19 11:10:06','2018-12-19 11:10:06'),(10,'a','as','d',NULL,'hijas@foradian.com',NULL,NULL,NULL,NULL,NULL,'2018-12-26 05:44:38','2018-12-26 05:44:38'),(11,'a','a','a',NULL,'hijasa@foradian.com',NULL,NULL,NULL,NULL,NULL,'2018-12-26 05:45:41','2018-12-26 05:45:41'),(12,'a','a','a',NULL,'hijas@foradian.com',NULL,NULL,NULL,NULL,NULL,'2018-12-26 05:46:48','2018-12-26 05:46:48'),(13,'a','a','a',NULL,'hijas@foradian.com',NULL,NULL,NULL,NULL,NULL,'2018-12-26 05:48:23','2018-12-26 05:48:23'),(14,'a','as','a',NULL,'hijas@foradian.com',NULL,NULL,NULL,NULL,NULL,'2018-12-26 05:49:03','2018-12-26 05:49:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (26,12,6,'2018-12-27 05:51:02','2018-12-27 05:51:02'),(30,56,12,'2018-12-27 05:51:26','2018-12-27 05:51:26'),(31,456,9,'2018-12-27 05:51:32','2018-12-27 05:51:32'),(33,465,9,'2018-12-27 05:51:44','2018-12-27 05:51:44'),(35,76,8,'2018-12-27 05:51:56','2018-12-27 05:51:56'),(36,15,13,'2018-12-28 05:11:06','2018-12-28 05:11:06'),(37,658,13,'2018-12-28 05:11:13','2018-12-28 05:11:13');
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
INSERT INTO `schema_migrations` VALUES ('20181214101939'),('20181214103027'),('20181214103036'),('20181221043506'),('20181226072931');
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'2019-01-04','08:24:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(2,'2019-01-04','08:32:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(3,'2019-01-04','08:40:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(4,'2019-01-04','08:48:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(5,'2019-01-04','08:56:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(6,'2019-01-04','09:05:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(7,'2019-01-04','09:13:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(8,'2019-01-04','09:21:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(9,'2019-01-04','09:29:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(10,'2019-01-04','09:37:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(11,'2019-01-04','09:45:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(12,'2019-01-04','09:53:00',0,1,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(13,'2019-01-04','09:25:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(14,'2019-01-04','09:35:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(15,'2019-01-04','09:45:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(16,'2019-01-04','09:55:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(17,'2019-01-04','10:06:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(18,'2019-01-04','10:16:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(19,'2019-01-04','10:26:00',0,2,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(20,'2019-01-04','10:36:00',1,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(21,'2019-01-04','10:46:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(22,'2019-01-04','10:56:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(23,'2019-01-04','11:07:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(24,'2019-01-04','11:17:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(25,'2019-01-04','11:27:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(26,'2019-01-04','11:37:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(27,'2019-01-04','11:47:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(28,'2019-01-04','11:57:00',0,2,'2019-01-04 05:25:25','2019-01-04 05:25:25'),(29,'2019-01-04','08:25:00',0,3,'2019-01-04 05:25:51','2019-01-04 05:25:51'),(30,'2019-01-04','08:30:00',0,3,'2019-01-04 05:25:51','2019-01-04 05:25:51'),(31,'2019-01-04','08:35:00',0,3,'2019-01-04 05:25:51','2019-01-04 05:25:51'),(32,'2019-01-04','08:40:00',0,3,'2019-01-04 05:25:51','2019-01-04 05:25:51'),(33,'2019-01-04','08:45:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(34,'2019-01-04','08:50:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(35,'2019-01-04','08:55:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(36,'2019-01-04','09:01:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(37,'2019-01-04','09:06:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(38,'2019-01-04','09:11:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(39,'2019-01-04','09:16:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(40,'2019-01-04','09:21:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(41,'2019-01-04','09:26:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(42,'2019-01-04','09:31:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(43,'2019-01-04','09:36:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(44,'2019-01-04','09:41:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(45,'2019-01-04','09:46:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(46,'2019-01-04','09:51:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(47,'2019-01-04','09:56:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(48,'2019-01-04','10:02:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(49,'2019-01-04','10:07:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(50,'2019-01-04','10:12:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(51,'2019-01-04','10:17:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(52,'2019-01-04','10:22:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(53,'2019-01-04','10:27:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(54,'2019-01-04','10:32:00',0,3,'2019-01-04 05:25:52','2019-01-04 05:25:52'),(55,'2019-01-04','10:37:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(56,'2019-01-04','10:42:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(57,'2019-01-04','10:47:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(58,'2019-01-04','10:52:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(59,'2019-01-04','10:57:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(60,'2019-01-04','11:03:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(61,'2019-01-04','11:08:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(62,'2019-01-04','11:13:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(63,'2019-01-04','11:18:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(64,'2019-01-04','11:23:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(65,'2019-01-04','11:28:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(66,'2019-01-04','11:33:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(67,'2019-01-04','11:38:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(68,'2019-01-04','11:43:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(69,'2019-01-04','11:48:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(70,'2019-01-04','11:53:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(71,'2019-01-04','11:58:00',0,3,'2019-01-04 05:25:53','2019-01-04 05:25:53'),(72,'2019-01-04','06:25:00',0,4,'2019-01-04 05:27:24','2019-01-04 05:27:24'),(73,'2019-01-04','06:40:00',0,4,'2019-01-04 05:27:24','2019-01-04 05:27:24'),(74,'2019-01-04','06:55:00',0,4,'2019-01-04 05:27:24','2019-01-04 05:27:24'),(75,'2019-01-04','07:11:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(76,'2019-01-04','07:26:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(77,'2019-01-04','07:41:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(78,'2019-01-04','07:56:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(79,'2019-01-04','08:12:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(80,'2019-01-04','08:27:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(81,'2019-01-04','08:42:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(82,'2019-01-04','08:57:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(83,'2019-01-04','09:13:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(84,'2019-01-04','09:28:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(85,'2019-01-04','09:43:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(86,'2019-01-04','09:58:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(87,'2019-01-04','10:14:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(88,'2019-01-04','10:29:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(89,'2019-01-04','10:44:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(90,'2019-01-04','10:59:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(91,'2019-01-04','11:15:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(92,'2019-01-04','11:30:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(93,'2019-01-04','11:45:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(94,'2019-01-04','12:01:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(95,'2019-01-04','12:16:00',0,4,'2019-01-04 05:27:25','2019-01-04 05:27:25'),(96,'2019-01-04','12:31:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(97,'2019-01-04','12:46:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(98,'2019-01-04','13:02:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(99,'2019-01-04','13:17:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(100,'2019-01-04','13:32:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(101,'2019-01-04','13:47:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(102,'2019-01-04','14:03:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(103,'2019-01-04','14:18:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(104,'2019-01-04','14:33:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(105,'2019-01-04','14:48:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(106,'2019-01-04','15:04:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(107,'2019-01-04','15:19:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(108,'2019-01-04','15:34:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(109,'2019-01-04','15:49:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(110,'2019-01-04','16:05:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(111,'2019-01-04','16:20:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(112,'2019-01-04','16:35:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(113,'2019-01-04','16:50:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(114,'2019-01-04','17:06:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(115,'2019-01-04','17:21:00',0,4,'2019-01-04 05:27:26','2019-01-04 05:27:26'),(116,'2019-01-04','17:36:00',0,4,'2019-01-04 05:27:27','2019-01-04 05:27:27'),(117,'2019-01-04','17:51:00',0,4,'2019-01-04 05:27:27','2019-01-04 05:27:27'),(118,'2019-01-08','03:14:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(119,'2019-01-04','03:24:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(120,'2019-01-04','03:34:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(121,'2019-01-04','03:44:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(122,'2019-01-04','03:54:00',1,5,'2019-01-04 05:28:00','2019-01-06 09:04:23'),(123,'2019-01-04','04:05:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(124,'2019-01-04','04:15:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(125,'2019-01-04','04:25:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(126,'2019-01-04','04:35:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(127,'2019-01-04','04:45:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(128,'2019-01-04','04:55:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(129,'2019-01-04','05:06:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(130,'2019-01-04','05:16:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(131,'2019-01-04','05:26:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(132,'2019-01-04','05:36:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(133,'2019-01-04','05:46:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(134,'2019-01-04','05:56:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(135,'2019-01-04','06:07:00',0,5,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(136,'2019-01-04','06:17:00',1,5,'2019-01-04 05:28:00','2019-01-06 08:21:42'),(137,'2019-01-04','06:27:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(138,'2019-01-04','06:37:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(139,'2019-01-04','06:47:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(140,'2019-01-04','06:57:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(141,'2019-01-04','07:08:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(142,'2019-01-04','07:18:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(143,'2019-01-04','07:28:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(144,'2019-01-04','07:38:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(145,'2019-01-04','07:48:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(146,'2019-01-04','07:58:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(147,'2019-01-04','08:09:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(148,'2019-01-04','08:19:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(149,'2019-01-04','08:29:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(150,'2019-01-04','08:39:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(151,'2019-01-04','08:49:00',0,5,'2019-01-04 05:28:01','2019-01-04 05:28:01'),(152,'2019-01-04','08:59:00',1,5,'2019-01-04 05:28:01','2019-01-06 09:15:45'),(153,'2019-01-04','10:28:00',0,6,'2019-01-04 05:28:33','2019-01-04 05:28:33'),(154,'2019-01-04','10:48:00',0,6,'2019-01-04 05:28:33','2019-01-04 05:28:33'),(155,'2019-01-04','11:09:00',0,6,'2019-01-04 05:28:33','2019-01-04 05:28:33'),(156,'2019-01-04','11:29:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(157,'2019-01-04','11:49:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(158,'2019-01-04','12:10:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(159,'2019-01-04','12:30:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(160,'2019-01-04','12:50:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(161,'2019-01-04','13:11:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(162,'2019-01-04','13:31:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(163,'2019-01-04','13:51:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(164,'2019-01-04','14:12:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(165,'2019-01-04','14:32:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(166,'2019-01-04','14:52:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(167,'2019-01-04','15:13:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(168,'2019-01-04','15:33:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(169,'2019-01-04','15:53:00',0,6,'2019-01-04 05:28:34','2019-01-04 05:28:34'),(170,'2019-01-04','12:28:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(171,'2019-01-04','12:41:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(172,'2019-01-04','12:54:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(173,'2019-01-04','13:08:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(174,'2019-01-04','13:21:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(175,'2019-01-04','13:34:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(176,'2019-01-04','13:47:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(177,'2019-01-04','14:01:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(178,'2019-01-04','14:14:00',0,7,'2019-01-04 05:29:03','2019-01-04 05:29:03'),(179,'2019-01-04','14:27:00',0,7,'2019-01-04 05:29:04','2019-01-04 05:29:04'),(180,'2019-01-04','14:40:00',0,7,'2019-01-04 05:29:04','2019-01-04 05:29:04'),(181,'2019-01-04','14:53:00',1,7,'2019-01-04 05:29:04','2019-01-04 05:29:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslots`
--

LOCK TABLES `timeslots` WRITE;
/*!40000 ALTER TABLE `timeslots` DISABLE KEYS */;
INSERT INTO `timeslots` VALUES (1,'2019-01-04','08:24:00','10:30:00','00:08:00',16,'2019-01-04 05:24:56','2019-01-04 05:24:56'),(2,'2019-01-04','09:25:00','12:06:00','00:10:00',35,'2019-01-04 05:25:24','2019-01-04 05:25:24'),(3,'2019-01-04','08:25:00','12:25:00','00:05:00',114,'2019-01-04 05:25:51','2019-01-04 05:25:51'),(4,'2019-01-04','06:25:00','18:25:00','00:15:00',38,'2019-01-04 05:27:24','2019-01-04 05:27:24'),(5,'2019-01-04','03:14:00','09:27:00','00:10:00',34,'2019-01-04 05:28:00','2019-01-04 05:28:00'),(6,'2019-01-04','10:28:00','16:41:00','00:20:00',98,'2019-01-04 05:28:33','2019-01-04 05:28:33'),(7,'2019-01-04','12:28:00','15:28:00','00:13:00',35,'2019-01-04 05:29:03','2019-01-04 05:29:03');
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
  `user_record_id` int(11) DEFAULT NULL,
  `user_record_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` int(50) DEFAULT NULL,
  `confirmed` int(1) DEFAULT '0',
  `remember_token` int(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `profile_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'Hijas','Ajmal','Aji','8907018654','Hijasajmal@gmail.com','.virus','A001',16,'Admin',NULL,1,NULL,'2018-12-17 05:23:00','2018-12-17 05:24:21',1),(32,NULL,NULL,NULL,NULL,NULL,'Hijas@U34','Hijas@U32',34,'Doctor',NULL,1,NULL,'2018-12-18 04:30:39','2019-01-06 07:20:02',1),(33,NULL,NULL,NULL,NULL,NULL,'Akku@U35','Akku@U33',35,'Doctor',NULL,NULL,NULL,'2018-12-18 04:56:58','2018-12-18 04:56:59',1),(34,NULL,NULL,NULL,NULL,NULL,'Hijas@U1','Hijas@U34',1,'Patient',NULL,1,NULL,'2018-12-18 05:05:06','2019-01-04 05:24:14',1),(37,'Apple','a','b','8907018654','hijasajmal@gmail.com','Apple@A37','A0037',NULL,'Admin',30,NULL,NULL,'2018-12-18 08:52:49','2018-12-18 08:52:49',1),(38,'a','b','c','8907018654','Hijasajmalaji@gmail.com','a@A38','A0038',NULL,'Admin',NULL,1,NULL,'2018-12-18 08:55:33','2018-12-28 06:05:55',1),(111,'Kali','','Linux',NULL,'hijas@foradian.com','123','A00111',NULL,'Admin',NULL,1,NULL,'2018-12-19 10:02:06','2018-12-28 09:04:49',1),(120,NULL,NULL,NULL,NULL,NULL,'a@U114','a@U120',114,'Doctor',NULL,1,NULL,'2018-12-28 05:55:52','2018-12-28 06:25:17',1);
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

-- Dump completed on 2019-01-07  0:01:09
