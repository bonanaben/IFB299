-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: django_db
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (7,'Can add user_detail',3,'add_user_detail'),(8,'Can change user_detail',3,'change_user_detail'),(9,'Can delete user_detail',3,'delete_user_detail'),(10,'Can add log entry',4,'add_logentry'),(11,'Can change log entry',4,'change_logentry'),(12,'Can delete log entry',4,'delete_logentry'),(13,'Can add permission',5,'add_permission'),(14,'Can change permission',5,'change_permission'),(15,'Can delete permission',5,'delete_permission'),(16,'Can add user',6,'add_user'),(17,'Can change user',6,'change_user'),(18,'Can delete user',6,'delete_user'),(19,'Can add group',7,'add_group'),(20,'Can change group',7,'change_group'),(21,'Can delete group',7,'delete_group'),(22,'Can add content type',8,'add_contenttype'),(23,'Can change content type',8,'change_contenttype'),(24,'Can delete content type',8,'delete_contenttype'),(25,'Can add session',9,'add_session'),(26,'Can change session',9,'change_session'),(27,'Can delete session',9,'delete_session'),(37,'Can add spot_information',13,'add_spot_information'),(38,'Can change spot_information',13,'change_spot_information'),(39,'Can delete spot_information',13,'delete_spot_information'),(43,'Can add location_detail',15,'add_location_detail'),(44,'Can change location_detail',15,'change_location_detail'),(45,'Can delete location_detail',15,'delete_location_detail');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$QyaLwjs2xALL$BqQdUj0Tk+F6j81IGMHDMr3Q6l4VvOS4OnmzjeoEu+I=','2017-10-25 06:28:25.686657',1,'will5','','','will@example.com',1,1,'2017-10-14 09:12:30.069994'),(2,'pbkdf2_sha256$30000$7VMFdlM2OrcP$KKNz0+QiGShIMACWKaHQBmQdHeSNao8rcpg/7VYlAMI=','2017-10-16 10:37:32.881850',0,'test','','','test@test.com',0,1,'2017-10-16 10:37:32.719734'),(3,'pbkdf2_sha256$30000$jn5wVAlcadJk$8fuAgadOZTN1KWggT88q2qF9saJmOE+QCBFBuc+nliA=','2017-10-18 07:12:40.294447',0,'josh','','','josh@gmail.com',0,1,'2017-10-18 07:12:40.136159'),(4,'pbkdf2_sha256$30000$dJBMoNNzkFM0$l8GsM538mbYVSlex1YQTMp6ZklHDNI12G5eWazi7bvY=','2017-10-18 07:21:12.984388',1,'will','','','will@email.com',1,1,'2017-10-18 07:20:46.604303'),(5,'pbkdf2_sha256$24000$s1vKrUXcor96$aXRkAF0eH2G8tJIM8MYPTpA1FpFfJVl3+pBAF0uUquY=','2017-10-25 06:30:23.150910',0,'denial','','','edgyatheist@gmail.com',0,1,'2017-10-25 06:30:22.950769'),(6,'pbkdf2_sha256$24000$GVjZuAx7cNWW$Y1ZMPod3LPRcbmomwlJP8UqNPyX7rntKpmvkDCX/E8k=','2017-10-25 07:48:43.967351',0,'ben','','','ben@gmail.com',0,1,'2017-10-25 07:44:56.516976');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_loc`
--

DROP TABLE IF EXISTS `city_info_loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_loc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suburb` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_loc`
--

LOCK TABLES `city_info_loc` WRITE;
/*!40000 ALTER TABLE `city_info_loc` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info_loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_location_detail`
--

DROP TABLE IF EXISTS `city_info_location_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_location_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suburb` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_location_detail`
--

LOCK TABLES `city_info_location_detail` WRITE;
/*!40000 ALTER TABLE `city_info_location_detail` DISABLE KEYS */;
INSERT INTO `city_info_location_detail` VALUES (3,'Southbank','Australia','QLD','Gardenspoint',2121);
/*!40000 ALTER TABLE `city_info_location_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_spot_information`
--

DROP TABLE IF EXISTS `city_info_spot_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_spot_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plname` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_rating` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `streetname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `streetnumber` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_info_s_location_id_fc1641d9_fk_city_info_location_detail_id` (`location_id`),
  CONSTRAINT `city_info_s_location_id_fc1641d9_fk_city_info_location_detail_id` FOREIGN KEY (`location_id`) REFERENCES `city_info_location_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_spot_information`
