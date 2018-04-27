-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2018 at 10:32 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selcom_bundle`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilitycode` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `categorycode` varchar(15) NOT NULL,
  `sequence` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categorycode` (`categorycode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `utilitycode`, `name`, `categorycode`, `sequence`) VALUES
(1, 'DSTVB', 'Daily B', 'DSTVDAILY', 1),
(2, 'DSTVB', 'Weekly B', 'DSTVWEEKLY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `utilitycode` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `utilitycode`, `description`) VALUES
(1, 'DSTV Banquets', 'DSTVB', 'DSTV Packages'),
(2, 'DSTV Compact Plus', 'DSTVCP', 'You get  176 Channels with  DStv Compact Plus');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
CREATE TABLE IF NOT EXISTS `menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilitycode` varchar(15) NOT NULL,
  `name` varchar(18) NOT NULL,
  `categorycode` varchar(15) NOT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `itemcode` varchar(15) NOT NULL,
  `sequence` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`id`, `utilitycode`, `name`, `categorycode`, `amount`, `itemcode`, `sequence`) VALUES
(1, 'DSTVB', 'Daily 1', 'DSTVDAILY ', '1000', 'DAILY1', 1),
(2, 'DSTVB', 'Daily 2', 'DSTVDAILY', '2000', 'DAILY2', 1),
(3, 'DSTVB', 'Weekly 1', 'DSTVWEEKLY', '3000', 'WEEKLY1', 1),
(4, 'DSTVB', 'Weekly 2', 'DSTVWEEKLY', '5000', 'WEEKLY2', 1),
(5, 'DSTVB', 'Weekly 3', 'DSTVWEEKLY', '10000', 'WEEKLY3', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
