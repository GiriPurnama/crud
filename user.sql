-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 03:33 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud_user`
--

CREATE TABLE `crud_user` (
  `crud_id` int(255) NOT NULL,
  `crud_username` varchar(255) NOT NULL,
  `crud_password` varchar(255) NOT NULL,
  `crud_fullname` varchar(255) NOT NULL,
  `crud_city` varchar(255) NOT NULL,
  `crud_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud_user`
--

INSERT INTO `crud_user` (`crud_id`, `crud_username`, `crud_password`, `crud_fullname`, `crud_city`, `crud_status`) VALUES
(1, 'giri_purnama', 'visualkei78', 'sadasd', 'asdasd', 'single'),
(4, 'giri_purnamaas', 'visualkei78asd', 'fff', 'sdf', 'married'),
(5, 'aaa', 'aaa', 'aaa', 'aaa', 'married'),
(7, 'ccc', 'visualkei78asdcasd', 'asd', 'asd', 'single'),
(8, 'giri_purnamaascccc', 'visualkei78asdxc', 'vdwe', 'dad', 'married'),
(9, 'giri_purnamaasasd', 'visualkei78asdasd', 'asd', 'vvcx', 'single'),
(10, 'mpm', 'mpm', 'asd', 'mm', 'married');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud_user`
--
ALTER TABLE `crud_user`
  ADD PRIMARY KEY (`crud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud_user`
--
ALTER TABLE `crud_user`
  MODIFY `crud_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
