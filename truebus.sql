-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2016 at 07:09 AM
-- Server version: 5.6.30-76.3-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trueb8fu_truebus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `profile_picture` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `user_type` int(25) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `profile_picture`, `status`, `user_type`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'http://truebus.co.in/admin-panel/assets/uploads/profile_pic/admin/1469622022_ejecutivo3.png', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `profile_picture` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT '1',
  `created_by` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `username`, `first_name`, `last_name`, `password`, `company_name`, `address`, `email`, `phone_number`, `city`, `country`, `profile_picture`, `status`, `created_by`) VALUES
(1, 'agent', 'agent', 'agent', 'b33aed8f3134996703dc39f9a7c95783', 'techware', 'ernakulam', 'sams@gmail.com', '2147483647', 'ernakulam', 'Kerala', 'http://truebus.co.in/admin-panel/assets/uploads/profile_pic/admin/1469680451_3833200-professional-business-executive-portrait.jpg', '1', '1'),
(2, 'immanu', 'manu', 'john', '826692ac68da0fbe60ddf3a3443b04a0', 'techware', 'ernakulam', 'immanu@gmail.com', '1212121212', 'chennai', 'tamilnadu', 'http://192.168.1.31/Najeela/True-bus-admin/admin-panel/assets/uploads/img/1462446161_dont-forget-to-smile-hd-desktop-wallpaper-widescreen-backgrounds-for-mobile-tablet-and-pc-free-images-download-520x290.jpg', '1', '1'),
(10, 'immanu', 'manu', 'immanuel', '827ccb0eea8a706c4c34a16891f84e7b', 'techware', 'kollam', 'immanu@gmail.com', '2147483647', 'vazhakkala', 'india', 'http://192.168.1.31/Najeela/True-bus-admin/admin-panel/assets/uploads/img/1462446153_admin.jpg', '1', 'admin'),
(11, 'sams', 'dshg', 'eryery', '827ccb0eea8a706c4c34a16891f84e7b', 'techware', 'kollam', 'immanu24@gmail.com', '2147483647', 'vazhakkala', 'india', 'http://192.168.138.31/Immanuel/true-bus/CI-admin-structure-adminLTE/admin-panel/assets/uploads/img/1469171067_wewe.png', '1', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE IF NOT EXISTS `amenities` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `amenities` varchar(250) NOT NULL,
  `status` int(250) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenities`, `status`) VALUES
(1, 'WIFI', 1),
(2, 'Water Bottle', 1),
(3, 'Blankets', 1),
(4, 'Snacks', 1),
(5, 'Charging Point', 1),
(6, 'Movie', 1),
(7, 'Reading Light', 1),
(8, 'Pillow', 1),
(9, 'Personal TV', 1),
(10, 'Track My Bus', 1),
(11, 'Emergency exit', 1),
(12, 'Fire Extinguisher', 1),
(13, 'Hammer (to break glass)', 1),
(14, 'Emergency Contact Number', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `block_name` text NOT NULL,
  `blog_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `block_name`, `blog_content`) VALUES
(1, 'Routs&Operators&TicketsSold ', '<div class="clm-1">\r\n<div class="container">\r\n<div class="secssion3">\r\n<div class="row">\r\n<div class="col-md-3"><br class="head-ourcities1" />\r\n<h3 class="head-sec3"><img src="#s#/assets/images/quality.png" alt="" /> <span class="tb_operator1">67000 <small class="smalls">ROUTES<br /></small></span></h3>\r\n<div class="tb_list_offer">\r\n<div class="ofer_list">UPTO RS.100 OFF</div>\r\n<div class="ofer_list_bold">TRAVEL SMART</div>\r\n<div class="ofer_list_normal">Code:RBM120</div>\r\n<div class="ofer_list_normal">Book Using Pay Money</div>\r\n</div>\r\n</div>\r\n<div class="col-md-3">\r\n<h3 class="head-sec3"><img src="#s#/assets/images/reliability.png" alt="" /> <span class="tb_operator2">1800<small class="smalls"> BUS OPERATORS</small></span></h3>\r\n<div class="ofer_list">UPTO 70% OFF</div>\r\n<div class="ofer_list_bold">ON HOTELS ACROSS INDIA</div>\r\n<div class="ofer_list_normal">Offer Code:RBRTM120</div>\r\n<div class="ofer_list_normal">&nbsp;</div>\r\n<div class="ofer_list_normal">\r\n<div class="col-md-3">\r\n<h3 class="head-sec3"><img src="#s#/assets/images/quality.png" alt="" /> <span class="tb_operator3">6,00,000 + <small class="smalls">TICKETS SOLD</small></span></h3>\r\n<div class="tb_list_offer">&nbsp;&nbsp; FLAT Rs.100 OFF\r\n<div class="ofer_list_bold left">&nbsp;&nbsp; red Bus APP OFFER</div>\r\n<div class="ofer_list_normal">&nbsp;&nbsp; book via the redBUS APP</div>\r\n<div class="ofer_list_normal">&nbsp;&nbsp; Code:ERHH54</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="right-section">&nbsp;</div>\r\n<div class="right-section">\r\n<h4 class="tb_head">Top Bus Routers</h4>\r\n<ul class="clm4-list">\r\n<li>\r\n<p class="headlist-para"><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Hyderabad to Bangalore</a></p>\r\n</li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Pune to Bangalore </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Hyderabad to Chennai</a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Coimbatore to Bangalore </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Chennai to Madurai</a></li>\r\n</ul>\r\n<div class="right-section">\r\n<h4 class="tb_head">Top Cities</h4>\r\n<ul class="clm4-list">\r\n<li>\r\n<p class="headlist-para"><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Hyderabad to Bangalore</a></p>\r\n</li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Pune to Bangalore </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Hyderabad to Chennai</a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Coimbatore to Bangalore </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Chennai to Madurai</a></li>\r\n</ul>\r\n<h4 class="tb_head">Top Bus Operators</h4>\r\n<ul class="clm4-list">\r\n<li>\r\n<p class="headlist-para"><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Hyderabad to Bangalore</a></p>\r\n</li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Pune to Bangalore </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Hyderabad to Chennai</a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Coimbatore to Bangalore </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Chennai to Madurai</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(2, 'footer ', '<div class="clm-4">\r\n<div class="container">\r\n<div class="secssion6">\r\n<div class="row">\r\n<div class="col-md-9">\r\n<h3 class="head-ourcities2">Follow Us</h3>\r\n<ul class="clm4-list">\r\n<li>\r\n<p class="headlist-para"><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">About TrueBus</a></p>\r\n</li>\r\n<li>FAQ</li>\r\n<li>Careers</li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">TrueBus Coupons</a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Contact Us </a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Terms of Use</a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">Privacy Policy &nbsp;</a></li>\r\n<li><a href="/shibila/true-bus/CI-admin-structure-adminLTE/">TrueBus on Mobilenew</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(3, 'Banner Image', '<p>assets/images/images/banner-inner.png</p>');

-- --------------------------------------------------------

--
-- Table structure for table `board_points`
--

CREATE TABLE IF NOT EXISTS `board_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) NOT NULL,
  `board_point` int(11) NOT NULL,
  `pickup_point` varchar(20) NOT NULL,
  `pickup_time` varchar(20) NOT NULL,
  `landmark` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `status` int(200) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `board_points`
--

INSERT INTO `board_points` (`id`, `bus_id`, `board_point`, `pickup_point`, `pickup_time`, `landmark`, `address`, `status`) VALUES
(1, 101, 3, 'Aluva Bypass', '9.30 AM', 'MG Road', 'MG Road', 1),
(2, 102, 2, 'Aluva Bypass', '9.30 AM', 'MG Road', 'MG Road', 1),
(3, 102, 3, 'Chalakudy', '10:00 AM', 'MG Road', 'MG Road', 1),
(9, 102, 22, 'selam', '05:15 PM', 'MG Road', 'MG Road', 1),
(11, 102, 22, 'Aluva', '10:15 AM', 'MG Road', 'MG Road', 1),
(12, 112, 21, 'Dindigul', '03:15 PM', 'MG Road', 'MG Road', 1),
(14, 104, 4, 'Thrissur', '01:30 PM', 'MG Road', 'Thrissur', 1),
(15, 101, 1, 'Koratty', '10:00 AM', 'MG Road', 'Aluva', 1),
(16, 101, 1, 'Angamaly', '10:00 AM', 'MG Road', 'Aluva', 1),
(27, 101, 1, 'idukki', '12:00 PM', 'MG', 'Ernakulam', 1),
(34, 101, 1, 'idukki', '12:15 PM', 'MG', 'DA', 1),
(35, 101, 1, 'idukki', '12:15 PM', 'MG', 'DA', 1),
(37, 102, 22, 'idukki', '12:15 PM', 'MG', 'Ernakulam', 1),
(38, 101, 1, 'idukki idukki', '12:15 PM', 'MG', 'Ernakulam', 1),
(39, 102, 2, 'idukki', '12:15 PM', 'MG', 'Ernakulam', 1),
(40, 102, 2, 'idukki', '12:15 PM', 'MG', 'DA', 1),
(41, 102, 2, 'idukki', '12:30 PM', 'MG', 'Ernakulam', 1),
(43, 103, 25, 'muttam', '05:15 PM', 'MG Road', 'idukki', 1),
(45, 103, 3, 'south railwaystation', '04:15 PM', 'railway station', 'kochi', 1),
(46, 134, 45, 'south railwaystation', '11:30 AM', 'railway station', 'JKHJK', 1),
(47, 135, 46, 'etret', '05:00 PM', 'ttrt', 'rtr', 1),
(48, 136, 47, 'TR', '05:15 PM', 'RTRT', 'RTRT', 1),
(49, 137, 48, 'TTYk', '09:00 AM', 'TYTY', 'YT', 1),
(50, 126, 60, 'kollam', '12:30 PM', 'we', 'we', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE IF NOT EXISTS `booking_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `bus_id` varchar(250) NOT NULL,
  `rout_id` varchar(250) NOT NULL,
  `boarding_point_id` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `seat_no` varchar(250) NOT NULL,
  `payment_status` varchar(250) NOT NULL,
  `payment_option` varchar(251) NOT NULL,
  `booking_date` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `amount`, `bus_id`, `rout_id`, `boarding_point_id`, `user_id`, `seat_no`, `payment_status`, `payment_option`, `booking_date`, `status`) VALUES
