-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 08:13 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `setison`
--

-- --------------------------------------------------------

--
-- Table structure for table `browse`
--

CREATE TABLE `browse` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `about` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `offstage_members` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `performance_duration` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `performing_members` varchar(255) NOT NULL,
  `open_travel` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `events_preferred` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `browse_image`
--

CREATE TABLE `browse_image` (
  `id` int(11) NOT NULL,
  `browse_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `browse_review`
--

CREATE TABLE `browse_review` (
  `id` int(11) NOT NULL,
  `browse_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `browse_youtube`
--

CREATE TABLE `browse_youtube` (
  `id` int(11) NOT NULL,
  `browse_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `budget` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `requirement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_requirement`
--

CREATE TABLE `post_requirement` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_mail` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `addition_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `browse`
--
ALTER TABLE `browse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browse_image`
--
ALTER TABLE `browse_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browse_review`
--
ALTER TABLE `browse_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browse_youtube`
--
ALTER TABLE `browse_youtube`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_requirement`
--
ALTER TABLE `post_requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `browse`
--
ALTER TABLE `browse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `browse_image`
--
ALTER TABLE `browse_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `browse_review`
--
ALTER TABLE `browse_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `browse_youtube`
--
ALTER TABLE `browse_youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_requirement`
--
ALTER TABLE `post_requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
