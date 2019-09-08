-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:02 PM
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
-- Database: `extcrd`
--
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
  `trtype` varchar(2) NOT NULL,
  `isLost` tinyint(1) NOT NULL,
  `datetimeIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datetimeINStamp` varchar(12) DEFAULT NULL,
  `datetimePaid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datetimePaidStamp` varchar(12) DEFAULT NULL,
  `datetimeNextDue` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datetimeNextDueStamp` varchar(12) DEFAULT '0',
  `amountPaid` float NOT NULL,
  `PIC` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`cardNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
