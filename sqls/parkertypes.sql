-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:06 PM
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
-- Database: `parkertypes`
--
CREATE DATABASE IF NOT EXISTS `parkertypes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `parkertypes`;

-- --------------------------------------------------------

--
-- Table structure for table `bfct_types`
--

DROP TABLE IF EXISTS `bfct_types`;
CREATE TABLE `bfct_types` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(24) NOT NULL,
  `btnimg` varchar(128) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  `numOfReceipts` tinyint(1) NOT NULL DEFAULT '0',
  `Discounted` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountPercentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bfct_types`
--

INSERT INTO `bfct_types` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`, `numOfReceipts`, `Discounted`, `DiscountPercentage`) VALUES
(1, 'R', 'Bus', 'P250 Loading', 'http://127.0.0.1/img/bus.png', 1, 1, 0, 0),
(2, 'V', 'VIP', 'Free Parking', 'http://127.0.0.1/img/vip.png', 1, 1, 0, 0),
(3, 'UB', 'UnloadingBus', 'P100 Unloading', 'http://127.0.0.1/img/delivery.png', 0, 1, 0, 0),
(4, 'G', 'GracePeriod', '', 'http://127.0.0.1/img/generic.png', 1, 1, 0, 0),
(5, 'L', 'Lost', 'P50 plus P200', 'http://127.0.0.1/img/lost.png', 1, 1, 0, 0),
(6, 'C', 'Cars', 'Free if Validated', 'http://127.0.0.1/img/retail.png', 1, 1, 0, 0),
(7, 'Q', 'Senior', 'Free for Senior', 'http://127.0.0.1/img/qcsenior.png', 0, 2, 1, 100),
(8, 'NQ', 'NonLocalSenior', 'Discounted 20%', 'http://127.0.0.1/img/senior.png', 1, 2, 1, 20),
(9, 'PW', 'PWD', 'Discounted 20%', 'http://127.0.0.1/img/pwd.png', 1, 2, 1, 20),
(10, 'M', 'Motorcycle', 'Motorcycles', 'http://127.0.0.1/img/motorcycle.png', 1, 1, 0, 0),
(11, 'D', 'Delivery', 'Delivery Parking', 'http://127.0.0.1/img/delivery.png', 1, 1, 0, 0),
(12, 'T', 'Trucks', 'Trucks', 'http://127.0.0.1/img/trucks.png', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bir_main`
--

