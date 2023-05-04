-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2017 at 10:54 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `announcement`
--


-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(7, 'Pasta'),
(9, 'Dessert'),
(10, 'Rice'),
(11, 'Curry'),
(12, 'Set Menu');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE IF NOT EXISTS `combo` (
  `combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`combo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`) VALUES
(1, 'Package 1', 290.00),
(2, 'Package 2', 390.00),
(3, 'Package 3', 490.00);

-- --------------------------------------------------------

--
-- Table structure for table `combo_details`
--

CREATE TABLE IF NOT EXISTS `combo_details` (
  `combo_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`combo_details_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `combo_details`
--

INSERT INTO `combo_details` (`combo_details_id`, `combo_id`, `menu_id`) VALUES
(2, 1, 3),
(7, 1, 4),
(8, 1, 6),
(9, 2, 4),
(11, 2, 7),
(12, 3, 5),
(13, 3, 7),
(14, 3, 8),
(15, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_what`, `event_date`, `event_time`, `event_where`) VALUES
(1, 'Company Christmas Party', '2017-12-15', '14:04:00', 'Uttara, Dhaka'),
(2, 'Picnic', '2017-11-15', '14:04:00', 'Mirpur, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_last` varchar(15) NOT NULL,
  `member_first` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `member`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `cat_id`, `subcat_name`, `menu_desc`, `menu_price`, `menu_pic`) VALUES
(1, 'Beef Simo', 6, 'Lunch and Dinner', 'Beef Salpicao', 100.00, 'indian-food-platter.jpg'),
(3, 'Chicken Curry', 11, 'Lunch and Dinner', 'Chicken Curry', 180.00, 'Chicken-curry-600x336.jpg'),
(4, 'Coke', 9, 'Drinks', 'Coke 1 glass', 45.00, 'cola-cola.jpg'),
(5, 'Beef Chap', 11, 'Lunch and Dinner', 'beef', 220.00, 'beef.jpg'),
(6, 'Fried Rice', 10, 'Lunch and Dinner', 'rice', 120.00, 'schezwan-fried-rice-recipe-13.jpg'),
(7, 'Kasmeri Rice', 10, 'Lunch and Dinner', 'rice', 150.00, 'images.jpg'),
(8, 'beef salad', 7, 'Non Combo Meal', 'salad', 80.00, '53731.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message`
--


-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `rid`, `payment_date`) VALUES
(1, 2000, 42, '2017-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `r_date` date NOT NULL,
  `r_time` time NOT NULL,
  `r_last` varchar(30) NOT NULL,
  `r_first` varchar(30) NOT NULL,
  `r_contact` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_type` varchar(30) NOT NULL,
  `r_ocassion` varchar(50) NOT NULL,
  `r_motif` varchar(30) NOT NULL,
  `team_id` int(11) NOT NULL,
  `r_venue` varchar(100) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `pax` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `r_date`, `r_time`, `r_last`, `r_first`, `r_contact`, `r_email`, `r_address`, `r_type`, `r_ocassion`, `r_motif`, `team_id`, `r_venue`, `payable`, `balance`, `r_status`, `date_reserved`, `r_code`, `pax`, `combo_id`, `price`, `modeofpayment`) VALUES
(42, '2017-05-04', '14:00:00', 'Pipez', 'Lee ', '09001914000', 'e@gmail.com', 'Bago City', 'buffet', 'Baptism', 'White', 0, 'Bago City', 2500.00, 500.00, 'Finished', '2017-04-28', '5xkKxwWasn', 50, 3, 50.00, 'Bank to Bank'),
(45, '2017-06-07', '01:00:00', 'klj', 'kkj', 'kjk', 'emoblazz@gmail.com', 'kjk', 'buffet', 'Baptism', 'jjj', 0, 'lkjkj', 1500.00, 1500.00, 'Finished', '2017-04-28', 'Bg0GueD1Vg', 10, 1, 150.00, 'Bank to Bank'),
(46, '2017-08-07', '01:00:00', 'klj', 'kkj', 'kjk', 'emoblazz@gmail.com', 'kjk', 'buffet', 'Baptism', 'jjj', 0, 'lkjkj', 1500.00, 1500.00, 'Approved', '2017-04-28', 'Bg0GuezJd8', 10, 1, 150.00, 'Bank to Bank'),
(47, '2017-11-16', '10:20:00', 'Y', 'X', '2321312312', 'xxxxx@XXXX.com', 'XXXX', 'buffet', 'Birthday', 'none', 0, 'SADSSADSD', 14500.00, 14500.00, 'Approved', '2017-11-01', 'ODcvWmJUu5', 50, 1, 290.00, 'Cash'),
(48, '2017-11-15', '01:08:00', 'Azizul', 'Mollik', '017522222', 'MMO@CDV.COM', 'dhak', 'buffet', 'Wedding', 'DD', 0, 'DFGDFG', 59280.00, 59280.00, 'Approved', '2017-11-01', 'lHUErqntML', 152, 2, 390.00, 'Bank to Bank'),
(49, '2017-11-27', '01:55:00', 'Ali', 'Osman', '0182582', 'osman@gm.com', 'Mirpur', 'plated', 'Funeral', 'dd', 0, 'gfsgfdsg', 122500.00, 122500.00, '', '2017-11-01', '8Ny6xUSGnn', 250, 3, 490.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `r_combo`
--

CREATE TABLE IF NOT EXISTS `r_combo` (
  `r_combo_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL,
  PRIMARY KEY (`r_combo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `r_combo`
--


-- --------------------------------------------------------

--
-- Table structure for table `r_details`
--

CREATE TABLE IF NOT EXISTS `r_details` (
  `r_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`r_details_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `r_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `r_noncombo`
--

CREATE TABLE IF NOT EXISTS `r_noncombo` (
  `r_non_id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL,
  PRIMARY KEY (`r_non_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `r_noncombo`
--


-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `subcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_name`) VALUES
(1, 'Non Combo Meal'),
(2, 'Snacks'),
(3, 'Lunch and Dinner'),
(10, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `team`
--


-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE IF NOT EXISTS `team_member` (
  `team_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`team_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `team_member`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `username`, `password`, `status`) VALUES
(1, 'Rashed', 'admin', 'admin', 'active');
