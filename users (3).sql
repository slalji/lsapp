-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2018 at 10:34 AM
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `temppass` varchar(255) DEFAULT NULL,
  `past_hash` varchar(255) DEFAULT '''''',
  `fullname` varchar(255) NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firsttime` varchar(10) NOT NULL,
  `expiry_interval` int(11) DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `token` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `temppass`, `past_hash`, `fullname`, `joined`, `currentlogin`, `lastlogin`, `firsttime`, `expiry_interval`, `expiry_date`, `token`) VALUES
(22, 'salma', 'salma@wisecrack.ca', '$2y$10$4jYbYfOKfYYiYj8c1AuqWudDs7MkVVb1zL4lxvAXITznqGPkBTgVK', '', '$2y$10$zI.sOiTKMJlS58d6Vw5eE.f5sENlJkDoLmxT5J5h26H1VzXBoUUJi', 'Salma Lalji', '2018-04-10 11:45:12', '2018-04-12 18:17:36', '2018-04-12 20:40:48', 'false', NULL, '2019-04-11 06:22:39', '5acfa2c08145c'),
(23, NULL, 'salma@kanjilalji.com', '$2y$10$c1nNKOD87eZkkgl.iXloWOLKMqv8smIIM/dRCmrO/kq74S88.OE4a', '', '$2y$10$5tLnCvjX/aZsffKAJxSE8OGHKujgt5NuNdfMiXNFaZT2sBfheHBu6,$2y$10$duXEuAHN.HMrybVmMMYTVexvtHeHGnHfawDZgYkMFIGoLpiz/JHlm', 'Salma K Lalji', '2018-04-20 06:55:59', '2018-04-20 06:56:51', '2018-04-20 09:55:59', 'false', 30, '2018-05-20 06:55:59', '5ad98f33baea2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
