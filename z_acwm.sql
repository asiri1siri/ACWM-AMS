-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 05:25 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acwm`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `getUserRoles` (`employeeid` INT, `appid` VARCHAR(256)) RETURNS VARCHAR(2000) CHARSET utf8 BEGIN
DECLARE APPROLES varchar (2000);
set APPROLES = '';
SELECT
GROUP_CONCAT(ROLE) into APPROLES
FROM
(SELECT
AI.NAME,
AI.ACRONYMN,
UR.EMPLOYEE_ID,
R.ROLE
FROM
USER_ROLES UR
JOIN APPLICATION_ROLES AR
ON UR.ROLE_UID = AR.UID
JOIN APPLICATION_INFORMATION AI
ON AI.UID = AR.APPLICATION_UID
JOIN ROLES R
ON R.UID = AR.ROLE_UID
JOIN my_intranet_db.tblcarddata c
ON c.fstrID = UR.EMPLOYEE_ID
WHERE UR.EMPLOYEE_ID = employeeid
AND AI.UID = appid
AND UR.STATUS = 'A'
AND AR.STATUS = 'A'
AND AI.STATUS = 'A'
ORDER BY AI.NAME,
AI.ACRONYMN,
UR.EMPLOYEE_ID,
R.ROLE) T_APPROLES;
return APPROLES;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `application_information`
--

CREATE TABLE `application_information` (
  `UID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ACRONYMN` varchar(16) DEFAULT NULL,
  `BUREAU_CODE` varchar(5) NOT NULL,
  `DIVISION_CODE` varchar(5) NOT NULL,
  `STATUS` varchar(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application_information`
--

