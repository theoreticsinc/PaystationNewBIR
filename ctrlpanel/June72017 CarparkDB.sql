-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2017 at 11:26 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpark`
--
DROP DATABASE IF EXISTS `carpark`;
CREATE DATABASE IF NOT EXISTS `carpark` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `carpark`;

-- --------------------------------------------------------

--
-- Table structure for table `carpark_logs`
--

DROP TABLE IF EXISTS `carpark_logs`;
CREATE TABLE `carpark_logs` (
  `ReceiptNumber` int(11) NOT NULL,
  `CashierID` int(11) DEFAULT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(1) DEFAULT NULL,
  `TimeIN` datetime DEFAULT NULL,
  `TimeOUT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carpark_logs`
--

INSERT INTO `carpark_logs` (`ReceiptNumber`, `CashierID`, `CashierName`, `EntranceID`, `CardNumber`, `PlateNumber`, `ParkerType`, `TimeIN`, `TimeOUT`) VALUES
(8967501, 12340000, 'DANKAY', 'E02', '00001139', 'PGB450', 'R', '2017-06-04 08:54:00', '2017-06-04 09:12:00'),
(8967502, 12340000, 'DANKAY', 'E02', '00501160', 'ZPE365', 'R', '2017-04-02 07:54:00', '2017-04-02 09:19:00'),
(8967503, 87654321, 'MICHELE', 'E01', '00000125', 'PLE526', 'R', '2017-04-03 08:23:00', '2017-04-03 09:23:00'),
(8967504, 12340000, 'DANKAY', 'E02', '00001139', 'PGB450', 'R', '2017-04-01 12:54:00', '2017-04-01 21:12:00'),
(8967505, 12340000, 'DANKAY', 'E02', '00501160', 'ZPE365', 'R', '2017-04-02 07:54:00', '2017-04-02 09:19:00'),
(8967506, 87654321, 'MICHELE', 'E01', '00000125', 'PLE526', 'R', '2017-04-03 08:23:00', '2017-04-03 09:23:00'),
(8967507, 12340000, 'DANKAY', 'E02', '00001139', 'PGB450', 'R', '2017-04-01 08:54:00', '2017-04-01 09:12:00'),
(8967508, 12340000, 'DANKAY', 'E02', '00501160', 'ZPE365', 'R', '2017-04-03 07:54:00', '2017-04-03 09:19:00'),
(8967509, 87654321, 'MICHELE', 'E01', '00000125', 'PLE526', 'R', '2017-04-02 08:23:00', '2017-04-02 09:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `colID` int(11) NOT NULL,
  `cashierCode` int(11) DEFAULT NULL,
  `cashierName` varchar(15) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `logoutDate` datetime DEFAULT NULL,
  `cashOnHand` double DEFAULT NULL,
  `cashcolMachine` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`colID`, `cashierCode`, `cashierName`, `loginDate`, `logoutDate`, `cashOnHand`, `cashcolMachine`) VALUES
(1, 12340000, 'DANKAY', '2017-04-20 08:54:00', '2017-06-03 05:12:00', 1025, 1100),
(2, 87654321, 'MICHELE', '2017-04-21 08:26:00', '2017-06-03 05:28:00', 875, 850);

-- --------------------------------------------------------

--
-- Table structure for table `entrance`
--

DROP TABLE IF EXISTS `entrance`;
CREATE TABLE `entrance` (
  `entrance_id` int(11) NOT NULL,
  `CashierID` int(11) DEFAULT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(1) DEFAULT NULL,
  `TimeIN` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exit_tbl`
--

