-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 06:25 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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

-- --------------------------------------------------------

--
-- Table structure for table `exit_trans`
--

DROP TABLE IF EXISTS `exit_trans`;
CREATE TABLE `exit_trans` (
  `pkid` bigint(36) UNSIGNED ZEROFILL NOT NULL,
  `void` tinyint(1) NOT NULL DEFAULT 0,
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
  `vatexempt` double DEFAULT NULL,
  `tendered` float DEFAULT 0,
  `changeDue` float DEFAULT 0,
  `DateTimeIN` datetime NOT NULL,
  `DateTimeOUT` timestamp NOT NULL DEFAULT current_timestamp(),
  `HoursParked` int(11) NOT NULL,
  `MinutesParked` int(11) NOT NULL,
  `SettlementRef` varchar(128) NOT NULL,
  `SettlementName` varchar(50) DEFAULT NULL,
  `SettlementAddr` varchar(50) DEFAULT NULL,
  `SettlementTIN` varchar(18) DEFAULT NULL,
  `SettlementBusStyle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `exit_trans`
--

INSERT INTO `exit_trans` (`pkid`, `void`, `voidRefID`, `ReceiptNumber`, `CashierName`, `EntranceID`, `ExitID`, `CardNumber`, `PlateNumber`, `ParkerType`, `Amount`, `GrossAmount`, `discount`, `vat12`, `vatsale`, `vatexempt`, `tendered`, `changeDue`, `DateTimeIN`, `DateTimeOUT`, `HoursParked`, `MinutesParked`, `SettlementRef`, `SettlementName`, `SettlementAddr`, `SettlementTIN`, `SettlementBusStyle`) VALUES
(000000000000000000000000000000000001, 0, NULL, 'EX01000000000001', '00001000', 'ENTRY', 'EX01', 'C05A1D1E', 'TEST483', 'R', 40, 40, 0, 4.29, 35.71, 0, 40, 0, '2019-08-20 05:57:05', '2019-08-20 02:18:58', 4, 22, '', '', '', '', ''),
(000000000000000000000000000000000002, 0, NULL, 'EX01000000000002', '00001000', 'ENTRY', 'EX01', 'A8A7151E', 'TEST920', 'NQ', 28.57, 40, 7.14, 0, 35.71, 4.29, 28.57, 0, '2019-08-20 05:56:57', '2019-08-20 02:22:29', 4, 25, '', '', '', '', ''),
(000000000000000000000000000000000003, 0, NULL, 'EX01000000000003', '00001000', 'ENTRY', 'EX01', '4433181E', 'TEST783', 'PW', 28.57, 40, 7.14, 0, 35.71, 4.29, 28.57, 0, '2019-08-20 05:56:49', '2019-08-20 02:31:15', 4, 34, '', '', '', '', ''),
(000000000000000000000000000000000004, 0, NULL, 'EX01000000000004', '00001000', 'ENTRY', 'EX01', 'E9DE151E', 'TEST190', 'Q', 0, 0, 0, 0, 0, 0, 0, 0, '2019-08-20 05:56:41', '2019-08-20 02:33:21', 4, 37, '', '', '', '', ''),
(000000000000000000000000000000000005, 0, NULL, 'EX01000000000005', '00001000', 'ENTRY', 'EX01', '84811D1E', 'TEST382', 'R', 80, 80, 0, 8.57, 71.43, 0, 80, 0, '2019-08-20 05:56:25', '2019-08-21 03:03:15', 29, 7, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exit_trans`
--
ALTER TABLE `exit_trans`
  ADD PRIMARY KEY (`pkid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exit_trans`
--
ALTER TABLE `exit_trans`
  MODIFY `pkid` bigint(36) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
