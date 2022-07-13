-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 06:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edulearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `name` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `price` varchar(20) NOT NULL,
  `orders` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`name`, `institute`, `price`, `orders`) VALUES
('Blockchain and Cryptotech', 'SMC Education', '$2000', 2),
('Business Administration', 'SMC Education', '$2000', 1),
('Business Skills', 'Qlearn', '$700', 0),
('Cyber Security', 'Qlearn', '$700', 0),
('English Course', 'Qlearn', '$700', 0),
('Health & Safety', 'Qlearn', '$700', 0),
('Introduction to Negotiation', 'Yale University', '$700', 0),
('IT Security', 'Google', '$700', 0),
('Project Management', 'Google', '$2000', 0),
('Social Media Ad', 'Facebook', '$700', 0),
('Social Media Marketing', 'Facebook', '$2000', 0),
('Woman in Leadership', 'CWR University', '$700', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `username` varchar(30) NOT NULL,
  `Blockchain and Cryptotech` varchar(1) DEFAULT NULL,
  `Business Administration` varchar(1) DEFAULT NULL,
  `Business Skills` varchar(1) DEFAULT NULL,
  `Cyber Security` varchar(1) DEFAULT NULL,
  `English Course` varchar(1) DEFAULT NULL,
  `Health & Safety` varchar(1) DEFAULT NULL,
  `Introduction to Negotiation` varchar(1) DEFAULT NULL,
  `IT Security` varchar(1) DEFAULT NULL,
  `Project Management` varchar(1) DEFAULT NULL,
  `Social Media Ad` varchar(1) DEFAULT NULL,
  `Social Media Marketing` varchar(1) DEFAULT NULL,
  `Woman in Leadership` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`username`, `Blockchain and Cryptotech`, `Business Administration`, `Business Skills`, `Cyber Security`, `English Course`, `Health & Safety`, `Introduction to Negotiation`, `IT Security`, `Project Management`, `Social Media Ad`, `Social Media Marketing`, `Woman in Leadership`) VALUES
('Louis99', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('varelGGG', '1', '1', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `age` varchar(3) NOT NULL,
  `password` varchar(20) NOT NULL,
  `courses` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `username`, `email`, `phone`, `age`, `password`, `courses`) VALUES
('LOUIS Vincent', 'Louis11', 'nagitok99@gmail.com', '081285407492', '22', 'Donchaka3', 0),
('LOUIS Vincent', 'Louis27', 'nagitok99@gmail.com', '081285407492', '22', 'Donchaka3', 0),
('Louis Vincent', 'Louis99', 'nagitok99@gmail.com', '081285407492', '20', 'Donchaka3', 1),
('PeterBuntaran', 'Peter277', 'peterhahaha@gmail.com', '081285407492', '22', 'Donchaka3', 0),
('Varellino Gallan', 'varelGGG', 'varelg@gmail.com', '081285407492', '22', 'Donchaka3', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD UNIQUE KEY `course_name` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
