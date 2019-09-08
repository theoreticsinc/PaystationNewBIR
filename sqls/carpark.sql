-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 11:37 AM
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
-- Database: `carpark`
--
CREATE DATABASE IF NOT EXISTS `carpark` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `carpark`;

-- --------------------------------------------------------

--
-- Table structure for table `entrance`
--

DROP TABLE IF EXISTS `entrance`;
CREATE TABLE `entrance` (
  `pkid` bigint(20) UNSIGNED NOT NULL,
  `CashierID` varchar(10) DEFAULT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(1) DEFAULT NULL,
  `TimeIN` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exit_trans`
--

DROP TABLE IF EXISTS `exit_trans`;
CREATE TABLE `exit_trans` (
  `pkid` bigint(36) UNSIGNED ZEROFILL NOT NULL,
  `void` tinyint(1) NOT NULL DEFAULT '0',
  `voidRefID` varchar(254) DEFAULT NULL,
  `ReceiptNumber` varchar(128) NOT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `ExitID` varchar(4) NOT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(2) DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `GrossAmount` float DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `vat12` double DEFAULT NULL,
  `vatsale` double DEFAULT NULL,
  `vatExemptedSales` double DEFAULT NULL,
  `tendered` float DEFAULT '0',
  `changeDue` float DEFAULT '0',
  `DateTimeIN` datetime NOT NULL,
  `DateTimeOUT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `HoursParked` int(11) NOT NULL,
  `MinutesParked` int(11) NOT NULL,
  `SettlementRef` varchar(128) NOT NULL,
  `SettlementName` varchar(50) DEFAULT NULL,
  `SettlementAddr` varchar(50) DEFAULT NULL,
  `SettlementTIN` varchar(18) DEFAULT NULL,
  `SettlementBusStyle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `void_trans`
--

DROP TABLE IF EXISTS `void_trans`;
CREATE TABLE `void_trans` (
  `pkid` bigint(36) UNSIGNED ZEROFILL NOT NULL,
  `void` tinyint(1) NOT NULL DEFAULT '0',
  `voidRefID` varchar(254) DEFAULT NULL,
  `ReceiptNumber` varchar(128) NOT NULL,
  `CashierName` varchar(15) DEFAULT NULL,
  `EntranceID` varchar(5) DEFAULT NULL,
  `ExitID` varchar(4) NOT NULL,
  `CardNumber` varchar(12) DEFAULT NULL,
  `PlateNumber` varchar(8) DEFAULT NULL,
  `ParkerType` varchar(2) DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `DateTimeIN` datetime NOT NULL,
  `DateTimeOUT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `HoursParked` int(11) NOT NULL,
  `MinutesParked` int(11) NOT NULL,
  `SettlementRef` varchar(128) NOT NULL,
  `SettlementName` varchar(50) DEFAULT NULL,
  `SettlementAddr` varchar(50) DEFAULT NULL,
  `SettlementTIN` varchar(50) DEFAULT NULL,
  `SettlementBusStyle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entrance`
--
ALTER TABLE `entrance`
  ADD PRIMARY KEY (`pkid`);

--
-- Indexes for table `exit_trans`
--
ALTER TABLE `exit_trans`
  ADD PRIMARY KEY (`pkid`);

--
-- Indexes for table `void_trans`
--
ALTER TABLE `void_trans`
  ADD PRIMARY KEY (`pkid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entrance`
--
ALTER TABLE `entrance`
  MODIFY `pkid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exit_trans`
--
ALTER TABLE `exit_trans`
  MODIFY `pkid` bigint(36) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `void_trans`
--
ALTER TABLE `void_trans`
  MODIFY `pkid` bigint(36) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
