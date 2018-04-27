-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 06, 2018 at 08:20 AM
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
-- Database: `selcom_nbc`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(60) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `phone2` varchar(60) NOT NULL,
  `contact_name` varchar(60) NOT NULL,
  `contact_relation` varchar(60) NOT NULL,
  `contact_phone` varchar(60) NOT NULL,
  `nssf` varchar(255) NOT NULL,
  `emp_start` date NOT NULL,
  `emp_end` date NOT NULL,
  `site_location` varchar(60) NOT NULL,
  `site_city` varchar(60) NOT NULL,
  `lat` int(11) NOT NULL,
  `lng` int(11) NOT NULL,
  `emp_terms` varchar(255) NOT NULL,
  `contract_period` varchar(60) NOT NULL,
  `gross_salary` bigint(20) NOT NULL,
  `extension_of_contract` varchar(60) NOT NULL,
  `employed_by` varchar(60) NOT NULL,
  `approved_by` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emp_status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fullname`, `age`, `gender`, `designation`, `address`, `email`, `phone`, `phone2`, `contact_name`, `contact_relation`, `contact_phone`, `nssf`, `emp_start`, `emp_end`, `site_location`, `site_city`, `lat`, `lng`, `emp_terms`, `contract_period`, `gross_salary`, `extension_of_contract`, `employed_by`, `approved_by`, `created_at`, `emp_status`, `updated_at`) VALUES
(1, 'Salma Lalji', 34, 'female', 'manager', 'street', 'salma@selcom.net', '+255', '+255', 'Fawziah', 'Sister', '+255', 'NSF_123', '2018-01-31', '2018-04-05', 'Iwambi', 'Mbeya', 0, 0, 'permnent', 'days', 20000000, 'days', 'director', 'director', '2018-02-23 21:00:00', 1, '2018-03-28 13:33:25'),
(2, 'Salma Lalji', 34, 'female', 'manager', 'street', 'salma@selcom.net', '+255', '+255', 'Fawziah', 'Sister', '+255', 'NSF_123', '2018-03-24', '2019-07-24', 'Swato', 'Mbeya', 0, 0, 'permnent', 'days', 20000000, 'days', 'director', 'director', '2018-02-26 21:00:00', 0, '2018-03-28 13:33:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
