-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2018 at 04:39 PM
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
-- Database: `selcom_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `fulltimestamp` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `transid` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `utility_code` varchar(255) DEFAULT NULL,
  `utility_reference` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `discounted` varchar(255) DEFAULT NULL,
  `COL11` varchar(255) NOT NULL,
  `COL12` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`fulltimestamp`, `vendor`, `type`, `transid`, `reference`, `utility_code`, `utility_reference`, `amount`, `discounted`, `COL11`, `COL12`) VALUES
('2018-03-05 00:00:07', 'AIRTELMONEY', 'DEBIT', '900513174742', 'S221572682', 'LUKU', '04202896629', '3000', '3000', '', ''),
('2018-03-05 00:00:09', 'AIRTELMONEY', 'DEBIT', '900513174750', 'S221572683', 'LUKU', '43002285070', '1000', '1000', '', ''),
('2018-03-05 00:00:18', 'TIGOPESATZ', 'DEBIT', '76449847146', '0221572684', 'TTCL', '255738603244', '2000', '2000', '', ''),
('2018-03-05 00:00:24', 'AIRTELMONEY', 'DEBIT', '900513174756', 'S221572685', 'LUKU', '24214418188', '1000', '1000', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
