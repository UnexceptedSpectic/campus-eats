Drop database if exists Campus_Eats_Fall2020;
Create database Campus_Eats_Fall2020;
Use Campus_Eats_Fall2020;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: niner_eats
-- ------------------------------------------------------
-- Server version	8.0.18
-- created by "mavericks" team:  
-- Dhananjay Arora, Akshay Babu, Sumit Kawale, Prashant Madaan
-- this database is only to be used for educational and class
-- purposes and can not be replicated or used for commercial purposes
-- or private interests without permission by the Mavericks team

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_delivery_driver_id` (`driver_id`),
  KEY `fk_delivery_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_delivery_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_delivery_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,3,8,'2004-04-15 15:15:01'),(2,6,17,'1986-03-09 13:02:10'),(3,8,4,'2007-03-27 04:20:50'),(4,4,4,'1990-11-27 07:17:36'),(5,4,7,'1985-05-17 20:06:35'),(6,5,15,'1987-07-21 03:13:27'),(7,7,1,'1984-12-20 02:07:33'),(8,6,16,'1987-10-24 02:17:47'),(9,6,10,'1973-08-23 08:51:27'),(10,4,8,'1984-07-05 15:41:52'),(11,3,12,'2005-08-13 13:46:19'),(12,4,12,'2000-06-10 15:12:36'),(13,3,4,'1997-03-15 11:26:07'),(14,2,7,'2002-11-02 13:09:13'),(15,3,16,'1981-12-08 18:29:25'),(16,7,16,'1996-08-06 00:30:01'),(17,5,20,'2006-09-06 06:36:54'),(18,5,19,'1992-08-13 02:49:56'),(19,8,12,'1993-07-28 11:48:09'),(20,5,6,'1990-01-04 11:00:09'),(21,5,3,'2000-12-13 17:38:36'),(22,4,13,'1990-03-19 22:51:00'),(23,5,9,'1972-02-19 02:26:18'),(24,7,7,'2017-03-20 16:51:08'),(25,8,13,'1974-01-01 11:14:14'),(26,2,13,'2019-01-15 05:59:35'),(27,1,3,'2007-04-20 19:22:11'),(28,6,18,'1982-06-13 10:39:10'),(29,7,6,'1996-02-24 19:28:29'),(30,8,9,'1975-02-18 15:58:47'),(31,4,17,'1994-05-20 07:20:50'),(32,2,1,'2012-05-15 03:14:38'),(33,5,6,'2003-04-13 15:05:16'),(34,4,15,'2013-03-20 03:42:18'),(35,7,16,'2016-11-14 07:19:17'),(36,1,2,'1978-05-30 23:37:54'),(37,5,10,'2012-04-12 12:47:41'),(38,8,19,'1976-11-28 20:32:04'),(39,4,6,'2014-06-13 10:12:35'),(40,6,3,'2014-10-26 06:51:03'),(41,2,4,'1977-10-01 00:42:32'),(42,3,10,'1999-09-16 09:29:48'),(43,5,4,'1997-10-10 15:57:51'),(44,5,19,'2002-05-07 05:34:59'),(45,5,15,'2004-05-06 01:40:09'),(46,7,9,'1987-08-29 11:10:25'),(47,1,9,'1999-05-04 20:14:44'),(48,8,1,'2013-05-18 02:51:44'),(49,4,20,'2000-11-18 05:13:35'),(50,1,10,'1974-04-01 19:29:04'),(51,3,3,'2009-01-01 08:06:39'),(52,7,6,'1983-06-24 13:57:13'),(53,5,7,'2001-06-27 04:51:36'),(54,1,8,'2010-06-22 15:40:38'),(55,8,8,'2005-08-13 20:44:05'),(56,7,4,'1997-11-15 04:34:41'),(57,4,11,'1980-08-20 18:58:41'),(58,1,12,'1999-11-10 05:16:48'),(59,5,1,'2007-05-23 12:18:57'),(60,4,20,'1997-12-01 11:07:06'),(61,4,12,'2012-04-22 10:09:20'),(62,4,12,'1980-12-23 17:00:24'),(63,2,17,'1974-03-09 13:17:06'),(64,2,14,'2006-05-23 00:09:16'),(65,6,5,'2015-12-04 02:40:23'),(66,5,8,'2013-10-06 09:32:26'),(67,4,16,'2007-10-19 19:02:18'),(68,8,6,'2004-07-18 07:16:52'),(69,8,13,'1994-09-18 22:12:40'),(70,6,15,'2001-07-24 11:56:32'),(71,5,11,'1997-05-08 08:13:38'),(72,2,17,'1991-07-22 02:45:00'),(73,5,11,'2007-01-29 00:46:12'),(74,7,18,'1972-10-08 02:30:28'),(75,2,11,'2012-08-08 06:06:23'),(76,5,20,'1992-03-03 17:59:04'),(77,3,11,'2002-06-01 09:30:41'),(78,2,17,'2004-12-20 16:44:08'),(79,5,1,'1976-04-03 09:33:28'),(80,8,12,'2015-05-07 06:51:40'),(81,1,11,'1982-05-17 00:05:21'),(82,5,11,'1997-03-05 05:33:31'),(83,2,17,'1983-07-04 04:40:47'),(84,3,1,'2014-07-13 06:03:16'),(85,7,15,'2005-11-22 09:50:13'),(86,3,6,'2016-01-24 01:19:46'),(87,7,14,'1970-04-25 22:44:54'),(88,8,15,'1981-11-19 06:22:17'),(89,5,5,'1982-12-27 11:00:06'),(90,5,11,'1972-06-18 13:59:01'),(91,4,4,'2008-06-17 01:54:35'),(92,6,13,'1993-04-09 05:12:19'),(93,1,12,'1996-12-24 00:24:04'),(94,1,5,'1999-09-03 23:23:03'),(95,1,7,'1982-04-08 01:10:43'),(96,5,12,'1996-11-17 03:22:08'),(97,7,4,'1976-02-29 10:04:08'),(98,2,10,'1980-05-01 04:18:43'),(99,3,4,'1983-10-04 13:03:38'),(100,6,2,'2011-06-16 17:20:37'),(101,4,2,NULL);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `fk_D_student_id` (`student_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,110,'fi3980','1989-01-18',4),(2,98,'js4003','2017-03-15',3),(3,104,'xt8429','2002-10-11',3),(4,43,'yv6392','2010-02-23',3),(5,75,'cf3679','1997-04-06',4),(6,68,'rx3942','1970-03-24',3),(7,143,'mf2647','2014-05-06',3),(8,96,'ia9372','2011-06-25',3);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant Professor','Yale','Master'),(6,4,'Professor','CMU','PhD'),(7,15,'Assistant Professor','Duke','PhD'),(8,12,'Professor','NCSU','Master'),(9,10,'Adjunct Professor','Stanford','Bachelor'),(10,7,'Assistant Professor','Duke','PhD'),(11,14,'Assistant Professor','CMU','Bachelor'),(12,3,'Adjunct Professor','UNCC','Bachelor'),(13,1,'Assistant Professor','Harvard','Bachelor'),(14,22,'Assistant Professor','NCSU','PhD'),(15,9,'Assistant Professor','Harvard','Bachelor'),(16,25,'Adjunct Professor','Harvard','Bachelor'),(17,17,'Adjunct Professor','Stanford','Master'),(18,18,'Assistant Professor','UNCC','PhD'),(19,24,'Assistant Professor','CMU','Bachelor'),(20,23,'Adjunct Professor','Stanford','PhD'),(21,19,'Assistant Professor','CMU','PhD'),(22,20,'Professor','Stanford','PhD'),(23,13,'Adjunct Professor','NCSU','PhD'),(24,2,'Assistant Professor','Duke','Master'),(25,5,'Adjunct Professor','SJSU','Master'),(26,205,'Assistant Professor','UCLA','PhD');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(75) DEFAULT NULL,
  `location_address` varchar(75) DEFAULT NULL,
  `latitude` varchar(75) DEFAULT NULL,
  `longitude` varchar(75) DEFAULT NULL,
  `drop_off_point` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_index_desc` (`location_id` DESC),
  KEY `idx_location_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Suite 157','69612 Will Ferry\nEwellfort, KS 63168','-60.101046','101.481031','7893 Zita Mission Suite 949'),(2,'Apt. 080','711 Sammie Manor Apt. 863\nNorth Derek, NC 10578-4530','43.715801','3.213285','456 Lucio Common'),(3,'Suite 057','28742 Cole Forest Suite 483\nPort Jettiestad, RI 73714','89.842723','176.244614','145 Hal Skyway'),(4,'Apt. 443','356 Anderson Ridge Suite 742\nNorth Napoleon, VT 49903-3077','58.930520','109.869865','783 Travis Junction Apt. 728'),(5,'Suite 615','160 Skylar Union Apt. 740\nNew Elna, WY 49897-8734','79.842372','-61.397932','29350 Vandervort Estates'),(6,'Apt. 102','0552 Oran Forest Apt. 992\nMurazikview, NH 38317','-33.883942','-170.177924','1097 Wellington Valleys Apt. 395'),(7,'Apt. 309','6422 Nicolas Parkway Apt. 645\nPort Chadrick, FL 35738-8854','-64.515628','8.086937','408 Arely Streets Suite 405'),(8,'Apt. 210','7342 Lon Burgs Apt. 111\nGriffinborough, VT 64308','86.553283','-141.049418','5539 Mohammad Heights'),(9,'Suite 985','11269 Satterfield Knoll\nMauricehaven, WA 28902','5.180228','-52.389443','65717 Emmerich Walks'),(10,'Suite 343','147 Rempel Fork Apt. 940\nLake Delbert, LA 88131','44.909586','153.999345','658 Muhammad Land'),(11,'Suite 534','6402 Nienow Branch\nAriannatown, OK 28871-1749','-54.503176','-25.420009','27516 Elizabeth Road Suite 956'),(12,'Apt. 170','500 Boyle Gardens\nEast Amaliamouth, NY 48976','-54.104944','162.891267','67672 Frederik Skyway'),(13,'Suite 059','10112 Rau Station Apt. 761\nGarryland, AL 55900-5843','2.597478','-155.953323','7712 Maddison Centers Suite 850'),(14,'Suite 699','3808 Doyle Trail\nEast Silas, IA 37233-1658','30.753077','86.288575','136 O\'Connell Cape'),(15,'Apt. 286','20238 Altenwerth Loaf Suite 010\nDereckshire, VA 95393','-66.122207','-149.824885','77965 Destini Expressway Apt. 959'),(16,'Suite 691','9248 Bogisich Valleys\nTrompstad, NC 13748-3393','2.515638','177.753639','549 McClure Mission Apt. 918'),(17,'Apt. 332','204 Boyle Fort Apt. 653\nKautzerbury, LA 72319-3112','-68.893434','174.800381','11522 Haag Ferry Suite 031'),(18,'Apt. 158','63501 Funk Meadows\nUptonland, SD 60736-9385','28.507958','-75.256071','277 Mitchell Groves'),(19,'Suite 575','5924 Wuckert Meadow\nSouth Peggieview, GA 74295','-16.610616','-72.268415','43775 Narciso Plains'),(20,'Suite 268','345 Hermiston Streets\nPadbergton, MT 28143','65.738737','58.149015','3512 Carmela Cove Apt. 544'),(21,'Apt. 524','873 Percival Lights Suite 233\nAliviaview, GA 03965','67.141265','-173.513727','3838 Kirk Estates'),(22,'Apt. 190','66253 Reynolds Estate Suite 044\nSimonisside, WA 61688','5.838614','-111.040987','2610 Nolan Mill'),(23,'Suite 971','80612 Huel Shoal Suite 474\nGustavetown, NY 21745','38.930320','-13.117365','82341 Bernier Hills'),(24,'Suite 241','0276 Tamia Station Suite 735\nSolonfort, RI 12291-5788','7.830370','144.207856','4173 Theodora Plains'),(25,'Apt. 982','61231 Oda Loaf\nNew Nayeli, AK 82397','-12.199068','-17.852044','4485 Larissa Locks'),(26,'Apt. 366','3756 Terry Garden\nEast Lowellchester, AR 21100-1833','-18.154077','-82.234137','7989 Keira Fields'),(27,'Apt. 655','080 Darian Court\nSchuppemouth, NY 01757-0964','32.289014','-51.656823','6354 Chaya Inlet Apt. 859'),(28,'Suite 627','077 Jones Way\nSouth Mac, NH 34012','-77.441834','138.508983','8576 Mraz Route'),(29,'Apt. 067','532 Walsh Rest\nClementtown, KS 33449-1356','21.713872','64.510151','5524 Amina Meadow'),(30,'Apt. 435','62852 Josianne Mills\nEast Jeromeview, LA 82405','3.125229','-111.949983','21779 Nikolaus Common Apt. 851'),(31,'Apt. 862','3932 Alysha Station Suite 223\nLake Jakeland, WI 16933-0548','-4.658250','90.607759','352 Lehner Club'),(32,'Apt. 547','675 Giuseppe Divide\nNorth Angela, NY 08608','-72.446033','47.048924','7245 Lindgren Mount'),(33,'Suite 890','752 Cecilia Bypass Apt. 959\nSanfordhaven, WA 56971-1157','51.665170','77.806552','15710 Leon Viaduct'),(34,'Suite 328','7598 Klocko Oval Apt. 344\nDavionview, OH 58638','11.881816','73.668767','657 Annie Mission Apt. 557'),(35,'Suite 753','485 Grayce Oval\nWest Jarrett, IA 91623-1323','24.690149','66.045301','369 Schumm Lock Apt. 238'),(36,'Apt. 645','21545 Lind Avenue Apt. 382\nPredovicview, MI 29544','-74.927689','83.265896','091 Matilde Plains'),(37,'Suite 951','6198 Fay Wells\nGaylordstad, CT 61152','66.394980','-59.050144','83844 Colten Locks Apt. 489'),(38,'Suite 216','346 Schaefer Coves\nJadeland, MS 78153','-66.245838','-158.722669','5860 Herbert Mill Apt. 351'),(39,'Suite 468','784 Nickolas Prairie\nEmmanuelleberg, MO 24742','56.745502','-157.051267','333 Kassulke Stravenue Suite 365'),(40,'Apt. 687','7517 Leonard Viaduct Apt. 845\nBettiestad, MI 44408-9670','29.819380','-32.122210','1610 Hermina Harbor'),(41,'Apt. 130','50315 Frami Avenue\nLubowitztown, AR 11074','-84.989439','-80.878304','0930 Kessler Pines'),(42,'Apt. 621','46127 Rowe Meadows\nPort Kacey, OH 67514','42.828977','103.587679','27321 Jonas Lodge'),(43,'Apt. 339','13115 Goyette Hill Apt. 020\nNew Viviane, WI 82795-6389','-64.609637','91.929908','674 Axel Square Apt. 434'),(44,'Suite 091','64736 Michale Dam Suite 996\nVioletton, CT 07419-1266','2.426098','-55.634546','90325 Samson Manors'),(45,'Suite 606','8865 Weimann Meadows Apt. 986\nNew Darrin, ND 68683-4367','9.188521','150.453880','70401 Andres Cape'),(46,'Apt. 895','0651 Hoeger Route\nNew Madelineport, NJ 20757','-87.709982','76.089939','4599 Crona Wall'),(47,'Suite 874','48826 Jacobson Rue Apt. 189\nNew Javon, MT 26911','-21.845400','35.257482','827 Barrows Grove Suite 824'),(48,'Apt. 942','4926 Lupe Prairie Apt. 046\nBeckerville, ME 26965','-78.054954','-130.852481','832 Muller Valley'),(49,'Apt. 614','69415 Gerry Wall Suite 971\nBeattyfort, VT 50012-9205','72.283789','-108.170390','4022 Koelpin Fords Apt. 743'),(50,'Apt. 030','666 Heller Club Apt. 467\nBurleyshire, MD 54385-3107','-38.728546','-35.072223','0068 Tromp Centers'),(51,'Apt. 940','794 Hilbert Roads\nWilhelminemouth, DC 00100','-8.897519','88.848386','346 Janae Harbor Suite 458'),(52,'Apt. 634','65073 Aufderhar Mission Suite 778\nLoniestad, SD 78878-6419','23.408943','165.398873','36035 Barton Crest'),(53,'Apt. 782','746 Jalon Fort\nDariofort, MA 79648','-59.088037','-103.347456','321 Margarett Path'),(54,'Suite 426','8353 Alejandra Heights\nNorth Gardner, AR 00733-0393','-26.565917','115.692025','189 Blick Manors Apt. 066'),(55,'Apt. 709','62270 Katelynn Views\nTomborough, WV 24093-0247','-37.074660','76.206560','2245 Alexander Forest Apt. 581'),(56,'Suite 991','7814 Stanley Ramp\nNorth Alene, MA 01296-2354','46.302614','-25.734456','49283 Kamryn Point Suite 174'),(57,'Suite 960','65592 Liam Route\nLucymouth, VA 96459','-20.775978','121.809647','1714 Dena Ferry Suite 821'),(58,'Apt. 765','18848 Heaney Knoll Apt. 745\nLake Genoveva, FL 65517-3493','-82.197132','47.558329','5529 Rosamond Forges Suite 578'),(59,'Suite 078','7033 Yost Drive Apt. 553\nMekhiview, OK 48129-1227','-84.757382','-58.654951','3021 Baumbach Terrace Suite 512'),(60,'Apt. 554','8312 Elaina Stream\nOsborneview, ME 31318','-41.348220','-36.548238','9338 Chadd Landing'),(61,'Apt. 649','32904 Kunze Point\nWest Marlon, KS 96283','77.113732','173.740537','036 Rebeca Ports Suite 971'),(62,'Suite 285','2055 Reinger Isle Suite 643\nPort Gilbert, CO 29400','41.839736','140.371966','6591 Murazik Fields'),(63,'Suite 131','4927 Rowe Mountains Suite 840\nRomafort, OR 55775-5302','-12.717245','98.803269','0573 Jennie Centers Suite 444'),(64,'Suite 549','38523 Ebert Plains\nNorth Reesemouth, PA 81161','39.412911','-13.612642','847 Alexandrine Pine'),(65,'Suite 057','577 Bosco Green Apt. 208\nRubytown, CO 67492','74.904833','138.781453','715 Elena Prairie'),(66,'Apt. 224','2759 Emmalee Radial\nBogisichmouth, GA 93636-4262','80.350868','109.402133','32117 Larkin Glens Suite 120'),(67,'Suite 842','122 Frederick Plaza Suite 326\nLarkinfurt, LA 61011-0332','51.879563','139.262053','6672 O\'Reilly Station Apt. 304'),(68,'Suite 051','1579 Cyrus Square\nPort Raphaelle, SD 02230','54.628958','16.532622','60762 Lafayette Mount'),(69,'Suite 566','354 Konopelski Mission Suite 967\nNorth Waldo, NH 57787','55.835435','121.519774','37963 Eliseo Field Suite 782'),(70,'Suite 194','270 Wyman Burgs\nSchmidtborough, ID 31185','2.428639','18.915083','3011 Keagan Cliff'),(71,'Suite 400','7180 Devante Hills Suite 245\nSouth Rossie, ND 77848-7427','-31.676452','-171.620202','601 Adriana Forge'),(72,'Suite 170','5862 Leatha Orchard Suite 024\nReubenmouth, LA 38852','-48.152329','144.854379','57056 Lang Vista Suite 576'),(73,'Suite 972','775 Quinton Lane Apt. 482\nQuitzonfort, ID 32867-1172','5.775053','120.802147','01687 Russel Streets'),(74,'Apt. 814','344 Rylee Vista Apt. 872\nElvistown, CO 63706-4744','-67.390203','-38.347276','938 Abshire Mission'),(75,'Apt. 669','45232 Jast Shoals Apt. 768\nWest Nelsview, KY 81086-6074','-71.989135','168.958988','404 Ena Crest Suite 279'),(76,'Suite 564','576 Huels Burgs\nPort Fritz, OH 46070-9005','47.057137','115.145131','2263 Ella Lodge Apt. 429'),(77,'Suite 399','065 Stracke Mountain Suite 204\nWildermantown, MS 82948-2075','-53.323383','140.320853','4862 Stone Coves'),(78,'Apt. 094','91865 Letha Village Suite 621\nLangchester, ND 52116','-6.897948','-60.925732','833 Colten Shore'),(79,'Apt. 567','25427 Casimer Oval Apt. 791\nNorth Herta, TN 66396-2943','-33.475706','131.064403','395 Koepp Plain'),(80,'Suite 693','688 Hahn Centers\nPort Alphonsoview, RI 76712','-53.028515','19.837964','165 Mercedes Place Apt. 655'),(81,'Suite 509','658 Conor Port Apt. 489\nAbigaleview, IN 71308-0448','-76.085998','-54.565506','2862 Marty Throughway'),(82,'Apt. 678','6248 Frida Neck\nHarveyport, NJ 19092-3293','0.498058','39.425007','45787 Chaya Forks'),(83,'Apt. 539','19376 Name Neck Suite 362\nAntonioland, NV 49104-5101','-72.426565','-153.978776','60734 Kathlyn Rue Suite 096'),(84,'Suite 174','16736 Annabel Rapid Suite 989\nPort Halie, VT 56468','20.498983','-156.991411','0603 Ryan Glens'),(85,'Apt. 010','522 Waelchi Ramp\nSouth Polly, HI 61817-1149','-67.186395','95.299372','12273 Paucek Mount Suite 261'),(86,'Suite 873','20209 Mazie Glens Suite 966\nGwenview, KY 53849','-79.339662','-18.135492','9742 Nico Turnpike Apt. 716'),(87,'Apt. 198','8187 O\'Kon Loop Suite 540\nSouth Mikeborough, MT 08645-7217','81.564385','129.153519','667 Nyasia Stravenue Apt. 223'),(88,'Apt. 386','3824 Jerald Wells\nLednerchester, IL 34650','-62.141340','-50.218426','313 Toy Shore'),(89,'Apt. 627','9946 Evangeline Trail\nMitchellfurt, KS 78732','-45.361426','141.801986','48675 Mann Mission'),(90,'Apt. 408','359 Reichel Course\nPort Heathville, NV 22035-1749','-37.629458','142.868503','04507 Aisha Light'),(91,'Apt. 940','2841 Matilda Light\nNew Berneice, KY 93006-1067','44.019826','61.089192','7894 Wiegand Center'),(92,'Suite 523','09351 Dawn Isle\nPort Monty, IN 03900','5.537848','-47.637225','000 Gleichner Groves Suite 760'),(93,'Suite 515','9156 Earlene Drives\nFadelbury, VA 22109-1994','-58.840136','-151.166289','7213 Unique Curve Apt. 238'),(94,'Suite 390','3194 VonRueden Road Suite 638\nEast Tiana, NE 22875','64.883603','157.722086','843 Konopelski Gardens Apt. 507'),(95,'Suite 353','441 Steuber Landing Suite 981\nBayleehaven, DC 05649','28.826289','41.172158','853 Fritsch Street Suite 159'),(96,'Suite 901','94240 Tremblay Viaduct Suite 169\nNew Melody, AR 25552','55.711350','161.543504','9168 Lilly Ranch Apt. 651'),(97,'Apt. 441','26914 Johnston Via Suite 614\nGloverport, GA 39771','-26.328698','120.427582','2852 Marisol Meadows Suite 534'),(98,'Apt. 481','863 Nina Village\nSouth Vernonberg, WA 34268','-68.889173','84.854941','57866 Birdie Corners'),(99,'Apt. 412','50421 Heaney Unions\nNew Pasquale, AK 98565-2159','-35.314166','-155.680802','97642 Rempel Tunnel Suite 610'),(100,'Apt. 474','42828 Evangeline Square\nJacklynfort, AK 42024-2081','66.232111','91.681238','778 Cassandre Cliff');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(300) DEFAULT NULL,
  `person_email` varchar(150) DEFAULT NULL,
  `cell` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Keith Turner','shanon08@example.com',9768623560),(2,'Ms. Antonette Keeling','brady73@example.com',9710540609),(3,'Miss Rosanna Connelly','alayna.schowalter@example.net',9436829146),(4,'Noel Emard','icie96@example.org',9166085646),(5,'Trudie McClure Jr.','hwolf@example.net',9831320422),(6,'Dr. Velva Howe','schmidt.stephan@example.org',9401293781),(7,'Colby Stokes','william.predovic@example.net',9595806999),(8,'Rosie Shields V','prosacco.vidal@example.com',9324930770),(9,'Ms. Marlee Spinka Sr.','otilia80@example.com',9670194175),(10,'Skylar Koelpin Jr.','nterry@example.com',9848597984),(11,'Prof. Marquis Sawayn Sr.','mills.hollis@example.com',9888512127),(12,'Isadore Auer IV','wkuvalis@example.org',9787570990),(13,'Candace Koss','kassulke.estevan@example.net',9308906690),(14,'Carey Sawayn','rgreenfelder@example.org',9256868854),(15,'Mr. Dayne Grimes DVM','phaley@example.org',9757688590),(16,'Rosie Brown','ron18@example.net',9633493813),(17,'Kayli Maggio','stroman.arden@example.net',9524209592),(18,'Eddie Osinski','rocio.mann@example.com',9150770929),(19,'Dr. Lia Marks Jr.','kmedhurst@example.com',9800676038),(20,'Baron Feil','harris.angelina@example.com',9863696126),(21,'Lyric Cassin DVM','tkovacek@example.net',9767050989),(22,'Sigmund Torp','auer.everardo@example.net',9690677374),(23,'Rahsaan Collins','macie66@example.org',9634329045),(24,'Ansel Welch','jeff47@example.net',9842908406),(25,'Axel Bins PhD','bruen.merlin@example.net',9148329336),(26,'Frank Leffler','kautzer.ernestine@example.net',9451359352),(27,'Eden Schowalter','montana49@example.com',9918645459),(28,'Eldridge Von','uupton@example.net',9988165013),(29,'Dagmar Kassulke','emilia.bauch@example.com',9213090583),(30,'Ms. Madelyn Gleichner II','hans36@example.net',9383676151),(31,'Lilliana Emard','xnicolas@example.com',9945887810),(32,'Mrs. Cheyanne Keeling','janelle32@example.org',9289654741),(33,'Gabe Cole','jonathan26@example.com',9344083273),(34,'Mr. Gabe Bauch PhD','konopelski.kylee@example.net',9416224204),(35,'Esther Brekke','anna04@example.org',9577172566),(36,'Mrs. Freida Murphy','delmer.wiza@example.com',9837045438),(37,'Kellie Nicolas V','sylvia31@example.org',9235802954),(38,'Blaise Dare','madison95@example.org',9543994427),(39,'Randi Witting IV','hschultz@example.net',9418786674),(40,'Dr. Kacey Gorczany','camron52@example.com',9238976740),(41,'Alexandrine Donnelly','queen.davis@example.org',9403417764),(42,'Adonis Wilkinson','kamryn97@example.org',9969106027),(43,'Mr. Marcelo Breitenberg Sr.','cconn@example.net',9545589550),(44,'Kraig Littel','lubowitz.lorenza@example.com',9801051720),(45,'Althea Shanahan','mraz.danial@example.org',9179524322),(46,'Haylee Hickle','kirlin.della@example.net',9389501779),(47,'Mallory Rolfson','oraynor@example.org',9944432699),(48,'Lelia Tromp','koch.nathen@example.net',9721533567),(49,'Nicolette Leuschke','ervin.homenick@example.org',9943930303),(50,'Dr. Winston Gottlieb DVM','xwill@example.net',9755087308),(51,'Zackery Hermiston','donny20@example.org',9717042066),(52,'Kari Runte','weimann.marshall@example.org',9873383120),(53,'Alena Macejkovic','jesus54@example.org',9826083434),(54,'Braeden Schamberger','wilfred.hickle@example.org',9294415272),(55,'Mariana Schowalter II','zion.koch@example.net',9236157601),(56,'Osvaldo Casper','queen81@example.com',9627646768),(57,'Malika Beatty','yharvey@example.com',9598094832),(58,'Lisa Conroy Jr.','ilueilwitz@example.com',9228064461),(59,'Earl Dare','gwendolyn.gerhold@example.net',9673098021),(60,'Juvenal McLaughlin','ryan.d\'amore@example.org',9246052737),(61,'Prof. Khalil Howe','brady08@example.com',9687594736),(62,'Emanuel Schmitt','althea.koch@example.org',9284770565),(63,'Bianka Larkin','jaylan46@example.net',9641407974),(64,'Samson Hansen','nathaniel.rowe@example.net',9139417942),(65,'Westley Lakin','enrique60@example.org',9743557343),(66,'Mr. Shane Lebsack','fhirthe@example.net',9313519846),(67,'Emelie Goyette','uharris@example.com',9278293617),(68,'Ms. Meredith Gerlach II','rubie.rosenbaum@example.net',9703845293),(69,'Miss Alberta Conroy I','larkin.ernestine@example.org',9403734826),(70,'Elnora Weissnat','wpadberg@example.com',9348642594),(71,'Joey Reichel MD','jerald.skiles@example.org',9120762353),(72,'Ephraim Johnson','kovacek.ryann@example.com',9268160216),(73,'Mrs. Yesenia Hills PhD','rsteuber@example.net',9537042178),(74,'Diana Stroman','alec.lebsack@example.com',9166374642),(75,'Mr. Alfonso Ullrich IV','beer.camren@example.net',9456875969),(76,'Dr. Deon Harber IV','mafalda94@example.org',9279814004),(77,'Angus Steuber V','laverna47@example.com',9392527907),(78,'Mrs. Antoinette Tremblay V','tanner52@example.com',9627926487),(79,'Mr. Alexandre Balistreri','orodriguez@example.org',9410869140),(80,'Seth Russel V','schmidt.waylon@example.org',9319090756),(81,'Mr. Terrell Becker','tyler11@example.org',9519262117),(82,'Viviane Bayer','harrison18@example.net',9427541515),(83,'Mr. Baron Windler I','seth56@example.net',9242394545),(84,'Mrs. Kaitlyn Jacobs Sr.','vhettinger@example.org',9259287865),(85,'Javier Dooley','tillman.jude@example.com',9143324793),(86,'Alvera Kling','germaine.runolfsdottir@example.com',9403386314),(87,'Prof. Kamryn Armstrong','tyrel13@example.org',9163099974),(88,'Alexandrine Berge Sr.','tia55@example.org',9647050394),(89,'Beryl Adams','randall.strosin@example.com',9607795527),(90,'Dr. Buster Parisian IV','nlangworth@example.org',9965444463),(91,'Prof. Hiram Shanahan','mazie.towne@example.org',9452681581),(92,'Joy Macejkovic','mccullough.kenyon@example.org',9999885755),(93,'Stone Kshlerin','peter.cole@example.org',9851384624),(94,'Gladyce Cole','wweber@example.com',9459837816),(95,'Virginia Roob','augustus08@example.net',9734279443),(96,'Prof. Rahul Howe','anita.torphy@example.com',9644683434),(97,'Bryon Heidenreich','judah.keebler@example.org',9968760342),(98,'Prof. Yessenia Batz','percy62@example.com',9328404976),(99,'Emil Monahan','cassin.elvie@example.org',9168018675),(100,'Guillermo Haley','melvin83@example.com',9266256971),(101,'Dr. Xavier Ryan','sbatz@example.net',9290692579),(102,'Dr. Anibal Grady','tmurazik@example.org',9538369344),(103,'Willis Will','chance.leannon@example.com',9336382266),(104,'Myron Mayert','erling.boyle@example.org',9853200718),(105,'Eleonore Kling','billy.mills@example.org',9278446285),(106,'Adrian Orn MD','felipe.osinski@example.net',9299958360),(107,'Mrs. Lavina Will','bhuel@example.net',9468867991),(108,'Easton Buckridge MD','smcdermott@example.org',9303570434),(109,'Peyton Christiansen II','white.sherwood@example.org',9383615879),(110,'Glennie Corkery Sr.','filomena.mayer@example.com',9467683043),(111,'Prof. Nola Homenick V','brennan.sauer@example.net',9318343144),(112,'Arnaldo Raynor IV','eichmann.rashawn@example.com',9836340755),(113,'Fabiola Gusikowski V','mayert.minerva@example.org',9121545851),(114,'Maxie Grady','laney.flatley@example.net',9628920683),(115,'Mr. Sigrid Morissette','hodkiewicz.dean@example.org',9699469427),(116,'Prof. Mayra Schamberger','hnienow@example.net',9606514404),(117,'Elisha O\'Conner','jabbott@example.com',9569544603),(118,'Colt Wyman','kozey.austyn@example.com',9159123982),(119,'Asha Kuhic','kovacek.shea@example.com',9804473835),(120,'Claudie Williamson','vwintheiser@example.org',9790100203),(121,'Eula Rolfson','wruecker@example.org',9742865777),(122,'Prof. Mitchel O\'Kon DVM','tierra46@example.net',9759421993),(123,'Erica Sporer','khickle@example.net',9537817472),(124,'Greta Hodkiewicz V','alexandro02@example.com',9765562675),(125,'Delores Huel','schimmel.ludie@example.net',9976770718),(126,'Kassandra Quigley Sr.','oo\'conner@example.com',9463113682),(127,'Hayley Pfeffer','rhoda36@example.com',9793665395),(128,'Garrett Botsford','jaunita.schmeler@example.com',9868074160),(129,'Marco Zboncak','vlubowitz@example.net',9115868268),(130,'Walton Gutkowski','kelsie92@example.org',9363265672),(131,'Xzavier Hilpert','ysporer@example.com',9803198155),(132,'Dr. Alec Leannon','labadie.karley@example.com',9980582077),(133,'Hobart Miller','mann.antonio@example.com',9135280373),(134,'Ike Parisian','luella.cummerata@example.org',9463566099),(135,'Casey Feil','jdaniel@example.net',9166649183),(136,'Leopoldo Welch','hills.merritt@example.org',9627584754),(137,'Chasity Kiehn','anna.spinka@example.net',9695158064),(138,'Kenya Littel','bradtke.zita@example.org',9385173006),(139,'Prof. Roxanne Wilderman Jr.','joel.olson@example.net',9291456099),(140,'Miss Aubrey Sawayn MD','trippin@example.net',9535890585),(141,'Prof. Nathen Reichert','shanny.upton@example.net',9645155276),(142,'Ms. Kassandra Jacobi','hadley.kunze@example.com',9362461068),(143,'Myrl Goodwin','kub.jameson@example.net',9851877198),(144,'Bill Douglas','hassan61@example.org',9416415238),(145,'Mr. Peter D\'Amore','otha37@example.org',9562685050),(146,'Dr. Keshawn Greenholt PhD','gillian.von@example.net',9692023975),(147,'Ms. Sincere McDermott','eudora.grant@example.com',9417365224),(148,'Prof. Davonte Harvey','fay.simone@example.net',9198585720),(149,'Adeline Ondricka','wroob@example.org',9489869630),(150,'Ms. Opal Fisher IV','ukuvalis@example.net',9304350705),(151,'Dora Douglas','imelda58@example.net',9351442884),(152,'Prof. Gust Schulist','marlin11@example.org',9253008977),(153,'Mr. Jamaal Graham','gkreiger@example.com',9299781232),(154,'Estevan Stamm','dare.aurelie@example.com',9975958279),(155,'Eda Lowe','damian04@example.org',9738082899),(156,'Caitlyn Runolfsdottir','nwilliamson@example.net',9157717821),(157,'Josh Buckridge','ali85@example.org',9214116473),(158,'Amya Cole','rquitzon@example.net',9739257967),(159,'Jammie Bernhard','gayle.hagenes@example.org',9145191828),(160,'Meredith Konopelski','bode.marianne@example.com',9722902908),(161,'Dr. Russ Ullrich','kaylie25@example.org',9496887232),(162,'Miss Amanda Beier IV','haven70@example.com',9979440999),(163,'Everardo VonRueden','vokuneva@example.net',9307513590),(164,'Kyla Dibbert','katherine17@example.com',9397654914),(165,'Dr. Celestino Hegmann','xwaters@example.net',9574385694),(166,'Adella Gutmann','helga34@example.com',9403978574),(167,'Arch Cassin','qmuller@example.net',9691385176),(168,'Candida Gutmann','kuphal.elwyn@example.net',9919339129),(169,'Millie McClure','quitzon.yvonne@example.com',9379344758),(170,'Will Howe','gutmann.novella@example.org',9149480450),(171,'Celine Mertz','hilpert.caden@example.net',9601448593),(172,'Cletus Connelly DVM','romaguera.odessa@example.com',9568191939),(173,'Abel McLaughlin','maximus04@example.com',9596114054),(174,'Marian Kuphal','bkirlin@example.org',9826873637),(175,'Rita Vandervort II','dooley.godfrey@example.net',9820809334),(176,'Leann O\'Kon Sr.','ruthie15@example.org',9521975342),(177,'Maryam Hyatt','miguel74@example.org',9835366363),(178,'Carmella Kulas','hagenes.wilbert@example.net',9280103270),(179,'Royce Ledner II','lbogan@example.org',9511542747),(180,'Araceli Emard','hcassin@example.org',9314707204),(181,'Alexandro Strosin DVM','kathleen.parisian@example.com',9814787976),(182,'Ernestina Blanda','pearl25@example.com',9871777207),(183,'Kelly Kunze','lloyd62@example.com',9462462695),(184,'Bert Miller DVM','zack.littel@example.net',9532493167),(185,'Ima Deckow PhD','o\'keefe.kevon@example.org',9325208962),(186,'Giovanna Huels','nkrajcik@example.net',9352726912),(187,'Kaitlyn Heller','mozell.bechtelar@example.com',9558063000),(188,'Evan Herman Sr.','adolfo.green@example.net',9553259799),(189,'Carroll Hahn','norberto98@example.com',9447842897),(190,'Isaias Shields','stiedemann.chandler@example.net',9775912526),(191,'Mrs. Emmie Nikolaus Sr.','mcdermott.austin@example.com',9203282907),(192,'Audreanne Olson','litzy.prosacco@example.com',9203988422),(193,'Mr. Lawrence McClure','holly.wolff@example.com',9961654066),(194,'Dr. Hester Feil','cartwright.lonzo@example.net',9976085056),(195,'Pearl Gottlieb','katrina.marvin@example.org',9371313181),(196,'Aubrey Kihn','weissnat.annetta@example.com',9615559380),(197,'Odell Graham','thansen@example.net',9891213805),(198,'Thaddeus Nader','rohan.ressie@example.com',9396553983),(199,'Miss Stephany Harris','judge.predovic@example.org',9368433529),(200,'Prof. Erick Daniel','khills@example.com',9755384471),(201,'Dhananjay Arora','darora2@uncc.edu',9802878895),(202,'Dhananjay Arora','darora2@uncc.edu',9802878895),(203,'Dhananjay Arora','darora2@uncc.edu',9802878896),(204,'Dhananjay Arora','darora2@uncc.edu',9802878897),(205,'Akshay Babu','ababu1@uncc.edu',9802820800);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_join`
--

DROP TABLE IF EXISTS `person_join`;
/*!50001 DROP VIEW IF EXISTS `person_join`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_join` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `student_id`,
 1 AS `graduation_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_student`
--

DROP TABLE IF EXISTS `person_student`;
/*!50001 DROP VIEW IF EXISTS `person_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_student` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `cell`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(75) DEFAULT NULL,
  `restaurant_name` varchar(75) DEFAULT NULL,
  `schedule` varchar(75) DEFAULT NULL,
  `website` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'5357 Adrianna Shoal Suite 418\nEnochside, OH 46739-1915','Rath Ltd','9am -10pm','http://hahn.com/'),(2,'6977 Adams Locks Suite 001\nErikastad, LA 55321-5793','Kerluke-Herman','11am - 11pm','http://wilderman.com/'),(3,'559 Robin Cape\nWest Merl, OH 31271-9957','Berge Inc','11am - 11pm','http://okunevarohan.com/'),(4,'4501 Labadie Via\nLake America, NJ 33290','Hamill, Prohaska and Lehner','10am - 9pm','http://jacobswilderman.info/'),(5,'5587 Fanny Port\nNorth Nigel, NC 05813','Ratke LLC','10am - 9pm','http://www.williamson.org/'),(6,'3906 Wilkinson Street Suite 611\nLake Moisesburgh, DE 83148','Fisher-Rempel','9am -10pm','http://www.lehner.net/'),(7,'459 Labadie Course Suite 026\nNorth Ola, ND 60631','Ryan, Jaskolski and Schinner','10am - 9pm','http://www.schuster.org/'),(8,'630 Block Harbors\nEast Rudolphhaven, LA 44638','Kub, Borer and Ward','11am - 11pm','http://klingprohaska.com/'),(9,'40616 Mante Islands\nSouth Gileschester, MI 75466','O\'Conner-Mraz','9am -10pm','http://www.rosenbaum.com/'),(10,'9015 Velma Junction\nSpencerland, KY 15821-5602','Mayert LLC','9am -10pm','http://www.raynorgoldner.com/'),(11,'48482 Bode Harbors\nPort Modesta, AZ 10082-7993','Grady, Kreiger and Frami','10am - 9pm','http://skiles.com/'),(12,'597 Leora Summit Apt. 714\nEbertbury, WI 48130-6262','Abbott-Schmitt','9am -10pm','http://feil.com/'),(13,'387 Tromp Estates Suite 445\nWest Leopoldshire, NC 80009','Ankunding Group','9am -10pm','http://www.balistreri.info/'),(14,'679 Russel Villages\nConnellyfort, MD 72266','Weber, Lehner and Mueller','9am -10pm','http://mccullough.com/'),(15,'177 Katrina Gateway Apt. 797\nJastport, MN 44988-2805','Connelly, Wolf and Murazik','10am - 9pm','http://mraz.com/'),(16,'3136 Kunde Ports Apt. 399\nLake Trevor, CO 19002','Abernathy, Lehner and Zulauf','10am - 9pm','http://kirlinkulas.com/'),(17,'03334 Blanda Trafficway Suite 568\nFloyfort, OK 34900-7724','Heathcote, Kovacek and Cummerata','9am -10pm','http://glover.biz/'),(18,'031 Milton Bypass Suite 952\nStephonburgh, WY 82916-7389','Hauck, Rodriguez and Cremin','11am - 11pm','http://reynolds.com/'),(19,'375 Alanna Crossroad Suite 259\nNorth Shanna, MN 54873','Hermiston-Purdy','11am - 11pm','http://herzog.com/'),(20,'9359 Marcos Park Apt. 091\nSchmitttown, IL 68853','Smitham-Haley','11am - 11pm','http://quitzonmckenzie.com/'),(21,'215 Shanon Creek\nEast Antonettaview, MN 74167-8029','Cruickshank-Reilly','10am - 9pm','http://rodriguezkshlerin.com/'),(22,'0562 Cassin Divide\nElenorafurt, AR 37048','Eichmann-Casper','10am - 9pm','http://www.farrell.biz/'),(23,'41925 Bosco Station Apt. 238\nSouth Clara, MA 87547-3817','Gorczany, Kuphal and Pouros','9am -10pm','http://www.dare.com/'),(24,'9119 Cummerata Avenue Suite 529\nAbshiremouth, ND 00145-7770','Moen Ltd','9am -10pm','http://www.eichmannhomenick.org/'),(25,'422 Lesch Common Apt. 940\nNew Felicitaborough, IL 21308-3053','Keeling, Maggio and Hirthe','10am - 9pm','http://hermannwalter.info/'),(26,'52787 Ullrich Locks\nReynoldsside, IA 48689-5885','Mraz, Reichel and Hermiston','11am - 11pm','http://www.runolfsdottir.com/'),(27,'1135 Bartell Islands\nLake Philipton, HI 43588-0971','Oberbrunner-Herman','10am - 9pm','http://www.rice.com/'),(28,'8279 Concepcion Center\nHauckshire, AL 83821','Stanton-D\'Amore','9am -10pm','http://nienow.com/'),(29,'283 Nadia Islands\nAudreanneburgh, GA 64125-4442','Waelchi LLC','11am - 11pm','http://www.littel.net/'),(30,'093 Fredrick Spurs\nSouth Shannamouth, RI 24292','Ziemann, Denesik and Kunze','10am - 9pm','http://www.klinghilll.info/'),(31,'3948 Kiehn Forest Apt. 782\nHageneschester, VT 94419','Tromp Ltd','9am -10pm','http://white.com/'),(32,'4652 Maeve Brook\nSouth Corine, WA 21701-5426','Beatty Ltd','11am - 11pm','http://parisian.biz/'),(33,'4863 Becker Spring\nNorth Candelarioburgh, UT 16649-1046','Gutmann LLC','10am - 9pm','http://beahan.net/'),(34,'46083 Mekhi Ridge\nLake Jerrodhaven, VT 38507-5949','Macejkovic Ltd','9am -10pm','http://www.beahan.com/'),(35,'214 Lyric Mission\nPort Meaganview, AR 17033','Rolfson LLC','9am -10pm','http://skiles.com/'),(36,'96083 Konopelski Isle Suite 006\nBruenfort, KY 49444-9497','Marquardt, Reinger and Gusikowski','11am - 11pm','http://www.daniel.com/'),(37,'213 Larkin Coves\nQuintonside, TX 07955','Harber Group','10am - 9pm','http://www.goodwin.biz/'),(38,'0859 Hills Pine Apt. 888\nMyriammouth, NM 69940-8316','Wuckert, Reilly and Wuckert','9am -10pm','http://www.boscokilback.com/'),(39,'67511 Graham Shore\nLaceyland, WI 78493','Kirlin, Gibson and Kovacek','9am -10pm','http://schinner.com/'),(40,'0416 Nyasia Hills\nWest Penelope, MA 56613','Morissette, Kutch and Spinka','11am - 11pm','http://www.smitham.biz/'),(41,'6044 Prohaska Oval\nWillton, MI 09742','Corkery, Kilback and Skiles','10am - 9pm','http://www.schumm.com/'),(42,'0561 Dora Manors Suite 455\nNew Aliamouth, CO 28487-7002','Huels-Considine','11am - 11pm','http://dareboehm.biz/'),(43,'719 Virgil Orchard Apt. 083\nSouth Amalia, KY 78515-9294','Gusikowski, Funk and Rau','10am - 9pm','http://www.johnston.org/'),(44,'8474 Joana Rest\nNorth Kariane, MI 13273-8980','Friesen, Zemlak and Runolfsson','9am -10pm','http://www.schillerstreich.org/'),(45,'85504 Jacky Radial Suite 460\nBeauberg, ND 20689','Hayes-O\'Hara','9am -10pm','http://www.feest.net/'),(46,'791 Lennie Tunnel Apt. 153\nTyreekshire, DC 94328','Sporer, Reinger and Runte','10am - 9pm','http://www.gerhold.com/'),(47,'269 Keeling Forks\nBauchfort, TN 32390-9816','Rutherford, Cummerata and Langosh','10am - 9pm','http://pacocha.net/'),(48,'976 Gislason Heights Suite 926\nChristiansenshire, FL 00995','McGlynn PLC','10am - 9pm','http://langoshmcclure.com/'),(49,'3227 Witting Landing\nFerrystad, WY 43540','Crooks, Corkery and Dickinson','11am - 11pm','http://hudson.com/'),(50,'59694 Ulises Ranch Apt. 292\nRobelhaven, NY 81549','Jenkins-Greenholt','11am - 11pm','http://feil.net/'),(51,'71811 Gertrude Via Suite 007\nSouth Taryn, NV 23967','Waters, Turner and Adams','9am -10pm','http://franeckikuhn.com/'),(52,'09615 Green Shores Suite 103\nJaquanmouth, VA 66615','Hilpert, Von and Frami','11am - 11pm','http://gloverhansen.com/'),(53,'7385 Douglas Rapid\nLake Eusebioberg, NV 04724','Larkin, Lakin and Huel','11am - 11pm','http://www.pfeffer.com/'),(54,'121 Hartmann Falls Apt. 221\nEast Ashleyshire, CT 19450','Cremin Ltd','10am - 9pm','http://davis.com/'),(55,'9775 Victoria Inlet\nWest Clifford, NV 16309-4617','Orn, Kshlerin and Ebert','10am - 9pm','http://www.wisokywilderman.net/'),(56,'983 Macie Squares Apt. 211\nEast Lyda, PA 70725','Keeling-Jaskolski','11am - 11pm','http://doyle.com/'),(57,'801 Strosin Village\nDouglasbury, WY 85892','Kuhn-Kuhn','10am - 9pm','http://www.blick.com/'),(58,'162 Renner Walk\nNew Lexie, IN 72766','Runolfsdottir-Hagenes','9am -10pm','http://hickle.info/'),(59,'207 Berge Turnpike\nNorth Bulah, NY 56382-2747','Bradtke, Johnston and Baumbach','11am - 11pm','http://jones.org/'),(60,'93126 O\'Reilly Stream\nSouth Reneebury, NE 37534','Schulist-Dickinson','9am -10pm','http://www.huels.net/'),(61,'7027 Harold Vista Apt. 309\nSouth Lamarchester, AK 74002','Rath, Lebsack and Hane','10am - 9pm','http://www.sawayn.com/'),(62,'070 Valerie Radial\nLake Geraldine, ID 66048','Botsford Inc','9am -10pm','http://kesslergreenholt.com/'),(63,'83563 Gabe Cliffs Suite 176\nMurraybury, MI 42637-0699','Klocko and Sons','9am -10pm','http://cruickshankhahn.org/'),(64,'65258 Nelle Bypass Apt. 441\nNew Noemie, OR 56221-2401','Greenfelder-Strosin','11am - 11pm','http://www.quitzon.com/'),(65,'392 Terry Common\nReneeburgh, GA 16078-5698','Volkman Group','10am - 9pm','http://hansen.com/'),(66,'58362 Weimann View Apt. 783\nBorertown, IA 93172','Stanton-Marvin','10am - 9pm','http://johns.org/'),(67,'7339 Ziemann Common\nWest Diamondport, NC 14355-1563','Huels, Schamberger and Volkman','9am -10pm','http://www.greenholtlittle.com/'),(68,'172 Daisy Overpass\nFeestbury, MI 69119','Bahringer, Herman and Lebsack','10am - 9pm','http://www.reichert.info/'),(69,'744 Trudie Row Apt. 555\nLake Eduardoport, AL 24252-6634','Von and Sons','9am -10pm','http://www.buckridge.com/'),(70,'0420 Waelchi Ferry\nCedrickberg, KY 95033-5914','Daniel PLC','11am - 11pm','http://www.barton.com/'),(71,'90000 Pinkie Summit\nSouth Ansleyport, NJ 05455','Daniel, Ledner and Keebler','9am -10pm','http://swift.com/'),(72,'267 Kemmer Dam Suite 757\nLake Shanna, ND 06978-8017','Shields-Wehner','9am -10pm','http://maggiowisozk.com/'),(73,'5242 Maymie Prairie\nJosephinechester, CT 08166','Davis-Gottlieb','10am - 9pm','http://kiehn.com/'),(74,'503 Halvorson Roads\nEmilianomouth, WY 48846','Kuhic, DuBuque and Rutherford','10am - 9pm','http://mcdermott.com/'),(75,'61619 White Lock\nKassulkeberg, SD 92407','Miller-Schuppe','9am -10pm','http://langworth.net/'),(76,'2686 Rosina Drives\nLake Irving, WI 93674','Marquardt and Sons','9am -10pm','http://schoen.info/'),(77,'665 Reba Field Suite 259\nAbbieville, HI 45209','Heller-Stoltenberg','10am - 9pm','http://keebler.net/'),(78,'274 Aniyah View\nCorkerybury, NJ 42353-0485','Kub-Bartoletti','10am - 9pm','http://www.walkerschuster.biz/'),(79,'136 Champlin Circles Suite 260\nElmiraburgh, NY 86723','Pollich-Connelly','10am - 9pm','http://quigleyjohns.com/'),(80,'6656 Durgan Glens\nSidneyfort, NY 23527-3946','Predovic Group','11am - 11pm','http://www.mcclure.info/'),(81,'916 Kenna Walks Apt. 224\nDomenichaven, SD 08585','Thiel-Paucek','11am - 11pm','http://www.klein.com/'),(82,'87162 Keven Wall\nNew Amya, GA 23801-4982','Bednar and Sons','10am - 9pm','http://hamill.org/'),(83,'32020 Langworth Way\nJaycefort, MT 55909','Sipes-Carroll','9am -10pm','http://larkin.net/'),(84,'198 Mazie Bypass Apt. 852\nPort Newellland, ID 46813-6856','Kohler-Predovic','10am - 9pm','http://hermiston.com/'),(85,'8170 Orn Pine\nJadonton, MN 06564-1919','Fisher, Yundt and Wiegand','10am - 9pm','http://friesen.com/'),(86,'6809 Kulas Circles Suite 622\nPort Leonieland, KS 31358-9888','Corwin Inc','10am - 9pm','http://turner.com/'),(87,'540 Maximillia Via Suite 247\nNew Christine, OH 16149-9776','Veum PLC','10am - 9pm','http://www.shields.biz/'),(88,'8085 Alvina Isle Apt. 893\nJamisonland, MD 06507','Barrows Group','10am - 9pm','http://www.marquardtschumm.com/'),(89,'7446 Jarrett Plaza\nNew Phoebeview, ME 25224','Kub, Hoeger and Swaniawski','10am - 9pm','http://www.haley.biz/'),(90,'631 Wilkinson Shoal Apt. 785\nMadisynbury, NE 51948','Kerluke-Flatley','11am - 11pm','http://www.waters.net/'),(91,'86467 Kshlerin Point\nHeathcotetown, AZ 27728-4616','Rowe, Pouros and Gutkowski','11am - 11pm','http://gerlach.com/'),(92,'92578 Kylie Trafficway Suite 755\nLake Murphy, GA 78904','Grimes-Sporer','9am -10pm','http://www.osinski.com/'),(93,'72392 Hahn Station Apt. 674\nWest Josianeside, MT 59330-3244','Price-Reinger','11am - 11pm','http://stoltenbergmohr.biz/'),(94,'9329 Vesta Harbors Suite 849\nUllrichchester, DC 53814','Boehm, White and Kilback','9am -10pm','http://www.hillljohnson.com/'),(95,'30248 Eichmann Street Suite 151\nLake Nelson, VT 78923-5543','Conroy-O\'Keefe','10am - 9pm','http://hermiston.org/'),(96,'1070 Green Forks\nSelenaland, VT 70941','Wiegand LLC','9am -10pm','http://www.streich.com/'),(97,'20073 Clyde Ways Suite 898\nWest Dejahchester, GA 59632','Donnelly and Sons','10am - 9pm','http://cummings.net/'),(98,'215 Altenwerth Mall Apt. 621\nDietrichberg, MI 96944','McDermott, Senger and Ferry','10am - 9pm','http://www.collins.net/'),(99,'1105 Liza Shores Apt. 158\nHermannland, GA 62111','Grimes-Lakin','9am -10pm','http://terry.net/'),(100,'88626 Louvenia Fork\nLake Maxiefurt, TN 43522','Mertz Ltd','9am -10pm','http://ortiz.com/'), (101,'10032 Charlotte Hwy, Indian Land, SC 29707', 'Chick-fil-A', '9am -10pm', 'https://www.chick-fil-a.com/');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(75) DEFAULT NULL,
  `is_admin` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`staff_id`),
  KEY `fk_S_person_id` (`person_id`),
  CONSTRAINT `fk_S_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `check_is_admin_y_n` CHECK ((`is_admin` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,27,'Janitor','Y'),(2,37,'Bus Driver','N'),(3,48,'Bus Driver','N'),(4,28,'Assistant Manager','N'),(5,31,'Receptionist','Y'),(6,38,'Assistant Manager','Y'),(7,26,'Bus Driver','N'),(8,49,'Logistic Manager','N'),(9,33,'Receptionist','Y'),(10,45,'Assistant Manager','Y'),(11,40,'Bus Driver','Y'),(12,29,'Logistic Manager','N'),(13,46,'Receptionist','N'),(14,41,'Logistic Manager','Y'),(15,32,'Logistic Manager','Y'),(16,47,'Janitor','N'),(17,50,'Logistic Manager','Y'),(18,30,'Janitor','Y'),(19,39,'Assistant Manager','Y'),(20,43,'Bus Driver','Y'),(21,35,'Bus Driver','Y'),(22,42,'Logistic Manager','Y'),(23,36,'Janitor','N'),(24,34,'Logistic Manager','Y'),(25,44,'Bus Driver','Y');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `graduation_year` int(4) DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_St_person_id` (`person_id`),
  CONSTRAINT `fk_St_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,101,1987,'Philosophy','Undergraduate'),(2,141,1986,'Accounts','Undergraduate'),(3,92,1978,'Electronics','Graduate'),(4,85,2008,'Computer Science','Graduate'),(5,66,1979,'Accounts','Graduate'),(6,164,2019,'Accounts','Graduate'),(7,110,1989,'Philosophy','Undergraduate'),(8,137,1987,'Accounts','Undergraduate'),(9,140,1975,'Data Science','Graduate'),(10,107,1985,'Data Science','Graduate'),(11,55,2017,'Electrical','Undergraduate'),(12,91,2006,'Electrical','Undergraduate'),(13,144,2008,'Cyber Security','Graduate'),(14,58,2005,'Mechanical','Graduate'),(15,191,2015,'Accounts','Undergraduate'),(16,190,2011,'Biotechnology','Undergraduate'),(17,60,1990,'Cyber Security','Undergraduate'),(18,59,1987,'Environmental','Undergraduate'),(19,114,1999,'Data Science','Graduate'),(20,185,1986,'Electrical','Graduate'),(21,61,2006,'Electrical','Undergraduate'),(22,117,1984,'Data Science','Undergraduate'),(23,73,2004,'Chemical','Graduate'),(24,170,1976,'Chemical','Undergraduate'),(25,146,1997,'Computer Science','Graduate'),(26,143,1977,'Chemical','Undergraduate'),(27,108,1995,'Mechanical','Undergraduate'),(28,198,2000,'Mechanical','Graduate'),(29,94,2013,'Accounts','Graduate'),(30,172,2005,'Philosophy','Graduate'),(31,68,1981,'Chemical','Graduate'),(32,111,1991,'Environmental','Undergraduate'),(33,165,1983,'Cyber Security','Undergraduate'),(34,155,1993,'Environmental','Graduate'),(35,163,2013,'Accounts','Undergraduate'),(36,71,2002,'Accounts','Undergraduate'),(37,194,2013,'Data Science','Graduate'),(38,125,1983,'Chemical','Undergraduate'),(39,126,1980,'Chemical','Graduate'),(40,168,2014,'Electrical','Undergraduate'),(41,106,2010,'Data Science','Graduate'),(42,112,1990,'Accounts','Graduate'),(43,93,1975,'Philosophy','Graduate'),(44,195,2016,'Mechanical','Undergraduate'),(45,69,1975,'Philosophy','Graduate'),(46,180,1972,'Accounts','Undergraduate'),(47,56,1990,'Computer Science','Undergraduate'),(48,57,1982,'Accounts','Graduate'),(49,193,2012,'Accounts','Graduate'),(50,100,1988,'Civil','Graduate'),(51,78,1999,'Mechanical','Graduate'),(52,63,1989,'Mechanical','Undergraduate'),(53,153,1978,'Philosophy','Undergraduate'),(54,65,1985,'Cyber Security','Graduate'),(55,118,2010,'Biotechnology','Graduate'),(56,169,1981,'Chemical','Undergraduate'),(57,184,1980,'Chemical','Graduate'),(58,51,2001,'Accounts','Graduate'),(59,130,1993,'Data Science','Graduate'),(60,80,2005,'Chemical','Graduate'),(61,134,1994,'Chemical','Graduate'),(62,142,1979,'Accounts','Graduate'),(63,97,1988,'Data Science','Graduate'),(64,148,1998,'Biotechnology','Undergraduate'),(65,166,1980,'Civil','Undergraduate'),(66,116,1970,'Accounts','Undergraduate'),(67,138,2014,'Chemical','Graduate'),(68,113,1997,'Data Science','Undergraduate'),(69,70,2006,'Mechanical','Graduate'),(70,173,1975,'Cyber Security','Graduate'),(71,182,1984,'Accounts','Undergraduate'),(72,160,1974,'Cyber Security','Undergraduate'),(73,128,1972,'Environmental','Undergraduate'),(74,99,2009,'Environmental','Graduate'),(75,147,1971,'Mechanical','Graduate'),(76,81,1994,'Cyber Security','Graduate'),(77,177,1999,'Electronics','Graduate'),(78,90,1978,'Computer Science','Graduate'),(79,158,1985,'Computer Science','Graduate'),(80,79,2004,'Environmental','Graduate'),(81,119,1989,'Biotechnology','Graduate'),(82,171,2019,'Electronics','Undergraduate'),(83,77,1989,'Electronics','Undergraduate'),(84,186,1973,'Mechanical','Undergraduate'),(85,105,2011,'Chemical','Undergraduate'),(86,149,1971,'Mechanical','Undergraduate'),(87,133,1978,'Mechanical','Undergraduate'),(88,174,2010,'Environmental','Graduate'),(89,95,1994,'Mechanical','Undergraduate'),(90,72,2019,'Environmental','Undergraduate'),(91,76,1978,'Data Science','Graduate'),(92,123,2008,'Philosophy','Undergraduate'),(93,188,1979,'Data Science','Graduate'),(94,132,2001,'Data Science','Graduate'),(95,183,1983,'Data Science','Graduate'),(96,179,1973,'Data Science','Graduate'),(97,129,2000,'Accounts','Graduate'),(98,115,2015,'Philosophy','Undergraduate'),(99,200,1986,'Electronics','Undergraduate'),(100,84,2009,'Cyber Security','Undergraduate'),(101,54,1984,'Chemical','Graduate'),(102,102,2000,'Biotechnology','Undergraduate'),(103,152,2003,'Data Science','Graduate'),(104,176,1985,'Cyber Security','Graduate'),(105,120,2019,'Environmental','Graduate'),(106,53,1992,'Chemical','Graduate'),(107,178,1971,'Cyber Security','Graduate'),(108,122,1998,'Electronics','Graduate'),(109,86,2011,'Electrical','Graduate'),(110,136,2016,'Electronics','Graduate'),(111,151,1981,'Chemical','Undergraduate'),(112,196,1992,'Philosophy','Undergraduate'),(113,161,1994,'Computer Science','Undergraduate'),(114,83,2004,'Biotechnology','Undergraduate'),(115,98,1985,'Civil','Graduate'),(116,139,1979,'Accounts','Undergraduate'),(117,181,1977,'Mechanical','Graduate'),(118,197,1973,'Accounts','Undergraduate'),(119,135,1998,'Electronics','Undergraduate'),(120,109,2002,'Cyber Security','Undergraduate'),(121,159,1976,'Chemical','Graduate'),(122,67,1971,'Chemical','Undergraduate'),(123,199,2019,'Computer Science','Graduate'),(124,64,1992,'Accounts','Undergraduate'),(125,74,2002,'Data Science','Graduate'),(126,175,1987,'Environmental','Undergraduate'),(127,157,2017,'Biotechnology','Undergraduate'),(128,62,1971,'Biotechnology','Undergraduate'),(129,103,1993,'Cyber Security','Graduate'),(130,131,1972,'Environmental','Graduate'),(131,87,1989,'Electrical','Undergraduate'),(132,150,1984,'Cyber Security','Graduate'),(133,75,1988,'Accounts','Graduate'),(134,82,2018,'Civil','Graduate'),(135,124,2016,'Computer Science','Undergraduate'),(136,88,1989,'Biotechnology','Undergraduate'),(137,167,1991,'Data Science','Undergraduate'),(138,127,2013,'Chemical','Undergraduate'),(139,89,1986,'Electronics','Undergraduate'),(140,189,1995,'Environmental','Graduate'),(141,192,1972,'Philosophy','Graduate'),(142,145,1981,'Computer Science','Graduate'),(143,156,1996,'Environmental','Undergraduate'),(144,162,1999,'Cyber Security','Undergraduate'),(145,154,2009,'Biotechnology','Undergraduate'),(146,104,2006,'Electronics','Graduate'),(147,96,1985,'Mechanical','Graduate'),(148,187,2002,'Cyber Security','Undergraduate'),(149,52,1995,'Cyber Security','Undergraduate'),(150,121,1994,'Mechanical','Graduate'),(151,204,2019,'graduate','Graduate');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_plate` varchar(75) DEFAULT NULL,
  `model` varchar(75) DEFAULT NULL,
  `make` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'4333','p','Mercedes'),(2,'8289','y','BMW'),(3,'1126','h','Bugatti'),(4,'7749','p','Audi'),(5,'2644','z','BMW'),(6,'9878','o','Kia'),(7,'4697','i','Kia'),(8,'9687','s','Mercedes'),(9,'3364','c','Hyundai'),(10,'8683','z','Toyota'),(11,'5436','i','Kia'),(12,'9357','e','Kia'),(13,'6519','z','Toyota'),(14,'3585','t','Hyundai'),(15,'2767','d','Bugatti'),(16,'4184','j','Mercedes'),(17,'6489','l','BMW'),(18,'4260','j','Audi'),(19,'6455','d','Mercedes'),(20,'7009','q','Toyota');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

-- 
-- Table structure for table `rating`
-- 

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `order_id` int(11) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  KEY `fk_order_id` (`order_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `rating`
-- 

LOCK TABLES `rating` WRITE;
INSERT INTO `rating` (`order_id`, `comment`) VALUES (1, 'pellentesque,'), (2, 'tristique pharetra. Quisque'), (3, 'sagittis'), (4, 'pharetra ut, pharetra sed, hendrerit'), (5, 'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum'), (6, 'blandit mattis. Cras eget nisi dictum'), (7, 'nulla. Donec non justo. Proin non massa non'), (8, 'dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,'), (9, 'ultricies dignissim lacus. Aliquam rutrum lorem ac risus.'), (10, 'lobortis risus. In mi pede, nonummy ut, molestie in,'), (11, 'ultricies ornare, elit elit fermentum'), (12, 'Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.'), (13, 'pretium neque. Morbi quis urna. Nunc'), (14, 'Sed nec'), (15, 'aliquam iaculis, lacus'), (16, 'in consectetuer ipsum nunc'), (17, 'Nam ac nulla. In tincidunt congue'), (18, 'Proin ultrices. Duis volutpat nunc'), (19, 'quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam'), (20, 'lobortis ultrices. Vivamus rhoncus. Donec est.'), (21, 'Phasellus dapibus'), (22, 'dapibus'), (23, 'ac facilisis facilisis, magna tellus'), (24, 'purus'), (25, 'turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus.'), (26, 'justo sit amet'), (27, 'metus urna convallis erat,'), (28, 'eu, ligula. Aenean euismod mauris eu'), (29, 'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,'), (30, 'vel, mauris. Integer sem elit, pharetra ut, pharetra sed,'), (31, 'in, tempus eu,'), (32, 'Duis at lacus. Quisque'), (33, 'dui. Cras pellentesque.'), (34, 'malesuada id, erat. Etiam vestibulum massa rutrum'), (35, 'vel arcu. Curabitur'), (36, 'justo. Praesent luctus.'), (37, 'elit erat vitae risus. Duis'), (38, 'Phasellus dolor elit, pellentesque a,'), (39, 'vehicula et, rutrum eu, ultrices sit amet,'), (40, 'ligula'), (41, 'Mauris blandit enim consequat purus. Maecenas libero est,'), (42, 'aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum'), (43, 'nec luctus felis purus ac'), (44, 'lacus. Etiam bibendum fermentum metus.'), (45, 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus'), (46, 'ultricies ligula. Nullam'), (47, 'et magnis dis parturient'), (48, 'nisi magna sed dui. Fusce aliquam,'), (49, 'ut, nulla. Cras eu tellus eu augue'), (50, 'lectus convallis est, vitae sodales nisi'), (51, 'enim. Etiam imperdiet dictum magna.'), (52, 'arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor'), (53, 'lobortis.'), (54, 'eros'), (55, 'Quisque ac libero nec ligula consectetuer rhoncus.'), (56, 'Suspendisse sed dolor. Fusce mi lorem,'), (57, 'risus. Nunc ac sem ut dolor dapibus'), (58, 'ante lectus convallis est, vitae'), (59, 'nisi. Cum sociis natoque penatibus et'), (60, 'tempor, est ac mattis'), (61, 'dolor elit, pellentesque a, facilisis'), (62, 'ut, molestie in,'), (63, 'vitae semper egestas, urna'), (64, 'ut quam vel sapien imperdiet ornare. In'), (65, 'purus mauris'), (66, 'facilisis facilisis, magna tellus faucibus leo, in lobortis tellus'), (67, 'enim diam vel arcu. Curabitur ut odio'), (68, 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas'), (69, 'nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis'), (70, 'faucibus orci luctus'), (71, 'Vivamus molestie dapibus ligula. Aliquam erat volutpat.'), (72, 'Cras lorem lorem, luctus ut, pellentesque eget, dictum'), (73, 'lobortis, nisi nibh lacinia'), (74, 'posuere, enim nisl'), (75, 'Ut nec urna'), (76, 'risus.'), (77, 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel,'), (78, 'Etiam gravida'), (79, 'turpis non enim. Mauris quis turpis vitae purus'), (80, 'quis massa. Mauris vestibulum, neque sed dictum'), (81, 'quam a felis ullamcorper viverra. Maecenas iaculis aliquet'), (82, 'ornare, elit elit'), (83, 'velit dui, semper et, lacinia vitae, sodales'), (84, 'penatibus et magnis dis parturient montes,'), (85, 'Sed neque. Sed eget lacus.'), (86, 'dolor sit amet, consectetuer adipiscing elit.'), (87, 'est, congue a,'), (88, 'Nam consequat dolor'), (89, 'sapien. Cras dolor dolor, tempus non, lacinia at, iaculis'), (90, 'varius et, euismod et, commodo at, libero.'), (91, 'eu nibh vulputate mauris'), (92, 'faucibus orci luctus et ultrices posuere cubilia Curae;'), (93, 'Proin dolor. Nulla semper tellus id nunc interdum feugiat.'), (94, 'tellus. Phasellus'), (95, 'ornare'), (96, 'egestas hendrerit'), (97, 'volutpat. Nulla dignissim. Maecenas ornare egestas'), (98, 'tincidunt vehicula'), (99, 'Nullam suscipit, est ac'), (100, 'Duis elementum, dui quis accumsan convallis, ante'), (101, 'penatibus et magnis dis parturient');
UNLOCK TABLES;

-- 
-- Create index on the rating comment column
-- 
CREATE INDEX rating_comment_idx ON `rating` (`comment`);

-- 
-- Table structure for table `driver_rating`
-- 

DROP TABLE IF EXISTS `driver_rating`;
CREATE TABLE `driver_rating` (
  `driver_rating_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `rating_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `promptness_rating` TINYINT NOT NULL,
  `politeness_rating` TINYINT NOT NULL,
  KEY `driver_fk_rating_id` (`rating_id`),
  CONSTRAINT `driver_fk_rating_id` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  KEY `driver_restaurant_fk_id` (`restaurant_id`),
  CONSTRAINT `driver_restaurant_fk_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `driver_rating`
-- 

LOCK TABLES `driver_rating` WRITE;
INSERT INTO `driver_rating` VALUES (1, 1, 1, 6, 6), (2, 2, 2, 10, 9), (3, 3, 3, 8, 8), (4, 4, 4, 7, 3), (5, 5, 5, 1, 9), (6, 6, 6, 2, 6), (7, 7, 7, 8, 10), (8, 8, 8, 3, 5), (9, 9, 9, 3, 3), (10, 10, 10, 3, 8), (11, 11, 11, 4, 6), (12, 12, 12, 1, 1), (13, 13, 13, 3, 2), (14, 14, 14, 3, 7), (15, 15, 15, 8, 8), (16, 16, 16, 7, 7), (17, 17, 17, 3, 7), (18, 18, 18, 7, 1), (19, 19, 19, 6, 9), (20, 20, 20, 2, 9), (21, 21, 21, 5, 6), (22, 22, 22, 4, 8), (23, 23, 23, 4, 3), (24, 24, 24, 4, 4), (25, 25, 25, 6, 9), (26, 26, 26, 8, 6), (27, 27, 27, 9, 4), (28, 28, 28, 8, 6), (29, 29, 29, 8, 8), (30, 30, 30, 4, 3), (31, 31, 31, 9, 3), (32, 32, 32, 9, 1), (33, 33, 33, 2, 9), (34, 34, 34, 1, 9), (35, 35, 35, 9, 4), (36, 36, 36, 6, 4), (37, 37, 37, 9, 8), (38, 38, 38, 5, 4), (39, 39, 39, 5, 2), (40, 40, 40, 4, 3), (41, 41, 41, 7, 5), (42, 42, 42, 5, 3), (43, 43, 43, 9, 10), (44, 44, 44, 3, 3), (45, 45, 45, 3, 1), (46, 46, 46, 4, 1), (47, 47, 47, 7, 2), (48, 48, 48, 2, 9), (49, 49, 49, 2, 6), (50, 50, 50, 10, 8), (51, 51, 51, 4, 2), (52, 52, 52, 1, 10), (53, 53, 53, 10, 6), (54, 54, 54, 4, 3), (55, 55, 55, 4, 5), (56, 56, 56, 8, 3), (57, 57, 57, 4, 10), (58, 58, 58, 1, 7), (59, 59, 59, 2, 5), (60, 60, 60, 5, 5), (61, 61, 61, 9, 1), (62, 62, 62, 5, 6), (63, 63, 63, 1, 8), (64, 64, 64, 9, 10), (65, 65, 65, 4, 7), (66, 66, 66, 10, 7), (67, 67, 67, 7, 8), (68, 68, 68, 4, 5), (69, 69, 69, 6, 5), (70, 70, 70, 7, 3), (71, 71, 71, 4, 7), (72, 72, 72, 3, 5), (73, 73, 73, 8, 10), (74, 74, 74, 4, 9), (75, 75, 75, 1, 10), (76, 76, 76, 9, 3), (77, 77, 77, 5, 2), (78, 78, 78, 1, 2), (79, 79, 79, 4, 2), (80, 80, 80, 7, 4), (81, 81, 81, 1, 7), (82, 82, 82, 5, 5), (83, 83, 83, 9, 8), (84, 84, 84, 3, 4), (85, 85, 85, 1, 3), (86, 86, 86, 6, 2), (87, 87, 87, 7, 8), (88, 88, 88, 5, 5), (89, 89, 89, 7, 8), (90, 90, 90, 10, 2), (91, 91, 91, 1, 1), (92, 92, 92, 6, 7), (93, 93, 93, 10, 7), (94, 94, 94, 1, 4), (95, 95, 95, 3, 6), (96, 96, 96, 2, 8), (97, 97, 97, 5, 7), (98, 98, 98, 5, 5), (99, 99, 99, 6, 2), (100, 100, 100, 10, 4), (101, 101, 101, 1, 3);
UNLOCK TABLES;

-- 
-- Table structure for table `restaurant_rating`
-- 

DROP TABLE IF EXISTS `restaurant_rating`;
CREATE TABLE `restaurant_rating` (
  `restaurant_rating_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `rating_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `taste_rating` TINYINT NOT NULL,
  `freshness_rating` TINYINT NOT NULL,
  KEY `restaurant_fk_rating_id` (`rating_id`),
  CONSTRAINT `restaurant_fk_rating_id` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  KEY `restaurant_fk_id` (`restaurant_id`),
  CONSTRAINT `restaurant_fk_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `restaurant_rating`
-- 

LOCK TABLES `restaurant_rating` WRITE;
INSERT INTO `restaurant_rating` VALUES (1, 1, 1, 1, 10), (2, 2, 2, 3, 3), (3, 3, 3, 8, 10), (4, 4, 4, 8, 7), (5, 5, 5, 9, 8), (6, 6, 6, 6, 6), (7, 7, 7, 2, 3), (8, 8, 8, 7, 1), (9, 9, 9, 10, 8), (10, 10, 10, 10, 4), (11, 11, 11, 7, 3), (12, 12, 12, 2, 6), (13, 13, 13, 3, 10), (14, 14, 14, 3, 4), (15, 15, 15, 2, 4), (16, 16, 16, 9, 5), (17, 17, 17, 1, 4), (18, 18, 18, 7, 4), (19, 19, 19, 7, 3), (20, 20, 20, 9, 9), (21, 21, 21, 7, 1), (22, 22, 22, 5, 3), (23, 23, 23, 2, 6), (24, 24, 24, 6, 2), (25, 25, 25, 4, 8), (26, 26, 26, 8, 10), (27, 27, 27, 2, 6), (28, 28, 28, 6, 1), (29, 29, 29, 7, 10), (30, 30, 30, 5, 6), (31, 31, 31, 1, 3), (32, 32, 32, 9, 7), (33, 33, 33, 10, 4), (34, 34, 34, 5, 4), (35, 35, 35, 2, 1), (36, 36, 36, 7, 5), (37, 37, 37, 3, 9), (38, 38, 38, 2, 8), (39, 39, 39, 8, 10), (40, 40, 40, 8, 1), (41, 41, 41, 5, 7), (42, 42, 42, 8, 5), (43, 43, 43, 8, 3), (44, 44, 44, 1, 4), (45, 45, 45, 1, 6), (46, 46, 46, 4, 8), (47, 47, 47, 3, 5), (48, 48, 48, 9, 3), (49, 49, 49, 3, 8), (50, 50, 50, 10, 4), (51, 51, 51, 6, 4), (52, 52, 52, 6, 4), (53, 53, 53, 8, 10), (54, 54, 54, 9, 9), (55, 55, 55, 3, 1), (56, 56, 56, 2, 7), (57, 57, 57, 5, 5), (58, 58, 58, 6, 9), (59, 59, 59, 8, 9), (60, 60, 60, 7, 2), (61, 61, 61, 1, 8), (62, 62, 62, 9, 6), (63, 63, 63, 6, 10), (64, 64, 64, 8, 1), (65, 65, 65, 5, 10), (66, 66, 66, 5, 1), (67, 67, 67, 6, 3), (68, 68, 68, 2, 8), (69, 69, 69, 6, 3), (70, 70, 70, 3, 9), (71, 71, 71, 8, 2), (72, 72, 72, 6, 1), (73, 73, 73, 3, 2), (74, 74, 74, 4, 5), (75, 75, 75, 8, 5), (76, 76, 76, 8, 4), (77, 77, 77, 4, 2), (78, 78, 78, 4, 1), (79, 79, 79, 10, 9), (80, 80, 80, 10, 2), (81, 81, 81, 5, 3), (82, 82, 82, 7, 9), (83, 83, 83, 9, 9), (84, 84, 84, 2, 3), (85, 85, 85, 7, 9), (86, 86, 86, 5, 5), (87, 87, 87, 6, 4), (88, 88, 88, 2, 9), (89, 89, 89, 7, 10), (90, 90, 90, 2, 10), (91, 91, 91, 8, 1), (92, 92, 92, 6, 5), (93, 93, 93, 1, 7), (94, 94, 94, 4, 5), (95, 95, 95, 9, 2), (96, 96, 96, 1, 8), (97, 97, 97, 6, 7), (98, 98, 98, 2, 5), (99, 99, 99, 8, 2), (100, 100, 100, 4, 7), (101, 101, 101, 8, 6);
UNLOCK TABLES;

--
-- Dumping events for database 'niner_eats'
--

--
-- Dumping routines for database 'niner_eats'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(in person_name varchar(300), in email varchar(150), cellno bigint (15), person_type varchar(10))
BEGIN
insert into person (person_name, person_email, cell) values(person_name, email, cellno);
if(person_type = 'student') then
insert into student (person_id, graduation_year, major, type) values 
((select person_id from person where cell = cellno), 2019, 'Computer Science', 'Graduate');
elseif(person_type = 'faculty') then
insert into faculty (person_id, title, degree_college, highest_degree) values 
((select person_id from person where cell = cellno), 'Assistant Professor', 'UCLA', 'PhD');
elseif(person_type = 'staff') then
insert into student (person_id, position, is_admin) values 
((select person_id from person where cell = cellno), 'Bus Driver', 'N');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
-- /*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `person_join`
--

/*!50001 DROP VIEW IF EXISTS `person_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
-- /*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_join` AS select `person`.`person_id` AS `person_id`,`person`.`person_name` AS `person_name`,`person`.`person_email` AS `person_email`,`student`.`student_id` AS `student_id`,`student`.`graduation_year` AS `graduation_year` from (`person` join `student` on((`student`.`person_id` = `person`.`person_id`))) where (`student`.`major` = 'Computer Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
-- /*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_student`
--

/*!50001 DROP VIEW IF EXISTS `person_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
-- /*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_student` AS select `a`.`person_id` AS `person_id`,`a`.`person_name` AS `person_name`,`a`.`person_email` AS `person_email`,`a`.`cell` AS `cell` from `person` `a` where `a`.`person_id` in (select `student`.`person_id` from `student` where (`student`.`graduation_year` = 2019)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
-- /*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:16:05
--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `rating_id` int(11) DEFAULT NULL, -- may be null - not every customer will provide a rating
  `order_description` VARCHAR(75) NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT 5 CHECK(`delivery_charge` = 5),
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  KEY `fk_O_rating_id` (`rating_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_O_rating_id` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`order_id`, `person_id`, `delivery_id`, `location_id`, `driver_id`, `restaurant_id`, `rating_id`, `order_description`, `total_price`) VALUES (1, 1, 1, 1, 1, 1, 1, 'Burger King Whopper', 15.63), (2, 2, 2, 2, 2, 2, 2, 'Five Guys Cheeseburger', 18.03), (3, 3, 3, 3, 3, 3, 3, 'KFC Original Recipe Chicken', 11.91), (4, 4, 4, 4, 4, 4, 4, 'White Castle Sliders', 19.13), (5, 5, 5, 5, 5, 5, 5, "Arby's Roast Beef Sandwich", 13.76), (6, 6, 6, 6, 6, 6, 6, 'Sonic Cherry Limeade', 5.4), (7, 7, 7, 7, 7, 7, 7, "Wendy's Frosty", 14.05), (8, 8, 8, 8, 8, 8, 8, "McDonald's Happy Meal", 3.81), (9, 9, 9, 9, 1, 9, 9, 'Starbucks Pumpkin Spice Latte', 17.1), (10, 10, 10, 10, 2, 10, 10, 'Taco Bell Burrito Supreme', 12.71), (11, 11, 11, 11, 3, 11, 11, 'Chick-fil-A Chicken Sandwich', 3.9), (12, 12, 12, 12, 4, 12, 12, "Dunkin' Coffee", 6.82), (13, 13, 13, 13, 5, 13, 13, 'Krispy Kreme Original Glazed Doughnuts', 4.73), (14, 14, 14, 14, 6, 14, 14, "Taco Bell's Nacho Fries", 12.08), (15, 15, 15, 15, 7, 15, 15, "Culver's ButterBurger", 3.83), (16, 16, 16, 16, 8, 16, 16, 'Whataburger Taquito with Cheese', 12.43), (17, 17, 17, 17, 1, 17, 17, "Domino's Pepperoni Pizza", 6.61), (18, 18, 18, 18, 2, 18, 18, 'Panera Mac and Cheese', 7.89), (19, 19, 19, 19, 3, 19, 19, "Panda Express' Kung Pao Chicken", 16.54), (20, 20, 20, 20, 4, 20, 20, "McDonald's Hash Browns", 3.21), (21, 21, 21, 21, 5, 21, 21, 'Popeyes Biscuits', 5.19), (22, 22, 22, 22, 6, 22, 22, 'Little Caesars Hot-N-Ready Pepperoni Pizza', 19), (23, 23, 23, 23, 7, 23, 23, 'Taco Bell Chalupa Supreme', 14.5), (24, 24, 24, 24, 8, 24, 24, "McDonald's Egg McMuffin", 11.81), (25, 25, 25, 25, 1, 25, 25, "Wendy's Chicken Nuggets", 6.83), (26, 26, 26, 26, 2, 26, 26, 'Subway Chicken & Bacon Ranch Melt', 7.24), (27, 27, 27, 27, 3, 27, 27, 'Burger King French Fries', 10.56), (28, 28, 28, 28, 4, 28, 28, 'Shake Shack SmokeShack Burger', 4.25), (29, 29, 29, 29, 5, 29, 29, 'KFC Mashed Potatoes with Gravy', 6.68), (30, 30, 30, 30, 6, 30, 30, 'Starbucks Macchiato', 14.5), (31, 31, 31, 31, 7, 31, 31, "McDonald's Baked Apple Pie", 14.92), (32, 32, 32, 32, 8, 32, 32, 'Pizza Hut Pepperoni Pizza', 4.12), (33, 33, 33, 33, 1, 33, 33, 'Chick-fil-A Iced Tea', 7.02), (34, 34, 34, 34, 2, 34, 34, 'Subway Cookies', 8.6), (35, 35, 35, 35, 3, 35, 35, 'Checkers Seasoned Fries', 8.98), (36, 36, 36, 36, 4, 36, 36, 'Whataburger Original Whataburger', 7.94), (37, 37, 37, 37, 5, 37, 37, "Dunkin' Munchkins", 14.8), (38, 38, 38, 38, 6, 38, 38, 'KFC Popcorn Chicken Nuggets', 19.05), (39, 39, 39, 39, 7, 39, 39, 'Burger King Chicken Fries', 12.49), (40, 40, 40, 40, 8, 40, 40, 'Popeyes Chicken Sandwich', 15.56), (41, 41, 41, 41, 1, 41, 41, "Wendy's Baked Potato", 8.85), (42, 42, 42, 42, 2, 42, 42, 'Dairy Queen Blizzard', 12.28), (43, 43, 43, 43, 3, 43, 43, 'Five Guys Fries', 9.28), (44, 44, 44, 44, 4, 44, 44, "Culver's Wisconsin Cheese Curds", 9.78), (45, 45, 45, 45, 5, 45, 45, 'KFC Extra Crispy Chicken', 12.43), (46, 46, 46, 46, 6, 46, 46, 'Little Caesars Crazy Bread', 4.11), (47, 47, 47, 47, 7, 47, 47, "McDonald's Filet-O-Fish Sandwich", 14.29), (48, 48, 48, 48, 8, 48, 48, "Papa John's Cheese Pizza", 5.69), (49, 49, 49, 49, 1, 49, 49, "Hardee's Original Thickburger", 12.52), (50, 50, 50, 50, 2, 50, 50, "Domino's Extravaganza Pizza", 8.84), (51, 51, 51, 51, 3, 51, 51, 'Panera Broccoli Cheddar Soup', 5.69), (52, 52, 52, 52, 4, 52, 52, 'Panera Roasted Turkey and Avocado BLT', 14.53), (53, 53, 53, 53, 5, 53, 53, "Wendy's Daves \xc2\xbc lb. Single", 10.23), (54, 54, 54, 54, 6, 54, 54, 'Jack in the Box Tacos', 10.7), (55, 55, 55, 55, 7, 55, 55, 'Dairy Queen Chicken Strip Basket', 14.03), (56, 56, 56, 56, 8, 56, 56, "Popeye's Cajun Fries", 13.46), (57, 57, 57, 57, 1, 57, 57, 'In-n-Out Animal Style Burger', 13.98), (58, 58, 58, 58, 2, 58, 58, 'Jack in the Box Curly Fries', 15.21), (59, 59, 59, 59, 3, 59, 59, 'Taco Bell Doritos Locos Tacos', 4.6), (60, 60, 60, 60, 4, 60, 60, 'Dunkin Donuts Hash Browns', 3.27), (61, 61, 61, 61, 5, 61, 61, "Wendy's Baconator", 9.39), (62, 62, 62, 62, 6, 62, 62, 'Starbucks Frappuccino', 3.7), (63, 63, 63, 63, 7, 63, 63, 'Starbucks Bacon and Gouda Breakfast Sandwich', 18.49), (64, 64, 64, 64, 8, 64, 64, 'Taco Bell Crunchy Taco', 15.51), (65, 65, 65, 65, 1, 65, 65, "Steak 'n Shake Burger", 6.8), (66, 66, 66, 66, 2, 66, 66, 'Shake Shack Shackburger', 12.57), (67, 67, 67, 67, 3, 67, 67, 'Chick-fil-A Waffle Fries', 8.69), (68, 68, 68, 68, 4, 68, 68, 'Dunkin Donuts Boston Creme', 9.38), (69, 69, 69, 69, 5, 69, 69, "McDonald's McFlurry", 18.23), (70, 70, 70, 70, 6, 70, 70, "Popeye's Mac 'n Cheese", 13.39), (71, 71, 71, 71, 7, 71, 71, 'Taco Bell Soft Taco', 17.71), (72, 72, 72, 72, 8, 72, 72, 'Panda Express Orange Chicken', 10.59), (73, 73, 73, 73, 1, 73, 73, 'In-n-Out Double Double', 6.99), (74, 74, 74, 74, 2, 74, 74, 'Whataburger Bacon and Cheese Whataburger', 14.14), (75, 75, 75, 75, 3, 75, 75, "Burger King Bacon Egg and Cheese Croissan'wich", 16.73), (76, 76, 76, 76, 4, 76, 76, 'Chipotle Chicken Burrito with Black Beans', 6.64), (77, 77, 77, 77, 5, 77, 77, "Pizza Hut Meat Lover's Pizza", 16.48), (78, 78, 78, 78, 6, 78, 78, "Jimmy John's Vito Sandwich", 18.61), (79, 79, 79, 79, 7, 79, 79, "Wendy's Chicken Tenders", 18.66), (80, 80, 80, 80, 8, 80, 80, 'Tim Hortons Double Double', 7.6), (81, 81, 81, 81, 1, 81, 81, "Zaxby's Chicken Finger Plate", 16.72), (82, 82, 82, 82, 2, 82, 82, "Hardee's Monster Biscuits", 5.64), (83, 83, 83, 83, 3, 83, 83, 'Sonic Bacon Cheeseburger Toaster', 7.39), (84, 84, 84, 84, 4, 84, 84, 'Chick-fil-A Chicken Nuggets', 11.61), (85, 85, 85, 85, 5, 85, 85, 'Jack in the Box Loaded Breakfast Sandwich', 16.74), (86, 86, 86, 86, 6, 86, 86, "Jimmy John's JJ BLT", 19.88), (87, 87, 87, 87, 7, 87, 87, "Culver's Frozen Custard", 7.52), (88, 88, 88, 88, 8, 88, 88, 'Subway Spicy Italian', 14.63), (89, 89, 89, 89, 1, 89, 89, 'Qdoba Shredded Beef Tacos', 19.45), (90, 90, 90, 90, 2, 90, 90, "Raising Cane's Sandwich Combo", 12.5), (91, 91, 91, 91, 3, 91, 91, "McDonald's Chicken McNuggets", 10.34), (92, 92, 92, 92, 4, 92, 92, "Subway's Italian BMT", 11.34), (93, 93, 93, 93, 5, 93, 93, 'Chick-fil-A Soft Drink', 15.05), (94, 94, 94, 94, 6, 94, 94, "Bojangles' Biscuits", 7.89), (95, 95, 95, 95, 7, 95, 95, "McDonald's Big Mac", 16.69), (96, 96, 96, 96, 8, 96, 96, "Church's Chicken Honey Butter Biscuits", 5.71), (97, 97, 97, 97, 1, 97, 97, "Tim Horton's Chocolate Doughnuts", 16.9), (98, 98, 98, 98, 2, 98, 98, "McDonald's Quarter Pounder with Cheese", 15.63), (99, 99, 99, 99, 3, 99, 99, 'Chipotle Chicken Bowl', 3.71), (100, 100, 100, 100, 4, 100, 100, "McDonald's French Fries", 5.08), (101, 1, 2, 3, 4, 5, 101, "McDonald's Caesar Salad", 6);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
-- /*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
-- DELIMITER ;;
-- /*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_AFTER_INSERT` AFTER INSERT ON `order` FOR EACH ROW BEGIN
-- 	insert into niner_eats.delivery (driver_id, vehicle_id) values(new.driver_id, 2);
-- END */;;
-- DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
-- /*!50003 SET collation_connection  = @saved_col_connection */ ;

-- 
-- Create a table to track operations on the order table
-- 

DROP TABLE IF EXISTS `order_audit`;
CREATE TABLE `order_audit`
(
  `order_id` 	int(11) NOT NULL,
  `person_id` 	int(11) NOT NULL,
  `delivery_id`	int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `driver_id` 	int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `rating_id` 	int(11),
  `order_description` VARCHAR(75) NOT NULL,
  `total_price`  float 	NOT NULL,
  `delivery_charge` float,
  `sql_operation` VARCHAR(10) NOT NULL,
  `sql_operation_date` DATE NOT NULL
);

-- 
-- Create triggers to log operations on the order table
-- 

DROP TRIGGER IF EXISTS order_before_insert;
DROP TRIGGER IF EXISTS order_before_update;
DROP TRIGGER IF EXISTS order_before_delete;

DELIMITER //

CREATE TRIGGER order_before_insert
  BEFORE INSERT ON `order`
  FOR EACH ROW
BEGIN
    INSERT INTO `order_audit` VALUES
    (
    NEW.`order_id`, 
    NEW.`person_id`, 
    NEW.`delivery_id`, 
    NEW.`location_id`, 
    NEW.`driver_id`,
    NEW.`restaurant_id`,
    NEW.`rating_id`,
    NEW.`order_description`,
    NEW.`total_price`,
    NEW.`delivery_charge`,
    'INSERT', 
    NOW()
    );
END//

CREATE TRIGGER order_before_update
  BEFORE UPDATE ON `order`
  FOR EACH ROW
BEGIN
    INSERT INTO `order_audit` VALUES
    (
    NEW.`order_id`, 
    NEW.`person_id`, 
    NEW.`delivery_id`, 
    NEW.`location_id`, 
    NEW.`driver_id`,
    NEW.`restaurant_id`,
    NEW.`rating_id`,
    NEW.`order_description`,
    NEW.`total_price`,
    NEW.`delivery_charge`,
    'UPDATE', 
    NOW()
    );
END//

CREATE TRIGGER order_before_delete
  BEFORE DELETE ON `order`
  FOR EACH ROW
BEGIN
    INSERT INTO `order_audit` VALUES
    (
    OLD.`order_id`, 
    OLD.`person_id`, 
    OLD.`delivery_id`, 
    OLD.`location_id`, 
    OLD.`driver_id`,
    OLD.`restaurant_id`,
    OLD.`rating_id`,
    OLD.`order_description`,
    OLD.`total_price`,
    OLD.`delivery_charge`,
    'DELETION', 
    NOW()
    );
END//

DELIMITER ;

--
-- Test above triggers
--

/*
INSERT INTO `order` 
		(`order_id`, `person_id`, `delivery_id`, `location_id`, `driver_id`, `restaurant_id`, `order_description`, `total_price`)
VALUES (102, 1, 2, 3, 4, 5, 'French Fries', 2.50);

UPDATE `order`
SET `order_description` = CONCAT(`order`.`order_description`, ' and French Fries')
WHERE `order_id` = 2;

DELETE FROM `order`
WHERE `order_id` = 1;

SELECT * FROM `order_audit`;
*/

-- 

USE Campus_Eats_Fall2020;
CREATE TRIGGER model_name
BEFORE INSERT ON vehicle
FOR EACH ROW 
SET NEW.model = LOWER(NEW.model);

-- Test above trigger

/* 
INSERT INTO vehicle VALUES (21, '9999', 'Z', 'BMW'); 
SELECT * FROM Campus_Eats_Fall2020.vehicle;

*/

-- Create index on the order description column
-- 
CREATE INDEX order_description_idx ON `order` (`order_description`);

-- 
-- Add custom views
--

/* Creating a view to get order descriptions and total prices of restaurants with freshness rating
below avg and schedule 9am- 10pm */
DROP VIEW IF EXISTS `Order_with_freshness_rating_below_avg`;
CREATE VIEW `Orders_with_freshness_rating_below_avg` AS
Select `order`.`order_description`, `restaurant`.`schedule`,`order`.`total_price`, `restaurant_rating`.`freshness_rating`
From `order`
Join `restaurant`
On `order`.`restaurant_id` = `restaurant`.`restaurant_id`
Join `restaurant_rating`
On `restaurant`.`restaurant_id` = `restaurant_rating`.`restaurant_id`
WHERE `restaurant_rating`.`freshness_rating` <= (SELECT AVG(`restaurant_rating`.`freshness_rating`) From `restaurant_rating`)
AND `restaurant`.`schedule` = '9am -10pm'
Order by `restaurant_rating`.`freshness_rating` DESC;

/* Creating a view by joining the tables restaurant and restaurant_rating to get restaurant names
which have avg rating of taste and freshness combined above 7.5 threshold*/
DROP VIEW IF EXISTS `Restaurant_with_Good_Avg_Rating`;
CREATE VIEW `Restaurant_with_Good_Avg_Rating` AS
Select `restaurant`.`restaurant_name`, (`restaurant_rating`.`taste_rating` + `restaurant_rating`.`freshness_rating`)/2 AS Avg_Rating
FROM `restaurant`
Join `restaurant_rating`
On `restaurant`.`restaurant_id` = `restaurant_rating`.`restaurant_id`
Having Avg_rating >= 7.5
Order by `restaurant`.`restaurant_name`;

/* Creating a view to find the count of drop_off_locations that gave the different promptness_ratings for drivers */
DROP VIEW IF EXISTS `Drop_off_location_and_promptness_rating`;
CREATE VIEW `Drop_off_location_and_promptness_rating` AS
Select `driver_rating`.`promptness_rating`, COUNT(`location`.`drop_off_point`) AS Count_of_drop_off_locations
From `driver_rating`
Join `restaurant`
On `driver_rating`.`restaurant_id` = `restaurant`.`restaurant_id`
Join `order`
On `restaurant`.`restaurant_id` = `order`.`restaurant_id`
Join `location`
On `order`.`location_id` = `location`.`location_id`
Group by `driver_rating`.`promptness_rating`
Order by `driver_rating`.`promptness_rating`;

-- Create user and admin roles and set their privileges
CREATE ROLE IF NOT EXISTS ce_user, ce_admin;

GRANT SELECT 
ON Campus_Eats_Fall2020.* 
TO ce_user;

GRANT ALL 
ON Campus_Eats_Fall2020.* 
TO ce_admin;

--  Create two sample user accounts
DROP USER IF EXISTS haps_user@localhost;
CREATE USER haps_user@localhost 
IDENTIFIED BY 'pa55word';

DROP USER IF EXISTS jay_admin@localhost;
CREATE USER jay_admin@localhost 
IDENTIFIED BY 'pa55word';

-- Assign roles to the user accounts created above. Default roles are set at login.
GRANT ce_user 
TO haps_user@localhost;

SET DEFAULT ROLE ce_user 
TO haps_user@localhost;

GRANT ce_admin 
TO jay_admin@localhost;

SET DEFAULT ROLE ce_admin 
TO jay_admin@localhost;

-- Create a view to the restaurant table that is named view_haps and only shows restaurant id 1
DROP VIEW IF EXISTS view_haps;
CREATE VIEW view_haps AS 
(SELECT * from restaurant 
where restaurant_id = 1);

-- Grant haps_user both select and update privileges to the view
GRANT SELECT, UPDATE 
ON campus_eats_fall2020.view_haps 
TO 'haps_user'@'localhost';

-- Test permissions. Login to DBMS as `haps_user` required.

/*
-- `haps_user` can read records from `view_haps`
SELECT * 
FROM view_haps;

-- `haps_user` can update `view_haps` data
UPDATE view_haps
SET website = 'https://www.google.com';

-- `haps_user` cannot delete `view_haps` data
DELETE FROM view_haps
WHERE restaurant_id = 1;
*/
