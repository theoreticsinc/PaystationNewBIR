-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:13 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ratesparam`
--
CREATE DATABASE IF NOT EXISTS `ratesparam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ratesparam`;

-- --------------------------------------------------------

--
-- Table structure for table `bfctrates`
--

DROP TABLE IF EXISTS `bfctrates`;
CREATE TABLE `bfctrates` (
  `pkID` int(11) NOT NULL,
  `trtype` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `GracePeriod` int(11) NOT NULL,
  `ExitGracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` varchar(5) NOT NULL,
  `LostPrice` varchar(5) DEFAULT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `EveryNthHour` int(11) NOT NULL DEFAULT '0',
  `NthHourRate` varchar(5) NOT NULL DEFAULT '+0',
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `FractionThereOf` tinyint(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `bfctrates`
--

INSERT INTO `bfctrates` (`pkID`, `trtype`, `name`, `GracePeriod`, `ExitGracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Bus', 0, 20, 0, 0, '0', '500', 2, 10, '200', '10', 1, '250', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '250', 0),
(2, 'UB', 'UnloadingBus', 0, 20, 0, 0, '0', '500', 1, 5, '200', '10', 1, '100', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '100', 0),
(3, 'BC', 'BPOCar', 0, 20, 0, 0, '0', '500', 0, 10, '200', '10', 1, '50', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '50', 0),
(4, 'NQ', 'NonLocalSenior', 0, 20, 0, 0, '0', '500', 2, 10, '200', '10', 1, '24', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '24', 0),
(5, 'Q', 'Senior', 0, 20, 0, 0, '0', '500', 1, 10, '200', '10', 1, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '10', 0),
(6, 'C', 'Cars', 0, 20, 0, 0, '0', '500', 2, 0, '0', '10', 1, '30', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '30', 0),
(8, 'PW', 'PWD', 0, 20, 0, 0, '0', '500', 2, 10, '200', '10', 1, '24', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '24', 0),
(9, 'D', 'Delivery', 0, 20, 0, 0, '0', '500', 1, 10, '200', '10', 1, '30', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '30', 0),
(10, 'T', 'Trucks', 0, 20, 0, 0, '0', '500', 1, 10, '200', '10', 1, '500', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '500', 0),
(11, 'M', 'Motorcycle', 0, 20, 0, 0, '0', '500', 2, 0, '0', '10', 1, '30', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '0', 0, '30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `birrates`
--

DROP TABLE IF EXISTS `birrates`;
CREATE TABLE `birrates` (
  `pkID` int(11) NOT NULL,
  `trtype` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `GracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` varchar(5) NOT NULL,
  `LostPrice` varchar(5) DEFAULT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `EveryNthHour` int(11) NOT NULL DEFAULT '0',
  `NthHourRate` varchar(5) NOT NULL DEFAULT '+0',
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `FractionThereOf` tinyint(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `birrates`
--

INSERT INTO `birrates` (`pkID`, `trtype`, `name`, `GracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Retail', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+30', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(2, 'M', 'Motorcycle', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(4, 'NQ', 'NonLocalSenior', 30, 2, 0, '+0', '+300', 0, 10, '+200', '+10', 1, '+21', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(5, 'Q', 'LocalSenior', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(6, 'D', 'Delivery', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(8, 'P', 'Promo', 30, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+38', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+200', 0),
(9, 'PW', 'PWD', 30, 2, 0, '+0', '+300', 0, 10, '+200', '+10', 1, '+21', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cedarrates`
--

DROP TABLE IF EXISTS `cedarrates`;
CREATE TABLE `cedarrates` (
  `pkID` int(11) NOT NULL,
  `trtype` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `GracePeriod` int(11) NOT NULL,
  `ExitGracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` varchar(5) NOT NULL,
  `LostPrice` varchar(5) DEFAULT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `EveryNthHour` int(11) NOT NULL DEFAULT '0',
  `NthHourRate` varchar(5) NOT NULL DEFAULT '+0',
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `FractionThereOf` tinyint(1) NOT NULL DEFAULT '1',
  `Hr0` varchar(7) NOT NULL,
  `Hr0Waived1st` tinyint(1) NOT NULL,
  `Hr0plus` varchar(7) NOT NULL,
  `Hr0plusWaived1st` tinyint(1) NOT NULL,
  `Hr1` varchar(7) NOT NULL,
  `Hr1Waived1st` tinyint(1) NOT NULL,
  `Hr1plus` varchar(7) NOT NULL,
  `Hr1plusWaived1st` tinyint(1) NOT NULL,
  `Hr2` varchar(7) NOT NULL,
  `Hr2Waived1st` tinyint(1) NOT NULL,
  `Hr2plus` varchar(7) NOT NULL,
  `Hr2plusWaived1st` tinyint(1) NOT NULL,
  `Hr3` varchar(7) NOT NULL,
  `Hr3Waived1st` tinyint(1) NOT NULL,
  `Hr3plus` varchar(7) NOT NULL,
  `Hr3plusWaived1st` tinyint(1) NOT NULL,
  `Hr4` varchar(7) NOT NULL,
  `Hr4Waived1st` tinyint(1) NOT NULL,
  `Hr4plus` varchar(7) NOT NULL,
  `Hr4plusWaived1st` tinyint(1) NOT NULL,
  `Hr5` varchar(7) NOT NULL,
  `Hr5Waived1st` tinyint(1) NOT NULL,
  `Hr5plus` varchar(7) NOT NULL,
  `Hr5plusWaived1st` tinyint(1) NOT NULL,
  `Hr6` varchar(7) NOT NULL,
  `Hr6Waived1st` tinyint(1) NOT NULL,
  `Hr6plus` varchar(7) NOT NULL,
  `Hr6plusWaived1st` tinyint(1) NOT NULL,
  `Hr7` varchar(7) NOT NULL,
  `Hr7Waived1st` tinyint(1) NOT NULL,
  `Hr7plus` varchar(7) NOT NULL,
  `Hr7plusWaived1st` tinyint(1) NOT NULL,
  `Hr8` varchar(7) NOT NULL,
  `Hr8Waived1st` tinyint(1) NOT NULL,
  `Hr8plus` varchar(7) NOT NULL,
  `Hr8plusWaived1st` tinyint(1) NOT NULL,
  `Hr9` varchar(7) NOT NULL,
  `Hr9Waived1st` tinyint(1) NOT NULL,
  `Hr9plus` varchar(7) NOT NULL,
  `Hr9plusWaived1st` tinyint(1) NOT NULL,
  `Hr10` varchar(7) NOT NULL,
  `Hr10Waived1st` tinyint(1) NOT NULL,
  `Hr10plus` varchar(7) NOT NULL,
  `Hr10plusWaived1st` tinyint(1) NOT NULL,
  `Hr11` varchar(7) NOT NULL,
  `Hr11Waived1st` tinyint(1) NOT NULL,
  `Hr11plus` varchar(7) NOT NULL,
  `Hr11plusWaived1st` tinyint(1) NOT NULL,
  `Hr12` varchar(7) NOT NULL,
  `Hr12Waived1st` tinyint(1) NOT NULL,
  `Hr12plus` varchar(7) NOT NULL,
  `Hr12plusWaived1st` tinyint(1) NOT NULL,
  `Hr13` varchar(7) NOT NULL,
  `Hr13Waived1st` tinyint(1) NOT NULL,
  `Hr13plus` varchar(7) NOT NULL,
  `Hr13plusWaived1st` tinyint(1) NOT NULL,
  `Hr14` varchar(7) NOT NULL,
  `Hr14Waived1st` tinyint(1) NOT NULL,
  `Hr14plus` varchar(7) NOT NULL,
  `Hr14plusWaived1st` tinyint(1) NOT NULL,
  `Hr15` varchar(7) NOT NULL,
  `Hr15Waived1st` tinyint(1) NOT NULL,
  `Hr15plus` varchar(7) NOT NULL,
  `Hr15plusWaived1st` tinyint(1) NOT NULL,
  `Hr16` varchar(7) NOT NULL,
  `Hr16Waived1st` tinyint(1) NOT NULL,
  `Hr16plus` varchar(7) NOT NULL,
  `Hr16plusWaived1st` tinyint(1) NOT NULL,
  `Hr17` varchar(7) NOT NULL,
  `Hr17Waived1st` tinyint(1) NOT NULL,
  `Hr17plus` varchar(7) NOT NULL,
  `Hr17plusWaived1st` tinyint(1) NOT NULL,
  `Hr18` varchar(7) NOT NULL,
  `Hr18Waived1st` tinyint(1) NOT NULL,
  `Hr18plus` varchar(7) NOT NULL,
  `Hr18plusWaived1st` tinyint(1) NOT NULL,
  `Hr19` varchar(7) NOT NULL,
  `Hr19Waived1st` tinyint(1) NOT NULL,
  `Hr19plus` varchar(7) NOT NULL,
  `Hr19plusWaived1st` tinyint(1) NOT NULL,
  `Hr20` varchar(7) NOT NULL,
  `Hr20Waived1st` tinyint(1) NOT NULL,
  `Hr20plus` varchar(7) NOT NULL,
  `Hr20plusWaived1st` tinyint(1) NOT NULL,
  `Hr21` varchar(7) NOT NULL,
  `Hr21Waived1st` tinyint(1) NOT NULL,
  `Hr21plus` varchar(7) NOT NULL,
  `Hr21plusWaived1st` tinyint(1) NOT NULL,
  `Hr22` varchar(7) NOT NULL,
  `Hr22Waived1st` tinyint(1) NOT NULL,
  `Hr22plus` varchar(7) NOT NULL,
  `Hr22plusWaived1st` tinyint(1) NOT NULL,
  `Hr23` varchar(7) NOT NULL,
  `Hr23Waived1st` tinyint(1) NOT NULL,
  `Hr23plus` varchar(7) NOT NULL,
  `Hr23plusWaived1st` tinyint(1) NOT NULL,
  `Hr24` varchar(7) NOT NULL,
  `Hr24Waived1st` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cedarrates`
--

INSERT INTO `cedarrates` (`pkID`, `trtype`, `name`, `GracePeriod`, `ExitGracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Retail', 0, 10, 0, 0, '+300', '+200', 1, 10, '+200', '+25', 1, '+35', 0, '+0', 0, '+0', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0),
(2, 'M', 'Motorcycle', 0, 10, 0, 0, '+300', '+200', 1, 5, '+200', '+25', 1, '+35', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+25', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0, '+0', 0, '+25', 0),
(3, 'BC', 'BPOCar', 15, 0, 2, 0, '+200', '+200', 0, 10, '+200', '+10', 1, '+50', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(4, 'BM', 'BPOMotor', 15, 0, 2, 0, '+200', '+200', 0, 10, '+200', '+10', 1, '+29', 0, '+0', 0, '+20', 0, '+0', 0, '+20', 0, '+0', 0, '+20', 0, '+0', 0, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+200', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(5, 'Q', 'Senior', 0, 10, 0, 0, '+300', '+200', 1, 10, '+200', '+20.5', 1, '+28.75', 0, '+0', 0, '+0', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+525', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0, '+0', 0, '+20.534', 0),
(6, 'D', 'Delivery', 15, 0, 2, 0, '+200', '+200', 1, 0, '+0', '+10', 1, '+0', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+100', 0, '+0', 0, '+200', 0),
(8, 'P', 'Promo', 0, 10, 0, 0, '+300', '+200', 1, 10, '+200', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cghrates`
--

DROP TABLE IF EXISTS `cghrates`;
CREATE TABLE `cghrates` (
  `pkID` int(11) NOT NULL,
  `trtype` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `GracePeriod` int(11) NOT NULL,
  `ExitGracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` varchar(5) NOT NULL,
  `LostPrice` varchar(5) DEFAULT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `EveryNthHour` int(11) NOT NULL DEFAULT '0',
  `NthHourRate` varchar(5) NOT NULL DEFAULT '+0',
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `FractionThereOf` tinyint(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `cghrates`
--

INSERT INTO `cghrates` (`pkID`, `trtype`, `name`, `GracePeriod`, `ExitGracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Retail', 5, 0, 2, 0, '+0', '+300', 2, 0, '+0', '+10', 0, '+40', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0),
(2, 'M', 'Motorcycle', 5, 0, 2, 0, '+0', '+300', 2, 0, '+0', '+0', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(4, 'NQ', 'NonLocalSenior', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+40', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(5, 'Q', 'LocalSenior', 5, 0, 2, 0, '+0', '+300', 2, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(6, 'D', 'Delivery', 5, 0, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(8, 'P', 'Promo', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+15', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(9, 'PW', 'PWD', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+40', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(25, 'J', 'Jeep', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(26, 'TC', 'Tricycle', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(31, 'BC', 'BPOEmployee', 5, 0, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(32, 'EM', 'Employees', 5, 0, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(33, 'TN', 'Tenants', 5, 0, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `everrates`
--

DROP TABLE IF EXISTS `everrates`;
CREATE TABLE `everrates` (
  `pkID` int(11) NOT NULL,
  `trtype` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `GracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` varchar(5) NOT NULL,
  `LostPrice` varchar(5) DEFAULT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `EveryNthHour` int(11) NOT NULL DEFAULT '0',
  `NthHourRate` varchar(5) NOT NULL DEFAULT '+0',
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `FractionThereOf` tinyint(1) NOT NULL DEFAULT '1',
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
-- Dumping data for table `everrates`
--

INSERT INTO `everrates` (`pkID`, `trtype`, `name`, `GracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Retail', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+30', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(2, 'M', 'Motorcycle', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(3, 'BC', 'BPOCar', 30, 2, 0, '+0', '+300', 0, 10, '+200', '+10', 1, '+50', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(4, 'NQ', 'NonLocalSenior', 30, 2, 0, '+0', '+300', 0, 10, '+200', '+10', 1, '+21', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(5, 'Q', 'LocalSenior', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(6, 'D', 'Delivery', 30, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(8, 'P', 'Promo', 30, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+38', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+10', 0, '+0', 0, '+200', 0),
(9, 'TX', 'Taxi', 0, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(10, 'JP', 'Jeep', 0, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0);

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
  `ExitGracePeriod` int(11) NOT NULL,
  `OTCutoff` int(11) NOT NULL,
  `OTCutoff1stWaived` tinyint(1) NOT NULL,
  `OTPrice` varchar(5) NOT NULL,
  `LostPrice` varchar(5) DEFAULT NULL,
  `TreatNextDayAsNewDay` tinyint(1) NOT NULL,
  `EveryNthHour` int(11) NOT NULL DEFAULT '0',
  `NthHourRate` varchar(5) NOT NULL DEFAULT '+0',
  `SucceedingRate` varchar(5) NOT NULL DEFAULT '+0',
  `FractionThereOf` tinyint(1) NOT NULL DEFAULT '1',
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

INSERT INTO `flatrate` (`pkID`, `trtype`, `name`, `GracePeriod`, `ExitGracePeriod`, `OTCutoff`, `OTCutoff1stWaived`, `OTPrice`, `LostPrice`, `TreatNextDayAsNewDay`, `EveryNthHour`, `NthHourRate`, `SucceedingRate`, `FractionThereOf`, `Hr0`, `Hr0Waived1st`, `Hr0plus`, `Hr0plusWaived1st`, `Hr1`, `Hr1Waived1st`, `Hr1plus`, `Hr1plusWaived1st`, `Hr2`, `Hr2Waived1st`, `Hr2plus`, `Hr2plusWaived1st`, `Hr3`, `Hr3Waived1st`, `Hr3plus`, `Hr3plusWaived1st`, `Hr4`, `Hr4Waived1st`, `Hr4plus`, `Hr4plusWaived1st`, `Hr5`, `Hr5Waived1st`, `Hr5plus`, `Hr5plusWaived1st`, `Hr6`, `Hr6Waived1st`, `Hr6plus`, `Hr6plusWaived1st`, `Hr7`, `Hr7Waived1st`, `Hr7plus`, `Hr7plusWaived1st`, `Hr8`, `Hr8Waived1st`, `Hr8plus`, `Hr8plusWaived1st`, `Hr9`, `Hr9Waived1st`, `Hr9plus`, `Hr9plusWaived1st`, `Hr10`, `Hr10Waived1st`, `Hr10plus`, `Hr10plusWaived1st`, `Hr11`, `Hr11Waived1st`, `Hr11plus`, `Hr11plusWaived1st`, `Hr12`, `Hr12Waived1st`, `Hr12plus`, `Hr12plusWaived1st`, `Hr13`, `Hr13Waived1st`, `Hr13plus`, `Hr13plusWaived1st`, `Hr14`, `Hr14Waived1st`, `Hr14plus`, `Hr14plusWaived1st`, `Hr15`, `Hr15Waived1st`, `Hr15plus`, `Hr15plusWaived1st`, `Hr16`, `Hr16Waived1st`, `Hr16plus`, `Hr16plusWaived1st`, `Hr17`, `Hr17Waived1st`, `Hr17plus`, `Hr17plusWaived1st`, `Hr18`, `Hr18Waived1st`, `Hr18plus`, `Hr18plusWaived1st`, `Hr19`, `Hr19Waived1st`, `Hr19plus`, `Hr19plusWaived1st`, `Hr20`, `Hr20Waived1st`, `Hr20plus`, `Hr20plusWaived1st`, `Hr21`, `Hr21Waived1st`, `Hr21plus`, `Hr21plusWaived1st`, `Hr22`, `Hr22Waived1st`, `Hr22plus`, `Hr22plusWaived1st`, `Hr23`, `Hr23Waived1st`, `Hr23plus`, `Hr23plusWaived1st`, `Hr24`, `Hr24Waived1st`) VALUES
(1, 'R', 'Retail', 1, 0, 2, 0, '+0', '+300', 2, 0, '+0', '+10', 0, '+40', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0, '+10', 0),
(2, 'M', 'Motorcycle', 5, 0, 2, 0, '+0', '+300', 2, 0, '+0', '+0', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(4, 'NQ', 'NonLocalSenior', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+40', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(5, 'Q', 'LocalSenior', 5, 0, 2, 0, '+0', '+300', 2, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(6, 'D', 'Delivery', 5, 0, 2, 0, '+0', '+300', 1, 0, '+0', '+0', 1, '+0', 0, '+0', 0, '+10', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(8, 'P', 'Promo', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+15', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(9, 'PW', 'PWD', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+40', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 1, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(25, 'J', 'Jeep', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(26, 'TC', 'Tricycle', 5, 0, 2, 0, '+0', '+300', 2, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(31, 'BC', 'BPOEmployee', 5, 0, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(32, 'EM', 'Employees', 5, 0, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0),
(33, 'TN', 'Tenants', 5, 0, 2, 0, '+0', '+300', 1, 10, '+200', '+10', 1, '+20', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0, '+0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `pkid` int(11) NOT NULL,
  `typename` varchar(12) NOT NULL,
  `typecode` varchar(4) NOT NULL,
  `typedesc` varchar(20) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`pkid`, `typename`, `typecode`, `typedesc`, `ACTIVE`) VALUES
(1, 'flatrate', 'flr1', 'Flat Rate', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bfctrates`
--
ALTER TABLE `bfctrates`
  ADD PRIMARY KEY (`pkID`);

--
-- Indexes for table `birrates`
--
ALTER TABLE `birrates`
  ADD PRIMARY KEY (`pkID`);

--
-- Indexes for table `cedarrates`
--
ALTER TABLE `cedarrates`
  ADD PRIMARY KEY (`pkID`);

--
-- Indexes for table `cghrates`
--
ALTER TABLE `cghrates`
  ADD PRIMARY KEY (`pkID`);

--
-- Indexes for table `everrates`
--
ALTER TABLE `everrates`
  ADD PRIMARY KEY (`pkID`);

--
-- Indexes for table `flatrate`
--
ALTER TABLE `flatrate`
  ADD PRIMARY KEY (`pkID`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`pkid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bfctrates`
--
ALTER TABLE `bfctrates`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `birrates`
--
ALTER TABLE `birrates`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cedarrates`
--
ALTER TABLE `cedarrates`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cghrates`
--
ALTER TABLE `cghrates`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `everrates`
--
ALTER TABLE `everrates`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flatrate`
--
ALTER TABLE `flatrate`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
