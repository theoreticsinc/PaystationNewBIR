-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:15 PM
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
-- Database: `zread`
--
CREATE DATABASE IF NOT EXISTS `zread` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zread`;

-- --------------------------------------------------------

--
-- Table structure for table `lastdate`
--

DROP TABLE IF EXISTS `lastdate`;
CREATE TABLE `lastdate` (
  `pkid` int(11) NOT NULL,
  `sentinelID` varchar(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lastdate`
--

INSERT INTO `lastdate` (`pkid`, `sentinelID`, `date`) VALUES
(1, 'EX01', '2019-08-31 16:00:00'),
(2, 'EX02', '2019-07-08 20:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `terminalnum` varchar(4) NOT NULL,
  `datetimeOut` datetime DEFAULT NULL,
  `datetimeIn` datetime NOT NULL,
  `todaysale` double UNSIGNED NOT NULL,
  `todaysGross` double DEFAULT '0',
  `vatablesale` double UNSIGNED NOT NULL,
  `12vat` double UNSIGNED NOT NULL,
  `vatExemptedSales` double DEFAULT '0',
  `beginOR` bigint(20) UNSIGNED ZEROFILL DEFAULT NULL,
  `endOR` bigint(20) UNSIGNED ZEROFILL DEFAULT NULL,
  `beginTrans` varchar(36) NOT NULL,
  `endTrans` varchar(36) NOT NULL,
  `beginningVoidNo` varchar(36) NOT NULL DEFAULT '0',
  `endingVoidNo` varchar(36) NOT NULL DEFAULT '0',
  `oldGrand` double UNSIGNED NOT NULL,
  `newGrand` double UNSIGNED NOT NULL,
  `oldGrossTotal` double DEFAULT '0',
  `newGrossTotal` double DEFAULT '0',
  `discounts` double NOT NULL DEFAULT '0',
  `voids` double NOT NULL DEFAULT '0',
  `zCount` bigint(32) UNSIGNED NOT NULL,
  `tellerCode` varchar(12) NOT NULL,
  `logINID` bigint(32) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`terminalnum`, `datetimeOut`, `datetimeIn`, `todaysale`, `todaysGross`, `vatablesale`, `12vat`, `vatExemptedSales`, `beginOR`, `endOR`, `beginTrans`, `endTrans`, `beginningVoidNo`, `endingVoidNo`, `oldGrand`, `newGrand`, `oldGrossTotal`, `newGrossTotal`, `discounts`, `voids`, `zCount`, `tellerCode`, `logINID`) VALUES
('EX01', '2019-09-06 00:41:18', '2019-09-05 23:42:27', 270.7143, 305, 165.17857, 19.821428, 107.14286, 00000000000000000001, 00000000000000000014, '0000000000000001', '0000000000000021', '0', '0', 0, 270.7142853949751, 0, 305, 21.428572, 0, 1, '00001000', 13200001000234150),
('EX01', NULL, '2019-09-06 00:44:38', 0, 0, 0, 0, 0, 00000000000000000015, 00000000000000000000, '0000000000000022', '0', '0', '0', 270.7142853949751, 0, 305, 0, 0, 0, 2, '00001000', 1330000100004423);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lastdate`
--
ALTER TABLE `lastdate`
  ADD PRIMARY KEY (`pkid`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`zCount`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lastdate`
--
ALTER TABLE `lastdate`
  MODIFY `pkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `zCount` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
