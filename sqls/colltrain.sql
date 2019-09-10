-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 11:51 AM
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
-- Database: `colltrain`
--
CREATE DATABASE IF NOT EXISTS `colltrain` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `colltrain`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `logINID` bigint(32) UNSIGNED NOT NULL,
  `SentinelID` varchar(4) NOT NULL,
  `userCode` varchar(10) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `loginStamp` timestamp NULL DEFAULT NULL,
  `logoutStamp` timestamp NULL DEFAULT NULL,
  `extendedCount` int(11) NOT NULL DEFAULT '0',
  `extendedAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `overnightCount` int(11) NOT NULL DEFAULT '0',
  `overnightAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `carServed` int(11) NOT NULL DEFAULT '0',
  `totalCount` int(11) NOT NULL DEFAULT '0',
  `totalAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `grossCount` int(11) DEFAULT '0',
  `grossAmount` double DEFAULT '0',
  `regularCount` int(11) NOT NULL DEFAULT '0',
  `regularAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `vipCount` int(11) NOT NULL DEFAULT '0',
  `vipAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `motorcycleCount` int(11) NOT NULL DEFAULT '0',
  `motorcycleAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `graceperiodCount` int(11) NOT NULL DEFAULT '0',
  `graceperiodAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `lostCount` int(11) NOT NULL DEFAULT '0',
  `lostAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `deliveryCount` int(11) NOT NULL DEFAULT '0',
  `deliveryAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `seniorCount` int(11) NOT NULL DEFAULT '0',
  `seniorAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `nonqcseniorCount` int(11) NOT NULL DEFAULT '0',
  `nonqcseniorAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `bpomotorCount` int(11) NOT NULL DEFAULT '0',
  `bpomotorAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `promoCount` int(11) NOT NULL DEFAULT '0',
  `promoAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `pwdCount` int(11) NOT NULL DEFAULT '0',
  `pwdAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `jeepCount` int(11) NOT NULL DEFAULT '0',
  `jeepAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `tricycleCount` int(11) NOT NULL DEFAULT '0',
  `tricycleAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `bpoemployeeCount` int(11) NOT NULL DEFAULT '0',
  `bpoemployeeAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `employeesCount` int(11) NOT NULL DEFAULT '0',
  `employeesAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `tenantsCount` int(11) NOT NULL DEFAULT '0',
  `tenantsAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `voidsCount` int(11) NOT NULL DEFAULT '0',
  `voidsAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `refundCount` int(11) NOT NULL DEFAULT '0',
  `refundAmount` double UNSIGNED NOT NULL DEFAULT '0',
  `discountCount` int(11) DEFAULT '0',
  `discountAmount` double UNSIGNED DEFAULT '0',
  `vatExemptedSalesCount` int(11) DEFAULT '0',
  `vatExemptedSalesAmount` double UNSIGNED DEFAULT '0',
  `vat12Count` int(11) DEFAULT '0',
  `vat12Amount` double UNSIGNED DEFAULT '0',
  `vatsaleCount` int(11) DEFAULT '0',
  `vatsaleAmount` double UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `logINID` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

-- Sept 10, 2019
ALTER TABLE `main` ADD `exemptedVat12Count` INT NULL DEFAULT '0' AFTER `vatExemptedSalesAmount`, ADD `exemptedVat12Amount` DOUBLE NULL DEFAULT '0' AFTER `exemptedVat12Count`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
