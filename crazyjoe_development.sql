-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: crazyjoe_development
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (2,'image','Game',22,2,'2022-04-02 13:11:29.913573'),(3,'image','Game',23,3,'2022-04-02 13:13:41.329520'),(4,'image','Game',24,4,'2022-04-02 13:14:29.261067'),(5,'image','Game',25,5,'2022-04-02 13:15:21.749195'),(6,'image','Game',26,6,'2022-04-02 13:16:15.676576'),(7,'image','Game',27,7,'2022-04-02 13:20:01.172807');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (2,'fis3v1djn5kzwd2kdh1rp3wgyfu8','assassins.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',10848,'b47asFLTn92+wdrV1B9JOg==','2022-04-02 13:11:29.910695'),(3,'l5p3wncprkjz239bgpeyd04h92f5','callofduty.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',7747,'82O68BZfJ921i+G/AMfj4g==','2022-04-02 13:13:41.326297'),(4,'rs3x2tpvhghnrs0rp723q9l256li','deadisland.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',13451,'ytxMtbQT+dP3cQ0w6NfV+w==','2022-04-02 13:14:29.258545'),(5,'gltzidpmpuqp1b0t1cdcl6ewhxh2','fifa13.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',10642,'rMSwMVQ3f7JhynofyFonSA==','2022-04-02 13:15:21.746437'),(6,'knohopf0s1jg8gkr43gtsx656pc9','luigi.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',9760,'AbH9WxffA46B+3m+puo0Bw==','2022-04-02 13:16:15.673745'),(7,'ct3l5uy9yup62qf4kwtqwdcs7vnc','luigi.jpeg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',9760,'AbH9WxffA46B+3m+puo0Bw==','2022-04-02 13:20:01.169061');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blob_id` bigint NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2022-04-01 14:39:17.931555','2022-04-01 14:39:17.931555');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consoles`
--

DROP TABLE IF EXISTS `consoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consoles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `colour` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consoles`
--

