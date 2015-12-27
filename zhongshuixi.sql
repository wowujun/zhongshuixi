-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zhongshuixi_development
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','$2a$10$iMPyzoiIwlJo1eOc07kqau5IXiJRx8errHDFj6O/eCcYO.Gq4Qf/S',NULL,NULL,'2015-11-18 06:00:13','2015-11-18 06:00:13');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgs`
--

DROP TABLE IF EXISTS `cfgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgs`
--

LOCK TABLES `cfgs` WRITE;
/*!40000 ALTER TABLE `cfgs` DISABLE KEYS */;
INSERT INTO `cfgs` VALUES (1,'400-0781-213','2602201492@qq.com','玉溪中水系信息科技有限公司','云南省玉溪市红塔区彩虹路27号彩虹新区8幢3号','xxxxxxxxxxxxxxxxxxxxxxxxxx','2015-11-18 06:00:13','2015-11-18 06:28:30');
/*!40000 ALTER TABLE `cfgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kindeditor_assets`
--

DROP TABLE IF EXISTS `kindeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kindeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `asset_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kindeditor_assets`
--

LOCK TABLES `kindeditor_assets` WRITE;
/*!40000 ALTER TABLE `kindeditor_assets` DISABLE KEYS */;
INSERT INTO `kindeditor_assets` VALUES (1,'1c50c0f14156.jpg',27272,'image/jpeg',0,'image','2015-11-18 06:09:03','2015-11-18 06:09:03');
/*!40000 ALTER TABLE `kindeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20151118040856'),('20151118040944'),('20151118051256'),('20151118051405'),('20151118051646'),('20151118052433'),('20151118062010');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sideclas`
--

DROP TABLE IF EXISTS `sideclas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sideclas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `renderto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sideclas`
--

LOCK TABLES `sideclas` WRITE;
/*!40000 ALTER TABLE `sideclas` DISABLE KEYS */;
INSERT INTO `sideclas` VALUES (1,'products','产品','','2015-11-18 06:06:32','2015-11-18 06:07:19'),(2,'news','新闻','','2015-11-18 06:07:48','2015-11-18 06:07:48');
/*!40000 ALTER TABLE `sideclas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidecontents`
--

DROP TABLE IF EXISTS `sidecontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidecontents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sidecla_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `inpaper` varchar(255) DEFAULT NULL,
  `content` text,
  `time` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidecontents`
--

LOCK TABLES `sidecontents` WRITE;
/*!40000 ALTER TABLE `sidecontents` DISABLE KEYS */;
INSERT INTO `sidecontents` VALUES (1,1,'123123','123123','<img src=\"/uploads/image/201511/1c50c0f14156.jpg\" alt=\"\" />','2015-11-18 14:08:46',1,'2015-11-18 06:09:04','2015-11-18 06:09:04'),(2,2,'qweqwe','qweqweqwe','','2015-11-18 14:18:19',1,'2015-11-18 06:18:28','2015-11-18 06:18:28');
/*!40000 ALTER TABLE `sidecontents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-27 11:49:41
