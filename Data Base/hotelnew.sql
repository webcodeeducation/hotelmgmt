-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 07:41 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_data`
--

CREATE TABLE `all_data` (
  `id` int(10) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Address_No` text NOT NULL,
  `Room_No` varchar(10) NOT NULL,
  `Room_Type` varchar(20) NOT NULL,
  `No_People` varchar(10) NOT NULL,
  `No_Days` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_data`
--

INSERT INTO `all_data` (`id`, `First_Name`, `Last_Name`, `Phone_No`, `Email_Id`, `Address_No`, `Room_No`, `Room_Type`, `No_People`, `No_Days`) VALUES
(1, 'aarti', 'raan', '7888405066', 'aarti@gmail.com', 'karnal', '101', '1', '1', '1'),
(2, 'diksha', 'rana', '9813281221', 'diksha@gmail.com', 'karnal', '202', '1', '1', '1'),
(3, 'dddd', 'dddd', '7888405066', 'ddd@gmail.com', 'karnal', '403', '1', '1', '1'),
(4, 'eeee', 'eeee', '7888405066', 'laxman091@gmail.com', 'sdfsdfsdf', '308', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `mno` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `date` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ymsg` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `mno`, `email`, `date`, `ymsg`) VALUES
('vipul', '9825817442', 'vipul@yahoo.com', '12-5-2010', 'wel come'),
('fff', '69875698425', 'tt@yahoo.in', '2-2-2010', 'fggdf'),
('vipul', '9825817442', 'vipul@yahoo.com', '2-2-2010', 'hiiiiiiiii'),
('nikunj', '9601626442', 'n_m@yahoo.com', '20-3-2010', 'wel come'),
('ravi', '9979524123', 'r@yahoo.com', '24-3-2010', 'wel come'),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_management`
--

CREATE TABLE `hotel_management` (
  `id` int(10) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Address_No` text NOT NULL,
  `Room_No` varchar(10) NOT NULL,
  `Room_Type` varchar(20) NOT NULL,
  `No_People` varchar(10) NOT NULL,
  `No_Days` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_management`
--

INSERT INTO `hotel_management` (`id`, `First_Name`, `Last_Name`, `Phone_No`, `Email_Id`, `Address_No`, `Room_No`, `Room_Type`, `No_People`, `No_Days`) VALUES
(3, 'aarti', 'raan', '7888405066', 'aarti@gmail.com', 'karnal', '101', '1', '1', '1'),
(4, 'diksha', 'rana', '9813281221', 'diksha@gmail.com', 'karnal', '202', '1', '1', '1'),
(5, 'dddd', 'dddd', '7888405066', 'ddd@gmail.com', 'karnal', '403', '1', '1', '1'),
(6, 'eeee', 'eeee', '7888405066', 'eeeee@gmail.com', 'sdfsdfsdf', '308', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `r_id` int(30) NOT NULL DEFAULT 0,
  `r_chkindt` varchar(50) NOT NULL DEFAULT '',
  `r_chkoutdt` varchar(50) NOT NULL DEFAULT '',
  `r_rooms` varchar(20) NOT NULL DEFAULT '0',
  `r_type` varchar(20) NOT NULL DEFAULT '',
  `r_name` varchar(50) NOT NULL DEFAULT '',
  `r_email` varchar(100) NOT NULL DEFAULT '',
  `r_company` varchar(50) NOT NULL DEFAULT '',
  `r_phone` varchar(20) NOT NULL DEFAULT '0',
  `r_address` varchar(200) NOT NULL DEFAULT '',
  `r_spanyreq` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`r_id`, `r_chkindt`, `r_chkoutdt`, `r_rooms`, `r_type`, `r_name`, `r_email`, `r_company`, `r_phone`, `r_address`, `r_spanyreq`) VALUES
(8, '24-3-2010', '24-4-2010', '8', 'deluxe', 'finava vipul', 'f_v@gmail.com', 'abc', '9825817442', 'Anida', 'no'),
(7, '24-3-2010', '28-3-2010', '17', 'deluxe', 'nikunj', 'n@yahoo.com', 'nn', '9601626442', 'Lathi', 'yes'),
(6, '2008-3-4', '2010-3-8', '1', '2600', 'vipul', 'v@gmail.com', 'sd', '9825817442', 'Anida', 'no '),
(8, '24-3-2010', '30-3-2010', '14', 'delux', 'vishal', 'vishal@ya.com', 'vishal', '972580180', 'Anida', 'no'),
(9, '25-3-2010', '28-3-2010', '3', 'deluxe', 'vipul', 'vipul@yahoo.com', 'lg', '9825817442', 'Anida', 'no '),
(0, '2008-3-4', '2010-3-8', '1', '2600', 'vipul', 'v@gmail.com', 'sd', '9825817442', 'Anida', 'no ');

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `type` varchar(50) NOT NULL DEFAULT '',
  `inrsin` varchar(30) NOT NULL DEFAULT '0',
  `inrdbl` varchar(30) NOT NULL DEFAULT '0',
  `usdsin` varchar(30) NOT NULL DEFAULT '0',
  `usddbl` varchar(30) NOT NULL DEFAULT '0',
  `avroom` int(3) NOT NULL DEFAULT 0,
  `totroom` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`type`, `inrsin`, `inrdbl`, `usdsin`, `usddbl`, `avroom`, `totroom`) VALUES
('standard', '2600', '3100', '80', '90', 17, 6),
('deluxe', '3100', '3600', '90', '110', 10, 15),
('suite', '2100', '3200', '80', '100', 9, 10),
('delux', '1100', '2200', '50', '80', 25, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('vishal', '789'),
('vijay', '123'),
('nikunj', '456'),
('kkk', 'kkk'),
('vipul', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_data`
--
ALTER TABLE `all_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_management`
--
ALTER TABLE `hotel_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `r_id` (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_data`
--
ALTER TABLE `all_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotel_management`
--
ALTER TABLE `hotel_management`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
