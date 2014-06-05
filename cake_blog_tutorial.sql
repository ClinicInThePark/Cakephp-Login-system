-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2014 at 01:01 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cake_blog_tutorial`
--
CREATE DATABASE IF NOT EXISTS `cake_blog_tutorial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cake_blog_tutorial`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`) VALUES
(1, 'The title', 'This is the post body.', '2014-06-03 21:32:07', NULL),
(2, 'A title once again', 'And the post body follows.', '2014-06-03 21:32:07', NULL),
(3, 'Title strikes back', 'This is really exciting! Not.', '2014-06-03 21:32:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `role` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created`, `modified`, `status`) VALUES
(5, 'kalun', '95787ed96ae71bd8f1f5c5df416a8a97cea7a26a', 'kalun.lee1@gmail.com', 'visitor', '2014-06-04 11:28:22', '2014-06-04 15:14:00', 0),
(10, 'ericlol', 'fbfd21d240a7b043f52f05a1668afdf0ea3412aa', 'eric.acampora@gmail.com', 'visitor', '2014-06-04 23:14:56', '2014-06-04 23:14:56', 1),
(11, 'ericlool', 'fbfd21d240a7b043f52f05a1668afdf0ea3412aa', 'eacampor@uci.edu', 'staff', '2014-06-04 23:18:02', '2014-06-04 23:18:02', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
