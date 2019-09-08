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
-- Database: `terminals`
--
CREATE DATABASE IF NOT EXISTS `terminals` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `terminals`;

-- --------------------------------------------------------

--
-- Table structure for table `entry_terminals`
--

DROP TABLE IF EXISTS `entry_terminals`;
CREATE TABLE `entry_terminals` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `location` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry_terminals`
--

INSERT INTO `entry_terminals` (`id`, `name`, `status`, `location`) VALUES
(1, 'EN01', 0, 'CPT1 Entry');

-- --------------------------------------------------------

--
-- Table structure for table `exit_terminals`
--

DROP TABLE IF EXISTS `exit_terminals`;
CREATE TABLE `exit_terminals` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `location` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exit_terminals`
--

INSERT INTO `exit_terminals` (`id`, `name`, `status`, `location`) VALUES
(1, 'EX02', 1, 'Gate 2'),
(2, 'EX03', 1, 'Gate 3'),
(3, 'EX04', 1, 'Gate 4'),
(4, 'EX01', 1, 'Gate 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entry_terminals`
--
ALTER TABLE `entry_terminals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exit_terminals`
--
ALTER TABLE `exit_terminals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entry_terminals`
--
ALTER TABLE `entry_terminals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exit_terminals`
--
ALTER TABLE `exit_terminals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
