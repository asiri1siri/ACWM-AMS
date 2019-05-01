# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: my_intranet_db
# Generation Time: 2019-04-18 23:10:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tblcarddata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblcarddata`;

CREATE TABLE `tblcarddata` (
  `idsCardDataID` int(11) NOT NULL AUTO_INCREMENT,
  `idfConfigID` int(11) DEFAULT NULL,
  `fstrLastName` varchar(60) DEFAULT NULL,
  `fstrFirstName` varchar(60) DEFAULT NULL,
  `fstrMidName` varchar(60) DEFAULT NULL,
  `fstrID` varchar(50) NOT NULL,
  `StatusID` varchar(50) DEFAULT NULL,
  `Paylocation` varchar(50) DEFAULT NULL,
  `EvalMo` varchar(50) DEFAULT NULL,
  `probstart` date DEFAULT NULL,
  `probend` date DEFAULT NULL,
  `fdatRecDate` datetime DEFAULT NULL,
  `idfReportID` int(11) DEFAULT NULL,
  `fstrBarCode` varchar(60) DEFAULT NULL,
  `TextField01` varchar(60) DEFAULT NULL,
  `TextField02` varchar(60) DEFAULT NULL,
  `TextField03` varchar(60) DEFAULT NULL,
  `TextField04` varchar(60) DEFAULT NULL,
  `TextField05` varchar(60) DEFAULT NULL,
  `TextField06` varchar(60) DEFAULT NULL,
  `TextField07` varchar(60) DEFAULT NULL,
  `TextField08` varchar(60) DEFAULT NULL,
  `TextField09` varchar(60) DEFAULT NULL,
  `TextField10` varchar(60) DEFAULT NULL,
  `TextField11` varchar(60) DEFAULT NULL,
  `TextField12` varchar(60) DEFAULT NULL,
  `TextField13` varchar(60) DEFAULT NULL,
  `TextField14` varchar(60) DEFAULT NULL,
  `TextField15` varchar(60) DEFAULT NULL,
  `TextField16` varchar(60) DEFAULT NULL,
  `TextField17` varchar(60) DEFAULT NULL,
  `TextField18` varchar(60) DEFAULT NULL,
  `TextField19` varchar(60) DEFAULT NULL,
  `TextField20` varchar(60) DEFAULT NULL,
  `TextField22` varchar(60) DEFAULT NULL,
  `TextField21` varchar(60) DEFAULT NULL,
  `TextField23` varchar(60) DEFAULT NULL,
  `TextField24` varchar(60) DEFAULT NULL,
  `TextField25` varchar(60) DEFAULT NULL,
  `TextField26` varchar(60) DEFAULT NULL,
  `TextField27` varchar(60) DEFAULT NULL,
  `TextField28` varchar(60) DEFAULT NULL,
  `TextField29` varchar(60) DEFAULT NULL,
  `TextField30` varchar(60) DEFAULT NULL,
  `TextField31` varchar(60) DEFAULT NULL,
  `TextField32` varchar(60) DEFAULT NULL,
  `TextField33` varchar(60) DEFAULT NULL,
  `TextField34` varchar(60) DEFAULT NULL,
  `TextField35` varchar(60) DEFAULT NULL,
  `TextField36` varchar(60) DEFAULT NULL,
  `TextField37` varchar(60) DEFAULT NULL,
  `TextField38` varchar(60) DEFAULT NULL,
  `TextField39` varchar(60) DEFAULT NULL,
  `TextField40` varchar(60) DEFAULT NULL,
  `TextField41` varchar(60) DEFAULT NULL,
  `TextField42` varchar(60) DEFAULT NULL,
  `TextField43` varchar(60) DEFAULT NULL,
  `TextField44` varchar(60) DEFAULT NULL,
  `TextField45` varchar(60) DEFAULT NULL,
  `DateField01` date DEFAULT NULL,
  `DateField02` date DEFAULT NULL,
  `DateField03` date DEFAULT NULL,
  `DateField04` date DEFAULT NULL,
  `DateField05` date DEFAULT NULL,
  `fstrAddress` varchar(50) DEFAULT NULL,
  `fstrCity` varchar(50) DEFAULT NULL,
  `fstrState` char(2) DEFAULT NULL,
  `fstrZip` varchar(10) DEFAULT NULL,
  `blnBatchPrint` int(11) DEFAULT NULL,
  `intTimesPrinted` int(11) DEFAULT NULL,
  `fdatTimeStamp` datetime DEFAULT NULL,
  `fintRecPool` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `fstrSS` varchar(4) DEFAULT NULL,
  `prefix` varchar(5) DEFAULT NULL,
  `suffix` varchar(5) DEFAULT NULL,
  `aka` varchar(30) DEFAULT NULL,
  `phoneA` varchar(50) DEFAULT NULL,
  `phoneB` varchar(50) DEFAULT NULL,
  `phoneC` varchar(50) DEFAULT NULL,
  `pagerA` varchar(50) DEFAULT NULL,
  `pagerB` varchar(50) DEFAULT NULL,
  `pagerC` varchar(50) DEFAULT NULL,
  `cellphone_A` varchar(50) DEFAULT NULL,
  `cellphone_B` varchar(50) DEFAULT NULL,
  `cellphone_C` varchar(50) DEFAULT NULL,
  `PTT` varchar(50) DEFAULT NULL,
  `intercom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `apartment` varchar(30) DEFAULT NULL,
  `mailaddress` varchar(50) DEFAULT NULL,
  `homephoneA` varchar(50) DEFAULT NULL,
  `homephoneB` varchar(50) DEFAULT NULL,
  `homephoneC` varchar(50) DEFAULT NULL,
  `cellphoneA` varchar(50) DEFAULT NULL,
  `cellphoneB` varchar(50) DEFAULT NULL,
  `cellphoneC` varchar(50) DEFAULT NULL,
  `Others` varchar(50) DEFAULT NULL,
  `map_location` varchar(20) DEFAULT NULL,
  `mapID` int(11) DEFAULT NULL,
  `displayPD` varchar(20) DEFAULT NULL,
  `itemID` varchar(5) DEFAULT NULL,
  `wkstID` int(11) DEFAULT NULL,
  `cardunitCode` varchar(5) DEFAULT NULL,
  `cardEcapNumber` varchar(5) DEFAULT NULL,
  `supID` varchar(30) DEFAULT NULL,
  `displayPI` char(3) DEFAULT NULL,
  `PIM_address` varchar(60) DEFAULT NULL,
  `PIM_apartment` varchar(10) DEFAULT NULL,
  `PIM_city` varchar(30) DEFAULT NULL,
  `PIM_zipcode` varchar(5) DEFAULT NULL,
  `ECI1_name` varchar(60) DEFAULT NULL,
  `ECI1_relationship` varchar(60) DEFAULT NULL,
  `ECI1_address` varchar(60) DEFAULT NULL,
  `ECI1_apartment` varchar(10) DEFAULT NULL,
  `ECI1_city` varchar(30) DEFAULT NULL,
  `ECI1_zipcode` varchar(5) DEFAULT NULL,
  `ECI1_phoneA` varchar(50) DEFAULT NULL,
  `ECI1_phoneB` varchar(50) DEFAULT NULL,
  `ECI1_phoneC` varchar(50) DEFAULT NULL,
  `ECI1W_phoneA` varchar(50) DEFAULT NULL,
  `ECI1W_phoneB` varchar(50) DEFAULT NULL,
  `ECI1W_phoneC` varchar(50) DEFAULT NULL,
  `ECI1WE_phoneD` varchar(50) DEFAULT NULL,
  `ECI1O_phoneA` varchar(50) DEFAULT NULL,
  `ECI1O_phoneB` varchar(50) DEFAULT NULL,
  `ECI1O_phoneC` varchar(50) DEFAULT NULL,
  `ECI2_name` varchar(60) DEFAULT NULL,
  `ECI2_relationship` varchar(60) DEFAULT NULL,
  `ECI2_address` varchar(60) DEFAULT NULL,
  `ECI2_apartment` varchar(10) DEFAULT NULL,
  `ECI2_city` varchar(30) DEFAULT NULL,
  `ECI2_zipcode` varchar(5) DEFAULT NULL,
  `ECI2_phoneA` varchar(50) DEFAULT NULL,
  `ECI2_phoneB` varchar(50) DEFAULT NULL,
  `ECI2_phoneC` varchar(50) DEFAULT NULL,
  `ECI2W_phoneA` varchar(50) DEFAULT NULL,
  `ECI2W_phoneB` varchar(50) DEFAULT NULL,
  `ECI2W_phoneC` varchar(50) DEFAULT NULL,
  `ECI2WE_phoneD` varchar(50) DEFAULT NULL,
  `ECI2O_phoneA` varchar(50) DEFAULT NULL,
  `ECI2O_phoneB` varchar(50) DEFAULT NULL,
  `ECI2O_phoneC` varchar(50) DEFAULT NULL,
  `flagtemp` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsCardDataID`,`fstrID`),
  UNIQUE KEY `NewIndex1` (`fstrID`),
  FULLTEXT KEY `Name` (`fstrLastName`,`fstrFirstName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `tblcarddata` WRITE;
/*!40000 ALTER TABLE `tblcarddata` DISABLE KEYS */;

INSERT INTO `tblcarddata` (`idsCardDataID`, `idfConfigID`, `fstrLastName`, `fstrFirstName`, `fstrMidName`, `fstrID`, `StatusID`, `Paylocation`, `EvalMo`, `probstart`, `probend`, `fdatRecDate`, `idfReportID`, `fstrBarCode`, `TextField01`, `TextField02`, `TextField03`, `TextField04`, `TextField05`, `TextField06`, `TextField07`, `TextField08`, `TextField09`, `TextField10`, `TextField11`, `TextField12`, `TextField13`, `TextField14`, `TextField15`, `TextField16`, `TextField17`, `TextField18`, `TextField19`, `TextField20`, `TextField22`, `TextField21`, `TextField23`, `TextField24`, `TextField25`, `TextField26`, `TextField27`, `TextField28`, `TextField29`, `TextField30`, `TextField31`, `TextField32`, `TextField33`, `TextField34`, `TextField35`, `TextField36`, `TextField37`, `TextField38`, `TextField39`, `TextField40`, `TextField41`, `TextField42`, `TextField43`, `TextField44`, `TextField45`, `DateField01`, `DateField02`, `DateField03`, `DateField04`, `DateField05`, `fstrAddress`, `fstrCity`, `fstrState`, `fstrZip`, `blnBatchPrint`, `intTimesPrinted`, `fdatTimeStamp`, `fintRecPool`, `address`, `city`, `zipcode`, `fstrSS`, `prefix`, `suffix`, `aka`, `phoneA`, `phoneB`, `phoneC`, `pagerA`, `pagerB`, `pagerC`, `cellphone_A`, `cellphone_B`, `cellphone_C`, `PTT`, `intercom`, `email`, `apartment`, `mailaddress`, `homephoneA`, `homephoneB`, `homephoneC`, `cellphoneA`, `cellphoneB`, `cellphoneC`, `Others`, `map_location`, `mapID`, `displayPD`, `itemID`, `wkstID`, `cardunitCode`, `cardEcapNumber`, `supID`, `displayPI`, `PIM_address`, `PIM_apartment`, `PIM_city`, `PIM_zipcode`, `ECI1_name`, `ECI1_relationship`, `ECI1_address`, `ECI1_apartment`, `ECI1_city`, `ECI1_zipcode`, `ECI1_phoneA`, `ECI1_phoneB`, `ECI1_phoneC`, `ECI1W_phoneA`, `ECI1W_phoneB`, `ECI1W_phoneC`, `ECI1WE_phoneD`, `ECI1O_phoneA`, `ECI1O_phoneB`, `ECI1O_phoneC`, `ECI2_name`, `ECI2_relationship`, `ECI2_address`, `ECI2_apartment`, `ECI2_city`, `ECI2_zipcode`, `ECI2_phoneA`, `ECI2_phoneB`, `ECI2_phoneC`, `ECI2W_phoneA`, `ECI2W_phoneB`, `ECI2W_phoneC`, `ECI2WE_phoneD`, `ECI2O_phoneA`, `ECI2O_phoneB`, `ECI2O_phoneC`, `flagtemp`)
VALUES
	(1,NULL,'Korella','Woonton',NULL,'467657','PERMANENT','AW14','2','2017-10-21','2018-08-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,NULL,'Aloise','Mabs',NULL,'537954','TEMPORARY','AW08','6','2017-04-11','2019-01-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(505632,NULL,'Herrera','Leopoldo',NULL,'415506',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `tblcarddata` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
