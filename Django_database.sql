-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: Django_Database
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_user'),(2,'Can change user',1,'change_user'),(3,'Can delete user',1,'delete_user'),(4,'Can add location_detail',2,'add_location_detail'),(5,'Can change location_detail',2,'change_location_detail'),(6,'Can delete location_detail',2,'delete_location_detail'),(7,'Can add spot_information',3,'add_spot_information'),(8,'Can change spot_information',3,'change_spot_information'),(9,'Can delete spot_information',3,'delete_spot_information'),(10,'Can add log entry',4,'add_logentry'),(11,'Can change log entry',4,'change_logentry'),(12,'Can delete log entry',4,'delete_logentry'),(13,'Can add permission',5,'add_permission'),(14,'Can change permission',5,'change_permission'),(15,'Can delete permission',5,'delete_permission'),(16,'Can add group',6,'add_group'),(17,'Can change group',6,'change_group'),(18,'Can delete group',6,'delete_group'),(19,'Can add content type',7,'add_contenttype'),(20,'Can change content type',7,'change_contenttype'),(21,'Can delete content type',7,'delete_contenttype'),(22,'Can add session',8,'add_session'),(23,'Can change session',8,'change_session'),(24,'Can delete session',8,'delete_session'),(28,'Can add user_favourite_spot',10,'add_user_favourite_spot'),(29,'Can change user_favourite_spot',10,'change_user_favourite_spot'),(30,'Can delete user_favourite_spot',10,'delete_user_favourite_spot');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_location_detail`
--

DROP TABLE IF EXISTS `city_info_location_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_location_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(300) NOT NULL,
  `country` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `suburb` varchar(200) NOT NULL,
  `postcode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_location_detail`
--

LOCK TABLES `city_info_location_detail` WRITE;
/*!40000 ALTER TABLE `city_info_location_detail` DISABLE KEYS */;
INSERT INTO `city_info_location_detail` VALUES (1,'Southbank','Australia','Queensland','Sunnybank',4122),(2,'Sunny Park','Australia','Queensland','Sunnybank',4109),(3,'CP','Australia','Queensland','Coopers Plains',4112);
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
  `plname` varchar(300) NOT NULL,
  `start_rating` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `streetname` varchar(200) NOT NULL,
  `streetnumber` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `a_favourite` tinyint(1) NOT NULL,
  `category` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_info_s_location_id_fc1641d9_fk_city_info_location_detail_id` (`location_id`),
  CONSTRAINT `city_info_s_location_id_fc1641d9_fk_city_info_location_detail_id` FOREIGN KEY (`location_id`) REFERENCES `city_info_location_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_spot_information`
--

