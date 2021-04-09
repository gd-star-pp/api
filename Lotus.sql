-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2021 at 11:08 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.1.33-9+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lotus_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  `colour` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `badge_assign`
--

CREATE TABLE `badge_assign` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `register_ts` varchar(9) NOT NULL DEFAULT '0',
  `last_active_ts` varchar(9) NOT NULL DEFAULT '0',
  `privileges` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(2) NOT NULL DEFAULT 'XX',
  `pp` float UNSIGNED NOT NULL,
  `stars` int(11) UNSIGNED NOT NULL,
  `coins` smallint(4) UNSIGNED NOT NULL,
  `u_coins` int(11) UNSIGNED NOT NULL,
  `demons` int(11) UNSIGNED NOT NULL,
  `display_icon` tinyint(1) UNSIGNED NOT NULL,
  `icon` tinyint(3) UNSIGNED NOT NULL,
  `ship` int(10) UNSIGNED NOT NULL,
  `ufo` int(10) UNSIGNED NOT NULL,
  `ball` int(10) UNSIGNED NOT NULL,
  `robot` int(10) UNSIGNED NOT NULL,
  `spider` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badge_assign`
--
ALTER TABLE `badge_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badge_assign`
--
ALTER TABLE `badge_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;