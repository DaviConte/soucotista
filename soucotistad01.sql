-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 01:12 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
-- START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soucotistad01`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `geo` varchar(255) DEFAULT NULL,
  `city` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `name`, `address`, `description`, `geo`, `city`) VALUES
(1, 'Olimpia Park Resort - OPR', NULL, 'Olimpia Park Resort, Enjoy Hoteis', NULL, 'Olimpia-SP'),
(2, 'Olimpia Park Resort - OPR', NULL, 'Olimpia Park Resort, Enjoy Hoteis', NULL, 'Olimpia-SP');

-- --------------------------------------------------------

--
-- Table structure for table `fraction`
--

CREATE TABLE `fraction` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `fraction_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `exchange_allowed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `table_name` int(11) NOT NULL,
  `text` varchar(30) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `hint` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unity`
--

CREATE TABLE `unity` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `tower` varchar(8) NOT NULL,
  `type` varchar(30) NOT NULL,
  `floor` int(11) NOT NULL,
  `guests` int(11) NOT NULL,
  `building_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `facebook_account` varchar(20) NOT NULL,
  `google_account` varchar(20) NOT NULL,
  `status_id` varchar(11) NOT NULL,
  `income_Chanel` int(11) NOT NULL,
  `age` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fraction`
--
ALTER TABLE `fraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unity`
--
ALTER TABLE `unity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fraction`
--
ALTER TABLE `fraction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unity`
--
ALTER TABLE `unity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