INSERT INTO `application_information` (`UID`, `NAME`, `ACRONYMN`, `BUREAU_CODE`, `DIVISION_CODE`, `STATUS`) VALUES
('13347394-82b3-11e7-b36c-005056a5b2f3', 'INVENTORY', 'INVENTORY_DA', '', '', 'A'),
('a83d9728-82c1-11e7-b36c-005056a5b2f3', 'ICS', 'ICS_APPLICATION', '', '', 'A'),
('ea88d656-82c1-11e7-b36c-005056a5b2f3', 'ICS BUD', 'ICS_APPLICATIONB', '', '', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `application_information_lists`
--

CREATE TABLE `application_information_lists` (
  `APP_UID` varchar(255) DEFAULT NULL,
  `UID` varchar(255) DEFAULT NULL,
  `NAME` varchar(128) DEFAULT NULL,
  `KLAVEM` varchar(64) DEFAULT NULL,
  `VALUE` varchar(64) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='KLAVEM column = KEY, taken from the latin CLAVEN meaning key';

--
-- Dumping data for table `application_information_lists`
--

INSERT INTO `application_information_lists` (`APP_UID`, `UID`, `NAME`, `KLAVEM`, `VALUE`, `STATUS`) VALUES
('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3', 'cbbfb894-1c1c-11e8-92d4-005056a5b2f3', 'FISCAL_YEAR', NULL, '2018', 'A'),
('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3', 'ca7c0c7a-82c1-11e7-b36c-005056a5b2f3', 'FISCAL_YEAR', NULL, '2017', 'A'),
('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3', 'cbbfbb8c-1c1c-11e8-92d4-005056a5b2f3', 'FISCAL_YEAR', NULL, '2016', 'A'),
('ca7c0c7a-82c1-11e7-b36c-005056a5b2f3', 'ca7c0c7a-82c1-11e7-b36c-005056a5b2f3', 'FISCAL_YEAR', NULL, '2015', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `application_roles`
--

CREATE TABLE `application_roles` (
  `UID` varchar(255) DEFAULT NULL,
  `APPLICATION_UID` varchar(256) DEFAULT NULL,
  `ROLE_UID` varchar(256) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application_roles`
--

INSERT INTO `application_roles` (`UID`, `APPLICATION_UID`, `ROLE_UID`, `STATUS`) VALUES
('8a6ffeb4-82c3-11e7-b36c-005056a5b2f3', '13347394-82b3-11e7-b36c-005056a5b2f3', '59a6ceaa-7d1b-11e7-b36c-005056a5b2f3', 'A'),
('8a70063e-82c3-11e7-b36c-005056a5b2f3', '13347394-82b3-11e7-b36c-005056a5b2f3', '43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', 'A'),
('8a700d28-82c3-11e7-b36c-005056a5b2f3', '13347394-82b3-11e7-b36c-005056a5b2f3', '43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', ''),
('8a6ffc8e-82c3-11e7-b36c-005056a5b2f3', '13347394-82b3-11e7-b36c-005056a5b2f3', '43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `GUID` int(11) NOT NULL,
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
  `IMAGE` varchar(255) NOT NULL,
  `ASSET_IMAGE` varchar(255) DEFAULT NULL,
  `LOCATION_IMAGE` varchar(255) DEFAULT NULL,
  `ASSIGNEE_IMAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`GUID`, `LOCATION`, `ASSIGNEE`, `DESCRIPTION`, `MAKE`, `MODEL`, `SERIALNO`, `COUNTYNO`, `ACDATE`, `COST`, `COMMENTS`, `STATUS`, `CATEGORY`, `BINVENT`, `SUBLOCATION`, `BUREAU`, `IMAGE`, `ASSET_IMAGE`, `LOCATION_IMAGE`, `ASSIGNEE_IMAGE`) VALUES
(2, 'South Gate', 'Unassigned', 'Blue', 'Nissan', 'GTR', 'HN3456XV', 65432, '2019-01-29 19:34:50', '4534534.00', 'N/A', 'F', 'Trailer', 18740, '15', 'Admin', '', NULL, NULL, NULL),
(3, 'South Gate', 'Unassigned', 'Purple', 'Ford', 'F150', '1JNK456', 65432, '2019-01-29 19:34:50', '43541.00', 'N/A', 'F', 'Trailer', 18740, '15', 'Admin', '', NULL, NULL, NULL),
(30, 'Arcadia', 'Unassigned', 'Blue', 'Nissan', 'GTR', 'HCVBN6XV', 65432, '2019-01-29 19:34:50', '145.66', 'N/A', 'F', 'Trailer', 18740, 'N/A', 'Admin', '', NULL, NULL, NULL),
(50, 'Arcadia', 'Unassigned', 'black', 'Chevy', 'Silverado', 'VGH7654', 65432, '2019-01-29 19:34:50', '0.00', 'Small Conf Rm', 'F', 'Audio Visual', 18740, 'Small Conf Rm', 'Admin', '', NULL, NULL, NULL),
(99, 'fVV', 'tuy', 'hgvh', 'bgvhj', 'bkjg ', 'jh', 0, '2019-03-12 00:22:11', '84656.44', 'jhb', 'b', 'dsf', 0, 'jb', 'Admin', '', NULL, NULL, NULL),
(10020, 'sdf', 'fdas', 'asdf', 'afds', 'dfsa', 'df', 0, '2019-04-12 06:42:39', 'fd', '', '', '', 0, '', '', '', NULL, NULL, NULL),
(10021, 'Metro Office', 'ada', 'da', 'sda', 'da', 'asd', 88259, '2019-04-12 08:13:26', '00', 'asd', 'F', 'ads', 18732, 'ads', 'ADMIN', '', 'upload/wolf.jpg', 'upload/wolf.jpg', 'upload/wolf.jpg'),
(10022, '', '', '', '', '', '', 0, '2019-04-12 15:19:13', '', '', '', '', 0, 'null', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bureaus`
--

CREATE TABLE `bureaus` (
  `BUREAU` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bureaus`
--

INSERT INTO `bureaus` (`BUREAU`) VALUES
('ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `b_invent_unitcodes`
--

CREATE TABLE `b_invent_unitcodes` (
  `B_INVENT_UNITCODE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b_invent_unitcodes`
--

INSERT INTO `b_invent_unitcodes` (`B_INVENT_UNITCODE`) VALUES
(18732),
(18740),
(18742),
(18743);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `id`) VALUES
('Butt,James', 63166),
('Darakjy,Josephine', 70116),
('Venere,Art', 48116),
('Paprocki,Lenna', 80140),
('Foller,Donette', 99050),
('Morasca,Simona', 45011),
('Tollner,Mitsue', 44512),
('Dilliard,Leota', 94552),
('Wieser,Sage', 56741),
('Marrier,Kris', 57505),
('Amigon,Minna', 21246),
('Maclead,Abel', 66215),
('Caldarera,Kiley', 90054),
('Albares,Cammy', 91522),
('Poquette,Mattie', 34591),
('Garufi,Meaghan', 21179),
('Rim,Gladys', 96741),
('Whobrey,Yuki', 41258);

-- --------------------------------------------------------

--
-- Table structure for table `funding_orgs`
--

CREATE TABLE `funding_orgs` (
  `FUNDING_ORG_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funding_orgs`
--

INSERT INTO `funding_orgs` (`FUNDING_ORG_NO`) VALUES
(18743);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `GUID` varchar(255) CHARACTER SET latin1 NOT NULL,
  `VNO` int(11) NOT NULL,
  `LOCATION` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ASSIGNEE` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `MAKE` varchar(255) CHARACTER SET latin1 NOT NULL,
  `MODEL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `SERIAL_NO` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `COUNTY_NO` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ACQ_DATE` date DEFAULT NULL,
  `COST` decimal(10,0) DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `STATUS_` varchar(255) CHARACTER SET latin1 NOT NULL,
  `CATEGORY` varchar(255) CHARACTER SET latin1 NOT NULL,
  `B_INVENT_CODE` int(11) NOT NULL,
  `SUBLOCATION` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `BUREAU` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ASSIGNED_TO` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `LICENSE` varchar(255) CHARACTER SET latin1 NOT NULL,
  `YEAR_NO` int(11) NOT NULL,
  `VIN` varchar(255) CHARACTER SET latin1 NOT NULL,
  `UNIT` int(11) NOT NULL,
  `FUNDING_ORG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `LOCATION` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`LOCATION`) VALUES
('Arcadia'),
('Arcadia Hq'),
('Metro Office'),
('Olive View'),
('South Gate');

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `MAKE` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`MAKE`) VALUES
('Ford'),
('Infiniti'),
('Toyota');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `UID` varchar(256) DEFAULT NULL,
  `ROLE` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`UID`, `ROLE`) VALUES
('UID', 'ROLE'),
('59a6ceaa-7d1b-11e7-b36c-005056a5b2f3', 'MANAGER'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f3', 'ADMIN'),
('a054ead2-ce54-11e7-92d4-005056a5b2f3', 'USER_E'),
('b19363a0-ce54-11e7-92d4-005056a5b2f3', 'USER_FV'),
('25c3e548-fbc2-11e7-92d4-005056a5b2f3', 'ADMIN'),
('baddd044-fbcc-11e7-92d4-005056a5b2f3', 'SCANNER_ADMIN'),
('c6ba1972-fbcc-11e7-92d4-005056a5b2f3', 'DEVICE_USER'),
('d7bb20a4-fbcc-11e7-92d4-005056a5b2f3', 'DEVICE_ADMIN'),
('a5b44cb4-fbce-11e7-92d4-005056a5b2f3', 'DEVICE_MANAGER'),
('9a1f32c4-fbce-11e7-92d4-005056a5b2f3', 'SCANNER_MANAGER'),
('ab84587e-64f0-11e8-8e81-005056a5b2f3', 'ITADMIN'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f4', 'ASUser'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f5', 'EPUser'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f6', 'PEPQUser'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f7', 'WHPMUser'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f8', 'WMUser'),
('5e72c1dc-7d1b-11e7-b36c-005056a5b2f9', 'BFUser'),
('43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', 'MANAGER'),
('43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', 'USER'),
('43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', 'ADMIN'),
('25c3e548-fbc2-11e7-92d4-005056a5b2f3', 'MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `rooms_cubicles`
--

CREATE TABLE `rooms_cubicles` (
  `id` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `room_cubicle_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms_cubicles`
--

INSERT INTO `rooms_cubicles` (`id`, `location`, `room_cubicle_number`) VALUES
(1, 'Arcadia', 1),
(2, 'Arcadia', 2),
(3, 'Arcadia', 3),
(4, 'Arcadia', 4),
(5, 'Arcadia', 5),
(6, 'Arcadia', 6),
(7, 'Arcadia', 7),
(8, 'Arcadia', 8),
(9, 'Arcadia', 9),
(10, 'Arcadia', 10),
(11, 'Arcadia', 11),
(12, 'Arcadia', 12),
(13, 'Arcadia', 13),
(14, 'Arcadia', 14),
(15, 'Arcadia', 15),
(16, 'Arcadia', 16),
(17, 'Arcadia', 17),
(18, 'Arcadia', 18),
(19, 'Arcadia', 19),
(20, 'Arcadia', 20),
(21, 'Arcadia', 21),
(22, 'Arcadia', 22),
(23, 'Arcadia', 23),
(24, 'Arcadia', 24),
(25, 'Arcadia', 25),
(26, 'Arcadia', 26),
(27, 'Arcadia', 27),
(28, 'Arcadia', 28),
(29, 'Arcadia', 29),
(30, 'Arcadia', 30),
(31, 'Arcadia', 31),
(32, 'Arcadia', 32),
(33, 'Arcadia', 33),
(34, 'Arcadia', 34),
(35, 'Arcadia', 35),
(36, 'Arcadia', 36),
(37, 'Arcadia', 37),
(38, 'Arcadia', 38),
(39, 'Arcadia', 39),
(40, 'Arcadia', 40),
(41, 'Arcadia', 41),
(42, 'Arcadia', 42),
(43, 'Arcadia', 43),
(44, 'Arcadia', 44),
(45, 'Arcadia', 45),
(46, 'Arcadia', 46),
(47, 'Arcadia', 47),
(48, 'Arcadia', 48),
(49, 'Arcadia', 49),
(50, 'Arcadia', 50),
(51, 'Arcadia', 51),
(52, 'Arcadia', 52),
(53, 'Arcadia', 53),
(54, 'Arcadia', 54),
(55, 'Arcadia', 55),
(56, 'Arcadia', 56),
(57, 'Arcadia', 57),
(58, 'Arcadia', 58),
(59, 'Arcadia', 59),
(60, 'Arcadia', 60),
(61, 'Arcadia', 61),
(62, 'Arcadia', 62),
(63, 'Arcadia', 63),
(64, 'Arcadia', 64),
(65, 'Arcadia', 65),
(66, 'Arcadia', 66),
(67, 'Arcadia', 67),
(68, 'Arcadia', 68),
(69, 'Arcadia', 69),
(70, 'Arcadia', 70),
(71, 'Arcadia', 71),
(72, 'Arcadia', 72),
(73, 'Arcadia', 73),
(74, 'Arcadia', 74),
(75, 'Arcadia', 75),
(76, 'Arcadia', 76),
(77, 'Arcadia', 77),
(78, 'Arcadia', 78),
(79, 'Arcadia', 79),
(80, 'Arcadia', 80),
(81, 'Arcadia', 81),
(82, 'Arcadia', 82),
(83, 'Arcadia', 83),
(84, 'Arcadia', 84),
(85, 'Arcadia', 85),
(86, 'Arcadia', 86),
(87, 'Arcadia', 87),
(88, 'Arcadia', 88),
(89, 'Arcadia', 89),
(90, 'Arcadia', 90),
(91, 'Arcadia', 91),
(92, 'Arcadia', 92),
(93, 'Arcadia', 93),
(94, 'Arcadia', 94),
(95, 'Arcadia', 95),
(96, 'Arcadia', 96),
(97, 'Arcadia', 97),
(98, 'Arcadia', 98),
(99, 'Arcadia', 99),
(100, 'Arcadia', 100),
(101, 'Arcadia', 101),
(102, 'Arcadia', 102),
(103, 'Arcadia', 103),
(104, 'Arcadia', 104),
(105, 'Arcadia', 105),
(106, 'Arcadia', 106),
(107, 'Arcadia', 107),
(108, 'Arcadia', 108),
(109, 'Arcadia', 109),
(110, 'Arcadia', 110),
(111, 'Arcadia', 111),
(112, 'Arcadia', 112),
(113, 'Arcadia', 113),
(114, 'Arcadia', 114),
(115, 'Arcadia', 115),
(116, 'Arcadia', 116),
(117, 'Arcadia', 117),
(118, 'Arcadia', 118),
(119, 'Arcadia', 119),
(120, 'Arcadia', 120),
(121, 'Arcadia', 121),
(122, 'Arcadia', 122),
(123, 'Arcadia', 123),
(124, 'Arcadia', 124),
(125, 'Arcadia', 125),
(126, 'Arcadia', 126),
(127, 'Arcadia', 127),
(128, 'Arcadia', 128),
(129, 'Arcadia', 129),
(130, 'Arcadia', 130),
(131, 'Arcadia', 131),
(132, 'Arcadia', 132),
(133, 'Arcadia', 133),
(134, 'Arcadia', 134),
(135, 'Arcadia', 135),
(136, 'Arcadia', 136),
(137, 'Arcadia', 137),
(138, 'Arcadia', 138),
(139, 'Arcadia', 139),
(140, 'Arcadia', 140),
(141, 'Arcadia', 141),
(142, 'Arcadia', 142),
(143, 'Arcadia', 143),
(144, 'Arcadia', 144),
(145, 'Arcadia', 145),
(146, 'Arcadia', 146),
(147, 'Arcadia', 147),
(148, 'Arcadia', 148),
(149, 'Arcadia', 149),
(150, 'Arcadia', 150),
(151, 'Arcadia', 151),
(152, 'Arcadia', 152),
(153, 'Arcadia', 153),
(154, 'Arcadia', 154),
(155, 'Arcadia', 155),
(156, 'Arcadia', 156),
(157, 'Arcadia', 157),
(158, 'Arcadia', 158),
(159, 'Arcadia', 159),
(160, 'Arcadia', 160),
(161, 'Arcadia', 161),
(162, 'Arcadia', 162),
(163, 'Arcadia', 163),
(164, 'Arcadia', 164),
(165, 'Arcadia', 165),
(166, 'Arcadia', 166),
(167, 'Arcadia', 167),
(168, 'Arcadia', 168),
(169, 'Arcadia', 169),
(170, 'Arcadia', 170),
(171, 'Arcadia', 171),
(172, 'Arcadia', 172),
(173, 'Arcadia', 173),
(174, 'Arcadia', 174),
(175, 'Arcadia', 175),
(176, 'Arcadia', 176),
(177, 'Arcadia', 177),
(178, 'Arcadia', 178),
(179, 'Arcadia', 179),
(180, 'Arcadia', 180),
(181, 'Arcadia', 181),
(182, 'Arcadia', 182),
(183, 'Arcadia', 183),
(184, 'Arcadia', 184),
(185, 'Arcadia', 185),
(186, 'Arcadia', 186),
(187, 'Arcadia', 187),
(188, 'Arcadia', 188),
(189, 'Arcadia', 189),
(190, 'Arcadia', 190),
(191, 'Arcadia', 191),
(192, 'Arcadia', 192),
(193, 'Arcadia', 193),
(194, 'Arcadia', 194),
(195, 'Arcadia', 195),
(196, 'Arcadia', 196),
(197, 'Arcadia', 197),
(198, 'Arcadia', 198),
(199, 'Arcadia', 199),
(200, 'Arcadia', 200),
(201, 'South Gate', 1),
(202, 'South Gate', 2),
(203, 'South Gate', 3),
(204, 'South Gate', 4),
(205, 'South Gate', 5),
(206, 'South Gate', 6),
(207, 'South Gate', 7),
(208, 'South Gate', 8),
(209, 'South Gate', 9),
(210, 'South Gate', 10),
(211, 'South Gate', 11),
(212, 'South Gate', 12),
(213, 'South Gate', 13),
(214, 'South Gate', 14),
(215, 'South Gate', 15),
(216, 'South Gate', 16),
(217, 'South Gate', 17),
(218, 'South Gate', 18),
(219, 'South Gate', 19),
(220, 'South Gate', 20),
(221, 'South Gate', 21),
(222, 'South Gate', 22),
(223, 'South Gate', 23),
(224, 'South Gate', 24),
(225, 'South Gate', 25),
(226, 'South Gate', 26),
(227, 'South Gate', 27),
(228, 'South Gate', 28),
(229, 'South Gate', 29),
(230, 'South Gate', 30),
(231, 'South Gate', 31),
(232, 'South Gate', 32),
(233, 'South Gate', 33),
(234, 'South Gate', 34),
(235, 'South Gate', 35),
(236, 'South Gate', 36),
(237, 'South Gate', 37),
(238, 'South Gate', 38),
(239, 'South Gate', 39),
(240, 'South Gate', 40),
(241, 'South Gate', 41),
(242, 'South Gate', 42),
(243, 'South Gate', 43),
(244, 'South Gate', 44),
(245, 'South Gate', 45),
(246, 'South Gate', 46),
(247, 'South Gate', 47),
(248, 'South Gate', 48),
(249, 'South Gate', 49),
(250, 'South Gate', 50),
(251, 'South Gate', 51),
(252, 'South Gate', 52),
(253, 'South Gate', 53),
(254, 'South Gate', 54),
(255, 'South Gate', 55),
(256, 'South Gate', 56),
(257, 'South Gate', 57),
(258, 'South Gate', 58),
(259, 'South Gate', 59),
(260, 'South Gate', 60),
(261, 'South Gate', 61),
(262, 'South Gate', 62),
(263, 'South Gate', 63),
(264, 'South Gate', 64),
(265, 'South Gate', 65),
(266, 'South Gate', 66),
(267, 'South Gate', 67),
(268, 'South Gate', 68),
(269, 'South Gate', 69),
(270, 'South Gate', 70),
(271, 'South Gate', 71),
(272, 'South Gate', 72),
(273, 'South Gate', 73),
(274, 'South Gate', 74),
(275, 'South Gate', 75),
(276, 'South Gate', 76),
(277, 'South Gate', 77),
(278, 'South Gate', 78),
(279, 'South Gate', 79),
(280, 'South Gate', 80),
(281, 'South Gate', 81),
(282, 'South Gate', 82),
(283, 'South Gate', 83),
(284, 'South Gate', 84),
(285, 'South Gate', 85),
(286, 'South Gate', 86),
(287, 'South Gate', 87),
(288, 'South Gate', 88),
(289, 'South Gate', 89),
(290, 'South Gate', 90),
(291, 'South Gate', 91),
(292, 'South Gate', 92),
(293, 'South Gate', 93),
(294, 'South Gate', 94),
(295, 'South Gate', 95),
(296, 'South Gate', 96),
(297, 'South Gate', 97),
(298, 'South Gate', 98),
(299, 'South Gate', 99),
(300, 'South Gate', 100);

-- --------------------------------------------------------

--
-- Table structure for table `salvage_asset`
--

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
  `IMAGE` varchar(255) DEFAULT NULL,
  `ASSET_IMAGE` varchar(255) DEFAULT NULL,
  `LOCATION_IMAGE` varchar(255) DEFAULT NULL,
  `ASSIGNEE_IMAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salvage_asset`
--

INSERT INTO `salvage_asset` (`GUID`, `LOCATION`, `ASSIGNEE`, `DESCRIPTION`, `MAKE`, `MODEL`, `SERIALNO`, `COUNTYNO`, `ACDATE`, `COST`, `COMMENTS`, `STATUS`, `CATEGORY`, `BINVENT`, `SUBLOCATION`, `BUREAU`, `IMAGE`, `ASSET_IMAGE`, `LOCATION_IMAGE`, `ASSIGNEE_IMAGE`) VALUES
(1, 'Arcadia', 'Unassigned', 'Yellow', 'Dell', 'Yellow', '9846d864d98', 88259, '2019-03-21 02:08:58', '1049.00', '', 'P', 'Toilet', 18740, '8', '', '', NULL, NULL, NULL),
(6, 'Arcadia', 'Unassigned', 'Green', 'Nissan', 'Green', 'HWER456XV', 65432, '2019-01-29 19:34:50', '23455.00', 'N/A', 'F', 'Trailer', 18740, '1', '', '', 'upload/wolf.jpg', 'upload/wolf.jpg', 'upload/wolf.jpg'),
(7, 'South Gate', 'Unassigned', 'Red', 'Ford', 'F150', '1JIJH56', 65432, '2019-01-29 19:34:50', '26543.00', 'N/A', 'F', 'Trailer', 18740, 'N/A', 'Admin', NULL, NULL, NULL, NULL),
(40, 'South Gate', 'Unassigned', 'Red', 'Ford', 'F150', '1V45456', 65432, '2019-01-29 19:34:50', '876564.50', 'N/A', 'F', 'Trailer', 18740, 'N/A', 'Admin', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salvage_vehicle`
--

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
  `IMAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `STATUS_` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`STATUS_`) VALUES
('F'),
('P');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `UNIT_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`UNIT_NO`) VALUES
(18743);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `EMPLOYEE_ID` varchar(12) NOT NULL,
  `ROLE_UID` varchar(256) NOT NULL,
  `GRANTABLE` varchar(1) DEFAULT 'N',
  `STATUS` varchar(1) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`EMPLOYEE_ID`, `ROLE_UID`, `GRANTABLE`, `STATUS`) VALUES
('415506', '8a6ffc8e-82c3-11e7-b36c-005056a5b2f3', 'Y', 'A'),
('634774', '8a70063e-82c3-11e7-b36c-005056a5b2f3', 'N', 'A'),
('123456', '43cdc4c6-7d1b-11e7-b36c-005056a5b2f3', 'N', 'A'),
('537954', '8a6ffeb4-82c3-11e7-b36c-005056a5b2f3', 'Y', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
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
  `IMAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`GUID`, `VNO`, `ASSIGNEDTO`, `LICENSE`, `MAKE`, `MODEL`, `YEAR`, `HOUSED`, `VIN`, `UNIT`, `DESCRIPTION`, `BUREAU`, `FUNDINGORG`, `IMAGE`) VALUES
(1, 44, 'booboo', '1234ABR', 'Honda', 'Accord', 2019, 'Arcadia', '456789VGHJKLON', '46576', 'Black', 'Admin', '18456', NULL),
(2, 3, 'Unassigned ', '543GHJM', 'Ford', 'F150', 2010, 'Arcadia', '123456DCVGHRS', '18456', 'Red', 'Admin', '46943', NULL),
(3, 465, 'Tom', '137GJK2', 'Chevy', 'Silverado ', 2009, 'Arcadia', '98765FGHJA', '18542', 'Blue', 'Admin', '18542', NULL),
(4, 4, 'Unassigned ', '543GHJM', 'BMW', 'M6', 2016, 'HQ', '456789VGHJKLON', '18456', 'Black', 'Admin', '46943', NULL),
(5, 520, 'Moises', 'TOOFAST', 'Nissan', 'R-35', 2016, 'Arcadia', '1234567NHGDSXCV', '16782', 'Blue', 'Admin', '16782', NULL),
(6, 235, 'Unassigned ', '543BHJ2', 'BMW ', 'M5', 2010, 'South Gate', 'NJHNI123987WX', '16723', 'White', 'Admin', '16723', NULL),
(7, 190, 'Unassigned ', 'FY232IK', 'Tesla', 'Model S', 2014, 'HQ', '56789VFTYUKM', '14522', 'Red', 'Admin', '14522', NULL),
(8, 1234, 'Unassigned', '610JHB2', 'Ford', 'F250', 2011, 'South Gate', 'BVGHJL12345678', '18452', 'Black', 'Admin', '18452', NULL),
(9, 525, 'Unassigned', '78NJIB2', 'Chevy', 'Malibu', 2013, 'Arcadia', 'GYJKOIU234567', '18451', 'White', 'Admin ', '18021', NULL),
(10, 7812, 'Unassigned', '681BHN1', 'Nissan', 'Titans', 2011, 'South Gate', 'BGUIKJH12345', '11111', 'Blue', 'Admin', '11111', NULL),
(11, 74, 'Unassigned ', '098HJK12', 'Dodge', 'Ram', 2010, 'Arcadia ', 'BVGYUK12345', '11111', 'Red', 'Admin', '11111', NULL),
(12, 1226, 'Unassigned ', 'FGBN123', 'Toyota', 'Tundra', 2013, 'Acardia', 'VGH987654BVG', '22222', 'White', 'Admin', '22222', NULL),
(13, 7845, 'ibj', 'nb', 'u', 'ib', 0, 'hb', 'hvbjnk', 'hbj', 'nb', 'jnh', 'bjbh', NULL),
(14, 97, 'ybu', 'vyibu', 'y89ub', '8yvbu', 0, 'tvy', 't8vy', 't8vybu', 't8vybu', '8tovyb', 'utvy', NULL),
(15, 789, 'ybu', 'vyibu', 'y89ub', '8yvbu', 0, 'tvy', 't8vy', 't8vybu', 't8vybu', '8tovyb', 'utvy', NULL),
(16, 1996, 'Ma Boi', 'dontneedone', 'it', 'lotta', 2019, 'ye', '84864646464', '1', 'Orange', 'Ma House', '89461', NULL),
(17, 85, 'dafs', 'ihb', 'j', 'bo', 987, 'hbj', '96532', '651', 'fyguchvb', 'gjh', '949', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `YEAR_NO` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_information`
--
ALTER TABLE `application_information`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`GUID`);

--
-- Indexes for table `bureaus`
--
ALTER TABLE `bureaus`
  ADD PRIMARY KEY (`BUREAU`);

--
-- Indexes for table `b_invent_unitcodes`
--
ALTER TABLE `b_invent_unitcodes`
  ADD PRIMARY KEY (`B_INVENT_UNITCODE`);

--
-- Indexes for table `funding_orgs`
--
ALTER TABLE `funding_orgs`
  ADD PRIMARY KEY (`FUNDING_ORG_NO`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`GUID`),
  ADD KEY `MAKE` (`MAKE`),
  ADD KEY `LOCATION` (`LOCATION`),
  ADD KEY `STATUS_` (`STATUS_`),
  ADD KEY `B_INVENT_CODE` (`B_INVENT_CODE`),
  ADD KEY `UNIT` (`UNIT`),
  ADD KEY `FUNDING_ORG` (`FUNDING_ORG`),
  ADD KEY `BUREAU` (`BUREAU`),
  ADD KEY `YEAR_NO` (`YEAR_NO`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`MAKE`);

--
-- Indexes for table `rooms_cubicles`
--
ALTER TABLE `rooms_cubicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salvage_asset`
--
ALTER TABLE `salvage_asset`
  ADD PRIMARY KEY (`GUID`);

--
-- Indexes for table `salvage_vehicle`
--
ALTER TABLE `salvage_vehicle`
  ADD PRIMARY KEY (`GUID`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`STATUS_`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`UNIT_NO`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`GUID`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`YEAR_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `GUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10023;

--
-- AUTO_INCREMENT for table `salvage_vehicle`
--
ALTER TABLE `salvage_vehicle`
  MODIFY `GUID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `GUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`MAKE`) REFERENCES `makes` (`MAKE`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`LOCATION`) REFERENCES `locations` (`LOCATION`),
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`STATUS_`) REFERENCES `statuses` (`STATUS_`),
  ADD CONSTRAINT `items_ibfk_4` FOREIGN KEY (`B_INVENT_CODE`) REFERENCES `b_invent_unitcodes` (`B_INVENT_UNITCODE`),
  ADD CONSTRAINT `items_ibfk_5` FOREIGN KEY (`UNIT`) REFERENCES `units` (`UNIT_NO`),
  ADD CONSTRAINT `items_ibfk_6` FOREIGN KEY (`FUNDING_ORG`) REFERENCES `funding_orgs` (`FUNDING_ORG_NO`),
  ADD CONSTRAINT `items_ibfk_7` FOREIGN KEY (`BUREAU`) REFERENCES `bureaus` (`BUREAU`),
  ADD CONSTRAINT `items_ibfk_8` FOREIGN KEY (`YEAR_NO`) REFERENCES `years` (`YEAR_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
