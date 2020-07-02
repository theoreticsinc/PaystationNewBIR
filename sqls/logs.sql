-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:03 PM
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
-- Database: `logs`
--
CREATE DATABASE IF NOT EXISTS `logs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `logs`;

-- --------------------------------------------------------

--
-- Table structure for table `activitycodes`
--

DROP TABLE IF EXISTS `activitycodes`;
CREATE TABLE `activitycodes` (
  `pkId` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activitycodes`
--

INSERT INTO `activitycodes` (`pkId`, `code`, `description`) VALUES
(1, '01', 'Program Reboot'),
(2, 'L1', 'Login'),
(3, 'L0', 'Logout'),
(4, 'XE', 'POS Being used while Deactivated'),
(5, 'Z1', 'Print today\'s ZReading using Mastercard 1'),
(6, 'V0', 'Void Transaction Started'),
(7, 'E0', 'Exit Processed'),
(8, 'LC', 'Lost Card Created');

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit` (
  `transactionID` bigint(20) UNSIGNED NOT NULL,
  `sentinelID` varchar(4) NOT NULL,
  `activityCode` varchar(3) DEFAULT NULL,
  `activityOwner` varchar(50) DEFAULT NULL,
  `activityDate` timestamp NULL DEFAULT NULL,
  `activityDetails` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `pkID` int(11) NOT NULL,
  `logNum` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`pkID`, `logNum`) VALUES
(1, 'ÿ™Ð’Ñ~“»');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitycodes`
--
ALTER TABLE `activitycodes`
  ADD PRIMARY KEY (`pkId`);

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`transactionID`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`pkID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitycodes`
--
ALTER TABLE `activitycodes`
  MODIFY `pkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `transactionID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `pkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
