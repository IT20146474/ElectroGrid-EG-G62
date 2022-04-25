-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 08:02 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epower`
--

-- --------------------------------------------------------

--
-- Table structure for table `billapi`
--

CREATE TABLE IF NOT EXISTS `billapi` (
  `bID` int(6) NOT NULL AUTO_INCREMENT,
  `bAccNo` varchar(200) NOT NULL,
  `bDate` varchar(200) NOT NULL,
  `bUnit` varchar(200) NOT NULL,
  `bUnitPrice` varchar(200) NOT NULL,
  `bAmount` varchar(200) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employeeapi`
--

CREATE TABLE IF NOT EXISTS `employeeapi` (
  `Eid` int(6) NOT NULL AUTO_INCREMENT,
  `EName` varchar(200) NOT NULL,
  `EAdd` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `ETele` varchar(200) NOT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paymentapi`
--

CREATE TABLE IF NOT EXISTS `paymentapi` (
  `PaymentID` int(6) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(200) NOT NULL,
  `AccountNO` varchar(200) NOT NULL,
  `Date` varchar(200) NOT NULL,
  `PaymentAmount` varchar(200) NOT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registerapi`
--

CREATE TABLE IF NOT EXISTS `registerapi` (
  `regID` int(6) NOT NULL AUTO_INCREMENT,
  `regName` varchar(200) NOT NULL,
  `regAddress` varchar(200) NOT NULL,
  `regEmail` varchar(200) NOT NULL,
  `regDate` varchar(200) NOT NULL,
  `regPNo` varchar(200) NOT NULL,
  PRIMARY KEY (`regID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
