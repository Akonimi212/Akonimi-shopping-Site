-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2024 at 05:25 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `edgedata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(500) NOT NULL DEFAULT '',
  `admin_password` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'Akonimi', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(5000) NOT NULL DEFAULT '',
  `item_price` double DEFAULT NULL,
  `item_image` varchar(5000) NOT NULL DEFAULT '',
  `item_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_image`, `item_date`) VALUES
(6, 'micromax-lt777w-2-in-1-laptop-original-1', 150000, '792018.jpeg', '2016-11-10'),
(7, 'Item4', 60000, '783298.jpg', '2016-11-10'),
(8, 'Item5', 55000, '499921.jpeg', '2016-11-10'),
(9, 'Itemlenovo-k6-power-k33a42-16', 100000, '528152.jpeg', '2016-11-10'),
(11, 'Item1', 5000, '722934.jpg', '2016-11-10'),
(12, 'Item101', 1000, '838084.jpg', '2016-11-14'),
(13, 'Item102', 500000, '850187.jpg', '2016-11-14'),
(14, 'Item103', 3000, '361204.jpg', '2016-11-14'),
(15, 'Item105', 5000, '444526.jpg', '2016-11-14'),
(16, 'Item106', 1.5, '562419.jpeg', '2016-11-14'),
(17, 'samsung-galaxy-on5-sm-3', 500000, '803542.jpeg', '2016-11-14'),
(18, 'Item108', 40000, '45968.jpg', '2016-11-14'),
(19, 'item909', 50.5, '158191.jpg', '2016-11-14'),
(20, 'acer-aspire-notebook-original-1', 250000, '597327.jpeg', '2021-12-01'),
(21, 'micromax2', 4500, '508457.jpeg', '2021-12-03'),
(22, 'TOP6 PRO', 7000, '451873.jpeg', '2022-05-23'),
(23, 'dghjsdghj-jhgd', 50000, '79748.jpeg', '2022-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_name` varchar(1000) NOT NULL DEFAULT '',
  `order_price` double NOT NULL DEFAULT '0',
  `order_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `order_total` double NOT NULL DEFAULT '0',
  `order_status` varchar(45) NOT NULL DEFAULT '',
  `order_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`order_id`),
  KEY `FK_orderdetails_1` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `user_id`, `order_name`, `order_price`, `order_quantity`, `order_total`, `order_status`, `order_date`) VALUES
(40, 10, 'micromax-lt777w-2-in-1-laptop-original-1', 150000, 10, 1500000, 'Ordered_Finished', '2022-03-26'),
(53, 12, 'Item4', 60000, 1, 60000, 'Ordered', '2022-08-20'),
(54, 14, 'micromax-lt777w-2-in-1-laptop-original-1', 150000, 1, 150000, 'Ordered', '2022-09-08'),
(55, 10, 'item909', 50.5, 10, 505, 'Ordered', '2022-11-06'),
(56, 10, 'Item5', 55000, 1, 55000, 'Ordered', '2022-11-18'),
(57, 16, 'samsung-galaxy-on5-sm-3', 500000, 5, 2500000, 'Ordered', '2023-03-12'),
(58, 17, 'samsung-galaxy-on5-sm-3', 500000, 20, 10000000, 'Ordered', '2023-03-17'),
(59, 18, 'TOP6 PRO', 7000, 10, 70000, 'Ordered', '2023-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_firstname` varchar(1000) NOT NULL,
  `user_lastname` varchar(1000) NOT NULL,
  `user_address` varchar(1000) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`, `user_address`) VALUES
(10, 'sam09098565044@gmail.com', '0000', 'samuel', 'amos', 'KAJURU'),
(11, 'ba110@gmail.com', '1234', 'hjg', 'kjh', 'lkuyh'),
(12, 'akonimi@yahoo.com', '0000', 'ako', 'ako', 'ako'),
(13, 'samuel@gmail.com', '1234', 'samuel', 'AD', 'DA'),
(14, 'mission@gmail.com', '1234', 'mission', 'yunana', 'kd'),
(15, 'sa11@yahoo.com', '0000', 'SS', 'GG', 'GG'),
(16, 'sim@gmail.ccom', '123456', 'Amos', 'Sim', 'Yola'),
(17, 'miracle@gmail.com', '99999', 'miracle', 'akonimi', 'jos'),
(18, 'haru@gmail.com', '1234', 'haruna', 'amos', 'taraba');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_orderdetails_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
