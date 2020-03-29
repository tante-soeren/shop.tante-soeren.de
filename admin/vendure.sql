-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 27, 2020 at 07:45 PM
-- Server version: 10.4.12-MariaDB-1:10.4.12+maria~bionic
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendure`
--
CREATE DATABASE IF NOT EXISTS `vendure` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vendure`;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2020-03-25 21:58:59.861174', '2020-03-25 21:58:59.861174', 'Asia', 1),
('2020-03-25 21:58:59.992590', '2020-03-25 21:58:59.992590', 'Europe', 2),
('2020-03-25 21:59:00.144373', '2020-03-25 21:59:00.144373', 'Africa', 3),
('2020-03-25 21:59:00.242151', '2020-03-25 21:59:00.242151', 'Oceania', 4),
('2020-03-25 21:59:00.435412', '2020-03-25 21:59:00.435412', 'Americas', 5);