LOCK TABLES `city_info_spot_information` WRITE;
/*!40000 ALTER TABLE `city_info_spot_information` DISABLE KEYS */;
INSERT INTO `city_info_spot_information` VALUES (1,'Queen Street Mall',5,1019992,'somwhat',21,'this is just jargon lol','./bsDOmLa.jpg',1,0,'COLLEGES'),(2,'Red Cliff',2,900988,'Sunnystreet',55,'thisnininindalwindal','./6GXzR9V.jpg',2,1,''),(3,'Awesome place',3,90019191,'Least Awesome',5,'nefefkj jk efskj sk fs fkjes fkjs','./6BkKyzv.jpg',3,1,'');
/*!40000 ALTER TABLE `city_info_spot_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_user`
--

DROP TABLE IF EXISTS `city_info_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `user_type` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_user`
--

LOCK TABLES `city_info_user` WRITE;
/*!40000 ALTER TABLE `city_info_user` DISABLE KEYS */;
INSERT INTO `city_info_user` VALUES (1,'pbkdf2_sha256$24000$wXSLQxfONly6$kPrgDLdmdnaoJ0VBKQPcTQR9iLWdRC1K7gSvraYj/no=','2017-10-29 17:34:37.448212',1,'will6','','','will@gmail.com',1,1,'2017-10-26 01:16:26.158904',0,'',''),(2,'pbkdf2_sha256$24000$C7ez7vjdW0J1$gYBqx7n3hL5rBoNQrJtn47KhFiSgG6mYlzOv3S+asMQ=','2017-10-26 11:01:32.154574',0,'test','','','test@gail.com',0,1,'2017-10-26 09:55:43.156498',900021,'28282.huhunn',''),(3,'pbkdf2_sha256$24000$MHfh03eaVDxl$i8/q8D0h/zgeahhfK53yr5S7IYVSlBZb7LF8eaaT1Es=','2017-10-29 17:08:49.203805',0,'donald','','','trump@trump.gov.us',0,1,'2017-10-29 04:27:25.292380',911,'25 Trump Tower Level 1','');
/*!40000 ALTER TABLE `city_info_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_user_favourite_spot`
--

DROP TABLE IF EXISTS `city_info_user_favourite_spot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_user_favourite_spot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spot_information_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_spot_information_id_be1cf2f5_fk_city_info_spot_information_id` (`spot_information_id`),
  KEY `city_info_user_favourite_s_user_id_3f348a41_fk_city_info_user_id` (`user_id`),
  CONSTRAINT `ci_spot_information_id_be1cf2f5_fk_city_info_spot_information_id` FOREIGN KEY (`spot_information_id`) REFERENCES `city_info_spot_information` (`id`),
  CONSTRAINT `city_info_user_favourite_s_user_id_3f348a41_fk_city_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `city_info_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_user_favourite_spot`
--

LOCK TABLES `city_info_user_favourite_spot` WRITE;
/*!40000 ALTER TABLE `city_info_user_favourite_spot` DISABLE KEYS */;
INSERT INTO `city_info_user_favourite_spot` VALUES (3,2,3),(4,3,3),(5,1,1);
/*!40000 ALTER TABLE `city_info_user_favourite_spot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_user_groups`
--

DROP TABLE IF EXISTS `city_info_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_info_user_groups_user_id_70db8b63_uniq` (`user_id`,`group_id`),
  KEY `city_info_user_groups_group_id_7fd56cd9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `city_info_user_groups_group_id_7fd56cd9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `city_info_user_groups_user_id_f240a24b_fk_city_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `city_info_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_user_groups`
--

LOCK TABLES `city_info_user_groups` WRITE;
/*!40000 ALTER TABLE `city_info_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info_user_user_permissions`
--

DROP TABLE IF EXISTS `city_info_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_info_user_user_permissions_user_id_af7e003e_uniq` (`user_id`,`permission_id`),
  KEY `city_info_user_user_permission_id_d1f67268_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `city_info_user_user_permis_user_id_3a3fee7b_fk_city_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `city_info_user` (`id`),
  CONSTRAINT `city_info_user_user_permission_id_d1f67268_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info_user_user_permissions`
--

LOCK TABLES `city_info_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `city_info_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info_user_user_permissions` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_city_info_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_city_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `city_info_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-26 13:06:15.600740','1','Southbank, Sunnybank (4122)',1,'Added.',2,1),(2,'2017-10-26 13:08:01.586727','1','Queen Street Mall',1,'Added.',3,1),(3,'2017-10-26 23:40:13.694649','1','Queen Street Mall',2,'Changed a_favourite.',3,1),(4,'2017-10-27 00:09:40.811420','1','Queen Street Mall',2,'Changed a_favourite.',3,1),(5,'2017-10-27 11:46:06.812453','2','Sunny Park, Sunnybank (4109)',1,'Added.',2,1),(6,'2017-10-27 11:46:46.516781','3','CP, Coopers Plains (4112)',1,'Added.',2,1),(7,'2017-10-27 11:47:56.605813','2','Red Cliff',1,'Added.',3,1),(8,'2017-10-27 11:48:43.562278','3','Awesome place',1,'Added.',3,1),(9,'2017-10-29 03:39:32.022927','1','Queen Street Mall',2,'Changed category.',3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(2,'city_info','location_detail'),(3,'city_info','spot_information'),(1,'city_info','user'),(10,'city_info','user_favourite_spot'),(7,'contenttypes','contenttype'),(8,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-26 01:15:29.375026'),(2,'contenttypes','0002_remove_content_type_name','2017-10-26 01:15:29.619026'),(3,'auth','0001_initial','2017-10-26 01:15:30.428031'),(4,'auth','0002_alter_permission_name_max_length','2017-10-26 01:15:30.480066'),(5,'auth','0003_alter_user_email_max_length','2017-10-26 01:15:30.508066'),(6,'auth','0004_alter_user_username_opts','2017-10-26 01:15:30.536065'),(7,'auth','0005_alter_user_last_login_null','2017-10-26 01:15:30.560028'),(8,'auth','0006_require_contenttypes_0002','2017-10-26 01:15:30.576059'),(9,'auth','0007_alter_validators_add_error_messages','2017-10-26 01:15:30.604057'),(10,'city_info','0001_initial','2017-10-26 01:15:31.604692'),(11,'admin','0001_initial','2017-10-26 01:15:32.016693'),(12,'admin','0002_logentry_remove_auto_add','2017-10-26 01:15:32.111844'),(13,'city_info','0002_user_user_type','2017-10-26 01:15:32.295843'),(14,'city_info','0003_remove_user_user_type','2017-10-26 01:15:32.421003'),(15,'city_info','0004_location_detail_spot_information','2017-10-26 01:15:32.727829'),(16,'city_info','0005_user_usertype','2017-10-26 01:15:32.895474'),(17,'city_info','0006_auto_20171026_1106','2017-10-26 01:15:32.935441'),(18,'sessions','0001_initial','2017-10-26 01:15:33.031490'),(19,'city_info','0007_spot_information_favourite','2017-10-26 11:32:39.118802'),(20,'city_info','0008_auto_20171026_2136','2017-10-26 11:36:27.473535'),(21,'city_info','0009_auto_20171027_0058','2017-10-26 14:58:19.426871'),(22,'city_info','0010_spot_information_category','2017-10-29 03:32:55.516473'),(23,'city_info','0011_auto_20171029_1339','2017-10-29 03:39:17.091548'),(24,'city_info','0012_user_favourite_spots','2017-10-29 10:14:56.245519'),(25,'city_info','0013_auto_20171029_2032','2017-10-29 10:32:13.326693');
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
INSERT INTO `django_session` VALUES ('0g5njcyj2gyehml06m95cm5p88pyviq7','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-11 10:13:19.555965'),('16bgxb4a2yq36e4fs0i2iibc3cws3umq','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-10 04:18:24.526785'),('6rxon533s9ncoivvlihtxcnpbxc02p55','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-10 11:53:58.464165'),('78fxs8y83fij5o98c6gf2sqhrz7sllzf','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-10 11:44:46.060036'),('iy9uld5q1kioze8oybxwi6adjwmavexw','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-12 17:34:37.483308'),('l812hi6zu8mv5yhwyy2nai5c09dyhnid','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-11 12:12:39.520065'),('lnawc68b16qh2v896uyiztgo055whuxy','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-09 23:58:19.103453'),('lp09va33zzrgl50yp0k5a95mqea1ky78','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-12 16:14:53.106288'),('pdirweys1m53qo29kvbf0v0s4wboskqn','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-12 15:57:52.369520'),('tomj38r0x1r7g8nug9dbs3jt2avr7nf1','NDlkZmEwZDA4MzMyZjc3ZmFkMWEwNDg2MTU1MTRhMmU0Y2I2MzE5Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMjI5MzA1ZWVlNjdjMmM2NWU0NmY2ZmJmZDI5OTNkOTBiMDY0YmRhIn0=','2017-11-11 08:31:23.981690');
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

-- Dump completed on 2017-10-30 13:28:54
