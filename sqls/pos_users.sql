-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 12:10 PM
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
-- Database: `pos_users`
--
CREATE DATABASE IF NOT EXISTS `pos_users` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pos_users`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `usercode` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `username`, `password`, `usercode`) VALUES
(1, 'teller1', '8f2ffd75dd4cd9e86ed995b7728a75e2', '00001000'),
(2, 'teller2', '2c5999f61fa9931a6136abb5551b9ecf', '00002000'),
(3, 'Corazon', '4a0b8af46ff64cb42e651f9f2bc6b277', '00003000'),
(4, 'Winky', 'e9a2111886e9130c3625bce3246772b1', '00004000'),
(5, 'Rica', '47aefffb7557c50baaaa455590fbd3d0', '00005000'),
(10, 'Lizel', '6713d8c13a39a0ecb0e74976b61286ac', '00006000'),
(11, 'teller7', '98dcb404ad3e13a9155b3f05a3b55de4', '00007000'),
(12, 'teller8', '72d189b230113f3db63f652db493b183', '00008000'),
(14, 'Ginelyn', '74e1e124a05889a2704b1a52646de950', '00010000'),
(15, 'Regina', '3f6e48307cab7917eed3ba4dbf72f870', '00009000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
