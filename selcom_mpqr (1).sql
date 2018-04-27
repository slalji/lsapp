-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 27, 2018 at 08:08 AM
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
-- Database: `selcom_mpqr`
--

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
CREATE TABLE IF NOT EXISTS `merchants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `first_name` varchar(75) NOT NULL,
  `last_name` varchar(75) NOT NULL,
  `middle_name` char(1) NOT NULL,
  `currency` char(3) NOT NULL,
  `alias` varchar(45) DEFAULT NULL,
  `subscriber_type` varchar(20) NOT NULL DEFAULT 'SOCIAL_ACCOUNT',
  `subscriber_id` varchar(64) NOT NULL,
  `category` varchar(4) NOT NULL,
  `location` varchar(24) NOT NULL,
  `district` varchar(24) NOT NULL,
  `region` varchar(24) DEFAULT NULL,
  `building_number` varchar(45) DEFAULT NULL,
  `postal_code` varchar(6) NOT NULL,
  `country` varchar(3) NOT NULL DEFAULT 'TZA',
  `pan` varchar(20) NOT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `mapping_id` varchar(12) DEFAULT '',
  `status` varchar(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `pan_UNIQUE` (`pan`),
  UNIQUE KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `uid`, `first_name`, `last_name`, `middle_name`, `currency`, `alias`, `subscriber_type`, `subscriber_id`, `category`, `location`, `district`, `region`, `building_number`, `postal_code`, `country`, `pan`, `date_created`, `date_updated`, `mapping_id`, `status`) VALUES
(12, '13WMPOROMVRO8', 'User1', 'Name', 'A', 'TZS', 'Mangi Shop', 'SOCIAL_NETWORK', '12345678', '5462', '3 Changanyikeni', 'Ubungo', 'DA', 'KAW/12/2091', '14129', 'TZA', '5544933129459339', '2017-12-07 16:10:43', NULL, '', '0'),
(14, 'MHJSMRMSO5YT', 'User1', 'Name', 'A', 'TZS', 'Mangi Shop', 'SOCIAL_NETWORK', '12345679', '5462', '3 Changanyikeni', 'Ubungo', 'DA', 'KAW/12/2091', '14129', 'TZA', '2180767387907509', '2018-01-13 12:11:53', NULL, '', '0'),
(64, 'R3FORIMWM5AZ', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3_', 'PHONE_NUMBER', '60010198_', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007_', '2018-01-30 11:16:35', '2018-01-30 11:16:40', '7829990', '0'),
(68, 'SPQFGBYZHCVG', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', 'test@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '2204560010000004', '2018-03-22 14:38:01', NULL, '258908', '1'),
(69, '1MKJ8LJEXLAMF', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY1 YOURS LTd', 'EMAIL_ADDRESS', 'test1@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '2204560010000673', '2018-03-22 14:45:36', NULL, '258910', '1'),
(70, 'CZ8G1CG3FBF3', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY2 YOURS LTd', 'PHONE_NUMBER', '235645', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '2204560010000681', '2018-03-22 14:46:59', NULL, '258912', '1'),
(71, 'EMKAHKQGT3R4', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY3 YOURS LTd', 'PHONE_NUMBER', '659875', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '2204560010000665', '2018-03-22 14:49:28', NULL, '258914', '1'),
(72, 'BAPGBQQMGMKK', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY4 YOURS LTd', 'SOCIAL_NETWORK', '659877', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '2204560010000616', '2018-03-22 14:51:12', NULL, '258916', '1'),
(82, 'IIKXDULDPQDI', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 12', 'EMAIL_ADDRESS', 'yogesh1@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 15:10:28', NULL, '258940', '1'),
(83, '1DHUXCF59NMWS', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 13', 'EMAIL_ADDRESS', 'yogesh2@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000681', '2018-03-23 15:14:08', NULL, '258942', '1'),
(84, 'LUO5CVEMJWYB', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 14', 'PHONE_NUMBER', '4110010', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000665', '2018-03-23 15:18:01', NULL, '258944', '1'),
(85, 'E2LK2TSHYN6J', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 15', 'PHONE_NUMBER', '4110011', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000616', '2018-03-23 15:18:49', NULL, '258946', '1'),
(87, 'OYZXRSSEQACI', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 16', 'SOCIAL_NETWORK', '4110011789456123', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000673', '2018-03-23 15:23:26', NULL, '258950', '1');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_creation_log`
--

DROP TABLE IF EXISTS `merchant_creation_log`;
CREATE TABLE IF NOT EXISTS `merchant_creation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `first_name` varchar(75) NOT NULL,
  `last_name` varchar(75) NOT NULL,
  `middle_name` char(1) NOT NULL,
  `currency` char(3) NOT NULL,
  `alias` varchar(45) DEFAULT NULL,
  `subscriber_type` varchar(20) NOT NULL DEFAULT 'SOCIAL_ACCOUNT',
  `subscriber_id` varchar(64) NOT NULL,
  `category` varchar(4) NOT NULL,
  `location` varchar(24) NOT NULL,
  `district` varchar(24) NOT NULL,
  `region` varchar(24) DEFAULT NULL,
  `building_number` varchar(45) DEFAULT NULL,
  `postal_code` varchar(6) NOT NULL,
  `country` varchar(3) NOT NULL DEFAULT 'TZA',
  `pan` varchar(20) NOT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `mapping_id` varchar(12) DEFAULT '',
  `status` varchar(5) DEFAULT '001',
  `message` varchar(255) DEFAULT 'NA',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_creation_log`
