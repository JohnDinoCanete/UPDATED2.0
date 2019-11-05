-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 08:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `basketball`
--

CREATE TABLE `basketball` (
  `username` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `bet` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basketball`
--

INSERT INTO `basketball` (`username`, `team`, `bet`) VALUES
('dino', 'GSW', 1000),
('dino', 'GSW', 1000),
('dino', '', 0),
('', '', 0),
('', '', 0),
('', '', 0),
('gwapodino', 'gsw', 1888),
('dino', 'GSW', 1111),
('dino', 'GSW', 123123),
('dino', 'GSW', 123123),
('asdadasd', 'GSW', 1231232312);

-- --------------------------------------------------------

--
-- Table structure for table `lol`
--

CREATE TABLE `lol` (
  `username` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `bet` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soccer`
--

CREATE TABLE `soccer` (
  `username` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `bet` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `user_type`, `password`) VALUES
('rinan', 'jksksks@yahoo.com', 'user', '202cb962ac59075b964b07152d234b70'),
('John', 'jcanete.shs@gmail.com', 'user', '86c05c68ea0bfd03ec14340c093123b3'),
('dino', 'JCANETE.SHS@GMAIL.COM', 'user', '202cb962ac59075b964b07152d234b70'),
('gerald', 'JCANETE.SHS@GMAIL.COM', 'admin', '202cb962ac59075b964b07152d234b70'),
('gerald', 'JCANETE.SHS@GMAIL.COM', 'admin', '202cb962ac59075b964b07152d234b70'),
('gerald', 'JCANETE.SHS@GMAIL.COM', 'user', '202cb962ac59075b964b07152d234b70'),
('gerald', 'JCANETE.SHS@GMAIL.COM', 'user', '202cb962ac59075b964b07152d234b70'),
('dino', 'JCANETE.SHS@GMAIL.COM', 'user', '202cb962ac59075b964b07152d234b70'),
('gerald', 'JCANETE.SHS@GMAIL.COM', 'user', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
