-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 09:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelseaview`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Unique ID` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Unique ID`, `username`, `password`) VALUES
(1, 'ashish', 'ashish01');

-- --------------------------------------------------------

--
-- Table structure for table `hoteld`
--

CREATE TABLE `hoteld` (
  `t_r` int(11) NOT NULL,
  `r_r` int(11) NOT NULL,
  `t_s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoteld`
--

INSERT INTO `hoteld` (`t_r`, `r_r`, `t_s`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(5) NOT NULL,
  `dot` varchar(15) NOT NULL,
  `time` varchar(10) NOT NULL,
  `amt` int(10) NOT NULL,
  `method` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentsf`
--

CREATE TABLE `paymentsf` (
  `id` int(10) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `c_number` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `r_n` int(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `method` varchar(20) NOT NULL,
  `totalamt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentsf`
--

INSERT INTO `paymentsf` (`id`, `f_name`, `l_name`, `c_number`, `email`, `r_n`, `day`, `month`, `year`, `time`, `method`, `totalamt`) VALUES
(4, 'a', 'a', '1', 'a', 1, '28', 'Mar', '2020', '11:50', '0', '1400');

-- --------------------------------------------------------

--
-- Table structure for table `roomd`
--

CREATE TABLE `roomd` (
  `rn` varchar(10) NOT NULL,
  `beds` int(5) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `tv` varchar(5) NOT NULL,
  `internet` varchar(5) NOT NULL,
  `price` int(7) NOT NULL,
  `rstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomd`
--

INSERT INTO `roomd` (`rn`, `beds`, `ac`, `tv`, `internet`, `price`, `rstatus`) VALUES
('1', 1, 'yes', 'yes', 'yes', 700, 'Reserved'),
('2', 2, 'yes', 'yes', 'no', 1100, 'Unreserved'),
('3', 2, 'yes', 'yes', 'yes', 1200, 'Unreserved'),
('4', 2, 'no', 'yes', 'no', 700, 'Unreserved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Unique ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentsf`
--
ALTER TABLE `paymentsf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `roomd`
--
ALTER TABLE `roomd`
  ADD PRIMARY KEY (`rn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Unique ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paymentsf`
--
ALTER TABLE `paymentsf`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
