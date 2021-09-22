-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 04:10 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foods`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `privilege` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `privilege`) VALUES
(1, 'admin', 'WVdSdGFXND0=', 'admin'),
(2, 'staff', 'YzNSaFptWT0=', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE IF NOT EXISTS `foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `category` text NOT NULL,
  `code` int(11) NOT NULL,
  `ext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `category`, `code`, `ext`) VALUES
(1, 'Burger', '65.00', 'Snacks', 1, '.png'),
(2, 'Carbonara', '100.00', 'Meal', 2, '.png'),
(4, 'Carrot Cake with Glazings', '50.00', 'Dessert', 4, '.png'),
(5, 'Ribs', '300.00', 'Meal', 5, '.png'),
(6, 'Fried Chicken with Salad', '60.00', 'Meal', 6, '.png'),
(7, 'Smoked Ham', '250.00', 'Meal', 7, '.png'),
(8, 'Pancakes with Berries', '40.00', 'Meal', 8, '.png'),
(9, 'Fried Tofu with Vegetables', '30.00', 'Meal', 9, '.png'),
(10, 'Salad with Cheese', '30.00', 'Meal', 10, '.png'),
(11, 'Heart Chocolates', '143.00', 'Dessert', 11, '.jpg'),
(12, 'Rainbow Shake', '20.00', 'Snacks', 12, '.jpg'),
(13, 'Jumbo Split', '250.00', 'Dessert', 13, '.jpg'),
(14, 'Chocolate Cake', '400.00', 'Dessert', 14, '.jpg'),
(15, 'Contrast Mini Cake', '50.00', 'Dessert', 15, '.JPG'),
(16, 'French Fries', '30.00', 'Snacks', 16, '.JPG'),
(17, 'Double-Dipped Magnum with Cream', '90', 'Dessert', 17, '.JPG'),
(18, 'Quirky Footlong', '30.00', 'Snacks', 18, '.JPG'),
(19, 'Tacos Pair', '50.00', 'Snacks', 19, '.JPG'),
(20, 'Team of Tacos', '400.00', 'Snacks', 20, '.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `particulars` text NOT NULL,
  `total` text NOT NULL,
  `pay` text NOT NULL,
  `change` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `time`, `particulars`, `total`, `pay`, `change`) VALUES
(1, '22-03-2020', '04:13:49', '<tr><td>Ham</<td><td>4</td><td>200.00</td><td>Php 800</td></tr>', '800', '900.986564', '100.98656400000004'),
(2, '22-03-2020', '05:02:07', '<tr><td>Ribs</<td><td>1</td><td>300.00</td><td>Php 300</td></tr>', '300', '450.50', '150.5'),
(3, '22-03-2020', '06:07:50', '<tr><td>Carbonara</<td><td>2</td><td>100.00</td><td>Php 200</td></tr>', '200', '300', '100'),
(4, '22-03-2020', '06:27:50', '<tr><td>Ribs</<td><td>3</td><td>300.00</td><td>Php 900</td></tr>', '900', '1000', '100'),
(5, '22-03-2020', '06:46:50', '<tr><td>Cake</<td><td>5</td><td>50.00</td><td>Php 250</td></tr>', '250', '300', '50'),
(6, '22-03-2020', '06:24:51', '<tr><td>Burger</<td><td>2</td><td>50.00</td><td>Php 100</td></tr><tr><td>Carbonara</<td><td>2</td><td>100.00</td><td>Php 200</td></tr><tr><td>Ham</<td><td>2</td><td>200.00</td><td>Php 400</td></tr><tr><td>Cake</<td><td>2</td><td>50.00</td><td>Php 100</td></tr><tr><td>Ribs</<td><td>1</td><td>300.00</td><td>Php 300</td></tr>', '1100', '2000', '900');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `particulars` text NOT NULL,
  `reserve_date` text NOT NULL,
  `reserve_time` text NOT NULL,
  `total` text NOT NULL,
  `pay` text NOT NULL,
  `change` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `date`, `time`, `particulars`, `reserve_date`, `reserve_time`, `total`, `pay`, `change`, `status`) VALUES
(1, '22-03-2020', '04:16:32', '<tr><td>Carbonara</<td><td>1</td><td>100.00</td><td>Php 100</td></tr><tr><td>Ham</<td><td>2</td><td>200.00</td><td>Php 400</td></tr>', '2020-03-12', '01:00', '500', '600', '100', 'none'),
(2, '22-03-2020', '10:27:05', '<tr><td>Carbonara</<td><td>3</td><td>100.00</td><td>Php 300</td></tr><tr><td>Rainbow Shake</<td><td>5</td><td>20.00</td><td>Php 100</td></tr><tr><td>Jumbo Split</<td><td>4</td><td>250.00</td><td>Php 1000</td></tr><tr><td>Quirky Footlong</<td><td>1</td><td>30.00</td><td>Php 30</td></tr>', '2020-03-12', '13:00', '1430', '1500', '70', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