DROP TABLE IF EXISTS `exit_tbl`;
CREATE TABLE `exit_tbl` (
  `ReceiptNumber` int(11) NOT NULL,
  `CashierID` int(11) DEFAULT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(1) DEFAULT NULL,
  `TimeIN` datetime DEFAULT NULL,
  `TimeOUT` datetime DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exit_tbl`
--

INSERT INTO `exit_tbl` (`ReceiptNumber`, `CashierID`, `CashierName`, `EntranceID`, `CardNumber`, `PlateNumber`, `ParkerType`, `TimeIN`, `TimeOUT`, `Amount`) VALUES
(8967501, 87654321, 'MICHELE', 'E01', '00001139', 'PGB450', 'R', '2017-06-04 08:54:00', '2017-06-04 09:12:00', 45),
(8967502, 87654321, 'MICHELE', 'E01', '00501160', 'ZPE365', 'R', '2017-06-04 07:54:00', '2017-06-04 09:19:00', 45),
(8967503, 12340000, 'DANKAY', 'E01', '00000125', 'PLE526', 'R', '2017-06-04 11:23:00', '2017-06-04 09:23:00', 45);

-- --------------------------------------------------------

--
-- Table structure for table `exit_trans`
--

DROP TABLE IF EXISTS `exit_trans`;
CREATE TABLE `exit_trans` (
  `ReceiptNumber` varchar(128) NOT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `ExitID` varchar(4) NOT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(2) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `DateTimeIN` datetime NOT NULL,
  `DateTimeOUT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `exit_trans`
--

INSERT INTO `exit_trans` (`ReceiptNumber`, `CashierName`, `EntranceID`, `ExitID`, `CardNumber`, `PlateNumber`, `ParkerType`, `Amount`, `DateTimeIN`, `DateTimeOUT`) VALUES
('000000000374', 'ANGELO', 'EN01', 'EX01', '6C7E1B3D', 'RTY457', 'R', 50, '2017-07-07 01:00:00', '2017-07-07 16:04:37'),
('000000000375', 'ANGELO', 'EN01', 'EX01', '6C7E1B3D', 'RT3HR67', 'R', 50, '2017-07-07 01:00:00', '2017-07-07 16:22:01'),
('000000000376', 'ANGELO', 'EN01', 'EX01', '4CDD1B3D', 'EWR6443', 'R', 50, '2017-07-07 01:00:00', '2017-07-07 16:23:18'),
('000000000377', 'ANGELO', 'EN01', 'EX01', '7AF7DA9A', '5RT457', 'Q', 0, '2017-07-07 01:00:00', '2017-07-07 16:31:58'),
('000000000378', 'ANGELO', 'EN01', 'EX01', '04BCEC22', 'FER457', 'M', 35, '2017-07-07 01:00:00', '2017-07-07 16:36:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carpark_logs`
--
ALTER TABLE `carpark_logs`
  ADD PRIMARY KEY (`ReceiptNumber`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`colID`);

--
-- Indexes for table `entrance`
--
ALTER TABLE `entrance`
  ADD PRIMARY KEY (`entrance_id`);

--
-- Indexes for table `exit_tbl`
--
ALTER TABLE `exit_tbl`
  ADD PRIMARY KEY (`ReceiptNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `colID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `entrance`
--
ALTER TABLE `entrance`
  MODIFY `entrance_id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `colltrain`
--
DROP DATABASE IF EXISTS `colltrain`;
CREATE DATABASE IF NOT EXISTS `colltrain` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `colltrain`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `logINID` bigint(20) UNSIGNED NOT NULL,
  `userCode` varchar(10) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `loginStamp` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `logoutStamp` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `retailCount` int(11) NOT NULL DEFAULT '0',
  `retailAmount` float NOT NULL DEFAULT '0',
  `vipCount` int(11) NOT NULL DEFAULT '0',
  `vipAmount` float NOT NULL DEFAULT '0',
  `motorcycleCount` int(11) NOT NULL DEFAULT '0',
  `motorcycleAmount` float NOT NULL DEFAULT '0',
  `graceCount` int(11) NOT NULL DEFAULT '0',
  `graceAmount` float NOT NULL DEFAULT '0',
  `lostCount` int(11) NOT NULL DEFAULT '0',
  `lostAmount` float NOT NULL DEFAULT '0',
  `deliveryCount` int(11) NOT NULL DEFAULT '0',
  `deliveryAmount` float NOT NULL DEFAULT '0',
  `qcseniorCount` int(11) NOT NULL DEFAULT '0',
  `qcseniorAmount` float NOT NULL DEFAULT '0',
  `bpocarCount` int(11) NOT NULL DEFAULT '0',
  `bpocarAmount` float NOT NULL DEFAULT '0',
  `bpomotorCount` int(11) NOT NULL DEFAULT '0',
  `bpomotorAmount` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`logINID`, `userCode`, `userName`, `loginStamp`, `logoutStamp`, `retailCount`, `retailAmount`, `vipCount`, `vipAmount`, `motorcycleCount`, `motorcycleAmount`, `graceCount`, `graceAmount`, `lostCount`, `lostAmount`, `deliveryCount`, `deliveryAmount`, `qcseniorCount`, `qcseniorAmount`, `bpocarCount`, `bpocarAmount`, `bpomotorCount`, `bpomotorAmount`) VALUES
(1176600010001151412, '00010001', 'ANGELO', '2017-07-06 22:14:13', '0000-00-00 00:00:00', 2, 100, 0, 0, 1, 35, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`logINID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `logINID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;--
-- Database: `crdplt`
--
DROP DATABASE IF EXISTS `crdplt`;
CREATE DATABASE IF NOT EXISTS `crdplt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crdplt`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `areaID` varchar(4) NOT NULL,
  `entranceID` varchar(4) NOT NULL,
  `cardNumber` varchar(8) NOT NULL,
  `plateNumber` varchar(8) NOT NULL,
  `trtype` varchar(1) NOT NULL,
  `datetimeIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`cardNumber`);
--
-- Database: `extcrd`
--
DROP DATABASE IF EXISTS `extcrd`;
CREATE DATABASE IF NOT EXISTS `extcrd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `extcrd`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `areaID` varchar(4) NOT NULL,
  `entranceID` varchar(4) NOT NULL,
  `cardNumber` varchar(8) NOT NULL,
  `plateNumber` varchar(8) NOT NULL,
  `trtype` varchar(1) NOT NULL,
  `datetimeIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datetimePaid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datetimeNextDue` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datetimeNextDueStamp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`cardNumber`);
--
-- Database: `parkertypes`
--
DROP DATABASE IF EXISTS `parkertypes`;
CREATE DATABASE IF NOT EXISTS `parkertypes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `parkertypes`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`) VALUES
(1, 'R', 'Retail', ''),
(2, 'V', 'vip', ''),
(3, 'M', 'motorcycle', ''),
(4, 'G', 'graceperiod', ''),
(5, 'L', 'lost', ''),
(6, 'D', 'delivery', ''),
(7, 'Q', 'LocalSenior', ''),
(8, 'BC', 'BPOCar', ''),
(9, 'BM', 'BPOMotor', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`ptypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;--
-- Database: `ratesparam`
--
DROP DATABASE IF EXISTS `ratesparam`;
CREATE DATABASE IF NOT EXISTS `ratesparam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ratesparam`;

-- --------------------------------------------------------

--
-- Table structure for table `flatrate`
--

DROP TABLE IF EXISTS `flatrate`;
CREATE TABLE `flatrate` (
  `pkID` int(11) NOT NULL,
  `trtype` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `GracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` float NOT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `Hr0` varchar(5) NOT NULL,
  `Hr0Waived1st` tinyint(1) NOT NULL,
  `Hr0plus` varchar(5) NOT NULL,
  `Hr0plusWaived1st` tinyint(1) NOT NULL,
  `Hr1` varchar(5) NOT NULL,
  `Hr1Waived1st` tinyint(1) NOT NULL,
  `Hr1plus` varchar(5) NOT NULL,
  `Hr1plusWaived1st` tinyint(1) NOT NULL,
  `Hr2` varchar(5) NOT NULL,
  `Hr2Waived1st` tinyint(1) NOT NULL,
  `Hr2plus` varchar(5) NOT NULL,
  `Hr2plusWaived1st` tinyint(1) NOT NULL,
  `Hr3` varchar(5) NOT NULL,
  `Hr3Waived1st` tinyint(1) NOT NULL,
  `Hr3plus` varchar(5) NOT NULL,
  `Hr3plusWaived1st` tinyint(1) NOT NULL,
  `Hr4` varchar(5) NOT NULL,
  `Hr4Waived1st` tinyint(1) NOT NULL,
  `Hr4plus` varchar(5) NOT NULL,
  `Hr4plusWaived1st` tinyint(1) NOT NULL,
  `Hr5` varchar(5) NOT NULL,
  `Hr5Waived1st` tinyint(1) NOT NULL,
  `Hr5plus` varchar(5) NOT NULL,
  `Hr5plusWaived1st` tinyint(1) NOT NULL,
  `Hr6` varchar(5) NOT NULL,
  `Hr6Waived1st` tinyint(1) NOT NULL,
  `Hr6plus` varchar(5) NOT NULL,
  `Hr6plusWaived1st` tinyint(1) NOT NULL,
  `Hr7` varchar(5) NOT NULL,
  `Hr7Waived1st` tinyint(1) NOT NULL,
  `Hr7plus` varchar(5) NOT NULL,
  `Hr7plusWaived1st` tinyint(1) NOT NULL,
  `Hr8` varchar(5) NOT NULL,
  `Hr8Waived1st` tinyint(1) NOT NULL,
  `Hr8plus` varchar(5) NOT NULL,
  `Hr8plusWaived1st` tinyint(1) NOT NULL,
  `Hr9` varchar(5) NOT NULL,
  `Hr9Waived1st` tinyint(1) NOT NULL,
  `Hr9plus` varchar(5) NOT NULL,
  `Hr9plusWaived1st` tinyint(1) NOT NULL,
  `Hr10` varchar(5) NOT NULL,
  `Hr10Waived1st` tinyint(1) NOT NULL,
  `Hr10plus` varchar(5) NOT NULL,
  `Hr10plusWaived1st` tinyint(1) NOT NULL,
  `Hr11` varchar(5) NOT NULL,
  `Hr11Waived1st` tinyint(1) NOT NULL,
  `Hr11plus` varchar(5) NOT NULL,
  `Hr11plusWaived1st` tinyint(1) NOT NULL,
  `Hr12` varchar(5) NOT NULL,
  `Hr12Waived1st` tinyint(1) NOT NULL,
  `Hr12plus` varchar(5) NOT NULL,
  `Hr12plusWaived1st` tinyint(1) NOT NULL,
  `Hr13` varchar(5) NOT NULL,
  `Hr13Waived1st` tinyint(1) NOT NULL,
  `Hr13plus` varchar(5) NOT NULL,
  `Hr13plusWaived1st` tinyint(1) NOT NULL,
  `Hr14` varchar(5) NOT NULL,
  `Hr14Waived1st` tinyint(1) NOT NULL,
  `Hr14plus` varchar(5) NOT NULL,
  `Hr14plusWaived1st` tinyint(1) NOT NULL,
  `Hr15` varchar(5) NOT NULL,
  `Hr15Waived1st` tinyint(1) NOT NULL,
  `Hr15plus` varchar(5) NOT NULL,
  `Hr15plusWaived1st` tinyint(1) NOT NULL,
  `Hr16` varchar(5) NOT NULL,
  `Hr16Waived1st` tinyint(1) NOT NULL,
  `Hr16plus` varchar(5) NOT NULL,
  `Hr16plusWaived1st` tinyint(1) NOT NULL,
  `Hr17` varchar(5) NOT NULL,
  `Hr17Waived1st` tinyint(1) NOT NULL,
  `Hr17plus` varchar(5) NOT NULL,
  `Hr17plusWaived1st` tinyint(1) NOT NULL,
  `Hr18` varchar(5) NOT NULL,
  `Hr18Waived1st` tinyint(1) NOT NULL,
  `Hr18plus` varchar(5) NOT NULL,
  `Hr18plusWaived1st` tinyint(1) NOT NULL,
  `Hr19` varchar(5) NOT NULL,
  `Hr19Waived1st` tinyint(1) NOT NULL,
  `Hr19plus` varchar(5) NOT NULL,
  `Hr19plusWaived1st` tinyint(1) NOT NULL,
  `Hr20` varchar(5) NOT NULL,
  `Hr20Waived1st` tinyint(1) NOT NULL,
  `Hr20plus` varchar(5) NOT NULL,
  `Hr20plusWaived1st` tinyint(1) NOT NULL,
  `Hr21` varchar(5) NOT NULL,
  `Hr21Waived1st` tinyint(1) NOT NULL,
  `Hr21plus` varchar(5) NOT NULL,
  `Hr21plusWaived1st` tinyint(1) NOT NULL,
  `Hr22` varchar(5) NOT NULL,
  `Hr22Waived1st` tinyint(1) NOT NULL,
  `Hr22plus` varchar(5) NOT NULL,
  `Hr22plusWaived1st` tinyint(1) NOT NULL,
  `Hr23` varchar(5) NOT NULL,
  `Hr23Waived1st` tinyint(1) NOT NULL,
  `Hr23plus` varchar(5) NOT NULL,
  `Hr23plusWaived1st` tinyint(1) NOT NULL,
  `Hr24` varchar(5) NOT NULL,
  `Hr24Waived1st` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flatrate`
--

INSERT INTO `flatrate` (`pkID`, `trtype`, `name`, `GracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `TreatNextDayAsNewDay`, `SucceedingRate`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Regular', 15, 2, 0, 200, 1, '+10', '+50', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+200', 0),
(2, 'M', 'Motorcycle', 15, 2, 0, 200, 1, '+20', '+35', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+200', 0),
(3, 'BC', 'BPOCar', 15, 2, 0, 200, 2, '+0', '+50', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(4, 'BM', 'BPOMotor', 15, 2, 0, 200, 1, '+50', '+35', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(5, 'Q', 'LocalSenior', 15, 2, 0, 200, 2, '+0', '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(6, 'D', 'Delivery', 15, 2, 0, 200, 0, '+0', '+100', 1, '+0', 1, '+100', 1, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flatrate`
--
ALTER TABLE `flatrate`
  ADD PRIMARY KEY (`pkID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flatrate`
--
ALTER TABLE `flatrate`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