--

INSERT INTO `merchant_creation_log` (`id`, `uid`, `first_name`, `last_name`, `middle_name`, `currency`, `alias`, `subscriber_type`, `subscriber_id`, `category`, `location`, `district`, `region`, `building_number`, `postal_code`, `country`, `pan`, `date_created`, `date_updated`, `mapping_id`, `status`, `message`) VALUES
(1, 'QZP8E52MVGP', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 15:46:47', '2018-02-04 15:46:50', '', '0', 'Account mapping already exists.'),
(2, '1JO3O7VD11W86', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 15:53:02', '2018-02-04 15:53:04', '', '0', 'Account mapping already exists.'),
(3, 'SXGXVBWKPJGT', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 22:49:14', '2018-02-04 22:49:17', '', '0', 'Account mapping already exists.'),
(4, 'N2JCUAAEVNNG', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 22:53:35', NULL, '', '001', 'NA'),
(5, 'X0YLCLO1RPAC', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 23:04:05', NULL, '', '001', 'NA'),
(6, 'BIKJPTE4XBNO', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 23:32:19', '2018-02-04 23:32:19', '', '1009', 'Duplicate alias or subscriber id (till number)'),
(7, 'PDBVNBKPUA7O', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 23:32:45', '2018-02-04 23:32:47', '', '0', 'Account mapping already exists.'),
(8, 'QII2JFU2RJUF', 'Arjan', 'Josiah', 'K', 'TZS', 'Pizza Hut 3', 'PHONE_NUMBER', '60010198', '5540', 'Maktaba', 'Dar es Salaam', 'DAR', 'Peugeot House,Posta', '12345', 'TZA', '5254540000000007', '2018-02-04 23:38:01', '2018-02-04 23:38:03', '', '400', 'Account mapping already exists.'),
(17, 'C5J90QDUEPM8', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '', '2018-03-21 11:03:57', '2018-03-21 11:04:01', '', '400', 'Account Number is required.'),
(18, '10GQFMKDGIOPT', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-21 11:04:42', '2018-03-21 11:04:46', '', '400', 'Account mapping already exists.'),
(19, '1GXE0IKBLFIVR', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-21 11:05:40', '2018-03-21 11:05:44', '', '400', 'Account mapping already exists.'),
(20, '1S565DVWZKVKO', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-21 11:07:55', '2018-03-21 11:07:59', '', '400', 'Account mapping already exists.'),
(21, '1CE3I7HL9V3P', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-21 11:51:02', NULL, '', '001', 'NA'),
(22, 'YVYPHPZHT8LO', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-21 11:58:00', '2018-03-21 11:58:04', '', '400', 'Account mapping already exists.'),
(23, '4ZOUPKQK2POA', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'PHONE_NUMBER', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-21 11:59:21', NULL, '', '001', 'NA'),
(24, '1EMAM1WRSZWKF', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', '60010402', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-22 14:27:51', '2018-03-22 14:27:57', '', '400', 'Subscriber ID must be valid email address when Subscriber Type is EMAIL_ADDRESS.'),
(25, 'WXWFKQMSRLNM', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', 'test@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-22 14:29:22', NULL, '', '001', 'NA'),
(26, '1CVYTSWHWM9L9', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', 'test@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-22 14:36:49', '2018-03-22 14:36:53', '', '400', 'Expiry Date is required for Account Usage of SENDING or SEND_RECV.'),
(27, 'SPQFGBYZHCVG', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', 'test@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-22 14:37:55', NULL, '', '001', 'NA'),
(28, 'X30ZH2ZIKKUG', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', 'test1@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000673', '2018-03-22 14:44:08', '2018-03-22 14:44:08', '', '1009', 'Duplicate alias or subscriber id (till number)'),
(29, '13UVQ041OI5JM', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY YOURS LTd', 'EMAIL_ADDRESS', 'test123@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000673', '2018-03-22 14:44:35', '2018-03-22 14:44:35', '', '1009', 'Duplicate alias or subscriber id (till number)'),
(30, '1MKJ8LJEXLAMF', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY1 YOURS LTd', 'EMAIL_ADDRESS', 'test1@crdb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000673', '2018-03-22 14:45:33', NULL, '', '001', 'NA'),
(31, 'CZ8G1CG3FBF3', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY2 YOURS LTd', 'PHONE_NUMBER', '235645', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000681', '2018-03-22 14:46:56', NULL, '', '001', 'NA'),
(32, 'OGSKNUVTFRX6', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY2 YOURS LTd', 'PHONE_NUMBER', '123456', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000665', '2018-03-22 14:48:52', '2018-03-22 14:48:52', '', '1009', 'Duplicate alias or subscriber id (till number)'),
(33, 'QOO0MRGLHIQU', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY3 YOURS LTd', 'PHONE_NUMBER', '123456', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000665', '2018-03-22 14:49:03', '2018-03-22 14:49:07', '', '400', 'Subscriber ID already used.'),
(34, 'EMKAHKQGT3R4', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY3 YOURS LTd', 'PHONE_NUMBER', '659875', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000665', '2018-03-22 14:49:25', NULL, '', '001', 'NA'),
(35, 'BAPGBQQMGMKK', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY4 YOURS LTd', 'SOCIAL_NETWORK', '659877', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000616', '2018-03-22 14:51:09', NULL, '', '001', 'NA'),
(36, 'HITLVDJOFBB0', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY5 YOURS LTd', 'SOCIAL_NETWORK', '659878', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000004', '2018-03-22 14:53:53', NULL, '', '001', 'NA'),
(37, 'DSFSIACDAQWP', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY6 YOURS LTd', 'VIRTUAL_CARD_NUMBER', '659879', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000673', '2018-03-22 14:58:15', '2018-03-22 14:58:18', '', '400', 'Subscriber Id must be within correct range for subscriber type.'),
(38, 'XJPGU6ZPOJL3', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY6 YOURS LTd', 'VIRTUAL_CARD_NUMBER', '1234567891234567', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000673', '2018-03-22 15:07:41', NULL, '', '001', 'NA'),
(39, 'BAB9YMHBIBXM', 'PARIZA', 'MERALI', 'S', 'TZS', 'TRULY7 YOURS LTd', 'VIRTUAL_CARD_NUMBER', '12345678912345677', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'SEA CLIFF VILLAGE', '12345', 'TZA', '5204560010000681', '2018-03-22 15:09:06', NULL, '', '001', 'NA'),
(40, 'FOMHVD1PTUMT', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant', 'VIRTUAL_CARD_NUMBER', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5438160000003031', '2018-03-23 12:07:27', '2018-03-23 12:07:34', '', '400', 'Subscriber ID must be numeric when Subscriber Type is VIRTUAL_CARD_NUMBER.'),
(41, 'F5WG9D3YL4L2', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5438160000003031', '2018-03-23 12:08:15', '2018-03-23 12:08:19', '', '400', 'Account is not MoneySend Eligible.'),
(42, 'XORDHLG1QD58', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 12:13:12', NULL, '', '001', 'NA'),
(43, '1GFJOEA3HHFCY', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000673', '2018-03-23 12:13:58', '2018-03-23 12:14:02', '', '400', 'An Alias can only be associated with one Account.'),
(44, '183O5PSX4NZCE', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 1', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000673', '2018-03-23 12:15:51', NULL, '', '001', 'NA'),
(45, '12S3EVIVQT4H2', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 2', 'EMAIL_ADDRESS', 'yogesh1@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000681', '2018-03-23 12:23:38', NULL, '', '001', 'NA'),
(46, 'AMMR0DQACHWO', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 3', 'PHONE_NUMBER', '40010001', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000665', '2018-03-23 12:25:40', NULL, '', '001', 'NA'),
(47, 'HBZPSCJGM9KS', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 3', 'PHONE_NUMBER', '40010001', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000616', '2018-03-23 14:22:46', '2018-03-23 14:22:53', '', '400', 'An Alias can only be associated with one Account.'),
(48, 'DNZBCFBJQIEW', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 4', 'PHONE_NUMBER', '40010001', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000616', '2018-03-23 14:23:50', NULL, '', '001', 'NA'),
(49, '1SGMOENDT6GS', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 5', 'PHONE_NUMBER', '40010001', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 14:38:03', NULL, '', '001', 'NA'),
(50, '8RX5NU8Z0L38', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 6', 'PHONE_NUMBER', '40010001', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000673', '2018-03-23 14:40:49', NULL, '', '001', 'NA'),
(51, '1DZC0BWA1H5AU', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 7', 'PHONE_NUMBER', '40010001', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000681', '2018-03-23 14:47:20', NULL, '', '001', 'NA'),
(52, 'IUUUGPFG52DC', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 10', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 14:58:52', '2018-03-23 14:58:57', '', '400', 'Only one Alias is allowed per Account.'),
(53, '154EYT3EQBMBC', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 11', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 15:06:29', '2018-03-23 15:06:32', '', '400', 'Only one Alias is allowed per Account.'),
(54, 'YOKCJCUZIMUA', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 11', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 15:08:07', '2018-03-23 15:08:09', '', '400', 'Only one Alias is allowed per Account.'),
(55, 'VIFV9YYV003F', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 12', 'EMAIL_ADDRESS', 'yogesh@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 15:08:46', '2018-03-23 15:08:50', '', '400', 'Only one Alias is allowed per Account.'),
(56, 'IIKXDULDPQDI', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 12', 'EMAIL_ADDRESS', 'yogesh1@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 15:10:24', NULL, '', '001', 'NA'),
(57, 'PGAHZCHBFYBA', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 12', 'EMAIL_ADDRESS', 'yogesh2@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000681', '2018-03-23 15:13:53', '2018-03-23 15:13:53', '', '1009', 'Duplicate alias or subscriber id (till number)'),
(58, '1DHUXCF59NMWS', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 13', 'EMAIL_ADDRESS', 'yogesh2@dtb.co.tz', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000681', '2018-03-23 15:14:04', NULL, '', '001', 'NA'),
(59, 'LUO5CVEMJWYB', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 14', 'PHONE_NUMBER', '4110010', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000665', '2018-03-23 15:17:58', NULL, '', '001', 'NA'),
(60, 'E2LK2TSHYN6J', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 15', 'PHONE_NUMBER', '4110011', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000616', '2018-03-23 15:18:46', NULL, '', '001', 'NA'),
(61, '1IARURU7XODVD', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 16', 'SOCIAL_NETWORK', '4110011234567894', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000004', '2018-03-23 15:21:07', NULL, '', '001', 'NA'),
(62, 'OYZXRSSEQACI', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 16', 'SOCIAL_NETWORK', '4110011789456123', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000673', '2018-03-23 15:23:23', NULL, '', '001', 'NA'),
(63, 'GIN6AJ7YCHJN', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 17', 'VIRTUAL_CARD_NUMBER', '4110011224567894', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000681', '2018-03-23 15:34:44', NULL, '', '001', 'NA'),
(64, 'LVX65O2FZYWO', 'Yogesh', 'Goswami', 'S', 'TZS', 'DTB Merchant 18', 'VIRTUAL_CARD_NUMBER', '4110011334567894', '5812', 'PLOT 532 - MASAKI', 'DSM', 'DAR', 'UPANGA RD', '12345', 'TZA', '5204560010000665', '2018-03-23 15:37:03', NULL, '', '001', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `transactionId` varchar(75) NOT NULL,
  `source` varchar(75) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `pan` varchar(255) NOT NULL,
  `type` varchar(60) NOT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `sender_account` varchar(64) DEFAULT NULL,
  `sender_firstName` varchar(255) DEFAULT NULL,
  `sender_lastName` varchar(255) DEFAULT NULL,
  `sender_address_line1` varchar(255) DEFAULT NULL,
  `sender_address_city` varchar(255) DEFAULT NULL,
  `sender_address_countrySubdivision` varchar(255) DEFAULT NULL,
  `sender_address_country` varchar(255) DEFAULT NULL,
  `sender_address_postalCode` varchar(60) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_address_line1` varchar(255) DEFAULT NULL,
  `bank_address_city` varchar(255) DEFAULT NULL,
  `bank_address_countrySubdivision` varchar(255) DEFAULT NULL,
  `bank_address_country` varchar(255) DEFAULT NULL,
  `bank_address_postalCode` varchar(60) DEFAULT NULL,
  `recipient_businessName` varchar(255) DEFAULT NULL,
  `recipient_subscriberId` varchar(60) DEFAULT NULL,
  `recipient_firstName` varchar(255) DEFAULT NULL,
  `recipient_lastName` varchar(255) DEFAULT NULL,
  `recipient_address_line1` varchar(255) DEFAULT NULL,
  `recipient_address_city` varchar(255) DEFAULT NULL,
  `recipient_address_countrySubdivision` varchar(255) DEFAULT NULL,
  `recipient_address_country` varchar(255) DEFAULT NULL,
  `recipient_address_postalCode` varchar(60) DEFAULT NULL,
  `requestId` varchar(255) DEFAULT NULL,
  `reasonCode` varchar(255) DEFAULT NULL,
  `responseCode` varchar(255) DEFAULT NULL,
  `responseDescription` varchar(255) DEFAULT NULL,
  `transactionReference` varchar(255) DEFAULT NULL,
  `responseDate` timestamp NULL DEFAULT NULL,
  `systemTraceAuditNumber` varchar(60) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `networkReferenceNumber` varchar(50) DEFAULT NULL,
  `settlementDate` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `submitDateTime` varchar(50) DEFAULT NULL,
  `sanctionScore` varchar(50) DEFAULT NULL,
  `responseType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `uid`, `reference`, `transactionId`, `source`, `date_created`, `pan`, `type`, `amount`, `currency`, `sender_account`, `sender_firstName`, `sender_lastName`, `sender_address_line1`, `sender_address_city`, `sender_address_countrySubdivision`, `sender_address_country`, `sender_address_postalCode`, `bank_name`, `bank_address_line1`, `bank_address_city`, `bank_address_countrySubdivision`, `bank_address_country`, `bank_address_postalCode`, `recipient_businessName`, `recipient_subscriberId`, `recipient_firstName`, `recipient_lastName`, `recipient_address_line1`, `recipient_address_city`, `recipient_address_countrySubdivision`, `recipient_address_country`, `recipient_address_postalCode`, `requestId`, `reasonCode`, `responseCode`, `responseDescription`, `transactionReference`, `responseDate`, `systemTraceAuditNumber`, `Status`, `StatusCode`, `networkReferenceNumber`, `settlementDate`, `description`, `submitDateTime`, `sanctionScore`, `responseType`) VALUES
(1, '1521452267', '9128331514518116222', '9128331514518116222', 'BANK_ACC', '2018-03-19 12:37:47', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3025702', 'AUTHORIZATION_FAILED', '020001', 'Client does not have permission to invoke service for ICA.', NULL, '2018-03-19 09:37:47', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1521550761', '1401791221114252521', '1401791221114252521', 'BANK_ACC', '2018-03-20 15:59:21', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3057544', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 12:59:21', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1521550887', '7128324922130108294', '7128324922130108294', 'BANK_ACC', '2018-03-20 16:01:27', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3057754', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 13:01:27', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1521551054', '4008212591115324251', '4008212591115324251', 'BANK_ACC', '2018-03-20 16:04:14', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3057956', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 13:04:14', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1521551296', '1151122112351472952', '1151122112351472952', 'BANK_ACC', '2018-03-20 16:08:16', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3058002', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 13:08:16', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1521551333', '2615142412974390112', '2615142412974390112', 'BANK_ACC', '2018-03-20 16:08:53', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3058006', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 13:08:53', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '1521552038', '8241631152119221511', '8241631152119221511', 'BANK_ACC', '2018-03-20 16:20:38', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3058160', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 13:20:38', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '1521552260', '0851131622214132821', '0851131622214132821', 'BANK_ACC', '2018-03-20 16:24:20', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'DTB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'Pizza Hut', '5184680430000006', 'Pizza', 'Hut', 'next to subway', 'Dar es salaam', 'DR', 'TZA', NULL, '3058214', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-20 13:24:20', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '1521623534', '1121318129004531256', '1121318129004531256', 'BANK_ACC', '2018-03-21 12:12:14', '5184680430000006', 'PAYMENT', '2000', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000006', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3073640', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 09:12:14', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '1521623648', '1115830217514224122', '1115830217514224122', 'BANK_ACC', '2018-03-21 12:14:08', '5184680430000006', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000006', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3073672', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 09:14:08', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '1521624034', '4104153182221753102', '4104153182221753102', 'BANK_ACC', '2018-03-21 12:20:34', '5204560010000004', 'PAYMENT', '20', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:20:34', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '1521624116', '3215144110252132918', '3215144110252132918', 'BANK_ACC', '2018-03-21 12:21:56', '5204560010000004', 'PAYMENT', '20', 'TZA', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:21:56', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '1521624291', '8415110261311231123', '8415110261311231123', 'BANK_ACC', '2018-03-21 12:24:51', '5204560010000004', 'PAYMENT', '20', 'TZA', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:24:51', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '1521624360', '0166194837315211042', '0166194837315211042', 'BANK_ACC', '2018-03-21 12:26:00', '5204560010000004', 'PAYMENT', '20', 'TZA', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:26:00', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '1521624427', '1510222231114936191', '1510222231114936191', 'BANK_ACC', '2018-03-21 12:27:07', '5204560010000004', 'PAYMENT', '20', 'TZA', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:27:07', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '1521624434', '1321791864107224253', '1321791864107224253', 'BANK_ACC', '2018-03-21 12:27:14', '5204560010000004', 'PAYMENT', '20', 'TZA', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:27:14', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '1521624456', '3371626214853018721', '3371626214853018721', 'BANK_ACC', '2018-03-21 12:27:36', '5204560010000004', 'PAYMENT', '20', 'TZA', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:27:36', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '1521624481', '6221211940111811526', '6221211940111811526', 'BANK_ACC', '2018-03-21 12:28:01', '5204560010000004', 'PAYMENT', '20', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:28:01', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '1521624656', '9187411421951312262', '9187411421951312262', 'BANK_ACC', '2018-03-21 12:30:56', '5204560010000004', 'PAYMENT', '20', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 09:30:56', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '1521624776', '4211221219916210714', '4211221219916210714', 'BANK_ACC', '2018-03-21 12:32:56', '5204560010000004', 'PAYMENT', '20', 'TZS', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5204560010000004', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3073904', NULL, '', NULL, NULL, '2018-03-21 09:32:56', '073904', 'SUCCESS', 200, '214088248', '0321', 'Approved or completed successfully', '2018-03-21T09:33:00Z', NULL, 'PAYMENT'),
(21, '1521624859', '2521602513530221168', '2521602513530221168', 'BANK_ACC', '2018-03-21 12:34:19', '5184680430000261', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000261', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3073936', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 09:34:19', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '1521624908', '0113211121245304349', '0113211121245304349', 'BANK_ACC', '2018-03-21 12:35:08', '5184680510000009', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3073948', NULL, '', NULL, NULL, '2018-03-21 09:35:08', '073948', 'SUCCESS', 200, '411263115', '0321', 'Approved or completed successfully', '2018-03-21T09:35:11Z', NULL, 'PAYMENT'),
(23, '1521624960', '1102133626892111911', '1102133626892111911', 'BANK_ACC', '2018-03-21 12:36:00', '5184680520000015', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680520000015', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3073962', NULL, '', NULL, NULL, '2018-03-21 09:36:00', '073962', 'SUCCESS', 200, '213023245', '0321', 'Approved or completed successfully', '2018-03-21T09:36:01Z', NULL, 'PAYMENT'),
(24, '1521625295', '8576119224102411801', '8576119224102411801', 'BANK_ACC', '2018-03-21 12:41:35', '5184680420000016', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680420000016', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074034', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 09:41:35', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '1521625430', '7322021521111561111', '7322021521111561111', 'BANK_ACC', '2018-03-21 12:43:50', '5184680460000017', 'PAYMENT', '20', 'MXN', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680460000017', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074056', NULL, '', NULL, NULL, '2018-03-21 09:43:50', '074056', 'SUCCESS', 200, '212623180', '0321', 'Approved or completed successfully', '2018-03-21T09:43:54Z', NULL, 'PAYMENT'),
(26, '1521625467', '3123121289491316251', '3123121289491316251', 'BANK_ACC', '2018-03-21 12:44:27', '5184680470000031', 'PAYMENT', '20', 'PHP', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680470000031', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074070', NULL, '', NULL, NULL, '2018-03-21 09:44:27', '074070', 'SUCCESS', 200, '111718422', '0321', 'Approved or completed successfully', '2018-03-21T09:44:29Z', NULL, 'PAYMENT'),
(27, '1521625501', '1225171450221963506', '1225171450221963506', 'BANK_ACC', '2018-03-21 12:45:01', '5184680450000027', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680450000027', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074086', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 09:45:01', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '1521626006', '3412620219259111607', '3412620219259111607', 'BANK_ACC', '2018-03-21 12:53:26', 'GoodCard@AccountMapping.com', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', 'GoodCard@AccountMapping.com', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074192', 'INVALID_INPUT_LENGTH', '070046', 'Receiving Card Number must be 11 to 19 characters in length.', NULL, '2018-03-21 09:53:26', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '1521626111', '1592104392111810625', '1592104392111810625', 'BANK_ACC', '2018-03-21 12:55:11', 'GoodCard@AccountMapping.com', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', 'GoodCard@AccountMapping.com', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074212', 'INVALID_INPUT_LENGTH', '070046', 'Receiving Card Number must be 11 to 19 characters in length.', NULL, '2018-03-21 09:55:11', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '1521626475', '8212181911052167120', '8212181911052167120', 'BANK_ACC', '2018-03-21 13:01:15', '518468047000124', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '518468047000124', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074274', NULL, '', NULL, NULL, '2018-03-21 10:01:15', '074274', 'SUCCESS', 200, '114568146', '0321', 'Approved or completed successfully', '2018-03-21T10:01:18Z', NULL, 'PAYMENT'),
(31, '1521626572', '5143214111111015220', '5143214111111015220', 'BANK_ACC', '2018-03-21 13:02:52', '5184680430000279', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000279', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074286', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:02:52', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '1521626829', '1010101358232622682', '1010101358232622682', 'BANK_ACC', '2018-03-21 13:07:09', '5184680430000055', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000055', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074342', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:07:09', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '1521627110', '6421728812123031251', '6421728812123031251', 'BANK_ACC', '2018-03-21 13:11:50', '5184680430000055', 'PAYMENT', '20', 'USD', '255784238772', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000055', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074388', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:11:50', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '1521627323', '7431111321241122607', '7431111321241122607', 'CREDIT_CARD', '2018-03-21 13:15:23', '5184680430000055', 'PAYMENT', '20', 'USD', '5506530010000010', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000055', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074432', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:15:23', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '1521627377', '2319819211526271271', '2319819211526271271', 'CREDIT_CARD', '2018-03-21 13:16:17', '5184680510000009', 'PAYMENT', '20', 'USD', '5506530010000010', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074444', NULL, '', NULL, NULL, '2018-03-21 10:16:17', '074444', 'SUCCESS', 200, '413618019', '0321', 'Approved or completed successfully', '2018-03-21T10:16:20Z', NULL, 'PAYMENT'),
(36, '1521627504', '9812115115442386320', '9812115115442386320', 'CREDIT_CARD', '2018-03-21 13:18:24', '5184680510000009', 'PAYMENT', '20', 'USD', '5506530010000010', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074466', 'INVALID_INPUT_FORMAT', '060003', 'Merchant ID is required.', NULL, '2018-03-21 10:18:24', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '1521627592', '1114021261771259180', '1114021261771259180', 'CREDIT_CARD', '2018-03-21 13:19:52', '5184680510000009', 'PAYMENT', '20', 'USD', '5506530010000010', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074480', NULL, '', NULL, NULL, '2018-03-21 10:19:52', '074480', 'SUCCESS', 200, '312538019', '0321', 'Approved or completed successfully', '2018-03-21T10:19:55Z', NULL, 'PAYMENT'),
(38, '1521628540', '0011815223731824242', '0011815223731824242', 'CREDIT_CARD', '2018-03-21 13:35:40', '5184680430000071', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000071', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074658', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:35:40', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '1521628619', '8524152061113411980', '8524152061113411980', 'CREDIT_CARD', '2018-03-21 13:36:59', '5184680430000303', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000303', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074670', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:36:59', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '1521628678', '1321452111518495212', '1321452111518495212', 'CREDIT_CARD', '2018-03-21 13:37:58', '5184680430000303', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680430000303', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3074682', 'DECLINE', '05', 'Do not honor', NULL, '2018-03-21 10:37:58', NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '1521705765', '2151143122193112140', '2151143122193112140', 'CREDIT_CARD', '2018-03-22 11:02:45', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3106132', NULL, '00', NULL, NULL, '2018-03-22 08:02:45', '106132', 'SUCCESS', 200, '211875482', '0322', 'Approved or completed successfully', '2018-03-22T08:02:53Z', NULL, 'PAYMENT'),
(42, '1522224638', '5216132171520621137', '5216132171520621137', 'CREDIT_CARD', '2018-03-28 11:10:38', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3296382', NULL, '00', NULL, NULL, '2018-03-28 08:10:38', '296382', 'SUCCESS', 200, '112226284', '0328', 'Approved or completed successfully', '2018-03-28T08:10:40Z', NULL, 'PAYMENT'),
(43, '1522226958', '2211725901648418212', '2211725901648418212', 'CREDIT_CARD', '2018-03-28 11:49:18', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3297188', NULL, '00', NULL, NULL, '2018-03-28 08:49:18', '297188', 'SUCCESS', 200, '211876353', '0328', 'Approved or completed successfully', '2018-03-28T08:49:19Z', NULL, 'PAYMENT'),
(44, '1522227645', '3115120242217922423', '3115120242217922423', 'CREDIT_CARD', '2018-03-28 12:00:45', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3297416', NULL, '00', NULL, NULL, '2018-03-28 09:00:45', '297416', 'SUCCESS', 200, '413621001', '0328', 'Approved or completed successfully', '2018-03-28T09:00:46Z', NULL, 'PAYMENT'),
(45, '1522227827', '1922141255132107601', '1922141255132107601', 'CREDIT_CARD', '2018-03-28 12:03:47', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3297488', NULL, '00', NULL, NULL, '2018-03-28 09:03:47', '297488', 'SUCCESS', 200, '414601132', '0328', 'Approved or completed successfully', '2018-03-28T09:03:47Z', NULL, 'PAYMENT'),
(46, '1522230861', '9183101250122241541', '9183101250122241541', 'CREDIT_CARD', '2018-03-28 12:54:21', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3299100', NULL, '00', NULL, NULL, '2018-03-28 09:54:21', '299100', 'SUCCESS', 200, '412510987', '0328', 'Approved or completed successfully', '2018-03-28T09:54:23Z', NULL, 'PAYMENT'),
(47, '1522231061', '1711119503345621481', '1711119503345621481', 'CREDIT_CARD', '2018-03-28 12:57:41', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3299164', NULL, '00', NULL, NULL, '2018-03-28 09:57:41', '299164', 'SUCCESS', 200, '213026215', '0328', 'Approved or completed successfully', '2018-03-28T09:57:41Z', NULL, 'PAYMENT'),
(48, '1522231180', '7361208810215514417', '7361208810215514417', 'CREDIT_CARD', '2018-03-28 12:59:40', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3299202', NULL, '00', NULL, NULL, '2018-03-28 09:59:40', '299202', 'SUCCESS', 200, '412510988', '0328', 'Approved or completed successfully', '2018-03-28T09:59:40Z', NULL, 'PAYMENT'),
(49, '1522234828', '4850915026122571211', '4850915026122571211', 'CREDIT_CARD', '2018-03-28 14:00:28', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3300490', NULL, '00', NULL, NULL, '2018-03-28 11:00:28', '300490', 'SUCCESS', 200, '213026222', '0328', 'Approved or completed successfully', '2018-03-28T11:00:29Z', NULL, 'PAYMENT'),
(50, '1522235580', '2721902112112345114', '2721902112112345114', 'CREDIT_CARD', '2018-03-28 14:13:00', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3300748', NULL, '00', NULL, NULL, '2018-03-28 11:13:00', '300748', 'SUCCESS', 200, '311781167', '0328', 'Approved or completed successfully', '2018-03-28T11:13:00Z', NULL, 'PAYMENT'),
(51, '1522235646', '5142320161121026720', '5142320161121026720', 'CREDIT_CARD', '2018-03-28 14:14:06', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3300788', NULL, '00', NULL, NULL, '2018-03-28 11:14:06', '300788', 'SUCCESS', 200, '312541010', '0328', 'Approved or completed successfully', '2018-03-28T11:14:06Z', NULL, 'PAYMENT'),
(52, '1522236320', '2442238161124111021', '2442238161124111021', 'CREDIT_CARD', '2018-03-28 14:25:20', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 11:25:20', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '1522236452', '9611872107222515158', '9611872107222515158', 'CREDIT_CARD', '2018-03-28 14:27:32', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 11:27:32', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '1522236524', '5432491212111027219', '5432491212111027219', 'CREDIT_CARD', '2018-03-28 14:28:44', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 11:28:44', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '1522236570', '4111152575802120628', '4111152575802120628', 'CREDIT_CARD', '2018-03-28 14:29:30', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 11:29:30', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '1522236730', '0821101436121143396', '0821101436121143396', 'CREDIT_CARD', '2018-03-28 14:32:10', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 11:32:10', NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '1522236935', '8411228312172151034', '8411228312172151034', 'CREDIT_CARD', '2018-03-28 14:35:35', '5184680510000009', 'PAYMENT', '20', 'USD', '255658202202', 'Salma Kanji', 'Lalji', 'Mindu', 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'CRDB', NULL, 'DAR ES SALAAM', 'DA', 'TZA', NULL, 'TRULY YOURS LTd', '5184680510000009', 'PARIZA', 'MERALI', 'PLOT 532 - MASAKI', 'Dar es salaam', 'DR', 'TZA', NULL, '3301202', NULL, '00', NULL, NULL, '2018-03-28 11:35:35', '301202', 'SUCCESS', 200, '413621020', '0328', 'Approved or completed successfully', '2018-03-28T11:35:36Z', NULL, 'PAYMENT');

-- --------------------------------------------------------

--
-- Table structure for table `reverse`
--

DROP TABLE IF EXISTS `reverse`;
CREATE TABLE IF NOT EXISTS `reverse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  `tnxReference` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `requestId` varchar(255) DEFAULT NULL,
  `reasonCode` varchar(255) DEFAULT NULL,
  `responseCode` varchar(255) DEFAULT NULL,
  `responseDescription` varchar(255) DEFAULT NULL,
  `transactionReference` varchar(255) DEFAULT NULL,
  `responseDate` timestamp NULL DEFAULT NULL,
  `systemTraceAuditNumber` varchar(60) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `networkReferenceNumber` varchar(50) DEFAULT NULL,
  `settlementDate` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `submitDateTime` varchar(50) DEFAULT NULL,
  `sanctionScore` varchar(50) DEFAULT NULL,
  `responseType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reverse`
--

INSERT INTO `reverse` (`id`, `uid`, `tnxReference`, `reason`, `date_created`, `requestId`, `reasonCode`, `responseCode`, `responseDescription`, `transactionReference`, `responseDate`, `systemTraceAuditNumber`, `Status`, `StatusCode`, `networkReferenceNumber`, `settlementDate`, `description`, `submitDateTime`, `sanctionScore`, `responseType`) VALUES
(1, '1522231222', '7361208810215514417', 'FAILURE IN PROCESSING', '2018-03-28 13:00:22', '3299222', 'AUTHORIZATION_FAILED', '020001', 'Client does not have permission to invoke service for ICA.', NULL, NULL, NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1522234860', '4850915026122571211', 'FAILURE IN PROCESSING', '2018-03-28 14:01:00', '3300498', 'AUTHORIZATION_FAILED', '020001', 'Client does not have permission to invoke service for ICA.', NULL, NULL, NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1522234939', '4850915026122571211', 'FAILURE IN PROCESSING', '2018-03-28 14:02:19', '3300540', 'AUTHORIZATION_FAILED', '020001', 'Client does not have permission to invoke service for ICA.', NULL, NULL, NULL, 'Request Error', 400, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1522235214', '4850915026122571211', 'FAILURE IN PROCESSING', '2018-03-28 14:06:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1522235446', '4850915026122571211', 'FAILURE IN PROCESSING', '2018-03-28 14:10:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1522235572', '4850915026122571211', 'FAILURE IN PROCESSING', '2018-03-28 14:12:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '1522235609', '4850915026122571211', 'FAILURE IN PROCESSING', '2018-03-28 14:13:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '1522235668', '5142320161121026720', 'FAILURE IN PROCESSING', '2018-03-28 14:14:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '1522235695', '5142320161121026720', 'FAILURE IN PROCESSING', '2018-03-28 14:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 300, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '1522235840', '5142320161121026720', 'FAILURE IN PROCESSING', '2018-03-28 14:17:20', '3300790', NULL, '00', NULL, NULL, NULL, '300790', 'SUCCESS', 200, '312541010', '0328', 'Approved or completed successfully', '2018-03-28T11:14:30Z', NULL, 'PAYMENTREVERSAL'),
(11, '1522237115', '8411228312172151034', 'FAILURE IN PROCESSING', '2018-03-28 14:38:35', '3301272', NULL, '00', NULL, '8411228312172151034', NULL, '301272', 'SUCCESS', 200, '413621020', '0328', 'Approved or completed successfully', '2018-03-28T11:38:36Z', NULL, 'PAYMENTREVERSAL');

-- --------------------------------------------------------

--
-- Table structure for table `unallocated_pans`
--

DROP TABLE IF EXISTS `unallocated_pans`;
CREATE TABLE IF NOT EXISTS `unallocated_pans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pan` varchar(20) NOT NULL,
  `uid` varchar(9) NOT NULL,
  `mapped` tinyint(4) NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_mapped` datetime DEFAULT NULL,
  `mapping_id` varchar(12) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pan_UNIQUE` (`pan`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unallocated_pans`
--

INSERT INTO `unallocated_pans` (`id`, `pan`, `uid`, `mapped`, `date_created`, `date_mapped`, `mapping_id`) VALUES
(4, '5204560010000004', '0', 0, '2018-03-21 11:03:43', NULL, ''),
(11, '5204560010000673', '1', 0, '2018-03-22 14:20:13', NULL, ''),
(12, '5204560010000681', '2', 0, '2018-03-22 14:20:13', NULL, ''),
(13, '5204560010000665', '3', 0, '2018-03-22 14:21:39', NULL, ''),
(14, '5204560010000616', '4', 0, '2018-03-22 14:21:59', NULL, ''),
(15, '5438160000003031', '10', 1, '2018-03-23 11:58:03', NULL, ''),
(16, '5438160000006067', '11', 1, '2018-03-23 11:58:03', NULL, ''),
(19, '5438160000009954', '12', 1, '2018-03-23 12:00:00', NULL, ''),
(20, '5438160000006695', '13', 1, '2018-03-23 12:00:00', NULL, ''),
(21, '5438160000001498', '14', 1, '2018-03-23 12:00:28', NULL, ''),
(22, '5438160000002785', '15', 1, '2018-03-23 12:00:28', NULL, ''),
(23, '5438160000006216', '16', 1, '2018-03-23 12:00:40', NULL, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
