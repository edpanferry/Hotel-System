-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 03:52 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edpan_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_tbl`
--

CREATE TABLE `hotel_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `rtype` varchar(255) NOT NULL,
  `rnumber` int(255) NOT NULL,
  `extra` int(255) NOT NULL,
  `checkdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms_tbl`
--

CREATE TABLE `rooms_tbl` (
  `id` int(11) NOT NULL,
  `number` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `subtype` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `info` longtext NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms_tbl`
--

INSERT INTO `rooms_tbl` (`id`, `number`, `type`, `subtype`, `price`, `info`, `status`) VALUES
(1, 1, 'Standard', 'Twin', 2700, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(2, 2, 'Standard', 'Double', 2700, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(3, 3, 'Standard', 'Double', 2700, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(4, 4, 'Standard', 'Double', 2700, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(5, 5, 'Standard', 'Twin', 2700, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(6, 6, 'Standard', 'Twin', 2700, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(7, 7, 'Deluxe', 'Twin', 3500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(8, 8, 'Deluxe', 'Twin', 3500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(9, 9, 'Deluxe', 'Twin', 3500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(10, 10, 'Deluxe', 'Double', 3500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(11, 11, 'Deluxe', 'Double', 3500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(12, 12, 'Deluxe', 'Double', 3500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(13, 13, 'Suite', 'Suite', 8500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(14, 14, 'Suite', 'Suite', 8500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(15, 15, 'Suite', 'Suite', 8500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(16, 16, 'Suite', 'Suite', 8500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(17, 17, 'Suite', 'Suite w/ Connecting Room', 10500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(18, 18, 'Suite', 'Suite w/ Connecting Room', 10500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(19, 19, 'Suite', 'Suite w/ Connecting Room', 10500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available'),
(20, 20, 'Suite', 'Suite w/ Connecting Room', 10500, 'Inclusions:\r\n\r\n   Complimentary Breakfast\r\n   Wi-Fi Access\r\n   Cable TV\r\n   Hot and Cold Shower\r\n\r\nConditions:\r\n\r\n   Room rates are inclusive of service and government tax\r\n   Room rates are quoted for single or twin sharing\r\n   Extra person rate is Php 750.00', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `sales_tbl`
--

CREATE TABLE `sales_tbl` (
  `id` int(11) NOT NULL,
  `rnumber` int(255) NOT NULL,
  `rtype` varchar(255) NOT NULL,
  `subtype` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `time` double NOT NULL,
  `sales` double NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_tbl`
--

INSERT INTO `sales_tbl` (`id`, `rnumber`, `rtype`, `subtype`, `discount`, `time`, `sales`, `date`) VALUES
(3, 5, 'Standard', 'Twin', 'No Discount', 1.88, 3450, '2019-10-27 21:26:46'),
(4, 9, 'Deluxe', 'Twin', 'No Discount', 1.9, 3500, '2019-10-27 21:30:20'),
(5, 15, 'Suite', 'Suite', 'No Discount', 1.93, 8500, '2019-10-27 21:32:30'),
(6, 1, 'Standard', 'Twin', 'Group Rate', -21.87, 3990, '2019-10-27 21:39:08'),
(7, 6, 'Standard', 'Twin', 'Membership Rate', -45.85, 1890, '2019-10-27 21:43:58'),
(8, 9, 'Deluxe', 'Twin', 'Special Rate', 0.3, 3150, '2019-10-28 00:09:58'),
(9, 3, 'Standard', 'Double', 'Special Rate', 0.45, 3105, '2019-10-28 00:19:30'),
(10, 10, 'Deluxe', 'Double', 'No Discount', 0.43, 3500, '2019-10-28 00:20:48'),
(11, 14, 'Suite', 'Suite', 'Group Rate', 0, 8075, '2019-10-28 00:24:51'),
(12, 2, 'Standard', 'Double', 'Membership Rate', 0, 1890, '2019-10-28 00:26:14'),
(13, 7, 'Deluxe', 'Twin', 'No Discount', 0, 3500, '2019-10-28 00:29:21'),
(14, 2, 'Standard', 'Double', 'No Discount', 0, 2700, '2019-10-28 00:32:09'),
(15, 3, 'Standard', 'Double', 'Membership Rate', 0, 2415, '2019-10-28 09:17:08'),
(16, 2, 'Standard', 'Double', 'No Discount', 0, 2700, '2019-10-28 09:21:19'),
(17, 8, 'Deluxe', 'Twin', 'No Discount', 0, 3500, '2019-10-28 09:39:23'),
(18, 8, 'Deluxe', 'Twin', 'No Discount', 0, 3500, '2019-10-28 09:41:38'),
(19, 2, 'Standard', 'Double', 'No Discount', 0, 2700, '2019-10-28 09:42:39'),
(20, 9, 'Deluxe', 'Twin', 'No Discount', 0, 5000, '2019-10-28 09:43:38'),
(21, 14, 'Suite', 'Suite', 'Membership Rate', -23.98, 5950, '2019-10-28 11:29:38'),
(22, 5, 'Standard', 'Twin', 'Family Rate', 0, 2295, '2019-10-29 09:40:29'),
(23, 11, 'Deluxe', 'Double', 'No Discount', -23.95, 3500, '2019-10-29 09:45:57'),
(24, 1, 'Standard', 'Twin', 'Special Rate', 85.13, 9577.13, '2019-11-01 22:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  `protected` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `name`, `address`, `gender`, `contact`, `username`, `password`, `access`, `protected`) VALUES
(5, 'Admin', 'Philippines', 'Male', 987654321, 'Admin', 'admin', 'Administrator', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_tbl`
--
ALTER TABLE `hotel_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms_tbl`
--
ALTER TABLE `rooms_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_tbl`
--
ALTER TABLE `sales_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_tbl`
--
ALTER TABLE `hotel_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rooms_tbl`
--
ALTER TABLE `rooms_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `sales_tbl`
--
ALTER TABLE `sales_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