--

LOCK TABLES `city_info_spot_information` WRITE;
/*!40000 ALTER TABLE `city_info_spot_information` DISABLE KEYS */;
INSERT INTO `city_info_spot_information` VALUES (1,'Queensland University of Technology (QUT)',-2,0,'Grove street',2,'this is jargon','IcEYFip.png',3);
/*!40000 ALTER TABLE `city_info_spot_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_user_detail`
--

DROP TABLE IF EXISTS `city_info_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_user_detail`
--

LOCK TABLES `city_info_user_detail` WRITE;
/*!40000 ALTER TABLE `city_info_user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-14 09:13:51.301105','1','brizzy, sunny (1111), 0 kangaroo',1,'[{\"added\": {}}]',NULL,1),(2,'2017-10-14 09:25:01.661639','1','Southbank',1,'[{\"added\": {}}]',NULL,1),(3,'2017-10-14 09:25:17.546536','1','Southbank',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',NULL,1),(4,'2017-10-14 09:26:05.107974','1','Southbank',2,'[]',NULL,1),(5,'2017-10-14 11:24:47.370133','2','hcol, nahiljj (321), 123 ch',1,'[{\"added\": {}}]',NULL,1),(6,'2017-10-14 11:26:02.128221','2','Australia',1,'[{\"added\": {}}]',NULL,1),(7,'2017-10-14 11:31:58.208191','2','location name, suburb (2), 1 name',2,'[{\"changed\": {\"fields\": [\"location_name\", \"country\", \"state\", \"suburb\", \"streetname\", \"streetnumber\", \"postcode\"]}}]',NULL,1),(8,'2017-10-14 11:33:30.838273','2','plname',2,'[{\"changed\": {\"fields\": [\"plname\", \"start_rating\", \"contact\", \"description\", \"image\"]}}]',NULL,1),(9,'2017-10-16 00:55:40.097888','2','location name, suburb (2), 1 name',3,'',NULL,1),(10,'2017-10-16 00:55:40.105891','1','brizzy, sunny (1111), 0 kangaroo',3,'',NULL,1),(11,'2017-10-16 00:59:26.636845','3','location name, Sunnybank (2121), 12 Street',1,'[{\"added\": {}}]',NULL,1),(12,'2017-10-16 01:00:58.483100','3','plname',1,'[{\"added\": {}}]',NULL,1),(13,'2017-10-16 05:36:38.695246','2','Allen',3,'',6,1),(14,'2017-10-16 05:36:38.708120','3','daniel',3,'',6,1),(15,'2017-10-16 05:39:57.939550','4','Allen',3,'',6,1),(16,'2017-10-16 05:42:45.335042','5','allen',3,'',6,1),(17,'2017-10-16 05:42:45.343080','6','daniel',3,'',6,1),(18,'2017-10-16 05:49:37.759959','3','location name, Sunnybank (2121), 12 Street',3,'',NULL,1),(19,'2017-10-16 07:58:00.725987','2','josh',3,'',6,1),(20,'2017-10-16 08:06:45.776031','3','Southbank, Gardenspoint (2121)',1,'[{\"added\": {}}]',15,1),(21,'2017-10-16 08:10:01.301334','1','Queensland University of Technology (QUT)',1,'[{\"added\": {}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(7,'auth','group'),(5,'auth','permission'),(6,'auth','user'),(15,'city_info','location_detail'),(13,'city_info','spot_information'),(3,'city_info','user_detail'),(8,'contenttypes','contenttype'),(9,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-14 09:09:17.470982'),(2,'auth','0001_initial','2017-10-14 09:09:19.016661'),(3,'admin','0001_initial','2017-10-14 09:09:19.383588'),(4,'admin','0002_logentry_remove_auto_add','2017-10-14 09:09:19.418646'),(5,'contenttypes','0002_remove_content_type_name','2017-10-14 09:09:19.678058'),(6,'auth','0002_alter_permission_name_max_length','2017-10-14 09:09:19.748116'),(7,'auth','0003_alter_user_email_max_length','2017-10-14 09:09:19.798199'),(8,'auth','0004_alter_user_username_opts','2017-10-14 09:09:19.826273'),(9,'auth','0005_alter_user_last_login_null','2017-10-14 09:09:19.957907'),(10,'auth','0006_require_contenttypes_0002','2017-10-14 09:09:19.973016'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-14 09:09:20.010966'),(12,'auth','0008_alter_user_username_max_length','2017-10-14 09:09:20.115322'),(13,'city_info','0001_initial','2017-10-14 09:09:20.494978'),(14,'sessions','0001_initial','2017-10-14 09:09:20.634684'),(15,'city_info','0002_auto_20171016_1054','2017-10-16 00:56:13.962135'),(16,'city_info','0003_auto_20171016_1553','2017-10-16 05:55:51.416298'),(17,'city_info','0004_auto_20171016_1601','2017-10-16 06:01:32.975317'),(18,'city_info','0005_loc','2017-10-16 06:06:06.262290'),(19,'city_info','0006_spot_','2017-10-16 06:06:31.377678'),(20,'city_info','0007_auto_20171016_1606','2017-10-16 06:06:48.744335'),(21,'city_info','0008_spot_','2017-10-16 06:07:38.724618'),(22,'city_info','0009_auto_20171016_1611','2017-10-16 06:11:44.343957'),(23,'city_info','0010_auto_20171016_1614','2017-10-16 07:37:54.228750'),(24,'city_info','0011_auto_20171016_1616','2017-10-16 07:37:54.244750'),(25,'city_info','0012_delete_loc','2017-10-16 07:37:54.260750'),(26,'city_info','0013_location_','2017-10-16 07:39:59.164617'),(27,'city_info','0014_auto_20171016_1755','2017-10-16 07:55:26.432936'),(28,'city_info','0015_auto_20171016_1756','2017-10-16 07:56:18.152188'),(29,'city_info','0016_auto_20171016_1834','2017-10-16 08:44:20.213586');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('31s803np52riyop0wi0mtp6ww7qmzeyo','MjRmYjc1MWZiN2I0MmQ2YzA0YWM3ODYyNmNlOGJjMzIwMmIzNWMzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDIwYzU3ZDYwZGYwNzIxZTYzZGVjMmYyNjllNjA2NWIwMGVjNDA2In0=','2017-10-28 11:24:11.571886'),('32ske99dg41vuhieohs0x2bail9pz5hr','MjRmYjc1MWZiN2I0MmQ2YzA0YWM3ODYyNmNlOGJjMzIwMmIzNWMzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDIwYzU3ZDYwZGYwNzIxZTYzZGVjMmYyNjllNjA2NWIwMGVjNDA2In0=','2017-10-30 00:55:28.203860'),('ccs0h165z6oq49jrxywl10xg7s0vykb8','MjRmYjc1MWZiN2I0MmQ2YzA0YWM3ODYyNmNlOGJjMzIwMmIzNWMzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDIwYzU3ZDYwZGYwNzIxZTYzZGVjMmYyNjllNjA2NWIwMGVjNDA2In0=','2017-10-28 09:13:00.696757'),('egpw5dkctl1ss521wsbo0ot830ewkuwv','ODNmNjQzYjM5NDU5NWViNzFlOGE2NjY0YjIzOGE3YWZlMjRiYjZmMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NmQ1Y2RkMTM2ZTU0MmZjZTc4ZjAwYzBkN2M3ZTU0M2Q4MjAwZDAyIn0=','2017-10-30 10:37:32.889841'),('vjw5kry3l4efqw4i5bhhjaptx2unjhiz','YWNkYThlYjVhOWNmZDk5NmM4OTI2YTJkZWIwNzc3Nzg4ODlmNjUzMzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNzIwOTg2NWM0ZmMzOWE2YzI3YTBlMDBmYmY3NGVkMmU2NTQwYjcyIn0=','2017-11-01 07:21:12.992304');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-25 18:21:51
