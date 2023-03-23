-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: luzzydb
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `buildcaketbl`
--

DROP TABLE IF EXISTS `buildcaketbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildcaketbl` (
  `buildcakenum` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `size` varchar(100) NOT NULL,
  `layer` varchar(50) NOT NULL,
  `flavor` varchar(100) NOT NULL,
  `design` varchar(100) NOT NULL,
  `design1` varchar(100) DEFAULT NULL,
  `topper` varchar(100) NOT NULL,
  `message` varchar(250) DEFAULT NULL,
  `specialrequest` varchar(25) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `price` int NOT NULL,
  `placeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`buildcakenum`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildcaketbl`
--

LOCK TABLES `buildcaketbl` WRITE;
/*!40000 ALTER TABLE `buildcaketbl` DISABLE KEYS */;
INSERT INTO `buildcaketbl` VALUES (1,17162714,123123123,'6x2','1','Ube','Plain','','None','','','',600,'2023-02-26 14:21:16','2023-03-10'),(2,13649894,18692872,'7x3','2','Chocolate','Cheese - Drip','','Birthday','','','',1800,'2023-02-27 02:55:08','0008-02-02'),(3,14260414,12560604,'6x2','1','Ube','Brown Chocolate Sprinkles','','number - double','','','7',700,'2023-03-02 12:25:55','2023-03-17'),(4,16722555,12560604,'6x2','2','Moist Chocolate','Chocolate','','None','','','',1100,'2023-03-02 12:33:35','2023-03-25'),(5,17560622,12560604,'8x3','2','Mango','Simple','','Birthday','ss','ss','',2000,'2023-03-02 12:34:41','2023-03-25'),(6,12166911,18947577,'8x3','2','Ube','Chocolate-Sprinkles','White Chocolate Sprinkles','Birthday','hbdmbtc','allergic to nuts','',2000,'2023-03-06 08:32:56','2023-03-20'),(7,12007083,12560604,'6x2','2','Chocolate','Chocolate','Chocolate','Gender - Boy','jjjj','jjj','',1200,'2023-03-07 09:52:15','2023-04-01'),(8,12683541,12560604,'6x4','2','Vanilla Caramel','Flower ','Flower ','Birthday','ppoo','ppoo','',1600,'2023-03-07 10:09:06','2023-03-25'),(9,17675092,12560604,'6x4','2','Vanilla Caramel','Flower ','Flower ','Birthday','ppoo','ppoo','',1600,'2023-03-07 10:09:07','2023-03-25'),(10,16754514,18947577,'6x2','2','Ube','Strawberry with cherries','Brown Chocolate Sprinkles','None','hbdmbtc','no milk','',1100,'2023-03-08 14:23:29','2023-03-23'),(11,15819581,12560604,'8x3','2','Chocolate','Chocolate-Sprinkles','Flower ','number - double','gg','gg','1 - 1',2000,'2023-03-09 02:19:10','2023-03-18'),(12,14983807,12560604,'8x3','2','Pandan','Simple 2','Cheese - Drip','number','','','1',1950,'2023-03-09 02:22:13','2023-03-21'),(13,11245756,12560604,'8x3','2','Moist Chocolate','White Chocolate Sprinkles','Brown Chocolate Sprinkles','Christening','','','',2000,'2023-03-09 10:33:15','2023-03-07'),(14,16090282,12560604,'8x3','2','Ube','Cheese - Drip','Choco combo Sprinkles','Birthday','','','',2000,'2023-03-09 10:39:15','2023-03-08'),(15,16957207,12560604,'6x2','2','Ube','Cheese - Drip','Cheese - Drip','number - double','','','2 - 1',1200,'2023-03-10 08:17:38','2023-03-25'),(16,13964069,12560604,'6x2','1','Moist Chocolate','Strawberry with cherries','Strawberry with cherries','Debut','name','','',700,'2023-03-13 04:08:33','2023-03-20'),(17,16527636,12560604,'6x2','1','Chocolate','Plain','','None','','','',600,'2023-03-15 03:40:55','2023-03-15'),(18,10523642,12560604,'6x2','2','Chocolate','Choco-Strawberry','Cheese - Drip','None','','','',1100,'2023-03-15 03:58:10','2023-03-26'),(19,18353193,12560604,'6x2','2','Chocolate','Choco-Strawberry','Cheese - Drip','None','','','',1100,'2023-03-15 03:58:11','2023-03-26'),(20,16753710,12560604,'6x2','2','Strawberry','Dark Choco with Sprinkles','Chocolate Drip','Gender','sadsas','dsdsads','',1200,'2023-03-16 06:21:37','2023-03-17'),(21,11511056,12560604,'6x2','1','Macha','Plain','','None','','','',600,'2023-03-16 06:34:21','2023-03-16'),(22,16680295,12560604,'6x2','1','Strawberry','Plain','','None','','','',600,'2023-03-16 23:49:19','2023-03-26');
/*!40000 ALTER TABLE `buildcaketbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carttbl`
--

DROP TABLE IF EXISTS `carttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carttbl` (
  `cart_num` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `request` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cart_num`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carttbl`
--

LOCK TABLES `carttbl` WRITE;
/*!40000 ALTER TABLE `carttbl` DISABLE KEYS */;
INSERT INTO `carttbl` VALUES (29,18947577,10466325,'');
/*!40000 ALTER TABLE `carttbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertbl`
--

DROP TABLE IF EXISTS `ordertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `order_date` varchar(100) DEFAULT NULL,
  `order_request` varchar(250) DEFAULT NULL,
  `placeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertbl`
--

LOCK TABLES `ordertbl` WRITE;
/*!40000 ALTER TABLE `ordertbl` DISABLE KEYS */;
INSERT INTO `ordertbl` VALUES (1,18220923,123123123,10680823,NULL,NULL,'2023-02-26 13:33:50'),(2,11089950,123123123,12497610,NULL,'69','2023-02-26 14:56:59'),(3,12041601,12560604,10680823,NULL,'','2023-03-02 12:45:27'),(4,17714382,12560604,18557139,NULL,'','2023-03-06 11:48:10'),(5,14026931,12560604,18557139,NULL,'','2023-03-06 11:48:10'),(6,18392139,18947577,10418020,NULL,'','2023-03-07 06:49:16'),(7,14314579,18947577,12029932,NULL,'gusto ko pink at red','2023-03-07 06:52:59'),(8,14783057,12560604,12408740,NULL,'jjj','2023-03-07 09:54:33'),(9,17140271,12560604,12408740,NULL,'jjj','2023-03-07 09:54:33'),(10,11917085,12560604,18557139,NULL,'nn','2023-03-08 09:24:21'),(11,18369474,12560604,10882770,NULL,'gg','2023-03-09 02:13:29'),(12,15767604,12560604,12523417,NULL,'','2023-03-09 10:19:58'),(13,15384071,12560604,17400266,NULL,'','2023-03-09 10:19:58'),(14,11899825,12560604,10466325,NULL,'jjj','2023-03-10 08:17:04'),(15,14040402,12560604,10466325,NULL,'','2023-03-13 04:13:05'),(16,14994582,12560604,18391359,NULL,'','2023-03-13 07:29:35'),(17,14846511,12560604,18391359,NULL,'a','2023-03-16 06:40:47'),(18,16308149,12560604,17876514,NULL,'w','2023-03-16 06:40:47'),(19,10614010,12560604,10466325,NULL,'test','2023-03-16 06:40:47'),(20,14811974,12560604,10466325,NULL,'','2023-03-16 06:42:14'),(21,18333334,12560604,10567617,NULL,'pink chocolate','2023-03-16 06:46:09'),(22,18625274,12560604,18005745,NULL,'number','2023-03-16 10:59:22'),(23,14189001,12560604,18005745,NULL,'number','2023-03-16 11:00:01'),(24,12770846,12560604,11991558,NULL,'No salt','2023-03-16 23:28:15'),(25,16835868,12560604,14826583,NULL,'','2023-03-16 23:54:49'),(26,14448366,12560604,17429271,NULL,'aaa','2023-03-17 00:02:08'),(27,13140604,12560604,17429271,NULL,'aaa','2023-03-17 00:02:08'),(28,18528287,12560604,17876514,NULL,'mm','2023-03-17 00:04:22'),(29,13178948,12560604,11991558,NULL,'jj','2023-03-17 08:21:26');
/*!40000 ALTER TABLE `ordertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttbl`
--

DROP TABLE IF EXISTS `producttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  `product_subcategory` varchar(50) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_size` varchar(20) DEFAULT NULL,
  `product_qty` int DEFAULT NULL,
  `product_image` varchar(250) DEFAULT NULL,
  `product_description` varchar(250) DEFAULT NULL,
  `product_status` int DEFAULT NULL,
  `product_flavor` varchar(25) DEFAULT NULL,
  `product_shape` varchar(25) DEFAULT NULL,
  `product_icing` varchar(25) DEFAULT NULL,
  `product_layer` varchar(25) DEFAULT NULL,
  `product_tier` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttbl`
--

LOCK TABLES `producttbl` WRITE;
/*!40000 ALTER TABLE `producttbl` DISABLE KEYS */;
INSERT INTO `producttbl` VALUES (1,11955548,'Anniversary Bento 1 ','Anniversary','Bento',200,'6x2',1,'http://localhost:4000/product_image-1677396726160.jpg','bento',0,'Strawberry','Circle','Icing','1','1'),(2,10680823,'Anniversary Cake 1 ','Anniversary','Cakes',1500,'7x4',1,'http://localhost:4000/product_image-1677396950872.jpg','Cake',0,'Chocolate','Circle','Icing','1','1'),(3,12497610,'Birthday Number 1 ','Birthday','Number',700,'6x2',1,'http://localhost:4000/product_image-1677397069977.jpg','number',0,'Chocolate','Circle','None','1','1'),(4,12408740,'Character cake 1','Character','Cakes',1500,'6x2',1,'http://localhost:4000/product_image-1677412769484.jpg','Frozen',0,'Chocolate','Circle','Icing','1','1'),(5,12506966,'Christening Cake 1','Christening','Cakes',2000,'6x2',1,'http://localhost:4000/product_image-1677412855535.jpg','Chocolate Cake',1,'Chocolate','Circle','Icing','1','1'),(6,10418020,'Debut bento','Debut','Bento',200,'4x4',1,'http://localhost:4000/product_image-1677412972947.jpg','bento cake',0,'Strawberry','Circle','Icing','1','1'),(7,15890435,'Birthday bento 1','Anniversary','Bento',200,'6x2',1,'http://localhost:4000/product_image-1677590985590.jpg','Birthday bento',1,'Chocolate','Circle','N/A','1','1'),(8,18557139,'Bento','Birthday','Bento',200,'0',1,'http://localhost:4000/product_image-1677592343877.jpg','bento 1',0,'strawberry','circle','fondant','1','0'),(9,10826905,'Pig Cake','Anniversary','Bento',1500,'6x4',1,'http://localhost:4000/product_image-1677600487651.jpg','Pig designed Cake',1,'Strawberry','Circle','','',''),(10,12029932,'Gender Cake 1','Gender','Cakes',3000,'8x5',1,'http://localhost:4000/product_image-1677601022237.jpg','Gender Reveal Cake ',0,'Chocolate','','Drip','3','1'),(11,10974462,'Anniversary cupcake','Anniversary','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678299713473.jpg','Anniversary cupcake',0,'','','None','None','None'),(12,13198033,'Anniversary cupcake 2','Anniversary','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678299840802.jpg','Anniversary cupcake 2',0,'','','None','None','None'),(13,10697236,'Anniversary number cake ','Anniversary','Number',500,'',1,'http://localhost:4000/product_image-1678299900771.jpg','Anniversary number cake ',0,'','','','',''),(14,15070023,'Anniversary number cake 2','Anniversary','Number',450,'',1,'http://localhost:4000/product_image-1678300072119.jpg','Anniversary number cake 2',0,'','','None','None','None'),(15,15674029,'Anniversary number cake 3','Anniversary','Number',500,'',1,'http://localhost:4000/product_image-1678300104368.jpg','Anniversary number cake 3',0,'','','','',''),(16,15919614,'Anniversary number cake 4','Anniversary','Number',500,'',1,'http://localhost:4000/product_image-1678300339715.jpg','Anniversary number cake 4',0,'','','','',''),(17,10285763,'Anniversary number cake 5','Anniversary','Number',500,'',1,'http://localhost:4000/product_image-1678300375029.jpg','Anniversary number cake 5 ',0,'','','','',''),(18,18469339,'Birthday','Anniversary','Bento',200,'',1,'http://localhost:4000/product_image-1678300774195.jpg','Anniversary Bento cake 2',1,'','','','',''),(19,16160789,'Anniversary Bento cake 3','Anniversary','Bento',200,'',1,'http://localhost:4000/product_image-1678300793230.jpg','Anniversary Bento cake 3',0,'','','','',''),(20,15160527,'Anniversary Cake 2','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301017270.jpg','Anniversary Cake 2',0,'','','','',''),(21,10339787,'Anniversary cupcake 3','Anniversary','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678301237418.jpg','Anniversary cupcake 3',0,'','','None','None','None'),(22,10309764,'Anniversary Cake 3','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301340835.jpg','Anniversary Cake 3',0,'','','','',''),(23,12178005,'Anniversary Cake 4','Anniversary','Bento',1500,'',1,'http://localhost:4000/product_image-1678301365962.jpg','Anniversary Cake 4',1,'','','','',''),(24,17810351,'Anniversary Cake 5','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301384097.jpg','Anniversary Cake 5',0,'','','','',''),(25,13910202,'Anniversary Cake 4','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301409721.jpg','Anniversary Cake 4',0,'','','','',''),(26,10882770,'Anniversary Bento cake 2','Anniversary','Bento',200,'',1,'http://localhost:4000/product_image-1678301619137.jpg','Anniversary Bento cake 2',0,'','','','',''),(27,17392529,'Bento 2','Birthday','Bento',200,'',1,'http://localhost:4000/product_image-1678301814869.jpg','Birthday Bento cake 2',0,'','','','',''),(28,16884124,'Birthday Cake','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301865013.jpg','Birthday Cake ',0,'','','','',''),(29,17240797,'Birthday Cake 2','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301910224.jpg','Birthday cake 2 ',0,'','','','',''),(30,10342471,'Birthday Cake 3','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301951892.jpg','Birthday Cake 3',0,'','','','',''),(31,10351416,'Birthday Cake 4','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678301968563.jpg','Birthday Cake 4',0,'','','','',''),(32,10275834,'Birthday cupcake','Birthday','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678302096401.jpg','Birthday cupcake',0,'','','None','None','None'),(33,14826583,'Birthday cupcake 2','Birthday','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678302122658.jpg','Birthday cupcake 2',0,'','','None','None','None'),(34,18005745,'Birthday Number Cake 2','Birthday','Number',700,'',1,'http://localhost:4000/product_image-1678302179688.jpg','Birthday Number Cake 2',0,'','','None','None','None'),(35,12528071,'Birthday Number Cake 3','Birthday','Number',700,'',1,'http://localhost:4000/product_image-1678302199246.jpg','Birthday Number Cake 3',0,'','','None','None','None'),(36,11849096,'Birthday Number Cake 4','Birthday','Number',700,'',1,'http://localhost:4000/product_image-1678302239282.jpg','Birthday Number Cake 4',0,'','','None','None','None'),(37,17876514,'Character Bento 1','Character','Bento',200,'',1,'http://localhost:4000/product_image-1678302360083.jpg','Character Bento 1',0,'','','','',''),(38,10086041,'Character Bento 2','Character','Bento',200,'',1,'http://localhost:4000/product_image-1678302512889.jpg','Character Bento 2',0,'','','','',''),(39,13253539,'Character cake 2 ','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678302594722.jpg','Character cake ',0,'','','','',''),(40,12307606,'Character cake 3','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678302614430.jpg','Character cake',0,'','','','',''),(41,11517359,'Character cake 3','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678302634188.jpg','Character cake',0,'','','','',''),(42,16758869,'Character cake 4','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678302650192.jpg','Character cake',0,'','','','',''),(43,13055474,'Character cake 5','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678302668561.jpg','Character cake ',0,'','','','',''),(44,14412745,'Character cupcake 1','Character','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678302722822.jpg','Character cupcake',0,'','','None','None','None'),(45,12275728,'Character cupcake 2','Character','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678302746639.jpg','Character cupcake',0,'','','None','None','None'),(46,18161501,'Character number cake 1','Character','Number',700,'',1,'http://localhost:4000/product_image-1678302776904.jpg','Character number cake ',0,'','','None','None','None'),(47,13135887,'Character number cake 2','Character','Number',700,'',1,'http://localhost:4000/product_image-1678302797294.jpg','Character number cake ',0,'','','None','None','None'),(48,17407404,'Character number cake 3','Character','Number',700,'',1,'http://localhost:4000/product_image-1678302813928.jpg','Character number cake ',0,'','','None','None','None'),(49,15249634,'Character number cake 4','Character','Cakes',500,'',1,'http://localhost:4000/product_image-1678302835117.jpg','Character number cake ',1,'','','','',''),(50,16870781,'Character number cake 4','Character','Number',700,'',1,'http://localhost:4000/product_image-1678302974183.jpg','Character number cake ',0,'','','None','None','None'),(51,16542586,'Character number cake 5','Character','Number',700,'',1,'http://localhost:4000/product_image-1678302997790.jpg','Character number cake ',0,'','','None','None','None'),(52,12523417,'Christening Bento 1','Christening','Bento',200,'',1,'http://localhost:4000/product_image-1678303264773.jpg','Christening Bento',0,'','','None','None','None'),(53,11578387,'Christening Bento 2','Christening','Bento',200,'',1,'http://localhost:4000/product_image-1678303282707.jpg','Christening Bento',0,'','','None','None','None'),(54,10466325,'Christening Bento 3','Christening','Bento',200,'',1,'http://localhost:4000/product_image-1678303305008.jpg','Christening Bento',0,'','','None','None','None'),(55,10065349,'Christening Cake 1','Christening','Cakes',2000,'',1,'http://localhost:4000/product_image-1678304029197.jpg','Christening Cake',0,'','','','','2'),(56,16432082,'Christening Cake 2','Christening','Cakes',1700,'',1,'http://localhost:4000/product_image-1678304061477.jpg','Christening Cake',0,'','','','','2'),(57,15144604,'Christening Cake 3','Christening','Cakes',1700,'',1,'http://localhost:4000/product_image-1678304081593.jpg','Christening Cake',0,'','','','','2'),(58,10808735,'Christening cupcake 1','Christening','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304163412.jpg','Christening cupcake',0,'','','None','None','None'),(59,14699108,'Christening cupcake 2','Christening','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304181992.jpg','Christening cupcake',0,'','','None','None','None'),(60,16180155,'Christening cupcake 3','Christening','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304208781.jpg','Christening cupcake',0,'','','None','None','None'),(61,12632909,'Christening cupcake 4','Christening','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304227286.jpg','Christening cupcake',0,'','','None','None','None'),(62,11428836,'Christening number cake 1','Christening','Number',700,'',1,'http://localhost:4000/product_image-1678304287781.jpg','Christening number cake ',0,'','','None','None','None'),(63,13103091,'Christening number cake 2','Christening','Number',700,'',1,'http://localhost:4000/product_image-1678304302807.jpg','Christening number cake ',0,'','','None','None','None'),(64,18057599,'Christening number cake 3','Christening','Number',700,'',1,'http://localhost:4000/product_image-1678304327302.jpg','Christening number cake ',0,'','','None','None','None'),(65,13063006,'Christening number cake 4','Christening','Number',700,'',1,'http://localhost:4000/product_image-1678304346433.jpg','Christening number cake ',0,'','','None','None','None'),(66,13981610,'Christening number cake 5','Christening','Number',700,'',1,'http://localhost:4000/product_image-1678304363760.jpg','Christening number cake ',0,'','','None','None','None'),(67,11358462,'Debut bento 2','Debut','Bento',200,'',1,'http://localhost:4000/product_image-1678304408049.jpg','Debut bento',0,'','','','',''),(68,13430821,'Debut bento 3','Debut','Bento',200,'',1,'http://localhost:4000/product_image-1678304437555.jpg','Debut bento',0,'','','None','None','None'),(69,16381164,'Debut Cake','Debut','Cakes',1500,'',1,'http://localhost:4000/product_image-1678304463018.jpg','Debut Cake',0,'','','','','2'),(70,10246737,'Debut Cake 2','Debut','Cakes',2000,'',1,'http://localhost:4000/product_image-1678304596889.jpg','Debut Cake',0,'','','','',''),(71,18965178,'Debut Cake 3','Debut','Cakes',2000,'',1,'http://localhost:4000/product_image-1678304623355.jpg','Debut Cake',0,'','','','','2'),(72,10567617,'Debut cupcake','Debut','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304684926.jpg','Debut cupcake',0,'','','None','None','None'),(73,11587483,'Debut cupcake 2','Debut','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304744523.jpg','Debut cupcake',0,'','','None','None','None'),(74,11845453,'Debut cupcake 3','Debut','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304833434.jpg','Debut cupcake',0,'','','None','None','None'),(75,17001587,'Debut cupcake 4','Debut','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678304860914.jpg','Debut cupcake',0,'','','None','None','None'),(76,11167390,'Debut number cake','Debut','Number',700,'',1,'http://localhost:4000/product_image-1678304897084.jpg','Debut number cake',0,'','','None','None','None'),(77,17400266,'Debut number cake 2','Debut','Number',700,'',1,'http://localhost:4000/product_image-1678304920980.jpg','Debut number cake',0,'','','None','None','None'),(78,13797623,'Debut number cake 3','Debut','Number',700,'',1,'http://localhost:4000/product_image-1678304937783.jpg','Debut number cake',0,'','','None','None','None'),(79,12000545,'Debut number cake 4','Debut','Number',700,'',1,'http://localhost:4000/product_image-1678304953197.jpg','Debut number cake',0,'','','None','None','None'),(80,18788992,'Debut number cake 5','Debut','Number',700,'',1,'http://localhost:4000/product_image-1678304970455.jpg','Debut number cake',0,'','','None','None','None'),(81,15773262,'Gender Bento ','Gender','Bento',200,'',1,'http://localhost:4000/product_image-1678305015612.jpg','Gender Bento ',0,'','','None','None','None'),(82,10681925,'Gender Bento 2','Gender','Bento',200,'',1,'http://localhost:4000/product_image-1678305033073.jpg','Gender Bento ',0,'','','None','None','None'),(83,11657178,'Gender Bento 3','Gender','Bento',200,'',1,'http://localhost:4000/product_image-1678305072236.jpg','Gender Bento ',0,'','','None','None','None'),(84,15127323,'Gender Cake ','Gender','Cakes',1600,'',1,'http://localhost:4000/product_image-1678305108815.jpg','Gender Cake ',0,'','','','',''),(85,14670756,'Gender Cake 2','Gender','Cakes',1600,'',1,'http://localhost:4000/product_image-1678305126677.jpg','Gender Cake ',0,'','','','',''),(86,15644771,'Gender Cake 3','Gender','Cakes',1600,'',1,'http://localhost:4000/product_image-1678305168038.jpg','Gender Cake ',0,'','','','',''),(87,17040535,'Gender Cake 4','Gender','Cakes',1600,'',1,'http://localhost:4000/product_image-1678305185811.jpg','Gender Cake ',0,'','','','',''),(88,18868152,'Gender cupcakes','Gender','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305240693.jpg','Gender cupcake',0,'','','None','None','None'),(89,10439351,'Gender cupcakes 2','Gender','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305258883.jpg','Gender cupcakes',0,'','','None','None','None'),(90,10346216,'Gender cupcakes 3','Gender','Cupcakes',200,'',1,'http://localhost:4000/product_image-1678305274957.jpg','Gender cupcakes',0,'','','','',''),(91,10069996,'Gender cupcakes 4','Gender','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305305401.jpg','Gender cupcakes',0,'','','None','None','None'),(92,10833052,'Gender number cake ','Gender','Number',700,'',1,'http://localhost:4000/product_image-1678305329159.jpg','Gender number cake ',0,'','','None','None','None'),(93,10009326,'Gender number cake 2','Gender','Number',700,'',1,'http://localhost:4000/product_image-1678305351342.jpg','Gender number cake ',0,'','','None','None','None'),(94,16164245,'Gender number cake 3','Gender','Number',700,'',1,'http://localhost:4000/product_image-1678305368762.jpg','Gender number cake ',0,'','','None','None','None'),(95,16030072,'Gender number cake 4','Gender','Number',700,'',1,'http://localhost:4000/product_image-1678305385749.jpg','Gender number cake ',0,'','','None','None','None'),(96,13622522,'Wedding Bento','Wedding','Bento',200,'',1,'http://localhost:4000/product_image-1678305425876.jpg','Wedding Bento',0,'','','None','None','None'),(97,12775329,'Wedding Bento 2','Wedding','Bento',200,'',1,'http://localhost:4000/product_image-1678305443118.jpg','Wedding Bento',0,'','','None','None','None'),(98,17267989,'Wedding Cake','Wedding','Cakes',3500,'',1,'http://localhost:4000/product_image-1678305485125.jpg','Wedding Cake',0,'','','','','2'),(99,18335706,'Wedding Cake 2','Wedding','Cakes',3500,'',1,'http://localhost:4000/product_image-1678305543624.jpg','Wedding Cake',0,'','','','','2'),(100,14750003,'Wedding Cake 3','Wedding','Cakes',3500,'',1,'http://localhost:4000/product_image-1678305560355.jpg','Wedding Cake',0,'','','','','2'),(101,17504010,'Wedding cupcake','Wedding','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305583054.jpg','Wedding cupcake',0,'','','None','None','None'),(102,14181489,'Wedding cupcake 2','Wedding','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305600788.jpg','Wedding cupcake',0,'','','None','None','None'),(103,11372280,'Wedding cupcake 3','Wedding','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305615356.jpg','Wedding cupcake',0,'','','None','None','None'),(104,17466621,'Wedding cupcake 4','Wedding','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678305641979.jpg','Wedding cupcake',0,'','','None','None','None'),(105,18286596,'Wedding number cake ','Wedding','Number',700,'',1,'http://localhost:4000/product_image-1678305667379.jpg','Wedding number cake ',0,'','','None','None','None'),(106,11091441,'Wedding number cake 2','Wedding','Number',700,'',1,'http://localhost:4000/product_image-1678305685953.jpg','Wedding number cake ',0,'','','None','None','None'),(107,10313602,'Wedding number cake 3','Wedding','Number',700,'',1,'http://localhost:4000/product_image-1678305704797.jpg','Wedding number cake ',0,'','','None','None','None'),(108,11206646,'Wedding number cake 4','Wedding','Number',700,'',1,'http://localhost:4000/product_image-1678305728351.jpg','Wedding number cake ',0,'','','None','None','None'),(109,18418969,'Debut Cake 1','Debut','Cakes',2000,'',1,'http://localhost:4000/product_image-1678334564701.jpeg','debut',0,'Vanilla','circle','fondant','1',''),(110,13523579,'Birthday','Birthday','Cakes',3500,'',1,'http://localhost:4000/product_image-1678334681751.jpeg','birthday',0,'chocolate','circle','','1','1'),(111,14625132,'Birthday Cake 3','Birthday','Cakes',3000,'',1,'http://localhost:4000/product_image-1678334780902.jpeg','Birthday',0,'','','None','None','None'),(112,17429271,'Bento 3','Birthday','Bento',200,'',1,'http://localhost:4000/product_image-1678362232759.jpg','Bento cake ',0,'','','None','None','None'),(113,15209289,'Bento 4','Birthday','Bento',200,'',1,'http://localhost:4000/product_image-1678362268645.jpg','Bento cake ',1,'','','None','None','None'),(114,15561960,'Birthday Cake 5','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362466552.jpg','Birthday Cake',0,'','','','',''),(115,11661504,'Birthday Cake 6','Birthday','Cakes',1498,'',1,'http://localhost:4000/product_image-1678362487267.jpg','Birthday Cake',0,'','','','',''),(116,15169268,'Birthday Cake 7','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362513041.jpg','Birthday Cake',0,'','','','',''),(117,16434081,'Birthday Cake 8','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362532717.jpg','Birthday Cake',0,'','','','',''),(118,14045334,'Birthday Cake 9','Birthday','Cakes',1999,'',1,'http://localhost:4000/product_image-1678362558769.jpg','Birthday Cake',0,'','','','','2'),(119,12058686,'Birthday Cake 10','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362720874.jpg','Birthday Cake',0,'','','','',''),(120,15467297,'Birthday Cake 11','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362754200.jpg','Birthday Cake',0,'','','','',''),(121,16637178,'Birthday Cake 12','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362780666.jpg','Birthday Cake',0,'','','','',''),(122,16715022,'Birthday Cake 13','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362801632.jpg','Birthday Cake',0,'','','','',''),(123,15578159,'Birthday Cake 14','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362834061.jpg','Birthday Cake',0,'','','','',''),(124,14402456,'Christening Cake 4','Christening','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362936606.jpg','Christening Cake 3',0,'','','','',''),(125,13821175,'Character cake 6','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678362999542.jpg','Character cake',0,'','','','',''),(126,17445667,'Character cake 7','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363023402.jpg','Character cake',0,'','','','',''),(127,14478442,'Character cake 7','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363023806.jpg','Character cake',0,'','','','',''),(128,12036840,'Character cake 8','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363042830.jpg','Character cake',1,'','','','',''),(129,14987316,'Character cake 8','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363078488.jpg','Character cake',0,'','','','',''),(130,12158593,'Character cake 9','Character','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363152777.jpg','Character cake',0,'','','','',''),(131,18391359,'Anniversary Bento cake 4','Anniversary','Bento',200,'',1,'http://localhost:4000/product_image-1678363242573.jpg','Anniversary Bento cake',0,'','','None','None','None'),(132,12853795,'Anniversary Cake 6','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363278270.jpg','Anniversary Cake',0,'','','','',''),(133,14595215,'Anniversary Cake 7','Anniversary','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363307071.jpg','Anniversary Cake',0,'','','','',''),(134,11567128,'Anniversary cupcake 4','Anniversary','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678363343427.jpg','Anniversary cupcake',0,'','','None','None','None'),(135,12693302,'Anniversary Bento cake 5','Anniversary','Bento',200,'',1,'http://localhost:4000/product_image-1678363393586.jpg','Anniversary Bento cake',0,'','','None','None','None'),(136,18700994,'Bento 4','Birthday','Bento',200,'',1,'http://localhost:4000/product_image-1678363423076.jpg','Bento cake',0,'','','None','None','None'),(137,17842934,'Character Bento 3','Character','Bento',200,'',1,'http://localhost:4000/product_image-1678363475455.jpg','Character Bento ',0,'','','None','None','None'),(138,11346320,'Birthday Cake 15','Anniversary','Bento',1500,'',1,'http://localhost:4000/product_image-1678363527230.jpg','Birthday Cake',1,'','','','',''),(139,10739934,'Birthday Cake 15','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363604077.jpg','Birthday Cake',0,'','','','',''),(140,14299417,'Birthday Cake 16','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363619963.jpg','Birthday Cake',0,'','','','',''),(141,11991558,'Birthday Cake 17','Birthday','Cakes',1500,'',1,'http://localhost:4000/product_image-1678363652813.jpg','Birthday Cake',0,'','','','',''),(142,16372995,'Anniversary cupcake 5','Anniversary','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678363695818.jpg','Anniversary cupcake',0,'','','None','None','None'),(143,13556557,'Birthday cupcake 3','Birthday','Cupcakes',200,'',1,'http://localhost:4000/product_image-1678363735850.jpg','Birthday cupcake',0,'','','','',''),(144,10494000,'Birthday cupcake 4','Birthday','Cupcakes',250,'',1,'http://localhost:4000/product_image-1678363758540.jpg','Birthday cupcake',0,'','','None','None','None'),(145,14250125,'Debut Cake 5','Anniversary','Bento',2000,'',1,'http://localhost:4000/product_image-1678363797841.jpg','Debut Cake',1,'','','','',''),(146,12332465,'Debut Cake 5','Debut','Cakes',2000,'',1,'http://localhost:4000/product_image-1678363833863.jpg','Debut Cake',0,'','','','',''),(147,15329580,'Gender Cake 5','Gender','Cakes',1600,'',1,'http://localhost:4000/product_image-1678363892989.jpg','Gender Cake',0,'','','','',''),(148,16337670,'Wedding Cake 4','Wedding','Cakes',4000,'',1,'http://localhost:4000/product_image-1678364048547.jpg','Wedding Cake',0,'','','','','3'),(149,16455954,'Wedding Cake 5','Wedding','Cakes',3300,'',1,'http://localhost:4000/product_image-1678364077429.jpg','Wedding Cake',0,'','','','','3'),(150,17733464,'Wedding Cake 6','Wedding','Cakes',2500,'',1,'http://localhost:4000/product_image-1678364128597.jpg','Wedding Cake',0,'','','','','2'),(151,14003994,'Wedding Cake 7','Wedding','Cakes',6000,'',1,'http://localhost:4000/product_image-1678364177580.jpg','Wedding Cake',0,'','','','','4');
/*!40000 ALTER TABLE `producttbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservationtbl`
--

DROP TABLE IF EXISTS `reservationtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservationtbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pickupdate` varchar(50) NOT NULL,
  `pickuptime` varchar(10) NOT NULL,
  `image` varchar(250) NOT NULL,
  `size` varchar(20) NOT NULL,
  `flavor` varchar(25) NOT NULL,
  `icing` varchar(25) NOT NULL,
  `specialrequest` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `placeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservationtbl`
--

LOCK TABLES `reservationtbl` WRITE;
/*!40000 ALTER TABLE `reservationtbl` DISABLE KEYS */;
INSERT INTO `reservationtbl` VALUES (1,13268923,'Abby','Abi','111 123, 444, cavite','333','bjpogs26@gmail.com','2023-03-10','10:00 AM','http://luzzysupremesweets.shop/image-1677421256434.jfif','6x2 inch','Ube','Butter Cream','',1500,'2023-02-26 18:15:22'),(2,14420704,'Alexes','Sangilan','123 13314, 12345, 142','09312587214','alexes.sangilan@cvsu.edu.ph','2023-03-11','11:00 AM','http://localhost:4000/image-1677761211946.jpg','6x2|600','Ube','Fondant','ll',0,'2023-03-02 12:46:51'),(3,10735402,'Hitohito','Tadano','asd asd, asd, asd','123','asd@asd.asd','2023-03-23','04:00 PM','http://localhost:4000/image-1678174128735.png','8x5 inch, 2tier','Mango','Fondant','remove nuts',0,'2023-03-07 07:28:48'),(4,16632510,'Alexes','Sangilan','123 13314, 12345, 142','09312587214','alexes.sangilan@cvsu.edu.ph','2023-03-11','02:00 PM','http://localhost:4000/image-1678182938913.jpeg','6x2|600','Ube','Fondant','hh',0,'2023-03-07 09:55:39'),(5,16349721,'Alexes','Sangilan','123 13314, 12345, 142','09312587214','alexes.sangilan@cvsu.edu.ph','2023-03-09','10:00 AM','http://localhost:4000/image-1678334064693.jpeg','6x2|600','Ube','Butter Cream','no',300,'2023-03-09 03:55:07'),(6,16432642,'Alexes','Sangilan','123 13314, 12345, 142','09312587214','alexes.sangilan@cvsu.edu.ph','2023-03-18','10:00 AM','http://localhost:4000/image-1678334218832.jpeg','6x2|600','Ube','Butter Cream','ggg',0,'2023-03-09 03:56:58');
/*!40000 ALTER TABLE `reservationtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selecttbl`
--

DROP TABLE IF EXISTS `selecttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selecttbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selecttbl`
--

LOCK TABLES `selecttbl` WRITE;
/*!40000 ALTER TABLE `selecttbl` DISABLE KEYS */;
INSERT INTO `selecttbl` VALUES (52,'size','6x2',600,''),(54,'size','6x4',1000,''),(55,'flavor','Ube',0,'#8878c3'),(57,'flavor','Vanilla Caramel',0,'#feffa5'),(60,'layer','1',0,''),(61,'layer','2',500,''),(63,'topper','number',50,''),(64,'topper','number - double',100,''),(72,'topper','Anniversary',100,'http://localhost:4000/image-1677428537662.png'),(73,'topper','Birthday',100,'http://localhost:4000/image-1677428590237.png'),(74,'topper','Debut',100,'http://localhost:4000/image-1677428615273.png'),(75,'topper','Christening',100,'http://localhost:4000/image-1677428644620.png'),(76,'topper','Gender',100,'http://localhost:4000/image-1677428667800.png'),(77,'topper','Gender - Boy',100,'http://localhost:4000/image-1677428684507.png'),(78,'topper','Gender - Girl',100,'http://localhost:4000/image-1677428706170.png'),(100,'size','7x3',1200,''),(101,'size','8x3',1400,''),(106,'flavor','Mango',0,'#FFBF34'),(108,'flavor','Pandan',0,'#A9DE81'),(113,'topper-number','0',0,'http://localhost:4000/image-1677429301100.png'),(114,'topper-number','1',0,'http://localhost:4000/image-1677429319782.png'),(115,'topper-number','2',0,'http://localhost:4000/image-1677429336289.png'),(116,'topper-number','3',0,'http://localhost:4000/image-1677429355743.png'),(117,'topper-number','4',0,'http://localhost:4000/image-1677429372026.png'),(118,'topper-number','5',0,'http://localhost:4000/image-1677429387405.png'),(119,'topper-number','6',0,'http://localhost:4000/image-1677429403113.png'),(120,'topper-number','7',0,'http://localhost:4000/image-1677429419807.png'),(121,'topper-number','8',0,'http://localhost:4000/image-1677429438962.png'),(122,'topper-number','9',0,'http://localhost:4000/image-1677429458175.png'),(137,'design','Strawberry with sprinkles',0,'http://localhost:4000/image-1678854529673.png'),(139,'design','Strawberry Drip',0,'http://localhost:4000/image-1678854906069.png'),(140,'design','Chocolate Drip',0,'http://localhost:4000/image-1678855171388.png'),(141,'design','Chocolate with Sprinkles',0,'http://localhost:4000/image-1678855462649.png'),(144,'design','Dark Choco with Sprinkles',0,'http://localhost:4000/image-1678857402659.png'),(145,'design','Dark Choco Drip',0,'http://localhost:4000/image-1678857593376.png'),(146,'design','Macha Drip',0,'http://localhost:4000/image-1678858726748.png'),(147,'design','Macha with Sprinkles',0,'http://localhost:4000/image-1678859392009.png'),(150,'flavor','Strawberry',0,'#fb7ec7'),(151,'flavor','Macha',0,'#53b34d');
/*!40000 ALTER TABLE `selecttbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statustbl`
--

DROP TABLE IF EXISTS `statustbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statustbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(15) NOT NULL,
  `statcategory` varchar(45) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statustbl`
--

LOCK TABLES `statustbl` WRITE;
/*!40000 ALTER TABLE `statustbl` DISABLE KEYS */;
INSERT INTO `statustbl` VALUES (1,18220923,123123123,'Cancelled','Shop'),(2,13268923,123123123,'For Pick Up','Reservation'),(3,17162714,123123123,'For Pick Up','Build a Cake'),(4,11089950,123123123,'For Pick Up','Shop'),(5,13649894,18692872,'Pending','Build a Cake'),(6,14260414,12560604,'Pending','Build a Cake'),(7,16722555,12560604,'Pending','Build a Cake'),(8,17560622,12560604,'Pending','Build a Cake'),(9,12041601,12560604,'Pending','Shop'),(10,14420704,12560604,'Pending','Reservation'),(11,12166911,18947577,'Pending','Build a Cake'),(12,17714382,12560604,'Pending','Shop'),(13,14026931,12560604,'Pending','Shop'),(14,18392139,18947577,'Pending','Shop'),(15,14314579,18947577,'Pending','Shop'),(16,10735402,18947577,'Pending','Reservation'),(17,12007083,12560604,'Pending','Build a Cake'),(18,14783057,12560604,'Pending','Shop'),(19,17140271,12560604,'Pending','Shop'),(20,16632510,12560604,'Pending','Reservation'),(21,12683541,12560604,'Pending','Build a Cake'),(22,17675092,12560604,'Pending','Build a Cake'),(23,11917085,12560604,'Pending','Shop'),(24,16754514,18947577,'Pending','Build a Cake'),(25,18369474,12560604,'Pending','Shop'),(26,15819581,12560604,'Pending','Build a Cake'),(27,14983807,12560604,'Pending','Build a Cake'),(28,16349721,12560604,'For Pick Up','Reservation'),(29,16432642,12560604,'Pending','Reservation'),(30,15767604,12560604,'Completed','Shop'),(31,15384071,12560604,'Pending','Shop'),(32,11245756,12560604,'Pending','Build a Cake'),(33,16090282,12560604,'Pending','Build a Cake'),(34,11899825,12560604,'Completed','Shop'),(35,16957207,12560604,'Pending','Build a Cake'),(36,13964069,12560604,'Pending','Build a Cake'),(37,14040402,12560604,'For Pick Up','Shop'),(38,14994582,12560604,'Cancelled','Shop'),(39,16527636,12560604,'Pending','Build a Cake'),(40,10523642,12560604,'Pending','Build a Cake'),(41,18353193,12560604,'Pending','Build a Cake'),(42,16753710,12560604,'Pending','Build a Cake'),(43,11511056,12560604,'For Pick Up','Build a Cake'),(44,14846511,12560604,'Pending','Shop'),(45,16308149,12560604,'Pending','Shop'),(46,10614010,12560604,'Pending','Shop'),(47,14811974,12560604,'Pending','Shop'),(48,18333334,12560604,'Completed','Shop'),(49,18625274,12560604,'Pending','Shop'),(50,14189001,12560604,'Pending','Shop'),(51,12770846,12560604,'For Pick Up','Shop'),(52,16680295,12560604,'Completed','Build a Cake'),(53,16835868,12560604,'Pending','Shop'),(54,14448366,12560604,'Pending','Shop'),(55,13140604,12560604,'Pending','Shop'),(56,18528287,12560604,'Pending','Shop'),(57,13178948,12560604,'Pending','Shop');
/*!40000 ALTER TABLE `statustbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfotbl`
--

DROP TABLE IF EXISTS `userinfotbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfotbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `add_house` varchar(250) NOT NULL,
  `add_brgy` varchar(250) NOT NULL,
  `add_city` varchar(250) NOT NULL,
  `add_province` varchar(250) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfotbl`
--

LOCK TABLES `userinfotbl` WRITE;
/*!40000 ALTER TABLE `userinfotbl` DISABLE KEYS */;
INSERT INTO `userinfotbl` VALUES (1,202200001,'luzzy','','luzzy','01/01/2003','123123','mulawin','tanza','Cavite','09150215630','meatloafcornbeef@gmail.com'),(2,123123123,'Abby','','Abi','12/25/2005','111','123','444','cavite','333','bjpogs26@gmail.com'),(3,12646981,'Chika','','Fujiwara','2015-01-14','no','no','no','no','123123123','chika.fujiwara@gmail.com'),(4,16026877,'Urushi','','Yaotome','2005-12-01','asd','asd','asd','asd','123123','ariel.atienzajr@cvsu.edu.ph'),(5,18903911,'Sunako','','Nakahara','1999-01-23','a','a','a','a','123','gingerpogs26@gmail.com'),(6,18692872,'test','wkwkwwk','test','1998-03-02','test','test','test','test','09665325155','latothegee@gmail.com'),(7,12560604,'Alexes','A','Sangilan','1998-01-22','123','13314','12345','142','09312587214','alexes.sangilan@cvsu.edu.ph'),(8,13105198,'MARGIE','VILLAMATER','DELFINO','2023-01-24','12345','Malainen ','NAIC','CAVITE','12345678910','margiedelfino67@gmail.com'),(9,15675220,'Jeffrey','','Delgado','1991-07-07','26','Paradahan I','Tanza','Cavite','09171741232','jeffrey.delgado@cvsu.edu.ph'),(10,11651565,'ako','yes','daw','2000-12-01','1','3','4','5','9667054871','josephsabaybay@gmail.com'),(11,10553872,'fds','','fds','0566-08-09','53425','fds','gf','gfsg','32542534','ewrew@fd'),(12,18836538,'johnpaul','Piliin','De torres','1995-06-12','blk1','paradahan','tanza','cavite','09159501408','jpdetorres23@gmail.com'),(13,12546772,'ala','qq','ala','2023-01-21','123','456','tanza','cavite','009833','shgsygs.@yahoo.o'),(14,15998511,'alexes','','sangilan','2000-12-09','123','456','123','cavite','999349788','meatloafcornbeef@gmail.com'),(15,17412996,'wafwafw','wfwf','wfwfwfw','1999-05-02','wakmfwawa waf','awfwafw','afwafwaf','awfwaf','09665325155','latothegee@gmail.com'),(16,18603956,'Mel','D','Papa','1998-09-21','1','Pk2','Gen Trias','Cavite','09096006007','melskie@gmail.com'),(17,17203152,'reg','reg','reg','2000-03-02','2000','bagtas','tanza','cavite','09665325155','alexes.sangilan@cvsu.edu.ph'),(18,18947577,'Hitohito','asd','Tadano','2023-02-15','asd','asd','asd','asd','123','asd@asd.asd');
/*!40000 ALTER TABLE `userinfotbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `usercategory` int NOT NULL,
  PRIMARY KEY (`num`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertbl`
--

LOCK TABLES `usertbl` WRITE;
/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` VALUES (2,202200001,'adminluzzy','$2a$10$mxFvDEzukzFOHPRPI9ISa.TTUWWSfsLZgp15cS.AQpYTyXXzn9WOu',123),(4,123123123,'test','$2a$10$S0MYXTtOXssSIh081q4WWufu5Sm5mXHQ6457kU0t1ptHobumDOhPu',0),(16,12646981,'test1','$2a$10$BYk6dVFDUo34V6jO1CaeiO2EvGJ0OqCHtK0oy4rsI94O6jhHjPtcm',0),(17,16026877,'bjpogs','$2a$10$ZmyQ.FB4w2/d0/efxxPecu/U.UhzHuKVAxlWFVZu/DDGwwRrRVkfK',123),(18,18903911,'bjpogs1','$2a$10$5gtNjIJfreKf3V//Jsb82uMjod0DJhb1QN6ZK0QPZsmQDXWRpmLZi',0),(19,18692872,'slopack123sx','$2a$10$UPMfAtCU6We7MZCk.ZU9M.9NxuvvYD18iGG.GX63JTCY3ygxdyZ06',0),(20,12560604,'Alex','$2a$10$witfLgLdzgDe5eXj4wsRleElTH7iJ9ww27ZRGR96rcDPiqYHPhNTe',0),(21,13105198,'margiedelfino','$2a$10$JxJPhQxQfE9S2zgo9Q1opeoq6x01B/p./GphLWmxtkSzthMWp3V1S',0),(22,15675220,'freyde','$2a$10$T7rzbhuXOfap1ngOYXIdtehCVZOfhtq0h3kIyERTT/79caP6OjjVi',0),(23,11651565,'makulit','$2a$10$XQwctMIFe3ut1.Fwa73cuOmzx6g2GU5sS8XkJfoAfOSyRh5FhhGbe',0),(24,10553872,'12345','$2a$10$bzI0YGfxl/xqP5PqCesstua539yacOe3fW7nOYIkyxUpmsaNfsrwS',0),(25,18836538,'jpdetorres','$2a$10$AvoXvjCXpm6gYbM8DSbL3uKyJol9gJA1gnlBadfUKXG7g3a9b66xy',0),(26,12546772,'qqq','$2a$10$M4M/KUBSTwVbmLiGEusfIepuhh5otmgJPs1X97RLF5V7h5qM8FXli',0),(28,15998511,'alexees','$2a$10$GzZVgFIGuAHJsdWRQuPqWeijAwXXwr8lQ191NCX6zGB1Vm0EwYtMK',0),(30,17412996,'slopack123s','$2a$10$ta1sUWUP52Gy9sWX/h.mJOsSgc.wqMFeWvj6G5ITyHlL2pQccLVGq',0),(31,18603956,'Melskie','$2a$10$QNYnlcBJiALYrR8QizEONuj1hda4N0LNOv6pFyWqaHnGHHVjooMNu',0),(32,17203152,'regis','$2a$10$/j3ooXffS7HuWG5syWIbouwpxjVTHPIfvhbA8Rg.9PAOirYFDMDay',0),(33,18947577,'asd','$2a$10$uEO1Xsh5YQHMev4gYa00neNjMLkbtvWeYsPSKwCCYRkn6NkFXgROq',0);
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-19 16:21:33
