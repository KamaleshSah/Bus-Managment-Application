-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 05:54 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `name`, `username`, `password`) VALUES
(1, 'kamlesh', 'admin', 'admin'),
(2, 'Siddharth', 'admin2', 'admin21');

-- --------------------------------------------------------

--
-- Table structure for table `bus_assign`
--

CREATE TABLE `bus_assign` (
  `aid` int(10) NOT NULL,
  `employee_no` varchar(100) NOT NULL,
  `bus_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_assign`
--

INSERT INTO `bus_assign` (`aid`, `employee_no`, `bus_no`) VALUES
(1, '1', 'KR - 7565'),
(2, '2', 'WB=3256');

-- --------------------------------------------------------

--
-- Table structure for table `bus_booking`
--

CREATE TABLE `bus_booking` (
  `booking_id` int(10) NOT NULL,
  `booking_user` varchar(100) NOT NULL,
  `journey_date` date NOT NULL,
  `bus_no` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_booking`
--

INSERT INTO `bus_booking` (`booking_id`, `booking_user`, `journey_date`, `bus_no`, `seat`, `id_no`, `first_name`, `last_name`) VALUES
(1, 'admin', '2017-05-05', 'KR - 7565', '2', '3232', 'kamalesh', 'sah'),
(2, 'admin', '2017-05-05', 'KR - 7565', '2', '1234', 'Siddharth', 'Sah'),
(3, 'admin', '2017-05-05', 'KR - 7565', '2', '34567', 'sidhi', 'sah'),
(4, 'admin', '2017-04-29', 'HR-34567', '2', '1234', 'kamalesh', 'sah'),
(5, 'admin', '2017-04-29', 'HR-34567', '4', '34567', 'Siddharth', 'Singh'),
(6, 'admin', '2017-04-29', 'HR-34567', '3', '5464', 'fdsf', 'fdsfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `id` int(20) NOT NULL,
  `bus_no` varchar(100) NOT NULL,
  `movement` varchar(100) NOT NULL,
  `bus_source` varchar(100) NOT NULL,
  `bus_dest` varchar(100) NOT NULL,
  `depart_date` date NOT NULL,
  `depart_time` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total_seat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`id`, `bus_no`, `movement`, `bus_source`, `bus_dest`, `depart_date`, `depart_time`, `price`, `total_seat`) VALUES
(5, 'HR-34567', 'UP', 'Gurugram', 'New Delhi', '2017-04-29', '10:20AM', '400', '45'),
(6, 'WB=3256', 'DOWN', 'Durgapur', 'Kolkata', '2017-04-30', '11:20AM', '400', '54'),
(7, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(8, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(9, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(10, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(11, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(12, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(13, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(14, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(15, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54'),
(16, 'KR - 7565', 'UP', 'Chennai', 'Banglore', '2017-05-05', '11:20AM', '450', '54');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `eid` int(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phoneno1` varchar(100) NOT NULL,
  `phoneno2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`eid`, `firstname`, `lastname`, `phoneno1`, `phoneno2`) VALUES
(1, 'Ravi', 'Awasthi', '9944556677', '88889999'),
(2, 'Shayam', 'Sharma', '9944556677', '767676767'),
(3, 'Ravi', 'Singh', '8899887765', '77886767');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `web_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `firstname`, `lastname`, `username`, `password`, `email_id`, `web_url`) VALUES
(1, 'kamalesh', 'sah', 'kamlesh', '1234', 'sad@gmail.com', 'test.com'),
(2, 'ram', 'shyam', 'ram', '1234', 'ram@dsfdsf.com', 'ramurl.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_assign`
--
ALTER TABLE `bus_assign`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `bus_booking`
--
ALTER TABLE `bus_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bus_assign`
--
ALTER TABLE `bus_assign`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bus_booking`
--
ALTER TABLE `bus_booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