LOCK TABLES `consoles` WRITE;
/*!40000 ALTER TABLE `consoles` DISABLE KEYS */;
INSERT INTO `consoles` VALUES (1,'Marcos Huel','Jacobi University','harlequin','055','PAL',13,'2022-04-01 14:50:02.176700','2022-04-01 14:50:02.176700'),(2,'Len Collier','South Lind Institute','tan','056','PAL',23,'2022-04-01 14:50:02.190643','2022-04-01 14:50:02.190643'),(3,'Precious Hegmann','Hegmann Institute','viridian','011','PAL',73,'2022-04-01 14:50:02.202729','2022-04-01 14:50:02.202729'),(4,'Asia Gutkowski','East Hand College','grey','068','PAL',29,'2022-04-01 14:50:02.219862','2022-04-01 14:50:02.219862'),(5,'Amb. Abbie Carroll','The McKenzie Academy','turquoise','072','PAL',61,'2022-04-01 14:50:02.233076','2022-04-01 14:50:02.233076'),(6,'Milo Bradtke DO','Western Schoen University','carmine','077','PAL',12,'2022-04-01 14:50:02.246494','2022-04-01 14:50:02.246494'),(7,'Alfredo Barton','North Watsica','red','024','PAL',74,'2022-04-01 14:50:02.262201','2022-04-01 14:50:02.262201'),(8,'Prudence Beer','East Pacocha Institute','cerise','098','PAL',24,'2022-04-01 14:50:02.279882','2022-04-01 14:50:02.279882'),(9,'Le Larson','East Gottlieb','tan','003','PAL',94,'2022-04-01 14:50:02.298309','2022-04-01 14:50:02.298309'),(10,'Hugh Sauer','Western Alabama Institute','lilac','004','PAL',26,'2022-04-01 14:50:02.316389','2022-04-01 14:50:02.316389'),(11,'Lizabeth Kohler Ret.','West Labadie','tan','044','PAL',88,'2022-04-01 14:50:02.330205','2022-04-01 14:50:02.330205'),(12,'Numbers Stracke IV','Southern Alabama College','black','037','PAL',39,'2022-04-01 14:50:02.341358','2022-04-01 14:50:02.341358'),(13,'Tyrone Ledner','Western Simonis Academy','maroon','074','PAL',42,'2022-04-01 14:50:02.355584','2022-04-01 14:50:02.355584'),(14,'Ms. Ranae Jaskolski','Southern Langosh','blue','081','PAL',75,'2022-04-01 14:50:02.370859','2022-04-01 14:50:02.370859'),(15,'Ellis Ledner','North Bahringer','orchid','043','PAL',23,'2022-04-01 14:50:02.385890','2022-04-01 14:50:02.385890'),(16,'Rev. Glenn Parker','The Mohr','ruby','058','PAL',24,'2022-04-01 14:50:02.397726','2022-04-01 14:50:02.397726'),(17,'Arron Schaefer','West Nader College','cyan','017','PAL',43,'2022-04-01 14:50:02.408829','2022-04-01 14:50:02.408829'),(18,'Ermelinda Heidenreich','Hoeger College','aquamarine','004','PAL',18,'2022-04-01 14:50:02.422895','2022-04-01 14:50:02.422895'),(19,'Alexis Terry','Robel University','red','012','PAL',55,'2022-04-01 14:50:02.440346','2022-04-01 14:50:02.440346'),(20,'Lise Trantow','Eastern Michigan Institute','apricot','039','PAL',25,'2022-04-01 14:50:02.462741','2022-04-01 14:50:02.462741'),(21,'Janell Hane','Eastern Arizona University','coral','046','PAL',49,'2022-04-01 14:50:02.479989','2022-04-01 14:50:02.479989'),(22,'Shane Grimes','King College','burgundy','099','PAL',92,'2022-04-01 14:50:02.492800','2022-04-01 14:50:02.492800'),(23,'Cyrus Lueilwitz IV','South Michigan Academy','champagne','072','PAL',68,'2022-04-01 14:50:02.504473','2022-04-01 14:50:02.504473'),(24,'Jay Howell','Howell Academy','rose','048','PAL',85,'2022-04-01 14:50:02.518175','2022-04-01 14:50:02.518175'),(25,'Zane Lesch','Southern Schroeder Academy','coral','098','PAL',52,'2022-04-01 14:50:02.535566','2022-04-01 14:50:02.535566'),(26,'Rona Jakubowski','Western Alabama Institute','amaranth','019','PAL',44,'2022-04-01 14:50:02.550292','2022-04-01 14:50:02.550292'),(27,'Evelyne Rath PhD','Eastern Hilpert College','plum','019','PAL',72,'2022-04-01 14:50:02.560800','2022-04-01 14:50:02.560800'),(28,'Rico Turner','Southern MacGyver','grey','038','PAL',53,'2022-04-01 14:50:02.571106','2022-04-01 14:50:02.571106'),(29,'Janella Wintheiser','West Wyoming Institute','tan','045','PAL',57,'2022-04-01 14:50:02.585121','2022-04-01 14:50:02.585121'),(30,'Fermin Rutherford','Eastern Arkansas Academy','tan','037','PAL',89,'2022-04-01 14:50:02.608932','2022-04-01 14:50:02.608932'),(31,'The Hon. Francisco Will','Bartell Academy','periwinkle','075','PAL',15,'2022-04-01 14:50:02.627308','2022-04-01 14:50:02.627308'),(32,'Gaston Friesen','Eastern Nicolas Academy','sky','043','PAL',99,'2022-04-01 14:50:02.643329','2022-04-01 14:50:02.643329'),(33,'Jarrett Jacobs','East Halvorson University','copper','053','PAL',92,'2022-04-01 14:50:02.657045','2022-04-01 14:50:02.657045'),(34,'Vonnie Kozey Sr.','North Colorado College','erin','059','PAL',54,'2022-04-01 14:50:02.668620','2022-04-01 14:50:02.668620'),(35,'Lindsay Leffler IV','Will College','black','058','PAL',8,'2022-04-01 14:50:02.681880','2022-04-01 14:50:02.681880'),(36,'Milagro Ebert','Nienow Institute','cerise','069','PAL',99,'2022-04-01 14:50:02.696540','2022-04-01 14:50:02.696540'),(37,'Chase Mosciski','Southern Boehm Academy','emerald','029','PAL',76,'2022-04-01 14:50:02.707010','2022-04-01 14:50:02.707010'),(38,'The Hon. Emmie Skiles','Eastern Nicolas','amber','055','PAL',97,'2022-04-01 14:50:02.716657','2022-04-01 14:50:02.716657'),(39,'Louis Sanford','Orn University','blue','026','PAL',57,'2022-04-01 14:50:02.725674','2022-04-01 14:50:02.725674'),(40,'Fr. Damon Gorczany','The Colorado University','plum','079','PAL',65,'2022-04-01 14:50:02.735668','2022-04-01 14:50:02.735668'),(41,'Ashleigh Hermiston CPA','South Fisher College','turquoise','067','PAL',48,'2022-04-01 14:50:22.531767','2022-04-01 14:50:22.531767'),(42,'Melda Nitzsche','East Torphy','copper','008','PAL',38,'2022-04-01 14:50:22.544824','2022-04-01 14:50:22.544824'),(43,'Kerry Grady','Kulas Academy','lilac','024','PAL',79,'2022-04-01 14:50:22.552503','2022-04-01 14:50:22.552503'),(44,'Msgr. Demarcus Gibson','South Muller','harlequin','021','PAL',21,'2022-04-01 14:50:22.561630','2022-04-01 14:50:22.561630'),(45,'Berry Goyette DC','West Kohler Institute','lemon','051','PAL',62,'2022-04-01 14:50:22.569967','2022-04-01 14:50:22.569967'),(46,'Michele Denesik','Southern Cartwright','beige','045','PAL',51,'2022-04-01 14:50:22.582610','2022-04-01 14:50:22.582610'),(47,'Gerard Volkman','North Michigan University','chocolate','021','PAL',19,'2022-04-01 14:50:22.603295','2022-04-01 14:50:22.603295'),(48,'Paola Pacocha','Northern Gislason','copper','004','PAL',45,'2022-04-01 14:50:22.618662','2022-04-01 14:50:22.618662'),(49,'Dr. Natisha Lebsack','North Donnelly University','rose','003','PAL',49,'2022-04-01 14:50:22.630312','2022-04-01 14:50:22.630312'),(50,'Rep. Carroll Walsh','West Sauer University','yellow','038','PAL',74,'2022-04-01 14:50:22.642193','2022-04-01 14:50:22.642193'),(51,'Rudolf Quitzon','Doyle University','byzantium','095','PAL',63,'2022-04-01 14:50:22.653804','2022-04-01 14:50:22.653804'),(52,'Wally Schaefer Jr.','Southern Kessler','taupe','034','PAL',18,'2022-04-01 14:50:22.669160','2022-04-01 14:50:22.669160'),(53,'Don Glover','Northern Moore','cyan','093','PAL',56,'2022-04-01 14:50:22.686039','2022-04-01 14:50:22.686039'),(54,'Margert Kertzmann','Southern Schaden Institute','orange','091','PAL',27,'2022-04-01 14:50:22.696365','2022-04-01 14:50:22.696365'),(55,'Pres. Pattie Monahan','Eastern Idaho College','plum','051','PAL',81,'2022-04-01 14:50:22.704856','2022-04-01 14:50:22.704856'),(56,'Miss Alden Ratke','The Walker','teal','031','PAL',28,'2022-04-01 14:50:22.717261','2022-04-01 14:50:22.717261'),(57,'Shawnee Bernhard','Western Koss','indigo','052','PAL',81,'2022-04-01 14:50:22.728981','2022-04-01 14:50:22.728981'),(58,'Miquel Kunze Sr.','Western Daugherty University','mauve','063','PAL',15,'2022-04-01 14:50:22.743007','2022-04-01 14:50:22.743007'),(59,'Andra Erdman','West Maine Academy','rose','028','PAL',94,'2022-04-01 14:50:22.753067','2022-04-01 14:50:22.753067'),(60,'Vada Hauck','Okuneva University','white','017','PAL',1,'2022-04-01 14:50:22.762459','2022-04-01 14:50:22.762459'),(61,'Pres. Otis Gibson','West Keeling Institute','cyan','082','PAL',61,'2022-04-01 14:50:22.771908','2022-04-01 14:50:22.771908'),(62,'Shayla Stehr','North Renner College','periwinkle','089','PAL',86,'2022-04-01 14:50:22.780441','2022-04-01 14:50:22.780441'),(63,'Fr. Henry Kuvalis','Smith Institute','peach','085','PAL',84,'2022-04-01 14:50:22.794083','2022-04-01 14:50:22.794083'),(64,'Rubin Weimann LLD','Western Connecticut Academy','harlequin','052','PAL',21,'2022-04-01 14:50:22.807935','2022-04-01 14:50:22.807935'),(65,'Muoi Volkman DC','Marvin University','scarlet','093','PAL',64,'2022-04-01 14:50:22.817896','2022-04-01 14:50:22.817896'),(66,'Anthony O\'Reilly','West South Carolina University','turquoise','081','PAL',9,'2022-04-01 14:50:22.827383','2022-04-01 14:50:22.827383'),(67,'Lynwood Ortiz','The Turcotte','viridian','009','PAL',47,'2022-04-01 14:50:22.836556','2022-04-01 14:50:22.836556'),(68,'Zoraida Hirthe','Cormier University','blush','004','PAL',1,'2022-04-01 14:50:22.849206','2022-04-01 14:50:22.849206'),(69,'Regan Schmidt CPA','East Beier','red','082','PAL',59,'2022-04-01 14:50:22.866385','2022-04-01 14:50:22.866385'),(70,'Daren Murray','Northern Massachusetts Academy','raspberry','001','PAL',91,'2022-04-01 14:50:22.879153','2022-04-01 14:50:22.879153'),(71,'Silva Muller','Southern Mississippi Academy','harlequin','023','PAL',87,'2022-04-01 14:50:22.889470','2022-04-01 14:50:22.889470'),(72,'Fermin Nader','Eastern Jones College','gray','042','PAL',69,'2022-04-01 14:50:22.899350','2022-04-01 14:50:22.899350'),(73,'Amb. Walton Johnson','North Florida Academy','burgundy','037','PAL',25,'2022-04-01 14:50:22.910032','2022-04-01 14:50:22.910032'),(74,'Eliseo Gusikowski','Prohaska University','gray','044','PAL',53,'2022-04-01 14:50:22.919800','2022-04-01 14:50:22.919800'),(75,'Mrs. Shannon Ebert','Eastern New York Academy','periwinkle','048','PAL',26,'2022-04-01 14:50:22.929121','2022-04-01 14:50:22.929121'),(76,'Bernarda Mante','South Langosh','brown','087','PAL',24,'2022-04-01 14:50:22.938970','2022-04-01 14:50:22.938970'),(77,'Refugio Prosacco','Mayer College','sky','043','PAL',58,'2022-04-01 14:50:22.953980','2022-04-01 14:50:22.953980'),(78,'Ariane Konopelski LLD','Dooley University','coffee','068','PAL',83,'2022-04-01 14:50:22.973211','2022-04-01 14:50:22.973211'),(79,'Rev. Jorge Fay','Southern Auer','gray','091','PAL',25,'2022-04-01 14:50:22.989395','2022-04-01 14:50:22.989395'),(80,'Eloy Walker','South Collins','sapphire','083','PAL',12,'2022-04-01 14:50:23.008142','2022-04-01 14:50:23.008142'),(81,'Jewell Wintheiser','North Hawaii University','coral','002','PAL',2,'2022-04-01 14:51:29.563661','2022-04-01 14:51:29.563661'),(82,'Marleen Rowe','Southern Abbott','brown','011','PAL',65,'2022-04-01 14:51:29.576259','2022-04-01 14:51:29.576259'),(83,'Inga Fahey','Stiedemann University','black','094','PAL',12,'2022-04-01 14:51:29.583857','2022-04-01 14:51:29.583857'),(84,'Jame Farrell II','Eastern Ferry University','burgundy','062','PAL',11,'2022-04-01 14:51:29.595773','2022-04-01 14:51:29.595773'),(85,'Darrick Bogisich','Southern North Dakota Institute','burgundy','083','PAL',9,'2022-04-01 14:51:29.612978','2022-04-01 14:51:29.612978'),(86,'Leigh Rogahn','West Alaska Institute','sangria','045','PAL',68,'2022-04-01 14:51:29.626219','2022-04-01 14:51:29.626219'),(87,'Dr. Jonathon Graham','North South Carolina College','puce','045','PAL',43,'2022-04-01 14:51:29.637716','2022-04-01 14:51:29.637716'),(88,'Amb. Roosevelt D\'Amore','West Hoeger','coffee','036','PAL',62,'2022-04-01 14:51:29.668152','2022-04-01 14:51:29.668152'),(89,'Gov. Lottie Hackett','The Pfeffer Academy','taupe','074','PAL',87,'2022-04-01 14:51:29.677251','2022-04-01 14:51:29.677251'),(90,'Emmitt Barrows','North Maryland Institute','rose','071','PAL',57,'2022-04-01 14:51:29.696525','2022-04-01 14:51:29.696525'),(91,'Darren Sipes','Shanahan Academy','pear','078','PAL',33,'2022-04-01 14:51:29.709641','2022-04-01 14:51:29.709641'),(92,'Clifford Walsh','Eastern New Jersey Academy','jade','088','PAL',11,'2022-04-01 14:51:29.724890','2022-04-01 14:51:29.724890'),(93,'Tyra Swaniawski','Eastern Mosciski','amaranth','097','PAL',64,'2022-04-01 14:51:29.736014','2022-04-01 14:51:29.736014'),(94,'Ji Wiegand','Northern Alaska University','orange','063','PAL',38,'2022-04-01 14:51:29.751118','2022-04-01 14:51:29.751118'),(95,'Kelle Bechtelar CPA','The Virginia University','indigo','077','PAL',66,'2022-04-01 14:51:29.777377','2022-04-01 14:51:29.777377'),(96,'Carmon Deckow','East Deckow','olive','039','PAL',96,'2022-04-01 14:51:29.796057','2022-04-01 14:51:29.796057'),(97,'Neomi Keebler','The California College','yellow','046','PAL',57,'2022-04-01 14:51:29.814684','2022-04-01 14:51:29.814684'),(98,'Harley Kautzer','South Jones Academy','carmine','099','PAL',6,'2022-04-01 14:51:29.825324','2022-04-01 14:51:29.825324'),(99,'Quentin Schoen','West Labadie Academy','violet','015','PAL',44,'2022-04-01 14:51:29.834499','2022-04-01 14:51:29.834499'),(100,'Earl Breitenberg','Rogahn College','sapphire','065','PAL',64,'2022-04-01 14:51:29.843525','2022-04-01 14:51:29.843525'),(101,'Kaila Stokes','Southern Kunze Institute','amaranth','098','PAL',38,'2022-04-01 14:51:29.853015','2022-04-01 14:51:29.853015'),(102,'Timothy Block','Miller Institute','taupe','066','PAL',11,'2022-04-01 14:51:29.866010','2022-04-01 14:51:29.866010'),(103,'Millard Hauck','The Maine University','scarlet','062','PAL',66,'2022-04-01 14:51:29.884588','2022-04-01 14:51:29.884588'),(104,'Miss Lilla Effertz','Eastern Walsh Academy','burgundy','051','PAL',7,'2022-04-01 14:51:29.903563','2022-04-01 14:51:29.903563'),(105,'Msgr. Shelton Balistreri','North Tillman','violet','056','PAL',22,'2022-04-01 14:51:29.918489','2022-04-01 14:51:29.918489'),(106,'Rossie Klein V','Northern New Hampshire Institute','olive','027','PAL',78,'2022-04-01 14:51:29.934837','2022-04-01 14:51:29.934837'),(107,'Peggy Lind CPA','North Graham College','champagne','058','PAL',86,'2022-04-01 14:51:29.960910','2022-04-01 14:51:29.960910'),(108,'Providencia Lynch','Considine Academy','beige','085','PAL',74,'2022-04-01 14:51:29.972596','2022-04-01 14:51:29.972596'),(109,'Prof. Hobert Nolan','The Lakin College','cerulean','073','PAL',84,'2022-04-01 14:51:29.987198','2022-04-01 14:51:29.987198'),(110,'Merrill Abernathy JD','North Kilback Institute','puce','029','PAL',31,'2022-04-01 14:51:29.996710','2022-04-01 14:51:29.996710'),(111,'Amb. Marlon Kertzmann','South Dare University','gray','032','PAL',75,'2022-04-01 14:51:30.014588','2022-04-01 14:51:30.014588'),(112,'Diego Carroll','Mraz Institute','cerulean','042','PAL',39,'2022-04-01 14:51:30.029186','2022-04-01 14:51:30.029186'),(113,'Rashad Weber Esq.','West Wehner Institute','white','032','PAL',14,'2022-04-01 14:51:30.041065','2022-04-01 14:51:30.041065'),(114,'Max Armstrong JD','The Steuber','grey','092','PAL',58,'2022-04-01 14:51:30.057651','2022-04-01 14:51:30.057651'),(115,'Rosette Nicolas','South Reinger Academy','cerise','096','PAL',74,'2022-04-01 14:51:30.072105','2022-04-01 14:51:30.072105'),(116,'Page Homenick','O\'Reilly Institute','orange','014','PAL',51,'2022-04-01 14:51:30.083211','2022-04-01 14:51:30.083211'),(117,'Somer Wilkinson','Kulas Academy','cyan','063','PAL',37,'2022-04-01 14:51:30.101634','2022-04-01 14:51:30.101634'),(118,'Marty McGlynn','East Nebraska Academy','grey','086','PAL',43,'2022-04-01 14:51:30.116374','2022-04-01 14:51:30.116374'),(119,'Toccara Kshlerin','Western Waters','rose','049','PAL',48,'2022-04-01 14:51:30.127425','2022-04-01 14:51:30.127425'),(120,'Antony Smitham VM','The Reinger College','lemon','014','PAL',28,'2022-04-01 14:51:30.139900','2022-04-01 14:51:30.139900'),(121,'Earle Strosin DO','Western Bechtelar','amber','075','PAL',26,'2022-04-01 14:52:35.251518','2022-04-01 14:52:35.251518'),(122,'Marietta Dooley','Mohr Academy','lime','026','PAL',47,'2022-04-01 14:52:35.264722','2022-04-01 14:52:35.264722'),(123,'Arlie Zemlak','The Terry','aquamarine','019','PAL',46,'2022-04-01 14:52:35.272291','2022-04-01 14:52:35.272291'),(124,'Alexis Kautzer','North Hansen','white','077','PAL',4,'2022-04-01 14:52:35.284277','2022-04-01 14:52:35.284277'),(125,'Rev. Ranae Trantow','Bogan College','tan','033','PAL',27,'2022-04-01 14:52:35.298726','2022-04-01 14:52:35.298726'),(126,'Trudy McClure','The Nikolaus','sangria','009','PAL',58,'2022-04-01 14:52:35.312215','2022-04-01 14:52:35.312215'),(127,'Luigi Lowe','Eastern Braun Institute','lavender','056','PAL',24,'2022-04-01 14:52:35.324373','2022-04-01 14:52:35.324373'),(128,'Gregory Nader','Kshlerin University','blue','007','PAL',94,'2022-04-01 14:52:35.335261','2022-04-01 14:52:35.335261'),(129,'Elliot Reichel JD','West Swift College','jade','086','PAL',95,'2022-04-01 14:52:35.345088','2022-04-01 14:52:35.345088'),(130,'Gov. Andre Greenfelder','North Rhode Island Academy','cerise','061','PAL',25,'2022-04-01 14:52:35.361388','2022-04-01 14:52:35.361388'),(131,'Aretha Rodriguez','Northern Von','lemon','064','PAL',57,'2022-04-01 14:52:35.376562','2022-04-01 14:52:35.376562'),(132,'Brittanie Blick','East Little Institute','beige','022','PAL',51,'2022-04-01 14:52:35.384682','2022-04-01 14:52:35.384682'),(133,'Theron Harris','West Idaho College','pink','002','PAL',12,'2022-04-01 14:52:35.398886','2022-04-01 14:52:35.398886'),(134,'Ethan Osinski','Southern Windler Institute','lavender','008','PAL',32,'2022-04-01 14:52:35.407582','2022-04-01 14:52:35.407582'),(135,'Augustus Hackett','North New York Academy','peach','056','PAL',68,'2022-04-01 14:52:35.426751','2022-04-01 14:52:35.426751'),(136,'Stanley Abbott','Lehner Institute','purple','069','PAL',86,'2022-04-01 14:52:35.452378','2022-04-01 14:52:35.452378'),(137,'Donna Ortiz DC','Haag College','coffee','049','PAL',99,'2022-04-01 14:52:35.479434','2022-04-01 14:52:35.479434'),(138,'Madlyn Olson','West Yundt','burgundy','091','PAL',75,'2022-04-01 14:52:35.498134','2022-04-01 14:52:35.498134'),(139,'Elizabeth Ziemann','East Lang','purple','058','PAL',45,'2022-04-01 14:52:35.512053','2022-04-01 14:52:35.512053'),(140,'Nancey Labadie','South Quigley','raspberry','065','PAL',87,'2022-04-01 14:52:35.525079','2022-04-01 14:52:35.525079');
/*!40000 ALTER TABLE `consoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `game_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'Jean Schuster','ALKEN ASSET MANAGEMENT','9109 Tyron Islands','+2202923180790','2022-04-01 14:51:30.160490','2022-04-01 14:51:30.160490',NULL),(3,'Brittney Sauer','ABN AMRO MEZZANINE (UK) LIMITED','17943 Myron Ports','+2132735382051','2022-04-01 14:51:30.171832','2022-04-01 14:51:30.171832',NULL),(4,'Gov. Mindi Pouros','ABC INTERNATIONAL BANK PLC','915 Kihn Trafficway','+13457524320531','2022-04-01 14:51:30.194354','2022-04-01 14:51:30.194354',NULL),(5,'Jennine Feest','ABG SUNDAL COLLIER LIMITED','2648 Tonita Trail','+8099292414697','2022-04-01 14:51:30.214434','2022-04-01 14:51:30.214434',NULL),(6,'Adolfo Strosin','PGMS (GLASGOW) LIMITED','1787 Wunsch Dale','+4233225611177','2022-04-01 14:51:30.238476','2022-04-01 14:51:30.238476',NULL),(7,'Rufus Dibbert','ABG SUNDAL COLLIER LIMITED','46376 McDermott Plaza','+637430816148','2022-04-01 14:51:30.268740','2022-04-01 14:51:30.268740',NULL),(8,'Shon Pagac','ABN AMRO QUOTED INVESTMENTS (UK) LIMITED','68525 Julian Divide','+8567399455985','2022-04-01 14:51:30.302466','2022-04-01 14:51:30.302466',NULL),(9,'Phuong Kris CPA','AAC CAPITAL PARTNERS LIMITED','81971 Milan Stream','+167113256293555','2022-04-01 14:51:30.331953','2022-04-01 14:51:30.331953',NULL),(10,'Prof. Celina Franecki','ABINGWORTH MANAGEMENT LIMITED','4413 Blanda Shoals','+50019141073098','2022-04-01 14:51:30.344517','2022-04-01 14:51:30.344517',NULL),(11,'Dian Bogan JD','ALLIED BANK PHILIPPINES (UK) PLC','354 Cassin Overpass','+24214400130944','2022-04-01 14:51:30.354766','2022-04-01 14:51:30.354766',NULL),(12,'Allen Moore','ABG SUNDAL COLLIER LIMITED','6492 Gleichner Walk','+5971589342347','2022-04-01 14:51:30.364490','2022-04-01 14:51:30.364490',NULL),(13,'Levi Wolff','ABN AMRO QUOTED INVESTMENTS (UK) LIMITED','4955 Roob Unions','+37512547458841','2022-04-01 14:51:30.374585','2022-04-01 14:51:30.374585',NULL),(14,'Vernon Lakin','ABBOTSTONE AGRICULTURAL PROPERTY UNIT TRUST','14468 Alysha Locks','+9937323131689','2022-04-01 14:51:30.384635','2022-04-01 14:51:30.384635',NULL),(15,'Donald King','THE ROYAL BANK OF SCOTLAND PLC (FORMER RBS NV)','53003 Len Walks','+21616331116627','2022-04-01 14:51:30.398776','2022-04-01 14:51:30.398776',NULL),(16,'Msgr. Errol Ortiz','ALKEN ASSET MANAGEMENT','8065 Tyron Gateway','+26499220555337','2022-04-01 14:51:30.413049','2022-04-01 14:51:30.413049',NULL),(17,'Dina Rodriguez','ABN AMRO MEZZANINE (UK) LIMITED','60712 Lehner Vista','+9674386280305','2022-04-01 14:51:30.428344','2022-04-01 14:51:30.428344',NULL),(18,'Margrett Schulist','ABN AMRO MEZZANINE (UK) LIMITED','9023 O\'Kon Locks','+5994423075949','2022-04-01 14:51:30.441529','2022-04-01 14:51:30.441529',NULL),(19,'Dale Witting','ABBEY LIFE','258 Rocco Dams','+8556522449454','2022-04-01 14:51:30.451900','2022-04-01 14:51:30.451900',NULL),(21,'Donette Hoppe','ALLIED BANK PHILIPPINES (UK) PLC','549 Qiana Ranch','+96412678371360','2022-04-01 14:51:30.469297','2022-04-01 14:51:30.469297',NULL),(22,'Hubert Wolff','ABN AMRO QUOTED INVESTMENTS (UK) LIMITED','38061 Delora Expressway','+567638689635','2022-04-01 14:52:47.222701','2022-04-01 14:52:47.222701',NULL),(23,'Linette Jaskolski','ABN AMRO QUOTED INVESTMENTS (UK) LIMITED','9806 Burl Manors','+6729083910186','2022-04-01 14:52:47.236622','2022-04-01 14:52:47.236622',NULL),(24,'Zack VonRueden I','PGMS (GLASGOW) LIMITED','988 Miles Route','+2902913530614','2022-04-01 14:52:47.250223','2022-04-01 14:52:47.250223',NULL),(25,'Phebe Bernier','ABBOTSTONE AGRICULTURAL PROPERTY UNIT TRUST','919 Parisian Court','+2513974604227','2022-04-01 14:52:47.268742','2022-04-01 14:52:47.268742',NULL),(26,'Avery Cormier','ABN AMRO CORPORATE FINANCE LIMITED','61420 Huel Square','+26419292908747','2022-04-01 14:52:47.288232','2022-04-01 14:52:47.288232',NULL),(27,'Lucina Yost','PGMS (GLASGOW) LIMITED','45973 Stoltenberg Mews','+8111696676769','2022-04-01 14:52:47.300238','2022-04-01 14:52:47.300238',NULL),(28,'Coral Wilderman','PGMS (GLASGOW) LIMITED','3834 Kiehn Island','+3741082553157','2022-04-01 14:52:47.321937','2022-04-01 14:52:47.321937',NULL),(29,'Chanda Kessler MD','OTKRITIE SECURITIES LIMITED','6517 Ayesha Stravenue','+24514338521989','2022-04-01 14:52:47.331904','2022-04-01 14:52:47.331904',NULL),(30,'Terry Weissnat','OTKRITIE SECURITIES LIMITED','723 John Meadows','+2341051469349','2022-04-01 14:52:47.341311','2022-04-01 14:52:47.341311',NULL),(31,'Tad Berge','ABC INTERNATIONAL BANK PLC','948 Fritsch Causeway','+6315122739743','2022-04-01 14:52:47.350553','2022-04-01 14:52:47.350553',NULL),(32,'Jere Gorczany','ALKEN ASSET MANAGEMENT','152 Terrell Summit','+8562696553599','2022-04-01 14:52:47.361021','2022-04-01 14:52:47.361021',NULL),(33,'Isidro DuBuque','ABN AMRO FUND MANAGERS LIMITED','762 Walker Road','+4519701800167','2022-04-01 14:52:47.378104','2022-04-01 14:52:47.378104',NULL),(34,'Orlando Heller','ABINGWORTH MANAGEMENT LIMITED','92460 Wilderman Mill','+6739326375155','2022-04-01 14:52:47.397522','2022-04-01 14:52:47.397522',NULL),(35,'Johnnie Larkin','ABN AMRO QUOTED INVESTMENTS (UK) LIMITED','21630 Valentina Lights','+17843504818491','2022-04-01 14:52:47.412013','2022-04-01 14:52:47.412013',NULL),(36,'Jenelle Reinger','ABBEY LIFE','165 Zieme Locks','+3817194793775','2022-04-01 14:52:47.427266','2022-04-01 14:52:47.427266',NULL),(37,'Ricarda Jaskolski','ABN AMRO MEZZANINE (UK) LIMITED','23926 Milton Bridge','+37517778768463','2022-04-01 14:52:47.439366','2022-04-01 14:52:47.439366',NULL),(38,'Prof. Lezlie Kling','ABBEY LIFE','8509 Beahan Fields','+6821949824785','2022-04-01 14:52:47.452468','2022-04-01 14:52:47.452468',NULL),(39,'Delaine Schulist','ALKEN ASSET MANAGEMENT','32681 Emmerich Point','+59915016041772','2022-04-01 14:52:47.464903','2022-04-01 14:52:47.464903',NULL),(40,'Cornelius Erdman CPA','ABN AMRO HOARE GOVETT CORPORATE FINANCE LTD.','643 Gale Ramp','+2446942980816','2022-04-01 14:52:47.477213','2022-04-01 14:52:47.477213',NULL),(41,'Bernard Keeling','ABN AMRO HOARE GOVETT SECURITIES','25302 Shawana Circles','+5036379542408','2022-04-01 14:52:47.499197','2022-04-01 14:52:47.499197',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (22,'Assasin Creed',15,32,50,'2022-04-02 13:11:29.903634','2022-04-02 13:11:29.915669',2),(23,'Call of Duty',18,32,32,'2022-04-02 13:13:41.319819','2022-04-02 13:13:41.331973',13),(24,'Dead Island',18,25,122,'2022-04-02 13:14:29.250598','2022-04-02 13:14:29.263382',2),(25,'FIFA 13',12,35,21,'2022-04-02 13:15:21.739841','2022-04-02 13:15:21.751374',3),(26,'Luigi\'s Mansion',7,22,122,'2022-04-02 13:16:15.665320','2022-04-02 13:16:15.678846',4),(27,'Assasin Creed',12,34,44,'2022-04-02 13:20:01.159394','2022-04-02 13:20:01.175851',5);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `copy` int DEFAULT NULL,
  `game_id` int DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `margin` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,2,100,22,'2022-04-04 09:37:29 +0100',10,'2022-04-04 08:37:29.430639','2022-04-04 08:37:29.430639'),(2,2,90,22,'2022-04-04 09:37:53 +0100',10,'2022-04-04 08:37:53.538948','2022-04-04 08:37:53.538948'),(3,2,9,22,'2022-04-04 09:38:05 +0100',10,'2022-04-04 08:38:05.590789','2022-04-04 08:38:05.590789'),(4,2,9,22,'2022-04-04 09:38:11 +0100',10,'2022-04-04 08:38:11.188308','2022-04-04 08:38:11.188308'),(5,2,9,22,'2022-04-04 09:38:12 +0100',10,'2022-04-04 08:38:12.281104','2022-04-04 08:38:12.281104'),(6,4,9,23,'2022-04-04 09:38:49 +0100',10,'2022-04-04 08:38:49.386426','2022-04-04 08:38:49.386426'),(7,4,9,23,'2022-04-04 09:38:50 +0100',10,'2022-04-04 08:38:50.762517','2022-04-04 08:38:50.762517'),(8,4,9,23,'2022-04-04 09:38:52 +0100',10,'2022-04-04 08:38:52.869243','2022-04-04 08:38:52.869243'),(9,4,9,23,'2022-04-04 09:38:54 +0100',10,'2022-04-04 08:38:54.406413','2022-04-04 08:38:54.406413'),(10,5,200,24,'2022-04-04 09:39:17 +0100',10,'2022-04-04 08:39:17.805531','2022-04-04 08:39:17.805531'),(11,5,200,24,'2022-04-04 09:39:20 +0100',10,'2022-04-04 08:39:20.225285','2022-04-04 08:39:20.225285'),(16,7,50,25,'2022-04-04 09:40:59 +0100',10,'2022-04-04 08:40:59.730334','2022-04-04 08:40:59.730334'),(17,7,80,25,'2022-04-04 09:41:48 +0100',10,'2022-04-04 08:41:48.575892','2022-04-04 08:41:48.575892'),(18,7,8,25,'2022-04-04 09:41:55 +0100',10,'2022-04-04 08:41:55.400714','2022-04-04 08:41:55.400714'),(19,11,8,25,'2022-04-04 09:42:19 +0100',10,'2022-04-04 08:42:19.913418','2022-04-04 08:42:19.913418'),(20,11,8,26,'2022-04-04 09:42:31 +0100',10,'2022-04-04 08:42:31.346243','2022-04-04 08:42:31.346243'),(21,11,80,26,'2022-04-04 09:42:37 +0100',10,'2022-04-04 08:42:37.537731','2022-04-04 08:42:37.537731'),(22,11,80,26,'2022-04-04 09:42:38 +0100',10,'2022-04-04 08:42:38.983838','2022-04-04 08:42:38.983838'),(23,11,80,26,'2022-04-04 09:42:40 +0100',10,'2022-04-04 08:42:40.595908','2022-04-04 08:42:40.595908'),(24,18,80,26,'2022-04-04 09:43:04 +0100',10,'2022-04-04 08:43:04.742342','2022-04-04 08:43:04.742342'),(25,18,80,26,'2022-04-04 09:43:06 +0100',10,'2022-04-04 08:43:06.805831','2022-04-04 08:43:06.805831'),(26,18,80,26,'2022-04-04 09:43:07 +0100',10,'2022-04-04 08:43:07.531843','2022-04-04 08:43:07.531843');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20220401114919'),('20220401122716'),('20220401142455'),('20220401142501'),('20220401144059'),('20220402092600'),('20220402100921'),('20220402101439'),('20220402105222'),('20220402124247'),('20220403093510'),('20220403101958'),('20220403214419'),('20220403214938'),('20220403221149'),('20220403221714');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-04 13:16:36
