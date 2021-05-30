-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2021 at 02:26 PM
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
  `safe_name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `register_ts` varchar(12) NOT NULL DEFAULT '0',
  `last_active_ts` varchar(12) NOT NULL DEFAULT '0',
  `privileges` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(2) NOT NULL DEFAULT 'XX',
  `pp` float UNSIGNED NOT NULL DEFAULT '0',
  `stars` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `coins` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `u_coins` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `demons` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `display_icon` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `icon` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ship` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ufo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ball` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `robot` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `spider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `referer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  `version` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `creator` varchar(32) NOT NULL,
  `song_id` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `demon_difficulty` int(11) NOT NULL,
  `password` int(11) NOT NULL DEFAULT '0',
  `rob_stars` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  `uploaded_timestamp` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `objects` int(11) NOT NULL
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
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
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
