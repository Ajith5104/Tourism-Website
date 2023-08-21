-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 06:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tata_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad-acess`
--

CREATE TABLE `ad-acess` (
  `Country` varchar(30) NOT NULL,
  `Spots` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `utype` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`email`, `pwd`, `utype`) VALUES
('seetha21@gmail.com', '123', 0),
('seetha21@gmail.com', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `adminregister1`
--

CREATE TABLE `adminregister1` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminregister1`
--

INSERT INTO `adminregister1` (`id`, `name`, `email`, `password`, `cpassword`) VALUES
(1, 'Mohamed Ovais Akram', 'ovais1022@gmail.com', '202cb962ac59075b964b07152d234b', '123'),
(2, 'akram', 'ff@gmail.com', '202cb962ac59075b964b07152d234b', '123'),
(3, 'mohamed', 'ovaiscivil@gmail.com', '123', '123'),
(4, 'ovais', 'qq@gmail.com', '123', '123'),
(5, 'admin', 'admin@gmail.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `crud_operation`
--

CREATE TABLE `crud_operation` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_operation`
--

INSERT INTO `crud_operation` (`id`, `name`, `email`, `mobile`, `password`, `role`) VALUES
(6, 'thirucitrambalam', 'thir2133u@gmail.com', '9876567865', '754', ''),
(8, 'naveen kumar', 'naveen@gmail.com', '123456', '76522', ''),
(9, 'rohit', 'kannan@Gmail.com', '754768977767', 'adfafafaf', ''),
(15, 'ajith', 'aji@gmail.com', '9898989', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `Name` varchar(50) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`Name`, `Mobile`, `email`, `password`) VALUES
('Ajith M', '', 'ajithkumar23062002@gmail.com', '12345'),
('Ajith M', '', 'ajithkumar23062002@gmail.com', '12345'),
('Ajith M', '', 'ajithkumar23062002@gmail.com', '0000'),
('', '', '', ''),
('', '', '', ''),
('vinoth', '1234567891', 'vinoth@gmail.com', '8220'),
('ov', '', 'aaaaa@gmail.com', '123'),
('raja', '', 'raja@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `employee_records`
--

CREATE TABLE `employee_records` (
  `EMP_SERIAL` int(30) NOT NULL,
  `EMP_ID` varchar(30) NOT NULL,
  `EMP_NAME` varchar(30) NOT NULL,
  `EMP_ADDRESS` varchar(30) NOT NULL,
  `EMP_DESIGNATION` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry1`
--

CREATE TABLE `enquiry1` (
  `enq_id` int(30) NOT NULL,
  `enq_name` varchar(30) NOT NULL,
  `enq_email` varchar(30) NOT NULL,
  `enq_number` varchar(30) NOT NULL,
  `enq_message` varchar(56) NOT NULL,
  `Duration` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry1`
--

INSERT INTO `enquiry1` (`enq_id`, `enq_name`, `enq_email`, `enq_number`, `enq_message`, `Duration`) VALUES
(1, 'kishore', 'vprasanna1293@gmail.com', '9597171162', 'dsf ', '2022-11-07 08:59:59'),
(2, 'kishore', 'seethapr2130@gmail.com', '9876543210', 'sd', '2022-11-08 13:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `cpop` bigint(20) NOT NULL,
  `cstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`cid`, `cname`, `cpop`, `cstate`) VALUES
(1, 'India', 500000066, 29),
(4, 'UK', 28947445, 21),
(5, 'USA', 454676690, 56);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `utyp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `pwd`, `code`, `utyp`) VALUES
(1, 'Praveen Kumar', 'inavitstudio@gmail.com', '202cb962ac59075b964b07152d234b70', '123', 1),
(2, 'Gpkumar', 'praveen.kaashiv@gmail.com', '202cb962ac59075b964b07152d234b70', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminregister1`
--
ALTER TABLE `adminregister1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_operation`
--
ALTER TABLE `crud_operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_records`
--
ALTER TABLE `employee_records`
  ADD PRIMARY KEY (`EMP_SERIAL`);

--
-- Indexes for table `enquiry1`
--
ALTER TABLE `enquiry1`
  ADD PRIMARY KEY (`enq_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminregister1`
--
ALTER TABLE `adminregister1`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crud_operation`
--
ALTER TABLE `crud_operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee_records`
--
ALTER TABLE `employee_records`
  MODIFY `EMP_SERIAL` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry1`
--
ALTER TABLE `enquiry1`
  MODIFY `enq_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
