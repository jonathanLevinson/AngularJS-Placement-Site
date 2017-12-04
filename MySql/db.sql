-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: devJobs
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
-- Table structure for table `computerSkills`
--

DROP TABLE IF EXISTS `computerSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computerSkills` (
  `skillId` int(10) NOT NULL AUTO_INCREMENT,
  `skillName` varchar(50) NOT NULL,
  PRIMARY KEY (`skillId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computerSkills`
--

LOCK TABLES `computerSkills` WRITE;
/*!40000 ALTER TABLE `computerSkills` DISABLE KEYS */;
INSERT INTO `computerSkills` VALUES (1,'C++'),(2,'JavaScript'),(3,'C'),(4,'AngularJS'),(5,'Angular'),(6,'React'),(7,'nodeJS'),(8,'Ruby'),(9,'Php'),(10,'Java'),(11,'Asp.Net'),(12,'TypeScript'),(13,'Python'),(14,'Cobol'),(15,'Bash'),(16,'Delphi'),(17,'SQL'),(18,'Assembly'),(19,'Objective-C'),(20,'Swift'),(21,'Pascal'),(22,'Vue'),(23,'AJAX'),(24,'Perl'),(25,'C#'),(26,'XML'),(27,'HTML');
/*!40000 ALTER TABLE `computerSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `positionId` int(10) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `lat` float(10,2) DEFAULT NULL,
  `lng` float(10,2) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `isRelevant` int(1) DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  PRIMARY KEY (`positionId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Skyvu','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',32.52,34.90,'Qesarya','Israel','92 Blackbird Point',1,'2016-09-17 01:24:17'),(2,'Snaptags','In hac habitasse platea dictumst.','Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.',32.17,34.83,'Herzliyya','Israel','5634 Thierer Drive',0,'2016-12-13 02:38:25'),(3,'Oodoo','Aliquam erat volutpat.','Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.',31.85,35.16,'Giv\'on HaHadasha','Israel','43636 Mallard Parkway',1,'2017-04-28 05:25:58'),(4,'Jabbertype','Donec dapibus.','Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',32.12,35.13,'Revava','Israel','1036 Beilfuss Junction',0,'2017-03-24 01:49:20'),(5,'Jaloo','Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.',32.33,34.86,'Netanya','Israel','0 Kensington Road',0,'2017-04-19 07:33:50'),(6,'Blogtag','Nulla ac enim.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',31.85,35.16,'Giv\'on HaHadasha','Israel','0 Stuart Circle',1,'2016-11-16 03:42:54'),(7,'Yabox','Mauris lacinia sapien quis libero.','Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.',31.78,34.75,'Bene \'Ayish','Israel','65690 Lakewood Gardens Place',0,'2016-09-12 22:18:12'),(8,'Quamba','Morbi a ipsum.','Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.',32.02,34.81,'Azor','Israel','4 Donald Drive',0,'2017-05-21 05:55:53'),(9,'Devpulse','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.','Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',32.33,34.86,'Netanya','Israel','3926 Heffernan Center',1,'2017-01-25 07:02:29'),(10,'Voolia','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.',32.81,35.36,'Bu‘eina','Israel','621 Dapin Plaza',1,'2016-09-30 05:06:46'),(11,'Skyble','Donec ut dolor.','Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',32.96,35.38,'Beit Jann','Israel','624 Troy Parkway',0,'2016-10-14 20:13:06'),(12,'Divavu','Sed accumsan felis.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',33.21,35.57,'Qiryat Shemona','Israel','26 Westerfield Road',0,'2017-02-01 05:34:04'),(13,'Vinder','Proin eu mi.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.',32.32,34.94,'Kefar Yona','Israel','08 Becker Road',1,'2017-03-24 18:37:23'),(14,'Topdrive','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.',32.52,34.90,'Qesarya','Israel','6 John Wall Lane',0,'2017-05-02 19:42:29'),(15,'Realfire','Donec ut mauris eget massa tempor convallis.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.',32.69,35.39,'Shibli','Israel','255 Loomis Place',0,'2016-09-28 03:19:48'),(16,'Quimm','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',32.10,34.96,'Rosh Ha‘Ayin','Israel','6961 Valley Edge Park',1,'2016-12-23 13:35:00'),(17,'Livepath','In est risus, auctor sed, tristique in, tempus sit amet, sem.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',32.81,35.36,'Bu‘eina','Israel','57 Pepper Wood Lane',1,'2016-09-27 18:34:48'),(18,'Rhyloo','In quis justo.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.',32.79,35.33,'‘Uzeir','Israel','5554 Lighthouse Bay Junction',1,'2017-05-24 21:25:07'),(19,'Mycat','Maecenas tincidunt lacus at velit.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.',33.28,35.58,'Metulla','Israel','9277 Forster Hill',0,'2017-01-12 14:37:28'),(20,'Trilith','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.','Nulla tellus. In sagittis dui vel nisl.',32.78,35.31,'Rumat Heib','Israel','981 Butternut Park',1,'2016-08-17 09:25:37'),(21,'Edgewire','Nulla justo.','Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.',32.19,34.82,'Kefar Shemaryahu','Israel','1817 Londonderry Road',0,'2017-06-17 05:52:12'),(22,'Rhyloo','Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',32.70,35.22,'Timrat','Israel','2 South Circle',1,'2016-12-23 00:52:09'),(23,'Jazzy','Duis at velit eu est congue elementum.','Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.',31.85,35.16,'Giv\'on HaHadasha','Israel','01 Red Cloud Court',0,'2016-08-02 22:23:11'),(24,'Plambee','Nulla suscipit ligula in lacus.','Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',32.32,34.94,'Kefar Yona','Israel','97 Shasta Lane',1,'2017-05-29 22:47:07'),(25,'Yozio','Duis mattis egestas metus.','Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',32.96,35.38,'Beit Jann','Israel','5150 Rutledge Circle',0,'2017-05-30 14:48:32'),(26,'Centizu','Curabitur gravida nisi at nibh.','Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.',31.88,35.13,'Beit Horon','Israel','181 Mallory Court',1,'2016-10-23 15:47:28'),(27,'Skyba','Suspendisse potenti.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.',32.96,35.50,'Safed','Israel','88 Northfield Terrace',1,'2016-11-10 17:10:53'),(28,'Kazio','Integer a nibh.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',32.79,35.33,'‘Uzeir','Israel','029 Maple Wood Point',0,'2017-05-02 05:09:25'),(29,'Centimia','Nam dui.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.',32.70,35.30,'Nazareth','Israel','0 West Alley',1,'2017-05-11 08:42:03'),(30,'Voonix','Aliquam quis turpis eget elit sodales scelerisque.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',32.63,35.33,'‘Afula ‘Illit','Israel','07182 Golf View Road',0,'2017-05-01 11:13:48'),(31,'Jaxnation','Etiam justo.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.',32.70,35.30,'Nazareth','Israel','2476 Dayton Road',1,'2017-07-09 09:23:11'),(32,'Photobean','Aenean auctor gravida sem.','Integer ac neque. Duis bibendum.',33.28,35.58,'Metulla','Israel','76861 Loeprich Place',1,'2016-10-14 11:39:05'),(33,'Zoonder','Nulla tellus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',31.85,35.04,'Mevo horon','Israel','69478 Waywood Pass',0,'2017-07-17 15:36:40'),(34,'Skimia','Donec quis orci eget orci vehicula condimentum.','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.',32.96,35.38,'Beit Jann','Israel','82551 Fremont Terrace',1,'2016-08-23 06:30:44'),(35,'Skinte','Morbi porttitor lorem id ligula.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.',32.82,34.99,'Haifa','Israel','199 Morrow Crossing',0,'2017-01-20 01:15:56'),(36,'Gevee','Integer tincidunt ante vel ipsum.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.',32.15,34.84,'Ramat HaSharon','Israel','95435 Texas Center',1,'2017-06-29 01:14:17'),(37,'Edgeblab','Quisque porta volutpat erat.','In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.',32.79,35.33,'‘Uzeir','Israel','925 Stuart Hill',1,'2016-09-08 16:08:16'),(38,'Jamia','Ut at dolor quis odio consequat varius.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',32.84,35.40,'‘Eilabun','Israel','8184 Dahle Alley',0,'2016-08-25 12:59:22'),(39,'Twimbo','Vivamus in felis eu sapien cursus vestibulum.','Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.',31.92,35.03,'Lapid','Israel','9 Shelley Point',0,'2017-03-01 20:00:37'),(40,'Avaveo','Integer ac leo.','Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.',32.02,34.81,'Azor','Israel','28 Johnson Hill',1,'2017-03-06 14:35:50'),(41,'Browsebug','Sed ante.','Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.',32.12,35.13,'Revava','Israel','36297 Hoffman Court',1,'2017-06-25 17:37:18'),(42,'Zoomlounge','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',32.70,35.22,'Timrat','Israel','45 Pankratz Parkway',0,'2017-01-18 20:07:31');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionsToSkills`
--

DROP TABLE IF EXISTS `positionsToSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positionsToSkills` (
  `rowNum` int(10) NOT NULL AUTO_INCREMENT,
  `positionId` int(10) DEFAULT NULL,
  `skillId` int(10) DEFAULT NULL,
  PRIMARY KEY (`rowNum`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionsToSkills`
--

LOCK TABLES `positionsToSkills` WRITE;
/*!40000 ALTER TABLE `positionsToSkills` DISABLE KEYS */;
INSERT INTO `positionsToSkills` VALUES (43,24,17),(44,11,17),(45,15,7),(46,37,7),(47,28,6),(48,18,5),(49,16,21),(50,34,27),(51,8,5),(52,41,12),(53,11,11),(54,22,4),(55,31,5),(56,4,17),(57,33,21),(58,4,2),(59,18,16),(60,10,10),(61,39,14),(62,31,26),(63,8,8),(64,41,22),(65,15,23),(66,7,22),(67,42,7),(68,7,2),(69,40,4),(70,10,20),(71,7,4),(72,26,11),(73,27,24),(74,22,20),(75,42,20),(76,37,21),(77,29,5),(78,21,23),(79,13,24),(80,19,18),(81,9,13),(82,15,25),(83,17,27),(84,10,8),(85,6,15),(86,6,9),(87,19,20),(88,37,2),(89,28,8),(90,10,12),(91,26,19),(92,16,12),(93,13,21),(94,18,3),(95,36,20),(96,26,21),(97,3,12),(98,24,15),(99,16,26),(100,24,2),(101,21,15),(102,28,9),(103,25,4),(104,42,16),(105,42,25),(106,6,17),(107,35,11),(108,27,22),(109,20,26),(110,42,22),(111,24,13),(112,33,23),(113,24,25),(114,9,5),(115,25,5),(116,20,2),(117,29,15),(118,4,6),(119,8,12),(120,20,10),(121,3,1),(122,30,14),(123,34,7),(124,15,16),(125,8,6),(126,5,5),(127,22,27),(128,20,9),(129,22,12),(130,11,2),(131,10,26),(132,6,13),(133,36,23),(134,4,12),(135,8,20),(136,18,9),(137,10,3),(138,7,11),(139,19,17),(140,39,16),(141,22,1),(142,21,11),(143,13,9),(144,8,25),(145,13,6),(146,22,26),(147,1,8),(148,21,13),(149,6,11),(150,23,21),(151,9,22),(152,21,25),(153,35,7),(154,8,4),(155,8,11),(156,10,9),(157,35,1),(158,18,1),(159,25,19),(160,20,3),(161,38,26),(162,10,11),(163,28,13),(164,28,18),(165,17,3),(166,7,26),(167,38,11),(168,32,17),(169,30,19),(170,31,22),(171,22,9),(172,36,24),(173,33,2),(174,28,11),(175,26,25),(176,24,3),(177,36,25),(178,26,9),(179,25,6),(180,37,23),(181,23,5),(182,31,3),(183,30,25),(184,29,21),(185,2,13),(186,35,16),(187,24,27),(188,29,2),(189,12,20),(190,1,27),(191,8,18),(192,41,2),(193,32,20),(194,5,4),(195,5,26),(196,8,9),(197,26,2),(198,1,11),(199,39,23),(200,31,26),(201,25,26),(202,10,6),(203,40,14),(204,30,20),(205,15,4),(206,25,23),(207,23,10),(208,2,23),(209,17,11),(210,38,9),(211,15,10),(212,31,21),(213,33,16),(214,13,26),(215,37,22),(216,32,1),(217,18,2),(218,7,3),(219,20,4),(220,9,9),(221,21,9),(222,22,7),(223,31,27),(224,8,26),(225,24,6),(226,17,15),(227,15,2),(228,5,8),(229,20,12),(230,3,7),(231,21,8),(232,17,12),(233,40,9),(234,35,25),(235,12,17),(236,18,23),(237,35,4),(238,36,11),(239,28,4),(240,35,3),(241,13,25),(242,11,7);
/*!40000 ALTER TABLE `positionsToSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionstoskills`
--

DROP TABLE IF EXISTS `positionstoskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positionstoskills` (
  `rowNum` int(10) NOT NULL AUTO_INCREMENT,
  `positionId` int(10) DEFAULT NULL,
  `skillId` int(10) DEFAULT NULL,
  PRIMARY KEY (`rowNum`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionstoskills`
--

LOCK TABLES `positionstoskills` WRITE;
/*!40000 ALTER TABLE `positionstoskills` DISABLE KEYS */;
INSERT INTO `positionstoskills` VALUES (43,24,17),(44,11,17),(45,15,7),(46,37,7),(47,28,6),(48,18,5),(49,16,21),(50,34,27),(51,8,5),(52,41,12),(53,11,11),(54,22,4),(55,31,5),(56,4,17),(57,33,21),(58,4,2),(59,18,16),(60,10,10),(61,39,14),(62,31,26),(63,8,8),(64,41,22),(65,15,23),(66,7,22),(67,42,7),(68,7,2),(69,40,4),(70,10,20),(71,7,4),(72,26,11),(73,27,24),(74,22,20),(75,42,20),(76,37,21),(77,29,5),(78,21,23),(79,13,24),(80,19,18),(81,9,13),(82,15,25),(83,17,27),(84,10,8),(85,6,15),(86,6,9),(87,19,20),(88,37,2),(89,28,8),(90,10,12),(91,26,19),(92,16,12),(93,13,21),(94,18,3),(95,36,20),(96,26,21),(97,3,12),(98,24,15),(99,16,26),(100,24,2),(101,21,15),(102,28,9),(103,25,4),(104,42,16),(105,42,25),(106,6,17),(107,35,11),(108,27,22),(109,20,26),(110,42,22),(111,24,13),(112,33,23),(113,24,25),(114,9,5),(115,25,5),(116,20,2),(117,29,15),(118,4,6),(119,8,12),(120,20,10),(121,3,1),(122,30,14),(123,34,7),(124,15,16),(125,8,6),(126,5,5),(127,22,27),(128,20,9),(129,22,12),(130,11,2),(131,10,26),(132,6,13),(133,36,23),(134,4,12),(135,8,20),(136,18,9),(137,10,3),(138,7,11),(139,19,17),(140,39,16),(141,22,1),(142,21,11),(143,13,9),(144,8,25),(145,13,6),(146,22,26),(147,1,8),(148,21,13),(149,6,11),(150,23,21),(151,9,22),(152,21,25),(153,35,7),(154,8,4),(155,8,11),(156,10,9),(157,35,1),(158,18,1),(159,25,19),(160,20,3),(161,38,26),(162,10,11),(163,28,13),(164,28,18),(165,17,3),(166,7,26),(167,38,11),(168,32,17),(169,30,19),(170,31,22),(171,22,9),(172,36,24),(173,33,2),(174,28,11),(175,26,25),(176,24,3),(177,36,25),(178,26,9),(179,25,6),(180,37,23),(181,23,5),(182,31,3),(183,30,25),(184,29,21),(185,2,13),(186,35,16),(187,24,27),(188,29,2),(189,12,20),(190,1,27),(191,8,18),(192,41,2),(193,32,20),(194,5,4),(195,5,26),(196,8,9),(197,26,2),(198,1,11),(199,39,23),(200,31,26),(201,25,26),(202,10,6),(203,40,14),(204,30,20),(205,15,4),(206,25,23),(207,23,10),(208,2,23),(209,17,11),(210,38,9),(211,15,10),(212,31,21),(213,33,16),(214,13,26),(215,37,22),(216,32,1),(217,18,2),(218,7,3),(219,20,4),(220,9,9),(221,21,9),(222,22,7),(223,31,27),(224,8,26),(225,24,6),(226,17,15),(227,15,2),(228,5,8),(229,20,12),(230,3,7),(231,21,8),(232,17,12),(233,40,9),(234,35,25),(235,12,17),(236,18,23),(237,35,4),(238,36,11),(239,28,4),(240,35,3),(241,13,25),(242,11,7);
/*!40000 ALTER TABLE `positionstoskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitePositions`
--

DROP TABLE IF EXISTS `sitePositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitePositions` (
  `positionId` int(10) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `lat` float(10,2) DEFAULT NULL,
  `lng` float(10,2) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `isRelevant` int(1) DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  PRIMARY KEY (`positionId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitePositions`
--

LOCK TABLES `sitePositions` WRITE;
/*!40000 ALTER TABLE `sitePositions` DISABLE KEYS */;
INSERT INTO `sitePositions` VALUES (1,'Skyvu','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',32.52,34.90,'Qesarya','Israel','92 Blackbird Point',1,'2016-09-17 01:24:17'),(2,'Snaptags','In hac habitasse platea dictumst.','Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.',32.17,34.83,'Herzliyya','Israel','5634 Thierer Drive',0,'2016-12-13 02:38:25'),(3,'Oodoo','Aliquam erat volutpat.','Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.',31.85,35.16,'Giv\'on HaHadasha','Israel','43636 Mallard Parkway',1,'2017-04-28 05:25:58'),(4,'Jabbertype','Donec dapibus.','Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',32.12,35.13,'Revava','Israel','1036 Beilfuss Junction',0,'2017-03-24 01:49:20'),(5,'Jaloo','Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.',32.33,34.86,'Netanya','Israel','0 Kensington Road',0,'2017-04-19 07:33:50'),(6,'Blogtag','Nulla ac enim.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',31.85,35.16,'Giv\'on HaHadasha','Israel','0 Stuart Circle',1,'2016-11-16 03:42:54'),(7,'Yabox','Mauris lacinia sapien quis libero.','Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.',31.78,34.75,'Bene \'Ayish','Israel','65690 Lakewood Gardens Place',0,'2016-09-12 22:18:12'),(8,'Quamba','Morbi a ipsum.','Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.',32.02,34.81,'Azor','Israel','4 Donald Drive',0,'2017-05-21 05:55:53'),(9,'Devpulse','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.','Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',32.33,34.86,'Netanya','Israel','3926 Heffernan Center',1,'2017-01-25 07:02:29'),(10,'Voolia','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.',32.81,35.36,'Bu‘eina','Israel','621 Dapin Plaza',1,'2016-09-30 05:06:46'),(11,'Skyble','Donec ut dolor.','Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',32.96,35.38,'Beit Jann','Israel','624 Troy Parkway',0,'2016-10-14 20:13:06'),(12,'Divavu','Sed accumsan felis.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',33.21,35.57,'Qiryat Shemona','Israel','26 Westerfield Road',0,'2017-02-01 05:34:04'),(13,'Vinder','Proin eu mi.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.',32.32,34.94,'Kefar Yona','Israel','08 Becker Road',1,'2017-03-24 18:37:23'),(14,'Topdrive','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.',32.52,34.90,'Qesarya','Israel','6 John Wall Lane',0,'2017-05-02 19:42:29'),(15,'Realfire','Donec ut mauris eget massa tempor convallis.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.',32.69,35.39,'Shibli','Israel','255 Loomis Place',0,'2016-09-28 03:19:48'),(16,'Quimm','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',32.10,34.96,'Rosh Ha‘Ayin','Israel','6961 Valley Edge Park',1,'2016-12-23 13:35:00'),(17,'Livepath','In est risus, auctor sed, tristique in, tempus sit amet, sem.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',32.81,35.36,'Bu‘eina','Israel','57 Pepper Wood Lane',1,'2016-09-27 18:34:48'),(18,'Rhyloo','In quis justo.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.',32.79,35.33,'‘Uzeir','Israel','5554 Lighthouse Bay Junction',1,'2017-05-24 21:25:07'),(19,'Mycat','Maecenas tincidunt lacus at velit.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.',33.28,35.58,'Metulla','Israel','9277 Forster Hill',0,'2017-01-12 14:37:28'),(20,'Trilith','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.','Nulla tellus. In sagittis dui vel nisl.',32.78,35.31,'Rumat Heib','Israel','981 Butternut Park',1,'2016-08-17 09:25:37'),(21,'Edgewire','Nulla justo.','Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.',32.19,34.82,'Kefar Shemaryahu','Israel','1817 Londonderry Road',0,'2017-06-17 05:52:12'),(22,'Rhyloo','Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',32.70,35.22,'Timrat','Israel','2 South Circle',1,'2016-12-23 00:52:09'),(23,'Jazzy','Duis at velit eu est congue elementum.','Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.',31.85,35.16,'Giv\'on HaHadasha','Israel','01 Red Cloud Court',0,'2016-08-02 22:23:11'),(24,'Plambee','Nulla suscipit ligula in lacus.','Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',32.32,34.94,'Kefar Yona','Israel','97 Shasta Lane',1,'2017-05-29 22:47:07'),(25,'Yozio','Duis mattis egestas metus.','Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',32.96,35.38,'Beit Jann','Israel','5150 Rutledge Circle',0,'2017-05-30 14:48:32'),(26,'Centizu','Curabitur gravida nisi at nibh.','Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.',31.88,35.13,'Beit Horon','Israel','181 Mallory Court',1,'2016-10-23 15:47:28'),(27,'Skyba','Suspendisse potenti.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.',32.96,35.50,'Safed','Israel','88 Northfield Terrace',1,'2016-11-10 17:10:53'),(28,'Kazio','Integer a nibh.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',32.79,35.33,'‘Uzeir','Israel','029 Maple Wood Point',0,'2017-05-02 05:09:25'),(29,'Centimia','Nam dui.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.',32.70,35.30,'Nazareth','Israel','0 West Alley',1,'2017-05-11 08:42:03'),(30,'Voonix','Aliquam quis turpis eget elit sodales scelerisque.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',32.63,35.33,'‘Afula ‘Illit','Israel','07182 Golf View Road',0,'2017-05-01 11:13:48'),(31,'Jaxnation','Etiam justo.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.',32.70,35.30,'Nazareth','Israel','2476 Dayton Road',1,'2017-07-09 09:23:11'),(32,'Photobean','Aenean auctor gravida sem.','Integer ac neque. Duis bibendum.',33.28,35.58,'Metulla','Israel','76861 Loeprich Place',1,'2016-10-14 11:39:05'),(33,'Zoonder','Nulla tellus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',31.85,35.04,'Mevo horon','Israel','69478 Waywood Pass',0,'2017-07-17 15:36:40'),(34,'Skimia','Donec quis orci eget orci vehicula condimentum.','Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.',32.96,35.38,'Beit Jann','Israel','82551 Fremont Terrace',1,'2016-08-23 06:30:44'),(35,'Skinte','Morbi porttitor lorem id ligula.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.',32.82,34.99,'Haifa','Israel','199 Morrow Crossing',0,'2017-01-20 01:15:56'),(36,'Gevee','Integer tincidunt ante vel ipsum.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.',32.15,34.84,'Ramat HaSharon','Israel','95435 Texas Center',1,'2017-06-29 01:14:17'),(37,'Edgeblab','Quisque porta volutpat erat.','In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.',32.79,35.33,'‘Uzeir','Israel','925 Stuart Hill',1,'2016-09-08 16:08:16'),(38,'Jamia','Ut at dolor quis odio consequat varius.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',32.84,35.40,'‘Eilabun','Israel','8184 Dahle Alley',0,'2016-08-25 12:59:22'),(39,'Twimbo','Vivamus in felis eu sapien cursus vestibulum.','Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.',31.92,35.03,'Lapid','Israel','9 Shelley Point',0,'2017-03-01 20:00:37'),(40,'Avaveo','Integer ac leo.','Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.',32.02,34.81,'Azor','Israel','28 Johnson Hill',1,'2017-03-06 14:35:50'),(41,'Browsebug','Sed ante.','Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.',32.12,35.13,'Revava','Israel','36297 Hoffman Court',1,'2017-06-25 17:37:18'),(42,'Zoomlounge','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',32.70,35.22,'Timrat','Israel','45 Pankratz Parkway',0,'2017-01-18 20:07:31');
/*!40000 ALTER TABLE `sitePositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skillId` int(10) NOT NULL AUTO_INCREMENT,
  `skillName` varchar(50) NOT NULL,
  PRIMARY KEY (`skillId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'C++'),(2,'JavaScript'),(3,'C'),(4,'AngularJS'),(5,'Angular'),(6,'React'),(7,'nodeJS'),(8,'Ruby'),(9,'Php'),(10,'Java'),(11,'Asp.Net'),(12,'TypeScript'),(13,'Python'),(14,'Cobol'),(15,'Bash'),(16,'Delphi'),(17,'SQL'),(18,'Assembly'),(19,'Objective-C'),(20,'Swift'),(21,'Pascal'),(22,'Vue'),(23,'AJAX'),(24,'Perl'),(25,'C#'),(26,'XML'),(27,'HTML');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemUsers`
--

DROP TABLE IF EXISTS `systemUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemUsers` (
  `userId` int(10) NOT NULL AUTO_INCREMENT,
  `registrationDate` datetime DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userPassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemUsers`
--

LOCK TABLES `systemUsers` WRITE;
/*!40000 ALTER TABLE `systemUsers` DISABLE KEYS */;
INSERT INTO `systemUsers` VALUES (1,NULL,'Moshe','Levi','moshe@gmail.com','32.09','34.78','Hi, yes.','mosheUser','moshe'),(2,NULL,'Jonathan','Levinson','hi@bye.com','32.09','34.78','something','jon_e','1'),(3,NULL,'','','re@rt.ij','0.00','0.00','','newPass','$2a$12$08xC012wM.zOBopl7WeA3etZEvnvidwiTt28HhvO0sQZF9yEhr1xq'),(4,NULL,'','','test@test','0.00','0.00','','test','$2a$12$t.nqpLnxxF0jzVWpl1XBne6GqgMirrAvHH0Ji0e/ZmFMVMD7xdT7S'),(5,NULL,'','','cohen@mail.com','32.321458','34.853196000000025','','cohen','cohen'),(6,NULL,'','','fg@ff.mk','32.321458','34.853196000000025','','jj','$2a$12$sw3cnGN0owdHZ53So2S/SOuOPBk3HHo.7RuMRRtjnNH88m/lv5/kG');
/*!40000 ALTER TABLE `systemUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(10) NOT NULL AUTO_INCREMENT,
  `registrationDate` datetime DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `lat` float(10,2) DEFAULT NULL,
  `lng` float(10,2) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'Moshe','Levi','moshe@gmail.com',32.09,34.78,'Hi, yes.','mosheUser','moshe'),(2,NULL,'Jonathan','Levinson','hi@bye.com',32.09,34.78,'something','jon_e','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersToPositions`
--

DROP TABLE IF EXISTS `usersToPositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersToPositions` (
  `rowId` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL,
  `positionId` int(10) NOT NULL,
  PRIMARY KEY (`rowId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersToPositions`
--

LOCK TABLES `usersToPositions` WRITE;
/*!40000 ALTER TABLE `usersToPositions` DISABLE KEYS */;
INSERT INTO `usersToPositions` VALUES (3,1,1),(4,1,6);
/*!40000 ALTER TABLE `usersToPositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstopositions`
--

DROP TABLE IF EXISTS `userstopositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstopositions` (
  `rowId` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL,
  `positionId` int(10) NOT NULL,
  PRIMARY KEY (`rowId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstopositions`
--

LOCK TABLES `userstopositions` WRITE;
/*!40000 ALTER TABLE `userstopositions` DISABLE KEYS */;
INSERT INTO `userstopositions` VALUES (3,1,1),(4,1,6);
/*!40000 ALTER TABLE `userstopositions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-17 13:26:52