DROP TABLE IF EXISTS `bir_main`;
CREATE TABLE `bir_main` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(24) NOT NULL,
  `btnimg` varchar(128) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  `numOfReceipts` tinyint(1) NOT NULL DEFAULT '0',
  `Discounted` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountPercentage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_main`
--

INSERT INTO `bir_main` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`, `numOfReceipts`, `Discounted`, `DiscountPercentage`) VALUES
(1, 'R', 'Regular', 'P250 Loading', 'http://127.0.0.1/img/retail.png', 1, 1, 0, 0),
(2, 'V', 'VIP', 'Free Parking', 'http://127.0.0.1/img/vip.png', 1, 1, 0, 0),
(4, 'G', 'GracePeriod', '', 'http://127.0.0.1/img/generic.png', 1, 1, 0, 0),
(5, 'L', 'Lost', 'P50 plus P200', 'http://127.0.0.1/img/lost.png', 1, 1, 0, 0),
(6, 'P', 'Promo', 'Free if Validated', 'http://127.0.0.1/img/promo.png', 1, 1, 0, 0),
(7, 'Q', 'LocalSenior', 'Free for Senior', 'http://127.0.0.1/img/qcsenior.png', 1, 2, 1, 100),
(8, 'NQ', 'NonLocalSenior', 'Discounted 20%', 'http://127.0.0.1/img/senior.png', 1, 2, 1, 20),
(9, 'PW', 'PWD', 'Discounted 20%', 'http://127.0.0.1/img/pwd.png', 1, 2, 1, 20),
(10, 'M', 'Motorcycle', 'Motorcycles', 'http://127.0.0.1/img/motorcycle.png', 1, 1, 0, 0),
(23, 'J', 'Jeep', 'Free for 1 hour', 'http://127.0.0.1/img/jeepney.png', 1, 1, 0, 0),
(24, 'TC', 'Tricycle', 'Free', 'http://127.0.0.1/img/tricycle.png', 1, 1, 0, 0),
(25, 'D', 'Delivery', 'Free for 1 hour', 'http://127.0.0.1/img/deliveryred.png', 1, 1, 0, 0),
(27, 'BC', 'BPOEmployee', 'Free for 24hours', 'http://127.0.0.1/img/bpo_car.png', 1, 1, 0, 0),
(28, 'EM', 'Employees', 'One Car Only Free', 'http://127.0.0.1/img/employee.png', 1, 1, 0, 0),
(29, 'TN', 'Tenants', 'One Car Only Free', 'http://127.0.0.1/img/tenant.png', 1, 1, 0, 0),
(30, 'VD', 'Voids', 'Void Parkers', 'http://127.0.0.1/img/', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bir_types`
--

DROP TABLE IF EXISTS `bir_types`;
CREATE TABLE `bir_types` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(24) NOT NULL,
  `btnimg` varchar(128) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  `numOfReceipts` tinyint(1) NOT NULL DEFAULT '0',
  `Discounted` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountPercentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bir_types`
--

INSERT INTO `bir_types` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`, `numOfReceipts`, `Discounted`, `DiscountPercentage`) VALUES
(1, 'R', 'Regular', 'P250 Loading', 'http://127.0.0.1/img/bus.png', 1, 1, 0, 0),
(2, 'V', 'VIP', 'Free Parking', 'http://127.0.0.1/img/vip.png', 1, 1, 0, 0),
(3, 'UB', 'UnloadingBus', 'P100 Unloading', 'http://127.0.0.1/img/delivery.png', 0, 1, 0, 0),
(4, 'G', 'GracePeriod', '', 'http://127.0.0.1/img/generic.png', 1, 1, 0, 0),
(5, 'L', 'Lost', 'P50 plus P200', 'http://127.0.0.1/img/lost.png', 1, 1, 0, 0),
(6, 'P', 'Promo', 'Free if Validated', 'http://127.0.0.1/img/retail.png', 1, 1, 0, 0),
(7, 'Q', 'Senior', 'Free for Senior', 'http://127.0.0.1/img/qcsenior.png', 0, 2, 1, 100),
(8, 'NQ', 'NonLocalSenior', 'Discounted 20%', 'http://127.0.0.1/img/senior.png', 1, 2, 1, 20),
(9, 'PW', 'PWD', 'Discounted 20%', 'http://127.0.0.1/img/pwd.png', 1, 2, 1, 20),
(10, 'M', 'Motorcycle', 'Motorcycles', 'http://127.0.0.1/img/motorcycle.png', 1, 1, 0, 0),
(11, 'D', 'Delivery', 'Delivery Parking', 'http://127.0.0.1/img/delivery.png', 1, 1, 0, 0),
(12, 'T', 'Trucks', 'Trucks', 'http://127.0.0.1/img/trucks.png', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cedar_types`
--

DROP TABLE IF EXISTS `cedar_types`;
CREATE TABLE `cedar_types` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(24) NOT NULL,
  `btnimg` varchar(128) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  `numOfReceipts` tinyint(4) NOT NULL,
  `Discounted` tinyint(4) NOT NULL,
  `DiscountPercentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cedar_types`
--

INSERT INTO `cedar_types` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`, `numOfReceipts`, `Discounted`, `DiscountPercentage`) VALUES
(1, 'R', 'Retail', 'P35 plus P25 succeeding', 'http://127.0.0.1/img/retail.png', 1, 1, 0, 0),
(2, 'V', 'VIP', 'Free Parking', 'http://127.0.0.1/img/vip.png', 0, 1, 0, 0),
(3, 'M', 'Motorcycle', 'P35 plus P25 succeeding', 'http://127.0.0.1/img/motorcycle.png', 1, 1, 0, 0),
(4, 'G', 'GracePeriod', '', 'http://127.0.0.1/img/generic.png', 0, 1, 0, 0),
(5, 'L', 'Lost', 'P50 plus P200', 'http://127.0.0.1/img/lost.png', 1, 1, 0, 0),
(6, 'D', 'Delivery', '1st 2hrs free. P100/hr', 'http://127.0.0.1/img/delivery.png', 0, 1, 0, 0),
(7, 'Q', 'Senior', '20% DSC Senior or PWD', 'http://127.0.0.1/img/senior.png', 1, 1, 0, 0),
(8, 'NQ', 'NonLocalSenior', 'P50 First 10 Hours', 'http://127.0.0.1/img/bpo_car.png', 0, 1, 0, 0),
(9, 'BM', 'BPOMotor', 'P35 First 10 Hours', 'http://127.0.0.1/img/bpo_motor.png', 0, 1, 0, 0),
(10, 'P', 'Promo', 'Discounted', 'http://127.0.0.1/img/promo.png', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ever_types`
--

DROP TABLE IF EXISTS `ever_types`;
CREATE TABLE `ever_types` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(24) NOT NULL,
  `btnimg` varchar(128) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ever_types`
--

INSERT INTO `ever_types` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`) VALUES
(1, 'R', 'Retail', 'P50 First 10hrs', 'http://127.0.0.1/img/retail.png', 1),
(2, 'V', 'VIP', 'Free Parking', 'http://127.0.0.1/img/vip.png', 1),
(3, 'M', 'Motorcycle', 'P35 First 10 Hours', 'http://127.0.0.1/img/motorcycle.png', 1),
(4, 'G', 'GracePeriod', '', 'http://127.0.0.1/img/generic.png', 1),
(5, 'L', 'Lost', 'P50 plus P200', 'http://127.0.0.1/img/lost.png', 1),
(6, 'D', 'Delivery', 'Free if Validated', 'http://127.0.0.1/img/delivery.png', 1),
(7, 'Q', 'LocalSenior', 'Free for QC Senior', 'http://127.0.0.1/img/qcsenior.png', 1),
(8, 'NQ', 'NonLocalSenior', 'Discounted 20%', 'http://127.0.0.1/img/senior.png', 1),
(9, 'JP', 'Jeep', 'Free', 'http://127.0.0.1/img/jeepney.png', 1),
(10, 'TX', 'Taxi', 'Free', 'http://127.0.0.1/img/taxi.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `ptypeID` int(11) NOT NULL,
  `parkertype` varchar(2) NOT NULL,
  `ptypename` varchar(12) NOT NULL,
  `ptypedesc` varchar(24) NOT NULL,
  `btnimg` varchar(128) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL DEFAULT '0',
  `numOfReceipts` tinyint(1) NOT NULL DEFAULT '0',
  `Discounted` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountPercentage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`ptypeID`, `parkertype`, `ptypename`, `ptypedesc`, `btnimg`, `ACTIVE`, `numOfReceipts`, `Discounted`, `DiscountPercentage`) VALUES
