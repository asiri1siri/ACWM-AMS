-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: acwm
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `application_information`
--

DROP TABLE IF EXISTS `application_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_information` (
  `UID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ACRONYMN` varchar(16) DEFAULT NULL,
  `BUREAU_CODE` varchar(5) NOT NULL,
  `DIVISION_CODE` varchar(5) NOT NULL,
  `STATUS` varchar(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_information`
--

LOCK TABLES `application_information` WRITE;
/*!40000 ALTER TABLE `application_information` DISABLE KEYS */;
INSERT INTO `application_information` VALUES ('13347394-82b3-11e7-b36c-005056a5b2f3','INVENTORY','INVENTORY_DA','','','A'),('a83d9728-82c1-11e7-b36c-005056a5b2f3','ICS','ICS_APPLICATION','','','A'),('ea88d656-82c1-11e7-b36c-005056a5b2f3','ICS BUD','ICS_APPLICATIONB','','','A');
/*!40000 ALTER TABLE `application_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_information_lists`
--

DROP TABLE IF EXISTS `application_information_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_information_lists` (
  `APP_UID` varchar(255) DEFAULT NULL,
  `UID` varchar(255) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `KLAVEM` varchar(64) DEFAULT NULL,
  `VALUE` varchar(64) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='KLAVEM column = KEY, taken from the latin CLAVEN meaning key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_information_lists`
--

LOCK TABLES `application_information_lists` WRITE;
/*!40000 ALTER TABLE `application_information_lists` DISABLE KEYS */;
INSERT INTO `application_information_lists` VALUES ('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3','cbbfb894-1c1c-11e8-92d4-005056a5b2f3','FISCAL_YEAR',NULL,'2018','A'),('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3','ca7c0c7a-82c1-11e7-b36c-005056a5b2f3','FISCAL_YEAR',NULL,'2017','A'),('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3','cbbfbb8c-1c1c-11e8-92d4-005056a5b2f3','FISCAL_YEAR',NULL,'2016','A'),('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3','ca7c0c7a-82c1-11e7-b36c-005056a5b2f3','FISCAL_YEAR',NULL,'2015','A');
/*!40000 ALTER TABLE `application_information_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_roles`
--

DROP TABLE IF EXISTS `application_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_roles` (
  `UID` varchar(255) DEFAULT NULL,
  `APPLICATION_UID` varchar(255) DEFAULT NULL,
  `ROLE_UID` varchar(255) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_roles`
--

LOCK TABLES `application_roles` WRITE;
/*!40000 ALTER TABLE `application_roles` DISABLE KEYS */;
INSERT INTO `application_roles` VALUES ('8a70063e-82c3-11e7-b36c-005056a5b2f3','13347394-82b3-11e7-b36c-005056a5b2f3','43cdc4c6-7d1b-11e7-b36c-005056a5b2f3','A'),('8a700d28-82c3-11e7-b36c-005056a5b2f3','13347394-82b3-11e7-b36c-005056a5b2f3','25c3e548-fbc2-11e7-92d4-005056a5b2f3','A'),('8a6ffeb4-82c3-11e7-b36c-005056a5b2f3','13347394-82b3-11e7-b36c-005056a5b2f3','59a6ceaa-7d1b-11e7-b36c-005056a5b2f3','A'),('8a6ffeb4-82c3-11e7-b36c-005056a5b2f3','13347394-82b3-11e7-b36c-005056a5b2f3','5e72c1dc-7d1b-11e7-b36c-005056a5b2f3','A'),('8a6ffc8e-82c3-11e7-b36c-005056a5b2f3','13347394-82b3-11e7-b36c-005056a5b2f3','43cdc4c6-7d1b-11e7-b36c-005056a5b2f3','A');
/*!40000 ALTER TABLE `application_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset` (
  `GUID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION` varchar(255) NOT NULL,
  `ASSIGNEE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `MAKE` varchar(255) NOT NULL,
  `MODEL` varchar(255) NOT NULL,
  `SERIALNO` varchar(255) NOT NULL,
  `COUNTYNO` int(11) NOT NULL,
  `ACDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `COST` varchar(255) NOT NULL,
  `COMMENTS` varchar(255) NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `CATEGORY` varchar(255) NOT NULL,
  `BINVENT` int(11) NOT NULL,
  `SUBLOCATION` varchar(255) NOT NULL,
  `BUREAU` varchar(255) NOT NULL,
  `ASSET_IMAGE` varchar(255) DEFAULT NULL,
  `LOCATION_IMAGE` varchar(255) DEFAULT NULL,
  `ASSIGNEE_IMAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (1,'Olive View','Unassigned','black','Chevy','black','123456',65432,'2019-01-29 19:34:50','111456','N/A','F','Trailer',18742,'N/A','ADMIN','assetImages/iPhone.jpg','locationImages/warehousebuildings.jpg','employeeImages/22610.jpg'),(2,'Metro Office','Unassigned','Blue','Nissan','Blue','1234dws',65432,'2019-01-30 03:34:50','$221,456.00','ecx','P','Trailer3',18740,'N/A','USER','assetImages/385.png','locationImages/warehousebuildings.jpg','employeeImages/_WVkn2guvm.jpg'),(7,'South Gate','Unassigned','Red','Ford','F150','1JIJH56',65432,'2019-01-29 19:34:50','26543.00','N/A','F','Trailer',18740,'N/A','Admin',NULL,NULL,NULL),(65,'Metro Office','Unassigned','Black','Ford ','Black','456789',345,'2019-04-22 07:27:00','$6,780.00','N/A','F','trailer',18732,'N/A','ADMIN','assetImages/12468.jpg','locationImages/warehousebuildings.jpg','employeeImages/7.jpg'),(68,'Metro Office','Unassigned','fasfag','Nissan','fasfag','123456789',65432,'2019-04-24 20:02:26','$221,456.00','qgsf','F','1234',18732,'N/A','ADMIN','assetImages/Warehouse-building-300x200.jpg','locationImages/warehousebuildings.jpg','employeeImages/Warehouse-building-300x200.jpg'),(69,'South Gate','Unassigned','fasfqwr','Ford','Colorado','3141423',65432,'2019-04-24 20:03:32','111456','zsbsbdf','P','asdf',18732,'12','ADMIN',NULL,NULL,NULL),(70,'Arcadia','1234','1234','aaazzppp','black','123456',65432,'2019-04-29 05:12:46','111456','N/A','P','Trailer',18732,'1','ADMIN','assetImages/12468.jpg','locationImages/636572239380824718-AP18077840160536.jpg','employeeImages/iPhone.jpg'),(71,'Arcadia','Unassigned','black','asf','black','123456',65432,'2019-04-29 05:44:07','111456','N/A','F','1234',18732,'1','ADMIN','assetImages/12.jpg','locationImages/12.jpg','employeeImages/12.jpg'),(72,'Arcadia','Unassigned','black','Chevy','1234','123456',65432,'2019-04-29 18:16:17','111456','N/A','F','asdf',18740,'1','ADMIN','assetImages/385.png','locationImages/385.png','employeeImages/385.png'),(73,'Arcadia','Unassigned','1234','Chevy','1234','123456',65432,'2019-04-29 18:42:57','111456','N/A','F','1234',18732,'1','ADMIN','assetImages/385.png','locationImages/12468.jpg','employeeImages/iPhone.jpg');
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_invent_unitcodes`
--

DROP TABLE IF EXISTS `b_invent_unitcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_invent_unitcodes` (
  `B_INVENT_UNITCODE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_invent_unitcodes`
--

LOCK TABLES `b_invent_unitcodes` WRITE;
/*!40000 ALTER TABLE `b_invent_unitcodes` DISABLE KEYS */;
INSERT INTO `b_invent_unitcodes` VALUES (18732),(18740),(18742),(18743),(17777),(19999);
/*!40000 ALTER TABLE `b_invent_unitcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bureaus`
--

DROP TABLE IF EXISTS `bureaus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bureaus` (
  `BUREAU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bureaus`
--

LOCK TABLES `bureaus` WRITE;
/*!40000 ALTER TABLE `bureaus` DISABLE KEYS */;
INSERT INTO `bureaus` VALUES ('ADMIN'),('USER'),('MANAGER');
/*!40000 ALTER TABLE `bureaus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer`
--

DROP TABLE IF EXISTS `computer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computer` (
  `GUID` int(11) NOT NULL AUTO_INCREMENT,
  `ASSIGNEE` varchar(255) NOT NULL,
  `ITEM_TYPE` varchar(255) NOT NULL,
  `SERIAL_NO` bigint(20) NOT NULL,
  `MODEL` varchar(255) NOT NULL,
  `MAKE` varchar(255) NOT NULL,
  `CPU_TYPE` varchar(255) NOT NULL,
  `CPU_SPEED` varchar(255) NOT NULL,
  `RAM` varchar(255) NOT NULL,
  `HARD_DRIVE` varchar(255) NOT NULL,
  `COMMENTS` varchar(255) NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `COUNTY_NO` int(11) NOT NULL,
  `MAP_LOCATION` varchar(255) NOT NULL,
  `WORK_SITE` varchar(255) NOT NULL,
  `BUREAU` varchar(255) NOT NULL,
  `DIVISION` varchar(255) NOT NULL,
  `PROGRAM` varchar(255) NOT NULL,
  `UNIT_CODE` int(11) NOT NULL,
  `ACQ_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_MOVE_DATE` timestamp NULL DEFAULT NULL,
  `ASSIGNEE_IMAGE` varchar(255) NOT NULL,
  `ITEM_IMAGE` varchar(255) NOT NULL,
  `LOCATION_IMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=56814 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer`
--

LOCK TABLES `computer` WRITE;
/*!40000 ALTER TABLE `computer` DISABLE KEYS */;
INSERT INTO `computer` VALUES (56797,'AAA','appp',5432,'azPPP','aaazzppp','azzPPPP','azz','azdds','az','a','P',432,'Arcadia Hq','az','ADMIN','azzz','azzzsdfsfgdgdfg',18743,'2019-04-17 07:51:40','2019-04-22 06:57:29','employeeImages/7.jpg','assetImages/iPhone.jpg','locationImages/warehousebuildings.jpg'),(56798,'qQQQss','q',1234554,'aq','q','qsss','q','q','q','q','P',890,'Arcadia Hq','q','USER','q','q',18743,'2019-04-17 09:37:31','2019-04-22 04:22:26','employeeImages/_WVkn2guvm.jpg','assetImages/12.jpg','locationImages/warehousebuildings.jpg'),(56799,'dd','dd',43454321,'d','dd','d','d','d','d','d','F',3244,'South Gate','d','ADMIN','d','d',18743,'2019-04-20 09:38:05','2019-04-22 04:22:04','employeeImages/22610.jpg','assetImages/12468.jpg','locationImages/Warehouse-building-300x200.jpg'),(56800,'Unassigned','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','P',1234,'Arcadia','az','ADMIN','azzz','azerty',18743,'2019-04-26 23:30:46',NULL,'employeeImages/1.jpg','assetImages/iPhone.jpg','locationImages/Warehouse-building-300x200.jpg'),(56801,'Unassigned','q',1234,'Silverado','Chevy','qsss','azz','azd','az','N/A','P',2345,'Metro Office','q','ADMIN','azz','azhsdffds',18743,'2019-04-26 23:46:04',NULL,'employeeImages/4.jpg','assetImages/iPhone.jpg','locationImages/Warehouse-building-300x200.jpg'),(56802,'Unassigned','q',3456,'1234','Nissan','qsss','azz','q','az','1234','P',3456,'Arcadia Hq','q','ADMIN','azzz','azerty',18743,'2019-04-27 00:15:39',NULL,'employeeImages/16.jpg','assetImages/iPhone.jpg','locationImages/Warehouse-building-300x200.jpg'),(56803,'Unassigned','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','F',1234,'Arcadia Hq','az','ADMIN','q','azh',18743,'2019-04-27 00:17:04',NULL,'employeeImages/22610.jpg','assetImages/iPhone.jpg','locationImages/warehousebuildings.jpg'),(56804,'1234','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','F',1234,'Arcadia','q','ADMIN','azz','azha',18743,'2019-04-27 00:18:53',NULL,'employeeImages/7.jpg','assetImages/iPhone.jpg','locationImages/Warehouse-building-300x200.jpg'),(56805,'Unassigned','appp',5432,'black','Nissan','qsss','azz','az','q','1234','F',432,'Arcadia','q','ADMIN','q','azha',18743,'2019-04-27 00:20:46',NULL,'employeeImages/Warehouse-building-300x200.jpg','assetImages/Warehouse-building-300x200.jpg','locationImages/Warehouse-building-300x200.jpg'),(56806,'Unassigned','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','F',2345,'Arcadia','q','ADMIN','q','azzsc',18743,'2019-04-27 00:28:01',NULL,'employeeImages/Warehouse-building-300x200.jpg','assetImages/Warehouse-building-300x200.jpg','locationImages/warehousebuildings.jpg'),(56807,'Unassigned','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','F',2345,'Arcadia','q','ADMIN','azzz','azzsc',18743,'2019-04-27 00:30:05',NULL,'employeeImages/warehousebuildings.jpg','assetImages/Warehouse-building-300x200.jpg','locationImages/Warehouse-building-300x200.jpg'),(56808,'AAA','appp',1234,'1234','Chevy','azzPPPP','azz','q','az','N/A','F',2345,'Arcadia','q','ADMIN','azzz','azh',18743,'2019-04-27 00:31:12',NULL,'employeeImages/Warehouse-building-300x200.jpg','assetImages/Warehouse-building-300x200.jpg','locationImages/warehousebuildings.jpg'),(56809,'Unassigned','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','F',1,'Metro Office','q','ADMIN','q','az',18743,'2019-04-29 05:44:49',NULL,'employeeImages/636572239380824718-AP18077840160536.jpg','assetImages/iPhone.jpg','locationImages/iPhone.jpg'),(56810,'1234','appp',1234,'as','Chevy','azzPPPP','azz','az','az','N/A','F',432,'Arcadia Hq','q','ADMIN','azzz','azzz',18743,'2019-04-29 05:47:10',NULL,'employeeImages/12468.jpg','assetImages/iPhone.jpg','locationImages/12468.jpg'),(56811,'1234','appp',1234,'1234','Chevy','azzPPPP','azz','az','az','N/A','F',432,'Arcadia Hq','q','ADMIN','azzz','azzz',18743,'2019-04-29 05:47:19',NULL,'employeeImages/12468.jpg','assetImages/iPhone.jpg','locationImages/12468.jpg'),(56812,'AAA','appp',1234,'1234','Chevy','azzPPPPhj','azz','az','az','N/A','P',1234,'Arcadia Hq','az','ADMIN','azzz','azh',18743,'2019-04-29 05:48:34',NULL,'employeeImages/iPhone.jpg','assetImages/iPhone.jpg','locationImages/iPhone.jpg'),(56813,'AAA','appp',1234,'fsafs','Chevy','azzPPPP','azz','az','az','N/A','F',432,'Metro Office','az','ADMIN','q','azha',18743,'2019-04-29 18:18:30',NULL,'employeeImages/12468.jpg','assetImages/12468.jpg','locationImages/12468.jpg');
/*!40000 ALTER TABLE `computer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding_orgs`
--

DROP TABLE IF EXISTS `funding_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funding_orgs` (
  `FUNDING_ORG_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_orgs`
--

LOCK TABLES `funding_orgs` WRITE;
/*!40000 ALTER TABLE `funding_orgs` DISABLE KEYS */;
INSERT INTO `funding_orgs` VALUES (18743),(18777),(17897);
/*!40000 ALTER TABLE `funding_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `parent_table` varchar(255) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `action_performed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('vehicle','2019-04-29 11:16:52','415506',1,'Edited'),('computer','2019-04-29 11:18:30','415506',56813,'Received'),('computer','2019-04-29 11:18:56','415506',56813,'Edited'),('computer','2019-04-29 11:20:04','415506',56813,'Relocated'),('computer','2019-04-29 11:20:04','415506',56813,'Relocated'),('asset','2019-04-29 11:42:57','415506',73,'Received'),('vehicle','2019-04-29 11:45:33','415506',74,'Received'),('vehicle','2019-04-29 11:45:45','415506',75,'Received'),('vehicle','2019-04-29 11:46:37','415506',76,'Received'),('computer','2019-04-29 12:05:10','415506',56797,'Relocated'),('computer','2019-04-29 12:05:10','415506',56798,'Relocated'),('computer','2019-04-29 12:05:10','415506',56799,'Relocated'),('computer','2019-04-29 12:05:10','415506',56797,'Relocated'),('computer','2019-04-29 12:05:10','415506',56798,'Relocated'),('computer','2019-04-29 12:05:10','415506',56799,'Relocated'),('computer','2019-04-29 12:06:47','415506',56797,'Relocated'),('computer','2019-04-29 12:06:47','415506',56798,'Relocated'),('computer','2019-04-29 12:06:47','415506',56799,'Relocated'),('computer','2019-04-29 12:06:47','415506',56797,'Relocated'),('computer','2019-04-29 12:06:47','415506',56798,'Relocated'),('computer','2019-04-29 12:06:47','415506',56799,'Relocated'),('computer','2019-04-29 12:09:48','415506',56797,'Relocated'),('computer','2019-04-29 12:09:48','415506',56798,'Relocated'),('computer','2019-04-29 12:09:48','415506',56799,'Relocated'),('computer','2019-04-29 12:09:48','415506',56797,'Relocated'),('computer','2019-04-29 12:09:48','415506',56798,'Relocated'),('computer','2019-04-29 12:09:48','415506',56799,'Relocated'),('computer','2019-04-29 12:09:54','415506',56797,'Relocated'),('computer','2019-04-29 12:09:54','415506',56798,'Relocated'),('computer','2019-04-29 12:09:54','415506',56799,'Relocated'),('computer','2019-04-29 12:09:54','415506',56797,'Relocated'),('computer','2019-04-29 12:09:54','415506',56798,'Relocated'),('computer','2019-04-29 12:09:54','415506',56799,'Relocated'),('vehicle','2019-04-29 12:10:13','415506',45686,'Relocated'),('vehicle','2019-04-29 12:10:13','415506',56780,'Relocated'),('vehicle','2019-04-29 12:10:13','415506',56789,'Relocated'),('vehicle','2019-04-29 12:11:47','415506',45686,'Relocated'),('vehicle','2019-04-29 12:11:47','415506',56789,'Relocated'),('asset','2019-04-29 12:13:52','415506',1,'Relocated'),('asset','2019-04-29 12:13:52','415506',2,'Relocated'),('computer','2019-04-29 14:08:53','415506',56797,'Relocated'),('computer','2019-04-29 14:08:53','415506',56798,'Relocated'),('computer','2019-04-29 14:08:53','415506',56797,'Relocated'),('computer','2019-04-29 14:08:53','415506',56798,'Relocated'),('computer','2019-04-29 14:09:42','415506',56797,'Relocated'),('computer','2019-04-29 14:09:42','415506',56798,'Relocated'),('computer','2019-04-29 14:10:23','415506',56800,'Relocated'),('computer','2019-04-29 14:11:03','415506',56800,'Relocated'),('asset','2019-04-29 14:12:48','415506',1,'Relocated'),('asset','2019-04-29 14:12:48','415506',2,'Relocated'),('asset','2019-04-29 14:12:48','415506',65,'Relocated'),('asset','2019-04-29 14:12:48','415506',68,'Relocated'),('asset','2019-04-29 14:17:28','415506',1,'Edited'),('asset','2019-04-29 14:17:44','415506',1,'Edited'),('asset','2019-04-29 14:17:56','415506',1,'Edited'),('asset','2019-04-29 14:20:12','415506',1,'Edited'),('asset','2019-04-29 21:07:12','415506',1,'Relocated');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `GUID` varchar(255) NOT NULL,
  `VNO` int(11) NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `ASSIGNEE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MAKE` varchar(255) NOT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `SERIAL_NO` varchar(255) DEFAULT NULL,
  `COUNTY_NO` varchar(255) DEFAULT NULL,
  `ACQ_DATE` date DEFAULT NULL,
  `COST` decimal(10,0) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `STATUS_` varchar(255) NOT NULL,
  `CATEGORY` varchar(255) NOT NULL,
  `B_INVENT_CODE` int(11) NOT NULL,
  `SUBLOCATION` varchar(255) DEFAULT NULL,
  `BUREAU` varchar(255) NOT NULL,
  `ASSIGNED_TO` varchar(255) DEFAULT NULL,
  `LICENSE` varchar(255) NOT NULL,
  `YEAR_NO` int(11) NOT NULL,
  `VIN` varchar(255) NOT NULL,
  `UNIT` int(11) NOT NULL,
  `FUNDING_ORG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('1234',1234,'Arcadia','1234','sadfsadfasdfsadfadsf','Ford','1234','1234','1234','2018-11-04',1234,'1234','F','1234',18732,'1234','ADMIN','1234','California',2018,'1234',18743,18743),('2345',2345,'Arcadia','2345','2345','Ford','2345','2345','2345','2018-11-04',2345,'2345','F','2345',18732,'2345','ADMIN','2345','2345',2018,'2345',18743,18743),('3456',3456,'Arcadia','3456','3456','Ford','3456','3456','3456','2018-11-04',3456,'3456','F','3456',18732,'3456','ADMIN','3456','3456',2018,'3456',18743,18743),('43563463',4123,'Arcadia','5234','5234','Ford','2345','2345','2345','2018-11-05',2345,'5435','F','5345',18732,'345','ADMIN','352','345',2018,'2345',18743,18743),('4567',54745,'Arcadia','476','4567','Ford','4567','4567','4567','2018-11-06',4576,'4576','F','756',18732,'4567','ADMIN','75476','4567',2018,'4576457',18743,18743),('56436',45645,'Arcadia','636','456','Ford','4','4','4','2018-11-06',2314,'234','F','234',18732,'234','ADMIN','234','234',2018,'234',18743,18743),('1',1,'Arcadia','testtesttesttest','test','Ford','test','1','1','2018-11-06',1,'1','F','1',18732,'estt','ADMIN','1','1',2018,'1',18743,18743),('qwe24',12,'Arcadia','123','1','Ford','2314','423','214','1111-11-11',1234,'2423','F','23',18732,'1234','ADMIN','1243','1234',2018,'2134',18743,18743),('890767754543',123,'Arcadia','1','this is a test','Ford','1','1','1','2018-11-06',1,'1','F','1',18732,'1','ADMIN','1','1',2018,'1',18743,18743),('423424112',2131,'Metro Office','2345','sdfasdfasdfasdf','test','2141','251235','1214','2019-01-19',123141213,'4tqfadfasdf','P','123agasdf',18732,'fafdasfaw','ADMIN','324adsf','asfwaef',2019,'qwerasdasdf',18743,18743),('534252345',5135412,'Arcadia','321423','412341242','Ford','1432','23412','342341','2019-01-18',1234,'2134','F','4324',18732,'2412','ADMIN','42134','123412',2018,'412341234',18743,18743),('wetwert352',12521,'Arcadia','3411234','1251235','Ford','1253512','3512341','1234124234','2019-01-26',1234,'12351','F','1235',18732,'12341','ADMIN','12431','12351',2018,'123512341',18743,18743),('6236423512',41234,'Arcadia','1251234','1251','Ford','121','1253','51213512','2019-01-26',12341,'1511','F','234',18732,'43241','ADMIN','4151','2352134',2018,'1251',18743,18743),('6163462',16616314,'Arcadia','34636','134415','Ford','123216','123451','1234123516111234','2019-01-24',16261,'1624','F','12341',18732,'123421','ADMIN','4213','1235',2018,'4125123',18743,18743),('32623462',636462346,'Arcadia','2324523','1251','Ford','12341251','125161','12354125','2019-01-31',1261,'12351','F','12352135',18732,'125123541','ADMIN','12341235','12351235',2018,'1251',18743,18743),('5325234512341',123152354,'Arcadia','12531234','12341234','Ford','34123412512','5123521','51234123412','2019-01-19',124312,'15235','F','12553',18732,'15251','ADMIN','1253','15231',2018,'12351',18743,18743),('1551521',515,'Arcadia','2','2','Ford','2','2','2','2019-01-10',2,'2','F','2',18732,'2','ADMIN','2','2',2018,'2',18743,18743),('9',5,'Arcadia','5','5','Ford','5','5','5','2019-01-25',5,'5','F','5',18732,'5','ADMIN','5','5',2018,'5',18743,18743),('34534533432222',55,'Arcadia','55','55','Ford','55','55','55','2019-01-31',5,'55','F','53',18732,'334','ADMIN','345','352',2018,'3245',18743,18743),('26263425',2345,'Arcadia','5252','5252','Ford','522','3452','252','2019-01-25',252,'325','F','2352',18732,'2535','ADMIN','2552','262252',2018,'52345',18743,18743),('252525',35345,'Arcadia','345','325','Ford','2354','2345','2435','2019-01-30',41234,'1512','F','215',18732,'12512','ADMIN','sdgsdfg','sgdfgsdfg',2018,'gsdfgsdfg',18743,18743),('515113513512351',1515,'Arcadia','1515','5151515','Ford','1515','151515151','5151351351352','2019-02-01',51513,'153135','F','15135135',18732,'1351355','ADMIN','25435','324532',2018,'41341',18743,18743),('5135213',135135131,'Arcadia','5135135','1341341','Ford','123151','135135','135151341132','2019-02-09',1532543253,'5432531','F','13141',18732,'123153','ADMIN','25243533','4234115',2018,'35135134',18743,18743),('4253452312431',132515134,'Arcadia','1231523534','1345125','Ford','325345134134','3452314','1413543513413234','2019-01-24',34534522,'431415','F','435345353451',18732,'3131','ADMIN','4235345345','13424434543',2018,'5345134',18743,18743),('6774',5646456,'Arcadia','45341','1234564','Ford','5645678','78647','45456456','2019-01-11',645678,'78645','F','1245215487',18732,'1212012345','ADMIN','876204','5678',2018,'7863',18743,18743),('7686454456',7878,'Arcadia','456','645','Ford','4564','6547','87878','2019-01-18',45678,'7864','F','456678',18732,'456123','ADMIN','789','California',2018,'2345',18743,18743);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `LOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('Arcadia'),('Arcadia Hq'),('Metro Office'),('Olive View'),('South Gate'),('test'),('test2'),('test3');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makes`
--

DROP TABLE IF EXISTS `makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makes` (
  `MAKE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makes`
--

LOCK TABLES `makes` WRITE;
/*!40000 ALTER TABLE `makes` DISABLE KEYS */;
INSERT INTO `makes` VALUES ('Ford'),('Infiniti'),('Toyota'),('test');
/*!40000 ALTER TABLE `makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'neovic','devierte','k'),(2,'gemalyn','cepe','carmen, bohol'),(3,'lee','apilinga','bacolod'),(4,'julyn','divinagracia','eb magalona'),(5,'cristine','demapanag','talisay');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `UID` varchar(255) DEFAULT NULL,
  `ROLE` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('43cdc4c6-7d1b-11e7-b36c-005056a5b2f3','USER'),('59a6ceaa-7d1b-11e7-b36c-005056a5b2f3','MANAGER'),('5e72c1dc-7d1b-11e7-b36c-005056a5b2f3','ADMIN'),('a054ead2-ce54-11e7-92d4-005056a5b2f3','USER_E'),('b19363a0-ce54-11e7-92d4-005056a5b2f3','USER_FV'),('25c3e548-fbc2-11e7-92d4-005056a5b2f3','SCANNER_USER'),('baddd044-fbcc-11e7-92d4-005056a5b2f3','SCANNER_ADMIN'),('c6ba1972-fbcc-11e7-92d4-005056a5b2f3','DEVICE_USER'),('d7bb20a4-fbcc-11e7-92d4-005056a5b2f3','DEVICE_ADMIN'),('a5b44cb4-fbce-11e7-92d4-005056a5b2f3','DEVICE_MANAGER'),('9a1f32c4-fbce-11e7-92d4-005056a5b2f3','SCANNER_MANAGER'),('ab84587e-64f0-11e8-8e81-005056a5b2f3','ITADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_cubicles`
--

DROP TABLE IF EXISTS `rooms_cubicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms_cubicles` (
  `id` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `room_cubicle_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_cubicles`
--

LOCK TABLES `rooms_cubicles` WRITE;
/*!40000 ALTER TABLE `rooms_cubicles` DISABLE KEYS */;
INSERT INTO `rooms_cubicles` VALUES (1,'Arcadia',1),(2,'Arcadia',2),(3,'Arcadia',3),(4,'Arcadia',4),(5,'Arcadia',5),(6,'Arcadia',6),(7,'Arcadia',7),(8,'Arcadia',8),(9,'Arcadia',9),(10,'Arcadia',10),(11,'Arcadia',11),(12,'Arcadia',12),(13,'Arcadia',13),(14,'Arcadia',14),(15,'Arcadia',15),(16,'Arcadia',16),(17,'Arcadia',17),(18,'Arcadia',18),(19,'Arcadia',19),(20,'Arcadia',20),(21,'Arcadia',21),(22,'Arcadia',22),(23,'Arcadia',23),(24,'Arcadia',24),(25,'Arcadia',25),(26,'Arcadia',26),(27,'Arcadia',27),(28,'Arcadia',28),(29,'Arcadia',29),(30,'Arcadia',30),(31,'Arcadia',31),(32,'Arcadia',32),(33,'Arcadia',33),(34,'Arcadia',34),(35,'Arcadia',35),(36,'Arcadia',36),(37,'Arcadia',37),(38,'Arcadia',38),(39,'Arcadia',39),(40,'Arcadia',40),(41,'Arcadia',41),(42,'Arcadia',42),(43,'Arcadia',43),(44,'Arcadia',44),(45,'Arcadia',45),(46,'Arcadia',46),(47,'Arcadia',47),(48,'Arcadia',48),(49,'Arcadia',49),(50,'Arcadia',50),(51,'Arcadia',51),(52,'Arcadia',52),(53,'Arcadia',53),(54,'Arcadia',54),(55,'Arcadia',55),(56,'Arcadia',56),(57,'Arcadia',57),(58,'Arcadia',58),(59,'Arcadia',59),(60,'Arcadia',60),(61,'Arcadia',61),(62,'Arcadia',62),(63,'Arcadia',63),(64,'Arcadia',64),(65,'Arcadia',65),(66,'Arcadia',66),(67,'Arcadia',67),(68,'Arcadia',68),(69,'Arcadia',69),(70,'Arcadia',70),(71,'Arcadia',71),(72,'Arcadia',72),(73,'Arcadia',73),(74,'Arcadia',74),(75,'Arcadia',75),(76,'Arcadia',76),(77,'Arcadia',77),(78,'Arcadia',78),(79,'Arcadia',79),(80,'Arcadia',80),(81,'Arcadia',81),(82,'Arcadia',82),(83,'Arcadia',83),(84,'Arcadia',84),(85,'Arcadia',85),(86,'Arcadia',86),(87,'Arcadia',87),(88,'Arcadia',88),(89,'Arcadia',89),(90,'Arcadia',90),(91,'Arcadia',91),(92,'Arcadia',92),(93,'Arcadia',93),(94,'Arcadia',94),(95,'Arcadia',95),(96,'Arcadia',96),(97,'Arcadia',97),(98,'Arcadia',98),(99,'Arcadia',99),(100,'Arcadia',100),(101,'Arcadia',101),(102,'Arcadia',102),(103,'Arcadia',103),(104,'Arcadia',104),(105,'Arcadia',105),(106,'Arcadia',106),(107,'Arcadia',107),(108,'Arcadia',108),(109,'Arcadia',109),(110,'Arcadia',110),(111,'Arcadia',111),(112,'Arcadia',112),(113,'Arcadia',113),(114,'Arcadia',114),(115,'Arcadia',115),(116,'Arcadia',116),(117,'Arcadia',117),(118,'Arcadia',118),(119,'Arcadia',119),(120,'Arcadia',120),(121,'Arcadia',121),(122,'Arcadia',122),(123,'Arcadia',123),(124,'Arcadia',124),(125,'Arcadia',125),(126,'Arcadia',126),(127,'Arcadia',127),(128,'Arcadia',128),(129,'Arcadia',129),(130,'Arcadia',130),(131,'Arcadia',131),(132,'Arcadia',132),(133,'Arcadia',133),(134,'Arcadia',134),(135,'Arcadia',135),(136,'Arcadia',136),(137,'Arcadia',137),(138,'Arcadia',138),(139,'Arcadia',139),(140,'Arcadia',140),(141,'Arcadia',141),(142,'Arcadia',142),(143,'Arcadia',143),(144,'Arcadia',144),(145,'Arcadia',145),(146,'Arcadia',146),(147,'Arcadia',147),(148,'Arcadia',148),(149,'Arcadia',149),(150,'Arcadia',150),(151,'Arcadia',151),(152,'Arcadia',152),(153,'Arcadia',153),(154,'Arcadia',154),(155,'Arcadia',155),(156,'Arcadia',156),(157,'Arcadia',157),(158,'Arcadia',158),(159,'Arcadia',159),(160,'Arcadia',160),(161,'Arcadia',161),(162,'Arcadia',162),(163,'Arcadia',163),(164,'Arcadia',164),(165,'Arcadia',165),(166,'Arcadia',166),(167,'Arcadia',167),(168,'Arcadia',168),(169,'Arcadia',169),(170,'Arcadia',170),(171,'Arcadia',171),(172,'Arcadia',172),(173,'Arcadia',173),(174,'Arcadia',174),(175,'Arcadia',175),(176,'Arcadia',176),(177,'Arcadia',177),(178,'Arcadia',178),(179,'Arcadia',179),(180,'Arcadia',180),(181,'Arcadia',181),(182,'Arcadia',182),(183,'Arcadia',183),(184,'Arcadia',184),(185,'Arcadia',185),(186,'Arcadia',186),(187,'Arcadia',187),(188,'Arcadia',188),(189,'Arcadia',189),(190,'Arcadia',190),(191,'Arcadia',191),(192,'Arcadia',192),(193,'Arcadia',193),(194,'Arcadia',194),(195,'Arcadia',195),(196,'Arcadia',196),(197,'Arcadia',197),(198,'Arcadia',198),(199,'Arcadia',199),(200,'Arcadia',200),(201,'South Gate',1),(202,'South Gate',2),(203,'South Gate',3),(204,'South Gate',4),(205,'South Gate',5),(206,'South Gate',6),(207,'South Gate',7),(208,'South Gate',8),(209,'South Gate',9),(210,'South Gate',10),(211,'South Gate',11),(212,'South Gate',12),(213,'South Gate',13),(214,'South Gate',14),(215,'South Gate',15),(216,'South Gate',16),(217,'South Gate',17),(218,'South Gate',18),(219,'South Gate',19),(220,'South Gate',20),(221,'South Gate',21),(222,'South Gate',22),(223,'South Gate',23),(224,'South Gate',24),(225,'South Gate',25),(226,'South Gate',26),(227,'South Gate',27),(228,'South Gate',28),(229,'South Gate',29),(230,'South Gate',30),(231,'South Gate',31),(232,'South Gate',32),(233,'South Gate',33),(234,'South Gate',34),(235,'South Gate',35),(236,'South Gate',36),(237,'South Gate',37),(238,'South Gate',38),(239,'South Gate',39),(240,'South Gate',40),(241,'South Gate',41),(242,'South Gate',42),(243,'South Gate',43),(244,'South Gate',44),(245,'South Gate',45),(246,'South Gate',46),(247,'South Gate',47),(248,'South Gate',48),(249,'South Gate',49),(250,'South Gate',50),(251,'South Gate',51),(252,'South Gate',52),(253,'South Gate',53),(254,'South Gate',54),(255,'South Gate',55),(255,'South Gate',56),(257,'South Gate',57),(258,'South Gate',58),(259,'South Gate',59),(260,'South Gate',60),(261,'South Gate',61),(262,'South Gate',62),(263,'South Gate',63),(264,'South Gate',64),(265,'South Gate',65),(266,'South Gate',66),(267,'South Gate',67),(268,'South Gate',68),(269,'South Gate',69),(270,'South Gate',70),(271,'South Gate',71),(272,'South Gate',72),(273,'South Gate',73),(274,'South Gate',74),(275,'South Gate',75),(276,'South Gate',76),(277,'South Gate',77),(278,'South Gate',78),(279,'South Gate',79),(280,'South Gate',80),(281,'South Gate',81),(282,'South Gate',82),(283,'South Gate',83),(284,'South Gate',84),(285,'South Gate',85),(286,'South Gate',86),(287,'South Gate',87),(288,'South Gate',88),(289,'South Gate',89),(290,'South Gate',90),(291,'South Gate',91),(292,'South Gate',92),(293,'South Gate',93),(294,'South Gate',94),(295,'South Gate',95),(296,'South Gate',96),(297,'South Gate',97),(298,'South Gate',98),(299,'South Gate',99),(300,'South Gate',100);
/*!40000 ALTER TABLE `rooms_cubicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salvage_asset`
--

DROP TABLE IF EXISTS `salvage_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salvage_asset` (
  `GUID` int(11) NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `ASSIGNEE` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `MAKE` varchar(255) NOT NULL,
  `MODEL` varchar(255) NOT NULL,
  `SERIALNO` varchar(255) NOT NULL,
  `COUNTYNO` int(11) NOT NULL,
  `ACDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `COST` decimal(11,2) NOT NULL,
  `COMMENTS` varchar(255) NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `CATEGORY` varchar(255) NOT NULL,
  `BINVENT` int(11) NOT NULL,
  `SUBLOCATION` varchar(255) NOT NULL,
  `BUREAU` varchar(255) NOT NULL,
  `ASSET_IMAGE` varchar(255) DEFAULT NULL,
  `LOCATION_IMAGE` varchar(255) DEFAULT NULL,
  `ASSIGNEE_IMAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salvage_asset`
--

LOCK TABLES `salvage_asset` WRITE;
/*!40000 ALTER TABLE `salvage_asset` DISABLE KEYS */;
INSERT INTO `salvage_asset` VALUES (1,'Arcadia','Unassigned','Yellow','Dell','Yellow','9846d864d98',88259,'2019-03-21 02:08:58',1049.00,'fasdfas','P','Computer',18740,'8','ha',NULL,NULL,NULL),(51,'Arcadia','fasdf','fasdf','dfasf','fasdf','fasdf',42321,'2019-04-12 07:21:14',56465.00,'fasdfa','F','sfsdf',18732,'asdfasdf','ADMIN',NULL,NULL,NULL),(66,'Arcadia','Unassigned','ffdfas;l','Chevy','1234','8974561',65432,'2019-04-24 19:59:55',111456.00,'dsfasdfasdf','F','Trailer',18732,'1234','ADMIN',NULL,NULL,NULL),(67,'Arcadia','Unassigned','agsdfasf','Chevy','1234','8974561',65432,'2019-04-24 20:00:15',111456.00,'sdfasfasdg','F','Trailer',18732,'1234','ADMIN',NULL,NULL,NULL);
/*!40000 ALTER TABLE `salvage_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salvage_vehicle`
--

DROP TABLE IF EXISTS `salvage_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salvage_vehicle` (
  `GUID` int(11) NOT NULL,
  `VNO` int(11) NOT NULL,
  `ASSIGNEDTO` varchar(255) NOT NULL,
  `LICENSE` varchar(255) NOT NULL,
  `MAKE` varchar(255) NOT NULL,
  `MODEL` varchar(255) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `HOUSED` varchar(255) NOT NULL,
  `VIN` varchar(255) NOT NULL,
  `UNIT` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `BUREAU` varchar(255) NOT NULL,
  `FUNDINGORG` varchar(255) NOT NULL,
  `EMPLOYEE_IMAGE` varchar(255) DEFAULT NULL,
  `VEHICLE_IMAGE` varchar(255) DEFAULT NULL,
  `LOCATION_IMAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salvage_vehicle`
--

LOCK TABLES `salvage_vehicle` WRITE;
/*!40000 ALTER TABLE `salvage_vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `salvage_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `STATUS_` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES ('F'),('P');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `UNIT_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (18743);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `EMPLOYEE_ID` varchar(12) NOT NULL,
  `ROLE_UID` varchar(255) NOT NULL,
  `GRANTABLE` varchar(1) DEFAULT 'N',
  `STATUS` varchar(1) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('415506','8a6ffc8e-82c3-11e7-b36c-005056a5b2f3','Y','A'),('634774','8a70063e-82c3-11e7-b36c-005056a5b2f3','N','A'),('123456','43cdc4c6-7d1b-11e7-b36c-005056a5b2f3','N','A'),('537954','8a6ffeb4-82c3-11e7-b36c-005056a5b2f3','Y','A'),('467657','8a700d28-82c3-11e7-b36c-005056a5b2f3','Y','A');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (NULL,'acwm','acwm@acwm.com','$2y$10$ht7aIVTw4/PH/bStZb4brODGLMHR/gEJQTfMFrfQFGTVBlS/6Wn4m');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `GUID` int(11) NOT NULL AUTO_INCREMENT,
  `VNO` int(11) NOT NULL,
  `ASSIGNEDTO` varchar(255) NOT NULL,
  `LICENSE` varchar(255) NOT NULL,
  `MAKE` varchar(255) NOT NULL,
  `MODEL` varchar(255) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `HOUSED` varchar(255) NOT NULL,
  `VIN` varchar(255) NOT NULL,
  `UNIT` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `BUREAU` varchar(255) NOT NULL,
  `FUNDINGORG` varchar(255) NOT NULL,
  `EMPLOYEE_IMAGE` varchar(255) DEFAULT NULL,
  `VEHICLE_IMAGE` varchar(255) DEFAULT NULL,
  `LOCATION_IMAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,45686,'afsd','sfasdf','sadfas','fwqr',2019,'Metro Office','afsdfhj','18743','fsa','ADMIN','18777','employeeImages/1.jpg','assetImages/385.png','locationImages/Warehouse-building-300x200.jpg'),(58,56780,'Unassigned','456BVF4','Chevy','Colorado',2019,'Metro Office',' BHJM87654FBN','18743','Black','ADMIN','18743','employeeImages/7.jpg','assetImages/636572239380824718-AP18077840160536.jpg ','locationImages/warehousebuildings.jpg'),(59,56789,'Unassigned','FGH4567N','Ford ','F150',2018,'Metro Office','VGHJ9876DFVBN','18743','Red','ADMIN','18743','employeeImages/1.jpg','assetImages/385.png','locationImages/warehousebuildings.jpg'),(60,20988,'Unassigned','456BHJK9','Chevy','Colorado',2017,'Arcadia','DFYJ876543DFGH','18741','Black','USER','18452','employeeImages/16.jpg','assetImages/636572239380824718-AP18077840160536.jpg','locationImages/Warehouse-building-300x200.jpg'),(61,765432,'Unassigned','5678NBG','Honda','Accord',2018,'Arcadia','GHJ765678NBG','18743','Blue','ADMIN','18452','employeeImages/_WVkn2guvm.jpg','assetImages/385.png','locationImages/Warehouse-building-300x200.jpg'),(62,23456,'Unassigned','34BH9HK','Ford ','F150',2018,'Arcadia','FJML098765DFGHJ','18743','Red','ADMIN','18452','employeeImages/22610.jpg','assetImages/385.png','locationImages/Warehouse-building-300x200.jpg'),(63,2134,'john doe','California','Chevy','Silverado',2018,'South Gate','HGHYUI678','18743','black','ADMIN','18743','employeeImages/22610.jpg','assetImages/12.jpg','locationImages/warehousebuildings.jpg'),(64,2134,'Unassigned','California','Chevy','1234',2019,'Arcadia','1234','18743','black','ADMIN','18743','employeeImages/385.png','assetImages/636572239380824718-AP18077840160536.jpg','locationImages/12468.jpg'),(65,2134,'Unassigned','California','Chevy','1234',2019,'Arcadia','1234','18743','black','ADMIN','18743','employeeImages/385.png','assetImages/636572239380824718-AP18077840160536.jpg','locationImages/12468.jpg'),(66,56780,'Unassigned','California','aaazzppp','black',2018,'Metro Office',' BHJM87654FBN','18743','Blue','ADMIN','18743','employeeImages/385.png','assetImages/385.png','locationImages/385.png'),(67,56780,'Unassigned','California','sfdasd','Silverado',2018,'Metro Office','HGHYUI678','18743','Blue','ADMIN','18743','employeeImages/Warehouse-building-300x200.jpg','assetImages/Warehouse-building-300x200.jpg','locationImages/Warehouse-building-300x200.jpg'),(68,56789,'john doe','California','Nissan','Colorado',2018,'Metro Office','HGHYUI678','18743','Blue','ADMIN','18743','employeeImages/12468.jpg','assetImages/12468.jpg','locationImages/12468.jpg'),(69,7812,'john doe','California','aaazzppp','1234',2019,'Arcadia',' BHJM87654FBN','18743','black','ADMIN','18743','employeeImages/636572239380824718-AP18077840160536.jpg','assetImages/12468.jpg','locationImages/Warehouse-building-300x200.jpg'),(70,56780,'john doe','California','Ford','1234',2018,'Metro Office','2345','18743','Red','ADMIN','18743','employeeImages/12468.jpg','assetImages/12468.jpg','locationImages/12468.jpg'),(71,56780,'john doe','California','Nissan','1234',2019,'Metro Office',' BHJM87654FBN','18743','Black','ADMIN','18743','employeeImages/12.jpg','assetImages/12.jpg','locationImages/12.jpg'),(72,2134,'Unassigned','California','Chevy','1234',2019,'Arcadia Hq','1234','18743','1234','ADMIN','18743','employeeImages/iPhone.jpg','assetImages/iPhone.jpg','locationImages/iPhone.jpg'),(73,7812,'adfafsd','California','Chevy','black',2018,'Arcadia','2345','18743','Blue','ADMIN','18743','employeeImages/636572239380824718-AP18077840160536.jpg','assetImages/Warehouse-building-300x200.jpg','locationImages/Warehouse-building-300x200.jpg'),(74,56780,'Unassigned','California','Chevy','1234',2019,'Metro Office','2345','18743','Red','ADMIN','18743','employeeImages/636572239380824718-AP18077840160536.jpg','assetImages/636572239380824718-AP18077840160536.jpg','locationImages/636572239380824718-AP18077840160536.jpg'),(75,56780,'Unassigned','California','Chevy','1234',2019,'Metro Office','2345','18743','Red','ADMIN','18743','employeeImages/636572239380824718-AP18077840160536.jpg','assetImages/636572239380824718-AP18077840160536.jpg','locationImages/636572239380824718-AP18077840160536.jpg'),(76,7812,'Unassigned','California','Chevy','1234',2019,'Arcadia',' BHJM87654FBN','18743','Blue','ADMIN','18743','employeeImages/385.png','assetImages/385.png','locationImages/385.png');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `years`
--

DROP TABLE IF EXISTS `years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `years` (
  `YEAR_NO` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `years`
--

LOCK TABLES `years` WRITE;
/*!40000 ALTER TABLE `years` DISABLE KEYS */;
INSERT INTO `years` VALUES (2018),(2019);
/*!40000 ALTER TABLE `years` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-01 11:26:06
