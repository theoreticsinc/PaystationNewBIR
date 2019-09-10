-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:16 PM
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
-- Database: `unidb`
--
CREATE DATABASE IF NOT EXISTS `unidb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `unidb`;

-- --------------------------------------------------------

--
-- Table structure for table `birdate`
--

DROP TABLE IF EXISTS `birdate`;
CREATE TABLE `birdate` (
  `id` bigint(20) NOT NULL,
  `LastDate` date DEFAULT NULL,
  `GenerateBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bir_acountdb`
--

DROP TABLE IF EXISTS `bir_acountdb`;
CREATE TABLE `bir_acountdb` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `IDNo` varchar(50) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bir_print_log`
--

DROP TABLE IF EXISTS `bir_print_log`;
CREATE TABLE `bir_print_log` (
  `BIR_User` varchar(30) DEFAULT NULL,
  `BIR_ID` varchar(30) DEFAULT NULL,
  `Log_Date` datetime DEFAULT NULL,
  `OR_Num` varchar(255) DEFAULT NULL,
  `T_Num` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companydb`
--

DROP TABLE IF EXISTS `companydb`;
CREATE TABLE `companydb` (
  `Company` varchar(255) DEFAULT 'Unnamed',
  `Address` varchar(255) DEFAULT '-',
  `Tel` varchar(255) DEFAULT '-',
  `TIN` varchar(255) DEFAULT '-',
  `Permit` varchar(255) DEFAULT '-',
  `ParkingSlot` bigint(20) DEFAULT '0',
  `ParkingArea` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flatrate_schedule`
--

DROP TABLE IF EXISTS `flatrate_schedule`;
CREATE TABLE `flatrate_schedule` (
  `Day` int(20) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `IsStart` tinyint(1) DEFAULT NULL,
  `IsEnd` tinyint(1) DEFAULT NULL,
  `GraceEX` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `historydb`
--

DROP TABLE IF EXISTS `historydb`;
CREATE TABLE `historydb` (
  `ID` bigint(255) NOT NULL,
  `CardCode` varchar(255) DEFAULT NULL,
  `Plate` varchar(255) DEFAULT NULL,
  `DTime` datetime DEFAULT NULL,
  `Lane` varchar(30) DEFAULT NULL,
  `PIC` longblob,
  `PIC2` longblob,
  `Zone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hourlydb`
--

DROP TABLE IF EXISTS `hourlydb`;
CREATE TABLE `hourlydb` (
  `id` bigint(20) NOT NULL,
  `Vehicle` varchar(70) DEFAULT NULL,
  `Mark` varchar(20) DEFAULT NULL,
  `grace` bigint(20) DEFAULT NULL,
  `FirstMinutes` bigint(20) DEFAULT NULL,
  `firstAmount` double(10,2) DEFAULT NULL,
  `IntAmount` double(10,2) DEFAULT NULL,
  `Flatrate` double(10,2) DEFAULT NULL,
  `OverNight` double(10,2) DEFAULT NULL,
  `LostCard` double(10,2) DEFAULT NULL,
  `Command` varchar(10) DEFAULT NULL,
  `OV_Start` time DEFAULT NULL,
  `OV_End` time DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `OV24` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incomereport`
--

DROP TABLE IF EXISTS `incomereport`;
CREATE TABLE `incomereport` (
  `ID` bigint(255) NOT NULL,
  `TRno` varchar(255) DEFAULT NULL,
  `Cardcode` varchar(255) DEFAULT NULL,
  `Plate` varchar(255) DEFAULT NULL,
  `Operator` varchar(255) DEFAULT NULL,
  `PC` varchar(255) DEFAULT NULL,
  `Timein` datetime DEFAULT NULL,
  `TimeOut` datetime DEFAULT NULL,
  `BusnessDate` date DEFAULT NULL,
  `Total` double(10,2) DEFAULT NULL,
  `Vat` double DEFAULT NULL,
  `NonVat` double DEFAULT NULL,
  `VatExemp` double DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `Tender` double(10,2) DEFAULT NULL,
  `Change` double(10,2) DEFAULT NULL,
  `Regular` double(10,2) DEFAULT NULL,
  `Overnight` double(10,2) DEFAULT NULL,
  `Lostcard` double(10,2) DEFAULT NULL,
  `Payment` varchar(100) DEFAULT NULL,
  `DiscountType` varchar(255) DEFAULT NULL,
  `DiscountAmount` double DEFAULT NULL,
  `DiscountReference` varchar(255) DEFAULT NULL,
  `Cash` double(10,2) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL,
  `CreditCardid` varchar(255) DEFAULT NULL,
  `CreditCardType` varchar(255) DEFAULT NULL,
  `VoucherAmount` double(10,2) DEFAULT NULL,
  `GPRef` varchar(255) DEFAULT NULL,
  `GPDiscount` double(10,2) DEFAULT NULL,
  `GPoint` double(10,2) DEFAULT NULL,
  `CompliType` varchar(100) DEFAULT NULL,
  `Compli` double(10,2) DEFAULT NULL,
  `CompliRef` varchar(100) DEFAULT NULL,
  `PrepaidType` varchar(100) DEFAULT NULL,
  `Prepaid` double(10,2) DEFAULT NULL,
  `PrepaidRef` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
CREATE TABLE `operators` (
  `ID` bigint(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `NickName` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pos_report`
--

DROP TABLE IF EXISTS `pos_report`;
CREATE TABLE `pos_report` (
  `id` bigint(20) NOT NULL,
  `TR` bigint(20) DEFAULT NULL,
  `DT` date DEFAULT NULL,
  `OR_From` varchar(100) DEFAULT NULL,
  `OR_To` varchar(100) DEFAULT NULL,
  `VAT` double(10,2) DEFAULT NULL,
  `VAT_Sale` double(10,2) DEFAULT NULL,
  `Total` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
CREATE TABLE `security` (
  `ID` bigint(255) NOT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Username` varchar(60) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `R_name` varchar(100) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taxdb`
--

DROP TABLE IF EXISTS `taxdb`;
CREATE TABLE `taxdb` (
  `Tax` double(10,2) DEFAULT NULL,
  `TaxLp` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcard`
--

DROP TABLE IF EXISTS `tblcard`;
CREATE TABLE `tblcard` (
  `id` bigint(20) NOT NULL,
  `CardCode` varchar(100) DEFAULT NULL,
  `CardID` varchar(254) DEFAULT NULL,
  `Islost` tinyint(1) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcompli`
--

DROP TABLE IF EXISTS `tblcompli`;
CREATE TABLE `tblcompli` (
  `id` bigint(20) NOT NULL,
  `CompliType` varchar(100) DEFAULT NULL,
  `CompliAmount` double(10,2) DEFAULT NULL,
  `CompliAll` tinyint(1) DEFAULT NULL,
  `CompliVat` tinyint(1) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditcard`
--

DROP TABLE IF EXISTS `tblcreditcard`;
CREATE TABLE `tblcreditcard` (
  `id` bigint(20) NOT NULL,
  `CreditCardType` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldiscount`
--

DROP TABLE IF EXISTS `tbldiscount`;
CREATE TABLE `tbldiscount` (
  `id` bigint(20) NOT NULL,
  `DiscountType` varchar(255) DEFAULT NULL,
  `VatExempt` tinyint(1) DEFAULT NULL,
  `Percentage` double(10,2) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblemplogs`
--

DROP TABLE IF EXISTS `tblemplogs`;
CREATE TABLE `tblemplogs` (
  `id` bigint(20) NOT NULL,
  `EmpCardCode` varchar(200) DEFAULT NULL,
  `LogTime` datetime DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

DROP TABLE IF EXISTS `tblemployee`;
CREATE TABLE `tblemployee` (
  `id` bigint(20) NOT NULL,
  `EmpName` varchar(200) DEFAULT NULL,
  `EmpCardCode` varchar(200) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblprepaid`
--

DROP TABLE IF EXISTS `tblprepaid`;
CREATE TABLE `tblprepaid` (
  `id` bigint(20) NOT NULL,
  `PrepaidType` varchar(100) DEFAULT NULL,
  `PrepaidAmount` double(10,2) DEFAULT NULL,
  `PrepaidAll` tinyint(1) DEFAULT NULL,
  `PrepaidVAT` tinyint(1) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltimeframe`
--

DROP TABLE IF EXISTS `tbltimeframe`;
CREATE TABLE `tbltimeframe` (
  `id` bigint(20) NOT NULL,
  `CHname` varchar(255) DEFAULT NULL,
  `StartT` time DEFAULT NULL,
  `Timerange` bigint(20) DEFAULT NULL,
  `Succeed` double(10,2) DEFAULT NULL,
  `FixRate` double(10,2) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Overnight` double(10,2) DEFAULT NULL,
  `LostCard` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblviplogs`
--

DROP TABLE IF EXISTS `tblviplogs`;
CREATE TABLE `tblviplogs` (
  `CardId` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CardCode` varchar(255) DEFAULT NULL,
  `Timein` varchar(255) DEFAULT NULL,
  `TimeOut` varchar(255) DEFAULT NULL,
  `PrkType` varchar(255) DEFAULT NULL,
  `Plate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblvoucherincome`
--

DROP TABLE IF EXISTS `tblvoucherincome`;
CREATE TABLE `tblvoucherincome` (
  `ids` bigint(20) NOT NULL,
  `TRno` varchar(255) NOT NULL,
  `BusnessDate` date DEFAULT NULL,
  `VoucherType` varchar(255) DEFAULT NULL,
  `VoucherRef` varchar(255) DEFAULT NULL,
  `VoucherAmount` double(10,2) DEFAULT NULL,
  `Operator` varchar(255) DEFAULT NULL,
  `timeout` datetime DEFAULT NULL,
  `POS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblvouchers`
--

DROP TABLE IF EXISTS `tblvouchers`;
CREATE TABLE `tblvouchers` (
  `id` bigint(20) NOT NULL,
  `VoucherType` varchar(255) DEFAULT NULL,
  `AmountValue` double(10,2) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timeindb`
--

DROP TABLE IF EXISTS `timeindb`;
CREATE TABLE `timeindb` (
  `ID` bigint(8) NOT NULL,
  `CardCode` varchar(100) DEFAULT NULL,
  `Vehicle` varchar(100) DEFAULT NULL,
  `Plate` varchar(100) DEFAULT NULL,
  `Timein` datetime DEFAULT NULL,
  `Operator` varchar(100) DEFAULT NULL,
  `PC` varchar(100) DEFAULT NULL,
  `PIC` mediumblob,
  `PIC2` mediumblob,
  `Lane` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usercontroldb`
--

DROP TABLE IF EXISTS `usercontroldb`;
CREATE TABLE `usercontroldb` (
  `Id` bigint(255) NOT NULL,
  `RuleName` varchar(30) DEFAULT NULL,
  `ServerSet` tinyint(1) DEFAULT NULL,
  `UserSet` tinyint(1) DEFAULT NULL,
  `DeviceSet` tinyint(1) DEFAULT NULL,
  `ChargingSet` tinyint(1) DEFAULT NULL,
  `ReportSet` tinyint(1) DEFAULT NULL,
  `TerminateSet` tinyint(1) DEFAULT NULL,
  `Setreference` tinyint(1) DEFAULT NULL,
  `Cashier` tinyint(1) DEFAULT NULL,
  `LogReport` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vipdb`
--

DROP TABLE IF EXISTS `vipdb`;
CREATE TABLE `vipdb` (
  `id` int(11) NOT NULL,
  `CardID` varchar(255) DEFAULT NULL,
  `ParkType` varchar(255) DEFAULT NULL,
  `Plate` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CardCode` varchar(255) DEFAULT NULL,
  `MaxUse` decimal(10,0) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birdate`
--
ALTER TABLE `birdate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bir_acountdb`
--
ALTER TABLE `bir_acountdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historydb`
--
ALTER TABLE `historydb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hourlydb`
--
ALTER TABLE `hourlydb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomereport`
--
ALTER TABLE `incomereport`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRno` (`TRno`,`Cardcode`,`Plate`,`Operator`,`PC`,`BusnessDate`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pos_report`
--
ALTER TABLE `pos_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcard`
--
ALTER TABLE `tblcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompli`
--
ALTER TABLE `tblcompli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcreditcard`
--
ALTER TABLE `tblcreditcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldiscount`
--
ALTER TABLE `tbldiscount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemplogs`
--
ALTER TABLE `tblemplogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprepaid`
--
ALTER TABLE `tblprepaid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltimeframe`
--
ALTER TABLE `tbltimeframe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvoucherincome`
--
ALTER TABLE `tblvoucherincome`
  ADD PRIMARY KEY (`ids`,`TRno`),
  ADD UNIQUE KEY `id` (`ids`);

--
-- Indexes for table `tblvouchers`
--
ALTER TABLE `tblvouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeindb`
--
ALTER TABLE `timeindb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CardCode` (`CardCode`,`Vehicle`,`Plate`,`Timein`,`Operator`,`PC`);

--
-- Indexes for table `usercontroldb`
--
ALTER TABLE `usercontroldb`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `vipdb`
--
ALTER TABLE `vipdb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birdate`
--
ALTER TABLE `birdate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bir_acountdb`
--
ALTER TABLE `bir_acountdb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historydb`
--
ALTER TABLE `historydb`
  MODIFY `ID` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hourlydb`
--
ALTER TABLE `hourlydb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomereport`
--
ALTER TABLE `incomereport`
  MODIFY `ID` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `ID` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_report`
--
ALTER TABLE `pos_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `ID` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcard`
--
ALTER TABLE `tblcard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcompli`
--
ALTER TABLE `tblcompli`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcreditcard`
--
ALTER TABLE `tblcreditcard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldiscount`
--
ALTER TABLE `tbldiscount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemplogs`
--
ALTER TABLE `tblemplogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprepaid`
--
ALTER TABLE `tblprepaid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltimeframe`
--
ALTER TABLE `tbltimeframe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblvoucherincome`
--
ALTER TABLE `tblvoucherincome`
  MODIFY `ids` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblvouchers`
--
ALTER TABLE `tblvouchers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeindb`
--
ALTER TABLE `timeindb`
  MODIFY `ID` bigint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usercontroldb`
--
ALTER TABLE `usercontroldb`
  MODIFY `Id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipdb`
--
ALTER TABLE `vipdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