(53, 'TRB1468559520', '3000', '103', '25', '43', '4', 'A8', '', '', '22-07-2016 ', ''),
(54, 'TRB1468559520', '2000', '101', '1', '16', '4', 'A4', '', '', '15-07-2016 ', ''),
(55, 'TRB1468559554-55', '3000', '103', '25', '43', '4', 'A8', '', '', '22-07-2016 ', 'Booking'),
(56, 'TRB1468559554-56', '2000', '101', '1', '16', '4', 'A4', '', '', '15-07-2016 ', 'Booking'),
(57, 'TRB1468563980', '6000', '103', '25', '43', '4', 'C7,D7', '', '', '18-07-2016 ', ''),
(58, 'TRB1468563980', '4000', '101', '1', '16', '4', 'C4,D3', '', '', '16-07-2016 ', ''),
(59, 'TRB1468657011', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(60, 'TRB1468657203', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(61, 'TRB1468657251', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(62, 'TRB1468657350', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(63, 'TRB1468657385', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(64, 'TRB1468657486', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(65, 'TRB1468657742', '4000', '101', '1', '1', '4', 'C3,C4', '', '', '29-07-2016 ', ''),
(66, 'TRB1468657841', '2000', '101', '1', '1', '4', 'D4', '', '', '29-07-2016 ', ''),
(67, 'TRB1468657894', '2000', '101', '1', '1', '4', 'D4', '', '', '29-07-2016 ', ''),
(68, 'TRB1468657997', '2000', '101', '1', '1', '4', 'D4', '', '', '29-07-2016 ', ''),
(69, 'TRB1468658140', '2000', '101', '1', '1', '4', 'D4', '', '', '29-07-2016 ', ''),
(70, 'TRB1468658271', '2000', '101', '1', '1', '4', 'D4', '', '', '29-07-2016 ', ''),
(71, 'TRB1468839488-71', '5000', '103', '3', '1', '4', 'C8', 'Completed', 'paypal', '18-07-2016 ', 'Booking'),
(72, 'TRB1468839741', '5000', '103', '3', '1', '4', 'C9', '', '', '18-07-2016 ', ''),
(73, 'TRB1468839874-73', '5000', '103', '3', '1', '4', 'C1,C9,C2', 'Completed', 'paypal', '19-07-2016 ', 'Booking'),
(74, 'TRB1468840107', '5000', '103', '3', '1', '4', 'C8', '', '', '18-07-2016 ', ''),
(75, 'TRB1468840392', '5000', '103', '3', '1', '4', 'C8', '', '', '19-07-2016 ', ''),
(76, 'TRB1468910408', '3000', '103', '25', '43', '4', 'D7', '', '', '20-07-2016 ', ''),
(77, 'TRB1468910409', '5000', '103', '3', '1', '4', 'C8', '', '', '19-07-2016 ', ''),
(78, 'TRB1468918433', '5000', '103', '3', '1', '4', 'C8', '', '', '19-07-2016 ', ''),
(79, 'TRB1468919373', '3000', '103', '25', '43', '4', 'D5', '', '', '19-07-2016 ', ''),
(80, 'TRB1468920018', '2000', '101', '1', '16', '4', 'E1', '', '', '25-07-2016 ', ''),
(81, 'TRB1468920018', '3000', '103', '25', '43', '4', 'C8', '', '', '24-07-2016 ', ''),
(82, 'TRB1468920029', '2000', '101', '1', '16', '4', 'E1', '', '', '25-07-2016 ', ''),
(83, 'TRB1468920029', '3000', '103', '25', '43', '4', 'C8', '', '', '24-07-2016 ', ''),
(84, 'TRB1468920084-84', '2000', '101', '1', '16', '4', 'E1', 'Completed', 'paypal', '25-07-2016 ', 'Booking'),
(85, 'TRB1468920084-85', '3000', '103', '25', '43', '4', 'C8', 'Completed', 'paypal', '24-07-2016 ', 'Booking'),
(86, 'TRB1468920488', '3000', '103', '25', '43', '4', 'D5', '', '', '19-07-2016 ', ''),
(87, 'TRB1468922448-87', '9000', '103', '25', '43', '151', 'C6,C7,C8', 'Completed', 'paypal', '20-07-2016 ', 'Booking'),
(88, 'TRB1468923989-88-88-88-88-88-88', '2000', '101', '1', '16', '4', 'E4', 'Completed', 'paypal', '19-07-2016 ', 'Booking'),
(89, 'TRB1468926362-89', '4000', '101', '1', '15', '4', 'C4,D4', 'Completed', 'paypal', '27-07-2016 ', 'Booking'),
(90, 'TRB1468987591-90', '3000', '103', '25', '43', '153', 'C8', 'Completed', 'paypal', '21-07-2016 ', 'Booking'),
(91, 'TRB1468987960-91', '3000', '103', '25', '43', '153', 'B2', 'Completed', 'paypal', '30-07-2016 ', 'Booking'),
(92, 'TRB1468987960-92', '2000', '101', '1', '34', '153', 'A4', 'Completed', 'paypal', '25-07-2016 ', 'Booking'),
(93, 'TRB1468988780-93', '3000', '103', '25', '43', '4', 'C6', 'Completed', 'paypal', '21-07-2016 ', 'Booking'),
(94, 'TRB1468989185-94', '3000', '103', '25', '43', '154', 'E3', 'Completed', 'paypal', '22-07-2016 ', 'Booking'),
(95, 'TRB1468989185-95', '2000', '101', '1', '15', '154', 'E2', 'Completed', 'paypal', '21-07-2016 ', 'Booking'),
(96, 'TRB1469515442-96', '2000', '101', '1', '16', '', 'E3', 'Completed', 'paypal', '26-07-2016 ', 'Booking'),
(97, 'TRB1469515650-97', '2000', '101', '1', '16', '156', 'E4', 'Completed', 'paypal', '26-07-2016 ', 'Booking'),
(98, 'TRB1469515650-98', '2000', '101', '1', '16', '156', 'E4', 'Completed', 'paypal', '26-07-2016 ', 'Booking'),
(99, 'TRB1469603777-99', '3000', '126', '25', '43', '', 'C6', 'Completed', 'paypal', '30-07-2016 ', 'Booking');

-- --------------------------------------------------------

--
-- Table structure for table `book_bus`
--

CREATE TABLE IF NOT EXISTS `book_bus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `book_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `book_bus`
--

INSERT INTO `book_bus` (`id`, `bus_id`, `user_id`, `book_date`, `amount`, `status`) VALUES
(1, 101, 'usr_001', '2016-04-25 14:22:29', '5000.00', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_name` varchar(20) NOT NULL,
  `bus_type_id` int(11) NOT NULL,
  `amenities_id` varchar(250) NOT NULL,
  `bus_reg_no` varchar(20) NOT NULL,
  `max_seats` int(11) NOT NULL,
  `board_point` varchar(250) NOT NULL,
  `board_time` varchar(20) NOT NULL,
  `drop_point` varchar(20) NOT NULL,
  `drop_time` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `bus_status` int(200) NOT NULL DEFAULT '1',
  `created_by` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bus_name`, `bus_type_id`, `amenities_id`, `bus_reg_no`, `max_seats`, `board_point`, `board_time`, `drop_point`, `drop_time`, `status`, `bus_status`, `created_by`) VALUES
(101, 'CMS', 11, '4', 'TN-03/CC/5643', 50, 'Dindigul', '11:00 AM', 'Kottayam', '06:30 AM', 1, 1, 'admin'),
(102, 'Robin', 12, '6', 'KL-04/AC/4343', 45, 'Ernakulam', '11:00 AM', 'chennai', '10:45 AM', 1, 1, 'admin'),
(103, 'KE', 13, '6', 'TN-05/BC/1234', 60, 'Ernakulam', '02:45 PM', 'Bangalore', '03:00 AM', 1, 1, 'admin'),
(104, 'RMS', 14, '0', 'KL-06/DA/7676', 50, 'Ernakulam', '03:30 PM', 'Bangalore', '03:30 PM', 1, 1, 'admin'),
(105, 'CMSE', 15, '12', 'TN-07/CV/2536', 42, 'Kumily', '11:00 PM', 'Ernakulam', '05:00 AM', 1, 1, 'admin'),
(112, 'RKS', 11, '1', 'KL-04/AC/0011', 60, 'Ernakulam', '02:15 PM', 'Bangalore', '12:45 AM', 1, 1, 'admin'),
(113, 'KLM MOTORS', 13, '2', 'KL-01/AD/0192', 62, 'Coimbatore', '10:00 AM', 'Ernakulam', '03:00 PM', 1, 1, 'admin'),
(115, 'LMS', 16, '5', 'KL-37/AB/4536', 56, 'Kumily', '03:30 PM', 'Kollam', '11:30 AM', 1, 1, '2'),
(116, 'XUV', 12, '2,3', 'KL-37/AB/4536', 54, 'Bengalor', '04:15 PM', 'Ernakulam', '10:15 AM', 1, 1, '1'),
(117, 'LMS MN', 15, '1,2', 'KL-37/AB/4536', 54, 'chennai', '04:30 PM', 'Kollam', '04:30 PM', 1, 1, 'admin'),
(125, 'OOP', 13, '3,4', '3434', 547, 'werwer', '02:30 PM', 'ery', '02:30 PM', 1, 1, 'admin'),
(126, 'TTT', 13, '1,3', '4356346', 54, 'dsgds', '02:45 PM', 'gsdg', '02:45 PM', 1, 1, '1'),
(127, 'MMM', 12, '2,4,5', '7856', 34, 'zddsg', '02:45 PM', 'ery', '02:45 PM', 1, 1, '2'),
(128, 'NMS', 12, '2,3', 'KL-02/Z/0909', 60, 'Kannur', '10:30 AM', 'Ernalulam', '07:30 PM', 1, 1, 'admin'),
(129, 'NMSS', 15, '1,2', 'KL-02/AZ/0908', 60, 'Ernakulam', '10:30 AM', 'Palani', '09:30 PM', 1, 1, 'admin'),
(130, 'NMS', 11, '1,3,5', 'KL-02/AZ/0908', 60, 'Ernakulam', '10:45 AM', 'Ernalulam', '10:45 AM', 1, 0, 'admin'),
(134, 'SHYAMA', 11, '1,2,5', 'A-12', 49, 'kochi', '11:30 AM', 'Kannur', '11:30 PM', 1, 0, 'admin'),
(135, 'TEST', 11, '2,3,4,5', 'FSDF', 20, 'kochi', '05:00 PM', 'kollam', '05:00 AM', 1, 0, 'admin'),
(136, 'SAMPLE', 11, '3', 'DFD', 49, 'kochi', '05:15 PM', 'kollam', '05:15 AM', 1, 0, 'admin'),
(137, 'TTEST', 15, '4', 'RRT', 33, '3RR', '09:00 AM', 'RTR', '09:00 PM', 1, 0, 'admin'),
(138, 'tttt', 12, '3,5', 'erer', 33, 'sfsf', '11:30 AM', 'sfsf', '11:30 PM', 1, 0, 'admin'),
(139, 'erqe', 12, '3,4,5', 'ere', 22, 'rer', '11:30 AM', 'werw', '11:30 PM', 1, 0, 'admin'),
(140, 'ty', 11, '6', 'rrr', 11, 'kochi', '12:30 PM', 'werw', '12:30 AM', 1, 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bus_gallery`
--

CREATE TABLE IF NOT EXISTS `bus_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(750) NOT NULL,
  `user_id` int(250) NOT NULL,
  `bus_id` int(250) NOT NULL,
  `created_by` int(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `bus_gallery`
--

INSERT INTO `bus_gallery` (`id`, `image`, `user_id`, `bus_id`, `created_by`) VALUES
(75, 'assets/uploads/img/1469103203_1-Capture.PNG', 1, 131, 0),
(79, 'assets/uploads/img/1469186137_1-20130518-062857.jpg', 1, 133, 0),
(80, 'assets/uploads/img/1469186137_1-beautiful_daffodils-wallpaper-1366x768.jpg', 1, 133, 0),
(81, 'assets/uploads/img/1469186137_1-open_book_macro_2-wallpaper-1366x768.jpg', 1, 133, 0),
(82, 'assets/uploads/img/1469255065_1-20130518-062857.jpg', 1, 134, 0),
(83, 'assets/uploads/img/1469447643_1-_MG_1197W.jpg', 1, 135, 0),
(84, 'assets/uploads/img/1469448384_1-_MG_1125W.jpg', 1, 136, 0),
(91, 'assets/uploads/img/1469622647_1-bus-rusty.jpg', 1, 101, 0),
(92, 'assets/uploads/img/1469622694_1-vray_vehicle_bus.jpg', 1, 101, 0),
(93, 'assets/uploads/img/1469622751_1-40seater-3.jpg', 1, 102, 0),
(94, 'assets/uploads/img/1469622771_1-Desh-Travel-Bus.jpg', 1, 102, 0),
(95, 'assets/uploads/img/1469622827_1-1393157496bus1.jpg', 1, 103, 0),
(96, 'assets/uploads/img/1469622857_1-bus_PNG8621.png', 1, 103, 0),
(97, 'assets/uploads/img/1469622906_1-disel1.png', 1, 104, 0),
(98, 'assets/uploads/img/1469622944_1-45-seater-bus.png', 1, 104, 0),
(99, 'assets/uploads/img/1469622973_1-0-CoachBlue.png', 1, 105, 0),
(100, 'assets/uploads/img/1469622993_1-1435748382131868075714283121063059967bus1_(1).jpg', 1, 112, 0),
(101, 'assets/uploads/img/1469623051_1-otobus.png', 1, 113, 0),
(102, 'assets/uploads/img/1469689700_1-HinoBus_h200px.jpg', 1, 116, 0),
(104, 'assets/uploads/img/1469689727_1-kkbooking_in_bus2.jpg', 1, 126, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bus_type`
--

CREATE TABLE IF NOT EXISTS `bus_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_type` varchar(20) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `bus_type`
--

INSERT INTO `bus_type` (`id`, `bus_type`, `status`) VALUES
(11, 'AC', '1'),
(12, 'Non AC', '0'),
(13, 'Sleeper', '1'),
(14, 'Cab', '0'),
(15, 'AC Bus', '0'),
(16, 'RTC', '0'),
(17, 'Cab', '0'),
(18, 'AC/NON AC', '0'),
(19, 'AC / CAB', '0'),
(20, 'NON AC', '0'),
(21, 'OOO', '0'),
(22, 'OOP', '0'),
(23, 'TESTTEST', '0'),
(24, 'TESTt', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE IF NOT EXISTS `cancellation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` varchar(11) NOT NULL,
  `advertisement_status` int(250) NOT NULL,
  `cancel_time` varchar(250) NOT NULL,
  `percentage` varchar(11) NOT NULL,
  `flat` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`id`, `bus_id`, `advertisement_status`, `cancel_time`, `percentage`, `flat`, `type`) VALUES
(10, '101', 1, '10:15 ', '300', '', 'percentage'),
(11, '102', 1, '05:30', '', '700', 'flat'),
(12, '112', 1, '02:45 ', '300', '', 'percentage'),
(13, '105', 1, '02:45 ', '', '900', 'flat'),
(14, '104', 1, '10:00', '400', '700', 'percentage'),
(15, '104', 1, '10:00', '400', '700', 'percentage'),
(16, '116', 1, '14:00', '400', '1400', 'flat'),
(17, '125', 1, '11:00', '400', '800', 'percentage'),
(20, '134', 1, '16:30', '100', '10', 'percentage'),
(21, '135', 1, '17:00', '33', '33', 'percentage'),
(22, '136', 1, '17:15', '55', '44', 'flat'),
(23, '103', 1, '09:00', '49', '44', 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `booking_id` varchar(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `seat_no` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=188 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `customer_name`, `age`, `mobile`, `email`, `gender`, `booking_id`, `order_id`, `seat_no`) VALUES
(129, 'manu', '24', '1234567890', 'shsjd@hsdu.gdf', 'male', 'TRB1468559520', '53', 'A8'),
(130, 'manu', '24', '1234567890', 'shsjd@hsdu.gdf', 'male', 'TRB1468559520', '54', 'A4'),
(131, 'erty', '23', 'TRB1468559554-55', 'shibilabs23@gmail.com', 'male', 'TRB1468559554-55', '55', 'A8'),
(132, 'erty', '23', '1234567890', 'df@fgf.gh', 'male', 'TRB1468559554', '56', 'A4'),
(133, 'hjh', '12', '13457890767', 'vbv!fh@fg.hj', 'male', 'TRB1468563980', '57', 'C7'),
(134, 'hjh', '56', '13457890767', 'vbv!fh@fg.hj', 'male', 'TRB1468563980', '57', 'D7'),
(135, 'hjh', '12', '13457890767', 'vbv!fh@fg.hj', 'male', 'TRB1468563980', '58', 'C4'),
(136, 'hjh', '56', '13457890767', 'vbv!fh@fg.hj', 'male', 'TRB1468563980', '58', 'D3'),
(137, 'shh', '23', '1234567890', 'hgh@GH.U', 'female', 'TRB1468657011', '59', 'C3'),
(138, 'dfg', '23', '1234567890', 'hgh@GH.U', 'female', 'TRB1468657011', '59', 'C4'),
(139, 'ER', '34', '1234567890', 'HG@GH.YH', 'female', 'TRB1468657203', '60', 'C3'),
(140, 'GFG', '54', '1234567890', 'HG@GH.YH', 'female', 'TRB1468657203', '60', 'C4'),
(141, 'VB', '3', '1234567890', 'BNB@RY.H', 'male', 'TRB1468657251', '61', 'C3'),
(142, 'ER', '3', '1234567890', 'BNB@RY.H', 'male', 'TRB1468657251', '61', 'C4'),
(143, 'gfg', '343', '1234567890', 'jh@ty.th', 'male', 'TRB1468657350', '62', 'C3'),
(144, 'ef', '3', '1234567890', 'jh@ty.th', 'male', 'TRB1468657350', '62', 'C4'),
(145, 'rtr', '4', '1234567890', 'kl@rt.hg', 'male', 'TRB1468657385', '63', 'C3'),
(146, 're', '5', '1234567890', 'kl@rt.hg', 'male', 'TRB1468657385', '63', 'C4'),
(147, 'werc', '243', '1234567890', 'v@rj.ghg', 'male', 'TRB1468657486', '64', 'C3'),
(148, 'ty', '4', '1234567890', 'v@rj.ghg', 'male', 'TRB1468657486', '64', 'C4'),
(149, 'ty', '5', '1234567890', 'vg@hj.g', 'male', 'TRB1468657742', '65', 'C3'),
(150, 'f', '5', '1234567890', 'vg@hj.g', 'male', 'TRB1468657742', '65', 'C4'),
(151, 'ty', '3', '1234567890', 'df@fg.yh', 'male', 'TRB1468657841', '66', 'D4'),
(152, 're', '4', '0987654321', 'cv@ghj.tr', 'male', 'TRB1468657894', '67', 'D4'),
(153, 't', '4', '1323243434343', 'fg@t.yu', 'male', 'TRB1468657997', '68', 'D4'),
(154, 'yu', '66', '1234567890', 'fg@tgh.gh', 'male', 'TRB1468658140', '69', 'D4'),
(155, 't', '4', '1234567890', 'downloaddf@gh.g', 'male', 'TRB1468658271', '70', 'D4'),
(156, 'Ragunathan', '24', '9979798556', 'ragu1991nathan@gmail.com', 'male', 'TRB1468839488', '71', 'C8'),
(157, 'ragunathan', '25', '95260855456', 'ragu1991nathan@gmail.com', 'male', 'TRB1468839741', '72', 'C9'),
(158, 'ragunathah', '24', '3243433', 'ragu@gmail.com', 'male', 'TRB1468839874', '73', 'C8'),
(159, 'r', '23', '1234567890', 'vbv@ghg.gh', 'male', 'TRB1468840107', '74', 'C8'),
(160, 'fdf', '34', '1234567890', 'd@fg.hj', 'female', 'TRB1468840392', '75', 'C8'),
(161, 'wwwwww', '232', '1234567890', 'df@hg.ff', 'male', 'TRB1468910408', '76', 'D7'),
(162, 'wwwwww', '232', '1234567890', 'df@hg.ff', 'male', 'TRB1468910409', '77', 'C8'),
(163, 'gh', '56', '1234567890', 'fghf@fgh.df', 'male', 'TRB1468918433', '78', 'C8'),
(164, 'yj', '23', '123456789', 'nbb@hm.d', 'male', 'TRB1468919373', '79', 'D5'),
(165, 'Ragu', '24', '9897959595', 'ragu@gmail.com', 'male', 'TRB1468920018', '80', 'E1'),
(166, 'Ragu', '24', '9897959595', 'ragu@gmail.com', 'male', 'TRB1468920018', '81', 'C8'),
(167, 'Ragu', '24', '9897959595', 'ragu@gmail.com', 'male', 'TRB1468920029', '82', 'E1'),
(168, 'Ragu', '24', '9897959595', 'ragu@gmail.com', 'male', 'TRB1468920029', '83', 'C8'),
(169, 'Ragu', '23', '2132332232', 'test@gm.m', 'male', 'TRB1468920084', '84', 'E1'),
(170, 'Ragu', '23', '2132332232', 'test@gm.m', 'male', 'TRB1468920084', '85', 'C8'),
(171, 'yj', '23', '123456789', 'nbb@hm.d', 'male', 'TRB1468920488', '86', 'D5'),
(172, 'Ragu', '25', '1234567890', 'ragu@gmail.com', 'male', 'TRB1468922448', '87', 'C6'),
(173, 'test', '21', '1234567890', 'ragu@gmail.com', 'female', 'TRB1468922448', '87', 'C7'),
(174, 'Nahtn', '24', '1234567890', 'ragu@gmail.com', 'male', 'TRB1468922448', '87', 'C8'),
(175, 'df', '23', '1234638493', 'shibilabs23@gmail.com', 'male', 'TRB1468923989', '88', 'E4'),
(176, 'ui', '88', '123456789', 'shibilabs23@gmail.com', 'male', 'TRB1468926362', '89', 'C4'),
(177, 'vb', '78', '123456789', 'shibilabs23@gmail.com', 'female', 'TRB1468926362', '89', 'D4'),
(178, 'rahu', '25', '2525252525', 'ragu@ragu.com', 'male', 'TRB1468987591-90', '90', 'C8'),
(179, 'ragu', '25', '1324343441', 'ragu@gmail.com', 'male', 'TRB1468987960-91', '91', 'B2'),
(180, 'ragu', '25', '1324343441', 'ragu@gmail.com', 'male', 'TRB1468987960-92', '92', 'A4'),
(181, 'ragu', '23', '1234567890', 'shibilabs23@gmail.com', 'male', 'TRB1468988780-93', '93', 'C6'),
(182, 'JAINYMOL', '25', '5678568756', 'jainymol.techware@gmail.com', 'female', 'TRB1468989185-94', '94', 'E3'),
(183, 'JAINYMOL', '25', '5678568756', 'jainymol.techware@gmail.com', 'female', 'TRB1468989185-95', '95', 'E2'),
(184, 'test', '22', '3232323232', 'jainymol@techware.in', 'male', 'TRB1469515442-96', '96', 'E3'),
(185, 'test', '22', '22223232322', 'jainymol@techware.in', 'male', 'TRB1469515650-97', '97', 'E4'),
(186, 'test', '22', '22223232322', 'jainymol@techware.in', 'male', 'TRB1469515650-98', '98', 'E4'),
(187, 'test', '25', '13254354445', 'download@tre.com', 'male', 'TRB1469603777-99', '99', 'C6');

-- --------------------------------------------------------

--
-- Table structure for table `drop_points`
--

CREATE TABLE IF NOT EXISTS `drop_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` varchar(250) NOT NULL,
  `drop_point` varchar(250) NOT NULL,
  `stoping_point` varchar(250) NOT NULL,
  `drop_time` varchar(250) NOT NULL,
  `landmark` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `status` int(200) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `drop_points`
--

INSERT INTO `drop_points` (`id`, `bus_id`, `drop_point`, `stoping_point`, `drop_time`, `landmark`, `address`, `status`) VALUES
(1, '102', '2', 'Aluva', '11:15 AM', 'MG Road', 'Ernakulam', 1),
(2, '101', '1', 'Muttam', '03:00 PM', 'MG', 'Ernakulam', 1),
(3, '103', '3', 'Aluva', '03:00 PM', 'MG Road', 'Ernakulam', 1),
(5, '103', '3', 'kozhikode', '04:15 PM', 'thalashery  railway', 'fdsfsdf', 1),
(6, '134', '45', 'thalasherry', '02:15 PM', 'railway station', 'GHGFH', 1),
(7, '135', '46', 'ddf', '05:00 PM', 'dfdf', 'dfd', 1),
(8, '136', '47', 'FRF', '05:15 PM', 'SDF', 'SDF', 1),
(9, '137', '48', 'YUTYp', '09:00 AM', 'FG', 'DFG', 1),
(10, '116', '26', 'angamaly', '12:30 PM', 'we', 'we', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `bus_id` varchar(250) NOT NULL,
  `bus_quality` varchar(250) NOT NULL,
  `punctuality` varchar(250) NOT NULL,
  `Staff_behaviour` varchar(250) NOT NULL,
  `average` varchar(250) NOT NULL,
  `comments` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `bus_id`, `bus_quality`, `punctuality`, `Staff_behaviour`, `average`, `comments`) VALUES
(3, '4', '101', '3', '2', '3', '2.6666666666667', ''),
(4, '123', '101', '3', '3', '3', '3', ''),
(5, '4', '103', '3', '3', '3', '3', 'fgf\r\n'),
(6, '154', '101', '3', '3', '3', '3', '\r\nnice');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) NOT NULL,
  `board_point` varchar(20) NOT NULL,
  `board_time` varchar(20) NOT NULL,
  `drop_point` varchar(20) NOT NULL,
  `drop_time` varchar(20) NOT NULL,
  `fare` int(11) NOT NULL,
  `status` int(200) NOT NULL DEFAULT '1',
  `created_by` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `bus_id`, `board_point`, `board_time`, `drop_point`, `drop_time`, `fare`, `status`, `created_by`) VALUES
(1, 101, 'Kalamassery', '09:00 AM', 'Thodupuzha', '01:00 PM', 2000, 1, 'admin'),
(2, 102, 'Angamaly', '10.30 AM', 'Kottayam', '2.00 PM', 5000, 1, 'admin'),
(3, 103, 'Kalamassery', '04:00 AM', 'Thodupuzha', '09:00 AM', 5000, 1, 'admin'),
(4, 104, 'Ernakulam', '04.00 AM', 'Palani', '09.30 AM', 5000, 1, 'admin'),
(5, 105, 'Ernakulam', '05.30 PM', 'Palani', '10.30 PM', 5000, 1, 'admin'),
(21, 112, 'chennai', '02:30 PM', 'Bangalore', '09:30 AM', 750, 1, 'admin'),
(22, 102, 'chennai', '10:00 AM', 'Kottayam', '10:30 PM', 700, 1, 'admin'),
(23, 102, 'Kottayam', '11:30 AM', 'Angamaly', '05:00 AM', 500, 1, 'admin'),
(24, 113, 'Madurai', '10:00 AM', 'Kollam', '09:00 PM', 800, 1, 'admin'),
(25, 103, 'Thodupuzha', '4.30 pm', 'Kalamassery', '8.00 pm', 3000, 1, 'admin'),
(26, 116, 'Idukki', '11:30 AM', 'Kannur', '09:30 PM', 450, 1, 'admin'),
(27, 131, 'kochi', '04:45 AM', 'KANNUR', '06:00 PM', 1200, 1, 'admin'),
(35, 117, 'idukki', '02:45 PM', 'Dindigul', '02:15 PM', 800, 1, 'admin'),
(36, 101, 'ernakulam', '03:15 PM', 'Dindigul', '02:45 PM', 800, 1, 'admin'),
(37, 101, 'ernakulam', '03:15 PM', 'Dindigul', '02:45 PM', 800, 1, 'admin'),
(38, 101, 'idukki', '03:30 PM', 'Kollam', '02:45 PM', 800, 1, 'admin'),
(39, 101, 'Kollam', '03:15 PM', 'idukki', '12:45 PM', 800, 1, 'admin'),
(40, 101, 'chennai', '02:45 PM', 'idukki', '02:45 PM', 800, 1, 'admin'),
(41, 101, 'thrissure', '03:00 PM', 'idukki', '03:00 PM', 800, 1, 'admin'),
(42, 101, 'thrissure', '03:00 PM', 'idukki', '03:00 PM', 800, 0, 'admin'),
(43, 103, 'ernakulam', '06:00 AM', 'idukki', '03:00 PM', 800, 0, 'admin'),
(44, 102, 'kochi', '04:15 PM', 'kozhikode', '03:15 AM', 1200, 0, 'admin'),
(45, 134, 'kochi', '11:30 AM', 'Kannur', '11:30 PM', 1200, 1, 'admin'),
(46, 135, 'kochi', '05:00 PM', 'kollam', '05:00 AM', 3333, 1, 'admin'),
(47, 136, 'ERR', '05:15 PM', 'ER', '05:15 AM', 121, 1, 'admin'),
(48, 137, 'RTp', '09:00 AM', 'RET', '09:00 PM', 222, 1, 'admin'),
(49, 101, 'aaa', '12:15 PM', 'bbb', '12:15 PM', 100, 1, 'admin'),
(50, 102, 'ccc', '01:30 PM', 'ddd', '07:30 PM', 200, 1, 'admin'),
(51, 103, 'eee', '01:30 PM', 'fff', '05:15 PM', 300, 1, 'admin'),
(52, 104, 'ggg', '04:30 PM', 'hhh', '09:30 PM', 350, 1, 'admin'),
(53, 105, 'iii', '06:30 PM', 'jjj', '07:30 PM', 250, 1, 'admin'),
(54, 112, 'kkk', '04:30 AM', 'lll', '05:30 PM', 200, 1, 'admin'),
(55, 113, 'mmm', '05:30 PM', 'nnn', '01:30 AM', 500, 1, 'admin'),
(56, 115, 'ooo', '01:30 PM', 'ppp', '07:30 PM', 300, 1, 'admin'),
(57, 116, 'qqq', '09:30 AM', 'rrr', '05:30 PM', 400, 1, 'admin'),
(58, 117, 'sss', '03:45 PM', 'ttt', '09:45 PM', 450, 1, 'admin'),
(59, 125, 'uuu', '02:15 PM', 'vvv', '06:30 PM', 250, 1, 'admin'),
(60, 126, 'www', '02:15 PM', 'xxx', '09:45 PM', 400, 1, 'admin'),
(61, 127, 'yyy', '02:00 PM', 'zzz', '08:45 PM', 350, 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `seat_layout`
--

CREATE TABLE IF NOT EXISTS `seat_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` varchar(250) NOT NULL,
  `bus_type` varchar(250) NOT NULL,
  `totel_seat` varchar(250) NOT NULL,
  `layout` longtext NOT NULL,
  `layout_type` varchar(250) NOT NULL,
  `last_seat` varchar(250) NOT NULL,
  `no_sleeper` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `seat_layout`
--

INSERT INTO `seat_layout` (`id`, `bus_id`, `bus_type`, `totel_seat`, `layout`, `layout_type`, `last_seat`, `no_sleeper`) VALUES
(52, '101', 'Seater && Sleeper', '20', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"}],"1":[{"bus":4,"type":"seater","seat_no":"B1"},{"bus":5,"type":"seater","seat_no":"B2"},{"bus":6,"type":"seater","seat_no":"B3"},{"bus":7,"type":"seater","seat_no":"B4"}],"2":[{"bus":8,"type":"seater","seat_no":"C1"},{"bus":9,"type":"seater","seat_no":"C2"},{"bus":10,"type":"seater","seat_no":"C3"},{"bus":11,"type":"seater","seat_no":"C4"}],"3":[{"bus":12,"type":"seater","seat_no":"D1"},{"bus":13,"type":"seater","seat_no":"D2"},{"bus":14,"type":"seater","seat_no":"D3"},{"bus":15,"type":"seater","seat_no":"D4"}],"4":[{"bus":16,"type":"seater","seat_no":"E1"},{"bus":17,"type":"seater","seat_no":"E2"},{"bus":18,"type":"seater","seat_no":"E3"},{"bus":19,"type":"seater","seat_no":"E4"},{"bus":20,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(53, '1032', 'Sleeper', '20', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"}],"1":[{"bus":4,"type":"sleeper","seat_no":"B1"},{"bus":5,"type":"sleeper","seat_no":"B2"},{"bus":6,"type":"sleeper","seat_no":"B3"},{"bus":7,"type":"sleeper","seat_no":"B4"}],"2":[{"bus":8,"type":"sleeper","seat_no":"C1"},{"bus":9,"type":"sleeper","seat_no":"C2"},{"bus":10,"type":"sleeper","seat_no":"C3"},{"bus":11,"type":"sleeper","seat_no":"C4"}],"3":[{"bus":12,"type":"sleeper","seat_no":"D1"},{"bus":13,"type":"sleeper","seat_no":"D2"},{"bus":14,"type":"sleeper","seat_no":"D3"},{"bus":15,"type":"sleeper","seat_no":"D4"}],"4":[{"bus":16,"type":"sleeper","seat_no":"E1"},{"bus":17,"type":"sleeper","seat_no":"E2"},{"bus":18,"type":"sleeper","seat_no":"E3"},{"bus":19,"type":"sleeper","seat_no":"E4"},{"bus":20,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(54, '103', 'Seater / Semi sleeper', '49', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"},{"bus":5,"type":"seater","seat_no":"A6"},{"bus":6,"type":"seater","seat_no":"A7"},{"bus":7,"type":"seater","seat_no":"A8"},{"bus":8,"type":"seater","seat_no":"A9"},{"bus":9,"type":"seater","seat_no":"A10"},{"bus":10,"type":"seater","seat_no":"A11"}],"1":[{"bus":11,"type":"seater","seat_no":"B1"},{"bus":12,"type":"seater","seat_no":"B2"},{"bus":13,"type":"seater","seat_no":"B3"},{"bus":14,"type":"seater","seat_no":"B4"},{"bus":15,"type":"seater","seat_no":"B5"},{"bus":16,"type":"seater","seat_no":"B6"},{"bus":17,"type":"seater","seat_no":"B7"},{"bus":18,"type":"seater","seat_no":"B8"},{"bus":19,"type":"seater","seat_no":"B9"},{"bus":20,"type":"seater","seat_no":"B10"},{"bus":21,"type":"seater","seat_no":"B11"}],"2":[{"bus":22,"type":"seater","seat_no":"C1"},{"bus":23,"type":"seater","seat_no":"C2"},{"bus":24,"type":"seater","seat_no":"C3"},{"bus":25,"type":"seater","seat_no":"C4"},{"bus":26,"type":"seater","seat_no":"C5"},{"bus":27,"type":"seater","seat_no":"C6"},{"bus":28,"type":"seater","seat_no":"C7"},{"bus":29,"type":"seater","seat_no":"C8"},{"bus":30,"type":"seater","seat_no":"C9"},{"bus":31,"type":"seater","seat_no":"C10"},{"bus":32,"type":"seater","seat_no":"C11"}],"3":[{"bus":33,"type":"seater","seat_no":"D1"},{"bus":34,"type":"seater","seat_no":"D2"},{"bus":35,"type":"seater","seat_no":"D3"},{"bus":36,"type":"seater","seat_no":"D4"},{"bus":37,"type":"seater","seat_no":"D5"},{"bus":38,"type":"seater","seat_no":"D6"},{"bus":39,"type":"seater","seat_no":"D7"},{"bus":40,"type":"seater","seat_no":"D8"},{"bus":41,"type":"seater","seat_no":"D9"},{"bus":42,"type":"seater","seat_no":"D10"},{"bus":43,"type":"seater","seat_no":"D11"}],"4":[{"bus":44,"type":"seater","seat_no":"E1"},{"bus":45,"type":"seater","seat_no":"E2"},{"bus":46,"type":"seater","seat_no":"E3"},{"bus":47,"type":"seater","seat_no":"E4"},{"bus":48,"type":"seater","seat_no":"E5"}]}', 'layout-4', '5', ''),
(55, '1017', 'Seater && Sleeper', '40', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"},{"bus":5,"type":"seater","seat_no":"A6"},{"bus":6,"type":"seater","seat_no":"A7"},{"bus":7,"type":"seater","seat_no":"A8"},{"bus":8,"type":"seater","seat_no":"A9"},{"bus":9,"type":"seater","seat_no":"A10"},{"bus":10,"type":"seater","seat_no":"A11"},{"bus":11,"type":"seater","seat_no":"A12"},{"bus":12,"type":"seater","seat_no":"A13"},{"bus":13,"type":"seater","seat_no":"A14"},{"bus":14,"type":"seater","seat_no":"A15"},{"bus":15,"type":"seater","seat_no":"A16"},{"bus":16,"type":"seater","seat_no":"A17"},{"bus":17,"type":"seater","seat_no":"A18"}],"1":[{"bus":18,"type":"seater","seat_no":"B1"},{"bus":19,"type":"seater","seat_no":"B2"},{"bus":20,"type":"seater","seat_no":"B3"},{"bus":21,"type":"seater","seat_no":"B4"},{"bus":22,"type":"seater","seat_no":"B5"},{"bus":23,"type":"seater","seat_no":"B6"},{"bus":24,"type":"seater","seat_no":"B7"},{"bus":25,"type":"seater","seat_no":"B8"},{"bus":26,"type":"seater","seat_no":"B9"},{"bus":27,"type":"seater","seat_no":"B10"},{"bus":28,"type":"seater","seat_no":"B11"},{"bus":29,"type":"seater","seat_no":"B12"},{"bus":30,"type":"seater","seat_no":"B13"},{"bus":31,"type":"seater","seat_no":"B14"},{"bus":32,"type":"seater","seat_no":"B15"},{"bus":33,"type":"seater","seat_no":"B16"},{"bus":34,"type":"seater","seat_no":"B17"},{"bus":35,"type":"seater","seat_no":"B18"}],"2":[],"3":[],"4":[{"bus":36,"type":"seater","seat_no":"E1"},{"bus":37,"type":"seater","seat_no":"E2"},{"bus":40,"type":"sleeper1","seat_no":"E5"},{"bus":39,"type":"seater","seat_no":"E4"},{"bus":38,"type":"seater","seat_no":"E3"}]}', 'layout-1', '4', ''),
(58, '102', 'Seater / Semi sleeper', '20', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"},{"bus":5,"type":"seater","seat_no":"A6"},{"bus":6,"type":"seater","seat_no":"A7"},{"bus":7,"type":"seater","seat_no":"A8"}],"1":[{"bus":8,"type":"seater","seat_no":"B1"},{"bus":9,"type":"seater","seat_no":"B2"},{"bus":10,"type":"seater","seat_no":"B3"},{"bus":11,"type":"seater","seat_no":"B4"},{"bus":12,"type":"seater","seat_no":"B5"},{"bus":13,"type":"seater","seat_no":"B6"},{"bus":14,"type":"seater","seat_no":"B7"},{"bus":15,"type":"seater","seat_no":"B8"}],"2":[],"3":[],"4":[{"bus":16,"type":"seater","seat_no":"E1"},{"bus":17,"type":"seater","seat_no":"E2"},{"bus":18,"type":"seater","seat_no":"E3"},{"bus":19,"type":"seater","seat_no":"E4"},{"bus":20,"type":"sleeper1","seat_no":"E5"}]}', 'layout-1', '4', ''),
(59, '105', 'Seater / Semi sleeper', '20', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"},{"bus":5,"type":"seater","seat_no":"A6"},{"bus":6,"type":"seater","seat_no":"A7"},{"bus":7,"type":"seater","seat_no":"A8"}],"1":[{"bus":8,"type":"seater","seat_no":"B1"},{"bus":9,"type":"seater","seat_no":"B2"},{"bus":10,"type":"seater","seat_no":"B3"},{"bus":11,"type":"seater","seat_no":"B4"},{"bus":12,"type":"seater","seat_no":"B5"},{"bus":13,"type":"seater","seat_no":"B6"},{"bus":14,"type":"seater","seat_no":"B7"},{"bus":15,"type":"seater","seat_no":"B8"}],"2":[],"3":[],"4":[{"bus":16,"type":"seater","seat_no":"E1"},{"bus":17,"type":"seater","seat_no":"E2"},{"bus":18,"type":"seater","seat_no":"E3"},{"bus":19,"type":"seater","seat_no":"E4"},{"bus":20,"type":"sleeper1","seat_no":"E5"}]}', 'layout-1', '4', ''),
(60, '131', 'Sleeper', '49', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"},{"bus":4,"type":"sleeper","seat_no":"A5"},{"bus":5,"type":"sleeper","seat_no":"A6"},{"bus":6,"type":"sleeper","seat_no":"A7"},{"bus":7,"type":"sleeper","seat_no":"A8"},{"bus":8,"type":"sleeper","seat_no":"A9"},{"bus":9,"type":"sleeper","seat_no":"A10"},{"bus":10,"type":"sleeper","seat_no":"A11"},{"bus":11,"type":"sleeper","seat_no":"A12"}],"1":[{"bus":12,"type":"sleeper","seat_no":"B1"},{"bus":13,"type":"sleeper","seat_no":"B2"},{"bus":14,"type":"sleeper","seat_no":"B3"},{"bus":15,"type":"sleeper","seat_no":"B4"},{"bus":16,"type":"sleeper","seat_no":"B5"},{"bus":17,"type":"sleeper","seat_no":"B6"},{"bus":18,"type":"sleeper","seat_no":"B7"},{"bus":19,"type":"sleeper","seat_no":"B8"},{"bus":20,"type":"sleeper","seat_no":"B9"},{"bus":21,"type":"sleeper","seat_no":"B10"},{"bus":22,"type":"sleeper","seat_no":"B11"},{"bus":23,"type":"sleeper","seat_no":"B12"}],"2":[{"bus":24,"type":"sleeper","seat_no":"C1"},{"bus":25,"type":"sleeper","seat_no":"C2"},{"bus":26,"type":"sleeper","seat_no":"C3"},{"bus":27,"type":"sleeper","seat_no":"C4"},{"bus":28,"type":"sleeper","seat_no":"C5"},{"bus":29,"type":"sleeper","seat_no":"C6"},{"bus":30,"type":"sleeper","seat_no":"C7"},{"bus":31,"type":"sleeper","seat_no":"C8"},{"bus":32,"type":"sleeper","seat_no":"C9"},{"bus":33,"type":"sleeper","seat_no":"C10"},{"bus":34,"type":"sleeper","seat_no":"C11"},{"bus":35,"type":"sleeper","seat_no":"C12"}],"3":[{"bus":39,"type":"sleeper","seat_no":"D1"},{"bus":40,"type":"sleeper","seat_no":"D2"},{"bus":41,"type":"sleeper","seat_no":"D3"},{"bus":42,"type":"sleeper","seat_no":"D4"},{"bus":43,"type":"sleeper","seat_no":"D5"},{"bus":44,"type":"sleeper","seat_no":"D6"},{"bus":45,"type":"sleeper","seat_no":"D7"},{"bus":46,"type":"sleeper","seat_no":"D8"},{"bus":47,"type":"sleeper","seat_no":"D9"},{"bus":48,"type":"sleeper","seat_no":"D10"},{"bus":49,"type":"sleeper","seat_no":"D11"},{"bus":50,"type":"sleeper","seat_no":"D12"},{"bus":51,"type":"sleeper","seat_no":"D13"}],"4":[]}', 'layout-4', '1', ''),
(61, '133', 'Sleeper', '49', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"},{"bus":4,"type":"sleeper","seat_no":"A5"},{"bus":5,"type":"sleeper","seat_no":"A6"},{"bus":6,"type":"sleeper","seat_no":"A7"},{"bus":7,"type":"sleeper","seat_no":"A8"},{"bus":8,"type":"sleeper","seat_no":"A9"},{"bus":9,"type":"sleeper","seat_no":"A10"},{"bus":10,"type":"sleeper","seat_no":"A11"},{"bus":11,"type":"sleeper","seat_no":"A12"}],"1":[{"bus":12,"type":"sleeper","seat_no":"B1"},{"bus":13,"type":"sleeper","seat_no":"B2"},{"bus":14,"type":"sleeper","seat_no":"B3"},{"bus":15,"type":"sleeper","seat_no":"B4"},{"bus":16,"type":"sleeper","seat_no":"B5"},{"bus":17,"type":"sleeper","seat_no":"B6"},{"bus":18,"type":"sleeper","seat_no":"B7"},{"bus":19,"type":"sleeper","seat_no":"B8"},{"bus":20,"type":"sleeper","seat_no":"B9"},{"bus":21,"type":"sleeper","seat_no":"B10"},{"bus":22,"type":"sleeper","seat_no":"B11"},{"bus":23,"type":"sleeper","seat_no":"B12"}],"2":[{"bus":24,"type":"sleeper","seat_no":"C1"},{"bus":25,"type":"sleeper","seat_no":"C2"},{"bus":26,"type":"sleeper","seat_no":"C3"},{"bus":27,"type":"sleeper","seat_no":"C4"},{"bus":28,"type":"sleeper","seat_no":"C5"},{"bus":29,"type":"sleeper","seat_no":"C6"},{"bus":30,"type":"sleeper","seat_no":"C7"},{"bus":31,"type":"sleeper","seat_no":"C8"},{"bus":32,"type":"sleeper","seat_no":"C9"},{"bus":33,"type":"sleeper","seat_no":"C10"},{"bus":34,"type":"sleeper","seat_no":"C11"},{"bus":35,"type":"sleeper","seat_no":"C12"}],"3":[{"bus":39,"type":"sleeper","seat_no":"D1"},{"bus":40,"type":"sleeper","seat_no":"D2"},{"bus":41,"type":"sleeper","seat_no":"D3"},{"bus":42,"type":"sleeper","seat_no":"D4"},{"bus":43,"type":"sleeper","seat_no":"D5"},{"bus":44,"type":"sleeper","seat_no":"D6"},{"bus":45,"type":"sleeper","seat_no":"D7"},{"bus":46,"type":"sleeper","seat_no":"D8"},{"bus":47,"type":"sleeper","seat_no":"D9"},{"bus":48,"type":"sleeper","seat_no":"D10"},{"bus":49,"type":"sleeper","seat_no":"D11"},{"bus":50,"type":"sleeper","seat_no":"D12"},{"bus":51,"type":"sleeper","seat_no":"D13"}],"4":[]}', 'layout-4', '2', ''),
(62, '134', 'Sleeper', '10', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"}],"1":[{"bus":3,"type":"sleeper","seat_no":"B1"},{"bus":4,"type":"sleeper","seat_no":"B2"},{"bus":5,"type":"sleeper","seat_no":"B3"}],"2":[{"bus":8,"type":"sleeper","seat_no":"C1"},{"bus":9,"type":"sleeper","seat_no":"C2"},{"bus":10,"type":"sleeper","seat_no":"C3"},{"bus":11,"type":"sleeper","seat_no":"C4"}],"3":[],"4":[]}', 'layout-3', '1', ''),
(64, '137', 'Sleeper', '22', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"},{"bus":4,"type":"sleeper","seat_no":"A5"}],"1":[{"bus":5,"type":"sleeper","seat_no":"B1"},{"bus":6,"type":"sleeper","seat_no":"B2"},{"bus":7,"type":"sleeper","seat_no":"B3"},{"bus":8,"type":"sleeper","seat_no":"B4"},{"bus":9,"type":"sleeper","seat_no":"B5"}],"2":[{"bus":10,"type":"sleeper","seat_no":"C1"},{"bus":11,"type":"sleeper","seat_no":"C2"},{"bus":12,"type":"sleeper","seat_no":"C3"},{"bus":13,"type":"sleeper","seat_no":"C4"},{"bus":14,"type":"sleeper","seat_no":"C5"}],"3":[{"bus":21,"type":"sleeper","seat_no":"D1"},{"bus":22,"type":"sleeper","seat_no":"D2"},{"bus":23,"type":"sleeper","seat_no":"D3"},{"bus":24,"type":"sleeper","seat_no":"D4"},{"bus":25,"type":"sleeper","seat_no":"D5"},{"bus":26,"type":"sleeper","seat_no":"D6"},{"bus":27,"type":"sleeper","seat_no":"D7"}],"4":[]}', 'layout-4', '2', ''),
(66, '129', 'Sleeper', '12', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"}],"1":[{"bus":4,"type":"sleeper","seat_no":"B1"},{"bus":5,"type":"sleeper","seat_no":"B2"},{"bus":6,"type":"sleeper","seat_no":"B3"},{"bus":7,"type":"sleeper","seat_no":"B4"}],"2":[{"bus":8,"type":"sleeper","seat_no":"C1"},{"bus":9,"type":"sleeper","seat_no":"C2"},{"bus":10,"type":"sleeper","seat_no":"C3"},{"bus":11,"type":"sleeper","seat_no":"C4"}],"3":[],"4":[]}', 'layout-3', '1', ''),
(73, '126', 'Sleeper', '20', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"}],"1":[{"bus":4,"type":"sleeper","seat_no":"B1"},{"bus":5,"type":"sleeper","seat_no":"B2"},{"bus":6,"type":"sleeper","seat_no":"B3"},{"bus":7,"type":"sleeper","seat_no":"B4"}],"2":[{"bus":8,"type":"sleeper","seat_no":"C1"},{"bus":9,"type":"sleeper","seat_no":"C2"},{"bus":10,"type":"sleeper","seat_no":"C3"},{"bus":11,"type":"sleeper","seat_no":"C4"}],"3":[{"bus":18,"type":"sleeper","seat_no":"D1"},{"bus":19,"type":"sleeper","seat_no":"D2"},{"bus":20,"type":"sleeper","seat_no":"D3"},{"bus":21,"type":"sleeper","seat_no":"D4"},{"bus":22,"type":"sleeper","seat_no":"D5"},{"bus":23,"type":"sleeper","seat_no":"D6"}],"4":[{"bus":18,"type":"sleeper","seat_no":"E1"},{"bus":19,"type":"sleeper","seat_no":"E2"},{"bus":20,"type":"sleeper1","seat_no":"E3"},{"bus":21,"type":"sleeper1","seat_no":"E4"},{"bus":22,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '2', ''),
(74, '138', 'Sleeper', '22', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"},{"bus":4,"type":"sleeper","seat_no":"A5"},{"bus":5,"type":"sleeper","seat_no":"A6"},{"bus":6,"type":"sleeper","seat_no":"A7"}],"1":[{"bus":7,"type":"sleeper","seat_no":"B1"},{"bus":8,"type":"sleeper","seat_no":"B2"},{"bus":9,"type":"sleeper","seat_no":"B3"},{"bus":10,"type":"sleeper","seat_no":"B4"},{"bus":11,"type":"sleeper","seat_no":"B5"},{"bus":12,"type":"sleeper","seat_no":"B6"},{"bus":13,"type":"sleeper","seat_no":"B7"}],"2":[{"bus":16,"type":"sleeper","seat_no":"C1"},{"bus":17,"type":"sleeper","seat_no":"C2"},{"bus":18,"type":"sleeper","seat_no":"C3"},{"bus":19,"type":"sleeper","seat_no":"C4"},{"bus":20,"type":"sleeper","seat_no":"C5"},{"bus":21,"type":"sleeper","seat_no":"C6"},{"bus":22,"type":"sleeper","seat_no":"C7"},{"bus":23,"type":"sleeper","seat_no":"C8"}],"3":[],"4":[]}', 'layout-3', '0', ''),
(75, '139', 'Sleeper', '12', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"}],"1":[{"bus":4,"type":"sleeper","seat_no":"B1"},{"bus":5,"type":"sleeper","seat_no":"B2"},{"bus":6,"type":"sleeper","seat_no":"B3"},{"bus":7,"type":"sleeper","seat_no":"B4"}],"2":[{"bus":8,"type":"sleeper","seat_no":"C1"},{"bus":9,"type":"sleeper","seat_no":"C2"},{"bus":10,"type":"sleeper","seat_no":"C3"},{"bus":11,"type":"sleeper","seat_no":"C4"}],"3":[],"4":[]}', 'layout-3', '0', ''),
(76, '104', 'Sleeper', '20', '{"0":[{"bus":0,"type":"sleeper","seat_no":"A1"},{"bus":1,"type":"sleeper","seat_no":"A2"},{"bus":2,"type":"sleeper","seat_no":"A3"},{"bus":3,"type":"sleeper","seat_no":"A4"},{"bus":4,"type":"sleeper","seat_no":"A5"}],"1":[{"bus":5,"type":"sleeper","seat_no":"B1"},{"bus":6,"type":"sleeper","seat_no":"B2"},{"bus":7,"type":"sleeper","seat_no":"B3"},{"bus":8,"type":"sleeper","seat_no":"B4"},{"bus":9,"type":"sleeper","seat_no":"B5"}],"2":[{"bus":10,"type":"sleeper","seat_no":"C1"},{"bus":11,"type":"sleeper","seat_no":"C2"},{"bus":12,"type":"sleeper","seat_no":"C3"},{"bus":13,"type":"sleeper","seat_no":"C4"},{"bus":14,"type":"sleeper","seat_no":"C5"}],"3":[{"bus":15,"type":"sleeper","seat_no":"D1"},{"bus":16,"type":"sleeper","seat_no":"D2"},{"bus":17,"type":"sleeper","seat_no":"D3"},{"bus":18,"type":"sleeper","seat_no":"D4"},{"bus":19,"type":"sleeper","seat_no":"D5"}],"4":[]}', 'layout-4', '0', ''),
(77, '112', 'Seater / Semi sleeper', '20', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[]}', 'layout-4', '0', ''),
(78, '113', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(79, '115', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(80, '116', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(81, '117', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(82, '125', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(83, '127', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', ''),
(84, '128', 'Seater / Semi sleeper', '24', '{"0":[{"bus":0,"type":"seater","seat_no":"A1"},{"bus":1,"type":"seater","seat_no":"A2"},{"bus":2,"type":"seater","seat_no":"A3"},{"bus":3,"type":"seater","seat_no":"A4"},{"bus":4,"type":"seater","seat_no":"A5"}],"1":[{"bus":5,"type":"seater","seat_no":"B1"},{"bus":6,"type":"seater","seat_no":"B2"},{"bus":7,"type":"seater","seat_no":"B3"},{"bus":8,"type":"seater","seat_no":"B4"},{"bus":9,"type":"seater","seat_no":"B5"}],"2":[{"bus":10,"type":"seater","seat_no":"C1"},{"bus":11,"type":"seater","seat_no":"C2"},{"bus":12,"type":"seater","seat_no":"C3"},{"bus":13,"type":"seater","seat_no":"C4"},{"bus":14,"type":"seater","seat_no":"C5"}],"3":[{"bus":15,"type":"seater","seat_no":"D1"},{"bus":16,"type":"seater","seat_no":"D2"},{"bus":17,"type":"seater","seat_no":"D3"},{"bus":18,"type":"seater","seat_no":"D4"},{"bus":19,"type":"seater","seat_no":"D5"}],"4":[{"bus":20,"type":"seater","seat_no":"E1"},{"bus":21,"type":"seater","seat_no":"E2"},{"bus":22,"type":"seater","seat_no":"E3"},{"bus":23,"type":"seater","seat_no":"E4"},{"bus":24,"type":"sleeper1","seat_no":"E5"}]}', 'layout-4', '4', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `favicon` varchar(250) NOT NULL,
  `smtp_username` varchar(250) NOT NULL,
  `smtp_host` varchar(250) NOT NULL,
  `smtp_password` varchar(250) NOT NULL,
  `sender_id` varchar(250) NOT NULL,
  `sms_username` varchar(250) NOT NULL,
  `sms_password` varchar(250) NOT NULL,
  `paypal` varchar(250) NOT NULL,
  `paypalid` varchar(251) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `logo`, `favicon`, `smtp_username`, `smtp_host`, `smtp_password`, `sender_id`, `sms_username`, `sms_password`, `paypal`, `paypalid`) VALUES
(1, 'TrueBus', 'assets/uploads/logo/1469446049_TrueBus.png', 'assets/uploads/favicons/1469446049_TrueBus.png', 'noreplay@truebus.co.in', 'mail.truebus.co.in ', 'P4*!GIVXZFvi', '101', 'manu', '676', 'https://www.sandbox.paypal.com/cgi-bin/webscr', 'shajeermhmmd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(80) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `reset_key` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `username`, `password`, `name`, `dob`, `image`, `gender`, `mob`, `reset_key`) VALUES
(3, 'usr_001', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'test', '05/13/2016', 'assets/uploads/profilepic/crossbar.png', 'male', 9867542324, ''),
(4, 'usr_002', 'shibilabs23@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'shibi', '05/13/2016', 'assets/uploads/profilepic/crossbar.png', 'female', 9496383739, 'TB1469535255'),
(10, 'usr_002', 'shilpa.techware@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'abc-traders', '03-07-1970', 'http://192.168.1.31/jasir/truebus/assets/uploads/Koala.jpg', 'male', 0, 'TB1469535808');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