(1, 'R', 'Regular', 'P250 Loading', 'http://127.0.0.1/img/retail.png', 1, 1, 0, 0),
(2, 'V', 'VIP', 'Free Parking', 'http://127.0.0.1/img/vip.png', 1, 1, 0, 0),
(4, 'G', 'GracePeriod', '', 'http://127.0.0.1/img/generic.png', 1, 1, 0, 0),
(5, 'L', 'Lost', 'P50 plus P200', 'http://127.0.0.1/img/lost.png', 1, 1, 0, 0),
(6, 'P', 'Promo', 'Free if Validated', 'http://127.0.0.1/img/promo.png', 1, 1, 0, 0),
(7, 'Q', 'Senior', 'Free for Senior', 'http://127.0.0.1/img/qcsenior.png', 1, 2, 1, 100),
(8, 'NQ', 'NonLocalSenior', 'Discounted 20%', 'http://127.0.0.1/img/senior.png', 1, 2, 1, 20),
(9, 'PW', 'PWD', 'Discounted 20%', 'http://127.0.0.1/img/pwd.png', 1, 2, 1, 20),
(10, 'M', 'Motorcycle', 'Motorcycles', 'http://127.0.0.1/img/motorcycle.png', 1, 1, 0, 0),
(23, 'J', 'Jeep', 'Free for 1 hour', 'http://127.0.0.1/img/jeepney.png', 1, 1, 0, 0),
(24, 'TC', 'Tricycle', 'Free', 'http://127.0.0.1/img/tricycle.png', 1, 1, 0, 0),
(25, 'D', 'Delivery', 'Free for 1 hour', 'http://127.0.0.1/img/deliveryred.png', 1, 1, 0, 0),
(27, 'BC', 'BPOEmployee', 'Free for 24hours', 'http://127.0.0.1/img/bpo_car.png', 1, 1, 0, 0),
(28, 'EM', 'Employees', 'One Car Only Free', 'http://127.0.0.1/img/employee.png', 1, 1, 0, 0),
(29, 'TN', 'Tenants', 'One Car Only Free', 'http://127.0.0.1/img/tenant.png', 1, 1, 0, 0),
(30, 'VD', 'Voids', 'Void Parkers', 'http://127.0.0.1/img/', 1, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bfct_types`
--
ALTER TABLE `bfct_types`
  ADD PRIMARY KEY (`ptypeID`),
  ADD UNIQUE KEY `parkertype_2` (`parkertype`),
  ADD UNIQUE KEY `parkertype_4` (`parkertype`),
  ADD UNIQUE KEY `parkertype_5` (`parkertype`),
  ADD KEY `parkertype` (`parkertype`),
  ADD KEY `parkertype_3` (`parkertype`);

--
-- Indexes for table `bir_main`
--
ALTER TABLE `bir_main`
  ADD PRIMARY KEY (`ptypeID`),
  ADD UNIQUE KEY `parkertype_2` (`parkertype`),
  ADD UNIQUE KEY `parkertype_4` (`parkertype`),
  ADD UNIQUE KEY `parkertype_5` (`parkertype`),
  ADD KEY `parkertype` (`parkertype`),
  ADD KEY `parkertype_3` (`parkertype`);

--
-- Indexes for table `bir_types`
--
ALTER TABLE `bir_types`
  ADD PRIMARY KEY (`ptypeID`),
  ADD UNIQUE KEY `parkertype_2` (`parkertype`),
  ADD UNIQUE KEY `parkertype_4` (`parkertype`),
  ADD UNIQUE KEY `parkertype_5` (`parkertype`),
  ADD KEY `parkertype` (`parkertype`),
  ADD KEY `parkertype_3` (`parkertype`);

--
-- Indexes for table `cedar_types`
--
ALTER TABLE `cedar_types`
  ADD PRIMARY KEY (`ptypeID`),
  ADD UNIQUE KEY `parkertype_2` (`parkertype`),
  ADD UNIQUE KEY `parkertype_4` (`parkertype`),
  ADD UNIQUE KEY `parkertype_5` (`parkertype`),
  ADD KEY `parkertype` (`parkertype`),
  ADD KEY `parkertype_3` (`parkertype`);

--
-- Indexes for table `ever_types`
--
ALTER TABLE `ever_types`
  ADD PRIMARY KEY (`ptypeID`),
  ADD UNIQUE KEY `parkertype_2` (`parkertype`),
  ADD UNIQUE KEY `parkertype_4` (`parkertype`),
  ADD UNIQUE KEY `parkertype_5` (`parkertype`),
  ADD KEY `parkertype` (`parkertype`),
  ADD KEY `parkertype_3` (`parkertype`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`ptypeID`),
  ADD UNIQUE KEY `parkertype_2` (`parkertype`),
  ADD UNIQUE KEY `parkertype_4` (`parkertype`),
  ADD UNIQUE KEY `parkertype_5` (`parkertype`),
  ADD KEY `parkertype` (`parkertype`),
  ADD KEY `parkertype_3` (`parkertype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bfct_types`
--
ALTER TABLE `bfct_types`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bir_main`
--
ALTER TABLE `bir_main`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bir_types`
--
ALTER TABLE `bir_types`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cedar_types`
--
ALTER TABLE `cedar_types`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ever_types`
--
ALTER TABLE `ever_types`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `ptypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
