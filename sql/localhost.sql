-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2017 at 11:04 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `college`
--
CREATE DATABASE IF NOT EXISTS `college` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `college`;

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE IF NOT EXISTS `issuebook` (
  `roll` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `Bcode` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`roll`, `issuedate`, `Bcode`, `quantity`) VALUES
(1, '2015-12-03', 'b101', 2),
(1, '2015-12-03', 'b101', 2),
(1, '2015-12-03', 'b101', 2),
(1, '2015-12-03', 'b101', 2);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE IF NOT EXISTS `library` (
  `Bid` varchar(20) NOT NULL,
  `Bname` varchar(20) NOT NULL,
  `Bpublisher` varchar(30) NOT NULL,
  `Bquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`Bid`, `Bname`, `Bpublisher`, `Bquantity`) VALUES
('b101', 'JAVA', 'balagruswami', 20),
('b101', 'JAVA', 'balagruswami', 20),
('b101', 'JAVA', 'balagruswami', 20),
('b101', 'JAVA', 'balagruswami', 20);

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE IF NOT EXISTS `returnbook` (
  `roll` int(11) NOT NULL,
  `returndate` date NOT NULL,
  `Bcode` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`roll`, `returndate`, `Bcode`, `quantity`) VALUES
(1, '2016-01-29', 'b101', 2),
(1, '2016-01-29', 'b101', 2),
(1, '2016-01-29', 'b101', 2),
(1, '2016-01-29', 'b101', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE IF NOT EXISTS `stu` (
  `roll` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`roll`, `name`) VALUES
(1, 'ram'),
(2, 'kunal'),
(1, 'ram'),
(2, 'kunal'),
(1, 'ram'),
(2, 'kunal'),
(1, 'ram'),
(2, 'kunal');
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobile`, `email`, `gender`, `username`) VALUES
(1, 'scholar in the moonlight', '9988776655', '', '', 'qwerty'),
(2, 'safaiwala', '998', '', '', 'crocodile'),
(3, 'rasoi', '990', '', '', 'giraffe'),
(4, 'ranchi sweets', '887', '', '', 'lion'),
(5, 'jootawala', '880', '', '', 'panther'),
(6, 'roadwala', '889', '', '', 'kangaroo'),
(7, 'jootawala', '880', '', '', ''),
(9, 'starhouse', '9988776655', '', '', 'puma'),
(10, 'CCD', '9876532271', '', '', 'chocolate'),
(28, 'Minho', '', '', '', 'min'),
(29, 'chocolate', '', '', '', 'choco'),
(30, 'fantasy', '785', 'fantasy@gmail.com', 'male', 'darkfantasy'),
(31, 'chocopie', '765', 'pie@hotmail.com', 'female', 'pie'),
(32, 'Lee', '8875', 'jong@gmail.com', 'male', 'leejong');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stock in` varchar(50) NOT NULL,
  `stock out` varchar(50) NOT NULL,
  `oil entry` varchar(50) NOT NULL,
  `waste entry` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE IF NOT EXISTS `ledger` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `party` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `totalamount` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, '', '', 'employee'),
(6, 'fghj', 'lkjh', ''),
(8, 'truiyto', '', ''),
(9, 'ewtery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `partywise`
--

CREATE TABLE IF NOT EXISTS `partywise` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `partyname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `partywise`
--

INSERT INTO `partywise` (`id`, `name`, `partyname`, `category`, `quantity`, `mobile`, `address`, `username`) VALUES
(1, 'qwe', 'rty', 'uiop', '45', '9876532271', 'ranchi', ''),
(2, 'kapoor&sons', 'partywala', 'baasmati', '45', '9987654321', 'jsr', 'qwerty'),
(3, 'bazaar', 'bazaarwala', 'blues', '60', '9876543210', 'namkom', 'monkey'),
(4, 'mithai', 'mithaiwala', 'rap', '65', '9987654322', 'tupudana', 'gorilla'),
(5, 'mithai', 'mithaiwala', 'rap', '60', '989', 'singhmore', 'apes'),
(6, 'YG', 'Lee', 'Kmusic', '80', '9987654331', 'gangnam', 'tom'),
(8, 'LMH', 'Min', 'Ho', '70', '9987654322', 'seoul', 'leeminho'),
(9, 'kim', 'woo', 'bin', '50', '1234', 'chiang-rai', 'woobin'),
(10, 'charlie', 'chaplin', 'comedy', '55', '8876', 'london', 'charliechaplin'),
(11, 'french', 'fries', 'eatery', '40', '76543', 'cinemall', 'karachi'),
(12, 'solar', 'ujala', 'light', '50', '8877665', 'ranchi', 'peacock'),
(14, 'solar', 'ujala', 'light', '50', '8877665', 'ranchi', 'peahen'),
(15, 'lamp', 'chair', 'wood', '60', '456', 'raturoad', 'green'),
(16, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', 'polo'),
(17, 'vanilla', 'flavour', 'ice', '60', '9876', 'kantatoli', 'cream'),
(18, 'strawberry', 'berry', 'ice', '60', '776', 'samlong', 'icecream');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `partyname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `totalamount` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `partyname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `TotalAmount` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `name`, `partyname`, `category`, `quantity`, `mobile`, `address`, `rate`, `TotalAmount`, `username`) VALUES
(4, 'rasoi', 'mazduri', 'rock', '67', '990', 'jsr', '25', '', 'giraffe'),
(5, 'safaiwala', 'mazduri', 'pop', '45', '998', 'ranchi', '30', '', 'crocodile'),
(6, 'manny', 'mannywala', 'whistle', '60', '9987654321', 'city', '32', '', 'cart'),
(7, 'park', 'yoo', 'chun', '65', '97521', 'busan', '40', '', 'parkyoochun'),
(8, 'french', 'fries', 'eatery', '40', '76543', 'cinemall', '30', '', 'karachi'),
(9, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(10, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(11, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(12, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(13, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(14, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(15, 'vanilla', 'flavour', 'ice', '60', '9876', 'kantatoli', '30', '', 'strawberry'),
(16, 'strawberry', 'berry', 'ice', '60', '776', 'samlong', '35', '2100', 'berries');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `img` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `phone`, `address`, `img`) VALUES
(1, 'ramkrishna', '54689756', 'chaibasa', 'uploads/ramkrishna.jpg'),
(4, 'mandy', '7005801248', 'bistupur', 'uploads/mandy.jpg'),
(5, 'rinoy', '8539803985', 'chaibasa', 'uploads/rinoy.jpg'),
(6, 'rey', '9097911395', 'sakchi', 'uploads/rey.jpg'),
(7, 'ramee', '9097911345', 'adityapur', 'uploads/ramee.jpg'),
(8, 'jo root', '5426478', 'japan', 'uploads/jo root.jpg'),
(9, 'michal', '5426478454', 'roman', 'uploads/michal.jpg'),
(10, 'Rocky', '4515545454', 'jordan', 'uploads/Rocky.jpg'),
(11, 'kunal', '4545454545', 'kolkata', 'uploads/kunal.jpg'),
(12, 'kunal', '4545454545', 'kolkata', 'uploads/kunal.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `username`, `mobile`, `email`, `gender`) VALUES
(1, 'ram krishna keshri', 'ram', '8539809385', 'ram@gmail.com', 'male'),
(2, 'krishna keshri', 'krishna', '7858099127', 'krishna@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'ram', 'ram12345', 'student'),
(2, 'krishna', 'krishna12345', 'student'),
(3, 'rinoy', 'rinoy12345', 'student'),
(4, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('ram', '12345');
--
-- Database: `erprice`
--
CREATE DATABASE IF NOT EXISTS `erprice` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `erprice`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `username`, `password`, `role`) VALUES
(1, 'ramkrishna', 'ram', 'ram123', 'main'),
(2, 'krishnakeshri', 'krishna', 'krishna123', 'verifier'),
(3, 'kunalsingh', 'kunal', 'kunal123', 'ledger'),
(4, 'Rinoy Rey', 'rinoy', 'rinoy123', 'rate');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `rice` varchar(50) NOT NULL,
  `grade` varchar(3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `totalrate` int(11) NOT NULL,
  `stackout` int(11) NOT NULL,
  `oil` int(11) NOT NULL,
  `waste` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `companyname`, `contact`, `address`, `rice`, `grade`, `quantity`, `rate`, `totalrate`, `stackout`, `oil`, `waste`) VALUES
(1, 'sona rice mill', '4578965421', 'jamshedpur', 'Basmati', 'A', 30, 50, 1500, 70, 20, 50),
(2, 'mohan rice mill', '7854784124', 'ranchi', 'Jasmine', 'B', 30, 40, 1200, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ricedetails`
--

CREATE TABLE IF NOT EXISTS `ricedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `rice` varchar(20) NOT NULL,
  `grade` varchar(3) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ricedetails`
--

INSERT INTO `ricedetails` (`id`, `companyname`, `contact`, `address`, `rice`, `grade`, `quantity`) VALUES
(1, 'sona rice mill', '4578965421', 'jamshedpur', 'Basmati', 'A', 100);

-- --------------------------------------------------------

--
-- Table structure for table `ricesales`
--

CREATE TABLE IF NOT EXISTS `ricesales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rice` varchar(20) NOT NULL,
  `grade` varchar(3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `totalrate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ricesales`
--

INSERT INTO `ricesales` (`id`, `companyname`, `contact`, `address`, `rice`, `grade`, `quantity`, `rate`, `totalrate`) VALUES
(1, 'sona rice mill', '4578965421', 'jamshedpur', 'Basmati', 'A', 100, 50, 0),
(2, 'mohan rice mill', '7854784124', 'ranchi', 'Jasmine', 'B', 30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'ram', 'ram123', 'main'),
(3, 'krishna', 'krishna123', 'verifier'),
(4, 'kunal', 'kunal123', 'ledger'),
(5, 'rinoy', 'rinoy123', 'rate');
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `e_mail` varchar(30) NOT NULL,
  `e_password` varchar(20) NOT NULL,
  PRIMARY KEY (`e_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`e_mail`, `e_password`) VALUES
('priyankakumari@gmail.com', 'priyankakumari'),
('shankar', '123'),
('sheelakumari@gmail.com', 'sheelakumari'),
('swatikumari@gmail.com', 'swatikumari');
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobile`, `email`, `gender`, `username`) VALUES
(1, 'scholar in the moonlight', '9988776655', '', '', 'qwerty'),
(2, 'safaiwala', '998', '', '', 'crocodile'),
(3, 'rasoi', '990', '', '', 'giraffe'),
(4, 'ranchi sweets', '887', '', '', 'lion'),
(5, 'jootawala', '880', '', '', 'panther'),
(6, 'roadwala', '889', '', '', 'kangaroo'),
(7, 'jootawala', '880', '', '', ''),
(9, 'starhouse', '9988776655', '', '', 'puma'),
(10, 'CCD', '9876532271', '', '', 'chocolate'),
(28, 'Minho', '', '', '', 'min'),
(29, 'chocolate', '', '', '', 'choco'),
(30, 'fantasy', '785', 'fantasy@gmail.com', 'male', 'darkfantasy'),
(31, 'chocopie', '765', 'pie@hotmail.com', 'female', 'pie'),
(32, 'Lee', '8875', 'jong@gmail.com', 'male', 'leejong');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stock in` varchar(50) NOT NULL,
  `stock out` varchar(50) NOT NULL,
  `oil entry` varchar(50) NOT NULL,
  `waste entry` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE IF NOT EXISTS `ledger` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `party` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `totalamount` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, '', '', 'employee'),
(6, 'fghj', 'lkjh', ''),
(8, 'truiyto', '', ''),
(9, 'ewtery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `partywise`
--

CREATE TABLE IF NOT EXISTS `partywise` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `partyname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `partywise`
--

INSERT INTO `partywise` (`id`, `name`, `partyname`, `category`, `quantity`, `mobile`, `address`, `username`) VALUES
(1, 'qwe', 'rty', 'uiop', '45', '9876532271', 'ranchi', ''),
(2, 'kapoor&sons', 'partywala', 'baasmati', '45', '9987654321', 'jsr', 'qwerty'),
(3, 'bazaar', 'bazaarwala', 'blues', '60', '9876543210', 'namkom', 'monkey'),
(4, 'mithai', 'mithaiwala', 'rap', '65', '9987654322', 'tupudana', 'gorilla'),
(5, 'mithai', 'mithaiwala', 'rap', '60', '989', 'singhmore', 'apes'),
(6, 'YG', 'Lee', 'Kmusic', '80', '9987654331', 'gangnam', 'tom'),
(8, 'LMH', 'Min', 'Ho', '70', '9987654322', 'seoul', 'leeminho'),
(9, 'kim', 'woo', 'bin', '50', '1234', 'chiang-rai', 'woobin'),
(10, 'charlie', 'chaplin', 'comedy', '55', '8876', 'london', 'charliechaplin'),
(11, 'french', 'fries', 'eatery', '40', '76543', 'cinemall', 'karachi'),
(12, 'solar', 'ujala', 'light', '50', '8877665', 'ranchi', 'peacock'),
(14, 'solar', 'ujala', 'light', '50', '8877665', 'ranchi', 'peahen'),
(15, 'lamp', 'chair', 'wood', '60', '456', 'raturoad', 'green'),
(16, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', 'polo'),
(17, 'vanilla', 'flavour', 'ice', '60', '9876', 'kantatoli', 'cream'),
(18, 'strawberry', 'berry', 'ice', '60', '776', 'samlong', 'icecream');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `partyname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `totalamount` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `partyname` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `TotalAmount` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `name`, `partyname`, `category`, `quantity`, `mobile`, `address`, `rate`, `TotalAmount`, `username`) VALUES
(4, 'rasoi', 'mazduri', 'rock', '67', '990', 'jsr', '25', '', 'giraffe'),
(5, 'safaiwala', 'mazduri', 'pop', '45', '998', 'ranchi', '30', '', 'crocodile'),
(6, 'manny', 'mannywala', 'whistle', '60', '9987654321', 'city', '32', '', 'cart'),
(7, 'park', 'yoo', 'chun', '65', '97521', 'busan', '40', '', 'parkyoochun'),
(8, 'french', 'fries', 'eatery', '40', '76543', 'cinemall', '30', '', 'karachi'),
(9, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(10, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(11, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(12, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(13, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(14, 'choco', 'chocolate', 'cadbury', '60', '5678', 'hehal', '26', '', ''),
(15, 'vanilla', 'flavour', 'ice', '60', '9876', 'kantatoli', '30', '', 'strawberry'),
(16, 'strawberry', 'berry', 'ice', '60', '776', 'samlong', '35', '2100', 'berries');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'qwerty', '12345', 'employee'),
(4, 'dinosaur', '12345', 'employee'),
(5, 'crocodile', '67899', 'employee'),
(6, 'elephant', '11223', 'employee'),
(7, 'giraffe', '22334', 'employee'),
(8, 'panther', '55667', 'employee'),
(9, 'lion', '7787', 'employee'),
(11, 'kangaroo', 'admin', 'admin'),
(23, 'min', '12345', 'employee'),
(24, 'choco', '12345', 'employee'),
(25, 'darkfantasy', '23456', 'employee'),
(26, 'pie', '34567', 'employee'),
(27, 'leejong', '56789', 'employee');
--
-- Database: `rice_mill`
--
CREATE DATABASE IF NOT EXISTS `rice_mill` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rice_mill`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `username`, `password`, `email`, `phone`, `gender`) VALUES
(1, 'Ram Krishna Keshri', 'ram', 'ram12345', 'ram@gmail.com', '4758469758', 'male'),
(2, 'Rinoy Rey', 'rinoy', 'rinoy12345', 'rinoy@gmail.com', '47525478', 'male'),
(3, 'Kunal Kapoor', 'kunal', 'kunal12345', 'kunal@gmail.com', '2145874586', 'male'),
(4, 'Manoj Kumar Keshri', 'manoj', 'manoj12345', 'manoj@gmail.com', '4578412457', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'ram', 'ram', 'insert'),
(3, 'rinoy', 'rinoy', 'check'),
(4, 'kunal', 'kunal', 'show'),
(5, 'manoj', 'manoj', 'ledger');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE IF NOT EXISTS `product_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `rice` varchar(20) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `totalrate` int(11) NOT NULL,
  `stackout` int(11) NOT NULL,
  `oil` int(11) NOT NULL,
  `waste` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `companyname`, `contact`, `address`, `rice`, `grade`, `quantity`, `rate`, `totalrate`, `stackout`, `oil`, `waste`) VALUES
(1, 'rocky rice mill pvt. ltd', '1254784596', 'joharkhore', 'Basmati', 'A', 100, 0, 0, 0, 0, 0),
(2, 'rocky rice mill pvt. ltd', '1254784596', 'joharkhore', 'Basmati', 'A', 100, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ricedetails`
--

CREATE TABLE IF NOT EXISTS `ricedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `rice` varchar(20) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ricedetails`
--

INSERT INTO `ricedetails` (`id`, `companyname`, `contact`, `address`, `rice`, `grade`, `quantity`) VALUES
(1, 'rocky rice mill pvt. ltd', '1254784596', 'joharkhore', 'Basmati', 'A', 100);

-- --------------------------------------------------------

--
-- Table structure for table `ricetotal`
--

CREATE TABLE IF NOT EXISTS `ricetotal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `rice` varchar(20) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `totalrate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ricetotal`
--

INSERT INTO `ricetotal` (`id`, `companyname`, `contact`, `address`, `rice`, `grade`, `quantity`, `rate`, `totalrate`) VALUES
(1, 'rocky rice mill pvt. ltd', '1254784596', 'joharkhore', 'Basmati', 'A', 100, 0, 0),
(2, 'rocky rice mill pvt. ltd', '1254784596', 'joharkhore', 'Basmati', 'A', 100, 0, 0);
--
-- Database: `ricemill`
--
CREATE DATABASE IF NOT EXISTS `ricemill` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ricemill`;

-- --------------------------------------------------------

--
-- Table structure for table `add_return_product`
--

CREATE TABLE IF NOT EXISTS `add_return_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `defect` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `date` date NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_return_product`
--

INSERT INTO `add_return_product` (`id`, `product_id`, `product_name`, `defect`, `quantity`, `price`, `date`, `invoice_id`) VALUES
(1, 8, 'something', '', 1, 150, '2017-07-08', 10),
(2, 9, 'product', '', 1, 450, '2017-07-08', 12);

-- --------------------------------------------------------

--
-- Table structure for table `add_vehicle`
--

CREATE TABLE IF NOT EXISTS `add_vehicle` (
  `id` int(30) NOT NULL,
  `vehicle_name` varchar(30) NOT NULL,
  `vehicle_no` varchar(20) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bk_item`
--

CREATE TABLE IF NOT EXISTS `bk_item` (
  `id` int(20) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `bk_id` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bk_item`
--

INSERT INTO `bk_item` (`id`, `item`, `quantity`, `bk_id`) VALUES
(1, 'something', 12, 1),
(2, 'product', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `advance_paid` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `company_id`, `company_name`, `date`, `payment_mode`, `advance_paid`) VALUES
(1, 1, 'Atal Prateek', '2017-07-05', ' Cheque', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `city_state` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_state`) VALUES
(1, 'Kolhapur', 'Maharashtra'),
(2, 'Port Blair', 'Andaman & Nicobar Islands'),
(3, 'Adilabad', 'Andhra Pradesh'),
(4, 'Adoni', 'Andhra Pradesh'),
(5, 'Amadalavalasa', 'Andhra Pradesh'),
(6, 'Amalapuram', 'Andhra Pradesh'),
(7, 'Anakapalle', 'Andhra Pradesh'),
(8, 'Anantapur', 'Andhra Pradesh'),
(9, 'Badepalle', 'Andhra Pradesh'),
(10, 'Banganapalle', 'Andhra Pradesh'),
(11, 'Bapatla', 'Andhra Pradesh'),
(12, 'Bellampalle', 'Andhra Pradesh'),
(13, 'Bethamcherla', 'Andhra Pradesh'),
(14, 'Bhadrachalam', 'Andhra Pradesh'),
(15, 'Bhainsa', 'Andhra Pradesh'),
(16, 'Bheemunipatnam', 'Andhra Pradesh'),
(17, 'Bhimavaram', 'Andhra Pradesh'),
(18, 'Bhongir', 'Andhra Pradesh'),
(19, 'Bobbili', 'Andhra Pradesh'),
(20, 'Bodhan', 'Andhra Pradesh'),
(21, 'Chilakaluripet', 'Andhra Pradesh'),
(22, 'Chirala', 'Andhra Pradesh'),
(23, 'Chittoor', 'Andhra Pradesh'),
(24, 'Cuddapah', 'Andhra Pradesh'),
(25, 'Devarakonda', 'Andhra Pradesh'),
(26, 'Dharmavaram', 'Andhra Pradesh'),
(27, 'Eluru', 'Andhra Pradesh'),
(28, 'Farooqnagar', 'Andhra Pradesh'),
(29, 'Gadwal', 'Andhra Pradesh'),
(30, 'Gooty', 'Andhra Pradesh'),
(31, 'Gudivada', 'Andhra Pradesh'),
(32, 'Gudur', 'Andhra Pradesh'),
(33, 'Guntakal', 'Andhra Pradesh'),
(34, 'Guntur', 'Andhra Pradesh'),
(35, 'Hanuman Junction', 'Andhra Pradesh'),
(36, 'Hindupur', 'Andhra Pradesh'),
(37, 'Hyderabad', 'Andhra Pradesh'),
(38, 'Ichchapuram', 'Andhra Pradesh'),
(39, 'Jaggaiahpet', 'Andhra Pradesh'),
(40, 'Jagtial', 'Andhra Pradesh'),
(41, 'Jammalamadugu', 'Andhra Pradesh'),
(42, 'Jangaon', 'Andhra Pradesh'),
(43, 'Kadapa', 'Andhra Pradesh'),
(44, 'Kadiri', 'Andhra Pradesh'),
(45, 'Kagaznagar', 'Andhra Pradesh'),
(46, 'Kakinada', 'Andhra Pradesh'),
(47, 'Kalyandurg', 'Andhra Pradesh'),
(48, 'Kamareddy', 'Andhra Pradesh'),
(49, 'Kandukur', 'Andhra Pradesh'),
(50, 'Karimnagar', 'Andhra Pradesh'),
(51, 'Kavali', 'Andhra Pradesh'),
(52, 'Khammam', 'Andhra Pradesh'),
(53, 'Koratla', 'Andhra Pradesh'),
(54, 'Kothagudem', 'Andhra Pradesh'),
(55, 'Kothapeta', 'Andhra Pradesh'),
(56, 'Kovvur', 'Andhra Pradesh'),
(57, 'Kurnool', 'Andhra Pradesh'),
(58, 'Kyathampalle', 'Andhra Pradesh'),
(59, 'Macherla', 'Andhra Pradesh'),
(60, 'Machilipatnam', 'Andhra Pradesh'),
(61, 'Madanapalle', 'Andhra Pradesh'),
(62, 'Mahbubnagar', 'Andhra Pradesh'),
(63, 'Mancherial', 'Andhra Pradesh'),
(64, 'Mandamarri', 'Andhra Pradesh'),
(65, 'Mandapeta', 'Andhra Pradesh'),
(66, 'Manuguru', 'Andhra Pradesh'),
(67, 'Markapur', 'Andhra Pradesh'),
(68, 'Medak', 'Andhra Pradesh'),
(69, 'Miryalaguda', 'Andhra Pradesh'),
(70, 'Mogalthur', 'Andhra Pradesh'),
(71, 'Nagari', 'Andhra Pradesh'),
(72, 'Nagarkurnool', 'Andhra Pradesh'),
(73, 'Nandyal', 'Andhra Pradesh'),
(74, 'Narasapur', 'Andhra Pradesh'),
(75, 'Narasaraopet', 'Andhra Pradesh'),
(76, 'Narayanpet', 'Andhra Pradesh'),
(77, 'Narsipatnam', 'Andhra Pradesh'),
(78, 'Nellore', 'Andhra Pradesh'),
(79, 'Nidadavole', 'Andhra Pradesh'),
(80, 'Nirmal', 'Andhra Pradesh'),
(81, 'Nizamabad', 'Andhra Pradesh'),
(82, 'Nuzvid', 'Andhra Pradesh'),
(83, 'Ongole', 'Andhra Pradesh'),
(84, 'Palacole', 'Andhra Pradesh'),
(85, 'Palasa Kasibugga', 'Andhra Pradesh'),
(86, 'Palwancha', 'Andhra Pradesh'),
(87, 'Parvathipuram', 'Andhra Pradesh'),
(88, 'Pedana', 'Andhra Pradesh'),
(89, 'Peddapuram', 'Andhra Pradesh'),
(90, 'Pithapuram', 'Andhra Pradesh'),
(91, 'Pondur', 'Andhra pradesh'),
(92, 'Ponnur', 'Andhra Pradesh'),
(93, 'Proddatur', 'Andhra Pradesh'),
(94, 'Punganur', 'Andhra Pradesh'),
(95, 'Puttur', 'Andhra Pradesh'),
(96, 'Rajahmundry', 'Andhra Pradesh'),
(97, 'Rajam', 'Andhra Pradesh'),
(98, 'Ramachandrapuram', 'Andhra Pradesh'),
(99, 'Ramagundam', 'Andhra Pradesh'),
(100, 'Rayachoti', 'Andhra Pradesh'),
(101, 'Rayadurg', 'Andhra Pradesh'),
(102, 'Renigunta', 'Andhra Pradesh'),
(103, 'Repalle', 'Andhra Pradesh'),
(104, 'Sadasivpet', 'Andhra Pradesh'),
(105, 'Salur', 'Andhra Pradesh'),
(106, 'Samalkot', 'Andhra Pradesh'),
(107, 'Sangareddy', 'Andhra Pradesh'),
(108, 'Sattenapalle', 'Andhra Pradesh'),
(109, 'Siddipet', 'Andhra Pradesh'),
(110, 'Singapur', 'Andhra Pradesh'),
(111, 'Sircilla', 'Andhra Pradesh'),
(112, 'Srikakulam', 'Andhra Pradesh'),
(113, 'Srikalahasti', 'Andhra Pradesh'),
(115, 'Suryapet', 'Andhra Pradesh'),
(116, 'Tadepalligudem', 'Andhra Pradesh'),
(117, 'Tadpatri', 'Andhra Pradesh'),
(118, 'Tandur', 'Andhra Pradesh'),
(119, 'Tanuku', 'Andhra Pradesh'),
(120, 'Tenali', 'Andhra Pradesh'),
(121, 'Tirupati', 'Andhra Pradesh'),
(122, 'Tuni', 'Andhra Pradesh'),
(123, 'Uravakonda', 'Andhra Pradesh'),
(124, 'Venkatagiri', 'Andhra Pradesh'),
(125, 'Vicarabad', 'Andhra Pradesh'),
(126, 'Vijayawada', 'Andhra Pradesh'),
(127, 'Vinukonda', 'Andhra Pradesh'),
(128, 'Visakhapatnam', 'Andhra Pradesh'),
(129, 'Vizianagaram', 'Andhra Pradesh'),
(130, 'Wanaparthy', 'Andhra Pradesh'),
(131, 'Warangal', 'Andhra Pradesh'),
(132, 'Yellandu', 'Andhra Pradesh'),
(133, 'Yemmiganur', 'Andhra Pradesh'),
(134, 'Yerraguntla', 'Andhra Pradesh'),
(135, 'Zahirabad', 'Andhra Pradesh'),
(136, 'Rajampet', 'Andhra Pradesh'),
(137, 'Along', 'Arunachal Pradesh'),
(138, 'Bomdila', 'Arunachal Pradesh'),
(139, 'Itanagar', 'Arunachal Pradesh'),
(140, 'Naharlagun', 'Arunachal Pradesh'),
(141, 'Pasighat', 'Arunachal Pradesh'),
(142, 'Abhayapuri', 'Assam'),
(143, 'Amguri', 'Assam'),
(144, 'Anandnagaar', 'Assam'),
(145, 'Barpeta', 'Assam'),
(146, 'Barpeta Road', 'Assam'),
(147, 'Bilasipara', 'Assam'),
(148, 'Bongaigaon', 'Assam'),
(149, 'Dhekiajuli', 'Assam'),
(150, 'Dhubri', 'Assam'),
(151, 'Dibrugarh', 'Assam'),
(152, 'Digboi', 'Assam'),
(153, 'Diphu', 'Assam'),
(154, 'Dispur', 'Assam'),
(156, 'Gauripur', 'Assam'),
(157, 'Goalpara', 'Assam'),
(158, 'Golaghat', 'Assam'),
(159, 'Guwahati', 'Assam'),
(160, 'Haflong', 'Assam'),
(161, 'Hailakandi', 'Assam'),
(162, 'Hojai', 'Assam'),
(163, 'Jorhat', 'Assam'),
(164, 'Karimganj', 'Assam'),
(165, 'Kokrajhar', 'Assam'),
(166, 'Lanka', 'Assam'),
(167, 'Lumding', 'Assam'),
(168, 'Mangaldoi', 'Assam'),
(169, 'Mankachar', 'Assam'),
(170, 'Margherita', 'Assam'),
(171, 'Mariani', 'Assam'),
(172, 'Marigaon', 'Assam'),
(173, 'Nagaon', 'Assam'),
(174, 'Nalbari', 'Assam'),
(175, 'North Lakhimpur', 'Assam'),
(176, 'Rangia', 'Assam'),
(177, 'Sibsagar', 'Assam'),
(178, 'Silapathar', 'Assam'),
(179, 'Silchar', 'Assam'),
(180, 'Tezpur', 'Assam'),
(181, 'Tinsukia', 'Assam'),
(182, 'Amarpur', 'Bihar'),
(183, 'Araria', 'Bihar'),
(184, 'Areraj', 'Bihar'),
(185, 'Arrah', 'Bihar'),
(186, 'Asarganj', 'Bihar'),
(187, 'Aurangabad', 'Bihar'),
(188, 'Bagaha', 'Bihar'),
(189, 'Bahadurganj', 'Bihar'),
(190, 'Bairgania', 'Bihar'),
(191, 'Bakhtiarpur', 'Bihar'),
(192, 'Banka', 'Bihar'),
(193, 'Banmankhi Bazar', 'Bihar'),
(194, 'Barahiya', 'Bihar'),
(195, 'Barauli', 'Bihar'),
(196, 'Barbigha', 'Bihar'),
(197, 'Barh', 'Bihar'),
(198, 'Begusarai', 'Bihar'),
(199, 'Behea', 'Bihar'),
(200, 'Bettiah', 'Bihar'),
(201, 'Bhabua', 'Bihar'),
(202, 'Bhagalpur', 'Bihar'),
(203, 'Bihar Sharif', 'Bihar'),
(204, 'Bikramganj', 'Bihar'),
(205, 'Bodh Gaya', 'Bihar'),
(206, 'Buxar', 'Bihar'),
(207, 'Chandan Bara', 'Bihar'),
(208, 'Chanpatia', 'Bihar'),
(209, 'Chhapra', 'Bihar'),
(210, 'Colgong', 'Bihar'),
(211, 'Dalsinghsarai', 'Bihar'),
(212, 'Darbhanga', 'Bihar'),
(213, 'Daudnagar', 'Bihar'),
(214, 'Dehri-on-Sone', 'Bihar'),
(215, 'Dhaka', 'Bihar'),
(216, 'Dighwara', 'Bihar'),
(217, 'Dumraon', 'Bihar'),
(218, 'Fatwah', 'Bihar'),
(219, 'Forbesganj', 'Bihar'),
(220, 'Gaya', 'Bihar'),
(221, 'Gogri Jamalpur', 'Bihar'),
(222, 'Gopalganj', 'Bihar'),
(223, 'Hajipur', 'Bihar'),
(224, 'Hilsa', 'Bihar'),
(225, 'Hisua', 'Bihar'),
(226, 'Islampur', 'Bihar'),
(227, 'Jagdispur', 'Bihar'),
(228, 'Jamalpur', 'Bihar'),
(229, 'Jamui', 'Bihar'),
(230, 'Jehanabad', 'Bihar'),
(231, 'Jhajha', 'Bihar'),
(232, 'Jhanjharpur', 'Bihar'),
(233, 'Jogabani', 'Bihar'),
(234, 'Kanti', 'Bihar'),
(235, 'Katihar', 'Bihar'),
(236, 'Khagaria', 'Bihar'),
(237, 'Kharagpur', 'Bihar'),
(238, 'Kishanganj', 'Bihar'),
(239, 'Lakhisarai', 'Bihar'),
(240, 'Lalganj', 'Bihar'),
(241, 'Madhepura', 'Bihar'),
(242, 'Madhubani', 'Bihar'),
(243, 'Maharajganj', 'Bihar'),
(244, 'Mahnar Bazar', 'Bihar'),
(245, 'Makhdumpur', 'Bihar'),
(246, 'Maner', 'Bihar'),
(247, 'Manihari', 'Bihar'),
(248, 'Marhaura', 'Bihar'),
(249, 'Masaurhi', 'Bihar'),
(250, 'Mirganj', 'Bihar'),
(251, 'Mokameh', 'Bihar'),
(252, 'Motihari', 'Bihar'),
(253, 'Motipur', 'Bihar'),
(254, 'Munger', 'Bihar'),
(255, 'Murliganj', 'Bihar'),
(256, 'Muzaffarpur', 'Bihar'),
(257, 'Narkatiaganj', 'Bihar'),
(258, 'Naugachhia', 'Bihar'),
(259, 'Nawada', 'Bihar'),
(260, 'Nokha', 'Bihar'),
(261, 'Patna', 'Bihar'),
(262, 'Piro', 'Bihar'),
(263, 'Purnia', 'Bihar'),
(264, 'Rafiganj', 'Bihar'),
(265, 'Rajgir', 'Bihar'),
(266, 'Ramnagar', 'Bihar'),
(267, 'Raxaul Bazar', 'Bihar'),
(268, 'Revelganj', 'Bihar'),
(269, 'Rosera', 'Bihar'),
(270, 'Saharsa', 'Bihar'),
(271, 'Samastipur', 'Bihar'),
(272, 'Sasaram', 'Bihar'),
(273, 'Sheikhpura', 'Bihar'),
(274, 'Sheohar', 'Bihar'),
(275, 'Sherghati', 'Bihar'),
(276, 'Silao', 'Bihar'),
(277, 'Sitamarhi', 'Bihar'),
(278, 'Siwan', 'Bihar'),
(279, 'Sonepur', 'Bihar'),
(280, 'Sugauli', 'Bihar'),
(281, 'Sultanganj', 'Bihar'),
(282, 'Supaul', 'Bihar'),
(283, 'Warisaliganj', 'Bihar'),
(284, 'Ahiwara', 'Chhattisgarh'),
(285, 'Akaltara', 'Chhattisgarh'),
(286, 'Ambagarh Chowki', 'Chhattisgarh'),
(287, 'Ambikapur', 'Chhattisgarh'),
(288, 'Arang', 'Chhattisgarh'),
(289, 'Bade Bacheli', 'Chhattisgarh'),
(290, 'Balod', 'Chhattisgarh'),
(291, 'Baloda Bazar', 'Chhattisgarh'),
(292, 'Bemetra', 'Chhattisgarh'),
(293, 'Bhatapara', 'Chhattisgarh'),
(294, 'Bilaspur', 'Chhattisgarh'),
(295, 'Birgaon', 'Chhattisgarh'),
(296, 'Champa', 'Chhattisgarh'),
(297, 'Chirmiri', 'Chhattisgarh'),
(298, 'Dalli-Rajhara', 'Chhattisgarh'),
(299, 'Dhamtari', 'Chhattisgarh'),
(300, 'Dipka', 'Chhattisgarh'),
(301, 'Dongargarh', 'Chhattisgarh'),
(302, 'Durg-Bhilai Nagar', 'Chhattisgarh'),
(303, 'Gobranawapara', 'Chhattisgarh'),
(304, 'Jagdalpur', 'Chhattisgarh'),
(305, 'Janjgir', 'Chhattisgarh'),
(306, 'Jashpurnagar', 'Chhattisgarh'),
(307, 'Kanker', 'Chhattisgarh'),
(308, 'Kawardha', 'Chhattisgarh'),
(309, 'Kondagaon', 'Chhattisgarh'),
(310, 'Korba', 'Chhattisgarh'),
(311, 'Mahasamund', 'Chhattisgarh'),
(312, 'Mahendragarh', 'Chhattisgarh'),
(313, 'Mungeli', 'Chhattisgarh'),
(314, 'Naila Janjgir', 'Chhattisgarh'),
(315, 'Raigarh', 'Chhattisgarh'),
(316, 'Raipur', 'Chhattisgarh'),
(317, 'Rajnandgaon', 'Chhattisgarh'),
(318, 'Sakti', 'Chhattisgarh'),
(319, 'Tilda Newra', 'Chhattisgarh'),
(320, 'Amli', 'Dadra & Nagar Haveli'),
(321, 'Silvassa', 'Dadra & Nagar Haveli'),
(322, 'Daman and Diu', 'Daman & Diu'),
(323, 'Daman and Diu', 'Daman & Diu'),
(324, 'Asola', 'Delhi'),
(325, 'Delhi', 'Delhi'),
(326, 'Aldona', 'Goa'),
(327, 'Curchorem Cacora', 'Goa'),
(328, 'Madgaon', 'Goa'),
(329, 'Mapusa', 'Goa'),
(330, 'Margao', 'Goa'),
(331, 'Marmagao', 'Goa'),
(332, 'Panaji', 'Goa'),
(333, 'Ahmedabad', 'Gujarat'),
(334, 'Amreli', 'Gujarat'),
(335, 'Anand', 'Gujarat'),
(336, 'Ankleshwar', 'Gujarat'),
(337, 'Bharuch', 'Gujarat'),
(338, 'Bhavnagar', 'Gujarat'),
(339, 'Bhuj', 'Gujarat'),
(340, 'Cambay', 'Gujarat'),
(341, 'Dahod', 'Gujarat'),
(342, 'Deesa', 'Gujarat'),
(343, 'Dharampur', ' India'),
(344, 'Dholka', 'Gujarat'),
(345, 'Gandhinagar', 'Gujarat'),
(346, 'Godhra', 'Gujarat'),
(347, 'Himatnagar', 'Gujarat'),
(348, 'Idar', 'Gujarat'),
(349, 'Jamnagar', 'Gujarat'),
(350, 'Junagadh', 'Gujarat'),
(351, 'Kadi', 'Gujarat'),
(352, 'Kalavad', 'Gujarat'),
(353, 'Kalol', 'Gujarat'),
(354, 'Kapadvanj', 'Gujarat'),
(355, 'Karjan', 'Gujarat'),
(356, 'Keshod', 'Gujarat'),
(357, 'Khambhalia', 'Gujarat'),
(358, 'Khambhat', 'Gujarat'),
(359, 'Kheda', 'Gujarat'),
(360, 'Khedbrahma', 'Gujarat'),
(361, 'Kheralu', 'Gujarat'),
(362, 'Kodinar', 'Gujarat'),
(363, 'Lathi', 'Gujarat'),
(364, 'Limbdi', 'Gujarat'),
(365, 'Lunawada', 'Gujarat'),
(366, 'Mahesana', 'Gujarat'),
(367, 'Mahuva', 'Gujarat'),
(368, 'Manavadar', 'Gujarat'),
(369, 'Mandvi', 'Gujarat'),
(370, 'Mangrol', 'Gujarat'),
(371, 'Mansa', 'Gujarat'),
(372, 'Mehmedabad', 'Gujarat'),
(373, 'Modasa', 'Gujarat'),
(374, 'Morvi', 'Gujarat'),
(375, 'Nadiad', 'Gujarat'),
(376, 'Navsari', 'Gujarat'),
(377, 'Padra', 'Gujarat'),
(378, 'Palanpur', 'Gujarat'),
(379, 'Palitana', 'Gujarat'),
(380, 'Pardi', 'Gujarat'),
(381, 'Patan', 'Gujarat'),
(382, 'Petlad', 'Gujarat'),
(383, 'Porbandar', 'Gujarat'),
(384, 'Radhanpur', 'Gujarat'),
(385, 'Rajkot', 'Gujarat'),
(386, 'Rajpipla', 'Gujarat'),
(387, 'Rajula', 'Gujarat'),
(388, 'Ranavav', 'Gujarat'),
(389, 'Rapar', 'Gujarat'),
(390, 'Salaya', 'Gujarat'),
(391, 'Sanand', 'Gujarat'),
(392, 'Savarkundla', 'Gujarat'),
(393, 'Sidhpur', 'Gujarat'),
(394, 'Sihor', 'Gujarat'),
(395, 'Songadh', 'Gujarat'),
(396, 'Surat', 'Gujarat'),
(397, 'Talaja', 'Gujarat'),
(398, 'Thangadh', 'Gujarat'),
(399, 'Tharad', 'Gujarat'),
(400, 'Umbergaon', 'Gujarat'),
(401, 'Umreth', 'Gujarat'),
(402, 'Una', 'Gujarat'),
(403, 'Unjha', 'Gujarat'),
(404, 'Upleta', 'Gujarat'),
(405, 'Vadnagar', 'Gujarat'),
(406, 'Vadodara', 'Gujarat'),
(407, 'Valsad', 'Gujarat'),
(408, 'Vapi', 'Gujarat'),
(409, 'Vapi', 'Gujarat'),
(410, 'Veraval', 'Gujarat'),
(411, 'Vijapur', 'Gujarat'),
(412, 'Viramgam', 'Gujarat'),
(413, 'Visnagar', 'Gujarat'),
(414, 'Vyara', 'Gujarat'),
(415, 'Wadhwan', 'Gujarat'),
(416, 'Wankaner', 'Gujarat'),
(417, 'Adalaj', 'Gujrat'),
(418, 'Adityana', 'Gujrat'),
(419, 'Alang', 'Gujrat'),
(420, 'Ambaji', 'Gujrat'),
(421, 'Ambaliyasan', 'Gujrat'),
(422, 'Andada', 'Gujrat'),
(423, 'Anjar', 'Gujrat'),
(424, 'Anklav', 'Gujrat'),
(425, 'Antaliya', 'Gujrat'),
(426, 'Arambhada', 'Gujrat'),
(427, 'Atul', 'Gujrat'),
(429, 'Ambala', 'Haryana'),
(430, 'Ambala', 'Haryana'),
(431, 'Asankhurd', 'Haryana'),
(432, 'Assandh', 'Haryana'),
(433, 'Ateli', 'Haryana'),
(434, 'Babiyal', 'Haryana'),
(435, 'Bahadurgarh', 'Haryana'),
(436, 'Barwala', 'Haryana'),
(437, 'Bhiwani', 'Haryana'),
(438, 'Charkhi Dadri', 'Haryana'),
(439, 'Cheeka', 'Haryana'),
(440, 'Ellenabad 2', 'Haryana'),
(441, 'Faridabad', 'Haryana'),
(442, 'Fatehabad', 'Haryana'),
(443, 'Ganaur', 'Haryana'),
(444, 'Gharaunda', 'Haryana'),
(445, 'Gohana', 'Haryana'),
(446, 'Gurgaon', 'Haryana'),
(447, 'Haibat(Yamuna Nagar)', 'Haryana'),
(448, 'Hansi', 'Haryana'),
(449, 'Hisar', 'Haryana'),
(450, 'Hodal', 'Haryana'),
(451, 'Jhajjar', 'Haryana'),
(452, 'Jind', 'Haryana'),
(453, 'Kaithal', 'Haryana'),
(454, 'Kalan Wali', 'Haryana'),
(455, 'Kalka', 'Haryana'),
(456, 'Karnal', 'Haryana'),
(457, 'Ladwa', 'Haryana'),
(458, 'Mahendragarh', 'Haryana'),
(459, 'Mandi Dabwali', 'Haryana'),
(460, 'Narnaul', 'Haryana'),
(461, 'Narwana', 'Haryana'),
(462, 'Palwal', 'Haryana'),
(463, 'Panchkula', 'Haryana'),
(464, 'Panipat', 'Haryana'),
(465, 'Pehowa', 'Haryana'),
(466, 'Pinjore', 'Haryana'),
(467, 'Rania', 'Haryana'),
(468, 'Ratia', 'Haryana'),
(469, 'Rewari', 'Haryana'),
(470, 'Rohtak', 'Haryana'),
(471, 'Safidon', 'Haryana'),
(472, 'Samalkha', 'Haryana'),
(473, 'Shahbad', 'Haryana'),
(474, 'Sirsa', 'Haryana'),
(475, 'Sohna', 'Haryana'),
(476, 'Sonipat', 'Haryana'),
(477, 'Taraori', 'Haryana'),
(478, 'Thanesar', 'Haryana'),
(479, 'Tohana', 'Haryana'),
(480, 'Yamunanagar', 'Haryana'),
(481, 'Arki', 'Himachal Pradesh'),
(482, 'Baddi', 'Himachal Pradesh'),
(483, 'Bilaspur', 'Himachal Pradesh'),
(484, 'Chamba', 'Himachal Pradesh'),
(485, 'Dalhousie', 'Himachal Pradesh'),
(486, 'Dharamsala', 'Himachal Pradesh'),
(487, 'Hamirpur', 'Himachal Pradesh'),
(488, 'Mandi', 'Himachal Pradesh'),
(489, 'Nahan', 'Himachal Pradesh'),
(490, 'Shimla', 'Himachal Pradesh'),
(491, 'Solan', 'Himachal Pradesh'),
(492, 'Sundarnagar', 'Himachal Pradesh'),
(493, 'Jammu', 'Jammu & Kashmir'),
(494, 'Achabbal', 'Jammu & Kashmir'),
(495, 'Akhnoor', 'Jammu & Kashmir'),
(496, 'Anantnag', 'Jammu & Kashmir'),
(497, 'Arnia', 'Jammu & Kashmir'),
(498, 'Awantipora', 'Jammu & Kashmir'),
(499, 'Bandipore', 'Jammu & Kashmir'),
(500, 'Baramula', 'Jammu & Kashmir'),
(501, 'Kathua', 'Jammu & Kashmir'),
(502, 'Leh', 'Jammu & Kashmir'),
(503, 'Punch', 'Jammu & Kashmir'),
(504, 'Rajauri', 'Jammu & Kashmir'),
(505, 'Sopore', 'Jammu & Kashmir'),
(506, 'Srinagar', 'Jammu & Kashmir'),
(507, 'Udhampur', 'Jammu & Kashmir'),
(508, 'Amlabad', 'Jharkhand'),
(509, 'Ara', 'Jharkhand'),
(510, 'Barughutu', 'Jharkhand'),
(511, 'Bokaro Steel City', 'Jharkhand'),
(512, 'Chaibasa', 'Jharkhand'),
(513, 'Chakradharpur', 'Jharkhand'),
(514, 'Chandrapura', 'Jharkhand'),
(515, 'Chatra', 'Jharkhand'),
(516, 'Chirkunda', 'Jharkhand'),
(517, 'Churi', 'Jharkhand'),
(518, 'Daltonganj', 'Jharkhand'),
(519, 'Deoghar', 'Jharkhand'),
(520, 'Dhanbad', 'Jharkhand'),
(521, 'Dumka', 'Jharkhand'),
(522, 'Garhwa', 'Jharkhand'),
(523, 'Ghatshila', 'Jharkhand'),
(524, 'Giridih', 'Jharkhand'),
(525, 'Godda', 'Jharkhand'),
(526, 'Gomoh', 'Jharkhand'),
(527, 'Gumia', 'Jharkhand'),
(528, 'Gumla', 'Jharkhand'),
(529, 'Hazaribag', 'Jharkhand'),
(530, 'Hussainabad', 'Jharkhand'),
(531, 'Jamshedpur', 'Jharkhand'),
(532, 'Jamtara', 'Jharkhand'),
(533, 'Jhumri Tilaiya', 'Jharkhand'),
(534, 'Khunti', 'Jharkhand'),
(535, 'Lohardaga', 'Jharkhand'),
(536, 'Madhupur', 'Jharkhand'),
(537, 'Mihijam', 'Jharkhand'),
(538, 'Musabani', 'Jharkhand'),
(539, 'Pakaur', 'Jharkhand'),
(540, 'Patratu', 'Jharkhand'),
(541, 'Phusro', 'Jharkhand'),
(542, 'Ramngarh', 'Jharkhand'),
(543, 'Ranchi', 'Jharkhand'),
(544, 'Sahibganj', 'Jharkhand'),
(545, 'Saunda', 'Jharkhand'),
(546, 'Simdega', 'Jharkhand'),
(547, 'Tenu Dam-cum- Kathhara', 'Jharkhand'),
(548, 'Arasikere', 'Karnataka'),
(549, 'Bangalore', 'Karnataka'),
(550, 'Belgaum', 'Karnataka'),
(551, 'Bellary', 'Karnataka'),
(552, 'Chamrajnagar', 'Karnataka'),
(553, 'Chikkaballapur', 'Karnataka'),
(554, 'Chintamani', 'Karnataka'),
(555, 'Chitradurga', 'Karnataka'),
(556, 'Gulbarga', 'Karnataka'),
(557, 'Gundlupet', 'Karnataka'),
(558, 'Hassan', 'Karnataka'),
(559, 'Hospet', 'Karnataka'),
(560, 'Hubli', 'Karnataka'),
(561, 'Karkala', 'Karnataka'),
(562, 'Karwar', 'Karnataka'),
(563, 'Kolar', 'Karnataka'),
(564, 'Kota', 'Karnataka'),
(565, 'Lakshmeshwar', 'Karnataka'),
(566, 'Lingsugur', 'Karnataka'),
(567, 'Maddur', 'Karnataka'),
(568, 'Madhugiri', 'Karnataka'),
(569, 'Madikeri', 'Karnataka'),
(570, 'Magadi', 'Karnataka'),
(571, 'Mahalingpur', 'Karnataka'),
(572, 'Malavalli', 'Karnataka'),
(573, 'Malur', 'Karnataka'),
(574, 'Mandya', 'Karnataka'),
(575, 'Mangalore', 'Karnataka'),
(576, 'Manvi', 'Karnataka'),
(577, 'Mudalgi', 'Karnataka'),
(578, 'Mudbidri', 'Karnataka'),
(579, 'Muddebihal', 'Karnataka'),
(580, 'Mudhol', 'Karnataka'),
(581, 'Mulbagal', 'Karnataka'),
(582, 'Mundargi', 'Karnataka'),
(583, 'Mysore', 'Karnataka'),
(584, 'Nanjangud', 'Karnataka'),
(585, 'Pavagada', 'Karnataka'),
(586, 'Puttur', 'Karnataka'),
(587, 'Rabkavi Banhatti', 'Karnataka'),
(588, 'Raichur', 'Karnataka'),
(589, 'Ramanagaram', 'Karnataka'),
(590, 'Ramdurg', 'Karnataka'),
(591, 'Ranibennur', 'Karnataka'),
(592, 'Robertson Pet', 'Karnataka'),
(593, 'Ron', 'Karnataka'),
(594, 'Sadalgi', 'Karnataka'),
(595, 'Sagar', 'Karnataka'),
(596, 'Sakleshpur', 'Karnataka'),
(597, 'Sandur', 'Karnataka'),
(598, 'Sankeshwar', 'Karnataka'),
(599, 'Saundatti-Yellamma', 'Karnataka'),
(600, 'Savanur', 'Karnataka'),
(601, 'Sedam', 'Karnataka'),
(602, 'Shahabad', 'Karnataka'),
(603, 'Shahpur', 'Karnataka'),
(604, 'Shiggaon', 'Karnataka'),
(605, 'Shikapur', 'Karnataka'),
(606, 'Shimoga', 'Karnataka'),
(607, 'Shorapur', 'Karnataka'),
(608, 'Shrirangapattana', 'Karnataka'),
(609, 'Sidlaghatta', 'Karnataka'),
(610, 'Sindgi', 'Karnataka'),
(611, 'Sindhnur', 'Karnataka'),
(612, 'Sira', 'Karnataka'),
(613, 'Sirsi', 'Karnataka'),
(614, 'Siruguppa', 'Karnataka'),
(615, 'Srinivaspur', 'Karnataka'),
(616, 'Talikota', 'Karnataka'),
(617, 'Tarikere', 'Karnataka'),
(618, 'Tekkalakota', 'Karnataka'),
(619, 'Terdal', 'Karnataka'),
(620, 'Tiptur', 'Karnataka'),
(621, 'Tumkur', 'Karnataka'),
(622, 'Udupi', 'Karnataka'),
(623, 'Vijayapura', 'Karnataka'),
(624, 'Wadi', 'Karnataka'),
(625, 'Yadgir', 'Karnataka'),
(626, 'Adoor', 'Kerala'),
(627, 'Akathiyoor', 'Kerala'),
(628, 'Alappuzha', 'Kerala'),
(629, 'Ancharakandy', 'Kerala'),
(630, 'Aroor', 'Kerala'),
(631, 'Ashtamichira', 'Kerala'),
(632, 'Attingal', 'Kerala'),
(633, 'Avinissery', 'Kerala'),
(634, 'Chalakudy', 'Kerala'),
(635, 'Changanassery', 'Kerala'),
(636, 'Chendamangalam', 'Kerala'),
(637, 'Chengannur', 'Kerala'),
(638, 'Cherthala', 'Kerala'),
(639, 'Cheruthazham', 'Kerala'),
(640, 'Chittur-Thathamangalam', 'Kerala'),
(641, 'Chockli', 'Kerala'),
(642, 'Erattupetta', 'Kerala'),
(643, 'Guruvayoor', 'Kerala'),
(644, 'Irinjalakuda', 'Kerala'),
(645, 'Kadirur', 'Kerala'),
(646, 'Kalliasseri', 'Kerala'),
(647, 'Kalpetta', 'Kerala'),
(648, 'Kanhangad', 'Kerala'),
(649, 'Kanjikkuzhi', 'Kerala'),
(650, 'Kannur', 'Kerala'),
(651, 'Kasaragod', 'Kerala'),
(652, 'Kayamkulam', 'Kerala'),
(653, 'Kochi', 'Kerala'),
(654, 'Kodungallur', 'Kerala'),
(655, 'Kollam', 'Kerala'),
(656, 'Koothuparamba', 'Kerala'),
(657, 'Kothamangalam', 'Kerala'),
(658, 'Kottayam', 'Kerala'),
(659, 'Kozhikode', 'Kerala'),
(660, 'Kunnamkulam', 'Kerala'),
(661, 'Malappuram', 'Kerala'),
(662, 'Mattannur', 'Kerala'),
(663, 'Mavelikkara', 'Kerala'),
(664, 'Mavoor', 'Kerala'),
(665, 'Muvattupuzha', 'Kerala'),
(666, 'Nedumangad', 'Kerala'),
(667, 'Neyyattinkara', 'Kerala'),
(668, 'Ottappalam', 'Kerala'),
(669, 'Palai', 'Kerala'),
(670, 'Palakkad', 'Kerala'),
(671, 'Panniyannur', 'Kerala'),
(672, 'Pappinisseri', 'Kerala'),
(673, 'Paravoor', 'Kerala'),
(674, 'Pathanamthitta', 'Kerala'),
(675, 'Payyannur', 'Kerala'),
(676, 'Peringathur', 'Kerala'),
(677, 'Perinthalmanna', 'Kerala'),
(678, 'Perumbavoor', 'Kerala'),
(679, 'Ponnani', 'Kerala'),
(680, 'Punalur', 'Kerala'),
(681, 'Quilandy', 'Kerala'),
(682, 'Shoranur', 'Kerala'),
(683, 'Taliparamba', 'Kerala'),
(684, 'Thiruvalla', 'Kerala'),
(685, 'Thiruvananthapuram', 'Kerala'),
(686, 'Thodupuzha', 'Kerala'),
(687, 'Thrissur', 'Kerala'),
(688, 'Tirur', 'Kerala'),
(689, 'Vadakara', 'Kerala'),
(690, 'Vaikom', 'Kerala'),
(691, 'Varkala', 'Kerala'),
(692, 'Kavaratti', 'Lakshadweep'),
(693, 'Ashok Nagar', 'Madhya Pradesh'),
(694, 'Balaghat', 'Madhya Pradesh'),
(695, 'Betul', 'Madhya Pradesh'),
(696, 'Bhopal', 'Madhya Pradesh'),
(697, 'Burhanpur', 'Madhya Pradesh'),
(698, 'Chhatarpur', 'Madhya Pradesh'),
(699, 'Dabra', 'Madhya Pradesh'),
(700, 'Datia', 'Madhya Pradesh'),
(701, 'Dewas', 'Madhya Pradesh'),
(702, 'Dhar', 'Madhya Pradesh'),
(703, 'Fatehabad', 'Madhya Pradesh'),
(704, 'Gwalior', 'Madhya Pradesh'),
(705, 'Indore', 'Madhya Pradesh'),
(706, 'Itarsi', 'Madhya Pradesh'),
(707, 'Jabalpur', 'Madhya Pradesh'),
(708, 'Katni', 'Madhya Pradesh'),
(709, 'Kotma', 'Madhya Pradesh'),
(710, 'Lahar', 'Madhya Pradesh'),
(711, 'Lundi', 'Madhya Pradesh'),
(712, 'Maharajpur', 'Madhya Pradesh'),
(713, 'Mahidpur', 'Madhya Pradesh'),
(714, 'Maihar', 'Madhya Pradesh'),
(715, 'Malajkhand', 'Madhya Pradesh'),
(716, 'Manasa', 'Madhya Pradesh'),
(717, 'Manawar', 'Madhya Pradesh'),
(718, 'Mandideep', 'Madhya Pradesh'),
(719, 'Mandla', 'Madhya Pradesh'),
(720, 'Mandsaur', 'Madhya Pradesh'),
(721, 'Mauganj', 'Madhya Pradesh'),
(722, 'Mhow Cantonment', 'Madhya Pradesh'),
(723, 'Mhowgaon', 'Madhya Pradesh'),
(724, 'Morena', 'Madhya Pradesh'),
(725, 'Multai', 'Madhya Pradesh'),
(726, 'Murwara', 'Madhya Pradesh'),
(727, 'Nagda', 'Madhya Pradesh'),
(728, 'Nainpur', 'Madhya Pradesh'),
(729, 'Narsinghgarh', 'Madhya Pradesh'),
(730, 'Narsinghgarh', 'Madhya Pradesh'),
(731, 'Neemuch', 'Madhya Pradesh'),
(732, 'Nepanagar', 'Madhya Pradesh'),
(733, 'Niwari', 'Madhya Pradesh'),
(734, 'Nowgong', 'Madhya Pradesh'),
(735, 'Nowrozabad', 'Madhya Pradesh'),
(736, 'Pachore', 'Madhya Pradesh'),
(737, 'Pali', 'Madhya Pradesh'),
(738, 'Panagar', 'Madhya Pradesh'),
(739, 'Pandhurna', 'Madhya Pradesh'),
(740, 'Panna', 'Madhya Pradesh'),
(741, 'Pasan', 'Madhya Pradesh'),
(742, 'Pipariya', 'Madhya Pradesh'),
(743, 'Pithampur', 'Madhya Pradesh'),
(744, 'Porsa', 'Madhya Pradesh'),
(745, 'Prithvipur', 'Madhya Pradesh'),
(746, 'Raghogarh-Vijaypur', 'Madhya Pradesh'),
(747, 'Rahatgarh', 'Madhya Pradesh'),
(748, 'Raisen', 'Madhya Pradesh'),
(749, 'Rajgarh', 'Madhya Pradesh'),
(750, 'Ratlam', 'Madhya Pradesh'),
(751, 'Rau', 'Madhya Pradesh'),
(752, 'Rehli', 'Madhya Pradesh'),
(753, 'Rewa', 'Madhya Pradesh'),
(754, 'Sabalgarh', 'Madhya Pradesh'),
(755, 'Sagar', 'Madhya Pradesh'),
(756, 'Sanawad', 'Madhya Pradesh'),
(757, 'Sarangpur', 'Madhya Pradesh'),
(758, 'Sarni', 'Madhya Pradesh'),
(759, 'Satna', 'Madhya Pradesh'),
(760, 'Sausar', 'Madhya Pradesh'),
(761, 'Sehore', 'Madhya Pradesh'),
(762, 'Sendhwa', 'Madhya Pradesh'),
(763, 'Seoni', 'Madhya Pradesh'),
(764, 'Seoni-Malwa', 'Madhya Pradesh'),
(765, 'Shahdol', 'Madhya Pradesh'),
(766, 'Shajapur', 'Madhya Pradesh'),
(767, 'Shamgarh', 'Madhya Pradesh'),
(768, 'Sheopur', 'Madhya Pradesh'),
(769, 'Shivpuri', 'Madhya Pradesh'),
(770, 'Shujalpur', 'Madhya Pradesh'),
(771, 'Sidhi', 'Madhya Pradesh'),
(772, 'Sihora', 'Madhya Pradesh'),
(773, 'Singrauli', 'Madhya Pradesh'),
(774, 'Sironj', 'Madhya Pradesh'),
(775, 'Sohagpur', 'Madhya Pradesh'),
(776, 'Tarana', 'Madhya Pradesh'),
(777, 'Tikamgarh', 'Madhya Pradesh'),
(778, 'Ujhani', 'Madhya Pradesh'),
(779, 'Ujjain', 'Madhya Pradesh'),
(780, 'Umaria', 'Madhya Pradesh'),
(781, 'Vidisha', 'Madhya Pradesh'),
(782, 'Wara Seoni', 'Madhya Pradesh'),
(783, 'Ahmednagar', 'Maharashtra'),
(784, 'Akola', 'Maharashtra'),
(785, 'Amravati', 'Maharashtra'),
(786, 'Aurangabad', 'Maharashtra'),
(787, 'Baramati', 'Maharashtra'),
(788, 'Chalisgaon', 'Maharashtra'),
(789, 'Chinchani', 'Maharashtra'),
(790, 'Devgarh', 'Maharashtra'),
(791, 'Dhule', 'Maharashtra'),
(792, 'Dombivli', 'Maharashtra'),
(793, 'Durgapur', 'Maharashtra'),
(794, 'Ichalkaranji', 'Maharashtra'),
(795, 'Jalna', 'Maharashtra'),
(796, 'Kalyan', 'Maharashtra'),
(797, 'Latur', 'Maharashtra'),
(798, 'Loha', 'Maharashtra'),
(799, 'Lonar', 'Maharashtra'),
(800, 'Lonavla', 'Maharashtra'),
(801, 'Mahad', 'Maharashtra'),
(802, 'Mahuli', 'Maharashtra'),
(803, 'Malegaon', 'Maharashtra'),
(804, 'Malkapur', 'Maharashtra'),
(805, 'Manchar', 'Maharashtra'),
(806, 'Mangalvedhe', 'Maharashtra'),
(807, 'Mangrulpir', 'Maharashtra'),
(808, 'Manjlegaon', 'Maharashtra'),
(809, 'Manmad', 'Maharashtra'),
(810, 'Manwath', 'Maharashtra'),
(811, 'Mehkar', 'Maharashtra'),
(812, 'Mhaswad', 'Maharashtra'),
(813, 'Miraj', 'Maharashtra'),
(814, 'Morshi', 'Maharashtra'),
(815, 'Mukhed', 'Maharashtra'),
(816, 'Mul', 'Maharashtra'),
(817, 'Mumbai', 'Maharashtra'),
(818, 'Murtijapur', 'Maharashtra'),
(819, 'Nagpur', 'Maharashtra'),
(820, 'Nalasopara', 'Maharashtra'),
(821, 'Nanded-Waghala', 'Maharashtra'),
(822, 'Nandgaon', 'Maharashtra'),
(823, 'Nandura', 'Maharashtra'),
(824, 'Nandurbar', 'Maharashtra'),
(825, 'Narkhed', 'Maharashtra'),
(826, 'Nashik', 'Maharashtra'),
(827, 'Navi Mumbai', 'Maharashtra'),
(828, 'Nawapur', 'Maharashtra'),
(829, 'Nilanga', 'Maharashtra'),
(830, 'Osmanabad', 'Maharashtra'),
(831, 'Ozar', 'Maharashtra'),
(832, 'Pachora', 'Maharashtra'),
(833, 'Paithan', 'Maharashtra'),
(834, 'Palghar', 'Maharashtra'),
(835, 'Pandharkaoda', 'Maharashtra'),
(836, 'Pandharpur', 'Maharashtra'),
(837, 'Panvel', 'Maharashtra'),
(838, 'Parbhani', 'Maharashtra'),
(839, 'Parli', 'Maharashtra'),
(840, 'Parola', 'Maharashtra'),
(841, 'Partur', 'Maharashtra'),
(842, 'Pathardi', 'Maharashtra'),
(843, 'Pathri', 'Maharashtra'),
(844, 'Patur', 'Maharashtra'),
(845, 'Pauni', 'Maharashtra'),
(846, 'Pen', 'Maharashtra'),
(847, 'Phaltan', 'Maharashtra'),
(848, 'Pulgaon', 'Maharashtra'),
(849, 'Pune', 'Maharashtra'),
(850, 'Purna', 'Maharashtra'),
(851, 'Pusad', 'Maharashtra'),
(852, 'Rahuri', 'Maharashtra'),
(853, 'Rajura', 'Maharashtra'),
(854, 'Ramtek', 'Maharashtra'),
(855, 'Ratnagiri', 'Maharashtra'),
(856, 'Raver', 'Maharashtra'),
(857, 'Risod', 'Maharashtra'),
(858, 'Sailu', 'Maharashtra'),
(859, 'Sangamner', 'Maharashtra'),
(860, 'Sangli', 'Maharashtra'),
(861, 'Sangole', 'Maharashtra'),
(862, 'Sasvad', 'Maharashtra'),
(863, 'Satana', 'Maharashtra'),
(864, 'Satara', 'Maharashtra'),
(865, 'Savner', 'Maharashtra'),
(866, 'Sawantwadi', 'Maharashtra'),
(867, 'Shahade', 'Maharashtra'),
(868, 'Shegaon', 'Maharashtra'),
(869, 'Shendurjana', 'Maharashtra'),
(870, 'Shirdi', 'Maharashtra'),
(871, 'Shirpur-Warwade', 'Maharashtra'),
(872, 'Shirur', 'Maharashtra'),
(873, 'Shrigonda', 'Maharashtra'),
(874, 'Shrirampur', 'Maharashtra'),
(875, 'Sillod', 'Maharashtra'),
(876, 'Sinnar', 'Maharashtra'),
(877, 'Solapur', 'Maharashtra'),
(878, 'Soyagaon', 'Maharashtra'),
(879, 'Talegaon Dabhade', 'Maharashtra'),
(880, 'Talode', 'Maharashtra'),
(881, 'Tasgaon', 'Maharashtra'),
(882, 'Tirora', 'Maharashtra'),
(883, 'Tuljapur', 'Maharashtra'),
(884, 'Tumsar', 'Maharashtra'),
(885, 'Uran', 'Maharashtra'),
(886, 'Uran Islampur', 'Maharashtra'),
(887, 'Wadgaon Road', 'Maharashtra'),
(888, 'Wai', 'Maharashtra'),
(889, 'Wani', 'Maharashtra'),
(890, 'Wardha', 'Maharashtra'),
(891, 'Warora', 'Maharashtra'),
(892, 'Warud', 'Maharashtra'),
(893, 'Washim', 'Maharashtra'),
(894, 'Yevla', 'Maharashtra'),
(895, 'Uchgaon', 'Maharashtra'),
(896, 'Udgir', 'Maharashtra'),
(897, 'Umarga', 'Maharastra'),
(898, 'Umarkhed', 'Maharastra'),
(899, 'Umred', 'Maharastra'),
(900, 'Vadgaon Kasba', 'Maharastra'),
(901, 'Vaijapur', 'Maharastra'),
(902, 'Vasai', 'Maharastra'),
(903, 'Virar', 'Maharastra'),
(904, 'Vita', 'Maharastra'),
(905, 'Yavatmal', 'Maharastra'),
(906, 'Yawal', 'Maharastra'),
(907, 'Imphal', 'Manipur'),
(908, 'Kakching', 'Manipur'),
(909, 'Lilong', 'Manipur'),
(910, 'Mayang Imphal', 'Manipur'),
(911, 'Thoubal', 'Manipur'),
(912, 'Jowai', 'Meghalaya'),
(913, 'Nongstoin', 'Meghalaya'),
(914, 'Shillong', 'Meghalaya'),
(915, 'Tura', 'Meghalaya'),
(916, 'Aizawl', 'Mizoram'),
(917, 'Champhai', 'Mizoram'),
(918, 'Lunglei', 'Mizoram'),
(919, 'Saiha', 'Mizoram'),
(920, 'Dimapur', 'Nagaland'),
(921, 'Kohima', 'Nagaland'),
(922, 'Mokokchung', 'Nagaland'),
(923, 'Tuensang', 'Nagaland'),
(924, 'Wokha', 'Nagaland'),
(925, 'Zunheboto', 'Nagaland'),
(950, 'Anandapur', 'Orissa'),
(951, 'Anugul', 'Orissa'),
(952, 'Asika', 'Orissa'),
(953, 'Balangir', 'Orissa'),
(954, 'Balasore', 'Orissa'),
(955, 'Baleshwar', 'Orissa'),
(956, 'Bamra', 'Orissa'),
(957, 'Barbil', 'Orissa'),
(958, 'Bargarh', 'Orissa'),
(959, 'Bargarh', 'Orissa'),
(960, 'Baripada', 'Orissa'),
(961, 'Basudebpur', 'Orissa'),
(962, 'Belpahar', 'Orissa'),
(963, 'Bhadrak', 'Orissa'),
(964, 'Bhawanipatna', 'Orissa'),
(965, 'Bhuban', 'Orissa'),
(966, 'Bhubaneswar', 'Orissa'),
(967, 'Biramitrapur', 'Orissa'),
(968, 'Brahmapur', 'Orissa'),
(969, 'Brajrajnagar', 'Orissa'),
(970, 'Byasanagar', 'Orissa'),
(971, 'Cuttack', 'Orissa'),
(972, 'Debagarh', 'Orissa'),
(973, 'Dhenkanal', 'Orissa'),
(974, 'Gunupur', 'Orissa'),
(975, 'Hinjilicut', 'Orissa'),
(976, 'Jagatsinghapur', 'Orissa'),
(977, 'Jajapur', 'Orissa'),
(978, 'Jaleswar', 'Orissa'),
(979, 'Jatani', 'Orissa'),
(980, 'Jeypur', 'Orissa'),
(981, 'Jharsuguda', 'Orissa'),
(982, 'Joda', 'Orissa'),
(983, 'Kantabanji', 'Orissa'),
(984, 'Karanjia', 'Orissa'),
(985, 'Kendrapara', 'Orissa'),
(986, 'Kendujhar', 'Orissa'),
(987, 'Khordha', 'Orissa'),
(988, 'Koraput', 'Orissa'),
(989, 'Malkangiri', 'Orissa'),
(990, 'Nabarangapur', 'Orissa'),
(991, 'Paradip', 'Orissa'),
(992, 'Parlakhemundi', 'Orissa'),
(993, 'Pattamundai', 'Orissa'),
(994, 'Phulabani', 'Orissa'),
(995, 'Puri', 'Orissa'),
(996, 'Rairangpur', 'Orissa'),
(997, 'Rajagangapur', 'Orissa'),
(998, 'Raurkela', 'Orissa'),
(999, 'Rayagada', 'Orissa'),
(1000, 'Sambalpur', 'Orissa'),
(1001, 'Soro', 'Orissa'),
(1002, 'Sunabeda', 'Orissa'),
(1003, 'Sundargarh', 'Orissa'),
(1004, 'Talcher', 'Orissa'),
(1005, 'Titlagarh', 'Orissa'),
(1006, 'Umarkote', 'Orissa'),
(1007, 'Karaikal', 'Pondicherry'),
(1008, 'Mahe', 'Pondicherry'),
(1009, 'Pondicherry', 'Pondicherry'),
(1010, 'Yanam', 'Pondicherry'),
(1011, 'Ahmedgarh', 'Punjab'),
(1012, 'Amritsar', 'Punjab'),
(1013, 'Barnala', 'Punjab'),
(1014, 'Batala', 'Punjab'),
(1015, 'Bathinda', 'Punjab'),
(1016, 'Bhagha Purana', 'Punjab'),
(1017, 'Budhlada', 'Punjab'),
(1018, 'Chandigarh', 'Punjab'),
(1019, 'Dasua', 'Punjab'),
(1020, 'Dhuri', 'Punjab'),
(1021, 'Dinanagar', 'Punjab'),
(1022, 'Faridkot', 'Punjab'),
(1023, 'Fazilka', 'Punjab'),
(1024, 'Firozpur', 'Punjab'),
(1025, 'Firozpur Cantt.', 'Punjab'),
(1026, 'Giddarbaha', 'Punjab'),
(1027, 'Gobindgarh', 'Punjab'),
(1028, 'Gurdaspur', 'Punjab'),
(1029, 'Hoshiarpur', 'Punjab'),
(1030, 'Jagraon', 'Punjab'),
(1031, 'Jaitu', 'Punjab'),
(1032, 'Jalalabad', 'Punjab'),
(1033, 'Jalandhar', 'Punjab'),
(1034, 'Jalandhar Cantt.', 'Punjab'),
(1035, 'Jandiala', 'Punjab'),
(1036, 'Kapurthala', 'Punjab'),
(1037, 'Karoran', 'Punjab'),
(1038, 'Kartarpur', 'Punjab'),
(1039, 'Khanna', 'Punjab'),
(1040, 'Kharar', 'Punjab'),
(1041, 'Kot Kapura', 'Punjab'),
(1042, 'Kurali', 'Punjab'),
(1043, 'Longowal', 'Punjab'),
(1044, 'Ludhiana', 'Punjab'),
(1045, 'Malerkotla', 'Punjab'),
(1046, 'Malout', 'Punjab'),
(1047, 'Mansa', 'Punjab'),
(1048, 'Maur', 'Punjab'),
(1049, 'Moga', 'Punjab'),
(1050, 'Mohali', 'Punjab'),
(1051, 'Morinda', 'Punjab'),
(1052, 'Mukerian', 'Punjab'),
(1053, 'Muktsar', 'Punjab'),
(1054, 'Nabha', 'Punjab'),
(1055, 'Nakodar', 'Punjab'),
(1056, 'Nangal', 'Punjab'),
(1057, 'Nawanshahr', 'Punjab'),
(1058, 'Pathankot', 'Punjab'),
(1059, 'Patiala', 'Punjab'),
(1060, 'Patran', 'Punjab'),
(1061, 'Patti', 'Punjab'),
(1062, 'Phagwara', 'Punjab'),
(1063, 'Phillaur', 'Punjab'),
(1064, 'Qadian', 'Punjab'),
(1065, 'Raikot', 'Punjab'),
(1066, 'Rajpura', 'Punjab'),
(1067, 'Rampura Phul', 'Punjab'),
(1068, 'Rupnagar', 'Punjab'),
(1069, 'Samana', 'Punjab'),
(1070, 'Sangrur', 'Punjab'),
(1071, 'Sirhind Fatehgarh Sahib', 'Punjab'),
(1072, 'Sujanpur', 'Punjab'),
(1073, 'Sunam', 'Punjab'),
(1074, 'Talwara', 'Punjab'),
(1075, 'Tarn Taran', 'Punjab'),
(1076, 'Urmar Tanda', 'Punjab'),
(1077, 'Zira', 'Punjab'),
(1078, 'Zirakpur', 'Punjab'),
(1079, 'Bali', 'Rajasthan'),
(1081, 'Ajmer', 'Rajasthan'),
(1082, 'Alwar', 'Rajasthan'),
(1083, 'Bandikui', 'Rajasthan'),
(1084, 'Baran', 'Rajasthan'),
(1085, 'Barmer', 'Rajasthan'),
(1086, 'Bikaner', 'Rajasthan'),
(1087, 'Fatehpur', 'Rajasthan'),
(1088, 'Jaipur', 'Rajasthan'),
(1089, 'Jaisalmer', 'Rajasthan'),
(1090, 'Jodhpur', 'Rajasthan'),
(1091, 'Kota', 'Rajasthan'),
(1092, 'Lachhmangarh', 'Rajasthan'),
(1093, 'Ladnu', 'Rajasthan'),
(1094, 'Lakheri', 'Rajasthan'),
(1095, 'Lalsot', 'Rajasthan'),
(1096, 'Losal', 'Rajasthan'),
(1097, 'Makrana', 'Rajasthan'),
(1098, 'Malpura', 'Rajasthan'),
(1099, 'Mandalgarh', 'Rajasthan'),
(1100, 'Mandawa', 'Rajasthan'),
(1101, 'Mangrol', 'Rajasthan'),
(1102, 'Merta City', 'Rajasthan'),
(1103, 'Mount Abu', 'Rajasthan'),
(1104, 'Nadbai', 'Rajasthan'),
(1105, 'Nagar', 'Rajasthan'),
(1106, 'Nagaur', 'Rajasthan'),
(1107, 'Nargund', 'Rajasthan'),
(1108, 'Nasirabad', 'Rajasthan'),
(1109, 'Nathdwara', 'Rajasthan'),
(1110, 'Navalgund', 'Rajasthan'),
(1111, 'Nawalgarh', 'Rajasthan'),
(1112, 'Neem-Ka-Thana', 'Rajasthan'),
(1113, 'Nelamangala', 'Rajasthan'),
(1114, 'Nimbahera', 'Rajasthan'),
(1115, 'Nipani', 'Rajasthan'),
(1116, 'Niwai', 'Rajasthan'),
(1117, 'Nohar', 'Rajasthan'),
(1118, 'Nokha', 'Rajasthan'),
(1119, 'Pali', 'Rajasthan'),
(1120, 'Phalodi', 'Rajasthan'),
(1121, 'Phulera', 'Rajasthan'),
(1122, 'Pilani', 'Rajasthan'),
(1123, 'Pilibanga', 'Rajasthan'),
(1124, 'Pindwara', 'Rajasthan'),
(1125, 'Pipar City', 'Rajasthan'),
(1126, 'Prantij', 'Rajasthan'),
(1127, 'Pratapgarh', 'Rajasthan'),
(1128, 'Raisinghnagar', 'Rajasthan'),
(1129, 'Rajakhera', 'Rajasthan'),
(1130, 'Rajaldesar', 'Rajasthan'),
(1131, 'Rajgarh (Alwar)', 'Rajasthan'),
(1132, 'Rajgarh (Churu', 'Rajasthan'),
(1133, 'Rajsamand', 'Rajasthan'),
(1134, 'Ramganj Mandi', 'Rajasthan'),
(1135, 'Ramngarh', 'Rajasthan'),
(1136, 'Ratangarh', 'Rajasthan'),
(1137, 'Rawatbhata', 'Rajasthan'),
(1138, 'Rawatsar', 'Rajasthan'),
(1139, 'Reengus', 'Rajasthan'),
(1140, 'Sadri', 'Rajasthan'),
(1141, 'Sadulshahar', 'Rajasthan'),
(1142, 'Sagwara', 'Rajasthan'),
(1143, 'Sambhar', 'Rajasthan'),
(1144, 'Sanchore', 'Rajasthan'),
(1145, 'Sangaria', 'Rajasthan'),
(1146, 'Sardarshahar', 'Rajasthan'),
(1147, 'Sawai Madhopur', 'Rajasthan'),
(1148, 'Shahpura', 'Rajasthan'),
(1149, 'Shahpura', 'Rajasthan'),
(1150, 'Sheoganj', 'Rajasthan'),
(1151, 'Sikar', 'Rajasthan'),
(1152, 'Sirohi', 'Rajasthan'),
(1153, 'Sojat', 'Rajasthan'),
(1154, 'Sri Madhopur', 'Rajasthan'),
(1155, 'Sujangarh', 'Rajasthan'),
(1156, 'Sumerpur', 'Rajasthan'),
(1157, 'Suratgarh', 'Rajasthan'),
(1158, 'Taranagar', 'Rajasthan'),
(1159, 'Todabhim', 'Rajasthan'),
(1160, 'Todaraisingh', 'Rajasthan'),
(1161, 'Tonk', 'Rajasthan'),
(1162, 'Udaipur', 'Rajasthan'),
(1163, 'Udaipurwati', 'Rajasthan'),
(1164, 'Vijainagar', 'Rajasthan'),
(1165, 'Gangtok', 'Sikkim'),
(1166, 'Calcutta', 'West Bengal'),
(1167, 'Arakkonam', 'Tamil Nadu'),
(1168, 'Arcot', 'Tamil Nadu'),
(1169, 'Aruppukkottai', 'Tamil Nadu'),
(1170, 'Bhavani', 'Tamil Nadu'),
(1171, 'Chengalpattu', 'Tamil Nadu'),
(1172, 'Chennai', 'Tamil Nadu'),
(1173, 'Chinna salem', 'Tamil nadu'),
(1174, 'Coimbatore', 'Tamil Nadu'),
(1175, 'Coonoor', 'Tamil Nadu'),
(1176, 'Cuddalore', 'Tamil Nadu'),
(1177, 'Dharmapuri', 'Tamil Nadu'),
(1178, 'Dindigul', 'Tamil Nadu'),
(1179, 'Erode', 'Tamil Nadu'),
(1180, 'Gudalur', 'Tamil Nadu'),
(1181, 'Gudalur', 'Tamil Nadu'),
(1182, 'Gudalur', 'Tamil Nadu'),
(1183, 'Kanchipuram', 'Tamil Nadu'),
(1184, 'Karaikudi', 'Tamil Nadu'),
(1185, 'Karungal', 'Tamil Nadu'),
(1186, 'Karur', 'Tamil Nadu'),
(1187, 'Kollankodu', 'Tamil Nadu'),
(1188, 'Lalgudi', 'Tamil Nadu'),
(1189, 'Madurai', 'Tamil Nadu'),
(1190, 'Nagapattinam', 'Tamil Nadu'),
(1191, 'Nagercoil', 'Tamil Nadu'),
(1192, 'Namagiripettai', 'Tamil Nadu'),
(1193, 'Namakkal', 'Tamil Nadu'),
(1194, 'Nandivaram-Guduvancheri', 'Tamil Nadu'),
(1195, 'Nanjikottai', 'Tamil Nadu'),
(1196, 'Natham', 'Tamil Nadu'),
(1197, 'Nellikuppam', 'Tamil Nadu'),
(1198, 'Neyveli', 'Tamil Nadu'),
(1199, 'O'' Valley', 'Tamil Nadu'),
(1200, 'Oddanchatram', 'Tamil Nadu'),
(1201, 'P.N.Patti', 'Tamil Nadu'),
(1202, 'Pacode', 'Tamil Nadu'),
(1203, 'Padmanabhapuram', 'Tamil Nadu'),
(1204, 'Palani', 'Tamil Nadu'),
(1205, 'Palladam', 'Tamil Nadu'),
(1206, 'Pallapatti', 'Tamil Nadu'),
(1207, 'Pallikonda', 'Tamil Nadu'),
(1208, 'Panagudi', 'Tamil Nadu'),
(1209, 'Panruti', 'Tamil Nadu'),
(1210, 'Paramakudi', 'Tamil Nadu'),
(1211, 'Parangipettai', 'Tamil Nadu'),
(1212, 'Pattukkottai', 'Tamil Nadu'),
(1213, 'Perambalur', 'Tamil Nadu'),
(1214, 'Peravurani', 'Tamil Nadu'),
(1215, 'Periyakulam', 'Tamil Nadu'),
(1216, 'Periyasemur', 'Tamil Nadu'),
(1217, 'Pernampattu', 'Tamil Nadu'),
(1218, 'Pollachi', 'Tamil Nadu'),
(1219, 'Polur', 'Tamil Nadu'),
(1220, 'Ponneri', 'Tamil Nadu'),
(1221, 'Pudukkottai', 'Tamil Nadu'),
(1222, 'Pudupattinam', 'Tamil Nadu'),
(1223, 'Puliyankudi', 'Tamil Nadu'),
(1224, 'Punjaipugalur', 'Tamil Nadu'),
(1225, 'Rajapalayam', 'Tamil Nadu'),
(1226, 'Ramanathapuram', 'Tamil Nadu'),
(1227, 'Rameshwaram', 'Tamil Nadu'),
(1228, 'Rasipuram', 'Tamil Nadu'),
(1229, 'Salem', 'Tamil Nadu'),
(1230, 'Sankarankoil', 'Tamil Nadu'),
(1231, 'Sankari', 'Tamil Nadu'),
(1232, 'Sathyamangalam', 'Tamil Nadu'),
(1233, 'Sattur', 'Tamil Nadu'),
(1234, 'Shenkottai', 'Tamil Nadu'),
(1235, 'Sholavandan', 'Tamil Nadu'),
(1236, 'Sholingur', 'Tamil Nadu'),
(1237, 'Sirkali', 'Tamil Nadu'),
(1238, 'Sivaganga', 'Tamil Nadu'),
(1239, 'Sivagiri', 'Tamil Nadu'),
(1240, 'Sivakasi', 'Tamil Nadu'),
(1241, 'Srivilliputhur', 'Tamil Nadu'),
(1242, 'Surandai', 'Tamil Nadu'),
(1243, 'Suriyampalayam', 'Tamil Nadu'),
(1244, 'Tenkasi', 'Tamil Nadu'),
(1245, 'Thammampatti', 'Tamil Nadu'),
(1246, 'Thanjavur', 'Tamil Nadu'),
(1247, 'Tharamangalam', 'Tamil Nadu'),
(1248, 'Tharangambadi', 'Tamil Nadu'),
(1249, 'Theni Allinagaram', 'Tamil Nadu'),
(1250, 'Thirumangalam', 'Tamil Nadu'),
(1251, 'Thirunindravur', 'Tamil Nadu'),
(1252, 'Thiruparappu', 'Tamil Nadu'),
(1253, 'Thirupuvanam', 'Tamil Nadu'),
(1254, 'Thiruthuraipoondi', 'Tamil Nadu'),
(1255, 'Thiruvallur', 'Tamil Nadu'),
(1256, 'Thiruvarur', 'Tamil Nadu'),
(1257, 'Thoothukudi', 'Tamil Nadu'),
(1258, 'Thuraiyur', 'Tamil Nadu'),
(1259, 'Tindivanam', 'Tamil Nadu'),
(1260, 'Tiruchendur', 'Tamil Nadu'),
(1261, 'Tiruchengode', 'Tamil Nadu'),
(1262, 'Tiruchirappalli', 'Tamil Nadu'),
(1263, 'Tirukalukundram', 'Tamil Nadu'),
(1264, 'Tirukkoyilur', 'Tamil Nadu'),
(1265, 'Tirunelveli', 'Tamil Nadu'),
(1266, 'Tirupathur', 'Tamil Nadu'),
(1267, 'Tirupathur', 'Tamil Nadu'),
(1268, 'Tiruppur', 'Tamil Nadu'),
(1269, 'Tiruttani', 'Tamil Nadu'),
(1270, 'Tiruvannamalai', 'Tamil Nadu'),
(1271, 'Tiruvethipuram', 'Tamil Nadu'),
(1272, 'Tittakudi', 'Tamil Nadu'),
(1273, 'Udhagamandalam', 'Tamil Nadu'),
(1274, 'Udumalaipettai', 'Tamil Nadu'),
(1275, 'Unnamalaikadai', 'Tamil Nadu'),
(1276, 'Usilampatti', 'Tamil Nadu'),
(1277, 'Uthamapalayam', 'Tamil Nadu'),
(1278, 'Uthiramerur', 'Tamil Nadu'),
(1279, 'Vadakkuvalliyur', 'Tamil Nadu'),
(1280, 'Vadalur', 'Tamil Nadu'),
(1281, 'Vadipatti', 'Tamil Nadu'),
(1282, 'Valparai', 'Tamil Nadu'),
(1283, 'Vandavasi', 'Tamil Nadu'),
(1284, 'Vaniyambadi', 'Tamil Nadu'),
(1285, 'Vedaranyam', 'Tamil Nadu'),
(1286, 'Vellakoil', 'Tamil Nadu'),
(1287, 'Vellore', 'Tamil Nadu'),
(1288, 'Vikramasingapuram', 'Tamil Nadu'),
(1289, 'Viluppuram', 'Tamil Nadu'),
(1290, 'Virudhachalam', 'Tamil Nadu'),
(1291, 'Virudhunagar', 'Tamil Nadu'),
(1292, 'Viswanatham', 'Tamil Nadu'),
(1293, 'Agartala', 'Tripura'),
(1294, 'Badharghat', 'Tripura'),
(1295, 'Dharmanagar', 'Tripura'),
(1296, 'Indranagar', 'Tripura'),
(1297, 'Jogendranagar', 'Tripura'),
(1298, 'Kailasahar', 'Tripura'),
(1299, 'Khowai', 'Tripura'),
(1300, 'Pratapgarh', 'Tripura'),
(1301, 'Udaipur', 'Tripura'),
(1302, 'Achhnera', 'Uttar Pradesh'),
(1303, 'Adari', 'Uttar Pradesh'),
(1304, 'Agra', 'Uttar Pradesh'),
(1305, 'Aligarh', 'Uttar Pradesh'),
(1306, 'Allahabad', 'Uttar Pradesh'),
(1307, 'Amroha', 'Uttar Pradesh'),
(1308, 'Azamgarh', 'Uttar Pradesh'),
(1309, 'Bahraich', 'Uttar Pradesh'),
(1310, 'Ballia', 'Uttar Pradesh'),
(1311, 'Balrampur', 'Uttar Pradesh'),
(1312, 'Banda', 'Uttar Pradesh'),
(1313, 'Bareilly', 'Uttar Pradesh'),
(1314, 'Chandausi', 'Uttar Pradesh'),
(1315, 'Dadri', 'Uttar Pradesh'),
(1316, 'Deoria', 'Uttar Pradesh'),
(1317, 'Etawah', 'Uttar Pradesh'),
(1318, 'Fatehabad', 'Uttar Pradesh'),
(1319, 'Fatehpur', 'Uttar Pradesh'),
(1320, 'Fatehpur', 'Uttar Pradesh'),
(1321, 'Greater Noida', 'Uttar Pradesh'),
(1322, 'Hamirpur', 'Uttar Pradesh'),
(1323, 'Hardoi', 'Uttar Pradesh'),
(1324, 'Jajmau', 'Uttar Pradesh'),
(1325, 'Jaunpur', 'Uttar Pradesh'),
(1326, 'Jhansi', 'Uttar Pradesh'),
(1327, 'Kalpi', 'Uttar Pradesh'),
(1328, 'Kanpur', 'Uttar Pradesh'),
(1329, 'Kota', 'Uttar Pradesh'),
(1330, 'Laharpur', 'Uttar Pradesh'),
(1331, 'Lakhimpur', 'Uttar Pradesh'),
(1332, 'Lal Gopalganj Nindaura', 'Uttar Pradesh'),
(1333, 'Lalganj', 'Uttar Pradesh'),
(1334, 'Lalitpur', 'Uttar Pradesh'),
(1335, 'Lar', 'Uttar Pradesh'),
(1336, 'Loni', 'Uttar Pradesh'),
(1337, 'Lucknow', 'Uttar Pradesh'),
(1338, 'Mathura', 'Uttar Pradesh'),
(1339, 'Meerut', 'Uttar Pradesh'),
(1340, 'Modinagar', 'Uttar Pradesh'),
(1341, 'Muradnagar', 'Uttar Pradesh'),
(1342, 'Nagina', 'Uttar Pradesh'),
(1343, 'Najibabad', 'Uttar Pradesh'),
(1344, 'Nakur', 'Uttar Pradesh'),
(1345, 'Nanpara', 'Uttar Pradesh'),
(1346, 'Naraura', 'Uttar Pradesh'),
(1347, 'Naugawan Sadat', 'Uttar Pradesh'),
(1348, 'Nautanwa', 'Uttar Pradesh'),
(1349, 'Nawabganj', 'Uttar Pradesh'),
(1350, 'Nehtaur', 'Uttar Pradesh'),
(1351, 'NOIDA', 'Uttar Pradesh'),
(1352, 'Noorpur', 'Uttar Pradesh'),
(1353, 'Obra', 'Uttar Pradesh'),
(1354, 'Orai', 'Uttar Pradesh'),
(1355, 'Padrauna', 'Uttar Pradesh'),
(1356, 'Palia Kalan', 'Uttar Pradesh'),
(1357, 'Parasi', 'Uttar Pradesh'),
(1358, 'Phulpur', 'Uttar Pradesh'),
(1359, 'Pihani', 'Uttar Pradesh'),
(1360, 'Pilibhit', 'Uttar Pradesh'),
(1361, 'Pilkhuwa', 'Uttar Pradesh'),
(1362, 'Powayan', 'Uttar Pradesh'),
(1363, 'Pukhrayan', 'Uttar Pradesh'),
(1364, 'Puranpur', 'Uttar Pradesh'),
(1365, 'Purquazi', 'Uttar Pradesh'),
(1366, 'Purwa', 'Uttar Pradesh'),
(1367, 'Rae Bareli', 'Uttar Pradesh'),
(1368, 'Rampur', 'Uttar Pradesh'),
(1369, 'Rampur Maniharan', 'Uttar Pradesh'),
(1370, 'Rasra', 'Uttar Pradesh'),
(1371, 'Rath', 'Uttar Pradesh'),
(1372, 'Renukoot', 'Uttar Pradesh'),
(1373, 'Reoti', 'Uttar Pradesh'),
(1374, 'Robertsganj', 'Uttar Pradesh'),
(1375, 'Rudauli', 'Uttar Pradesh'),
(1376, 'Rudrapur', 'Uttar Pradesh'),
(1377, 'Sadabad', 'Uttar Pradesh'),
(1378, 'Safipur', 'Uttar Pradesh'),
(1379, 'Saharanpur', 'Uttar Pradesh'),
(1380, 'Sahaspur', 'Uttar Pradesh'),
(1381, 'Sahaswan', 'Uttar Pradesh'),
(1382, 'Sahawar', 'Uttar Pradesh'),
(1383, 'Sahjanwa', 'Uttar Pradesh'),
(1385, 'Sambhal', 'Uttar Pradesh'),
(1386, 'Samdhan', 'Uttar Pradesh'),
(1387, 'Samthar', 'Uttar Pradesh'),
(1388, 'Sandi', 'Uttar Pradesh'),
(1389, 'Sandila', 'Uttar Pradesh'),
(1390, 'Sardhana', 'Uttar Pradesh'),
(1391, 'Seohara', 'Uttar Pradesh'),
(1394, 'Shahganj', 'Uttar Pradesh'),
(1395, 'Shahjahanpur', 'Uttar Pradesh'),
(1396, 'Shamli', 'Uttar Pradesh'),
(1399, 'Sherkot', 'Uttar Pradesh'),
(1401, 'Shikohabad', 'Uttar Pradesh'),
(1402, 'Shishgarh', 'Uttar Pradesh'),
(1403, 'Siana', 'Uttar Pradesh'),
(1404, 'Sikanderpur', 'Uttar Pradesh'),
(1405, 'Sikandra Rao', 'Uttar Pradesh'),
(1406, 'Sikandrabad', 'Uttar Pradesh'),
(1407, 'Sirsaganj', 'Uttar Pradesh'),
(1408, 'Sirsi', 'Uttar Pradesh'),
(1409, 'Sitapur', 'Uttar Pradesh'),
(1410, 'Soron', 'Uttar Pradesh'),
(1411, 'Suar', 'Uttar Pradesh'),
(1412, 'Sultanpur', 'Uttar Pradesh'),
(1413, 'Sumerpur', 'Uttar Pradesh'),
(1414, 'Tanda', 'Uttar Pradesh'),
(1415, 'Tanda', 'Uttar Pradesh'),
(1416, 'Tetri Bazar', 'Uttar Pradesh'),
(1417, 'Thakurdwara', 'Uttar Pradesh'),
(1418, 'Thana Bhawan', 'Uttar Pradesh'),
(1419, 'Tilhar', 'Uttar Pradesh'),
(1420, 'Tirwaganj', 'Uttar Pradesh'),
(1421, 'Tulsipur', 'Uttar Pradesh'),
(1422, 'Tundla', 'Uttar Pradesh'),
(1423, 'Unnao', 'Uttar Pradesh'),
(1424, 'Utraula', 'Uttar Pradesh'),
(1425, 'Varanasi', 'Uttar Pradesh'),
(1426, 'Vrindavan', 'Uttar Pradesh'),
(1427, 'Warhapur', 'Uttar Pradesh'),
(1428, 'Zaidpur', 'Uttar Pradesh'),
(1429, 'Zamania', 'Uttar Pradesh'),
(1430, 'Almora', 'Uttarakhand'),
(1431, 'Bazpur', 'Uttarakhand'),
(1432, 'Chamba', 'Uttarakhand'),
(1433, 'Dehradun', 'Uttarakhand'),
(1434, 'Haldwani', 'Uttarakhand'),
(1435, 'Haridwar', 'Uttarakhand'),
(1436, 'Jaspur', 'Uttarakhand'),
(1437, 'Kashipur', 'Uttarakhand'),
(1438, 'kichha', 'Uttarakhand'),
(1439, 'Kotdwara', 'Uttarakhand'),
(1440, 'Manglaur', 'Uttarakhand'),
(1441, 'Mussoorie', 'Uttarakhand'),
(1442, 'Nagla', 'Uttarakhand'),
(1443, 'Nainital', 'Uttarakhand'),
(1444, 'Pauri', 'Uttarakhand'),
(1445, 'Pithoragarh', 'Uttarakhand'),
(1446, 'Ramnagar', 'Uttarakhand'),
(1447, 'Rishikesh', 'Uttarakhand'),
(1448, 'Roorkee', 'Uttarakhand'),
(1449, 'Rudrapur', 'Uttarakhand'),
(1450, 'Sitarganj', 'Uttarakhand'),
(1451, 'Tehri', 'Uttarakhand'),
(1452, 'Muzaffarnagar', 'Uttar Pradesh'),
(1454, 'Alipurduar', 'West Bengal'),
(1455, 'Arambagh', 'West Bengal'),
(1456, 'Asansol', 'West Bengal'),
(1457, 'Baharampur', 'West Bengal'),
(1458, 'Bally', 'West Bengal'),
(1459, 'Balurghat', 'West Bengal'),
(1460, 'Bankura', 'West Bengal'),
(1461, 'Barakar', 'West Bengal'),
(1462, 'Barasat', 'West Bengal'),
(1463, 'Bardhaman', 'West Bengal'),
(1464, 'Bidhan Nagar', 'West Bengal'),
(1465, 'Chinsura', 'West Bengal'),
(1466, 'Contai', 'West Bengal'),
(1467, 'Cooch Behar', 'West Bengal'),
(1468, 'Darjeeling', 'West Bengal'),
(1469, 'Durgapur', 'West Bengal'),
(1470, 'Haldia', 'West Bengal'),
(1471, 'Howrah', 'West Bengal'),
(1472, 'Islampur', 'West Bengal'),
(1473, 'Jhargram', 'West Bengal'),
(1474, 'Kharagpur', 'West Bengal'),
(1475, 'Kolkata', 'West Bengal'),
(1476, 'Mainaguri', 'West Bengal'),
(1477, 'Mal', 'West Bengal'),
(1478, 'Mathabhanga', 'West Bengal'),
(1479, 'Medinipur', 'West Bengal'),
(1480, 'Memari', 'West Bengal'),
(1481, 'Monoharpur', 'West Bengal'),
(1482, 'Murshidabad', 'West Bengal'),
(1483, 'Nabadwip', 'West Bengal'),
(1484, 'Naihati', 'West Bengal'),
(1485, 'Panchla', 'West Bengal'),
(1486, 'Pandua', 'West Bengal'),
(1487, 'Paschim Punropara', 'West Bengal'),
(1488, 'Purulia', 'West Bengal'),
(1489, 'Raghunathpur', 'West Bengal'),
(1490, 'Raiganj', 'West Bengal'),
(1491, 'Rampurhat', 'West Bengal'),
(1492, 'Ranaghat', 'West Bengal'),
(1493, 'Sainthia', 'West Bengal'),
(1494, 'Santipur', 'West Bengal'),
(1495, 'Siliguri', 'West Bengal'),
(1496, 'Sonamukhi', 'West Bengal'),
(1497, 'Srirampore', 'West Bengal'),
(1498, 'Suri', 'West Bengal'),
(1499, 'Taki', 'West Bengal'),
(1500, 'Tamluk', 'West Bengal'),
(1501, 'Tarakeswar', 'West Bengal'),
(1502, 'Chikmagalur', 'Karnataka'),
(1503, 'Davanagere', 'Karnataka'),
(1504, 'Dharwad', 'Karnataka'),
(1505, 'Gadag', 'Karnataka'),
(1506, 'Chennai', 'Tamil Nadu'),
(1507, 'Coimbatore', 'Tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(30) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `tin_no` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `billing_address` varchar(300) DEFAULT NULL,
  `email_address` varchar(30) NOT NULL,
  `url` varchar(30) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `phone_no`, `tin_no`, `description`, `billing_address`, `email_address`, `url`, `created_on`) VALUES
(1, 'Atal Prateek', '7739576693', 'DSHSF235345DFS', '', 'RSG Software Services Pvt Ltd', 'atal.prateek@rsgss.com', '', '2017-07-08 04:55:14'),
(4, 'Atal Prateek Barla', '7739576692', '', '', 'RSG Software Services Pvt Ltd', 'atal.prateek@rsgss.com', '', '2017-07-05 10:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE IF NOT EXISTS `expenditure` (
  `id` int(11) NOT NULL,
  `bill` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `particulars` varchar(300) NOT NULL,
  `amount` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL,
  `billing_mode` varchar(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `type` varchar(10) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_mobile` varchar(12) NOT NULL,
  `gst` varchar(30) NOT NULL,
  `add_from` varchar(200) NOT NULL,
  `add_to` varchar(200) NOT NULL,
  `gross_amount` float NOT NULL,
  `cgst` float NOT NULL,
  `cgstvalue` float NOT NULL,
  `sgst` float NOT NULL,
  `sgstvalue` float NOT NULL,
  `igst` float NOT NULL,
  `igstvalue` float NOT NULL,
  `net_amount` float NOT NULL,
  `dPercent` float NOT NULL,
  `dValue` float NOT NULL,
  `total_amount` float NOT NULL,
  `transport` float NOT NULL,
  `final_amount` float NOT NULL,
  `paid_amount` float NOT NULL,
  `dues_amount` float NOT NULL,
  `next_payment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `billing_mode`, `date`, `type`, `payment_mode`, `customer_id`, `customer_name`, `customer_mobile`, `gst`, `add_from`, `add_to`, `gross_amount`, `cgst`, `cgstvalue`, `sgst`, `sgstvalue`, `igst`, `igstvalue`, `net_amount`, `dPercent`, `dValue`, `total_amount`, `transport`, `final_amount`, `paid_amount`, `dues_amount`, `next_payment`) VALUES
(1, 'retail', '2017-07-05', 'debit', 'cash', 1, '', '', '', 'Khalsa Enterprises, Upper Bazar Mahabir Chowk, Pyada Toli, Ranchi', '', 650, 7, 45.5, 7, 45.5, 0, 0, 741, 10, 74.1, 667, 0, 0, 667, 0, '0000-00-00'),
(2, 'retail', '2017-07-05', 'debit', 'cash', 1, 'Atal Prateek', '7739576693', '', 'Khalsa Enterprises, Upper Bazar Mahabir Chowk, Pyada Toli, Ranchi', 'RSG Software Services Pvt Ltd', 650, 7, 45.5, 7, 45.5, 0, 0, 741, 0, 0, 741, 0, 0, 741, 0, '0000-00-00'),
(3, 'retail', '2017-07-05', 'debit', 'cash', 0, '', '', '', 'Shop Name, Address, Ranchi', '', 130, 0, 0, 0, 0, 0, 0, 130, 0, 0, 130, 0, 0, 130, 0, '0000-00-00'),
(4, 'retail', '2017-07-06', 'credit', 'cash', 0, '', '', '', 'Shop Name, Address, Ranchi', '', 1340, 0, 0, 0, 0, 0, 0, 1340, 0, 0, 1340, 0, 0, 0, 0, '0000-00-00'),
(5, 'retail', '2017-07-06', 'credit', 'cash', 0, '', '', '', 'Shop Name, Address, Ranchi', '', 150, 7, 10.5, 7, 10.5, 0, 0, 171, 0, 0, 171, 0, 0, 0, 0, '0000-00-00'),
(6, 'returns', '2017-07-06', 'credit', 'cash', 0, '', '', '', 'Shop Name, Address, Ranchi', '', 450, 7, 31.5, 7, 31.5, 0, 0, 513, 0, 0, 513, 0, 513, 0, 513, '2017-07-13'),
(7, 'retail', '2017-07-06', 'credit', 'cash', 0, '', '', '', 'Shop Name, Address, Ranchi', '', 150, 7, 10.5, 7, 10.5, 0, 0, 171, 0, 0, 171, 100, 271, 0, 271, '2017-07-13'),
(8, 'retail', '2017-07-07', 'debit', 'cash', 1, 'Atal Prateek', '7739576693', '20CQWPS644A1ZS', 'Khalsa Enterprises, Upper Bazar Mahabir Chowk, Pyada Toli, Ranchi', 'RSG Software Services Pvt LtdRSG Software Services Pvt LtdRSG Software Services Pvt LtdRSG Software Services Pvt LtdRSG Software Services Pvt LtdRSG Software Services Pvt Ltd', 150, 0, 0, 0, 0, 0, 0, 150, 0, 0, 150, 0, 150, 150, 0, '0000-00-00'),
(9, 'returns', '2017-07-07', 'debit', 'cash', 1, 'Atal Prateek', '', '', 'Khalsa Enterprises, Upper Bazar Mahabir Chowk, Pyada Toli, Ranchi', 'RSG Software Services Pvt \r\nRSG Software Services Pvt Ltd Software Services Pvt Ltd', 150, 0, 0, 0, 0, 0, 0, 150, 0, 0, 150, 0, 150, 150, 0, '0000-00-00'),
(10, 'retail', '2017-07-07', 'debit', 'cash', 0, '', '', '', 'Khalsa Enterprises, Upper Bazar Mahabir Chowk, Pyada Toli, Ranchi', '', 820, 0, 0, 0, 0, 0, 0, 820, 0, 0, 820, 0, 820, 820, 0, '0000-00-00'),
(12, 'retail', '2017-07-08', 'debit', 'cash', 1, 'Atal Prateek', '7739576693', 'DSHSF235345DFS', 'Khalsa Enterprises, Upper Bazar Mahabir Chowk, Pyada Toli, Ranchi', 'RSG Software Services Pvt Ltd', 2340, 0, 0, 0, 0, 0, 0, 2340, 0, 0, 2340, 100, 2440, 2340, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_temp`
--

CREATE TABLE IF NOT EXISTS `invoice_temp` (
  `id` int(11) NOT NULL,
  `items` varchar(20) DEFAULT NULL,
  `hsn` varchar(30) NOT NULL,
  `slno` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL,
  `ready_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `bill` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `supplier` int(11) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `cheque_no` varchar(10) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `cheque_date` date NOT NULL,
  `gross_amount` float NOT NULL,
  `cgst` float NOT NULL,
  `cvalue` float NOT NULL,
  `sgst` float NOT NULL,
  `svalue` float NOT NULL,
  `igst` float NOT NULL,
  `ivalue` float NOT NULL,
  `net_amount` float NOT NULL,
  `dpercent` float NOT NULL,
  `dvalue` float NOT NULL,
  `total_amount` float NOT NULL,
  `transport` float NOT NULL,
  `final_amount` float NOT NULL,
  `paid` float NOT NULL,
  `dues` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `bill`, `type`, `supplier`, `payment_mode`, `cheque_no`, `bank`, `cheque_date`, `gross_amount`, `cgst`, `cvalue`, `sgst`, `svalue`, `igst`, `ivalue`, `net_amount`, `dpercent`, `dvalue`, `total_amount`, `transport`, `final_amount`, `paid`, `dues`, `added_on`) VALUES
(2, '2017-07-06', '12', '', 1, 'cheque', '1234', '0', '2017-07-06', 11000, 14, 1540, 14, 1540, 0, 0, 14080, 0, 0, 14080, 0, 14080, 14080, 0, '2017-07-10 08:34:14'),
(3, '2017-07-06', '09887', 'debit', 6, 'cash', '', '', '0000-00-00', 700, 0, 0, 0, 0, 28, 196, 896, 0, 0, 896, 0, 0, 0, 0, '2017-07-07 06:52:08'),
(4, '2017-07-06', '2', '', 1, 'cash', '', '', '0000-00-00', 16000, 7, 1120, 7, 1120, 0, 0, 18240, 0, 0, 18240, 0, 18240, 18240, 0, '2017-07-10 08:34:37'),
(5, '2017-07-06', '45', 'credit', 6, 'cash', '', '', '0000-00-00', 60000, 7, 4200, 7, 4200, 0, 0, 68400, 0, 0, 68400, 1000, 69400, 69400, 0, '2017-07-07 06:52:04'),
(6, '2017-07-06', '123', 'credit', 1, 'cash', '', '', '0000-00-00', 5000, 14, 700, 14, 700, 0, 0, 6400, 0, 0, 6400, 500, 6900, 2200, 4700, '2017-07-10 10:11:41'),
(7, '2017-07-10', '1', 'debit', 1, 'cash', '', '', '0000-00-00', 5000, 6, 300, 6, 300, 0, 0, 5600, 0, 0, 5600, 0, 5600, 0, 5600, '2017-07-10 09:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `slno` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `hsn` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` float NOT NULL,
  `purchase_gst` float NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `name`, `slno`, `category`, `hsn`, `quantity`, `purchase`, `purchase_gst`, `purchase_id`) VALUES
(1, 'something', '31252345', 'cat', 'adfadsf', 50, 5000, 6400, 2),
(2, 'product', '16534524', 'car', 'adsfad', 20, 6000, 7680, 2),
(3, 'chair', '', 'neelkamal', '2314', 12, 300, 384, 3),
(4, 'table', '', 'neelkamal2', '8976', 12, 400, 512, 3),
(5, 'product', '1234', 'cat', '1234', 50, 10000, 11400, 4),
(6, 'something', '4321', 'ca2', '5678', 50, 5000, 5700, 4),
(7, 'product 2', '0987', 'cat3', '9012', 20, 1000, 1140, 4),
(8, 'something', '1234', 'dafd', '1234', 50, 50000, 57020, 5),
(9, 'product', '4321', 'cdfssg', '3654', 100, 10000, 11410, 5),
(10, 'product', '0987', 'neelkamal2', '9012', 50, 5000, 6410, 6),
(11, 'product', '341342', 'ca2', '8976', 10, 5000, 5600, 7);

-- --------------------------------------------------------

--
-- Table structure for table `raw_stock`
--

CREATE TABLE IF NOT EXISTS `raw_stock` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `hsn` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `slno` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` float NOT NULL,
  `base_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `description` varchar(100) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_stock`
--

INSERT INTO `raw_stock` (`id`, `date`, `product_id`, `name`, `hsn`, `category`, `slno`, `quantity`, `purchase`, `base_price`, `selling_price`, `description`, `added_on`) VALUES
(8, '2017-07-06', 1, 'something', '1321', 'cat', '31252345', 44, 128, 130, 150, 'desc', '2017-07-08 04:55:23'),
(9, '2017-07-06', 2, 'product', 'adsfad', 'car', '16534524', 16, 384, 391.5, 450, '', '2017-07-08 04:55:30'),
(10, '2017-07-06', 3, 'chair', '2314', 'neelkamal', '', 9, 32, 32, 250, '', '2017-07-07 11:23:20'),
(11, '2017-07-06', 4, 'table', '8976', 'neelkamal2', '', 7, 42.6667, 42.6667, 420, '', '2017-07-08 04:55:35'),
(12, '2017-07-06', 5, 'product', '1234', 'cat', '1234', 50, 200, 228, 250, '', '2017-07-06 07:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `ricesell`
--

CREATE TABLE IF NOT EXISTS `ricesell` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `quality` varchar(50) NOT NULL,
  `sellername` varchar(50) NOT NULL,
  `selldate` date NOT NULL,
  `stackout` varchar(50) NOT NULL,
  `oil` varchar(50) NOT NULL,
  `waste` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ricesell`
--

INSERT INTO `ricesell` (`id`, `itemname`, `quantity`, `quality`, `sellername`, `selldate`, `stackout`, `oil`, `waste`) VALUES
(1, 'rice', '32', 'Basmiti', '', '0000-00-00', '', '', ''),
(2, 'rice', '56', 'Basmiti', '', '0000-00-00', '', '', ''),
(3, 'rice', '56', 'Basmiti', '', '0000-00-00', '', '', ''),
(4, 'rice', '56', 'Basmiti', '', '0000-00-00', '', '', ''),
(5, 'rice', '56', 'Basmiti', '', '0000-00-00', '', '', ''),
(6, 'rice', '56', 'Basmiti', '', '0000-00-00', '', '', ''),
(7, 'rice', '74', 'Ranbir Basmiti', 'shardool', '2017-07-05', '12', '7', '5');

-- --------------------------------------------------------

--
-- Table structure for table `ricetype`
--

CREATE TABLE IF NOT EXISTS `ricetype` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ricename` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ricetype`
--

INSERT INTO `ricetype` (`id`, `date`, `ricename`) VALUES
(1, '2017-07-04', 'basmati'),
(2, '2017-07-10', 'ranbir basmati');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic` float NOT NULL,
  `hra` float NOT NULL,
  `medical` float NOT NULL,
  `conveyance` float NOT NULL,
  `special` float NOT NULL,
  `deducted_leave` float NOT NULL,
  `paid_attendance` float NOT NULL,
  `epf` float NOT NULL,
  `esic` float NOT NULL,
  `total` float NOT NULL,
  `deduction` float NOT NULL,
  `salary` float NOT NULL,
  `net_payment` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `items` varchar(20) DEFAULT NULL,
  `hsn` varchar(30) NOT NULL,
  `slno` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `items`, `hsn`, `slno`, `quantity`, `price`, `amount`, `invoice_id`) VALUES
(1, 2, 'Product 3', 'SDFDADSG', '', 5, 130, 650, 1),
(2, 1, 'Product 2', 'SDFDA1342', '', 5, 130, 650, 2),
(3, 1, 'Product 2', 'SDFDA1342', '14325', 1, 130, 130, 3),
(4, 10, 'chair', '2314', '', 2, 250, 500, 4),
(5, 11, 'table', '8976', '', 2, 420, 840, 4),
(6, 8, 'something', 'adfadsf', '31252345', 1, 150, 150, 5),
(7, 9, 'product', 'adsfad', '16534524', 1, 450, 450, 6),
(8, 8, 'something', 'adfadsf', '31252345', 1, 150, 150, 7),
(9, 8, 'something', 'adfadsf', '31252345', 1, 150, 150, 8),
(10, 8, 'something', 'adfadsf', '31252345', 1, 150, 150, 9),
(11, 8, 'something', '1321', '31252345', 1, 150, 150, 10),
(12, 10, 'chair', '2314', '', 1, 250, 250, 10),
(13, 11, 'table', '8976', '', 1, 420, 420, 10),
(14, 8, 'something', '1321', '31252345', 1, 150, 150, 12),
(15, 9, 'product', 'adsfad', '16534524', 3, 450, 1350, 12),
(16, 11, 'table', '8976', '', 2, 420, 840, 12);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(30) NOT NULL,
  `staff_name` varchar(30) NOT NULL,
  `staff_father_name` varchar(30) NOT NULL,
  `staff_age` int(3) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `staff_address` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `staff_mobile` varchar(12) NOT NULL,
  `basic_salary` int(20) NOT NULL,
  `pf` int(20) NOT NULL,
  `esic` int(20) NOT NULL,
  `hra` int(20) NOT NULL,
  `com_pf_no` varchar(20) NOT NULL,
  `pf_acco_no` varchar(20) NOT NULL,
  `income_tax_no` varchar(20) NOT NULL,
  `medical_allowance` int(10) NOT NULL,
  `conveyance_allowance` int(10) NOT NULL,
  `special_allowance` int(10) NOT NULL,
  `salary` int(20) NOT NULL,
  `total_earning` int(20) NOT NULL,
  `net_payment` int(10) NOT NULL,
  `total_deduction` int(10) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `doj` varchar(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deducted_leave` int(10) NOT NULL,
  `paid_attendence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `suppliername` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `quality` varchar(50) NOT NULL,
  `brokername` varchar(50) NOT NULL,
  `sellername` varchar(50) NOT NULL,
  `selldate` date NOT NULL,
  `stackout` varchar(50) NOT NULL,
  `oil` varchar(50) NOT NULL,
  `waste` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `date`, `suppliername`, `mobile`, `email`, `address`, `itemname`, `quantity`, `quality`, `brokername`, `sellername`, `selldate`, `stackout`, `oil`, `waste`) VALUES
(1, '2016-12-12', 'rohan', '9878976545', 'rohan@gmail.com', 'ranchi', 'rice', '12', 'Basmiti', 'raju', 'aman', '2017-07-18', '2', '', ''),
(2, '2017-07-06', 'nikhil', '9878976545', 'nikhil@gmail.com', 'jamshedpur', 'rice', '14', 'Ranbir Basmiti', 'ashu', '', '0000-00-00', '', '', ''),
(3, '2017-07-20', 'gopal', '9876578976', 'gopal123@gmail.com', 'chattisgarh', 'rice', '12', 'Basmiti', 'udit', 'aman', '2017-07-18', '2', '', ''),
(4, '2017-07-05', 'dhiraj', '9878765478', 'dhiraj@gmail.com', 'jamshedpur', 'rice', '32', 'Basmiti', 'gopal', '', '0000-00-00', '', '', ''),
(5, '2017-07-04', 'piyush', '9878765764', 'piyush@gmail.com', 'bokaro', 'rice', '32', 'Basmiti', 'rohan', '', '0000-00-00', '', '', ''),
(6, '2017-07-11', 'rohit', '9878765456', 'rohit@gmail.com', 'patna', 'rice', '76', 'Basmiti', 'rohan', '', '0000-00-00', '', '', ''),
(7, '2017-07-03', 'amar', '8789876789', 'amar@gmail.com', 'patna', 'rice', '54', 'Basmiti', 'ashu', '', '0000-00-00', '', '', ''),
(8, '2017-07-03', 'amar', '8789876789', 'amar@gmail.com', 'patna', 'rice', '54', 'Basmiti', 'ashu', '', '0000-00-00', '', '', ''),
(9, '2017-07-03', 'amar', '8789876789', 'amar@gmail.com', 'patna', 'rice', '54', 'Basmiti', 'ashu', '', '0000-00-00', '', '', ''),
(10, '2017-07-03', 'amar', '8789876789', 'amar@gmail.com', 'patna', 'rice', '54', 'Basmiti', 'ashu', '', '0000-00-00', '', '', ''),
(11, '2017-07-12', 'saumye', '8765577865', 'saumye@gmail.com', 'jamshedpur', 'rice', '76', 'Basmiti', 'rohan', '', '0000-00-00', '', '', ''),
(12, '2017-07-10', 'hitesh', '8767856489', 'hitesh@gmail.com', 'ranchi', 'rice', '56', 'Basmiti', 'abby', '', '0000-00-00', '', '', ''),
(13, '2017-07-10', 'hitesh', '8767856489', 'hitesh@gmail.com', 'ranchi', 'rice', '56', 'Basmiti', 'abby', '', '0000-00-00', '', '', ''),
(14, '2017-07-10', 'hitesh', '8767856489', 'hitesh@gmail.com', 'ranchi', 'rice', '56', 'Basmiti', 'abby', '', '0000-00-00', '', '', ''),
(15, '2017-07-06', 'ishan', '98789887667', 'ishan@gmail.com', 'ranchi', 'rice', '32', 'Basmiti', 'nikhil', '', '0000-00-00', '', '', ''),
(16, '2017-07-06', 'ishan', '98789887667', 'ishan@gmail.com', 'ranchi', 'rice', '32', 'Basmiti', 'nikhil', '', '0000-00-00', '', '', ''),
(17, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(18, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(19, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(20, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(21, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(22, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(23, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(24, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(25, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(26, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(27, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(28, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(29, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(30, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(31, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(32, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(33, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(34, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(35, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(36, '2017-07-11', 'aditya', '7865678956', 'aditya@gmail.com', 'patna', 'rice', '56', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(37, '2017-07-11', 'rohan', '8989778900', 'rohan@gmail.com', 'pune', 'rice', '51', 'Ranbir Basmiti', 'raju', '', '0000-00-00', '', '', ''),
(38, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(39, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(40, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(41, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(42, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(43, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(44, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(45, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(46, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(47, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(48, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(49, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', ''),
(50, '2017-07-04', 'rajeev', '8767656785', 'rajeev@gmail.com', 'ranchi', 'rice', '43', 'Ranbir Basmiti', 'abhi', '', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userrice`
--

CREATE TABLE IF NOT EXISTS `userrice` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `userrice`
--

INSERT INTO `userrice` (`id`, `username`, `password`, `role`, `active`) VALUES
(2, 'user1', '123', 'purchaseb', 'yes'),
(3, 'user2', '123', 'purchasec', 'yes'),
(4, 'inventory', '123', 'inventory', 'yes'),
(5, 'admin', 'admin', 'admin', 'yes'),
(6, 'sales1', '123', 'salesa', 'yes'),
(7, 'sales2', '123', 'salesb', 'yes'),
(8, 'sales3', '123', 'salesc', 'yes'),
(9, 'hr', '123', 'hr', 'yes');
--
-- Database: `rijh`
--
CREATE DATABASE IF NOT EXISTS `rijh` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rijh`;

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`) VALUES
(1, 'Uploads/music/mp3'),
(3, 'Uploads/music/mp3'),
(4, 'Uploads/music/Maid with the Flaxen Hair.mp3'),
(5, 'Uploads/music/Sleep Away.mp3'),
(6, 'Uploads/music/Sleep Away.mp3'),
(7, 'Uploads/music/Sleep Away.mp3'),
(8, 'Uploads/music/Sleep Away.mp3'),
(9, 'Uploads/music/Sleep Away.mp3'),
(10, 'Uploads/music/Sleep Away.mp3'),
(11, 'Uploads/music/Sleep Away.mp3'),
(12, 'Uploads/music/Sleep Away.mp3'),
(13, 'Uploads/music/Sleep Away.mp3'),
(14, 'Uploads/music/Sleep Away.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`) VALUES
(1, 'Uploads/videos/');
--
-- Database: `schoodb`
--
CREATE DATABASE IF NOT EXISTS `schoodb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `schoodb`;

-- --------------------------------------------------------

--
-- Table structure for table `addmission`
--

CREATE TABLE IF NOT EXISTS `addmission` (
  `a_reg` int(11) NOT NULL AUTO_INCREMENT,
  `a_rollno` int(11) NOT NULL,
  `a_sname` varchar(50) NOT NULL,
  `a_sclass` varchar(50) NOT NULL,
  `a_apname` varchar(50) NOT NULL,
  `a_gender` varchar(50) NOT NULL,
  `a_dob` varchar(50) NOT NULL,
  `a_fname` varchar(50) NOT NULL,
  `a_foccup` varchar(50) NOT NULL,
  `a_mname` varchar(50) NOT NULL,
  `a_moccup` varchar(50) NOT NULL,
  `a_nationality` varchar(50) NOT NULL,
  `a_category` varchar(50) NOT NULL,
  `a_address` varchar(300) NOT NULL,
  `a_city` varchar(50) NOT NULL,
  `a_pin` varchar(50) NOT NULL,
  `a_contact` varchar(50) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_nopschool` varchar(50) NOT NULL,
  `a_copsch` varchar(50) NOT NULL,
  `a_pmarks` varchar(50) NOT NULL,
  `a_grade` varchar(50) NOT NULL,
  `a_board` varchar(50) NOT NULL,
  `a_image` mediumtext NOT NULL,
  PRIMARY KEY (`a_reg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `addmission`
--

INSERT INTO `addmission` (`a_reg`, `a_rollno`, `a_sname`, `a_sclass`, `a_apname`, `a_gender`, `a_dob`, `a_fname`, `a_foccup`, `a_mname`, `a_moccup`, `a_nationality`, `a_category`, `a_address`, `a_city`, `a_pin`, `a_contact`, `a_email`, `a_nopschool`, `a_copsch`, `a_pmarks`, `a_grade`, `a_board`, `a_image`) VALUES
(1, 1, 'D A V Public school', '2', 'Swati Kumari', 'Female', '13-10-2000', 'Krishna Kumar', 'Service man', 'Mamta Devi', 'Servicewomen', 'Indian', 'General', 'Tatisilwai Ranchi', 'Ranchi', '835103', '8271947955', 'sweetswati@gmail.com', 'Carmel Convent', '1', '1st', 'A++', 'ICSE', ''),
(2, 2, 'D A V Public School', '3', 'Priya Kumari', 'Female', '10/03/2008', 'K. K. Kumar', 'Service man', 'Meera Devi', 'Service women', 'Indian', 'General', 'Tatisilwai Ranchi', 'Ranchi', '835103', '7870316607', 'priyakumari@gmail.com', 'Carmel Convent', '2', '1st', 'A', 'ICSE', ''),
(3, 3, 'Delhi Public School', '4', 'Sanjay Pandey', 'Male', '15/11/2007', 'Parsuram Pandey', 'B.C.C.L', 'Sarupa Devi', 'Home maker', 'Indian', 'General', 'Dhanbad, Jharkhand', 'Ranchi', '835001', '8092577210', 'sanjaypandey907@gmail.com', 'Kids garden ', '3', '80%', 'A+', 'CBSE', ''),
(5, 5, 'D A V Public School', '7', 'Nisha', 'Female', '06/07/2005', 'Bhuneshwar sahu', 'Bussiness', 'Chanda sahu', 'Home maker', 'Indian', 'OBC', 'Main Road, Ranchi ', 'Ranchi', '834001', '9693853523', 'nisha.sahu125@gmail.com', 'Shishu Mandir', '6', '58%', 'B', 'CBSE', ''),
(11, 11, 'D A V Public School', '2', 'Nishant Kumar', 'Male', '03/03/2009', 'Ganesh Prasad Mahto', 'Vice Principle of a Degree college ', 'Meena Devi', 'Home maker', 'Indian', 'OBC', 'Bokaro Thermal.', 'Bokaro', '832108', '9835652463', 'nishantjnj@gmail.com', 'Kendriya Vidyalaya', '1', '80%', 'A', 'JAC', ''),
(26, 0, 'Cambrian Public School', '2', 'sweety kumari', 'Female', '12/5/1990', 'Krishna Kumar', 'service', 'mghh', 'home', 'Indian', 'OBC', 'ranchi', 'ranchi', '835103', '9898989898', 'sweety@gmail.com', 'Dps', '1', '80%', 'A', 'CBSE', ''),
(30, 0, 'Carmel School', '9', 'Sweety Kumari Pandey', 'Female', '12/10/2000', 'S.K.Pandey', 'Bussiness man', 'Reena Devi', 'Homemaker', 'Indian', 'General', 'Main Road. Ranchi', 'Ranchi', '834001', '9835652463', 'sweetykumari@gmail.com', 'St. Magret School', '8', '84%', 'A', 'ICSE', ''),
(31, 0, 'D A V Public School', '2', 'Smriti', 'Female', '25/5/2009', 'Munna Modi', 'Seviceman', 'Suhagpyari Devi', 'Homemaker', 'Indian', 'General', 'Tatisilwai Ranchi.', 'Ranchi', '835103', '8252520678', 'smritikumari@gmail.com', 'Children Paradise', 'Nursary', '70%', 'A', 'CBSE', 'content_image1.jpg'),
(32, 0, 'D A V Public School', '5', 'Smriti', 'Female', '25/5/2009', 'Munna Modi', 'Seviceman', 'Suhagpyari Devi', 'Homemaker', 'Indian', 'General', 'Tatisilwai Ranchi.', 'Ranchi', '835103', '8252520678', 'smritikumari@gmail.com', 'Children Paradise', '4', '70%', 'A', 'CBSE', '10sa_school_Smrinhi_159838g.jpg'),
(33, 0, 'Delhi Public School', '2', 'Mamta', 'Female', '12/12/2007', 'S.k.Jha', 'Service man', 'Meena Devi', 'Homemaker', 'Indian', 'General', 'Ranchi', 'Ranchi', '835108', '9897653587', 'mamta@gmail.com', 'Central school', '1', '80%', 'A+', 'ICSE', '076.jpg'),
(34, 0, 'xjjxhjxhjhbhbh', 'Pre-nursary', 'jjjjknk', 'Male', 'njnjjnj', 'jjhjh', 'bjbhhjj', 'nhjhjjj', 'bhhh', 'Indian', 'SC', 'huhuhuhuhjk', 'hhhjhjk', 'huyuhj', 'hjhjnjnj', 'jhjhjhjh@bxbn.xbhb', 'hhhjn', '5', 'bhhhhj', 'jhjhjhj', 'Play school', '98.jpg'),
(35, 0, 'fjhghjhjhjgcg', 'Play School', 'ddssdsj', 'Female', 'jhhjh', 'bhhj', 'hh', 'hhhjhj', 'hjhjhjh', 'Indian', 'OBC', 'uh', 'hghgghg', 'hghhgh', 'ytgyghuhuhu', 'hhhh@ghgd.cfh', 'h', '4', 'gghgh', 'hghghg', 'CBSE', '10sa_school_Smrinhi_159838g.jpg'),
(36, 0, 'hjdhkhk', 'Play School', 'hjhk', 'Male', 'hjkk', 'hhkhk', 'hkhj', 'hkhk', 'hkhhhk', 'Indian', 'SC', 'jhgjgg', 'jhjhk', 'jkjh', 'HBHHHHKhkhkkh', 'hjhhk@hgjg.dhhj', 'hhjdgjgj', 'Nursary', 'jgjg', 'gyuuy', 'JAC', '69551_176001032427789_6605118_n.jpg'),
(37, 0, 'hghggjg', 'Play School', 'hjhk', 'Male', 'hjkk', 'hhkhk', 'hkhj', 'hkhk', 'hkhhhk', 'Indian', 'SC', 'jhgjgg', 'jhjhk', 'jkjh', 'HBHHHHKhkhkkh', 'hjhhk@hgjg.dhhj', 'hhjdgjgj', 'Nursary', 'jgjg', 'gyuuy', 'JAC', '10sa_school_Smrinhi_159838g.jpg'),
(38, 0, 'Carmel School', '2', 'Tanu', 'Female', '12/3/2003', 'A.K.Dey', 'Seviceman', 'Maya Devi', 'Homemaker', 'Indian', 'General', 'Hatia Ranchi', 'Ranchi', '835104', '8238484875', 'tanu@gmail.com', 'St. Magret School', '1', '78%', 'A+', 'ICSE', 'girls.png'),
(39, 0, 'Delhi Public School', '4', 'Swati Kumari', 'Female', '13/9/2009', 'G.J.JHKH', 'Serviceman', 'Meena Devi', 'Homemaker', 'Indian', 'General', 'Ranchi', 'Ranchi', '835108', '9898989898', 'swati@gmail.com', 'Kendriye Vidhyalaya', '1', '56', 'B', 'ICSE', 'Gif_Cartoon_5.gif'),
(40, 0, 'Creative Kids ', 'Play School', 'Riya Kumari', 'Female', '12/12/2012', 'S.L.Sinha', 'Bussiness man', 'Meenakshi Devi', 'Servicewomen', 'Indian', 'OBC', 'Ranchi', 'Ranchi', '835101', '8565362534', 'riya@gamil.com', 'Paradise', 'none', 'none', 'none', 'none', 'images.png'),
(41, 0, 'Cambrian', '4', 'Pratap sen', 'Male', '12/3/1989', 'A.L.Sinha', 'Seviceman', 'Meena', 'Homemaker', 'Indian', 'General', 'Ranchi', 'Ranchi', '835101', '9898989898', 'pratapsen@gmail.com', 'Delhi Public School', '3', '79%', 'A', 'ICSE', '634629180896015899_(IFBI).jpeg'),
(42, 0, 'Carmel School', '3', 'Swati Kumari', 'Female', '13/10/2006', 'Krishna Kumar', 'Seviceman', 'Mamta Devi', 'Homemaker', 'Indian', 'General', 'E.E.F. Colony. Tatisilwai Ranchi', 'Ranchi', '835103', '9898989898', 'sweetswati@gmail.com', 'Children Paradise', '2', '69%', 'A', 'CBSE', '11012010782.jpg'),
(43, 0, 'fgtrrrr`', 'Play School', 'httt', 'Male', 'trttrty', 'yytt', 'tty', 'tuyut', 'ttyuy', 'Indian', 'SC', 'ghhtyju', 'jjyyyju', 'yuuuuyuyy', 'yuyyuy', 'uyuyuyuy@hgh.jjyj', 'hjh', 'Pre-nursary', 'hhgh', 'hh', 'CBSE', '21.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(23) NOT NULL,
  `pass` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `aseats`
--

CREATE TABLE IF NOT EXISTS `aseats` (
  `class` varchar(30) NOT NULL,
  `tseat` int(11) NOT NULL,
  `aseat` int(11) NOT NULL,
  PRIMARY KEY (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aseats`
--

INSERT INTO `aseats` (`class`, `tseat`, `aseat`) VALUES
('1', 90, 88),
('11', 90, 70),
('2', 90, 87),
('3', 90, 90),
('4', 90, 90),
('5', 90, 88),
('6', 90, 90),
('7', 90, 90),
('8', 90, 90),
('9', 90, 90),
('90', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `college11`
--

CREATE TABLE IF NOT EXISTS `college11` (
  `c_regno` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(100) NOT NULL,
  `c_principle` varchar(30) NOT NULL,
  `c_address` varchar(200) NOT NULL,
  `c_ctype` varchar(20) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_password` varchar(30) NOT NULL,
  `c_estd` varchar(10) NOT NULL,
  `c_colleg` varchar(30) NOT NULL,
  `c_university` varchar(20) NOT NULL,
  `c_contactno` varchar(100) NOT NULL,
  `c_otimming` varchar(100) NOT NULL,
  `c_ctimming` varchar(100) NOT NULL,
  `c_remark` varchar(100) NOT NULL,
  PRIMARY KEY (`c_regno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `college11`
--

INSERT INTO `college11` (`c_regno`, `c_name`, `c_principle`, `c_address`, `c_ctype`, `c_email`, `c_password`, `c_estd`, `c_colleg`, `c_university`, `c_contactno`, `c_otimming`, `c_ctimming`, `c_remark`) VALUES
(3, 'Birla Institute of Technology', 'xyz', 'Mesra, Ranchi, Jharkhand.Ranchi-835001. <br><a href="#">www.bitmesra.com</a>', 'Co-education', 'birlainstituteoftechnology@rediffmail.com', 'birlainstituteoftechnology', 'N/A', 'Engineering College', 'Ranchi University', '+91-651-275402', '11:00am to 3:00pm', '11:00am to 4:00pm', 'We provide a good education............'),
(4, 'Ranchi Womens College', 'Manju Sinha', 'Circular Road, Ranchi, Jharkhand. <br><a href="#''>www.ranchiwomenscollege.com</a>', 'Womens college', 'womenscollege@rediffmail.com', 'womenscollege', 'N/A', 'Arts and Science College', 'JAC Board', '+91-651-2562221, ', '11:00am to 3:00pm', '11:00am to 4:00pm', 'We provide a good education............'),
(5, 'Cambridge Institute of Technol', 'xyz', 'Tatisilwai, Ranchi-835103. <br><a href="#">www.cit.com</a>', 'Co-education', 'cambridgeinstitute@gmail.com', 'cambridgeinstitute', 'N/A', 'Engineering College', 'Ranchi University', '+91-651-2265608/2265450,', '11:00am to 3:00pm', '8:00am to 3:00pm', ' Cambridge Institute of Technology is situated at Tatisilwai, Ranchi, Jharkhand, affiliated to Ranch'),
(6, 'Swami Mangaldas Pranami College', 'xyz', 'Ranchi Jharkhand. <a href="#">www.swamimangaldas.com</a>', 'Co-education', 'swamimangaldaspranamicollege@gmail.com', 'swamimangaldaspranamicollege', '2010', 'Management College', 'Ranchi University', '(+91)-651-22345678', '11:00am to 2:00pm', '10:00am to 4:00pm', 'Swami Mangaldas Pranami College was established in 2010 offering high quality education in the areas'),
(7, 'S.N Sinha Institute of Business Studies', 'xyz', 'Ranchi Jharkhand. <a href="#">www.snsinha.com</a>', 'Co-education', 'snsinhamanagement@gmail.com', 'snsinhamanagement', '2010', 'Management College', 'Ranchi University', '(+91)-651-22345678', '11:00am to 2:00pm', '10:00am to 4:00pm', 'S.N Sinha Institute of Business Management, Ranchi has limited seats for management education and is'),
(8, ' Indian Institute of Managemen', 'xyz', 'Ratu Road. Ranchi', 'Co-education', 'iimranchi@gmail.com', 'iimranchi', '200', 'Management College', 'Ranchi University', '(+91)-651-2234987', '11:00am to 2:00pm', '9:00am to 3:00pm', ' Indian Institute of Management Ranchi was established in 2010 and offers programs like Executive-Po'),
(9, 'Xavier Institute of Social Ser', 'xyz', 'Purulia Road. Ranchi', 'Co-education', 'xissranchi@gmail.com', 'xissranchi', '1955', 'Management College', 'Ranchi University', '(+91)-651-2234987', '11:00am to 2:00pm', '9:00am to 3:00pm', ' Xavier Institute of Social Service (XISS) was established in 1955 as an extension department of St.'),
(10, 'Institute of Science & Managem', 'xyz', ' Ranch, Jharkhand', 'Co-education', 'instituteofsciencemanagement@g', 'instituteofsciencemanagement', '1989', 'Management College', 'Ranchi University', '(+91)-651-2234987', '11:00am to 2:00pm', '9:00am to 3:00pm', '     Institute of Science & Management, Ranchi website has info about academic programs, research & '),
(11, 'Department of management(RU)', 'xyz', 'Morabaddi, Ranchi.near Sindhu Kaanu Jaivik udyaan....', 'Co-education', 'departmentofmanagement@gmail.c', 'departmentofmanagement', '2012', 'Management College', 'Ranchi University', '(+91)-651-2234987', '11:00am to 2:00pm', '9:00am to 3:00pm', 'WE believes in well education and well educated teachers\r\n\r\n'),
(12, 'Central Institute of Psychiatr', 'xyz', 'Ranchi, Jhankhand', 'Co-education', 'departmentofmanagement@gmail.c', '', '2012', 'Medical College', 'Ranchi University', '(+91)-651-2234987', '11:00am to 2:00pm', '9:00am to 3:00pm', 'WE believes in well education and well educated teachers\r\n\r\n'),
(13, 'Rajendra Institute of Medical ', 'xyz', 'Ranchi, Jhankhand', 'Co-education', 'departmentofmanagement@gmail.c', '', '2012', 'Medical College', 'Ranchi University', '(+91)-651-2234987', '8:00am to 4:00pm', '8:00am to 4:00pm', 'Rajendra Institute of Medical Sciences, Ranchi was established in 2002 by upgrading RMCH and has cap'),
(14, 'Department of Mathematics & MC', 'M.M.P.Singh', 'Morabaddi, Ranchi.\r\nvisit us--www.ranchiuniversity.in', 'Co-education', 'departmentofmathematics@yahoo.', 'departmentofmathematics', 'N/A', 'MCA College', 'Ranchi University', '(+91)-651-2256567', '11:00am to 3:00pm', '10:30am to 3:45pm', 'The Department of Mathematics, Ranchi University, Ranchi is one of the best Department of Mathematic'),
(15, ' International Institute of Fa', 'xyz', 'Ranchi-Jharkhand', 'Co-education', 'iiftranchi@gmail.com', 'iiftranchi', '1990', 'Arts and Science College', 'Ranchi University', '9898989898', '10:00am to 12:00pm', '11:00am to 4:00pm', ' International Institute of Fashion Technology (IIFT) was established in 1990 imparting education in'),
(18, 'Doranda College, Ranchi ', 'xyz', 'Doranda Ranchi', 'Co-education', 'dorandacollege@gmail.com', 'dorandacollege', '1962', 'Arts and Science College', 'Ranchi University', '+(91)-651-2441176, 2440277', '10:00am to 1:00pm', '10:00am to3:30pm', ' Doranda College, Ranchi was established in 1962, offers Arts, Commerce, Science and Vocational Cour'),
(19, 'St.. Xavier College', 'xyz', 'Purulia Road. Ranchi ', 'Co-education', 'xaviercollegeranchi@gmail.com', 'xaviercollegeranchi', '1982', 'Arts and Science College', 'Ranchi University', '(+91)-651-2256879', '11:00am to 2:00pm', '10:00am to 4:00pm', 'St. Xavier''s College, Ranchi is a popular college in the Jharkhand capital city of Ranchi'),
(20, 'St.. Xavier College', 'xyz', 'Purulia Road. Ranchi-834001. <a href="#">www.xaviercollegeranchi11.com', 'Co-education', 'xaviercollegeranchi11@gmail.com', 'xaviercollegeranchi11', '1982', 'B-Ed College', 'Ranchi University', '(+91)-651-2256879', '11:00am to 2:00pm', '10:00am to 4:00pm', 'St. Xavier''s College, Ranchi is a popular college in the Jharkhand capital city of Ranchi'),
(21, 'St.. Xavier College', 'xyz', 'Purulia Road. Ranchi ', 'Co-education', 'xaviercollegeranchi1@gmail.com', '', '1982', 'MCA College', 'Ranchi University', '(+91)-651-2256879', '11:00am to 2:00pm', '10:00am to 4:00pm', 'St. Xavier''s College, Ranchi is a popular college in the Jharkhand capital city of Ranchi'),
(22, 'St.. Xavier College', 'xyz', 'Purulia Road. Ranchi ', 'Co-education', 'xaviercollegeranchi12@gmail.co', 'xaviercollegeranchi12', '1982', 'Management College', 'Ranchi University', '(+91)-651-2256879', '11:00am to 2:00pm', '10:00am to 4:00pm', 'St. Xavier''s College, Ranchi is a popular college in the Jharkhand capital city of Ranchi'),
(23, 'Ranchi Womens College, Ranchi', 'Manju Sinha', 'Circular Road. Ranchi. <a href="#">www.womenscollege.in</a>', 'Womens college', 'womenscollege12@gmail.com', 'womenscollege12', '1980', 'B-Ed College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', ' Ranchi Womens College offers world of higher education for women in social sciences/humanities, sci'),
(24, 'Doranda College, Ranchi ', 'xyz', 'Doranda. Ranchi. <a href="#">www.dorandacollege.com</a>', 'Co-education', 'dorandacollege11@gmail.com', 'dorandacollege11', '1980', 'B-Ed College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', ' Doranda College, Ranchi was established in 1962, offers Arts, Commerce, Science and Vocational Cour'),
(25, 'Nirmala College, Ranchi ', 'xyz', 'Doranda. Ranchi. <a href="#">www.nirmalacollege.com</a>', 'Womens college', 'nirmalacollege@gmail.com', 'nirmalacollege', '1980', 'Arts and Science College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', ' Nirmala College Ranchi, is a Christian Minority Institution affiliated by Ranchi University'),
(26, 'Marwari College, Ranchi ', 'xyz', 'Main Road. Ranchi ', 'Womens college', 'marwaricollege@gmail.com', 'marwaricollege', '1963', 'Arts and Science College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', ' Marwari College, Ranchi was established in 1963 by Marwari Shiksha Trust.'),
(27, 'Marwari College, Ranchi ', 'xyz', 'Main Road. Ranchi ', 'Boys college', 'marwaricollege1@gmail.com', 'marwaricollege1', '1963', 'Arts and Science College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', ' Marwari College, Ranchi was established in 1963 by Marwari Shiksha Trust.'),
(28, 'Gossner College, Ranchi ', 'xyz', 'Sujata chowk. Ranchi ', 'Co-education', 'gossnercollege@gmail.com', 'gossnercollege', '1971', 'Arts and Science College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', 'Gossner College established in 1971 is a Minority College, affiliated to Ranchi University.'),
(29, 'Marwari College', 'xyz', 'Main Road Ranchi ', 'Co-education', 'marwaricollege11@gmail.com', 'marwaricollege11', '1971', 'MCA College', 'Ranchi University', '+91-651-2562221', '11:00am to 2:00pm', '10:00am to 4:00pm', ''),
(30, 'Birla Institute of Technology(', 'xyz', 'Lalpur Ranchi ', 'Co-education', 'bitextension11@gmail.com', 'bitextension11', '1971', 'MCA College', 'Ranchi University', ' +91-651-275402', '11:00am to 2:00pm', '10:00am to 4:00pm', ''),
(31, 'Management Department of Hotel', 'xyz', ' Ranchi ', 'Co-education', 'hotelmanagement@gmail.com', 'hotelmanagement', '1971', 'Management College', 'Ranchi University', ' +91-651-275402', '11:00am to 2:00pm', '10:00am to 4:00pm', ''),
(32, ' 	J. N. College', 'xyz', ' Dhurwa Ranchi ', 'Boys college', 'jncollege@gmail.com', 'jncollege', '1971', 'Arts and Science College', 'Ranchi University', ' +91-651-275402', '11:00am to 2:00pm', '10:00am to 4:00pm', ''),
(33, ' 	Ranchi College', 'xyz', 'Morabadi, Ranchi, Jharkhand', 'Co-education', 'ranchicollege@gmail.com', 'ranchicollege', '1971', 'Arts and Science College', 'Ranchi University', ' +91-651-275402', '11:00am to 2:00pm', '10:00am to 4:00pm', ''),
(34, ' 	Ranchi College', 'xyz', 'Morabadi, Ranchi, Jharkhand', 'Co-education', 'ranchicollege11@gmail.com', 'ranchicollege11', '1971', 'MCA College', 'Ranchi University', ' +91-651-275402', '11:00am to 2:00pm', '10:00am to 4:00pm', ''),
(35, 'swati', 'swerytt', 'ranchi', 'Co-education', 'sdsff@gx.jxh', 'vagfgxghx', '1989', 'Management College', 'JAC Board', '98766544335', '3:99am', '3:08', 'fvgbhnm,'),
(36, 'Vananchal Institute Of Profesional Studies', 'xyz', 'Chhagan LAL Market, 2st Floor, Nr Kanta Toli Chowk, Kanta Toli Chowk, Kantatoli, Ranchi - 834001. <a href="#">www.vipsranchi.com</a>', 'Co-education', 'vipsranchi@gmail.com', 'vipsranchi', 'N/A', 'Polytechnic College', 'Ranchi University', '(91)-9334055885, 9308055885  +(91)-651-2530926  +(91)-651-2530926', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 10:00 am to 06:00 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 10:00 am to 06:00 pm ', ''),
(37, 'Biyanis Group Of Colleges(also serves in Ranchi)', 'xyz', 'R-4, Sec-3, Vidhyadhar Nagar, Jaipur - 302039 .<a href="#">www.biyanicolleges.org</a>', 'Co-education', 'biyanicolleges@gmail.com', 'biyanicolleges', '1995', 'Polytechnic College', 'Ranchi University', '+(91)-141-4252448  +(91)-141-2338007', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:30 am to 06:30 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:30 am to 06:30 pm ', ''),
(38, 'Hindustan Institute Of Technology', 'xyz', 'Near Tupudana, Devi Mandap Road, Hatia, Ranchi - 834003 . <a href="#">www.vmitranchi.com</a>', 'Co-education', 'vmitranchi@gmail.com', 'vmitranchi', '1990', 'Polytechnic College', 'Ranchi University', '+(91)-9234870203  +(91)-651-2291845, 2291289', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:00 am to 05:00 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:00 am to 05:00 pm ', 'We believes in student skill development.............'),
(39, 'Rantech I T I', 'xyz', 'Sukhdeo Nagar, Ratu Road, Ranchi - 834001. <a href="#">www.rantech.com</a>', 'Co-education', 'rantech@gmail.com', 'rantech', 'N/A', 'Polytechnic College', 'Ranchi University', '+(91)-9608553013', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:30 am to 06:30 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:30 am to 06:30 pm ', ''),
(40, 'Xavier Institute of Polytechnic and technology', 'xyz', 'Bargawan Namkum...<a href="#">www.xipt.com</a>', 'Co-education', 'xavierinstitutept@gmail.com', 'xavierinstitutept', 'N/A', 'Polytechnic College', 'Ranchi University', '(+91) 9835247865', '', '', ''),
(41, 'Mini Tools', 'xyz', 'opp.Usha Martin primary school. Tatisilwai Ranchi-835103. <a href="#">www.minitool.com<a>', 'Co-education', 'minitools@gmail.com', 'minitools', '2000', 'Polytechnic College', 'Ranchi University', '+91-651-2265203', '9:00am to 4:00pm', '9:00am to 4:00pm', 'All students of us are the well mannered and educated........'),
(42, 'Sirl Teachers Training College', 'xyz', 'B I T More, Mesra, Neori Vikash Vidyalaya, Ranchi - 835217. <a href="#">www.sttc.co.in</a>', 'Womens college', 'sirlteachertraining@gmail.com', 'sirlteachertraining', '2011', 'B-Ed College', 'Ranchi University', '+(91)-9031238633', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 10:00 am to 04:00 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 10:00 am to 04:00 pm ', ''),
(43, 'Cambridge Institute Of Teachers Education', 'xyz', 'Baheya, Angara, Pruila Road, Tatisilwai, RANCHI - 835103. <a href="#">www.citeranchi.com</a>', 'Co-education', 'cambridgeranchi@gmail.com', 'cambridgeranchi', 'N/A', 'B-Ed College', 'Ranchi University', '+(91)-651-6571261, +(91)-9431680313', '8:00am to 5:00pm', '8:00am to 2:00pm', ''),
(44, 'Buddha Institute Of Education', 'xyz', '2nd Floor, Opp S B I, Kokar, Ranchi - 834001.<a href="#">www.buddhaeducation.com', 'Co-education', 'buddhaeducation.gmail.com', 'buddhaeducation', 'N/A', 'B-Ed College', 'Ranchi University', '+(91)-651-3203972, +(91)-9334450173', '7:00am to 6:00pm', '10:00am to 1:00pm', ''),
(45, 'Marwari College - Ranchi', 'xyz', 'Lake Road, Ranchi, Jharkhand. <a href="#">www.marwaricollege.com</a>', 'Co-education', 'marwaricollege@gmail.com', 'marwaricollege', 'N/A', 'B-Ed College', 'Ranchi University', '+91-651-2213134', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:00 am to 05:00 pm', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 09:30 am to 06:30 pm', ''),
(46, 'Birla Institute Of Technology', 'xyz', 'Bit Mesra, Mesra, Ranchi - 835215. <a href="#">www.bitmesra.ac.in<a> ', 'Co-education', 'bitmesra@gmail.com', 'bitmesra', '1955', 'Polytechnic College', 'Ranchi University', '+(91)-651-2275444, 2275896, 2276052, 2275868  +(91', 'Monday, Tuesday, Wednesday, Thursday, Friday: 08:00 am to 04:00 pm Saturday: 08:00 am to 12:00 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday: 08:00 am to 04:00 pm Saturday: 08:00 am to 12:00 pm ', 'We believes in students development........'),
(47, 'hhhhhhhhhh', 'gggggggggggg', 'gbggggggggg', 'Co-education', 'dgsg@shh.vchh', 'nnnnnnnnnnnnn', 'nnnnnnnnnn', 'Arts and Science College', 'JAC Board', 'jjjjjjjjjjjjjj', 'jjjjjjjjjjjj', 'jjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjj'),
(48, 'dfg', 'fg', 'fg', 'Co-education', 'thg@fjg.vbm', 'fg', 'cfgbg', 'Arts and Science College', 'Ranchi University', 'jjjjjjjjjjjjjj', '334', 'edf', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `collegeaddmiss`
--

CREATE TABLE IF NOT EXISTS `collegeaddmiss` (
  `c_regno` int(11) NOT NULL AUTO_INCREMENT,
  `a_rollno` int(11) NOT NULL,
  `a_cname` varchar(50) NOT NULL,
  `a_cclass` varchar(50) NOT NULL,
  `a_apname` varchar(50) NOT NULL,
  `a_gender` varchar(50) NOT NULL,
  `a_dob` varchar(50) NOT NULL,
  `a_fname` varchar(50) NOT NULL,
  `a_foccup` varchar(50) NOT NULL,
  `a_mname` varchar(50) NOT NULL,
  `a_moccup` varchar(50) NOT NULL,
  `a_nationality` varchar(50) NOT NULL,
  `a_category` varchar(50) NOT NULL,
  `a_address` varchar(50) NOT NULL,
  `a_city` varchar(50) NOT NULL,
  `a_pin` varchar(6) NOT NULL,
  `a_contact` varchar(50) NOT NULL,
  `a_email` varchar(100) NOT NULL,
  `a_nopcolleg` varchar(100) NOT NULL,
  `a_copcol` varchar(100) NOT NULL,
  `a_pmarks` varchar(100) NOT NULL,
  `a_grade` varchar(20) NOT NULL,
  `a_university` varchar(200) NOT NULL,
  `a_image` varchar(2000) NOT NULL,
  PRIMARY KEY (`c_regno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `collegeaddmiss`
--

INSERT INTO `collegeaddmiss` (`c_regno`, `a_rollno`, `a_cname`, `a_cclass`, `a_apname`, `a_gender`, `a_dob`, `a_fname`, `a_foccup`, `a_mname`, `a_moccup`, `a_nationality`, `a_category`, `a_address`, `a_city`, `a_pin`, `a_contact`, `a_email`, `a_nopcolleg`, `a_copcol`, `a_pmarks`, `a_grade`, `a_university`, `a_image`) VALUES
(1, 0, 'Ranchi Womens College, Ranchi', 'Science', 'Swati Kumari', 'Female', '13/10/1996', 'Krishna Kumar', 'Service man', 'Mamta Devi', 'Service women', 'Indian', 'General', 'Tatisilwai, Ranchi', 'Ranchi', '835103', '7870316607', 'swatikumari@gmail.com', 'Marwari College', '3', '78%', 'A', 'Ranchi University', ''),
(2, 0, 'Marwari College', 'MBA', 'Priyanka Kumari', 'Female', '10/3/1997', 'Krishna Kumar', 'Service man', 'Mamta Devi', 'Service women', 'Indian', 'OBC', 'Tatisilwai .  Ranchi', 'Ranchi', '835103', '8271947955', 'priyankakumari@gmail.com', 'Ranchi Womens college', 'Graduate', '80%', 'A', 'Ranchi University', ''),
(5, 0, 'Marwari Colege', 'Management', 'Swati Kumari', 'Female', '13/10/1990', 'Krishna Kumar', 'Seviceman', 'Mamta Devi', 'Homemaker', 'Indian', 'General', 'Tatisilwai Ranchi.', 'Ranchi', '835105', '9898989898', 'sweetswati@gmail.com', 'Ranchi Womens College', 'BBA', '78%', '2nd', 'Ranchi University', ''),
(6, 0, 'Marwari Colege', 'Management', 'Swati Kumari', 'Female', '13/10/1990', 'Krishna Kumar', 'Seviceman', 'Mamta Devi', 'Homemaker', 'Indian', 'General', 'Tatisilwai Ranchi.', 'Ranchi', '835105', '9898989898', 'sweetswati@gmail.com', 'Ranchi Womens College', 'BBA', '78%', '1st', 'Ranchi University', ''),
(7, 0, 'Marwari Colege', 'Management', 'Swati Kumari', 'Female', '13/10/1990', 'Krishna Kumar', 'Seviceman', 'Mamta Devi', 'Homemaker', 'Indian', 'General', 'Tatisilwai Ranchi.', 'Ranchi', '835105', '9898989898', 'sweetswati@gmail.com', 'Ranchi Womens College', 'BBA', '78%', '1st', 'Ranchi University', '1.png'),
(8, 0, 'Marwari Colege', 'Management', 'Swati Kumari', 'Female', '13/10/1990', 'Krishna Kumar', 'Seviceman', 'Mamta Devi', 'Homemaker', 'Indian', 'General', 'Tatisilwai Ranchi.', 'Ranchi', '835105', '9898989898', 'sweetswati@gmail.com', 'Ranchi Womens College', 'BBA', '79%', '1st', 'Ranchi University', '130212114335_xaviersinstituteofsocia.jpg'),
(9, 0, 'hf', 'Arts', 'hgh', 'Male', 'fhfjhkgjjggj', 'jjfj', 'ggg', 'gghg', 'hghghg', 'Indian', 'SC', 'yuyyuyy', 'yuyy', 'uyy', 'uyuy', 'yuy@jhk.djkh', 'hj', 'Arts', 'tyt', 'yt', 'Ranchi University', '1.png'),
(10, 0, 'Ranchi Womens College, Ranchi', 'Science', 'Swati Kumari', 'Female', '13/10/2005', 'S.K.Pandey', 'Seviceman', 'Meera Devi', 'Homemaker', 'Indian', 'General', 'Ratu Road, Ranchi', 'Ranchi', '835100', '9898989898', 'sweetswati@gmail.com', 'Carmel Convent', 'others', '80%', 'A', 'Ranchi University', '11012010782.jpg'),
(11, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`name`, `email`, `message`) VALUES
('hhhhhh', 'hhhhhhh', 'jjjjjjjjj'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('ghgh', 'fdfdd', 'srreretr'),
('ghgh', 'fdfdd', 'srreretr'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('hggghg', 'hhh', 'ththjyjjyk'),
('hggghg', 'hhh', 'ththjyjjyk'),
('hggghg', 'hhh', 'ththjyjjyk'),
('Swati Kumari', 'swatikumari@gmail.com', 'I love using this project.......'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fair`
--

CREATE TABLE IF NOT EXISTS `fair` (
  `f_reg` int(50) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(300) NOT NULL,
  `f_venue` varchar(300) NOT NULL,
  `f_date` varchar(100) NOT NULL,
  `f_time` varchar(100) NOT NULL,
  PRIMARY KEY (`f_reg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fair`
--

INSERT INTO `fair` (`f_reg`, `f_name`, `f_venue`, `f_date`, `f_time`) VALUES
(1, 'Educational Fair', 'Landmark', '09/04/2014', '11:30 PM'),
(2, 'Shikshah Fair', 'Capital Hill', '09/09/2014', '12:30 PM'),
(3, 'Carrer Mela', 'Zila School. Ranchi', '21/7/2014', '11:00 AM'),
(4, 'Educational Fair', 'Arya Hotel', '22/7/2014', '1:00pm'),
(5, 'Education Mela', 'Zila School. Ranchi', '20/7/2014', '11:00am'),
(6, 'Shikha mela', 'Capital Hill', '12/7/2014', '07:20AM');

-- --------------------------------------------------------

--
-- Table structure for table `institute11`
--

CREATE TABLE IF NOT EXISTS `institute11` (
  `i_regno` int(11) NOT NULL AUTO_INCREMENT,
  `i_name` varchar(100) NOT NULL,
  `i_head` varchar(100) NOT NULL,
  `i_address` varchar(500) NOT NULL,
  `i_fee` varchar(500) NOT NULL,
  `i_email` varchar(300) NOT NULL,
  `i_password` varchar(200) NOT NULL,
  `i_estd` varchar(100) NOT NULL,
  `i_institut` varchar(300) NOT NULL,
  `i_affiliat` varchar(200) NOT NULL,
  `i_contactno` varchar(100) NOT NULL,
  `i_otimming` varchar(300) NOT NULL,
  `i_btimming` varchar(300) NOT NULL,
  `i_remark` varchar(500) NOT NULL,
  PRIMARY KEY (`i_regno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1003 ;

--
-- Dumping data for table `institute11`
--

INSERT INTO `institute11` (`i_regno`, `i_name`, `i_head`, `i_address`, `i_fee`, `i_email`, `i_password`, `i_estd`, `i_institut`, `i_affiliat`, `i_contactno`, `i_otimming`, `i_btimming`, `i_remark`) VALUES
(1001, 'Alpine', 'xyz', 'Shop No 203 & 206, Hari Om Tower, Opposite Womens College, Circular Road, Lalpur, Ranchi - 834001. <a href="#">www.alpineinfotec.net</a>', 'Institutes for Banking Education(18,000)', 'alpineinfotec@gmail.com', 'alpineinfotec', 'N/A', 'Institutes for Banking Education', 'none', '+(91)-651-2563907, +(91)-9708688457', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 07:00 am to 07:00 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 07:00 am to 07:00 pm ', 'We have well experienced faculties.............'),
(1002, 'Alpine', 'xyz', 'Shop No 203 & 206, Hari Om Tower, Opposite Womens College, Circular Road, Lalpur, Ranchi - 834001. <a href="#">www.alpineinfotec.net</a>', 'MCA Institutes(25,000)', 'alpineinfotec@gmail.com', 'alpineinfotec', 'N/A', 'MCA Institutes', 'none', '+(91)-651-2563907, +(91)-9708688457', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 07:00 am to 07:00 pm ', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday: 07:00 am to 07:00 pm ', 'We have well experienced faculties.............');

-- --------------------------------------------------------

--
-- Table structure for table `project11`
--

CREATE TABLE IF NOT EXISTS `project11` (
  `p_regno` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(200) NOT NULL,
  `p_address` varchar(500) NOT NULL,
  `p_fee` varchar(200) NOT NULL,
  `p_email` varchar(200) NOT NULL,
  `p_password` varchar(200) NOT NULL,
  `p_estd` varchar(200) NOT NULL,
  `p_projec` varchar(200) NOT NULL,
  `p_contactno` varchar(70) NOT NULL,
  `p_otimming` varchar(500) NOT NULL,
  `p_ctimming` varchar(500) NOT NULL,
  `p_remark` varchar(500) NOT NULL,
  PRIMARY KEY (`p_regno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `project11`
--

INSERT INTO `project11` (`p_regno`, `p_name`, `p_address`, `p_fee`, `p_email`, `p_password`, `p_estd`, `p_projec`, `p_contactno`, `p_otimming`, `p_ctimming`, `p_remark`) VALUES
(1, 'SSSSSSSSSSSSSS', 'jjjjjjjjjjjjjjjj', 'C,C++(5,000)', 'dgggg@sf.cjd', 'hccccccccccc', 'ncncn', 'Oracle(4500)', '345666777', '334', '55666', 'ggggggggggggg');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `s_reg` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) NOT NULL,
  `s_principle` varchar(50) NOT NULL,
  `s_address` varchar(200) NOT NULL,
  `s_stype` varchar(50) NOT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_password` varchar(200) NOT NULL,
  `s_etype` varchar(50) NOT NULL,
  `s_education` varchar(50) NOT NULL,
  `s_board` varchar(50) NOT NULL,
  `s_contact` varchar(50) NOT NULL,
  `s_otimming` varchar(200) NOT NULL,
  `s_stimming` varchar(200) NOT NULL,
  `s_remark` varchar(200) NOT NULL,
  PRIMARY KEY (`s_reg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`s_reg`, `s_name`, `s_principle`, `s_address`, `s_stype`, `s_email`, `s_password`, `s_etype`, `s_education`, `s_board`, `s_contact`, `s_otimming`, `s_stimming`, `s_remark`) VALUES
(3, 'Delhi Public School', 'xyz', 'Sail Township,Dhurwa,Ranchi- 834004.<br> <a href="page_dpsschool.php">www.dpsschool.in</a>', 'Co-education', 'dpsschool@gmail.com', 'dpsschool', '1989', '10+2', 'CBSE', ' +(91)-651-2441176, 2440277	', '9:00 am', '9:00 am to 4:00 pm', 'We provide students a friendly'),
(4, 'Cambrian Public School', 'xyz', 'Kanke Road, Ranchi - 834008.<br><a href=page_cambrian.php>www.cambrianschool.com</a>', 'Co-education', 'cambrianpublicschool@gmail.com', 'cambrianpublicschool', ' N/A', '10+2', 'CBSE', ' +(91)-651-2232093, 2231041	', '9:00am', '9:00 am to 3:00 pm', 'We Provide students a good com'),
(5, 'Central Academy', 'xyz', 'Bariatu Rd, Bariatu, Ranchi -834009.<br><a href="page_central.php">www.centralacademy.com </a>', 'Co-education', 'centralacademy@gmail.com', 'centralacademy', ' N/A', '10+2', 'CBSE', '+(91)-9835331052  +(91)-651-25', '10:00am to 12:00noon', '8:00am to 2:00pm', 'We provide student a well educ'),
(6, 'D A V Public School', 'xyz', 'Hehal Road, Hehal, Ranchi - 834005.<br><a href="page_davschool.php">www.davpublicschool.in</a>', 'Co-education', 'davpublicschool@gmail.com', 'davpublicschool', 'N/A', '10+2', 'CBSE', '+(91)-651-2513253', '11:00am to 1:00pm', '8:00am to 3:00pm', 'we love teaching'),
(7, 'Guru Nanak Higher Secondary Sc', 'xyz', 'Pepee Compound, Ranchi - 834001.<br><a href="page_gnhsschool.php">www.gurunanakschool.in</a>', 'Co-education', 'gurunanakhighersecondaryschool', 'gurunanak', 'N/A', '10+2', 'CBSE', '+(91)-651-2331784', '11:00am to 1:00pm', '8:00am to 3:00pm', 'We provide students a good env'),
(8, 'Jawahar Vidya Mandir', 'xyz', 'Mecon Colony, Ranchi GPO, Ranchi-834001.<br><a href="page_jvmandir.php">www.jawaharvidyamandir</a>', 'Co-education', 'jawaharvidyamandir@gmail.com', 'jawaharvidyamandir', 'N/A', '10+2', 'CBSE', '+(91)-651-2411221', '11:00am to 1:00pm', '8:00am to 4:00pm', 'We provide students  a good en'),
(9, 'Sarala Birla Public School', 'xyz', 'Mahilong, Purulia Main Road, Tatisilwai.Ranchi-835103.<br><a href="page_sbpschool.php">www.saralabirlapublicschool.com</a>', 'Co-education', 'saralabirlapublicschool@gmail.', 'saralabirlapublicschool', 'N/A', '10+2', 'CBSE', ' +(91)-651-6452850, 2265823	', '10:00am to 12:00noon', '8:00am to 2:00pm', 'We have a good campus and well'),
(10, 'Surendranath Centenary School', 'xyz', 'Hazaribagh Rd,Dipatoli, Ranchi-834009.<br><a href="page_scschool.php">www.surendranathcentenaryschool.com</a>', 'Co-education', 'surendranathschool@gmail.com', 'surendranathschool', 'N/A', '10+2', 'CBSE', ' +(91)-651-2543806, 2543887	', '11:00am to 1:00pm', '8:00 am to 2:00 pm', 'Well educated teachers........'),
(11, 'Tender Heart Sr Sec School', 'xyz', 'Tupudana, Hatia, Ranchi - 834003.<br><a href="page_tenderheart.php">www.tenderheartschool.in</a>', 'Co-education', 'tenderheartschool@gmail.com', 'tenderheartschool', 'N/A', '10+2', 'CBSE', ' +(91)-651-2291546, 3208106	', '11:00am to12:00noon', '8:00am to 2:00pm', 'We have well educated and expe'),
(12, 'Kairali School', 'xyz', 'Hec Township,Sector 2, Dhurwa,Ranchi-834004.<br><a href="page_kairalischool.php">www.kairalischool.com</a>', 'Co-education', 'kairalischool@gmail.com', 'kairalischool', 'N/A', '10+2', 'CBSE', ' +(91)-651-2442484, 2443016	', '10:00am to 12:00noon', '8:00am to 2:00pm', 'We have well qualified teacher'),
(16, 'Bishop Westcott Boys School', 'xyz', 'Namkum, Ranchi - 834010.<br><a href="page_bishopwbschool.php">www.bishopwestcottschool.com</a>', 'Boys school', 'bishopwestcottschool@gmail.com', 'bishopwestcottschool', 'N/A', '10+2', 'ICSE', ' +(91)-651-2260247, 2260934	', '11:00 am to1:00pm', '8:00 am to 3:00pm', ''),
(17, 'Bishop Westcott Girls School', 'xyz', 'Near Nepal House, Nepal House Road, Doranda, Ranchi - 834002.<br><a href="page_bishopwgschool.php">www.bishopwestcottgirlsschool.com</a>', 'Girls school', 'bishopwestcottgirlsschool@gmai', 'bishopwestcottgirlsschool', 'N/A', '10+2', 'ICSE', '+(91)-651-2490527', '11:00am to 1:00pm', '8:00am to 3:00pm', ''),
(18, ' W John Multipurpose Boarding ', 'xyz', 'Piska Nagri, Hatia, Ranchi - 834003.<br><a href="page_wjbschool.php">www.wjohnmultipurposeschool.in</a>', 'Bourding school', 'wjohnschool@gmail.com', 'wjohnschool', 'N/A', '10+2', 'ICSE', ' +(91)-651-2775614, +(91)-9431161380', '9:00am to 10:00am', '8:00am to 2:30pm', ''),
(19, 'Don Bosco School', 'xyz', 'Khoratoli, Kokar, Ranchi - 834001.<br><a href="page_donbschool.php">www.donboscoschool.com</a>', 'Co-education', 'donboscoschool@gmail.com', 'donboscoschool', 'N/A', '10+2', 'ICSE', '+(91)-651-2532659', '8:10am to 11:00pm', '8:00am to 1:30pm', ''),
(20, 'Bishops School', 'xyz', 'Old H B Rd, Ranchi GPO, Ranchi- 834001.<br><a href="page_bishopsschool.php">www.bishopsschool.com</a>', 'Co-education', 'bishopsschool@gmail.com', 'bishopsschool', 'N/A', '10+2', 'ICSE', ' +(91)-651-2350344, 2350885	', '10:00am to 11:30pm', '7:00 am to 1:00pm', ''),
(21, 'Loreto Convent School', 'xyz', 'Doranda Head Post Office, Ranchi-GPO, Ranchi - 834001.<br><a href="page_loratoconvent.php">www.loretoconventschool.in</a>', 'Co-education', 'loretoconventschool@rediffmail.in', 'loretoconventschool', 'N/A', '10+2', 'ICSE', '+(91)-651-2410042', '10:30am to12:00pm', '8:00am to 2:00pm', ''),
(22, 'Mt Carmel High School', 'xyz', 'Subernrekha Hydel Power Project , Sikidri, H B Road New, Ranchi - 834001.<a href="page_mtcarmel.php">www.mtcarmelhighschool</a>', 'Girls school', 'carmelschool@rediffmail.com', 'carmelschool', 'N/A', '10+2', 'ICSE', '+(91)-9470563788', '10:30am to12:00pm', '8:00am to 2:00pm', ''),
(23, 'Seventh Day Adventist Senior School', 'xyz', 'Torpa Road, Khunti, Ranchi -  835210.<br><a href="page_seventhday.php">www.seventhdayadventistschool.com</a>', 'Co-education', 'seventhdayschool@rediffmail.com', 'seventhdayschool', '1937', '10+2', 'ICSE', '+(91)-9431115174', '10:30am to12:00pm', '8:00am to 2:00pm', ''),
(24, 'ST Mathias School', 'xyz', 'Sithiyo, Ranchi Lodhma Road,  Dhurwa, Ranchi - 834004.<br><a href="page_stm.php">www.stmathiasschool.in</a>', 'Boys school', 'stmathias@rediffmail.com', 'stmathias', 'N/A', '10+2', 'ICSE', ' +(91)-651-6570712, +(91)-9430', '10:30am to12:00pm', '8:00am to 2:00pm', ''),
(25, 'St Thomas School', 'xyz', 'Sector 3, Dhurwa, Ranchi - 834004<br><a href="page_stthomas.php">www.stthomasschool.com</a>', 'Co-education', 'stthomasschool@rediffmail.com', 'stthomasschool', 'N/A', '10+2', 'ICSE', ' +(91)-651-2446649, 2446180	', '10:30am to12:00pm', '8:00am to 2:00pm', ''),
(26, 'Bachpan..a Play School', 'Meena ', 'Mothers Treasure, ASCI,  Karamtoli, Karam Toli Chowk, Ranchi - 834001.<a href="page_bachpan.php">www.bachpanplayschool.com', 'Co-education', 'bachpanmothertreasure@gmail.com', 'bachpanmothertreasure', 'N/A', 'Playschool', 'Play school', ' +(91)-9431907776, 9334208731	', '9:00am to 10:00am', '8:00am to 10:00am', 'We provide the student a good and friendly environment.'),
(27, 'Chiranjeevee Play School', 'xyz', 'Behind Divyan, Kusum Vihar, Road No 4 A, Morabadi, Ranchi - 834008.  <a href="page_charanjeevee.php">www.chiranjeeveeplayschool.com</a>', 'Co-education', 'www.chiranjeeveeplayschool.com', 'chiranjeeveeplayschool', 'N/A', 'Playschool', 'Play school', '+(91)-651-2550269, +(91)-94313', '9:00am to 10:00am', '8:00am to 10:00am', ''),
(28, 'Creative Kids.... A play School', 'xyz', 'Govind Nagar, Kathitand, Ratu,Ranchi -835222.<br><a href="page_creativekids.php">www.creativekids.com</a>', 'Co-education', 'creativekids@rediffmail.com', 'creativekids', 'N/A', 'Playschool', 'Play school', ' +(91)-9263393736, 8797543076	', '9:00am to 10:00am', '8:00am to 10:00am', ''),
(29, 'Hansel N Gretel Kids Play School', 'xyz', 'New Area, Balihar Road, Morabadi, Ranchi - 834008.<br><a href="page_hansel.php">www.hanselngretelkids.in</a>', 'Co-education', 'hanselngretelkids@gmail.com', 'hanselngretelkids', 'N/A', 'Playschool', 'Play school', '+(91)-9430364606', '9:00am to 10:00am', '8:00am to 10:00am', ''),
(30, 'Just Kids Play School', 'xyz', 'Near Bank Of India, Ratu Road,Hehal, Ranchi - 834005.<br><a href="page_justkids.php">www.justkids.co.in</a>', 'Co-education', 'justkidsplayschool@gmail.com', 'justkidsplayschool', 'N/A', 'Playschool', 'Play school', '+(91)-9835176464, 9279977460', '9:00am to 2:00pm', '9:00am to 2:00pm', ''),
(31, 'Little Flower School', 'xyz', 'Near DAV Kapil Dev School,Kadrru, Saket Vihar, Harmu, Kadru, Ranchi - 834002.             <a href="page_littleflower.php">www.littleflowerschool.com</a>', 'Co-education', 'littleflowerschool@gmail.com', 'littleflowerschool', '1996', 'Playschool', 'Play school', ' +(91)-9931100667', 'Monday to Saturday 08:30 am to', '08:30 am to 02:00 pm ', ''),
(32, ' Play House Galary', 'xyz', 'Gel Church Shopping Complex, Opposite Sainik Market, Main Road, Ranchi - 834001.          <a href="page_playhouse.php">www.playhousegalary.com</a>', 'Co-education', 'playhousegalary@gmail.com', 'playhousegalary', ' 1988', 'Playschool', 'Play school', '+(91)-9431103038, 9534398111  ', 'Monday to Saurday 09:30 am to ', '9:00am to 2:00pm', ''),
(33, 'Rainbow Play School', 'xyz', 'Ohc, A 28, Sector 2, Dhurwa, Ranchi - 834004.<br><a href="page_rainbow.php">www.rainbowplayschool.com</a>', 'Co-education', 'rainbowplayschool@gmail.com', 'rainbowplayschool', ' 2012', 'Playschool', 'Play school', '+(91)-8809978568, 9304352761', 'Monday to Saurday 09:30 am to ', '9:00am to 2:00pm', ''),
(34, ' Step By Step Play School', 'xyz', 'B-319, Gate No. 2 Road No. 2,  Ashok Nagar, Ranchi - 834002.                 <a href="page_stepbystep.php">www.stepbystepplayschool.com</a>', 'Co-education', 'stepbystepplayschool@gmail.com', 'stepbystepplayschool', ' 2013', 'Playschool', 'Play school', ' +(91)-651-6571125, +(91)-8877884411', 'Monday to Friday 09:00 am to 1:00pm', '9:00am to 11:00am', ''),
(35, 'The Tree House Play School', 'xyz', '10 A Purulia Road Kantatoli chowk Ranchi-834001<br><a href="page_treehouse.php">www.treehouse.com', 'Co-education', 'thetreehouseplayschool@gmail.com', 'thetreehouse', 'N/A', 'Playschool', 'Play school', ' +(91)-651-222222, +(91)-9835769072', 'Monday to Friday 09:00 am to 1:00pm', '9:00am to 11:00am', ''),
(36, 'Alpha International School', 'xyz', '227 B, Road No. 3, Ashok Nagar.Kadru.Ranchi. <a href="page_alpha.php">www.alphainternationalschool.php', 'Co-education', 'alphainternationalschool@gmail.com', 'alphainternationalschool', 'n/a', '10+2', 'International School', '(+91)-2265103', 'Monday to Saturday 10:00am to 12:00pm', '08:30 am to 02:00 pm', ''),
(37, 'Apollo Public Sr. Sec. School', 'xyz', 'Firayalal Chowk.Purulia Road. Ranchi-834001. <br><a href="page_apollo.php">www.apollopublicschool</a>\r\n', 'Bourding school', 'appllopublicschool@gmail.com', 'appllopublicschool', '2000', '10+2', 'International School', '+(91)-9888711980, 9888891984', 'Montay to Saturday 10:00am to 2:00pm', '9:00am to 3:00pm', ''),
(38, '     SAPHIRE INTERNATIONAL SCH', 'xyz', ' 12th MILESTONE, RANCHI - KHUN', 'Co-education', ' info@sisranchi.com, admission', 'saphireschool', 'N/A', '10+2', 'International School', ' +91 9835914577, +91 930418139', '', '', ''),
(39, 'Taurian World School', 'xyz', 'Knowledge City, Village: Hazam', 'Bourding school', 'bhavik.anjaria@tws.edu.in', 'bhavikanjaria', 'N/A', '10+2', 'International School', '+91 9308991112/3/4 ', '', '', ''),
(40, 'Sai International School', 'xyz', 'sedfffg', 'Co-education', 'xyz@gmail.com', 'xyzxyzxyz', '1980', '10+2', 'International School', '8989898989', '5:08pm', '3:00am to 7:00pm', 'cfgvhbjnfcghb'),
(41, 'D A V  International School', '', '', 'select', '', '', '', 'Select', 'Select', '', '', '', ''),
(44, 'Usline Convent School', 'xyz', 'Purulia Road,Camil Blunk.Main Road.Ranchi-834001. <br><a href="page_uslineconvent.php">www.uslineconventschool.com</a>', 'Girls school', 'uslineconventschool@gmail.com', 'uslineconventschool', '1984', '10th', 'JAC', '(+91)-2265123', 'Monday to Saturday 10:00am to 1:00pm', '8:00am to 2:00pm', 'We have well qualified teacher'),
(45, 'St. Anna Convent School', 'xyz', 'Purulia Road,Samlong.Ranchi-834001. <br><a href="page_stannaschool.php">www.stannaconventschool.com</a>', 'Girls school', 'saintannaschool@gmail.com', 'saintannaschool', '1987', '10th', 'JAC', '(+91)-2265123', 'Monday to Saturday 10:00am to 1:00pm', '8:00am to 2:00pm', 'We have well qualified teacher'),
(46, 'High School', 'xyz', 'Behind Usha Martin colony. Tatisilwai. Ranchi-835103. <br><a href="page_highschool.php">www.highschool.com</a>', 'Co-education', 'highschool@gmail.com', 'highschool', '1987', '10th', 'JAC', '(+91)-2265123', 'Monday to Saturday 10:00am to 1:00pm', '8:00am to 2:00pm', 'We have well qualified teacher'),
(47, 'Assisi  High School', 'xyz', 'Purulia Road,samlong Ranchi-834001. <br><a href="page_assisischool.php">www.assisischool.php</a>', 'Boys school', 'asisischool@gmail.com', 'asisischool', '1987', '10th', 'JAC', '(+91)-2265123', 'Monday to Saturday 10:00am to 12:00pm', '8:00am to 2:00pm', 'We have well qualified teacher'),
(48, 'St. Aloysius High School', 'xyz', 'Purulia Road,Main Road. Ranchi-834001. <br><a href="page_stalyous.php">www.staloyousschool</a>', 'Boys school', 'staloysiusschool@gmail.com', 'staloysiusschool', '1987', '10th', 'JAC', '(+91)-2265123', 'Monday to Saturday 10:00am to 2:00pm', '8:00am to 2:00pm', 'We have well qualified teacher'),
(49, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'Carmel School', 'xyz', 'Ranchi', 'Girls school', 'carmelschool@gmail.com', 'carmelschool', '1998', '10+2', 'ICSE', '9898989898', '9:00am', '8:00am to 2:pm', 'We provide students a good communication skills'),
(51, 'gyan', 'raj', 'kfdsjfkldsjf', 'Co-education', 'ram@gmail.com', 'ram', '34/33/3333', '10+2', 'CBSE', '4444444444', '10:00to 12:00', '12:00 4:55', 'dfdfdsfdsfd');

-- --------------------------------------------------------

--
-- Table structure for table `useats`
--

CREATE TABLE IF NOT EXISTS `useats` (
  `class` varchar(30) NOT NULL,
  `noofseat` int(11) NOT NULL,
  KEY `class` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useats`
--

INSERT INTO `useats` (`class`, `noofseat`) VALUES
('1', 2),
('1', 2),
('1', 2),
('1', 2),
('1', 2),
('1', 2),
('1', 2),
('1', 2),
('2', 1),
('2', 1),
('2', 1),
('5', 2),
('11', 20);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `useats`
--
ALTER TABLE `useats`
  ADD CONSTRAINT `useats_ibfk_1` FOREIGN KEY (`class`) REFERENCES `aseats` (`class`) ON UPDATE CASCADE;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE IF NOT EXISTS `stu` (
  `roll` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `ph` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`roll`, `name`, `course`, `gender`, `ph`) VALUES
(1, 'krishna', 'MCA', 'Male', 99343738),
(2, 'kajal', 'MCA', 'Female', 85392545),
(3, 'neha', 'MCA', 'female', 87895658);
--
-- Database: `school_information`
--
CREATE DATABASE IF NOT EXISTS `school_information` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_information`;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `registration_no` mediumint(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(60) NOT NULL,
  `block` varchar(12) NOT NULL,
  `house_no` int(11) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `department` varchar(12) NOT NULL,
  `action_timing` varchar(14) NOT NULL,
  `complain` text NOT NULL,
  `complain_no` bigint(100) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`complain_no`),
  UNIQUE KEY `registration_no` (`registration_no`),
  UNIQUE KEY `registration_no_2` (`registration_no`),
  UNIQUE KEY `registration_no_3` (`registration_no`),
  UNIQUE KEY `registration_no_4` (`registration_no`),
  UNIQUE KEY `registration_no_5` (`registration_no`),
  UNIQUE KEY `registration_no_6` (`registration_no`),
  UNIQUE KEY `registration_no_9` (`registration_no`),
  KEY `registration_no_7` (`registration_no`),
  KEY `registration_no_8` (`registration_no`),
  KEY `registration_no_10` (`registration_no`),
  KEY `registration_no_11` (`registration_no`),
  KEY `registration_no_12` (`registration_no`),
  KEY `registration_no_13` (`registration_no`),
  KEY `registration_no_14` (`registration_no`),
  KEY `registration_no_15` (`registration_no`),
  KEY `registration_no_16` (`registration_no`),
  KEY `registration_no_17` (`registration_no`),
  KEY `registration_no_18` (`registration_no`),
  KEY `registration_no_19` (`registration_no`),
  KEY `registration_no_20` (`registration_no`),
  KEY `registration_no_21` (`registration_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1000119 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`registration_no`, `name`, `date`, `address`, `block`, `house_no`, `mobile_no`, `email`, `department`, `action_timing`, `complain`, `complain_no`, `emp_id`, `emp_name`, `create_date`, `status`) VALUES
(109, 'NEHA SINGH', '2014-04-23', 'jharia', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'EVENING', 'water supply not come timely', 1000101, 'WA101', 'SANJAY', '0000-00-00', 'close'),
(108, 'Nisha SINGH', '2014-04-23', 'jharia', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'EVENING', 'water supply not come timely', 1000102, 'WA101', 'SANJAY', '0000-00-00', ''),
(105, 'PRIYA KUMARI', '2014-04-18', 'jharia', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'EVENING', 'cleaning not done timely', 1000103, 'WA104', 'NITESH', '2014-06-02', ''),
(116, 'PRIYANKA KUMARI', '2014-05-08', 'BHAGATDIH BEHIND OF VIKASH BHAWAN', 'A', 43, 2147483647, 'beauty@gmail.com', 'WATER', 'MORNING', 'WATER PIPE IS LINKING ', 1000104, 'WA104', 'NITESH', '2014-06-05', ''),
(104, 'beauty', '2014-05-23', 'jharia', 'A', 1, 2147483647, 'beauty@gmail.com', 'WATER', 'MORNING', 'water supply not come timely', 1000105, 'WA101', 'SANJAY', '0000-00-00', ''),
(111, 'PRIYANKA KUMARI', '2014-05-23', 'BHAGATDIH BEHIND OF VIKASH BHAWAN', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'MORNING', 'water supply not come timely', 1000106, 'WA105', 'RAHUL', '2014-06-12', 'close'),
(102, 'kukum', '2014-06-05', 'jharia', 'A', 5, 2147483647, 'be@gmail.com', 'WATER', 'MORNING', 'nkjiji', 1000107, 'WA105', 'RAHUL', '2014-06-12', ''),
(103, 'sunil', '2014-06-26', 'doranda', 'B', 67, 2147483647, 'sunil@gmail.com', 'WATER', 'EVENING', 'not come properly', 1000108, 'WA101', 'SANJAY', '0000-00-00', ''),
(107, 'pooja', '2014-06-06', 'hinoo', 'A', 34, 2147483647, 'pooja@gmail.com', 'WATER', 'on', '  not come timely', 1000111, 'WA106', 'RAJU', '2014-06-06', ''),
(110, 'pooja', '2014-06-06', 'hinoo', 'A', 34, 2147483647, 'pooja@gmail.com', 'WATER', 'on', '  not come', 1000116, 'WA102', 'BRAJESH YADAV', '0000-00-00', ''),
(106, 'fff', '2014-06-19', 'vhghjgj', 'A', 23, 2147483647, 'beauty@gmail.com', 'WATER', '', '  vbngvmhjh', 1000118, 'WA105', 'RAHUL', '2014-06-12', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `EMPLOYEE_NAME` varchar(50) NOT NULL,
  `JOB_REFERENCES` varchar(30) NOT NULL,
  `DEPARTMENT` varchar(30) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `E_MAIL` varchar(30) NOT NULL,
  `password` varchar(90) NOT NULL,
  `PHONE_NO` bigint(80) NOT NULL,
  `no_of_work` int(11) NOT NULL,
  `complain_no` text NOT NULL,
  `complain_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_NAME`, `JOB_REFERENCES`, `DEPARTMENT`, `ADDRESS`, `DATE_OF_BIRTH`, `E_MAIL`, `password`, `PHONE_NO`, `no_of_work`, `complain_no`, `complain_date`) VALUES
('SANJAY', 'WA101', 'WATER', 'JHARIA', '2014-05-23', 'sanjay@gmail.com', 'sanjay', 2147483647, 7, '1000116;', '0000-00-00'),
('DEEPAK', 'CIV301', 'CIVIL', 'MASJID GALI,SHYAMALI,RANCHI,JHARKHAND', '0000-00-00', 'deepak@gmail.com', 'deepak', 2147483647, 0, '', '2014-05-15'),
('BRAJESH YADAV', 'WA102', 'WATER', 'JHARIA', '0000-00-00', 'brajesh@gmail.com', 'brajesh', 9905221367, 5, '1000116;', '0000-00-00'),
('PRAKASH', 'WA103', 'WATER', 'JHAMESHPUR', '2014-05-02', 'prakash@gmail.com', '', 9876987654, 2, '1000102;1000101;', '0000-00-00'),
('NITESH', 'WA104', 'WATER', 'DORANDA', '1990-05-08', 'nitesh@gmail.com', 'nitesh', 7654765489, 4, '1000104;1000103;1000102;', '2014-06-05'),
('GAUTAM', 'ELEC109', 'ELECTRICITY', 'TUPUDANA', '1990-05-01', 'gautam@gmail.com', 'gautam', 8765876543, 0, '', '2014-05-15'),
('NIRAJ', 'CIV105', 'CIVIL', 'BOKARO', '1990-05-08', 'niraj@gmail.com', 'niraj', 7654765432, 0, '', '2014-05-15'),
('RAHUL', 'WA105', 'WATER', 'LALPUR', '1989-05-08', 'rahul@gmail.com', 'rahul', 7654890321, 3, '1000118;', '2014-06-12'),
('RAJU', 'WA106', 'WATER', 'HINOO', '2014-05-01', 'raju@gmail.com', 'raju', 8765876543, 3, '1000111;', '2014-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `eng_mks`
--

CREATE TABLE IF NOT EXISTS `eng_mks` (
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `eng_mks`
--

INSERT INTO `eng_mks` (`e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`, `id`) VALUES
(22, 'sanjay', 'a', 'rrr', 11, 33, 1),
(31, 'kanchan', 'a', '54', 343, 34, 2),
(31, 'kanchan', 'a', '4466', 88, 999, 3),
(31, 'kanchan', 'a', '2111', 33, 44, 4),
(31, 'kanchan', 'a', '33', 55, 33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator`
--

CREATE TABLE IF NOT EXISTS `evaluator` (
  `ev_id` int(11) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `evaluator`
--

INSERT INTO `evaluator` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`, `id`) VALUES
(1, 'eng', '76', 'ggg', 'English', 'hhh', 43),
(3, 'ram', '1', 'q', 'Hindi', 'r', 19),
(4, 'baatul', '1', 'Baatul@rediffmail.com', 'Hindi', 'mun', 20),
(17, 'box', '12', 'rt', 'Math', 'hhh', 19),
(20, 'bbb', '1', 're', 'English', 'bbb', 51),
(23, 'aaa', '222', 'eee', 'English', 'aaa', 52),
(24, 'ddd', '222', 'ddd', 'Math', 'ddd', 20),
(25, 'subir', '12345', 'www', 'Science', 'subir', 14),
(26, 'ravi', '123', 'bat', 'SST', 'ravi', 31),
(27, 'suraj', '1234', 'batul', 'Science', 'suraj', 15),
(37, 'raj', '2', 'e', 'Hindi', 'r', 25),
(43, 'batul', '1', 'email', 'English', 'b', 57),
(44, 'rahul', '123', 'e', 'Hindi', 'r', 28),
(45, 'rahul', '12', 'ew', 'English', 'r', 58),
(46, 'rahul', '123', 'ew', 'Math', 'r', 25),
(48, 'rahul', '123', 'ewe', 'Science', 'r', 19),
(50, 'rahul', '1234', 'ewe', 'SST', 'r', 35),
(52, 'boy', '12', 'qq', 'Hindi', 'b', 29),
(53, 'boy', '1234', 'qqq', 'Math', 'b', 26),
(54, 'boy', '12345', 'qqqq', 'Science', 'b', 20),
(55, 'boy', '123456', 'qqqqq', 'SST', 'b', 36),
(56, 'ravi', '1234', 'erw', 'English', '12345', 60),
(57, 'roushan', '12345', 'rew', 'English', '123', 61),
(58, 'ravi', '123', 'edf', 'Math', 'aaa', 27),
(60, 'aaa', '2224', 'ree', 'Math', '111', 29),
(61, 'rani', '111111', 'zzaa', 'Hindi', '111', 30),
(62, 'manohar', '123432', 'weqbv', 'Hindi', 'munda', 31),
(64, 'aaa', '1276', 'weews', 'Hindi', 'aq', 32),
(65, 'bbb', '11', 'tesdxd', 'Science', 'zz', 21),
(66, 'www', '45', 'rr', 'English', 'qqq', 62),
(67, 'w', '3213', 'red1', 'English', 'www', 63),
(68, 'w', '3213', 'red11', 'Hindi', 'q', 34),
(69, 'w', '3213', 'red111', 'Math', 'ee', 30),
(70, 'w', '3213', 'red11111', 'Science', 'eee', 22),
(71, 'w', '3213', 'red111111', 'SST', 'eeeee', 37),
(72, 'ravi', '5543', 'rrr', 'Science', 'aaa', 23),
(74, 'kanchan', '98764', 'kk@gh.vb', 'Math', '123', 31),
(75, 'kanchan', '', '', 'English', '', 64),
(76, 'kanchan', '111', 'tttt', 'Math', '555', 32),
(77, 'raj', '4543', 'ytvrd', 'Math', '111', 33);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_eng`
--

CREATE TABLE IF NOT EXISTS `evaluator_eng` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `no_of_work` int(11) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `evaluator_eng`
--

INSERT INTO `evaluator_eng` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`, `no_of_work`) VALUES
(1, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul', 0),
(4, 'kanchan', '9308656390', 'kanchan@gmail,com', 'English', '123', 0),
(5, 'pandey', '343', 'rerrr', 'English', 'sanjay', 0),
(6, 's.pandey', '34334', 'rerrr', 'English', 'eee', 0),
(16, 'kanchan kumari', '35', 'fffff', 'English', 'bbb', 0),
(17, 'rohit kumar', '3443', 'fffff', 'English', 'bbb', 0),
(21, 'ggg', '554', 'grt', 'English', 'vvv', 0),
(24, 'ravi', '12345', 'avi@gmail.com', 'English', 'bbb', 0),
(25, 'ravi kumar', '1234567', 'ravi@gmail.com', 'English', 'zzz', 0),
(28, 'rohan', '222', 'gfr', 'English', 'vvv', 0),
(29, 'rony', '999', 'kkk', 'English', 'mmm', 0),
(30, 'micky', '777', 'nn', 'English', 'zzz', 0),
(31, 'ranjeet', '111', 'mmm', 'English', 'vvv', 0),
(32, 'HER', '45', 'FF', 'English', 'NNN', 0),
(56, 'raju', '2', 'e', 'English', 'r', 0),
(57, 'batul', '1', 'email', 'English', 'b', 0),
(58, 'rahul', '12', 'ew', 'English', 'r', 0),
(59, 'boy', '1', 'q', 'English', 'b', 0),
(60, 'ravi', '1234', 'erw', 'English', '12345', 0),
(61, 'roushan', '12345', 'rew', 'English', '123', 0),
(62, 'www', '45', 'rr', 'English', 'qqq', 0),
(63, 'w', '3213', 'red1', 'English', 'www', 0),
(64, 'kanchan', '', '', 'English', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_hin`
--

CREATE TABLE IF NOT EXISTS `evaluator_hin` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `evaluator_hin`
--

INSERT INTO `evaluator_hin` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(3, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul'),
(4, 'ddd', '123', 'dffvdw', 'Hindi', 'ggg'),
(5, 'ggg', '765', 'ggff', 'Hindi', 'vvv'),
(7, 'jhk', '7655', 'ggff', 'Hindi', 'qqq'),
(8, 'rohit kumar', '3443', 'fffff', 'Hindi', 'vvv'),
(9, 'shankarsingh', '8888', 'abanaj', 'Hindi', 'asd'),
(10, 'ravi kumar', '1234567', 'ravi@gmail.com', 'Hindi', 'hhh'),
(11, 'rohan kumar', '222', 'gfr', 'Hindi', 'mmm'),
(12, 'sanjay', '123', 'gt', 'Hindi', 'pandey'),
(13, 'ranjeet', '222', 'kkk', 'Hindi', 'mmm'),
(14, 'HER', '46', 'FF', 'Hindi', 'KKK'),
(15, 'you ', '234', 'trt', 'Hindi', 'uuu'),
(16, 'joney', '456', 'rtt', 'Hindi', 'hhh'),
(17, 'mohanty', '44', 'jha', 'Hindi', 'ggg'),
(18, 'sabu', '11', 'ee', 'Hindi', 'ee'),
(19, 'ram', '1', 'q', 'Hindi', 'r'),
(20, 'baatul', '1', 'Baatul@rediffmail.com', 'Hindi', 'mun'),
(21, 'hhh', '234', '65', 'Hindi', 'yyy'),
(22, 'ccc', '1', 're', 'Hindi', 'ccc'),
(23, 'sanjay', '123456', 'gmail.com', 'Hindi', 'sanjay'),
(24, 'rahul', '123', 'frt', 'Hindi', '123'),
(25, 'raj', '2', 'e', 'Hindi', 'r'),
(27, 'batul', '1', 'email', 'Hindi', 'b'),
(28, 'rahul', '123', 'e', 'Hindi', 'r'),
(29, 'boy', '12', 'qq', 'Hindi', 'b'),
(30, 'rani', '111111', 'zzaa', 'Hindi', '111'),
(31, 'manohar', '123432', 'weqbv', 'Hindi', 'munda'),
(32, 'aaa', '1276', 'weews', 'Hindi', 'aq'),
(33, 'rr', '4', 'rt5', 'Hindi', 'uu'),
(34, 'w', '3213', 'red11', 'Hindi', 'q');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_math`
--

CREATE TABLE IF NOT EXISTS `evaluator_math` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `evaluator_math`
--

INSERT INTO `evaluator_math` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(3, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul'),
(4, 'sahadev', '8603347874', 'sahadevmahato@gmail,com', 'Math', '000'),
(5, 'kanchan kumari', '876567899', 'kanchank@gmail.com', 'Math', '12'),
(6, 'shankar', '8888', 'abanaj', 'Math', 'ram123'),
(7, 'batul', '9661012727', 'gft', 'Math', 'sen'),
(8, 'ranjeet', '333', 'kkk', 'Math', 'mmm'),
(9, 'hero1', '1', 'ER', 'Math', '222'),
(10, 'HER', '47', 'FF', 'Math', 'KKKK'),
(11, 'Hari OM hari', '53', 'DDD', 'Math', 'hhh'),
(12, 'gt', '1', 'road', 'Math', 'ttt'),
(13, 'you', '34g6', 'trt', 'Math', 'yyy'),
(14, 'ray', '23', 'ert', 'Math', '234'),
(15, 'mohanty', '444', 'jha', 'Math', 'qqq'),
(16, 'sabu', '111', 'eee', 'Math', 'eee'),
(17, 'baatul', '1', 'Baatul@rediffmail.com', 'Math', 'munmun'),
(18, 'ggg', '56', 'tt', 'Math', 'iii'),
(19, 'box', '12', 'rt', 'Math', 'hhh'),
(20, 'ddd', '222', 'ddd', 'Math', 'ddd'),
(21, 'sumit', '12345', 'batul@gmail.com', 'Math', 'sumit'),
(22, 'swati', '20', 'rt', 'Math', '123'),
(23, 'raju', '2', 'e', 'Math', 'r'),
(24, 'batul', '1', 'email', 'Math', 'b'),
(25, 'rahul', '123', 'ew', 'Math', 'r'),
(26, 'boy', '1234', 'qqq', 'Math', 'b'),
(27, 'ravi', '123', 'edf', 'Math', 'aaa'),
(28, 'ddd', '123', 'ewe', 'Math', 'qqq'),
(29, 'aaa', '2224', 'ree', 'Math', '111'),
(30, 'w', '3213', 'red111', 'Math', 'ee'),
(31, 'kanchan', '98764', 'kk@gh.vb', 'Math', '123'),
(32, 'kanchan', '111', 'tttt', 'Math', '555'),
(33, 'raj', '4543', 'ytvrd', 'Math', '111');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_s_sci`
--

CREATE TABLE IF NOT EXISTS `evaluator_s_sci` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `evaluator_s_sci`
--

INSERT INTO `evaluator_s_sci` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(3, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul'),
(4, 'ranjeet', '555', 'kkkkk', 'Social_Science', 'mmmmm'),
(5, 'ranjeet', '555555555', 'mmmmmm', 'Social_Science', 'nnn'),
(6, 'honey', '23', 'singh', 'Social_Science', 'ggg'),
(7, 'hero1', '1', 'ER', 'Social_Science', 'WWW'),
(8, 'HER', '49', 'FF', 'Social_Science', 'BBB'),
(9, 'HER', '50', 'FF', 'Social_Science', 'JJJ'),
(10, 'HER', '51', 'FFF', 'Social_Science', 'BBB'),
(11, 'HERI OM', '52', 'DDD', 'Social_Science', 'KKK'),
(12, 'Hari OM hari', '53', 'DDD', 'Social_Science', 'fff'),
(13, 're', '12', 'tr', 'Social_Science', 'ttt'),
(14, 'reo', '124', 'try', 'Social_Science', 'g'),
(15, 'heriya', '999555', 'jh', 'Social_Science', 'ttt'),
(16, 'ttt', '45', 'hy', 'Social_Science', 'hhh'),
(17, 'myy', '34g6', 'trt', 'Social_Science', 'gtr'),
(18, 'ray', '23', 'ert', 'Social_science', '123'),
(19, 'sdd', '123', 'ds', 'Socialscience', 'dss'),
(22, 'wwww', '123', 'ttr', 'Social_Science', 'bbb'),
(23, 'honda', '1234', 'gtmail', 'Social_Science', 'qqq'),
(24, 'mohanty', '44444', 'jha', 'Social_Science', 'sss'),
(25, 'sabu', '11111', 'eeeee', 'Social_Science', 'eeeee'),
(27, 's2', '22', 'ee', 'Social_Science', 'rrr'),
(28, 'ss', '23', 're', 'SST', 'ee'),
(29, 'baatul', '1', 'Baatul@rediffmail.com', 'SST', 'mun'),
(30, 'mmm', '44', 're', 'SST', 'aaa'),
(31, 'ravi', '123', 'bat', 'SST', 'ravi'),
(32, 'raju', '2', 'e', 'SST', 'r'),
(33, 'batul', '1', 'email', 'SST', 'b'),
(34, 'rahul', '123', 'ewe', 'SST', 'r'),
(35, 'rahul', '1234', 'ewe', 'SST', 'r'),
(36, 'boy', '123456', 'qqqqq', 'SST', 'b'),
(37, 'w', '3213', 'red111111', 'SST', 'eeeee');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_sci`
--

CREATE TABLE IF NOT EXISTS `evaluator_sci` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `evaluator_sci`
--

INSERT INTO `evaluator_sci` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(2, 'ranjeet', '444', 'kkkk', 'Science', 'mmmm'),
(3, 'hero1', '1', 'ER', 'Science', 'MMM'),
(4, 'HER', '48', 'FF', 'Science', 'BBB'),
(5, 'HER', '50', 'FF', 'Science', 'JJJ'),
(6, 'myy', '34g6', 'trt', 'Science', 'ree'),
(8, 'vvv', '345', 'ttr', 'Science', 'rty'),
(9, 'www', '3451', 'ttr', 'Science', 'com'),
(10, 'mohanty', '4444', 'jha', 'Science', 'ccc'),
(11, 'sabu', '1111', 'eeee', 'Science', 'eeeee'),
(12, 'baatul', '1', 'Baatul@rediffmail.com', 'Science', 'mun'),
(13, 'kkk', '56', 'tt', 'Science', 'lll'),
(14, 'subir', '12345', 'www', 'Science', 'subir'),
(15, 'suraj', '1234', 'batul', 'Science', 'suraj'),
(16, 'raju', '2', 'e', 'Science', 'r'),
(17, 'batul', '1', 'email', 'Science', 'b'),
(18, 'rahul', '123', 'ew', 'Science', 'r'),
(19, 'rahul', '123', 'ewe', 'Science', 'r'),
(20, 'boy', '12345', 'qqqq', 'Science', 'b'),
(21, 'bbb', '11', 'tesdxd', 'Science', 'zz'),
(22, 'w', '3213', 'red11111', 'Science', 'eee'),
(23, 'ravi', '5543', 'rrr', 'Science', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `eve_info`
--

CREATE TABLE IF NOT EXISTS `eve_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `eve_info`
--

INSERT INTO `eve_info` (`id`, `paper`) VALUES
(1, 't4'),
(2, 'English'),
(3, 'English'),
(4, 'English'),
(5, 'English'),
(6, 'Hindi'),
(7, 'English'),
(8, 'English'),
(9, 'English'),
(10, 'Hindi'),
(11, 'Hindi'),
(12, 'Math'),
(13, 'English'),
(14, 'English'),
(15, 'English'),
(16, 'English'),
(17, 'English'),
(18, 'Hindi'),
(19, 'Math'),
(20, 'Science'),
(21, 'Social_Scie'),
(22, 'Social_Scie'),
(23, 'Social_Scie'),
(24, 'Social_Scie'),
(25, 'Science'),
(26, 'Math'),
(27, 'English'),
(28, 'Hindi'),
(29, 'Math'),
(31, 'Social_Scie'),
(32, 'Science'),
(33, 'Social_Scie'),
(34, 'Social_Scie'),
(35, 'Social_Scie'),
(36, 'Social_Scie'),
(37, 'Math'),
(38, 'Math'),
(39, 'Social_Scie'),
(40, 'Social_Scie'),
(41, 'English'),
(42, 'English'),
(43, 'Social_Scie'),
(44, 'Social_Scie'),
(45, 'English'),
(46, 'English'),
(47, 'English'),
(48, 'Social_Scie'),
(49, 'Science'),
(50, 'Math'),
(51, 'Hindi'),
(52, 'Hindi'),
(53, 'English'),
(54, 'English'),
(55, 'Social_scie'),
(56, 'Math'),
(57, 'Socialscien'),
(58, 'Social_Scie'),
(59, 'Social_Scie'),
(60, 'Science'),
(61, 'Science'),
(62, 'Science'),
(63, 'Social_Scie'),
(64, 'Social_Scie'),
(65, 'English'),
(66, 'English'),
(67, 'Hindi'),
(68, 'Math'),
(69, 'Science'),
(70, 'Social_Scie'),
(71, 'English'),
(72, 'Hindi'),
(73, 'Math'),
(74, 'Science'),
(75, 'Social_Scie'),
(76, 'Sciencee'),
(77, 'Social_Scie'),
(78, 'SST'),
(79, 'English'),
(80, 'English'),
(81, 'Hindi'),
(82, 'Math'),
(83, 'Hindi'),
(84, 'English'),
(85, 'Science'),
(86, 'SST'),
(87, 'Math'),
(88, 'Science'),
(89, 'Science'),
(90, 'English'),
(91, 'English'),
(92, 'English'),
(93, 'English'),
(94, 'Hindi'),
(95, 'Math'),
(96, 'Science'),
(97, 'SST'),
(98, 'English'),
(99, 'Math'),
(100, 'English'),
(101, 'Hindi'),
(102, 'English'),
(103, 'Math'),
(104, 'Science'),
(105, 'SST'),
(106, 'Science'),
(107, 'Math'),
(108, 'Hindi'),
(109, 'Math'),
(110, 'English'),
(111, 'Hindi'),
(112, 'English'),
(113, 'English'),
(114, 'Hindi'),
(115, 'English'),
(116, 'Hindi'),
(117, 'Math'),
(118, 'Science'),
(119, 'SST'),
(120, 'English'),
(121, 'Hindi'),
(122, 'Math'),
(123, 'Science'),
(124, 'SST'),
(125, 'Hindi'),
(126, 'English'),
(127, 'Math'),
(128, 'Science'),
(129, 'Science'),
(130, 'SST'),
(131, 'SST'),
(132, 'English'),
(133, 'Hindi'),
(134, 'Math'),
(135, 'Science'),
(136, 'SST'),
(137, 'English'),
(138, 'English'),
(139, 'Math'),
(140, 'Math'),
(141, 'Math'),
(142, 'Hindi'),
(143, 'Hindi'),
(144, 'Hindi'),
(145, 'Science'),
(146, 'Hindi'),
(147, 'English'),
(148, 'English'),
(149, 'Hindi'),
(150, 'Math'),
(151, 'Science'),
(152, 'SST'),
(153, 'Science'),
(154, 'Math'),
(155, 'English'),
(156, 'Math'),
(157, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `eve_sch_input`
--

CREATE TABLE IF NOT EXISTS `eve_sch_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` int(11) NOT NULL,
  `roll_no` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hin_nks`
--

CREATE TABLE IF NOT EXISTS `hin_nks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hin_nks`
--

INSERT INTO `hin_nks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'Hindi', '23', 46, 447),
(0, 31, 'kanchan', 'Hindi', '23', 46, 447),
(0, 31, 'kanchan', 'Hindi', '2333', 4336, 447);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `reg`) VALUES
(13, 46),
(32, 25),
(33, 46),
(34, 46),
(35, 46),
(36, 46),
(37, 57),
(39, 58),
(43, 46),
(53, 44),
(54, 46),
(55, 44),
(56, 46),
(57, 46),
(58, 59),
(59, 60),
(60, 46),
(61, 65),
(62, 69),
(63, 46),
(64, 46),
(65, 46),
(66, 46),
(67, 46),
(68, 103),
(69, 103),
(70, 103),
(71, 103),
(72, 103),
(73, 103),
(74, 103),
(75, 103),
(76, 103),
(77, 104);

-- --------------------------------------------------------

--
-- Table structure for table `log_info`
--

CREATE TABLE IF NOT EXISTS `log_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `paper` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `log_info`
--

INSERT INTO `log_info` (`id`, `reg`, `name`, `paper`) VALUES
(6, 57, '', ''),
(7, 58, '', ''),
(8, 36, 'boy', ''),
(9, 19, 'rahul', ''),
(10, 61, 'roushan', ''),
(11, 27, 'ravi', ''),
(12, 60, 'ravi', ''),
(13, 29, 'aaa', ''),
(14, 30, 'rani', ''),
(15, 31, 'manohar', ''),
(16, 21, 'bbb', ''),
(17, 28, 'rahul', ''),
(18, 28, 'rahul', 'p'),
(19, 28, 'rahul', 'p'),
(20, 28, 'rahul', 'p'),
(21, 23, 'ravi', 'p'),
(22, 23, 'ravi', 'p'),
(23, 23, 'ravi', 'Science'),
(24, 23, 'ravi', 'Science'),
(25, 23, 'ravi', 'Science'),
(26, 23, 'ravi', 'Science'),
(27, 23, 'ravi', 'Science'),
(28, 31, 'kanchan', 'Math'),
(29, 31, 'kanchan', 'Math'),
(30, 31, 'kanchan', 'Math'),
(31, 31, 'kanchan', 'Math'),
(32, 62, 'www', 'English'),
(33, 31, 'kanchan', 'Math'),
(34, 31, 'kanchan', 'Math'),
(35, 33, 'raj', 'Math'),
(36, 33, 'raj', 'Math'),
(37, 33, 'raj', 'Math'),
(38, 33, 'raj', 'Math'),
(39, 33, 'raj', 'Math'),
(40, 33, 'raj', 'Math'),
(41, 33, 'raj', 'Math'),
(42, 33, 'raj', 'Math'),
(43, 30, 'w', 'Math'),
(44, 30, 'w', 'Math'),
(45, 30, 'w', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `math_mks`
--

CREATE TABLE IF NOT EXISTS `math_mks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math_mks`
--

INSERT INTO `math_mks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'Math', '99', 55, 454),
(0, 31, 'kanchan', 'Math', '56', 33, 26);

-- --------------------------------------------------------

--
-- Table structure for table `paper_info`
--

CREATE TABLE IF NOT EXISTS `paper_info` (
  `sch_code` int(30) NOT NULL,
  `stu_name` varchar(30) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `roll_code` int(20) NOT NULL,
  `eng` varchar(100) NOT NULL,
  `hin` varchar(100) NOT NULL,
  `math` varchar(100) NOT NULL,
  `sci` varchar(100) NOT NULL,
  `s_sci` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper_info`
--

INSERT INTO `paper_info` (`sch_code`, `stu_name`, `roll_no`, `roll_code`, `eng`, `hin`, `math`, `sci`, `s_sci`) VALUES
(44, 'hhh', 45, 5, 'WP_20140127_003.jpg', 'WP_20140127_014.jpg', 'WP_20140127_007.jpg', 'WP_20140127_006.jpg', 'WP_20140127_005.jpg'),
(44, 'lll', 6, 54, 'WP_20140127_006.jpg', '', '', '', ''),
(44, 'dd', 1, 23, 'WP_20140127_008.jpg', '', '', '', ''),
(44, 'dd', 1, 23, 'WP_20140127_008.jpg', 'WP_20140127_007.jpg', 'WP_20140127_008.jpg', 'WP_20140127_014.jpg', 'WP_20140127_006.jpg'),
(44, 'hh', 8, 9, 'WP_20140127_007.jpg', 'WP_20140127_003.jpg', 'WP_20140127_006.jpg', 'WP_20140127_014.jpg', 'WP_20140127_004.jpg'),
(44, 'hhh', 8, 99, 'WP_20140127_007.jpg', '', '', 'WP_20140127_014.jpg', 'WP_20140127_004.jpg'),
(44, 'nazish', 44, 11, 'DSCN0935.JPG', 'DSCN0938.JPG', 'DSCN0955.JPG', '', ''),
(44, 'aaa', 12, 23, 'img1.JPG', 'img2.JPG', '', '', ''),
(57, 'neha', 1, 12, '2.jpg', '', '', '', ''),
(60, 'santosh', 1, 11, '12.png', 'background.png', 'bg_top.gif', '', ''),
(65, 'asd', 1, 12, '2.jpg', '', '', '', ''),
(69, 'eee', 1, 12, '2.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `scanner`
--

CREATE TABLE IF NOT EXISTS `scanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `scn_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `scanner`
--

INSERT INTO `scanner` (`id`, `scn_name`, `contact`, `email`, `paper`, `pass`, `scn_id`) VALUES
(1, 'samrat', '9998887776', 'sswq', 'English', 'aaa', 1),
(2, 'sabu', '123', 'tue', 'English', 'aaa', 4),
(3, 'sabu', '5', 'gr', 'Hindi', 'qq', 1),
(4, 'andy', '09', 'vc', 'Math', 'zz', 3),
(5, 'ravi', '1', 'wq2', 'Science', 'xx', 1),
(7, 'santosh', '120', 'ewq', 'Science', 'aaa', 2),
(8, 'kanchan', '999', 'weqsrf@yrers', 'Science', '123', 3),
(9, 'ram', '56', 'iiuhuh', 'Hindi', '11', 2),
(10, 'rrr', '555', 'uyt', 'Hindi', 'rrr', 3),
(21, 'AAA', '4555', 'OOuyt', 'Math', 'aaa', 4),
(22, 'www', '1221', 'eeww', 'SST', 'aaa', 1),
(23, 'ttt', '123', 'tyt', 'Math', '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `school_regis`
--

CREATE TABLE IF NOT EXISTS `school_regis` (
  `reg_code` int(11) NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(40) NOT NULL,
  `reg_no` int(10) NOT NULL,
  `con_no` int(12) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `str_1` varchar(35) NOT NULL,
  `str_2` varchar(35) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dist` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` int(6) NOT NULL,
  `pas` varchar(25) NOT NULL,
  PRIMARY KEY (`reg_code`),
  UNIQUE KEY `e_mail` (`e_mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `school_regis`
--

INSERT INTO `school_regis` (`reg_code`, `sch_name`, `reg_no`, `con_no`, `e_mail`, `str_1`, `str_2`, `city`, `dist`, `state`, `pin`, `pas`) VALUES
(23, 'ram', 90, 76, 'gt@', 'ki', 'h', 'cv', 'nb', 'hn', 78, 'ram'),
(24, 'joy', 76, 98, 'wa@', 'tr', 'y', 'li', 'yf', 'hy', 67, 'joy'),
(25, 'hero', 123, 56, 'gr', 'QR E-67/2', 'EAST COLONY', 'CKP', 'west singhbhum', 'jharkhand', 9865, 'www'),
(26, 'wwwwww', 0, 3456, 'kfj', 'ku', 'hgt', 'fgd', 'fdg', 'sdh', 6766, 'oooo'),
(27, 'yuuuu', 0, 908, 'sewr', 'kuikuc', 'vc', 'fdrd', 'dfef', 'hgfh', 111111, 'mmmmmmmmmmm'),
(28, 'ku', 0, 456, 'ihy', 'wqse', 'hgt', 'l', '', 'jh', 987, 'kkk'),
(29, 'ku', 0, 456, 'ihykk', 'wqse', 'hgt', 'l', 'g', 'jh', 987, 'jjjj'),
(30, 'hhhhh1111111', 0, 45665, 'ihykkggggggggggg', 'wqqqqqse', 'aaaahgt', 'sbbbbl', 'gnjhgg', 'JHK', 987, 'pppp'),
(31, 'SST', 0, 334343, 'ABCD@GMAIL.COM', 'deoghar', 'deo', 'deoghar', 'jh', 'jharkha', 12345, 'shankar'),
(33, 'SST', 0, 334343, 'ABC@GMAIL.COM', 'deoghar', 'deo', 'deoghar', 'jh', 'jharkha', 12345, 'asd'),
(34, 'sanjay', 123, 568, 'sanjay@gmail.com', 'dd', 'hh', 'er', 'tr', 'hj', 45, 'sanjay'),
(35, 'sanjay22', 123, 568, 'sanjay@gmai1l.com', 'dd', 'hh', 'er', 'tr', 'hj', 45, 'qqq'),
(36, 'sanjay22', 123, 568, 'sanjaooy@gmai1l.com', 'dd', 'hh', 'er', 'tr', 'hj', 45, 'oooo'),
(37, 'gg', 65, 87, 'hyg', 'ghf', 'jhg', 'hj', 'jh', 'hj', 456, 'yyy'),
(38, 'www', 0, 77, 'li', 'hjg', 'jh', 'jh', 'hj', 'k', 98, 'uuu'),
(43, 'shanka singh', 8, 77, 'liui', 'hjg', 'jh', 'jh', 'hj', 'k', 98, 'iii'),
(44, 'abc', 45, 456, 'tata', 'saf', 'fkjh', 'kjfh', 'fvkjf', 'jasj', 46, 'yyy'),
(45, 'bbb', 45, 54, 'yt', 'k', 't', 'c', 'h', 'y', 78, 'mmm'),
(46, 'ccc', 34, 777, 'uy', 'kl', 'u', 'k', 'oi', 'yu', 888855, 'vvv'),
(47, 'hero', 56, 76, 'dwmymail.com', 'grr', 'e', 'h', 'h', 'mh', 4, '123'),
(48, 'myhero', 56, 76, 'mymail.com', 'grr', 'e', 'h', 'h', 'mh', 4, '12345'),
(49, 'heman', 76, 9, 'hgt', 'dff', 'gf', 'gf', 'h', 'jh', 122, 'hitman'),
(52, 'south high school', 12, 34, 'ht', 'd', 'g', 'h', 'j', 'k', 87, 'south'),
(53, 'high', 4, 6, 'yty', 'rf', 'h', 'f', 'gf', 'gfg', 777, 'high'),
(54, 'high school', 4, 6, 'ytyuu', 'rf', 'h', 'f', 'gf', 'gfg', 77, 'hs'),
(55, 'my school', 45, 63, 'ytyuuii', 'rf', 'h', 'f', 'gf', 'gfg', 7777, 'my'),
(56, 'home', 21, 44, 'gfgg', 'fdtr', 'ff', 'fref', 'g', 'fd', 33, 'home'),
(57, 'dav', 123, 987698654, 'dav@gmail.com', 'jharia', 'bhagatdih', 'dhanbad', 'bhanbad', 'jharkhand', 828111, 'abc'),
(58, 'dav biva', 123456, 33333, 'bivaa@gmai.com', 'qwer', 'ewwew', 'ranchi', 'ranchi', 'jhk', 834001, 'biva'),
(59, 'GT', 123, 45, 'ytf', 'we', 'fd', 'fdf', 'fds', 'df', 23, 'gt'),
(60, 'snatosh', 12345, 99999, 'santosh@gmail.com', 'qw', 'ewe', 'ranchi', 'ranchi', 'jharkhand', 8754433, 'toppo'),
(61, 'dav biva', 12345, 55555, 'biva@gmai.com', 'qwer', 'ewwew', 'ranchi', 'ranchi', 'jhk', 834001, 'biva'),
(62, 'rose', 12345, 222, 're@gmai.com', 'qwer', 'ewwew', 'ranchi', 'ranchi', 'jhk', 834001, '123'),
(63, 'red', 1, 123, 'ew', 'rt', 'tre', 'ggg', 'ddd', 'sss', 666, 'red'),
(64, 'sanjay', 1230, 23444, 'rrr', 're', 're', 'gr', 'ddd', 'gff', 223, 'pandey'),
(65, 'qqq', 123, 876, 'fdf', 'df', 'vdf', 'cds', 'cc', 'fdsfd', 232, 'aaa'),
(66, 'sabu', 122, 123431, 'ewsaq', 'qwa', 're', 'erwer', 'rerere', 'df', 12, '11'),
(67, 'sabu1', 122, 1234, 'e', 'qwa', 're', 'erwer', 'rerere', 'df', 12, '22'),
(68, 'aaa', 222, 5432, 'nyg', 'oiu', 'gj', 'fd', 'fe', 'fdg', 21, 'aa'),
(69, 'hhhh', 2345, 654, 'ttttdsfs', 'vfdfd', 'dsds', 'dsfd', 'cvx', 'df', 3211, '111'),
(70, 'xxxx', 1165, 3232, 'tee4', '224', 'ewe`gh', 'bvbb', 'bbb', 'fgdgf', 7863, 'zzz'),
(71, 'RAM', 11, 1233, 'WE@GMAIL.COM', 'Q', 'W', 'E', 'R', 'T', 43555, ''),
(77, 'batul', 54113333, 326643777, 'rrggtt', 'tt33', 'tt44', 'tt55', '66tt66', 'tt77', 1188, ''),
(78, '55sonu', 5555, 553009, '55qw2', '55ss', '55dd', '55dd', '55gg', '55hh', 5511, '55rrraaa'),
(79, 'sonu1', 5112, 30091, 'q5w21', 'ss1', 'dd1', 'dd1', 'gg1', 'hh1', 11, '5551'),
(80, '111pratap', 11113341, 13309, 'r1eenn', '1dfh', '1fhd', '1jhhfh', '1jhdh', '1hjhf', 2211144, '88'),
(81, '22pratap', 322341, 223309, 'yt2reenn', '22dfh', '22fhd', '22jhhfh', '22jhdh', '22hjhf', 22111, '22255'),
(101, 'S.E. mixed high school', 10023, 2147483647, 'high_se@gmail.com', 'road no 5', 'east colony', 'chakradaherpur', 'west singhbhum', 'jharkhand', 833102, 'udontknow!!'),
(102, 'Mahatma Gandhi mixed high school', 12203, 2147483647, 'mg_high@gmail.com', 'road no 6', 'east colony', 'jamshedpur', 'east singhbhum', 'jharkhand', 832104, 'password'),
(103, 'pratap', 3321, 32143, 'regid', 'qwq', 'fffdf', 'gfffd', 'dfffdffffff', 'fffdfdf', 833011, 'sen'),
(104, 'abc', 444, 11661, 'eee', 'ffdsfds', 'jj', 'j', 'dfdj', 'fffdfdf', 123445, 'www');

-- --------------------------------------------------------

--
-- Table structure for table `sci_mks`
--

CREATE TABLE IF NOT EXISTS `sci_mks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sci_mks`
--

INSERT INTO `sci_mks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'Science', '343', 111, 87);

-- --------------------------------------------------------

--
-- Table structure for table `scn_eng`
--

CREATE TABLE IF NOT EXISTS `scn_eng` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `scn_eng`
--

INSERT INTO `scn_eng` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'samrat', '9998887776', 'sswq', 'English', 'aaa'),
(2, 'samrat111', '9998884445', 'tre', 'English', 'sss'),
(3, 'pratap', '1234567890', 'xz', 'English', 'sen'),
(4, 'sabu', '123', 'tue', 'English', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `scn_hin`
--

CREATE TABLE IF NOT EXISTS `scn_hin` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `scn_hin`
--

INSERT INTO `scn_hin` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'sabu', '5', 'gr', 'Hindi', 'qq'),
(2, 'ram', '56', 'iiuhuh', 'Hindi', '11'),
(3, 'rrr', '555', 'uyt', 'Hindi', 'rrr');

-- --------------------------------------------------------

--
-- Table structure for table `scn_info`
--

CREATE TABLE IF NOT EXISTS `scn_info` (
  `scn_id` int(5) NOT NULL AUTO_INCREMENT,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`scn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `scn_info`
--

INSERT INTO `scn_info` (`scn_id`, `paper`) VALUES
(1, 'English'),
(2, 'English'),
(3, 'English'),
(4, 'English'),
(5, 'Hindi'),
(6, 'Math'),
(7, 'Math'),
(8, 'Math'),
(9, 'Science'),
(10, 'Science'),
(11, 'Science'),
(12, 'Hindi'),
(13, 'Hindi'),
(14, 'Math'),
(15, 'SST'),
(16, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `scn_info_id`
--

CREATE TABLE IF NOT EXISTS `scn_info_id` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `scn_id` int(5) NOT NULL,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `scn_info_id`
--

INSERT INTO `scn_info_id` (`id`, `name`, `scn_id`, `paper`) VALUES
(1, 'andy', 3, 'Math'),
(2, 'andy', 3, 'Math'),
(3, 'santosh', 2, 'Science'),
(4, 'santosh', 2, 'Science'),
(5, 'sabu', 4, 'English'),
(6, 'kanchan', 3, 'Science'),
(7, 'ram', 2, 'Hindi'),
(8, 'sabu', 4, 'English'),
(9, 'sabu', 4, 'English'),
(10, 'AAA', 4, 'Math'),
(11, 'AAA', 4, 'Math'),
(12, 'www', 1, 'SST'),
(13, 'ttt', 5, 'Math'),
(14, 'ttt', 5, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `scn_math`
--

CREATE TABLE IF NOT EXISTS `scn_math` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `scn_math`
--

INSERT INTO `scn_math` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'sabu', '4', 'trt', 'Math', 'bb'),
(2, 'sabu', '43', 're', 'Math', 'hh'),
(3, 'andy', '09', 'vc', 'Math', 'zz'),
(4, 'AAA', '4555', 'OOuyt', 'Math', 'aaa'),
(5, 'ttt', '123', 'tyt', 'Math', '1');

-- --------------------------------------------------------

--
-- Table structure for table `scn_s_sci`
--

CREATE TABLE IF NOT EXISTS `scn_s_sci` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `scn_s_sci`
--

INSERT INTO `scn_s_sci` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'www', '1221', 'eeww', 'SST', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `scn_sci`
--

CREATE TABLE IF NOT EXISTS `scn_sci` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `scn_sci`
--

INSERT INTO `scn_sci` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'ravi', '1', 'wq2', 'Science', 'xx'),
(2, 'santosh', '120', 'ewq', 'Science', 'aaa'),
(3, 'kanchan', '999', 'weqsrf@yrers', 'Science', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sst_mks`
--

CREATE TABLE IF NOT EXISTS `sst_mks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sst_mks`
--

INSERT INTO `sst_mks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'SST', '4', 6, 10),
(0, 31, 'kanchan', 'SST', '1', 2, 26);

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE IF NOT EXISTS `stu_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sub` varchar(11) NOT NULL,
  `sch_name` varchar(30) NOT NULL,
  `sch_id` int(5) NOT NULL,
  `scn_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`id`, `sub`, `sch_name`, `sch_id`, `scn_name`) VALUES
(1, 'Math', 'ccc', 46, 'andy'),
(2, 'English', 'ccc', 46, 'sabu'),
(3, 'Science', 'ccc', 46, 'kanchan'),
(4, 'Science', 'hero', 47, 'kanchan'),
(5, 'Hindi', 'ccc', 46, 'ram'),
(6, 'English', 'ccc', 46, 'sabu'),
(7, 'English', 'hero', 47, 'sabu'),
(8, 'Math', 'ccc', 46, 'AAA'),
(9, 'Math', 'ccc', 46, 'AAA'),
(10, 'Math', 'ccc', 46, 'AAA'),
(11, 'Math', 'ccc', 46, 'AAA'),
(12, 'SST', 'ccc', 46, 'www'),
(13, 'Math', 'ccc', 46, 'ttt'),
(14, 'Math', 'ccc', 46, 'ttt');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `sch_code` int(10) NOT NULL,
  `stu_code` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(30) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `eng` int(3) NOT NULL,
  `hin` int(3) NOT NULL,
  `math` int(3) NOT NULL,
  `sci` int(3) NOT NULL,
  `s_sci` int(3) NOT NULL,
  PRIMARY KEY (`stu_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sch_code`, `stu_code`, `stu_name`, `roll_no`, `dob`, `eng`, `hin`, `math`, `sci`, `s_sci`) VALUES
(44, 16, 'bbb', 34, '', 0, 0, 0, 0, 0),
(44, 17, 'hhh', 45, '', 80, 90, 100, 87, 85),
(24, 18, 'joy', 5, '1998-06-06', 4, 56, 66, 43, 65),
(46, 19, 'my', 3, '1997-02-03', 12, 23, 32, 43, 56),
(56, 20, 'rony', 33, '1998-02-04', 43, 32, 23, 43, 54),
(46, 28, 'ROHAN', 18, '1996-03-06', 65, 23, 42, 12, 23),
(46, 29, 'MAHANTY', 19, '1993-05-03', 23, 44, 54, 67, 32),
(46, 30, 'santosh', 20, '1993-03-04', 40, 43, 33, 56, 21),
(25, 31, 'may', 12, '1998-02-03', 12, 7, 6, 43, 34),
(25, 32, 'lobo', 13, '1997-01-02', 23, 23, 21, 24, 24),
(25, 33, 'shyam', 14, '1996-02-22', 23, 32, 43, 23, 23),
(46, 34, 'pratap kumar', 25, '2-3-1996', 23, 65, 44, 33, 43),
(58, 35, 'subi', 1, '1998-02-03', 30, 22, 33, 23, 25),
(46, 36, 'ram ', 100, '1994-02-03', 50, 20, 50, 40, 50),
(65, 37, 'asd', 1, '2014-06-12', 10, 4, 6, 8, 5),
(69, 38, 'eee', 1, '2014-06-27', 5, 7, 5, 6, 8),
(46, 39, 'abc', 123488, '2014-06-11', 7, 6, 3, 4, 6),
(103, 40, 'sam', 11211, '2014-07-01', 1, 2, 3, 4, 5),
(104, 41, 'fff', 2321, '2014-07-16', 5, 5, 4, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `upload_data`
--

CREATE TABLE IF NOT EXISTS `upload_data` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` varchar(200) NOT NULL,
  `FILE_SIZE` varchar(200) NOT NULL,
  `FILE_TYPE` varchar(200) NOT NULL,
  `SUB` varchar(11) NOT NULL,
  `SCH_NAME` varchar(30) NOT NULL,
  `SCH_ID` int(11) NOT NULL,
  `STU_NAME` varchar(30) NOT NULL,
  `ROLL` int(11) NOT NULL,
  `LOC` varchar(100) NOT NULL,
  `SCN_NAME` varchar(40) NOT NULL,
  `ev_id` int(5) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `FILE_NAME` (`FILE_NAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `upload_data`
--

INSERT INTO `upload_data` (`USER_ID`, `FILE_NAME`, `FILE_SIZE`, `FILE_TYPE`, `SUB`, `SCH_NAME`, `SCH_ID`, `STU_NAME`, `ROLL`, `LOC`, `SCN_NAME`, `ev_id`) VALUES
(57, '0', '0', '', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/0', 'sabu', 0),
(59, '0Jellyfish.jpg', '775702', 'image/jpeg', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/0Jellyfish.jpg', 'sabu', 0),
(61, '1Koala.jpg', '780831', 'image/jpeg', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/1Koala.jpg', 'sabu', 0),
(63, '2Lighthouse.jpg', '561276', 'image/jpeg', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/2Lighthouse.jpg', 'sabu', 0),
(65, '0Desert.jpg', '845941', 'image/jpeg', 'English', 'hero', 47, 'ee', 33, 'English/47/33/0Desert.jpg', 'sabu', 0),
(66, '0Hydrangeas.jpg', '595284', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/0Hydrangeas.jpg', 'AAA', 0),
(68, '1Jellyfish.jpg', '775702', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/1Jellyfish.jpg', 'AAA', 0),
(70, '2Penguins.jpg', '777835', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/2Penguins.jpg', 'AAA', 0),
(72, '3Tulips.jpg', '620888', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/3Tulips.jpg', 'AAA', 0),
(82, '0Penguins.jpg', '777835', 'image/jpeg', 'Math', 'ccc', 46, 'AAA', 77, 'Math/46/77/0Penguins.jpg', 'AAA', 0),
(83, '0Scan.jpg', '670855', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/0Scan.jpg', 'AAA', 0),
(85, '1Scan.jpg2.jpg', '563562', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/1Scan.jpg2.jpg', 'AAA', 0),
(87, '2Scan.jpg3.jpg', '579019', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/2Scan.jpg3.jpg', 'AAA', 0),
(89, '3Scan.jpg4.jpg', '568994', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/3Scan.jpg4.jpg', 'AAA', 0),
(91, '4Scan.jpg5.jpg', '599980', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/4Scan.jpg5.jpg', 'AAA', 0),
(93, '5Scan.jpg6.jpg', '557757', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/5Scan.jpg6.jpg', 'AAA', 0),
(95, '6Scan.jpg7.jpg', '609672', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/6Scan.jpg7.jpg', 'AAA', 0),
(97, '7Scan.jpg8.jpg', '570180', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/7Scan.jpg8.jpg', 'AAA', 0),
(106, '3Scan.jpg9.jpg', '653421', 'image/jpeg', 'Math', 'ccc', 46, 'ee', 44, 'Math/46/44/3Scan.jpg9.jpg', 'ttt', 0),
(108, '4Scan.jpg10.jpg', '509826', 'image/jpeg', 'Math', 'ccc', 46, 'ee', 44, 'Math/46/44/4Scan.jpg10.jpg', 'ttt', 0),
(110, '5Scan.jpg11.jpg', '561446', 'image/jpeg', 'Math', 'ccc', 46, 'ee', 44, 'Math/46/44/5Scan.jpg11.jpg', 'ttt', 0);
--
-- Database: `shineskill_com`
--
CREATE DATABASE IF NOT EXISTS `shineskill_com` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shineskill_com`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('ram@gmail.com', 'ram');

-- --------------------------------------------------------

--
-- Table structure for table `resultdetail`
--

CREATE TABLE IF NOT EXISTS `resultdetail` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `testname` varchar(200) NOT NULL,
  `totalq` varchar(200) NOT NULL,
  `attendq` varchar(200) NOT NULL,
  `correctans` varchar(200) NOT NULL,
  `wrongans` varchar(200) NOT NULL,
  `totalmarks` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `resultdetail`
--

INSERT INTO `resultdetail` (`id`, `email`, `testname`, `totalq`, `attendq`, `correctans`, `wrongans`, `totalmarks`) VALUES
(1, 'taohidansari3@gmail.com', 'jquery', '3', '3', '0', '3', '-0.75'),
(2, 'bamshankarsingh@gmail.com', 'jquery', '3', '3', '2', '1', '1.75'),
(3, 'taohidansari1111@gmail.com', 'html', '2', '2', '2', '0', '2'),
(4, 'taohidansari3@gmail.com', 'html', '2', '2', '2', '0', '2'),
(5, 'bamshankarsingh@gmail.com', 'html', '2', '2', '2', '0', '2'),
(6, '', '', '0', '0', '0', '0', '0'),
(7, 'taohidansari1111@gmail.com', 'Tttty', '3', '1', '0', '1', '-0.25'),
(8, 'aryankumar407@gmail.com', 'html', '2', '1', '1', '0', '1'),
(9, 'aryankumar407@gmail.com', 'jquery', '3', '3', '1', '2', '0.5'),
(10, 'axisranchi123@gmail.com', 'Tttty', '3', '3', '1', '2', '0.5'),
(11, 'axisranchi123@gmail.com', 'html', '2', '2', '2', '0', '2'),
(12, 'axisranchi123@gmail.com', 'jquery', '3', '3', '1', '2', '0.5'),
(13, '1ram@gmail.com', 'jquery', '3', '3', '0', '3', '-0.75'),
(14, 'ram@gmail.com', 'Tttty', '3', '0', '0', '0', '0'),
(15, 'ram@gmail.com', 'jquery', '3', '3', '0', '3', '-0.75');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `qualification`, `email`, `password`, `status`) VALUES
(11, 'taohid ', '12th', 'taohidansari1111@gmail.com', '12345', 'activate'),
(8, 'taohid ansari r', 'b.tech', 'taohidansari3@gmail.com', '12345', 'activate'),
(10, 'raj ', 'm.sc', 'bamshankarsingh@gmail.com', 'palaknagra', 'activate'),
(12, 'ram', 'm.tech', 'krishv.krishv51@gmail.com', 'ram', 'activate'),
(13, 'ankit srivastava', 'm.sc', 'srivastavaankit981@gmail.com', 'ani@04041991', 'activate'),
(14, 'asish', 'm.sc', 'ashishkeshri999@gmail.com', 'ashish', 'activate'),
(15, 'Lukman', 'diploma', 'likcybutt@gmail.com', '8757622949', 'deactive'),
(16, 'bambus', 'diploma', 'blabla@hotmail.com', 'blablabla', 'deactive'),
(17, 'Test', 'm.sc', 'oes@byom.de', 'test', 'deactive'),
(18, 'test', 'diploma', 'test@test.com', 'test', 'deactive'),
(19, 'gio', '10th', 'mr.nizharadze@gmail.com', '6q00t5at5', 'deactive'),
(20, 'Kapil Shrestha', '12th', 'brandablebox@gmail.com', 'kapil288473', 'deactive'),
(21, 'zohaib', 'diploma', 'mc100204818@gmail.com', 'zohaib101', 'activate'),
(22, 'Abcd', 'm.tech', 'abcd@gmail.com', '12345678', 'deactive'),
(23, 'jhjhj', 'm.sc', 'algburi89@gmail.com', 'yhyh', 'deactive'),
(24, 'Gari', 'diploma', 'jyllson@gmail.com', 'jzllson123', 'activate'),
(25, 'raj', 'b.sc', 'abc@gmail.com', '12345', 'deactive'),
(26, 'ULTIweb India', 'diploma', 'signup@ultiwebindia.com', '1234', 'deactive'),
(27, 'Durairaj', 'b.tech', 'durairaj2021@gmail.com', '123456', 'activate'),
(28, 'Gourav', 'b.tech', 'gouravkumar1090@gmail.com', 'GarG@767', 'activate'),
(29, 'mmaaii', '12th', 'mmaaii@mmaaii.com', '123456', 'deactive'),
(30, 'Avinash singh', 'b.sc', 'rajavinash112@gmail.com', 'avinash@1234', 'activate'),
(31, 'sdfsdf', '10th', 'a@a.com', '12345', 'deactive'),
(32, 'solanki piyush', '12th', 'spcomputer8531@gmail.com', 'piyush1410', 'activate'),
(33, 'chand shekha', 'm.sc', 'hbgani@gmail.com', 'csnawaw23', 'deactive'),
(34, 'yyff', 'b.sc', 'lukcybutt@gmail.com', '12345', 'deactive'),
(35, 'Vinit', 'b.tech', 'vinitanand83@gmail.com', 'admin', 'deactive'),
(36, 'sattu', 'b.sc', 'aryankumar407@gmail.com', '7677879184', 'activate'),
(37, 'TADFDF', 'm.sc', 'axisranchi123@gmail.com', '12345', 'activate'),
(38, 'iii', 'b.sc', 'ram@gmail.com', 'ram', 'aeactive'),
(39, 'uyuy', 'b.sc', '1ram@gmail.com', '12345', 'aeactive'),
(40, 'kunal', 'm.sc', 'kunal@gmail.com', 'kunal123', 'aeactive');

-- --------------------------------------------------------

--
-- Table structure for table `temptestdetail`
--

CREATE TABLE IF NOT EXISTS `temptestdetail` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `testname` varchar(200) NOT NULL,
  `timeh` int(200) NOT NULL,
  `timem` int(200) NOT NULL,
  `cat` varchar(200) NOT NULL,
  `subcat` varchar(200) NOT NULL,
  `totalmins` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `temptestdetail`
--

INSERT INTO `temptestdetail` (`id`, `testname`, `timeh`, `timem`, `cat`, `subcat`, `totalmins`) VALUES
(1, 'jquery', 0, 4, 'other', '0', 4),
(2, 'html', 0, 1, 'other', '0', 1),
(3, 'Tttty', 0, 1, 'other', '0', 1),
(4, 'Gsgsgs', 0, 2, 'other', '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `testname` varchar(200) NOT NULL,
  `createddate` varchar(200) NOT NULL,
  `totalq` varchar(200) NOT NULL,
  `cat` varchar(200) NOT NULL,
  `subcat` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `testname`, `createddate`, `totalq`, `cat`, `subcat`) VALUES
(1, 'jquery', 'November 23 2016 12:23:05', '3', 'other', '0'),
(2, 'html', 'November 23 2016 12:33:03', '2', 'other', '0'),
(3, 'Tttty', 'November 23 2016 22:04:34', '3', 'other', '0');

-- --------------------------------------------------------

--
-- Table structure for table `testquize`
--

CREATE TABLE IF NOT EXISTS `testquize` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `testname` varchar(200) NOT NULL,
  `createddate` varchar(200) NOT NULL,
  `question` varchar(200) NOT NULL,
  `ans1` varchar(200) NOT NULL,
  `ans2` varchar(200) NOT NULL,
  `ans3` varchar(200) NOT NULL,
  `ans4` varchar(200) NOT NULL,
  `correctans` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `testquize`
--

INSERT INTO `testquize` (`id`, `testname`, `createddate`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correctans`) VALUES
(1, 'jquery', 'November 23 2016 12:22:43', '           lllll', 'l', 'jj', 'ljj', 'jjjj', 'l'),
(2, 'jquery', 'November 23 2016 12:22:51', '           kkkkkk', 'k', 'h', 'f', 'rt', 'k'),
(3, 'jquery', 'November 23 2016 12:23:03', '           tttt', 't', 'tl', 'i', 'g', 't'),
(4, 'html', 'November 23 2016 12:32:56', '           lll', 'l', 'l', 'l', 'l', 'l'),
(5, 'html', 'November 23 2016 12:33:01', '           iiii', 'i', 'i', 'i', 'i', 'i'),
(6, 'Tttty', 'November 23 2016 21:56:34', '           Hggff', 'U', 'Yy', 'T', 'Fd', 'T'),
(7, 'Tttty', 'November 23 2016 22:04:01', '           Hgggg', 'U', 'U', 'Kjh', 'Hh', 'U'),
(8, 'Tttty', 'November 23 2016 22:04:22', '           Hgff', 'O', 'K', 'Hg', 'O', 'O');

-- --------------------------------------------------------

--
-- Table structure for table `totalresult`
--

CREATE TABLE IF NOT EXISTS `totalresult` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `testname` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `qun` varchar(200) NOT NULL,
  `question` varchar(200) NOT NULL,
  `givenanswer` varchar(200) NOT NULL,
  `correctans` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `totalresult`
--

INSERT INTO `totalresult` (`id`, `testname`, `emailid`, `qun`, `question`, `givenanswer`, `correctans`) VALUES
(1, 'jquery', 'taohidansari1111@gmail.com', '1', '           lllll', 'ljj', 'l'),
(2, 'jquery', 'bamshankarsingh@gmail.com', '1', '           lllll', 'l', 'l'),
(3, 'jquery', 'taohidansari3@gmail.com', '1', '           lllll', 'ljj', 'l'),
(4, 'jquery', 'ashishkeshri999@gmail.com', '1', '           lllll', 'l', 'l'),
(5, 'jquery', 'taohidansari3@gmail.com', '2', '           kkkkkk', 'rt', 'k'),
(6, 'jquery', 'bamshankarsingh@gmail.com', '2', '           kkkkkk', 'k', 'k'),
(7, 'jquery', 'taohidansari3@gmail.com', '3', '           tttt', 'g', 't'),
(8, 'jquery', 'ashishkeshri999@gmail.com', '2', '           kkkkkk', 'h', 'k'),
(9, 'jquery', 'taohidansari1111@gmail.com', '2', '           kkkkkk', 'h', 'k'),
(10, 'jquery', 'taohidansari1111@gmail.com', '3', '           tttt', 'tl', 't'),
(11, 'jquery', 'ashishkeshri999@gmail.com', '3', '           tttt', 'i', 't'),
(12, 'jquery', 'bamshankarsingh@gmail.com', '3', '           tttt', 'g', 't'),
(13, 'html', 'bamshankarsingh@gmail.com', '1', '           lll', 'l', 'l'),
(14, 'html', 'taohidansari1111@gmail.com', '1', '           lll', 'l', 'l'),
(15, 'html', 'taohidansari1111@gmail.com', '2', '           iiii', 'i', 'i'),
(16, 'html', 'taohidansari3@gmail.com', '1', '           lll', 'l', 'l'),
(17, 'html', 'bamshankarsingh@gmail.com', '2', '           iiii', 'i', 'i'),
(18, 'html', 'taohidansari3@gmail.com', '2', '           iiii', 'i', 'i'),
(19, 'Tttty', 'taohidansari1111@gmail.com', '1', '           Hggff', 'U', 'T'),
(20, 'html', 'aryankumar407@gmail.com', '2', '           iiii', 'i', 'i'),
(21, 'jquery', 'aryankumar407@gmail.com', '1', '           lllll', 'l', 'l'),
(22, 'jquery', 'aryankumar407@gmail.com', '3', '           tttt', 'g', 't'),
(23, 'jquery', 'aryankumar407@gmail.com', '2', '           kkkkkk', 'h', 'k'),
(24, 'Tttty', 'axisranchi123@gmail.com', '1', '           Hggff', 'Yy', 'T'),
(25, 'Tttty', 'axisranchi123@gmail.com', '2', '           Hgggg', 'U', 'U'),
(26, 'Tttty', 'axisranchi123@gmail.com', '3', '           Hgff', 'Hg', 'O'),
(27, 'html', 'axisranchi123@gmail.com', '1', '           lll', 'l', 'l'),
(28, 'html', 'axisranchi123@gmail.com', '2', '           iiii', 'i', 'i'),
(29, 'jquery', 'axisranchi123@gmail.com', '1', '           lllll', 'jjjj', 'l'),
(30, 'jquery', 'axisranchi123@gmail.com', '2', '           kkkkkk', 'k', 'k'),
(31, 'jquery', 'axisranchi123@gmail.com', '3', '           tttt', 'g', 't'),
(32, 'jquery', '1ram@gmail.com', '1', '           lllll', 'jj', 'l'),
(33, 'jquery', '1ram@gmail.com', '2', '           kkkkkk', 'h', 'k'),
(34, 'jquery', '1ram@gmail.com', '3', '           tttt', 'tl', 't'),
(35, 'jquery', 'ram@gmail.com', '1', '           lllll', 'jj', 'l'),
(36, 'jquery', 'ram@gmail.com', '2', '           kkkkkk', 'h', 'k'),
(37, 'jquery', 'ram@gmail.com', '3', '           tttt', 'g', 't');
--
-- Database: `site`
--
CREATE DATABASE IF NOT EXISTS `site` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `site`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `name` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `Tname` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `Tprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`name`, `phone`, `email`, `district`, `Tname`, `quantity`, `Tprice`) VALUES
('Ram', 99343738, 'krishv.krishv51@gmail.com', 'Jharkhand', 'SILVER', 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `fbreg`
--

CREATE TABLE IF NOT EXISTS `fbreg` (
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Ephone` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fbreg`
--

INSERT INTO `fbreg` (`Fname`, `Lname`, `Ephone`, `password`, `date`, `gender`) VALUES
('Ram', 'Krishna', 'krishv.krishv51@gmail.coom', 'rinoy154rey', '1992-09-05', 'Male'),
('', '', '', '', '0000-00-00', ''),
('Tabassum', 'Jahan', 'taby@gmail.com', 'zeba', '1991-11-19', 'Female'),
('Krishna', 'Keshri', 'krishna@gmail.com', 'krishna', '1990-08-10', 'Male'),
('pramit', 'ekka', 'pramit@gmail.com', '123456', '1988-12-03', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `imageview`
--

CREATE TABLE IF NOT EXISTS `imageview` (
  `roll` int(11) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imageview`
--

INSERT INTO `imageview` (`roll`, `img`) VALUES
(1, 'ho.png');

-- --------------------------------------------------------

--
-- Table structure for table `reginfo`
--

CREATE TABLE IF NOT EXISTS `reginfo` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reginfo`
--

INSERT INTO `reginfo` (`user`, `password`, `phone`, `email`) VALUES
('ram', 'ram', 99343738, 'krishv.krishv51@gmail.com'),
('ritesh', 'ritesh', 99346567, 'ritesh@gmail.com'),
('ram', 'ram', 2147483647, 'ram@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `stuinfo`
--

CREATE TABLE IF NOT EXISTS `stuinfo` (
  `roll` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `dist` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuinfo`
--

INSERT INTO `stuinfo` (`roll`, `name`, `email`, `phone`, `dist`) VALUES
(1, 'priyanka', 'priyanka@gmail.com', 99875698, 'jharkhand'),
(2, 'kajal', 'kajal@gmail.com', 87594687, 'jharkhand');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `Tid` varchar(30) NOT NULL,
  `Tname` varchar(30) NOT NULL,
  `Tprice` int(11) NOT NULL,
  `Tquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Tid`, `Tname`, `Tprice`, `Tquantity`) VALUES
('SL', 'SILVER', 100, 28);
--
-- Database: `studentdetails`
--
CREATE DATABASE IF NOT EXISTS `studentdetails` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `studentdetails`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `roll` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phy` int(11) NOT NULL,
  `chem` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `eng` int(11) NOT NULL,
  `hindi` int(11) NOT NULL,
  `computer` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `grade` varchar(30) NOT NULL,
  UNIQUE KEY `roll` (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll`, `name`, `phy`, `chem`, `math`, `eng`, `hindi`, `computer`, `total`, `percentage`, `grade`) VALUES
(1, 'priyanka', 89, 90, 78, 89, 70, 90, 506, 84, 'A'),
(2, 'nell', 50, 80, 78, 89, 70, 60, 427, 71, 'A'),
(3, 'neha', 89, 90, 78, 89, 70, 98, 514, 86, ''),
(4, 'kunal', 50, 60, 78, 89, 60, 60, 397, 66, 'B'),
(5, 'rocky', 50, 50, 50, 30, 50, 50, 280, 47, 'C'),
(6, 'john', 40, 40, 30, 30, 30, 20, 190, 32, 'Failed');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tourism`
--
CREATE DATABASE IF NOT EXISTS `tourism` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tourism`;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `price`) VALUES
(1, 'AC-BUS', 500),
(2, 'Non-AC-BUS', 200);

-- --------------------------------------------------------

--
-- Table structure for table `bus_book`
--

CREATE TABLE IF NOT EXISTS `bus_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busType` varchar(50) NOT NULL,
  `from` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `price`) VALUES
(1, 'Tata Sumo', 1000),
(2, 'Bolero', 1500),
(3, 'Scorpio', 2000),
(4, 'Xuv 500', 2500),
(5, 'Tata Indigo', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `car_book`
--

CREATE TABLE IF NOT EXISTS `car_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carType` varchar(50) NOT NULL,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `mobile`, `message`) VALUES
('Leo', 'leo@gmail.com', '4521547865', 'Nice site');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_book`
--

CREATE TABLE IF NOT EXISTS `hotel_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `hotelname` varchar(50) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `price` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hotel_book`
--

INSERT INTO `hotel_book` (`id`, `city`, `hotelname`, `checkin`, `checkout`, `price`, `mobile`, `adult`, `child`, `email`) VALUES
(1, 'East Singhbhum', 'Ramada', '2017-05-24', '0207-05-27', 5500, 2147483647, 3, 1, 'g@gmail.com'),
(2, 'East Singhbhum', 'Hotel Alcor', '2017-05-27', '2017-05-30', 4500, 2147483647, 5, 2, 'h@gmail.com'),
(3, 'Ranchi', 'Select Hotel', '2018-02-04', '2018-04-04', 5000, 646464, 3, 2, 'e@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_details`
--

CREATE TABLE IF NOT EXISTS `hotel_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hotel_details`
--

INSERT INTO `hotel_details` (`id`, `name`, `city`, `address`, `mobile`, `image`, `direction`, `price`) VALUES
(1, 'Radisson Blu ', 'Ranchi', 'Main Road Kadru Diversion,Opp Chamber of Commerce, Ranchi, 834001', '0651 660 2222', 'raddisonblue.jpg', 'Radisson Blu ,Ranchi,jharkhand', 5000),
(2, 'Chanakya BNR', 'Ranchi', 'Station Rd, Ranchi, Jharkhand 834001', ' 0651 246 1211', 'Chanakya.jpg', 'Chanakya BNR,Ranchi,jharkhand', 4500),
(3, 'Hotel Arya', 'Ranchi', 'H.B. Road, Lalpur, Ranchi, Jharkhand 834001', '0651 256 1971', 'hotel-arya.jpg', 'Hotel Arya,Ranchi,jharkhand', 2000),
(4, 'Ginger Hotel', 'East Singhbhum', 'Plot no 678 & 1008, Opposite Voltas Building,, Bistupur Main Rd, Bistupur, Jamshedpur, Jharkhand 831', '0657 666 3333', 'ginger-hotel.jpg', 'Ginger Hotel,East Singhbhum,jharkhand', 4000),
(5, 'Ramada', 'East Singhbhum', 'Holding No 3 Bistupur, Jamshedpur, Jharkhand 831011', '0657 660 5000', 'ramadajam.jpg', 'Ramada,East Singhbhum,jharkhand', 5500),
(6, 'Hotel Alcor', 'East Singhbhum', 'Holding No. 4 Ram Das Bhatta Bistupur, Jamshedpur, Jharkhand 831001', '0657 662 0001', 'alcorejam.jpg', 'Hotel Alcor,East Singhbhum,jharkhand', 4500),
(7, 'Fortune Park Centre Point - Hotel ', 'East Singhbhum', 'Janki Apartments, Inner Cir Rd, Contractors Area, Bistupur, Jamshedpur, Jharkhand 831001', '0657 398 8444', 'fortune.jpg', 'Fortune Park Centre Point - Hotel ,East Singhbhum,', 5000),
(8, 'PRANA', 'Ranchi', '6th & 7th Floor, RS Square, Beside Vishal Mart, Harmu Road, Kumhar Toli, Ranchi, Jharkhand 834001', '078087 99991', 'prana.jpg', 'PRANA,Ranchi,jharkhand', 3000),
(9, 'CAPITOL RESIDENCY', 'Ranchi', 'Station Road, Near Ranchi Railway Station, Ranchi, Jharkhand 834001', '0651 660 7777', 'capital.jpg', 'CAPITOL RESIDENCY,Ranchi,jharkhand', 4500),
(10, 'Hotel Mahi Residency', 'Ranchi', 'Sujata Cinema Compound, Main Road, Ranchi, Jharkhand 834001', '0651 645 0361', 'hotelmahi.jpg', 'Hotel Mahi Residency,Ranchi,jharkhand', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE IF NOT EXISTS `location_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `information` longtext NOT NULL,
  `pin` varchar(10) NOT NULL,
  `image` varchar(40) NOT NULL,
  `direction` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `place` (`place`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`id`, `place`, `city`, `information`, `pin`, `image`, `direction`, `active`) VALUES
(1, 'Patratu Dam', 'Ranchi', 'Patratu Dam.... The dam was made to store water of the Nalkari River; this is the main attraction of Patratu. ... The Patratu Dam, 30 km from Ramgarh and 35 km from Ranchi, supplies water to Ramgarh cantonment area as well as the main reservoir of Patratu Thermal Power Plant (PTPS).\r\n', '829118', 'patratu2.png', 'Patratu Dam,Ranchi,jharkhand,829118', 1),
(2, 'Kanke Dam', 'Ranchi', 'Kanke is a census town in Ranchi district in the Indian state of Jharkhand. Kanke has a large water reservoir called Kanke Dam, which is used to supply water to Ranchi city.', '834006', 'kanke1.png', 'kanke dam,ranchi,jharkhand,834006', 1),
(3, 'Pahari Mandir', 'Ranchi', 'The temple of Lord Shankara (Shiva) is situated in the heart of the city on a hill called Pahari Mandir. It is a bare black land outcropping in the midst of a flat land. The age old Pahari Mandir is located 8 kms from the railway station and 12 kms from the airport. The 2140 feet Ranchi hill houses the temple at its summit. One needs to climb a flight of 468 steps to reach the summit.', '834001', 'paharimander.jpeg', 'pahari mandir,ranchi,jharkhand,834001', 1),
(4, 'Dimna Lake (Jamshedpur)', 'East Singhbhum', 'Dimna Lake is an artificial lake in Jamshedpur, which is situated at around 13 km from the city. This lake lies at the foot hills of Dalma Mountain ranges. The Dimna Lake is important for the city, as it serves like a water reservoir for the steel plant and the main drinking water source.', '831012', 'dimna-lake.jpg', 'dimna lake,east singhbhum,jharkhand,831012', 1),
(5, 'Rock Garden', 'Ranchi', 'Next to picturesque Kanke Dam, this spot has been developed into an artificial garden, complete with waterfalls and sculptures, to attract tourists. The rock garden is beautiful in its appearance, striking a balance between the creativity of modern and ancient man. There is a footbridge, made of Iron rod and has only two pole.\r\nRock Garden in a scenic hillock is located nearby the Albert Ekka Chowk in Ranchi. The lake at the foot of the hill is very beautiful and attractive and is an ideal place to relax. ', '834006', 'rock garden.jpg', 'rock garden,ranchi,jharkhand,834006', 1),
(6, 'Jubilee Park (Jamshedpur)', 'east singhbhum', 'Jubilee Park covers a large area of 237.75 acres and is located in the middle of the city. This park was gifted by the Tata Steel Company to the local populace for the completion of 50 years of establishment of the city in 1958. Jubilee Park, which is also known as the Mughal Garden, has been modelled like the Vrindhavan Garden of Mysore.\r\n\r\nThe park features colourful fountains, Jayanti Sarovar, Smriti Udyan and Foliage Park. There is also a Nicco Park or the recreational centre in the park, where children can enjoy thrilling rides. The Tata Steel Zoological Park and the Upvan of the Jubilee Park are prominent picnic spots. Moreover, on the birth anniversary of the Shri Jamshedji Tata, the founder of the city, this park is decorated with lights and other items.', '831001', 'jubilee park.JPG', 'Jubilee Park (Jamshedpur),east singhbhum,jharkhand,831001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'ram', 'ram', 'user'),
(3, 'kunal', 'kunal', 'user'),
(4, 'jo', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `mobile`, `address`, `gender`) VALUES
(1, 'ram', 'ram@gmail.com', '7686564372', 'Addadityapur,jamshedpur', 'male'),
(2, 'kunal', 'kunal@gmail.com', '654646465464', 'ranchi', 'male'),
(3, 'jo', 'jo@gmail.com', '5874896578', 'adityapur', 'male');
--
-- Database: `try`
--
CREATE DATABASE IF NOT EXISTS `try` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `try`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'india'),
(2, 'usa');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `country_id`) VALUES
(1, 'bihar', 1),
(2, 'jharkhand', 1),
(3, 'odisha', 1),
(4, 'up', 1),
(5, 'alabama', 2),
(6, 'alaska', 2),
(7, 'kansas', 2),
(8, 'indiana', 2);
--
-- Database: `wp-kam`
--
CREATE DATABASE IF NOT EXISTS `wp-kam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wp-kam`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-26 17:39:28', '2017-07-26 17:39:28', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=397 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wrdpresskame/wordpress', 'yes'),
(2, 'home', 'http://localhost/wrdpresskame/wordpress', 'yes'),
(3, 'blogname', 'commerce', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'krishv.krishv51@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:17:"index.php/shop/?$";s:27:"index.php?post_type=product";s:47:"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:42:"index.php/shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"index.php/shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:65:"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:60:"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:41:"index.php/product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:53:"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:35:"index.php/product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:62:"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:57:"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:38:"index.php/product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:50:"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:32:"index.php/product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"index.php/product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:43:"index.php/product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'anissa', 'yes'),
(41, 'stylesheet', 'anissa', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:3;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:4;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:5;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";N;s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'cron', 'a:9:{i:1501142672;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1501177170;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501177197;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501182272;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501200000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501225472;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501225644;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501545600;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(108, 'theme_mods_twentyseventeen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(112, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1501140373;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_timeout_browser_6aa1710f6cbdaeb3492b9b81a594db91', '1501695590', 'no'),
(120, '_site_transient_browser_6aa1710f6cbdaeb3492b9b81a594db91', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(140, '_transient_timeout_plugin_slugs', '1501225476', 'no'),
(141, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:27:"woocommerce/woocommerce.php";}', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'auto_updater.lock', '1501138758', 'no'),
(145, '_site_transient_timeout_theme_roots', '1501142171', 'no'),
(146, '_site_transient_theme_roots', 'a:4:{s:6:"anissa";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(147, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1501149567', 'no'),
(148, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4356;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2488;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2357;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2221;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1825;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1596;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1577;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1435;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1350;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1346;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1330;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1270;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1266;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1117;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1049;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1042;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:996;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:940;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:815;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:800;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:799;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:772;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:764;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:667;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:662;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:661;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:653;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:637;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:636;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:616;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:601;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:591;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:587;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:586;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:573;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:572;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:564;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:554;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:542;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:540;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:533;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:521;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:509;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:503;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:495;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:493;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:480;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:473;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:471;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:469;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:465;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:443;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:439;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:437;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:436;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:435;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:424;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:413;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:405;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:401;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:400;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:395;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:380;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:379;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:377;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:369;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:353;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:344;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:333;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:330;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:329;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:323;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:323;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:320;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:318;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:317;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:317;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:302;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:298;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:292;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:291;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:282;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:282;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:280;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:278;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:275;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:274;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:266;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:266;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:265;}}', 'no'),
(150, 'woocommerce_default_country', 'IN:JH', 'yes'),
(151, 'woocommerce_allowed_countries', 'all', 'yes'),
(153, 'woocommerce_all_except_countries', '', 'yes'),
(155, 'woocommerce_specific_allowed_countries', '', 'yes'),
(157, 'woocommerce_ship_to_countries', 'disabled', 'yes'),
(159, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(161, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(163, 'woocommerce_calc_taxes', 'no', 'yes'),
(165, 'woocommerce_demo_store', 'no', 'yes'),
(167, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(169, 'woocommerce_currency', 'GBP', 'yes'),
(170, 'woocommerce_currency_pos', 'left', 'yes'),
(172, 'woocommerce_price_thousand_sep', ',', 'yes'),
(174, 'woocommerce_price_decimal_sep', '.', 'yes'),
(176, 'woocommerce_price_num_decimals', '2', 'yes'),
(177, 'woocommerce_weight_unit', 'kg', 'yes'),
(178, 'woocommerce_dimension_unit', 'cm', 'yes'),
(180, 'woocommerce_enable_reviews', 'yes', 'yes'),
(182, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(183, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(185, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(186, 'woocommerce_review_rating_required', 'yes', 'no'),
(187, 'woocommerce_shop_page_id', '', 'yes'),
(189, 'woocommerce_shop_page_display', '', 'yes'),
(191, 'woocommerce_category_archive_display', '', 'yes'),
(193, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(195, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(196, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(198, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(200, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(201, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(203, 'woocommerce_manage_stock', 'yes', 'yes'),
(204, 'woocommerce_hold_stock_minutes', '60', 'no'),
(206, 'woocommerce_notify_low_stock', 'yes', 'no'),
(208, 'woocommerce_notify_no_stock', 'yes', 'no'),
(210, 'woocommerce_stock_email_recipient', 'krishv.krishv51@gmail.com', 'no'),
(211, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(213, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(215, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(217, 'woocommerce_stock_format', '', 'yes'),
(218, 'woocommerce_file_download_method', 'force', 'no'),
(219, 'woocommerce_downloads_require_login', 'no', 'no'),
(221, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(223, 'woocommerce_prices_include_tax', 'no', 'yes'),
(224, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(226, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(228, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(229, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(231, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(233, 'woocommerce_tax_display_cart', 'excl', 'no'),
(235, 'woocommerce_price_display_suffix', '', 'yes'),
(237, 'woocommerce_tax_total_display', 'itemized', 'no'),
(239, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(241, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(243, 'woocommerce_ship_to_destination', 'billing', 'no'),
(245, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(247, 'woocommerce_enable_coupons', 'yes', 'yes'),
(249, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(251, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(253, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(254, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(256, 'woocommerce_cart_page_id', '', 'yes'),
(258, 'woocommerce_checkout_page_id', '', 'yes'),
(260, 'woocommerce_terms_page_id', '', 'no'),
(262, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(264, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(266, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(268, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(270, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(271, 'woocommerce_myaccount_page_id', '', 'yes'),
(272, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(274, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(275, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(277, 'woocommerce_registration_generate_username', 'yes', 'no'),
(279, 'woocommerce_registration_generate_password', 'no', 'no'),
(281, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(282, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(284, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(286, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(287, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(288, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(290, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(292, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(294, 'woocommerce_email_from_name', 'commerce', 'no'),
(296, 'woocommerce_email_from_address', 'krishv.krishv51@gmail.com', 'no'),
(298, 'woocommerce_email_header_image', '', 'no'),
(300, 'woocommerce_email_footer_text', 'commerce - Powered by WooCommerce', 'no'),
(302, 'woocommerce_email_base_color', '#96588a', 'no'),
(304, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(306, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(308, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(310, 'woocommerce_api_enabled', 'yes', 'yes'),
(312, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(314, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1501140373;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.1.1.zip";}}}', 'no'),
(334, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1501182203', 'no'),
(335, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no'),
(336, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1501182206', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(337, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 19:50:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.9-alpha-41158";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"The Month in WordPress: June 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Jul 2017 11:42:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4865";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:342:"We&#8217;re starting a new regular feature on this blog today. We&#8217;d like to keep everyone up-to-date about the happenings all across the WordPress open source project and highlight how you can get involved, so we&#8217;ll be posting a roundup of all the major WordPress news at the end of every month. Aside from other general [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:9225:"<p><i>We&#8217;re starting a new regular feature on this blog today. We&#8217;d like to keep everyone up-to-date about the happenings all across the WordPress open source project and highlight how you can get involved, so we&#8217;ll be posting a roundup of all the major WordPress news at the end of every month.</i></p>\n<p>Aside from other general news, the three big events in June were the release of WordPress 4.8, WordCamp Europe 2017, and the WordPress Community Summit. Read on to hear more about these as well as other interesting stories from around the WordPress world.</p>\n<hr />\n<h2>WordPress 4.8</h2>\n<p>On June 8, a week before the Community Summit and WordCamp Europe,<a href="https://wordpress.org/news/2017/06/evans/"> WordPress 4.8 was released</a>.You can read<a href="https://make.wordpress.org/core/2017/05/26/wordpress-4-8-field-guide/"> the Field Guide</a> for a comprehensive overview of all the features of this release (the News and Events widget in the dashboard is one of the major highlights).</p>\n<p>Most people would either have their version auto-updated, or their hosts would have updated it for them. For the rest, the updates have gone smoothly with no major issues reported so far.</p>\n<p>This WordPress release saw contributions from 346 individuals; you can find their names in <a href="https://wordpress.org/news/2017/06/evans/">the announcement post</a>. To get involved in building WordPress core, jump into the #core channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/core/">the Core team blog</a>.</p>\n<h2>WordCamp Europe 2017</h2>\n<p><a href="https://2017.europe.wordcamp.org/">WordCamp Europe 2017</a> was held in Paris between June 15-17. The event began with a Contributor Day, followed by two days of talks and community goodness. The talks were live-streamed, but you can still catch all the recordings <a href="http://wordpress.tv/event/wordcamp-europe-2017/">on WordPress.tv</a>. The organisers also published <a href="https://2017.europe.wordcamp.org/2017/06/30/wordcamp-europe-2017-in-paris-its-a-wrap/">a handy wrap-up of the event</a>.</p>\n<p>WordCamp Europe exists to bring together the WordPress community from all over the continent, as well as to inspire local communities everywhere to get their own events going — to that end, the event was a great success, as a host of new meetup groups have popped up in the weeks following WordCamp Europe.</p>\n<p>The work that Contributor Day participants accomplished was both varied and valuable, covering all aspects of the WordPress project — have a look through <a href="https://make.wordpress.org/">the Make blogs</a> for updates from each team.</p>\n<p>Finally, we also learned during the event that <a href="https://2017.europe.wordcamp.org/2017/06/17/belgrade-serbia-to-host-wordcamp-europe-2018/">WordCamp Europe 2018 will be held in Belgrade, Serbia</a>, continuing the tradition of exploring locations and communities across the continent.</p>\n<h2>WordPress Community Summit</h2>\n<p>The fourth WordPress Community Summit took place during the two days leading up to WordCamp Europe 2017. This event is an invite-only unconference where people from all over the WordPress community come together to discuss some of the more difficult issues in the community, as well as to make plans for the year ahead in each of the contribution teams.</p>\n<p>As the Summit is designed to be a safe space for all attendees, the notes from each discussion are in the process of being anonymized before we publish them on <a href="https://make.wordpress.org/summit/">the Summit blog</a> (so stay tuned &#8211; they’ll show up there over the next few weeks).</p>\n<p>You can already see the final list of topics that were proposed for the event <a href="https://make.wordpress.org/summit/2017/06/10/community-summit-2017-final-list-of-topic/">here</a> (although a few more were added during the course of the two day Summit).</p>\n<h2>WordPress marketing push continues apace</h2>\n<p>As part of the push to be more intentional in marketing WordPress (as per Matt Mullenweg&#8217;s <a href="http://wordpress.tv/2016/12/07/matt-mullenweg-state-of-the-word-2016/">2016 State of the Word</a>), the Marketing team has launched two significant drives to obtain more information about who uses WordPress and how that information can shape their outreach and messaging efforts.</p>\n<p><a href="https://make.wordpress.org/marketing/2017/06/15/wordpress-case-studies-and-usage-survey/">The team is looking for WordPress case studies</a> and is asking users, agencies, and freelancers to take a WordPress usage survey. This will go a long way towards establishing a marketing base for WordPress as a platform and as a community — and many people in the community are looking forward to seeing this area develop further.</p>\n<p>To get involved in the WordPress Marketing team, you can visit <a href="https://make.wordpress.org/marketing/">their team blog</a>.</p>\n<h2>New Gutenberg editor available for testing</h2>\n<p>For some time now, the Core team has been hard at work on a brand-new text editor for WordPress — this project has been dubbed “Gutenberg.” The project’s ultimate goal is to replace the existing TinyMCE editor, but for now it is in beta and available for public testing — <a href="https://wordpress.org/plugins/gutenberg/">you can download it here as a plugin</a> and install it on any WordPress site.</p>\n<p>This feature is still in beta, so we don’t recommend using it on a production site. If you test it out, though, you’ll find that it is a wholly different experience to what you are used to in WordPress. It’s a more streamlined, altogether cleaner approach to the text-editing experience than we’ve had before, and something that many people are understandably excited about. Matt Mullenweg discussed the purpose of Gutenberg in more detail during <a href="http://wordpress.tv/2017/07/01/interview-and-qanda-with-matt-mullenweg/">his Q&amp;A at WordCamp Europe</a>.</p>\n<p>There are already a few reviews out from <a href="https://kinsta.com/blog/gutenberg-wordpress-editor/">Brian Jackson at Kinsta</a>, <a href="https://daily.jorb.in/2017/06/random-thoughts-on-gutenberg/">Aaron Jorbin</a>, and <a href="https://www.mattcromwell.com/gutenberg-first-impressions/">Matt Cromwell</a> (among many others). Keep in mind that the project is in constant evolution at this stage; when it eventually lands in WordPress core (probably in v5.0), it could look very different from its current iteration — that’s what makes this beta stage and user testing so important.</p>\n<p>To get involved with shaping the future of Gutenberg, please <a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">test it out</a>, and join the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>. You can also visit <a href="https://github.com/WordPress/gutenberg">the project’s GitHub repository</a> to report issues and contribute to the codebase.</p>\n<hr />\n<h2>Further reading:</h2>\n<ul>\n<li style="font-weight: 400">Bridget Willard <a href="https://make.wordpress.org/community/2017/06/21/proposed-wordcamp-editorial-calendar/">has proposed an editorial calendar</a> to assist WordCamp organizers with publishing content for their event.</li>\n<li style="font-weight: 400">A new kind of niche WordCamp, <a href="https://2017-denver.journalist.wordcamp.org/">WordCamp for Publishers in Denver</a>, has opened ticket sales.</li>\n<li style="font-weight: 400">The WordPress iOS app was updated with <a href="https://en.blog.wordpress.com/2017/06/21/an-all-new-media-library-for-the-wordpress-ios-app/">a fresh, new media library</a> this month.</li>\n<li style="font-weight: 400">It looks like <i>Underscores</i>, the popular WordPress starter theme, <a href="https://themeshaper.com/2017/06/26/the-future-of-underscores-and-a-new-committer/">has a bright future ahead of it</a>, with a renewed vision and new committer.</li>\n<li style="font-weight: 400">The always-inspiring Tom McFarlin <a href="https://tommcfarlin.com/simple-autoloader-for-wordpress">has released a simple autoloader for WordPress</a> that looks very useful indeed.</li>\n<li style="font-weight: 400">After a bit of a discussion on Twitter regarding the differences between WordPress.org, WordPress.com, and Jetpack, <a href="https://helen.wordpress.com/2017/06/21/restaurant-vs-meal-kit-vs-grocery-shopping-or-wordpress-com-vs-jetpack-vs-wordpress-org/">Helen Hou-Sandí came up with a great analogy</a> and an interesting post about it all.</li>\n<li style="font-weight: 400">If you’re interested in contributing specifically to the JavaScript or PHP areas of the WordPress core codebase, then the new #core-js and #core-php channels in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a> are perfect for you.</li>\n</ul>\n<p><i>If you have a story we should consider including in the next “Month in WordPress” post, please </i><a href="https://make.wordpress.org/community/month-in-wordpress-submissions/"><i>submit it here</i></a><i>.</i></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4865";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"WordPress 4.8 “Evans”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wordpress.org/news/2017/06/evans/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Jun 2017 14:49:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4770";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"An Update with You in Mind Gear up for a more intuitive WordPress! Version 4.8 of WordPress, named &#8220;Evans&#8221; in honor of jazz pianist and composer William John &#8220;Bill&#8221; Evans, is available for download or update in your WordPress dashboard. New features in 4.8 add more ways for you to express yourself and represent your brand. Though some [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:42629:"<h2 style="text-align: center">An Update with You in Mind</h2>\n<p><img class="aligncenter size-large wp-image-4816" src="https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?resize=632%2C316&#038;ssl=1" alt="" srcset="https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?resize=1024%2C512&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<h3>Gear up for a more intuitive WordPress!</h3>\n<p>Version 4.8 of WordPress, named &#8220;Evans&#8221; in honor of jazz pianist and composer William John &#8220;Bill&#8221; Evans, is available for download or update in your WordPress dashboard. New features in 4.8 add more ways for you to express yourself and represent your brand.</p>\n<p>Though some updates seem minor, they’ve been built by hundreds of contributors with <em>you</em> in mind. Get ready for new features you’ll welcome like an old friend: link improvements, <em>three</em> new media widgets covering images, audio, and video, an updated text widget that supports visual editing, and an upgraded news section in your dashboard which brings in nearby and upcoming WordPress events.</p>\n<hr />\n<h2 style="text-align: center">Exciting Widget Updates</h2>\n<p><img class="size-large wp-image-4776 aligncenter" src="https://i1.wp.com/wordpress.org/news/files/2017/06/widgets-with-all-four.png?resize=632%2C436&#038;ssl=1" alt="" srcset="https://i1.wp.com/wordpress.org/news/files/2017/06/widgets-with-all-four.png?resize=1024%2C706&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2017/06/widgets-with-all-four.png?resize=300%2C207&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2017/06/widgets-with-all-four.png?resize=768%2C530&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2017/06/widgets-with-all-four.png?w=1264&amp;ssl=1 1264w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<h3>Image Widget</h3>\n<p>Adding an image to a widget is now a simple task that is achievable for any WordPress user without needing to know code. Simply insert your image right within the widget settings. Try adding something like a headshot or a photo of your latest weekend adventure — and see it appear automatically.</p>\n<h3>Video Widget</h3>\n<p>A welcome video is a great way to humanize the branding of your website. You can now add any video from the Media Library to a sidebar on your site with the new Video widget. Use this to showcase a welcome video to introduce visitors to your site or promote your latest and greatest content.</p>\n<h3>Audio Widget</h3>\n<p>Are you a podcaster, musician, or avid blogger? Adding a widget with your audio file has never been easier. Upload your audio file to the Media Library, go to the widget settings, select your file, and you’re ready for listeners. This would be a easy way to add a more personal welcome message, too!</p>\n<h3>Rich Text Widget</h3>\n<p>This feature deserves a parade down the center of town! Rich-text editing capabilities are now native for Text widgets. Add a widget anywhere and format away. Create lists, add emphasis, and quickly and easily insert links. Have fun with your newfound formatting powers, and watch what you can accomplish in a short amount of time.</p>\n<hr />\n<h2 style="text-align: center">Link Boundaries</h2>\n<div id="v-8BDWH3QG-1" class="video-player"><video id="v-8BDWH3QG-1-video" width="632" height="342" poster="https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_dvd.original.jpg" controls="true" preload="metadata" dir="ltr" lang="en"><source src="https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_dvd.mp4" type="video/mp4; codecs=&quot;avc1.64001E, mp4a.40.2&quot;" /><source src="https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_fmt1.ogv" type="video/ogg; codecs=&quot;theora, vorbis&quot;" /><div><img alt="Link Boundaries" src="https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_dvd.original.jpg?resize=632%2C342" data-recalc-dims="1" /></div><p>Link Boundaries</p></video></div>\n<p>Have you ever tried updating a link, or the text around a link, and found you can&#8217;t seem to edit it correctly? When you edit the text after the link, your new text also ends up linked. Or you edit the text in the link, but your text ends up outside of it. This can be frustrating! With link boundaries, a great new feature, the process is streamlined and your links will work well. You’ll be happier. We promise.</p>\n<hr />\n<h2 style="text-align: center">Nearby WordPress Events</h2>\n<p><img class="aligncenter wp-image-4779 size-large" src="https://i2.wp.com/wordpress.org/news/files/2017/06/events-widget.png?resize=632%2C465&#038;ssl=1" alt="" srcset="https://i2.wp.com/wordpress.org/news/files/2017/06/events-widget.png?resize=1024%2C753&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2017/06/events-widget.png?resize=300%2C221&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2017/06/events-widget.png?resize=768%2C565&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2017/06/events-widget.png?w=1126&amp;ssl=1 1126w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Did you know that WordPress has a thriving offline community with groups meeting regularly in more than 400 cities around the world? WordPress now draws your attention to the events that help you continue improving your WordPress skills, meet friends, and, of course, publish!</p>\n<p>This is quickly becoming one of our favorite features. While you are in the dashboard (because you’re running updates and writing posts, right?) all upcoming WordCamps and official WordPress Meetups — local to you — will be displayed.</p>\n<p>Being part of the community can help you improve your WordPress skills and network with people you wouldn&#8217;t otherwise meet. Now you can easily find your local events just by logging in to your dashboard and looking at the new Events and News dashboard widget.</p>\n<hr />\n<h2 style="text-align: center">Even More Developer Happiness <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f60a.png" alt="?" class="wp-smiley" style="height: 1em; max-height: 1em;" /></h2>\n<h3><a href="https://make.wordpress.org/core/2017/05/17/cleaner-headings-in-the-admin-screens/">More Accessible Admin Panel Headings</a></h3>\n<p>New CSS rules mean extraneous content (like “Add New” links) no longer need to be included in admin-area headings. These panel headings improve the experience for people using assistive technologies.</p>\n<h3><a href="https://make.wordpress.org/core/2017/05/22/removal-of-core-embedding-support-for-wmv-and-wma-file-formats/">Removal of Core Support for WMV and WMA Files</a></h3>\n<p>As fewer and fewer browsers support Silverlight, file formats which require the presence of the Silverlight plugin are being removed from core support. Files will still display as a download link, but will no longer be embedded automatically.</p>\n<h3><a href="https://make.wordpress.org/core/2017/05/22/multisite-focused-changes-in-4-8/">Multisite Updates</a></h3>\n<p>New capabilities have been introduced to 4.8 with an eye towards removing calls to<br />\n<code>is_super_admin()</code>. Additionally, new hooks and tweaks to more granularly control site and user counts per network have been added.</p>\n<h3><a href="https://make.wordpress.org/core/2017/05/23/addition-of-tinymce-to-the-text-widget/">Text-Editor JavaScript API</a></h3>\n<p>With the addition of TinyMCE to the text widget in 4.8 comes a new JavaScript API for instantiating the editor after page load. This can be used to add an editor instance to any text area, and customize it with buttons and functions. Great for plugin authors!</p>\n<h3><a href="https://make.wordpress.org/core/2017/05/26/media-widgets-for-images-video-and-audio/">Media Widgets API</a></h3>\n<p>The introduction of a new base media widget REST API schema to 4.8 opens up possibilities for even more media widgets (like galleries or playlists) in the future. The three new media widgets are powered by a shared base class that covers most of the interactions with the media modal. That class also makes it easier to create new media widgets and paves the way for more to come.</p>\n<h3><a href="https://make.wordpress.org/core/2017/05/16/customizer-sidebar-width-is-now-variable/">Customizer Width Variable</a></h3>\n<p>Rejoice! New responsive breakpoints have been added to the customizer sidebar to make it wider on high-resolution screens. Customizer controls should use percentage-based widths instead of pixels.</p>\n<hr />\n<h2 style="text-align: center">The Squad</h2>\n<p>This release was led by <a href="https://matt.blog">Matt</a> and <a href="https://profiles.wordpress.org/jbpaul17">Jeff Paul</a>, with the help of the following fabulous folks. There are 346 contributors with props in this release, with 106 of them contributing for the first time. Pull up some Bill Evans on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abrightclearweb">abrightclearweb</a>, <a href="https://profiles.wordpress.org/ibachal">Achal Jain</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/acmethemes">Acme Themes</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adammacias">adammacias</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/ahmadawais">ahmadawais</a>, <a href="https://profiles.wordpress.org/airesvsg">airesvsg</a>, <a href="https://profiles.wordpress.org/ajoah">ajoah</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/akshayvinchurkar">akshayvinchurkar</a>, <a href="https://profiles.wordpress.org/schlessera">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/ironpaperweight">Alex Hon</a>, <a href="https://profiles.wordpress.org/alex27">alex27</a>, <a href="https://profiles.wordpress.org/allancole">allancole</a>, <a href="https://profiles.wordpress.org/arush">Amanda Rush</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andrewp-2">Andreas Panag</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/kelderic">Andy Mercer</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/aniketpant">Aniket Pant</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/ahortin">Anthony Hortin</a>, <a href="https://profiles.wordpress.org/antisilent">antisilent</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/apokalyptik">apokalyptik</a>, <a href="https://profiles.wordpress.org/artoliukkonen">artoliukkonen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/attitude">attitude</a>, <a href="https://profiles.wordpress.org/backermann">backermann</a>, <a href="https://profiles.wordpress.org/b-07">Bappi</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/quasel">Bernhard Gronau</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/binarymoon">binarymoon</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornw">BjornW</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/boblinthorst">boblinthorst</a>, <a href="https://profiles.wordpress.org/boboudreau">boboudreau</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/brainstormforce">Brainstorm Force</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianhogg">Brian Hogg</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/bronsonquick">Bronson Quick</a>, <a href="https://profiles.wordpress.org/sixhours">Caroline Moore</a>, <a href="https://profiles.wordpress.org/caseypatrickdriscoll">Casey Driscoll</a>, <a href="https://profiles.wordpress.org/caspie">Caspie</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/cheeserolls">cheeserolls</a>, <a href="https://profiles.wordpress.org/chesio">chesio</a>, <a href="https://profiles.wordpress.org/ketuchetan">chetansatasiya</a>, <a href="https://profiles.wordpress.org/choongsavvii">choong</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chredd">chredd</a>, <a href="https://profiles.wordpress.org/chrisjean">Chris Jean</a>, <a href="https://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="https://profiles.wordpress.org/chris_d2d">Chris Smith</a>, <a href="https://profiles.wordpress.org/chrisvanpatten">Chris Van Patten</a>, <a href="https://profiles.wordpress.org/chriswiegman">Chris Wiegman</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="https://profiles.wordpress.org/christian1012">Christian Chung</a>, <a href="https://profiles.wordpress.org/cwpnolen">Christian Nolen</a>, <a href="https://profiles.wordpress.org/needle">Christian Wach</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/clarionwpdeveloper">Clarion Technologies</a>, <a href="https://profiles.wordpress.org/claudiosanches">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiosmweb">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiolabarbera">ClaudioLaBarbera</a>, <a href="https://profiles.wordpress.org/codemovementpk">codemovement.pk</a>, <a href="https://profiles.wordpress.org/coderkevin">coderkevin</a>, <a href="https://profiles.wordpress.org/codfish">codfish</a>, <a href="https://profiles.wordpress.org/coreymcollins">coreymcollins</a>, <a href="https://profiles.wordpress.org/curdin">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/cgrymala">Curtiss Grymala</a>, <a href="https://profiles.wordpress.org/cdog">Cătălin Dogaru</a>, <a href="https://profiles.wordpress.org/danhgilmore">danhgilmore</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/danielpietrasik">Daniel Pietrasik</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dllh">Daryl L. L. Houston (dllh)</a>, <a href="https://profiles.wordpress.org/davepullig">Dave Pullig</a>, <a href="https://profiles.wordpress.org/goto10">Dave Romsey (goto10)</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/turtlepod">David Chandra Purnama</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dglingren">David Lingren</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/davidbhayes">davidbhayes</a>, <a href="https://profiles.wordpress.org/folletto">Davide ''Folletto'' Casali</a>, <a href="https://profiles.wordpress.org/deeptiboddapati">deeptiboddapati</a>, <a href="https://profiles.wordpress.org/delphinus">delphinus</a>, <a href="https://profiles.wordpress.org/deltafactory">deltafactory</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/pcfreak30">Derrick Hammer</a>, <a href="https://profiles.wordpress.org/derrickkoo">Derrick Koo</a>, <a href="https://profiles.wordpress.org/dimchik">dimchik</a>, <a href="https://profiles.wordpress.org/dineshc">Dinesh Chouhan</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">Dipesh Kakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dotancohen">Dotan Cohen</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/doughamlin">doughamlin</a>, <a href="https://profiles.wordpress.org/dreamon11">DreamOn11</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/duncanjbrown">duncanjbrown</a>, <a href="https://profiles.wordpress.org/dungengronovius">dungengronovius</a>, <a href="https://profiles.wordpress.org/dylanauty">DylanAuty</a>, <a href="https://profiles.wordpress.org/hurtige">Eddie Hurtig</a>, <a href="https://profiles.wordpress.org/oso96_2000">Eduardo Reveles</a>, <a href="https://profiles.wordpress.org/chopinbach">Edwin Cromley</a>, <a href="https://profiles.wordpress.org/electricfeet">ElectricFeet</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elyobo">elyobo</a>, <a href="https://profiles.wordpress.org/enodekciw">enodekciw</a>, <a href="https://profiles.wordpress.org/enshrined">enshrined</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/pushred">Eric Lanehart</a>, <a href="https://profiles.wordpress.org/eherman24">Evan Herman</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fencer04">Fencer04</a>, <a href="https://profiles.wordpress.org/florianbrinkmann">Florian Brinkmann</a>, <a href="https://profiles.wordpress.org/mista-flo">Florian TIAR</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/fomenkoandrey">fomenkoandrey</a>, <a href="https://profiles.wordpress.org/frankiet">Francesco Taurino</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/fjarrett">Frankie Jarrett</a>, <a href="https://profiles.wordpress.org/akeif">Fred</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/fuscata">fuscata</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/goranseric">Goran &#352;erić</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/grantderepas">Grant Derepas</a>, <a href="https://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hiddenpearls">hiddenpearls</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hristo-sg">Hristo Pandjarov</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianedington">Ian Edington</a>, <a href="https://profiles.wordpress.org/idealien">idealien</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/implenton">implenton</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/ivdimova">ivdimova</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jakept">Jacob Peattie</a>, <a href="https://profiles.wordpress.org/whyisjake">Jake Spurlock</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/jamesacero">jamesacero</a>, <a href="https://profiles.wordpress.org/japh">Japh</a>, <a href="https://profiles.wordpress.org/jaredcobb">Jared Cobb</a>, <a href="https://profiles.wordpress.org/jayarjo">jayarjo</a>, <a href="https://profiles.wordpress.org/jdolan">jdolan</a>, <a href="https://profiles.wordpress.org/jdoubleu">jdoubleu</a>, <a href="https://profiles.wordpress.org/jblz">Jeff Bowen</a>, <a href="https://profiles.wordpress.org/jbpaul17">Jeff Paul</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jimt">jimt</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/jmusal">jmusal</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelcj91">Joel James</a>, <a href="https://profiles.wordpress.org/joen">Joen Asmussen</a>, <a href="https://profiles.wordpress.org/johanmynhardt">johanmynhardt</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/zyphonic">John Dittmar</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="https://profiles.wordpress.org/johnpgreen">johnpgreen</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jonathanbardo">Jonathan Bardo</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/daggerhart">Jonathan Daggerhart</a>, <a href="https://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/jonnyauk">jonnyauk</a>, <a href="https://profiles.wordpress.org/jordesign">jordesign</a>, <a href="https://profiles.wordpress.org/jorritschippers">JorritSchippers</a>, <a href="https://profiles.wordpress.org/joefusco">Joseph Fusco</a>, <a href="https://profiles.wordpress.org/jjeaton">Josh Eaton</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshcummingsdesign">joshcummingsdesign</a>, <a href="https://profiles.wordpress.org/joshkadis">joshkadis</a>, <a href="https://profiles.wordpress.org/joyously">Joy</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jrgould">JRGould</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/nukaga">Junko Nukaga</a>, <a href="https://profiles.wordpress.org/justinbusa">Justin Busa</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/jshreve">Justin Shreve</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/kacperszurek">kacperszurek</a>, <a href="https://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="https://profiles.wordpress.org/kalenjohnson">KalenJohnson</a>, <a href="https://profiles.wordpress.org/codebykat">Kat Hagan</a>, <a href="https://profiles.wordpress.org/kkoppenhaver">Keanan Koppenhaver</a>, <a href="https://profiles.wordpress.org/keesiemeijer">keesiemeijer</a>, <a href="https://profiles.wordpress.org/kellbot">kellbot</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="https://profiles.wordpress.org/koenschipper">koenschipper</a>, <a href="https://profiles.wordpress.org/kokarn">kokarn</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kouratoras">Konstantinos Kouratoras</a>, <a href="https://profiles.wordpress.org/kuchenundkakao">kuchenundkakao</a>, <a href="https://profiles.wordpress.org/kuldipem">kuldipem</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leobaiano">Leo Baiano</a>, <a href="https://profiles.wordpress.org/littlebigthing">LittleBigThings (Csaba)</a>, <a href="https://profiles.wordpress.org/lucasstark">Lucas Stark</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/lgedeon">Luke Gedeon</a>, <a href="https://profiles.wordpress.org/lukepettway">Luke Pettway</a>, <a href="https://profiles.wordpress.org/lyubomir_popov">lyubomir_popov</a>, <a href="https://profiles.wordpress.org/mageshp">mageshp</a>, <a href="https://profiles.wordpress.org/mahesh901122">Mahesh Waghmare</a>, <a href="https://profiles.wordpress.org/mangeshp">Mangesh Parte</a>, <a href="https://profiles.wordpress.org/manishsongirkar36">Manish Songirkar</a>, <a href="https://profiles.wordpress.org/mantismamita">mantismamita</a>, <a href="https://profiles.wordpress.org/mbootsman">Marcel Bootsman</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/mariovalney">Mario Valney</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J.</a>, <a href="https://profiles.wordpress.org/mbelchev">Mariyan Belchev</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mrwweb">Mark Root-Wiley</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/markshep">markshep</a>, <a href="https://profiles.wordpress.org/matveb">Matias Ventura</a>, <a href="https://profiles.wordpress.org/matrixik">matrixik</a>, <a href="https://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="https://profiles.wordpress.org/jaworskimatt">Matt Jaworski</a>, <a href="https://profiles.wordpress.org/mattking5000">Matt King</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="https://profiles.wordpress.org/maximeculea">Maxime Culea</a>, <a href="https://profiles.wordpress.org/mayukojpn">Mayo Moriyama</a>, <a href="https://profiles.wordpress.org/mckernanin">mckernanin</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mhowell">mhowell</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michalzuber">michalzuber</a>, <a href="https://profiles.wordpress.org/stubgo">Miina Sikk</a>, <a href="https://profiles.wordpress.org/mauteri">Mike Auteri</a>, <a href="https://profiles.wordpress.org/mihai2u">Mike Crantea</a>, <a href="https://profiles.wordpress.org/mdgl">Mike Glendinning</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikelittle">Mike Little</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mikeviele">Mike Viele</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/modemlooper">modemlooper</a>, <a href="https://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="https://profiles.wordpress.org/deremohan">Mohan Dere</a>, <a href="https://profiles.wordpress.org/monikarao">monikarao</a>, <a href="https://profiles.wordpress.org/morettigeorgiev">morettigeorgiev</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/mrbobbybryant">mrbobbybryant</a>, <a href="https://profiles.wordpress.org/nnaimov">Naim Naimov</a>, <a href="https://profiles.wordpress.org/natereist">Nate Reist</a>, <a href="https://profiles.wordpress.org/natewr">NateWr</a>, <a href="https://profiles.wordpress.org/nathanrice">nathanrice</a>, <a href="https://profiles.wordpress.org/nazgul">Nazgul</a>, <a href="https://profiles.wordpress.org/greatislander">Ned Zimmerman</a>, <a href="https://profiles.wordpress.org/krstarica">net</a>, <a href="https://profiles.wordpress.org/nikeo">Nicolas GUILLAUME</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/nikv">Nikhil Vimal</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/noplanman">noplanman</a>, <a href="https://profiles.wordpress.org/nullvariable">nullvariable</a>, <a href="https://profiles.wordpress.org/odie2">odie2</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/hideokamoto">Okamoto Hidetaka</a>, <a href="https://profiles.wordpress.org/orvils">orvils</a>, <a href="https://profiles.wordpress.org/oskosk">oskosk</a>, <a href="https://profiles.wordpress.org/ottok">Otto Kek&#228;l&#228;inen</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/imnok">Pantip Treerattanapitak (Nok)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/patilvikasj">patilvikasj</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pdufour">pdufour</a>, <a href="https://profiles.wordpress.org/piewp">Perdaan</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/phh">phh</a>, <a href="https://profiles.wordpress.org/php">php</a>, <a href="https://profiles.wordpress.org/delawski">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pippinsplugins">pippinsplugins</a>, <a href="https://profiles.wordpress.org/pjgalbraith">pjgalbraith</a>, <a href="https://profiles.wordpress.org/pkevan">pkevan</a>, <a href="https://profiles.wordpress.org/pratikchaskar">Pratik</a>, <a href="https://profiles.wordpress.org/pressionate">Pressionate</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/procodewp">procodewp</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/superpoincare">Ramanan</a>, <a href="https://profiles.wordpress.org/ramiabraham">ramiabraham</a>, <a href="https://profiles.wordpress.org/ranh">ranh</a>, <a href="https://profiles.wordpress.org/redsand">Red Sand Media Group</a>, <a href="https://profiles.wordpress.org/youknowriad">Riad Benguella</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/iamjolly">Robert Jolly</a>, <a href="https://profiles.wordpress.org/rnoakes3rd">Robert Noakes</a>, <a href="https://profiles.wordpress.org/d4z_c0nf">Rocco Aliberti</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/fronaldaraujo">Ronald Ara&#250;jo</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/guavaworks">Roy Sivan</a>, <a href="https://profiles.wordpress.org/ryankienstra">Ryan Kienstra</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ryanplas">Ryan Plas</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/samikeijonen">Sami Keijonen</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/sandesh055">Sandesh</a>, <a href="https://profiles.wordpress.org/smyoon315">Sang-Min Yoon</a>, <a href="https://profiles.wordpress.org/sanketparmar">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/pollyplummer">Sarah Gooding</a>, <a href="https://profiles.wordpress.org/sayedwp">Sayed Taqui</a>, <a href="https://profiles.wordpress.org/schrapel">schrapel</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scrappyhuborg">scrappy@hub.org</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/seancjones">seancjones</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/sgr33n">Sergio De Falco</a>, <a href="https://profiles.wordpress.org/sfpt">sfpt</a>, <a href="https://profiles.wordpress.org/shayanys">shayanys</a>, <a href="https://profiles.wordpress.org/shazahm1hotmailcom">shazahm1</a>, <a href="https://profiles.wordpress.org/shprink">shprink</a>, <a href="https://profiles.wordpress.org/simonlampen">simonlampen</a>, <a href="https://profiles.wordpress.org/skippy">skippy</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/snacking">snacking</a>, <a href="https://profiles.wordpress.org/solal">solal</a>, <a href="https://profiles.wordpress.org/soean">Soren Wrede</a>, <a href="https://profiles.wordpress.org/sstoqnov">Stanimir Stoyanov</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/sharkomatic">Steph</a>, <a href="https://profiles.wordpress.org/sswells">Steph Wells</a>, <a href="https://profiles.wordpress.org/sillybean">Stephanie Leary</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stevenlinx">stevenlinx</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/swapnild">swapnild</a>, <a href="https://profiles.wordpress.org/szaqal21">szaqal21</a>, <a href="https://profiles.wordpress.org/takahashi_fumiki">Takahashi Fumiki</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tapsboy">tapsboy</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/team">team</a>, <a href="https://profiles.wordpress.org/tg29359">tg29359</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/the">the</a>, <a href="https://profiles.wordpress.org/themeshaper">themeshaper</a>, <a href="https://profiles.wordpress.org/thenbrent">thenbrent</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/tierra">tierra</a>, <a href="https://profiles.wordpress.org/tnash">Tim Nash</a>, <a href="https://profiles.wordpress.org/timmydcrawford">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/timph">timph</a>, <a href="https://profiles.wordpress.org/tkama">Tkama</a>, <a href="https://profiles.wordpress.org/tnegri">tnegri</a>, <a href="https://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="https://profiles.wordpress.org/tjnowell">Tom J Nowell</a>, <a href="https://profiles.wordpress.org/tomdxw">tomdxw</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/transl8or">transl8or</a>, <a href="https://profiles.wordpress.org/traversal">traversal</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/trishasalas">Trisha Salas</a>, <a href="https://profiles.wordpress.org/tristangemus">tristangemus</a>, <a href="https://profiles.wordpress.org/truongwp">truongwp</a>, <a href="https://profiles.wordpress.org/tsl143">tsl143</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/valeriutihai">Valeriu Tihai</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/vrundakansara-1">Vrunda Kansara</a>, <a href="https://profiles.wordpress.org/webbgaraget">webbgaraget</a>, <a href="https://profiles.wordpress.org/webmandesign">WebMan Design &#124; Oliver Juhas</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/williampatton">williampatton</a>, <a href="https://profiles.wordpress.org/wolly">Wolly aka Paolo Valenti</a>, <a href="https://profiles.wordpress.org/wraithkenny">WraithKenny</a>, <a href="https://profiles.wordpress.org/yale01">yale01</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/yogasukma">Yoga Sukma</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, <a href="https://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>, <a href="https://profiles.wordpress.org/zhildzik">zhildzik</a>, and <a href="https://profiles.wordpress.org/zsusag">zsusag</a>.\n<p>&nbsp;</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.8. Their efforts bring WordPress 4.8 fully translated to 38 languages at release time with more on the way.</p>\n<p>Do you want to report on WordPress 4.8? <a href="https://s.w.org/images/core/4.8/wp-4-8_press-kit.zip">We&#8217;ve compiled a press kit</a> featuring information about the release features, and some media assets to help you along.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress — we hope you enjoy!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4770";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 4.8 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2017/06/wordpress-4-8-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jun 2017 22:13:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4765";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:336:"The second release candidate for WordPress 4.8 is now available. To test WordPress 4.8, you can use the WordPress Beta Tester plugin or you can download the release candidate here (zip). We&#8217;ve made a handful of changes since releasing RC 1 last week. For more details about what&#8217;s new in version 4.8, check out the [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1173:"<p>The second release candidate for WordPress 4.8 is now available.</p>\n<p>To test WordPress 4.8, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.8-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=40866&amp;stop_rev=40847">a handful of changes</a> since releasing RC 1 last week. For more details about what&#8217;s new in version 4.8, check out the <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2017/05/wordpress-4-8-release-candidate/">RC1</a> blog posts.</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>Happy testing!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4765";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.8 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2017/05/wordpress-4-8-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 May 2017 23:04:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4758";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:325:"The release candidate for WordPress 4.8 is now available. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.8 on Thursday, June 8, but we need your help to get there. If you haven’t tested 4.8 yet, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2365:"<p>The release candidate for WordPress 4.8 is now available.</p>\n<p>RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.8 on <strong>Thursday, June 8</strong>, but we need <em>your</em> help to get there. If you haven’t tested 4.8 yet, now is the time!</p>\n<p>To test WordPress 4.8, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.8-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=40840&amp;stop_rev=40821">a handful of changes</a> since releasing Beta 2 earlier this week. For more details about what’s new in version 4.8, check out the <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-2/">Beta 2</a> blog posts.</p>\n<p><strong>Think you’ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you’ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.8 and update your plugin’s <em>Tested up to</em> version in the readme to 4.8. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we work hard to avoid breaking things. An in-depth field guide to developer-focused changes is coming soon on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>This release&#8217;s haiku is courtesy of <a href=''https://profiles.wordpress.org/matveb/'' class=''mention''><span class=''mentions-prefix''>@</span>matveb</a>:</p>\n<p><em>Érrese uno</em><br />\n<em>Cien veces y más</em><br />\n<em>Erre ce dos</em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4758";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.8 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2017/05/wordpress-4-8-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 May 2017 00:02:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4749";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.8 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.8, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1621:"<p>WordPress 4.8 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.8, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.8-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.8, check out the <a href="https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/">Beta 1</a> blog post. Since then, we’ve made <a href="https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=40819&amp;stop_rev=40664&amp;limit=100&amp;sfp_email=&amp;sfph_mail=">over 50 changes</a> in Beta 2.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>WordPress four point eight<br />\nOne step closer to release<br />\nPlease test Beta 2!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4749";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.7.5 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2017/05/wordpress-4-7-5/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 May 2017 22:39:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4734";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"WordPress 4.7.5 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.4 and earlier are affected by six security issues: Insufficient redirect validation in the HTTP class. Reported by Ronni Skansing. Improper handling of post meta data values in the XML-RPC [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Pascal Birchler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2349:"<p>WordPress 4.7.5 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.7.4 and earlier are affected by six security issues:</p>\n<ol>\n<li>Insufficient redirect validation in the HTTP class. Reported by <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>.</li>\n<li>Improper handling of post meta data values in the XML-RPC API. Reported by <a href="https://hackerone.com/jazzy2fives">Sam Thomas</a>.</li>\n<li>Lack of capability checks for post meta data in the XML-RPC API. Reported by <a href="https://profiles.wordpress.org/vortfu">Ben Bidner</a> of the WordPress Security Team.</li>\n<li>A Cross Site Request Forgery (CSRF)  vulnerability was discovered in the filesystem credentials dialog. Reported by <a href="https://twitter.com/yorickkoster">Yorick Koster</a>.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered when attempting to upload very large files. Reported by <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered related to the Customizer. Reported by <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a> of the WordPress Security Team.</li>\n</ol>\n<p>Thank you to the reporters of these issues for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.7.5 contains 3 maintenance fixes to the 4.7 release series. For more information, see the <a href="https://codex.wordpress.org/Version_4.7.5">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.5&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.5</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.5.</p>\n<p>Thanks to everyone who contributed to 4.7.5.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4734";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress Now on HackerOne";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/news/2017/05/wordpress-now-on-hackerone/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 May 2017 16:02:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4730";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:322:"WordPress has grown a lot over the last thirteen years – it now powers more than 28% of the top ten million sites on the web. During this growth, each team has worked hard to continually improve their tools and processes. Today, the WordPress Security Team is happy to announce that WordPress is now officially [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Aaron D. Campbell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1715:"<p>WordPress has grown a lot over the last thirteen years – it now powers more than 28% of the top ten million sites on the web. During this growth, each team has worked hard to continually improve their tools and processes. Today, the WordPress Security Team is happy to announce that <a href="https://hackerone.com/wordpress">WordPress is now officially on HackerOne</a>!</p>\n<p><a href="https://www.hackerone.com/about">HackerOne</a> is a platform for security researchers to securely and responsibly report vulnerabilities to our team. It provides tools that improve the quality and consistency of communication with reporters, and will reduce the time spent on responding to commonly reported issues. This frees our team to spend more time working on improving the security of WordPress.</p>\n<p>The security team has been working on this project for quite some time. Nikolay Bachiyski started the team working on it just over a year ago. We ran it as a private program while we worked out our procedures and processes, and are excited to finally make it public.</p>\n<p>With the announcement of the WordPress HackerOne program we are also introducing bug bounties. Bug bounties let us reward reporters for disclosing issues to us and helping us secure our products and infrastructure. We&#8217;ve already awarded more than $3,700 in bounties to seven different reporters! We are thankful to Automattic for paying the bounties on behalf of the WordPress project.</p>\n<p>The program and bounties cover all our projects including WordPress, BuddyPress, bbPress, GlotPress, and WP-CLI as well as all of our sites including WordPress.org, bbPress.org, WordCamp.org, BuddyPress.org, and GlotPress.org.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4730";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.8 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2017/05/wordpress-4-8-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 13 May 2017 00:15:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4727";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:342:"We&#8217;re planning a smaller WP release early next month, bringing in three major enhancements: An improved visual editor experience, with a new TinyMCE that allows you to navigate more intuitively in and out of inline elements like links. (Try it out to see, it&#8217;s hard to describe.) A revamp of the dashboard news widget to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1148:"<p>We&#8217;re planning a smaller WP release early next month, bringing in three major enhancements:</p>\n<ul>\n<li>An improved visual editor experience, with a new TinyMCE that allows you to navigate more intuitively in and out of inline elements like links. (Try it out to see, it&#8217;s hard to describe.)</li>\n<li>A revamp of the dashboard news widget to bring in nearby and upcoming events including meetups and WordCamps.</li>\n<li>Several new media widgets covering images, audio, and video, and an enhancement to the text widget to support visual editing.</li>\n</ul>\n<p>The first beta of 4.8 is now available for testing. You can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">beta tester plugin</a> (or just run trunk) to try the latest and greatest, and each of these areas could use a ton of testing. Our goals are to make editing posts with links more intuitive, make widgets easier for new users and more convenient for existing ones, and get many more people aware of and attending our community events.</p>\n<p><em>Four point eight is here<br />\nSmall changes with a big punch<br />\nBig ones come later</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4727";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 4.7.4 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2017/04/wordpress-4-7-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Apr 2017 17:54:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4710";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:376:"After almost sixty million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release. This release contains 47 bug fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Pascal Birchler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4518:"<p>After almost sixty million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release.</p>\n<p>This release contains 47 maintenance fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API. For a full list of changes, consult the <a href="https://codex.wordpress.org/Version_4.7.4">release notes</a> and the <a href="https://core.trac.wordpress.org/log/branches/4.7?rev=40487&amp;stop_rev=40224">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.4</a> or visit <strong>Dashboard → Updates</strong> and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.4.</p>\n<p>Thanks to everyone who contributed to 4.7.4:<br />\n<a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/aussieguy123/">aussieguy123</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/boldwater/">boldwater</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/bor0/">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/chesio/">chesio</a>, <a href="https://profiles.wordpress.org/curdin/">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/nerrad/">Darren Ethier (nerrad)</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidbenton/">davidbenton</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/eclev91/">eclev91</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/ghosttoast/">Gustave F. Gerhardt</a>, <a href="https://profiles.wordpress.org/ig_communitysites/">ig_communitysites</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/joedolson/">Joe Dolson</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/karinedo/">karinedo</a>, <a href="https://profiles.wordpress.org/lukasbesch/">lukasbesch</a>, <a href="https://profiles.wordpress.org/maguiar/">maguiar</a>, <a href="https://profiles.wordpress.org/matheusgimenez/">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mboynes/">Matthew Boynes</a>, <a href="https://profiles.wordpress.org/mattwiebe/">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mayurk/">Mayur Keshwani</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/delawski/">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pratikshrestha/">Pratik Shrestha</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/sagarkbhatt/">sagarkbhatt</a>, <a href="https://profiles.wordpress.org/sagarprajapati/">Sagar Prajapati</a>, <a href="https://profiles.wordpress.org/sboisvert/">sboisvert</a>, <a href="https://profiles.wordpress.org/wonderboymusic/">Scott Taylor</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/cybr/">Sybre Waaijer</a>, <a href="https://profiles.wordpress.org/timmydcrawford/">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/vortfu/">vortfu</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4710";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.7.3 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 06 Mar 2017 17:53:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4696";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:396:"WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by six security issues: Cross-site scripting (XSS) via media file metadata.  Reported by Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Control characters can trick redirect [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"James Nylen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6191:"<p>WordPress 4.7.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.7.2 and earlier are affected by six security issues:</p>\n<ol>\n<li>Cross-site scripting (XSS) via media file metadata.  Reported by <a href="https://www.securesolutions.no/">Chris Andrè Dale</a>, <a href="https://twitter.com/yorickkoster">Yorick Koster</a>, and Simon P. Briggs.</li>\n<li>Control characters can trick redirect URL validation.  Reported by <a href="http://www.danielchatfield.com/">Daniel Chatfield</a>.</li>\n<li>Unintended files can be deleted by administrators using the plugin deletion functionality.  Reported by <a href="https://hackerone.com/triginc">TrigInc</a> and <a href="http://b.360.cn/">xuliang</a>.</li>\n<li>Cross-site scripting (XSS) via video URL in YouTube embeds.  Reported by <a href="https://twitter.com/marcs0h">Marc Montpas</a>.</li>\n<li>Cross-site scripting (XSS) via taxonomy term names.  Reported by <a href="https://profiles.wordpress.org/deltamgm2">Delta</a>.</li>\n<li>Cross-site request forgery (CSRF) in Press This leading to excessive use of server resources.  Reported by Sipke Mellema.</li>\n</ol>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.7.3 contains 39 maintenance fixes to the 4.7 release series. For more information, see the <a href="https://codex.wordpress.org/Version_4.7.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.7.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.7.3.</p>\n<p>Thanks to everyone who contributed to 4.7.3: <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/xknown/">Alex Concha</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/asalce/">asalce</a>, <a href="https://profiles.wordpress.org/blobfolio/">blobfolio</a>, <a href="https://profiles.wordpress.org/gitlost/">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/bor0/">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/bradyvercher/">Brady Vercher</a>, <a href="https://profiles.wordpress.org/drrobotnik/">Brandon Lavigne</a>, <a href="https://profiles.wordpress.org/bhargavbhandari90/">Bunty</a>, <a href="https://profiles.wordpress.org/ccprog/">ccprog</a>, <a href="https://profiles.wordpress.org/ketuchetan/">chetansatasiya</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dhanendran/">Dhanendran</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/drivingralle/">Drivingralle</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ipstenu/">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/jazbek/">jazbek</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/joehoyle/">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">John James Jacoby</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/ryelle/">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/markoheijnen/">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/matheusgimenez/">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mnelson4/">Mike Nelson</a>, <a href="https://profiles.wordpress.org/mikeschroder/">Mike Schroder</a>, <a href="https://profiles.wordpress.org/codegeass/">Muhammet Arslan</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne/">Paul Bearne</a>, <a href="https://profiles.wordpress.org/pavelevap/">pavelevap</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/reldev/">reldev</a>, <a href="https://profiles.wordpress.org/sanchothefat/">Robert O&#8217;Rourke</a>, <a href="https://profiles.wordpress.org/welcher/">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sanketparmar/">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/seanchayes/">Sean Hayes</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/triplejumper12/">triplejumper12</a>, <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>, and <a href="https://profiles.wordpress.org/wpfo/">wpfo</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4696";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 27 Jul 2017 07:03:24 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Wed, 19 Jul 2017 19:50:31 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}}s:5:"build";s:14:"20130910223210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(338, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1501182206', 'no'),
(339, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1501139006', 'no'),
(340, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1501182210', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(341, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WPTavern: Adobe to Discontinue Flash Support and Updates in 2020";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73654";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wptavern.com/adobe-to-discontinue-flash-support-and-updates-in-2020";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3567:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/adobe-flash.png?ssl=1"><img /></a></p>\n<p>Adobe <a href="https://blogs.adobe.com/conversations/2017/07/adobe-flash-update.html" target="_blank">announced</a> today that it will discontinue Flash support and updates at the end of 2020. Flash played an important part in the history of the web, inspiring many of the open standards and formats that the web has moved on to embrace.</p>\n<blockquote><p>Given this progress, and in collaboration with several of our technology partners – including Apple, Facebook, Google, Microsoft and Mozilla – Adobe is planning to end-of-life Flash. Specifically, we will stop updating and distributing the Flash Player at the end of 2020 and encourage content creators to migrate any existing Flash content to these new open formats.</p></blockquote>\n<p>Last year most major browsers moved to block Flash, requiring users to enable it manually for sites where they wish to view Flash content. Microsoft, Google, and Mozilla were on deck today with announcements of their own regarding future Flash support. Firefox is the most aggressive with its <a href="https://blog.mozilla.org/futurereleases/2017/07/25/firefox-roadmap-flash-end-life/" target="_blank">plan to disable Flash for most users in 2019</a>. Only those running an Extended Support Release will be able to continue using it through the end of 2020 and no version of Firefox will load the plugin after Adobe discontinues security patches.</p>\n<p><a href="https://www.blog.google/products/chrome/saying-goodbye-flash-chrome/" target="_blank">Chrome is also phasing out support for Flash</a> and plans to remove it completely from the browser toward the end of 2020.</p>\n<p>&#8220;Three years ago, 80 percent of desktop Chrome users visited a site with Flash each day,&#8221; Google Chrome Product Manager Anthony Laforge said. &#8220;Today usage is only 17 percent and continues to decline.</p>\n<p>&#8220;This trend reveals that sites are migrating to open web technologies, which are faster and more power-efficient than Flash. They’re also more secure, so you can be safer while shopping, banking, or reading sensitive documents.&#8221;</p>\n<p>The Microsoft Edge team also <a href="https://blogs.windows.com/msedgedev/2017/07/25/flash-on-windows-timeline/#QKXFIeE23ZSoZLlh.97" target="_blank">announced</a> its plans to phase out Flash from both Microsoft Edge and Internet Explorer with complete removal from all supported versions of Microsoft Windows by the end of 2020.</p>\n<p>Although <a href="http://blog.kongregate.com/html5-is-here/" target="_blank">HTML5 adoption is growing among game developers</a>, Adobe&#8217;s announcement means major changes for segments of the the gaming, education, and video industries that have not yet migrated to newer, open formats. This news will also make obsolete dozens of WordPress <a href="https://wordpress.org/plugins/search/flash/" target="_blank">plugins that were created to upload and display Flash content</a>.</p>\n<p>Adobe&#8217;s announcement was met with thanks and &#8220;good riddance,&#8221; with many calling for an even speedier timeline. Many are also concerned about all the orphaned content and .swf games on the web that Flash&#8217;s disappearance will create. Adobe has received many requests on Twitter for the company to consider open sourcing the old Flash Player codebase for the sake of compatibility and archiving content. Adobe has not officially replied to any of these requests.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 26 Jul 2017 04:01:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"HeroPress: Random Diary Chapters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1992";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:116:"https://heropress.com/essays/random-diary-chapters/?utm_source=rss&utm_medium=rss&utm_campaign=random-diary-chapters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7701:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/072617-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: WordPress combines people together from all over the world. Maybe WordPress is important after all." /><blockquote><p>There goes my hero<br />\nWatch him as he goes<br />\nThere goes my hero<br />\nHe&#8217;s ordinary</p></blockquote>\n<div class="jetpack-video-wrapper"></div>\n<p>I have no idea what I’m going to write about. How about people? Ordinary people are heroes to me. People who are willing to help one another. People just like you and me.</p>\n<p>Well, at least like you <img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f642.png" alt="?" class="wp-smiley" /> &#8211; if you’re for some reason reading my diary.</p>\n<h2>Who’s teaching who</h2>\n<p>I still remember when I build my first website with table layouts while studying math in the University of Jyväskylä. Those were the days! But it doesn’t feel like yesterday anymore. More like day before.</p>\n<p>Nevertheless being a math teacher has been the perfect choice for me. It’s been fun, challenging, and rewarding. I’ve probably learnt lot more from students than they have from me.</p>\n<p>Heck, they even got me into WordPress when I was taking my ex-students short film course. Was it 2008? Something like that. We needed a website for our short film and had only 1-2 days. Students gave me link to WordPress.com and I was sold. Getting site up and running was easy and fast.</p>\n<p>“Well come here and do it yourself!!” &#8211; drama class student shouted.</p>\n<p>That’s another good lesson I’ve learnt.</p>\n<blockquote><p>It’s so easy to give negative feedback (don’t do it like that) without doing anything yourself or giving constructive feedback.</p></blockquote>\n<p>Oh boy I still feel ashamed when I judged a book by it’s cover. This time the book cover was a blonde girl asking weird questions with high voice. I was a prison of my prejudice and instantly assumed she must be bad at math. How wrong was I. She was brilliant.</p>\n<p>At least the prison gate is now open if I just understand to walk out.</p>\n<h2>Who am I</h2>\n<p>Sometimes I wonder what other people think of me? Do they think I’m open minded teacher, or front-developer who cares about accessibility. But does any of that matter? Job title really doesn’t tell anything who I am. Or anybody else.</p>\n<p>But who am I? I’m not sure how to define me. I’m no dad or husband. I do have several good traits but there are also demons inside me. Lack of empathy is one of them. And that comes down to this:</p>\n<p>In the end <strong>I’m a selfish asshole</strong>.</p>\n<p>It’s okay to be selfish from time to time but it’s not okay to let people down big time when they need me most. Being an ordinary human being is not one of my strengths but I’ll promise to work on it.</p>\n<h2>Friends will be friends</h2>\n<p>I consider myself lucky. I have lovely parents and two crazy big brothers. And over the years I have made friendships that last forever.</p>\n<p>I hope everybody have a friend who is like a bridge between other friends. Someone who is always organizing something fun: bowling, music gigs, dinners, sports. Someone who is always nice to others and would never hurt a fly.</p>\n<p>I had a friend like that.</p>\n<p>But as a return I couldn’t help him enough. Shadows of life had taken over him. He could not see the light anymore. He died by suicide before christmas 2015.</p>\n<p>Now he can’t fall anymore. He will always be our beloved one and we’ll miss him more than words can express. So many songs reflects to memories we have. For example this Finnish song that I heard exactly one year after his death. (<a href="http://lyricstranslate.com/en/rakastettu-beloved.html">Lyrics in english</a>).</p>\n<div class="jetpack-video-wrapper"></div>\n<p>Why is it so much easier to talk about other problems but not your own. Why is it so hard to ask help when you really need it.</p>\n<h2>Life goes on</h2>\n<p>Do I need to say anything. No I don&#8217;t.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/summer-of-2017-peaceful-mind-after-sauna.jpg"><img class="size-full wp-image-1995" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/summer-of-2017-peaceful-mind-after-sauna.jpg" alt="View of the water form the shore." width="1000" height="750" /></a>Summer 2017. Peaceful state of mind after a sauna.\n<p>&nbsp;</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/my-dear-friends-rock.jpg"><img class="size-full wp-image-1996" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/my-dear-friends-rock.jpg" alt="Sami and 2 friends" width="1000" height="751" /></a>My dear friends rock!\n<p>&nbsp;</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/friends-will-be-friends.jpg"><img class="size-full wp-image-1997" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/friends-will-be-friends.jpg" alt="Sami and two friends" width="1000" height="750" /></a>Friends will be friends forever.\n<h2>WordPress is not important</h2>\n<p>WordPress is not important. People behind it are, they have feelings. I wish more people would remember that when commenting on blog posts, Slack, or other online tools with shitty attitudes.</p>\n<blockquote><p>Being nice and constructive goes a long way.</p></blockquote>\n<p>At the same time it’s amazing to notice how WordPress combines people together from all over the world. In WordCamps and meetups I have found new friends that really matter. That feels good.</p>\n<p>Maybe WordPress is important after all.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Random Diary Chapters" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Random%20Diary%20Chapters&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Frandom-diary-chapters%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Random Diary Chapters" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Frandom-diary-chapters%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Frandom-diary-chapters%2F&title=Random+Diary+Chapters" rel="nofollow" target="_blank" title="Share: Random Diary Chapters"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/random-diary-chapters/&media=https://heropress.com/wp-content/uploads/2017/07/072617-150x150.jpg&description=Random Diary Chapters" rel="nofollow" target="_blank" title="Pin: Random Diary Chapters"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/random-diary-chapters/" title="Random Diary Chapters"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/random-diary-chapters/">Random Diary Chapters</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 26 Jul 2017 00:00:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sami Keijonen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:133:"WPTavern: SiteLock Acquires Patchman’s Malware and Vulnerability Detection Technology, Expands WordPress Customer Base to 4 Million";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73626";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:140:"https://wptavern.com/sitelock-acquires-patchmans-malware-and-vulnerability-detection-technology-expands-wordpress-customer-base-to-4-million";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4517:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/sitelock-logo.png?ssl=1"><img /></a></p>\n<p><a href="https://www.sitelock.com/" target="_blank">SiteLock</a>, a website security company, has <a href="https://www.sitelock.com/pr/extends-web-security-leadership-patchman-acquisition" target="_blank">acquired</a> <a href="http://patchman.co/" target="_blank">Patchman</a>, a Dutch security startup that offers automated vulnerability patching and malware removal for hosting providers. Prior to the acquisition SiteLock protected 6 million sites, with 2.2 million of them running on WordPress. The addition of Patchman extends SiteLock&#8217;s customer base to 12 million sites and more than 4 million of those are powered by WordPress.</p>\n<p>Patchman detects vulnerabilities in <a href="https://patchman.zendesk.com/hc/en-us/articles/200236661-Which-applications-does-Patchman-scan-and-fix-" target="_blank">a wide range of popular applications</a> and quarantines and patches threats automatically. The quarantine feature neutralizes malicious files by removing them from public access. Patchman supports detection and patching for WordPress 3.x and later.</p>\n<p>Historically, the service has not included patches for plugins but it has applied them on a case-by-case basis for high impact vulnerabilities, including a few found in WP Super Cache, MailPoet, and the open source Genericons font project. The Patchman dashboard allows users to easily track files where vulnerabilities have been detected, view status, and revert patches if necessary.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/patchman-dashboard.jpg?ssl=1"><img /></a></p>\n<p>Patchman&#8217;s single focus on hosting providers gives SiteLock the opportunity to offer more options to its hosting partners. With the acquisition, the company is now partering with more than 500 hosting providers, including BlueHost, 1&amp;1, Web.com, InMotion, Melbourne IT, GMO (NTT), and many others.</p>\n<p>&#8220;During our early talks, Patchman was not looking to be acquired and SiteLock wasn’t looking to acquire,&#8221; SiteLock President Neill Feather said. After meeting at the WorldHostingDays show in Rust, Germany in late March this year and at another show in Los Angeles, the companies found they shared similar goals and would be in a better position working together.</p>\n<p>&#8220;It truly was a matter of 1+1=3,&#8221; Feather said. &#8220;Traditionally, SiteLock is very strong in detecting and removing malware for end users. Patchman offers a service tailored specifically to hosting providers and aimed at fixing the security vulnerabilities that hackers exploit to infect websites with malware. By working together we are able to address a wider market and offer a broader solution to the problems that we solve for our customers. We can now attack the problem from multiple angles.&#8221;</p>\n<p>Patchman&#8217;s technology will compliment SiteLock&#8217;s existing security features but the company has not yet decided how it will be incorporated into its security plans for customers. Feather said the team is still jointly building out its future roadmap to give hosts and end customers access to a wider range of products. They are also considering making Patchman&#8217;s detection technology compatible with more products in the WordPress ecosystem.</p>\n<p>Feather could not disclose any specifics on revenue generated by <a href="https://wpdistrict.sitelock.com/products/" target="_blank">SiteLock&#8217;s WordPress security products</a> but approximately 30% of its newly expanded customer base is running on WordPress.</p>\n<p>&#8220;What we can say is that we’re heavily invested in the WordPress community and plan on continuing to do so,&#8221; Feather said.</p>\n<p>&#8220;I&#8217;m excited that the increased number of sites we now protect across multiple platforms means we&#8217;ll be able to identify malware and malicious trends more efficiently than we&#8217;ve been able to already, and that&#8217;s good for every end user,&#8221; SiteLock&#8217;s WordPress Evangelist Adam Warner said. &#8220;Secondly, although we already have solutions for our partners, Patchman allows web hosts to offer increased security options for advanced users of their platforms. Being a WordPress guy, I&#8217;m excited about the possibility we now have to extend the capabilities of Patchman to plugins and other WordPress-specific software.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 25 Jul 2017 18:46:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WPTavern: Watch WordCamp Varna Wapuus Get Designed in Real Time";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73617";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wptavern.com/watch-wordcamp-varna-wapuus-get-designed-in-real-time";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1427:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/wordcamp-varna-wapuus.jpg?ssl=1"><img /></a></p>\n<p>The very first <a href="https://2017.varna.wordcamp.org/" target="_blank">WordCamp Varna</a> will be held September 2-3 at the <a href="https://www.ue-varna.bg/en/" target="_blank">University of Economics</a>. Varna is a beautiful city in Bulgaria on the Black Sea and a popular spot for summer holidays. It is the first Bulgarian WordCamp to be held outside of Sofia.</p>\n<p><a href="https://2017.varna.wordcamp.org/tickets/" target="_blank">Tickets are on sale</a> for EUR 10 (BGN 20) and include  all the sessions, lunch, a #WCVAR 2017 T-shirt, and a few drinks at the after party. There are 102 remaining for the conference and 14 remaining tickets for the kids&#8217; workshop (ages 7-14).</p>\n<p>The location naturally inspired a maritime sticker pack collection for attendees, featuring four new wapuu designs. The collection was designed by the vector graphic illustrators at <a href="https://graphicmama.com/" target="_blank">GraphicMama</a>, a design partner for the WordCamp. Ever wonder how much effort goes into designing all the individualized creations in the <a href="http://jawordpressorg.github.io/wapuu/" target="_blank">world of wapuus</a>? Check out the video below to see how WordCamp Varna&#8217;s wapuu designs were brought to life.</p>\n<p></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 25 Jul 2017 04:14:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WPTavern: New Aztec Editor for WordPress Mobile Apps Now in Beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73587";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wptavern.com/new-aztec-editor-for-wordpress-mobile-apps-now-in-beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3390:"<p>WordPress&#8217; iOS and Android apps will soon be getting a new editor. The appearance of the new editor, codenamed “Aztec,&#8221; is very similar to the old one but is light years ahead of its predecessor in both speed and reliability. Aaron Douglas, iOS engineer at Automattic, announced the <a href="https://en.blog.wordpress.com/2017/07/24/a-brand-new-editor-for-the-wordpress-mobile-apps/" target="_blank">open beta for Aztec</a> today with a side-by-side comparison video of the old and new editors. A copy and paste test with 500 paragraphs on iPhone 6s demonstrates Aztec&#8217;s instantaneous response while the old editor takes two-minutes to render the text.</p>\n<p></p>\n<p>In addition to better speed and performance, Aztec&#8217;s use of OS-provided text controls makes it possible to offer full support for accessibility technologies like iOS’ VoiceOver and Android’s TalkBack. It also adds the ability to draft using dictation.</p>\n<p>Aztec introduces a new undo/redo tool at the top of the screen as a quick option for fixing mistakes. It also provides a simpler, more reliable experience using spell check.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/aztec-testing.png?ssl=1"><img /></a></p>\n<p>The Aztec beta is available to all users in the latest updates of the app (8.0 for iOS, 7.8 for Android). After opening the app you will see a popup for enabling the new editor. It can also be toggled on/off by going to Me > App Settings and selecting &#8220;Set the Editor Type.&#8221;</p>\n<p>The mobile team has made it easy to test and give feedback without leaving the app. Tapping the &#8220;beta&#8221; button at the top of the editor will open a &#8220;What&#8217;s New in the Beta&#8221; page with a bug button at the top that you can use to report bugs and send feedback. At the moment, the beta does not support shortcodes or video and WordPress gallery features. Keep in mind that it&#8217;s not 100% ready for use and heavy users of the mobile apps are likely to discover glitches.</p>\n<p>Aztec is open source (GPL 2.0) and packaged as a rich-text editor component in its own GitHub repository (<a href="https://github.com/wordpress-mobile/WordPress-Aztec-iOS" target="_blank">iOS</a> | <a href="https://github.com/wordpress-mobile/WordPress-Aztec-Android" target="_blank">Android</a>) so that developers can use it in their own applications and contribute code back to the project.</p>\n<p>&#8220;Quite literally, there is nothing like this out there – every editor we could find uses a web view or has very limited support for any HTML,&#8221; Douglas said. &#8220;Our hope is the Aztec editor is seen as a component that can be used by many iOS and Android apps to provide a rich HTML editing experience. We feel that we could garner a bigger contributor base to the mobile apps simply because this component exists, is free and open, and is super awesome.&#8221;</p>\n<p>The project is a few months behind the <a href="https://make.wordpress.org/mobile/2017/04/08/introducing-the-aztec-mobile-editors/" target="_blank">schedule published in April</a>, which had open beta targeted for May and the full release for the end of this month. Depending on how well the beta testing period goes, users could see the new Aztec editor included in the mobile apps within the next few months.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 24 Jul 2017 22:59:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:99:"WPTavern: Hamilton: A Free WordPress Portfolio Theme for Photographers, Illustrators, and Designers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72881";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wptavern.com/hamilton-a-free-wordpress-portfolio-theme-for-photographers-illustrators-and-designers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3779:"<p><a href="https://wordpress.org/themes/hamilton/" target="_blank">Hamilton</a> is a new portfolio theme released by Swedish designer and developer <a href="http://www.andersnoren.se/" target="_blank">Anders Norén</a> during his summer vacation. It was created for photographers, illustrators, designers, and image-heavy blogs. The theme displays portfolio items in a minimal, masonry-style grid with an optional tagline on the front page.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/hamilton-white-black-1.jpg?ssl=1"><img /></a></p>\n<p>&#8220;Hamilton has a pretty simple design at its core, so when it was more or less finished, I decided to add a couple of fun theme options to make it more customizable,&#8221; Norén said. &#8220;The main one is the Dark Mode. With a click of the mouse in the WordPress Customizer, you can change Hamilton from dark text on a white background to white text on a dark background.&#8221;</p>\n<p>The Customizer also includes a few other helpful options for portfolio sites:</p>\n<ul>\n<li>Set a custom background image or color</li>\n<li>Replace the navigation toggle in the header with the Primary Menu on desktop</li>\n<li>Change two-column default post grid display to three columns on desktop</li>\n<li>Display titles in the post previews</li>\n<li>Add a title to front page when it&#8217;s set to display latest posts</li>\n</ul>\n<p>The theme is beautifully responsive to various devices and screen sizes. Norén&#8217;s typography choices are clean and readable on mobile.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/hamilton-on-mobile-e1500914561475.png?ssl=1"><img /></a></p>\n<p>Hamilton includes <a href="http://andersnoren.se/themes/hamilton/offscreen-magazine-collection/" target="_blank">styles for the default WordPress image gallery</a> with more interesting options available to create complex galleries stacked with different numbers of columns. It also supports Jetpack&#8217;s Infinite Scroll module and has styles for blockquotes, pullquotes, and left/right/center aligned media.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/hamilton-pullquotes.png?ssl=1"><img /></a></p>\n<p>One of the most unique features of the theme is the <a href="http://andersnoren.se/themes/hamilton/resume/" target="_blank">Resume template</a>. It gives users the option to add a simple resume to their portfolios, without having to add a plugin. The template uses basic HTML for formatting with h1 header tags, horizontal rules, and unordered lists. The template could use a bit more documentation, since not all users are familiar with HTML, but it&#8217;s a useful addition for simple portfolio sites.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/resume-template.png?ssl=1"><img /></a></p>\n<p>Check out a <a href="http://andersnoren.se/themes/hamilton/" target="_blank">live demo</a> along with the <a href="http://andersnoren.se/themes/hamilton/style-guide/" target="_blank">style guide</a> to see the theme in action.</p>\n<p><a href="https://wordpress.org/themes/hamilton/" target="_blank">Hamilton</a> is Anders Norén&#8217;s 15th theme approved for the WordPress Theme Directory. When he submitted it to the Theme Review Team, he anticipated that it would take a month or two for it to get through the review process. His previously submitted theme, Davis, took approximately nine months to make it through the queue. He was surprised to find that Hamilton <a href="https://twitter.com/andersnoren/status/887559567135186944" target="_blank">went through the process in under a month</a>. After less than a week on WordPress.org, the theme has already been downloaded more than 200 times.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 24 Jul 2017 19:27:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:101:"WPTavern: Members 2.0 Adds Capability Registration System, Introduces New Settings Screen for Add-Ons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73446";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:111:"https://wptavern.com/members-2-0-adds-capability-registration-system-introduces-new-settings-screen-for-add-ons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6254:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/members.png?ssl=1"><img /></a></p>\n<p>Eight years ago, Justin Tadlock moved back home to Alabama and was living in the spare bedroom of his grandparents&#8217; house with nothing more than a laptop and a suitcase. Over the course of a few months he started going deeper into learning about writing WordPress plugins and produced <a href="https://wordpress.org/plugins/members/" target="_blank">Members</a>, a role management plugin for WordPress. The first major overhaul of the plugin came in 2015 with version 1.0&#8217;s expansion of features and a new UI for editing roles.</p>\n<p>Members has built up a user base of more than 100,000 active installs since it first <a href="http://justintadlock.com/archives/2009/09/17/members-wordpress-plugin" target="_blank">launched in 2009</a>. Tadlock estimates that over the last couple years, 40% of <a href="https://themehybrid.com/" target="_blank">Theme Hybrid</a> customers are primarily there for support and small tweaks to the Members plugin. He decided it was time to begin investing more in the plugin and its community.</p>\n<p>Tadlock released <a href="https://themehybrid.com/weblog/members-version-2-0" target="_blank">Members 2.0</a> this week. The plugin manages core WordPress capabilities but 2.0 adds the ability for plugins to register custom capabilities. The labels for the capabilities can be internationalized so users can manage the plugin in their own languages in human-readable form.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/members-2-human-caps.png?ssl=1"><img /></a></p>\n<p>This release also adds the ability to use the WordPress editor for writing custom post error messages, making it easy to direct visitors to registration or other important information regarding access to the content.</p>\n<p>Members 2.0 lets users add multiple roles when creating a new user from the Add User screen. It also introduces the ability to bulk add or remove roles from users, even when multiple roles have been enabled.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/members-2-bulk-users.png?ssl=1"><img /></a></p>\n<p>This version of the plugin serves some of its data using the WP REST API and a new setting was added to authenticate users who are accessing the REST API endpoints. This protects content from being exposed on sites that have the &#8220;private site&#8221; setting enabled. Tadlock plans to write a tutorial about what he has learned in integrating the REST API with the plugin.</p>\n<h3>Tadlock Aims to Monetize Members with Add-Ons, Renews Efforts to Develop a Community of Add-On Developers</h3>\n<p>Members 2.0 introduces a new Settings screen that ties in with Tadlock&#8217;s future plans to monetize the plugin. The new screen includes a view for add-ons. Tadlock has two add-ons available currently and has written an API for third-party developers to register their own add-ons to be visible on this screen.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/members-2-addons.png?ssl=1"><img /></a></p>\n<p>&#8220;The plan is to create some small add-on plugins,&#8221; Tadlock said. &#8220;There&#8217;s already two:  <a href="https://themehybrid.com/plugins/members-role-levels" target="_blank">Members &#8211; Role Levels</a>, which is paid, and <a href="https://themehybrid.com/plugins/members-role-hierarchy" target="_blank">Members &#8211; Role Hierarchy</a>, which I was hired to build and was allowed to release to the community for free. I&#8217;ve got a few small plugins like those in mind that&#8217;ll be in a lower price range.&#8221;</p>\n<p>Tadlock also plans to release a more robust version of the &#8220;Content Permissions&#8221; feature as another add-on. He has received numerous feature requests from users over the years about what they would like to see in this plugin. The add-on will offer a variety of different ways to show/hide content.</p>\n<p>I asked Tadlock if he has considered building payment gateway add-ons so users can charge for memberships. He said the idea is on the table.</p>\n<p>&#8220;I&#8217;m not sure if I&#8217;m going to build those or someone else,&#8221; Tadlock said. &#8220;I&#8217;ve mentioned it to some other developers. It would be a good place to start building add-ons.&#8221; His current setup uses Easy Digital Downloads with a couple of plugins to bridge it with Members and ThemeHybrid.com.</p>\n<p>A plugin like Members has the potential to have a large, third-party ecosystem of plugins for payments and additional features, but Tadlock was focused on other projects during the first few years after it launched.</p>\n<p>&#8220;I haven&#8217;t actively pursued the add-on angle,&#8221; Tadlock said. &#8220;Instead, I focused more on themes during most of that time. Now, I&#8217;m focusing more on plugin development. It&#8217;s my fault for not nurturing a community of add-on developers, which is something I&#8217;m trying to do more of now.&#8221;</p>\n<p>Tadlock said many of the developers he knows are working with Members because they like that it gives them a solid foundation to build on for client work. He hopes to persuade some of them to release some of that code back as commercial add-ons or free plugins in the WordPress plugin directory.</p>\n<p>Since launching the plugin eight years ago, Tadlock has aimed to make it behave as if it were a natural part of WordPress. At its core, Members is a role and capability management plugin and not a one-size-fits all membership plugin.</p>\n<p>&#8220;It&#8217;s more or less a UI over what you could do with code already,&#8221; Tadlock said. &#8220;Most of all, it tries not to get in your way. Every membership site has its own unique needs. It&#8217;s tough building something that suits everyone.  That&#8217;s why I&#8217;d rather have that foundation of Members just exposing the roles/caps system with third-party add-ons that suit various users&#8217; needs.</p>\n<p>&#8220;Other membership plugins often try to please everyone or pigeon-hole everything into their custom system. I like more to have a bit more flexibility without the bloat.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 21 Jul 2017 21:37:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: WordPress 4.8.1 Adds a Dedicated Custom HTML Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73470";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wptavern.com/wordpress-4-8-1-adds-a-dedicated-custom-html-widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2681:"<p>When WordPress <a href="https://wptavern.com/wordpress-4-8-evans-released-featuring-nearby-wordpress-events-new-media-widgets-and-link-boundaries">4.8 was released</a> last month, it introduced TinyMCE functionality to the Text widget. Unfortunately, this <a href="https://wordpress.org/support/topic/how-to-disable-visual-editor-in-the-text-widget/">caused issues</a> for those who use Custom HTML as the Visual editor often strips out portions of the code.</p>\n<p>WordPress <a href="https://wordpress.org/download/release-archive/#beta-and-rc">4.8.1 Beta 1</a> is available for testing and addresses this problem by including a dedicated Custom HTML widget.</p>\n<p>&#8220;For advanced users or any user who needs to paste in HTML snippets, there is now a dedicated &#8216;Custom HTML&#8217; widget that is specifically for adding arbitrary HTML to your sidebar,&#8221; Weston Ruter, said.</p>\n<p>&#8220;This widget will retain the application of the <code>widget_text</code> filters, in addition to having a new dedicated <code>widget_custom_html_content</code> filter.</p>\n<p>&#8220;For use cases that involve adding content to your sidebar, the Text widget will continue to feature the same Visual editing interface that the post editor has (TinyMCE).&#8221;</p>\n<p>Users who access Text widgets that have Custom HTML in WordPress 4.8.1, will see a note at the top of the widget that suggests using the Custom HTML widget.</p>\n<p><img /></p>\n<p>If a user pastes or types HTML into a text widget with the Visual editor active, WordPress displays an Admin Pointer suggesting that they use the Text tab instead or use the Custom HTML widget.</p>\n<img />Text Widget Admin Pointer\n<p>The Custom HTML widget works similar to the Text widget in WordPress 4.7 and below.</p>\n<img />Custom HTML Widget\n<p>Sites that have existing Text widgets containing custom HTML that may be modified by the Visual editor, are opened in a legacy mode.</p>\n<p>Legacy mode retains the old Text widget interface, including the checkbox on whether or not to automatically add paragraphs. This change prevents the Visual editor from altering code.</p>\n<p>Ruter says the ideal way to test these improvements is to install it on a staging site that has Text widgets containing HTML and are known to be problematic in WordPress 4.8. After upgrading, check to see if the widgets open in legacy mode.</p>\n<p>WordPress 4.8.1 is scheduled to be released on August 1st. Please report any bugs or errors you encounter in as much detail as possible to the <a href="https://wordpress.org/support/forum/alphabeta/">WordPress Alpha/Beta</a> section of the support forums.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 21 Jul 2017 18:31:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"WPTavern: Petition to Re-License React has been Escalated to Facebook’s Engineering Directors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73454";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:103:"https://wptavern.com/petition-to-re-license-react-has-been-escalated-to-facebooks-engineering-directors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7983:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/flags.jpg?ssl=1"><img /></a>photo credit: <a href="https://stocksnap.io/photo/04XDXYUMGQ">manu schwendener</a>\n<p>React users are <a href="https://wptavern.com/react-users-petition-facebook-to-re-license-react-js-after-apache-software-foundation-bans-bsdpatents-license-in-dependencies" target="_blank">petitioning Facebook to re-license React.js</a> after the Apache Software Foundation announced its decision to ban Apache PMC members from using any technology licensed with Facebook’s BSD+Patents License. So far the GitHub <a href="https://github.com/facebook/react/issues/10191" target="_blank">issue</a> has received 627 &#8220;thumbs up&#8221; emoji and 66 comments from concerned React users who are hoping for a change in licensing.</p>\n<p>Many respondents on the thread said that ASF&#8217;s decision affects their organizations&#8217; ability to continue using React in projects.</p>\n<p>&#8220;Apache CouchDB and others will switch away from React if we have to,&#8221; CouchDB committer Robert Newson <a href="https://github.com/facebook/react/issues/10191#issuecomment-315596902" target="_blank">said</a>. &#8220;We&#8217;d rather not, it&#8217;s a lot of work for no real gain, but we don&#8217;t have a choice. Changing license can be simple (RocksDB completed that change in a day).&#8221;</p>\n<p>&#8220;My team, at LinkedIn, is also having legal troubles using React for our internal projects,&#8221; LinkedIn software Denis Ivanov <a href="https://github.com/facebook/react/issues/10191#issuecomment-316500996" target="_blank">said</a>. &#8220;We would love to see a change on this front.&#8221;</p>\n<p>Software developer Clark Evans <a href="https://github.com/facebook/react/issues/10191#issuecomment-315607798" target="_blank">commented</a> on how React&#8217;s current licensing might affect medical research institutes, and suggested that Facebook consider an Apache 2.0 license because it includes equitable patent grants.</p>\n<blockquote><p>Since U.S. based universities rely upon patent licensing as part of their legislatively mandated technology transfer initiatives, they are growing far more cautious in their due diligence. For this reason, at some universities, software written with React may be shunned. Existing projects using React software may be asked to remove the React software software dependency. Please strongly consider this proposal, since our RexDB work is used at major universities, we do not wish to rework to use a React alternative.</p></blockquote>\n<p>Several participants in the discussion commented that they would like to use React but the licensing makes it impossible for their companies.</p>\n<p>&#8220;Other large companies such as mine (Adobe) can&#8217;t use React, Pop, etc. for the very same reason,&#8221; Corey Lucier <a href="https://github.com/facebook/react/issues/10191#issuecomment-316046522" target="_blank">said</a>. &#8220;We&#8217;d love to participate in the project, contribute to each, etc. but Facebook&#8217;s heavy-handed PATENTS clause is a showstopper.&#8221;</p>\n<p>&#8220;Even mid-size companies like mine (ViaSat) are starting to disallow the use of Facebook&#8217;s &#8216;open-source&#8217; projects for this reason,&#8221; software developer Aaron Yoshitake <a href="https://github.com/facebook/react/issues/10191#issuecomment-316102045" target="_blank">said</a>. &#8220;We&#8217;d like to build React web and native apps, but it seems that any sensible legal department will recommend against agreeing to Facebook&#8217;s asymmetric patent grant.&#8221;</p>\n<h3>Internal Discussions Continue at Facebook, Re-Licensing Issue has been Escalated to Engineering Directors</h3>\n<p>Dan Abramov, co-author of Redux, Create React App, and React Hot Loader, shared with participants that Facebook is having internal discussions about the re-licensing issue but cautioned them to temper their optimism. He returned to throw some ice on the conversation, which has grown more heated over the past few days, when he said it could only remain an open discussion if everyone involved remains civil. Many participants are concerned about the future of the React-based software that they have already invested thousands of hours of work into.</p>\n<p>&#8220;I understand that everyone is frustrated about this issue,&#8221; Abramov <a href="https://github.com/facebook/react/issues/10191#issuecomment-316223034" target="_blank">said</a>. &#8220;Personally I am just as frustrated to spend time, energy, and emotional wellbeing on legal mumbo jumbo that is preventing people from using React. I would much prefer to spend this time on working together to make it better.</p>\n<p>&#8220;But the reality of this situation is that the maintainers of React (people like me that you’re interacting on the issue tracker) are not the ones making these decisions. Each of us is doing what we can to show different perspectives on this issue to the people who can make those decisions, and we appreciate your feedback too. But we can only keep discussion open if everyone stays civil and respectful.&#8221;</p>\n<p>Abramov also pointed out in a follow-up update that a bug tracker isn&#8217;t the best avenue for a legal discussion, especially since most participants are software developers and not lawyers. Many have mistaken the thread as a way to communicate with Facebook but there are just a handful of software developers who are representing the React community&#8217;s concerns.</p>\n<p>&#8220;We have heard you very well, and we have passed on your concerns,&#8221; Abramov said. &#8220;But repeating the same points over and over in different threads does not help move this forward, and creates a lot of noise and stress for the maintainers who are already empathetic to your cause.&#8221;</p>\n<p>Several participants expressed frustration that the React community cannot participate in the discussions more directly. However, as React is both an open source project and a product of Facebook, the company&#8217;s leadership has the last word on licensing issues.</p>\n<p>&#8220;I understand that software developers like us are not the best people to discuss legal details,&#8221; software consultant Erik Doernenburg <a href="https://github.com/facebook/react/issues/10191#issuecomment-316318170" target="_blank">said</a>. &#8220;However, wouldn&#8217;t the logical consequence be that the Facebook Legal team, who make such decisions, become active in this forum? Shouldn&#8217;t it be possible that all relevant details pertaining to a piece of open source software are discussed in the open? It is incredibly frustrating to have such an important aspect of open software discussed behind closed doors.&#8221;</p>\n<p>It&#8217;s not known whether Facebook is considering another change to its Patents grant or a complete re-licensing. Participants in the discussion are also concerned about other Facebook open source projects like GraphQL, Relay, React Native, and Flow, which share the same BSD+Patents License and are widely used by the open source community.</p>\n<p>Dan Abramov left an <a href="https://github.com/facebook/react/issues/10191#issuecomment-316739812" target="_blank">update</a> today to let the community know that no resolution is available this week. However, the update seemed more positive than the first one, which discouraged participants from being optimistic about a change.</p>\n<p>&#8220;I want to point out that there is a real momentum behind this discussion internally,&#8221; Abramov said. &#8220;There are going to be more meetings next week escalating this up to the engineering directors. As you imagine they are quite busy, so this is taking more time than we thought.</p>\n<p>&#8220;Again, I can’t promise you any specific conclusion, and there is no clarity on where this will land. But please know there are people working on getting your voice heard.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jul 2017 22:37:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: WPWeekly Episode 282 – Talking WooCommerce with Cody Landefeld";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=73448&preview=true&preview_id=73448";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wptavern.com/wpweekly-episode-282-talking-woocommerce-with-cody-landefield";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3381:"<p>In this episode, <a href="http://jjj.me/">John James Jacoby</a> and I are joined by <a href="https://twitter.com/codyL">Cody Landefeld</a>, Senior web strategist and founder of <a href="https://modeeffect.com/">Mode Effect</a>. Landefeld describes some of the challenges that shop owners face and provides insight into a couple of WooCommerce projects Mode Effect has recently built.</p>\n<p>We discussed the future of WooCommerce and the odds of it turning into a SaaS product. Landefeld shares his thoughts on WooCommerce <a href="https://wptavern.com/woocommerce-drops-50-renewal-discount-on-subscriptions">dropping its 50% renewal discount</a> on subscriptions. Even though the discount is gone, he believes it&#8217;s still an affordable option for most users. To close out the show, Jacoby and I discuss the news of the week.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/aj-morris-acquires-ithemes-exchange">AJ Morris Acquires iThemes Exchange</a><br />\n<a href="https://wptavern.com/jetpack-professional-plan-introduces-unlimited-access-to-200-commercial-themes">Jetpack Professional Plan Introduces Unlimited Access to 200+ Commercial Themes</a><br />\n<a href="https://wptavern.com/bbpress-2-5-13-readds-sanitization-to-anonymous-user-data">bbPress 2.5.13 Readds Sanitization to Anonymous User Data</a><br />\n<a href="https://wptavern.com/wp-rollback-adds-multisite-compatibility-and-changelog-preview">WP Rollback Adds Multisite Compatibility and Changelog Preview</a><br />\n<a href="https://wptavern.com/gutenberg-0-5-0-adds-new-verse-block-for-poetry-and-a-new-display-for-recent-blocks">Gutenberg 0.5.0 Adds New Verse Block for Poetry and a New Display for Recent Blocks</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://ahmadawais.com/gutenberg-boilerplate/">Gutenberg Boilerplate For Third-Party Custom Blocks</a> by Ahmad Awais. The boilerplate is a great way to learn the basics on creating custom blocks for Gutenberg. It comes with four example blocks.</p>\n<ul>\n<li>A block with custom CSS for editor and front end</li>\n<li>A block with ES6 or ESNext and a Webpack build process</li>\n<li>A block with editable content</li>\n<li>A block to click Tweet the contents of that block</li>\n</ul>\n<p>Awais also shared his thoughts on the Gutenberg project.</p>\n<p><a href="https://wordpress.org/plugins/add-admin-css/">Add Admin CSS</a> &#8211; Using this plugin you’ll easily be able to define additional CSS (inline and/or files by URL) to be added to all administration pages. You can define CSS to appear inline in the admin head (within style tags), or reference CSS files to be linked.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, August 2nd 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #282:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jul 2017 01:19:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: The State of JavaScript 2017 Survey is Now Open";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73377";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wptavern.com/the-state-of-javascript-2017-survey-is-now-open";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2708:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/stateof-javascript-2017.png?ssl=1"><img /></a></p>\n<p>The <a href="http://stateofjs.com/" target="_blank">State of JavaScript 2017 Survey</a> is now open to web professionals of all backgrounds. The intent of the survey is to provide an overview of the rapidly changing landscape of JavaScript frameworks and tools by gauging which technologies are growing in popularity and which ones people are liking and using less.</p>\n<p>The survey, created by <a href="http://twitter.com/SachaGreif" target="_blank">Sacha Greif</a> and <a href="http://michaelrambeau.com/" target="_blank">Michael Rambeau</a>, should take approximately 10 minutes to complete. Topics include JavaScript frontend and backend tools and frameworks, state management solutions, testing tools, CSS, build tools, mobile and desktop technologies, package managers, text editors, salaries, and more.</p>\n<p>Last year&#8217;s 89-question survey received more than 9,300 responses. <a href="https://wptavern.com/state-of-javascript-survey-results-published-react-emerges-as-clear-winner-in-front-end-frameworks" target="_blank">Results</a> showed that React ranked higher than other front-end frameworks in terms of developer satisfaction at 92%, followed closely by Vue.js at 89%.</p>\n<p>It will be interesting to see if and how these results change with many open source project and companies growing wary of using React after the Apache Software Foundation&#8217;s recent decision to<a href="https://wptavern.com/react-users-petition-facebook-to-re-license-react-js-after-apache-software-foundation-bans-bsdpatents-license-in-dependencies" target="_blank"> ban Apache PMC members from using any technology licensed with Facebook&#8217;s BSD+Patents License</a>. A licensing issue that <a href="https://github.com/facebook/react/issues/10191" target="_blank">jeopardizes more companies&#8217; ability to use Facebook&#8217;s popular open source technologies</a> could precipitate a decline in React&#8217;s preeminence among frontend frameworks.</p>\n<p>Sacha Greif reports that the survey has <a href="https://twitter.com/SachaGreif/status/887473181539188736" target="_blank">received more than 3,500 responses in less than 24 hours</a>, a remarkable number compared to 9,300 over the course of three weeks last year. This response affirms the value that <a href="https://wptavern.com/state-of-javascript-survey-results-published-react-emerges-as-clear-winner-in-front-end-frameworks" target="_blank">last year&#8217;s results</a> provided to web professionals who are attempting to navigate the ever-expanding JavaScript ecosystem.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 20:16:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: bbPress 2.5.13 Readds Sanitization to Anonymous User Data";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73397";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/bbpress-2-5-13-readds-sanitization-to-anonymous-user-data";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1328:"<p>The bbPress development team <a href="https://bbpress.org/blog/2017/07/bbpress-2-5-13/">has released</a> bbPress 2.5.13. This release fixes a few bugs, most notably, it readds sanitization to anonymous user data that was accidentally removed in previous versions.</p>\n<p>Those who allow anonymous users to create topics and replies on their forums are encouraged to update immediately.</p>\n<p>&#8220;This feature is not widely used on public forums because spammers aggressively target these kinds of sites, but for communities that rely on this feature, please know you can safely upgrade to 2.5.13 without any issues,&#8221; John James Jacoby, lead developer of bbPress and BuddyPress, said.</p>\n<p>As a reminder, beginning with bbPress 2.5.12, the minimum version of WordPress supported is 4.7. If you&#8217;re using an older version of WordPress, Jacoby recommends using or staying with bbPress 2.5.11.</p>\n<p>bbPress 2.6 is still in the release candidate phase as developers iron out a few issues discovered on WordPress.org.</p>\n<p>Users can <a href="https://wordpress.org/plugins/bbpress/">download the latest versio</a><a href="https://wordpress.org/plugins/bbpress/">n</a> of bbPress from WordPress.org or browse to Dashboard &gt; Updates, and upgrade from within WordPress.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 18:22:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WPTavern: Zagreb to Host 3rd WordCamp in Croatia, September 1-3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72737";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"https://wptavern.com/zagreb-to-host-3rd-wordcamp-in-croatia-september-1-3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4747:"<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/zagreb-croatia.png?ssl=1"><img /></a>photo credit: Archives of Zagreb Tourist Board &#8211; Author: Marko Vrdoljak\n<p><a href="https://2017.zagreb.wordcamp.org/" target="_blank">WordCamp Zagreb</a> will be held September 1-3 and organizers are anticipating 300 attendees. This is the third WordCamp to be held in Croatia, following WordCamp Rijeka (2015) and WordCamp Split (2016). Although it changes cities every year, the camp is known as Croatia’s annual WordCamp.</p>\n<p>&#8220;Having WordCamp change cities each year is quite normal for us,&#8221; WordCamp Croatia co-organizer and Zagreb meetup organizer Emanuel Blagonic said. &#8220;A lot of people from other cities travel to meetups too. Our largest meetup in Zagreb, which usually has 80+ people present and 100+ live stream viewers, usually has people attending from a 300km circle around Zagreb. People also travel to Split when there are meetups there.&#8221;</p>\n<p>A renewed <a href="https://make.wordpress.org/community/2017/07/18/regional-camps-take-2/" target="_blank">discussion on regional WordCamps</a> is firing up on the WordPress Community team P2 blog, as the topic was discussed at the Community Summit and with recent developments in <a href="https://wptavern.com/wordcamp-netherlands-reinstated-for-2018" target="_blank">WordCamp Netherlands being reinstated</a> and <a href="https://wptavern.com/wordsesh-asia-now-in-planning-for-2018-wordcamp-asia-targeted-for-2019" target="_blank">WordCamp Asia a possibility for 2019</a>. Croatia is another example of a country where a national WordCamp might benefit the community.</p>\n<p>&#8220;When we started with organizing a WordCamp in Croatia, as a community we hoped that WordCamp will help us boost local communities, thus not having everything centralized in Zagreb (where most other meetups happen, i.e. PHP, Design, UX, JavaScript, Python, etc.),&#8221; Blagonic said. &#8220;As a community we strongly believe that every region is different and it should be viewed like that. So far we are organizing WordCamps &#8216;no matter what,&#8217; but having a &#8216;national WordCamp would mean more Croatian sponsors and better coverage from national media.&#8221;</p>\n<p>WordCamp Zagreb will be a three-day event, beginning with workshops on the first day as the event has done in previous years. Organizers are planning for 12 workshops in four tracks that will be open to public registration. The main conference will be held Saturday with two tracks. Contributor Day will close out the event on Sunday, followed by a walking tour of the city.</p>\n<p>Friday&#8217;s workshops will be held mostly in Croatian, except a few, such as WordPress Basics and Public Speaking, which will be conducted in English. All of the conference talks this year will be in English.</p>\n<p>&#8220;Croatia is a tourist country and most of the people here speak good English, which is often used at large tech events,&#8221; Blagonic said. &#8220;With that in mind, every WordCamp so far was (mostly) in English, which means it’s quite welcoming for people outside Croatia, too (Slovenia, Austria, Italy, Germany) – and our community likes to meet new people. Unlike WordCamps, we see Meetups as strong local events so we usually have talks in Croatian there.&#8221;</p>\n<p>Blagonic said every year so far the WordCamp has had approximately 20% of its attendees traveling from outside Croatia, as the country is relatively small with a population of 4 million. Most attendees travel to the WordCamp from other parts of Croatia.</p>\n<p>Croatia currently has five local meetups, but only the two in Zagreb and Split have enough members to meet regularly. Blagonic said he sees the meetups as a way to help local communities grow and views the WordCamp as &#8220;a celebration of the country community.&#8221; However, he believes centralizing the larger events too much would be detrimental to growing the fledgling WordPress communities in the smaller cities.</p>\n<p>&#8220;I’d say that in Croatia (and in the region) we have a young democracy and we still haven’t found the best way to connect with people,&#8221; Blagonic said. &#8220;For example, there are four big cities in Croatia where most of the things happen, and the tech scene is quite strong in them. If you go outside of these four hubs, a lot fewer things happen, which is a problem for people living outside. We believe that having a centralized country is bad for growing local communities (outside these areas) so with changing cities each year and with traveling to other Meetups/WordCamps we hope that we will change how people feel about it. &#8220;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 18:11:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Donncha: WP Super Cache 1.5.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"https://odd.blog/?p=89500337";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://odd.blog/2017/07/19/wp-super-cache-1-5-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5935:"<p>WP Super Cache is a fast full-page caching plugin for WordPress. Download it from your dashboard or get it <a href="https://wordpress.org/plugins/wp-super-cache/">here</a>.</p>\n<p>Version 1.5.0 has been in development for some time. It has a ton of bug fixes and new features. </p>\n<h3>REST API</h3>\n<p>The headline new feature is REST API access to the settings. This will allow developers to create their own interface to the settings of the plugin. Unfortunately it isn&#8217;t yet documented but you can see the code <a href="https://github.com/Automattic/wp-super-cache/tree/master/rest">in the rest directory</a>. Start with load.php where you&#8217;ll find the code that registers all the endpoints. Users who access the API must be logged in as admin users. If you want to test the API, see the end of this post.</p>\n<h3>Settings Page</h3>\n<p>We have also simplified the settings page to make it easier to choose which caching method is used. </p>\n<p><img /></p>\n<p>Instead of maybe confusing the user with technical words like PHP, mod_rewrite and WP-Cache we have split them up into &#8220;Simple&#8221; and &#8220;Expert&#8221; delivery methods, and done away with mentioning WP-Cache completely. Simple delivery uses PHP, expert uses mod_rewrite and well, WP-Cache got the boot because it&#8217;s always active anyway.</p>\n<p>WP-Cache caching is always active, but it can be disabled in different ways.</p>\n<ul>\n<li> Disable caching for known users.</li>\n<li> Don&#8217;t cache pages with GET parameters</li>\n<li> Disable caching of feeds</li>\n</ul>\n<h3>Headers</h3>\n<p>We <a href="https://github.com/Automattic/wp-super-cache/pull/287">expanded the number of headers</a> cached by the plugin. The list of headers was borrowed from <a href="https://cometcache.com/">Comet Cache</a>. However, anonymous users will still only see the bare minimum like content-length or content-type. If you need to use security headers like &#8220;X-Frame-Options&#8221; or &#8220;Content-Security-Policy&#8221; you should enable caching of HTTP headers. This unfortunately disables super caching so only WP-Caching is used but it&#8217;s still very fast (and faster in this release than before which I will get to below). You can also use the &#8220;wpsc_known_headers&#8221; filter to modify the list of recognised headers.</p>\n<h3>WP-Cache Reorganisation</h3>\n<p>WP-Cache cache files are split into two files &#8211; one holds the page content, the other (meta file) holds information about the page such as cookies, headers and url. In the past these files were stored in two directories which could become a problem if there were many thousands of those files. Even with only a few hundred files, maintenance could be an issue as deleting related files (like page archives, or copies of the front page) needed every meta file to be inspected.<br />\nNow the files are stored in the supercache directory structure that mirrors your permalink structure. Deleting related files is is simpler and serving files will be faster as the operating system won&#8217;t need to open a directory of thousands of files.<br />\nIf you currently rely on WP-Cache files, the plugin will still look for them where they are, but new WP-Cache files will be created in cache/supercache/example.com/ (where example.com is your hostname).</p>\n<h3>Sitemaps</h3>\n<p>We added support for caching sitemaps, but your sitemap plugin will need to cooperate to get it to work. The sitemap plugin needs to identify the sitemap request as a feed. Jetpack 5.1 now supports this since <a href="https://github.com/Automattic/jetpack/pull/7397">#7397</a>. You can disable the caching by excluding feeds from caching.</p>\n<h3>Debugging Improved</h3>\n<p>The debug log is now protected by a username/password. For convenience, the username and password are the same but they are a long md5 string:</p>\n<p><img /></p>\n<p>Deleting the log file clears it and resets it ready for more logging. Before, toggling debugging would create a new debug log and the old one would be kept around, but not linked, until deleted by garbage collection, and of course they were text files anyone could access.</p>\n<p>This release includes lots of other small bug fixes and changes. Take a look at the <a href="https://github.com/Automattic/wp-super-cache/pulls?q=is%3Apr+is%3Aclosed">number of closed PRs</a> for an exhaustive list of those changes!</p>\n<h3>Testing the REST API</h3>\n<p>There are a number of ways to send POST requests to a web server but one I like is using curl in a shell script. You&#8217;ll need two bits of information from the website:</p>\n<ol>\n<li> The &#8220;wordpress_logged_in&#8221; cookie from your browser.</li>\n<li> The wp_rest nonce which you can get by adding `echo wp_create_nonce( &#8216;wp_rest&#8217; );` somewhere on your site where you&#8217;re logged in. It&#8217;s good for 24 hours.</li>\n</ol>\n<p>My test script looks something like this:<br />\n<code>export NONCE=''1234567890''<br />\nexport COOKIE=''wordpress_logged_in_xxxxxxxxxxxxxxxxxxxx=1234567890''<br />\ncurl -v -X "GET" -H "Content-Type: application/json" -H "X-WP-Nonce: $NONCE" -H "Cache-Control: no-cache" -H "Cookie: wordpress_test_cookie=WP+Cookie+check; $COOKIE" \\<br />\n-d ''{}'' "https://example.com/wp-json/wp-super-cache/v1/settings/"</code></p>\n\n<p><strong>Related Posts</strong><ul><li> <a href="https://odd.blog/2008/10/24/wp-super-cache-084-the-garbage-collector/" rel="bookmark" title="Permanent Link: WP Super Cache 0.8.4, the garbage collector">WP Super Cache 0.8.4, the garbage collector</a></li><li> <a href="https://odd.blog/2009/01/09/wp-super-cache-087/" rel="bookmark" title="Permanent Link: WP Super Cache 0.8.7">WP Super Cache 0.8.7</a></li><li> <a href="https://odd.blog/2010/02/08/wp-super-cache-099/" rel="bookmark" title="Permanent Link: WP Super Cache 0.9.9">WP Super Cache 0.9.9</a></li></ul></p>\n<p><a href="https://odd.blog/" rel="external nofollow">Source</a></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 12:25:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Donncha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"HeroPress: Becoming Myself Again";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1978";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:116:"https://heropress.com/essays/becoming-myself-again/?utm_source=rss&utm_medium=rss&utm_campaign=becoming-myself-again";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6018:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/071917-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: The WordPress community is, slowly but surely, helping me get rid of my ingrown fear of the unknown, of others." /><p>It’s so easy to become secluded and sit at home, in your own bubble, but it wasn’t until a group of people literally pulled me in with their welcoming atmosphere and demeanor, that I realised that I could function amongst other people as well (even if it was somewhat limited).</p>\n<h3>In The Beginning</h3>\n<p>To understand my bubble, you need to also know a little about me, or rather, about my childhood. I had a less than ideal childhood. I have a great family, lived in a great house, even in the “best country in the world” as they say. And despite this, I say I wasn’t happy with my childhood. My school years were the reason, they were rough. At times I think back and feel like events that unfolded were parts of ridiculous scenes from an over the top movie.</p>\n<p>All in all, the days seemed generic enough, except my school days were a thing of dread. I would suffer physical and verbal abuse throughout my schooldays, even going to and from school, I had no real friends (victim by association is understandably not something a child would want to intentionally walk into. I understand this as an adult, but as a child it’s not that easy).</p>\n<blockquote><p>Because of my treatment over the years, I developed trust issues, I got a fear for everyone around me, and it was growing stronger and stronger over the years.</p></blockquote>\n<p>I suppressed it, I lied about it, and I got terrifyingly good at the lying part.</p>\n<p>This is why I was drawn to the internet: I didn’t have to interact with people, I didn’t need to go outside where the others were, I could just do my thing and move on. I could live in my own bubble.</p>\n<h3>Finding WordPress</h3>\n<p>But then the darndest thing happened. I’d been stuck on a project, I needed help, and I turned to a support room for an open source project, for WordPress. If you’ve ever tried to get help in a chat before, you’ll know what kind of an experience it can be, the snarky reactions to your code, the nitpicking of using the wrong terminology, it’s not fun. This place though, they didn’t care that I was not only using the wrong terms, but my entire code was a horrible mess.</p>\n<blockquote><p>Where I would usually get the help I needed and move on, popping back in my bubble of solitude, I instead wanted to be like these people, I wanted to use what I learnt to let others get helped.</p></blockquote>\n<p>Over the years, I all but devote myself to that place. Nobody knew me, I liked staying under the radar, but eventually I got pushed into a team meeting. I was intrigued, so I would watch, I’d say hi, and progressively make my opinions heard. Yet, I would stick to my bubble, once the meeting was over I was back on my own.</p>\n<h3>And Then I Went To WordCamp</h3>\n<p>Until I got to attend my first big WordCamp, the last one held in San Francisco, I was ecstatic! I’d never been to a big conference before, as I didn’t like crowds, but I knew some of the people who would be there. They were people who had been friendly and inviting in the most genuine way imaginable. It’s not easy being worried whenever you’re out amongst people, but this group of people, this community, I didn’t have that fear around them.</p>\n<blockquote><p>I somehow made WordCamps my safe space.</p></blockquote>\n<p>They are where I can, if only for a short while, leave that bubble, leave the need to be alone, and be a part of something great! I use them as fuel to get through the hard times, I can look forward to meeting people, people who value my opinions and my experience. People who genuinely want to listen and most of all, care about you! The WordPress community is, slowly but surely, helping me get rid of my ingrown fear of the unknown, of others.</p>\n<p>The community is helping me become myself again.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Becoming Myself Again" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Becoming%20Myself%20Again&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbecoming-myself-again%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Becoming Myself Again" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbecoming-myself-again%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbecoming-myself-again%2F&title=Becoming+Myself+Again" rel="nofollow" target="_blank" title="Share: Becoming Myself Again"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/becoming-myself-again/&media=https://heropress.com/wp-content/uploads/2017/07/071917-150x150.jpg&description=Becoming Myself Again" rel="nofollow" target="_blank" title="Pin: Becoming Myself Again"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/becoming-myself-again/" title="Becoming Myself Again"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/becoming-myself-again/">Becoming Myself Again</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 12:00:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Marius Jensen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:104:"WPTavern: New WordPress Contributors Meeting Provides Opportunities to Ask Questions and Learn the Ropes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73007";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:115:"https://wptavern.com/new-wordpress-contributors-meeting-provides-opportunities-to-ask-questions-and-learn-the-ropes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2270:"<p>Contributing to WordPress or other open source projects can be intimidating for first-time contributors. Sometimes, all you need is a helping hand to overcome fear, intimidation, or other barriers.</p>\n<p>In 2013, with the help of Konstantin Obenland, a WordPress core developer, I overcame my fear and <a href="https://wptavern.com/i-contributed-to-the-core-of-wordpress-and-you-can-too">contributed my first patch</a> to WordPress.</p>\n<p>This is one of the principles behind a <a href="https://make.wordpress.org/core/2017/06/30/announcing-a-weekly-new-contributors-meeting/">new weekly meeting</a> that is geared towards new contributors.</p>\n<p>&#8220;The new contributors meeting is the perfect place to come if you are new to contributing to WordPress core and have questions,<em>&#8221; </em>Adam Silverstein, WordPress core contributor, said.</p>\n<p>Every Wednesday at 3PM Eastern Daylight Time, users can visit the #core WordPress Slack channel and ask questions related to patches, tickets, and review the <a href="https://core.trac.wordpress.org/tickets/good-first-bugs">good-first-bugs report</a> on Trac.</p>\n<p>The first meeting was <a href="https://make.wordpress.org/core/2017/07/10/new-contributors-meeting-recap-july-5/">held on July 5th</a> where participants asked questions about working with Git in WordPress core, applying patches, and unit testing. In <a href="https://make.wordpress.org/core/2017/07/18/new-contributors-meeting-recap-july-12/">the second meeting</a>, participants discussed whether or not new contributors are allowed to make changes to tickets.</p>\n<p>Other topics mentioned include, which repositories to use, clarification on contributing to core versus updating the WordPress Developer&#8217;s site, and which tickets to select for review.</p>\n<p>The next meeting is on Wednesday, July 19th at 3PM Eastern. If you have any questions on how to contribute to WordPress, be sure to join the WordPress #core Slack channel at that time and ask away.</p>\n<p>Meeting notes with links to discussions, tickets mentioned, and other resources are published on the Make WordPress Core blog under the <a href="https://make.wordpress.org/core/tag/new-contributors/">#new-contributors</a> tag</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 19 Jul 2017 05:09:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: WP Rollback Adds Multisite Compatibility and Changelog Preview";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73315";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wptavern.com/wp-rollback-adds-multisite-compatibility-and-changelog-preview";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4021:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2015/05/undo-button.jpg?ssl=1"><img /></a></p>\n<p>In the two years since <a href="https://wordpress.org/plugins/wp-rollback/" target="_blank">WP Rollback</a> launched on WordPress.org, the plugin has racked up more than 30,000 active installations with nearly all 5-star reviews. It allows users to roll back any WordPress.org plugin or theme to a previous version with just a few clicks and also <a href="https://wordimpress.com/beta-testing-wordpress-plugins-with-wp-rollback/" target="_blank">supports beta versions of plugins</a>.</p>\n<p>It&#8217;s easy to see why the plugin is so popular. Navigating buggy updates is a natural part of life when maintaining a self-hosted website and not all users have a separate testing environment for their websites. This tool gives them a basic diagnostic tool and the confidence to apply updates knowing they can easily roll it back in case of a problem. Many reviewers cite the plugin as having been &#8220;a lifesaver&#8221; when applying WooCommerce or Yoast SEO updates that had unexpected results.</p>\n<p>The <a href="https://wordpress.org/support/topic/apparently-not-working-for-themes-rollback-on-multisites/" target="_blank">lone one-star review of WP Rollback</a> was given because the user anticipated multisite compatibility and was unable to get it to work. That issue has been solved in the latest update.</p>\n<p><a href="https://wordimpress.com/wprollback-wordpress-multisite/" target="_blank">WP Rollback 1.5</a> is fully compatible with multisite networks, giving super admins the ability to roll back extensions from the network plugin/themes screen or from the the plugins/themes screen of the primary site in the network. Sub-sites do not have the ability to roll back plugins and themes for the entire network. The UI for rolling back themes on the network admin screen is identical to the plugin screens, as multisite doesn&#8217;t have the fancy theme preview screen that single site installs have.</p>\n<p>Version 1.5 also adds the ability for users to preview the changelog for previous versions of a plugin. This makes it convenient for users to quickly view the changes for each version without leaving the admin.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/rollback_changelog.gif?ssl=1"><img /></a></p>\n<p><a href="https://wordimpress.com" target="_blank">WordImpress</a>, the folks behind WP Rollback, have considered adding core rollbacks and database savepoints, but both features have serious potential drawbacks that could turn it into a high support-demanding plugin. In its current state, the plugin is virtually support-free.</p>\n<p>Matt Cromwell, Head of Support and Community Outreach at WordImpress, said the team thought about monetizing the plugin in the beginning, but is not pursing any plans to do so at this time.</p>\n<p>&#8220;We think of it as just one of the many ways we are giving back to the WP community,&#8221; Cromwell said. &#8220;Our preference would be for the core team to consider it as a potential feature plugin for eventual core inclusion.&#8221;</p>\n<p>Cromwell said WordImpress hasn&#8217;t made any intentional steps to see if core folks are interested in WP Rollback becoming a feature plugin, but the team has purposely built it to be as close to core standards as possible. He believes it would be relatively easy to implement in WordPress.</p>\n<p>Suggestions for new features, general feedback, and bug reports are welcome on WP Rollback&#8217;s <a href="https://github.com/WordImpress/WP-Rollback" target="_blank">GitHub repository</a>. The plugin&#8217;s authors recommend backing up your site before using it to rollback plugins and themes or testing rollbacks on a staging site first. WP Rollback is not capable of rolling back changes a plugin update has made to the database, so a backup can come in handy if the database changes are incompatible with previous versions.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Jul 2017 22:24:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:136:"WPTavern: React Users Petition Facebook to Re-license React.js after Apache Software Foundation Bans BSD+Patents License in Dependencies";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73216";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:146:"https://wptavern.com/react-users-petition-facebook-to-re-license-react-js-after-apache-software-foundation-bans-bsdpatents-license-in-dependencies";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9983:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/apache-software-foundation.png?ssl=1"><img /></a></p>\n<p>The Apache Software Foundation <a href="https://issues.apache.org/jira/browse/LEGAL-303?focusedCommentId=16088663&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-16088663" target="_blank">issued a notice</a> over the weekend, indicating that it has added <a href="https://code.facebook.com/pages/850928938376556" target="_blank">Facebook&#8217;s BSD+Patents license</a> to its <a href="https://www.apache.org/legal/resolved#category-x" target="_blank">Category X list of disallowed licenses</a> for <a href="https://www.apache.org/dev/pmc.html" target="_blank">Apache PMC members</a>. This is the license that Facebook uses for most of its open source projects.</p>\n<p>A representative from Facebook&#8217;s <a href="https://github.com/facebook/rocksdb" target="_blank">RocksDB</a> team <a href="https://issues.apache.org/jira/browse/LEGAL-303?focusedCommentId=16088730&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-16088730" target="_blank">commented</a> on the Apache Foundation&#8217;s post to advise that the project will meet the August 31st deadline for relicensing in order to be in compliance with Apache PMC member requirements, and that change has been <a href="https://github.com/facebook/rocksdb/commit/3c327ac2d0fd50bbd82fe1f1af5de909dad769e6" target="_blank">committed</a> today:</p>\n<blockquote><p>The RocksDB team is adjusting the licensing such that it will be dual-licensed under the Apache 2 and GPL 2 (for MySQL compatibility) licenses. This should happen shortly and well ahead of August 31st. I&#8217;ll leave the history and philosophy around licensing alone since it&#8217;s generally a complex discussion to have and I&#8217;m not sure that it has actually been fully captured in this thread especially vis a vis Facebook&#8217;s intent.</p>\n<p>Hopefully this morning&#8217;s guidance to PMCs can be adjusted since I don&#8217;t think any of us see a bunch of extra engineering effort as a desirable thing across the ASF projects which are already making use of RocksDB</p></blockquote>\n<p>In light of the ASF Legal Affairs Committee&#8217;s decision to disallow the BSD+Patents License in Apache projects, ASF member Joan Touzet opened an issue on the React repository urging Facebook to consider re-licensing React.js under Apache License v2.0 and GPL 2:</p>\n<blockquote><p>\nThis has led to a lot of upset and frustration in the Apache community, especially from projects requiring similarly-licensed code as direct dependencies &#8211; the chief of these being RocksDB.</p>\n<p>We (the Apache Software Foundation) have just received word that RocksDB will be re-licensing their code under the dual Apache License v2.0 and GPL 2 licenses.</p>\n<p>As a user of React.JS in an ASF top-level project (Apache CouchDB), please consider re-licensing React.JS under similar terms. Otherwise, many ASF projects such as our own will have to stop relying on and building with React.</p></blockquote>\n<p>Although the re-licensing of RocksDB solves that particular project&#8217;s problem, ASF&#8217;s ban of Facebook&#8217;s BSD+Patents license means other widely used technologies from Facebook, including React.js, are still banned. This is likely to cause problems for many open source projects.</p>\n<p>Harshavardhana, from the <a href="https://www.minio.io/" target="_blank">Minio</a> team, commented in support of the petition to Facebook for re-licensing React.</p>\n<p>&#8220;Our object storage browser UI is based on React and we are Apache 2.0 licensed,&#8221; he said. &#8220;It would be unfortunate and time consuming to migrate but we will have to do that in lieu of new information regarding Apache incompatibility. Please consider re-licensing React.&#8221;</p>\n<p>Contributors to <a href="https://github.com/omcljs/om" target="_blank">Om</a>, a ClojureScript interface for React, are also <a href="https://github.com/omcljs/om/issues/882" target="_blank">discussing whether or not the ASF&#8217;s new requirements will affect their project</a>. Greg Stein, commenting on behalf of ASF, clarified the reasons behind the organization&#8217;s decision to ban Facebook&#8217;s BSD+Patents license:</p>\n<blockquote><p>Please note that the ASF chose this path for policy reasons, rather than &#8220;license incompatibility&#8221;. We don&#8217;t want downstream users of Apache code to be surprised by the PATENTS grant that (was) in RocksDB and (is) in React. Users should only need to follow the ALv2, with no further constraints.</p>\n<p>These license can work together (IMO) and simply provide two sets of restrictions upon users.</p></blockquote>\n<p>Stein said it was not ASF&#8217;s lawyers who made the decision but rather the organization&#8217;s policy decision to &#8220;disallow FB/BSD+Patent license to be mixed into the software the Foundation releases to users.&#8221;</p>\n<h3>Facebook is Internally Discussing the Re-Licensing Matter</h3>\n<p>Dan Abramov, co-author of Redux, Create React App, and React Hot Loader, <a href="https://github.com/facebook/react/issues/10191#issuecomment-315707719" target="_blank">joined the discussion on GitHub</a> regarding re-licensing with a brief and ambiguous summary about how Facebook is handling the petition to re-license.</p>\n<p>&#8220;To give you a small update, there are going to be more internal discussions about this for about a week,&#8221; Abramov said. &#8220;This is about as much as I can say. I wouldn&#8217;t be too optimistic about this changing for React but we&#8217;ll see. @daveman692 has kindly agreed to provide an update when these discussions are over.&#8221;</p>\n<p>Dropping the patent grant entirely, which would be the most convenient way of solving this issue for open source projects, isn&#8217;t likely to happen. React has already gone through re-licensing twice during its short history. It was originally licensed under Apache 2.0 but this was changed in October 2014 to the BSD License plus the patent grant, which included a highly controversial termination provision. In April 2015, the patent grant was changed slightly to allow licensees to continue to use the software in the event that a patent lawsuit did not include a counterclaim against Facebook or its affiliates in a matter unrelated to React.js.</p>\n<p>The termination provision in Facebook&#8217;s BSD+Patents License continues to be unpopular and is regarded suspiciously by many open source project maintainers. When the Drupal project began <a href="http://buytaert.net/selecting-a-client-side-framework-for-drupal" target="_blank">considering a client-side framework to supersede Backbone.js</a>, Dries Buytaert passed on React based on what he said was &#8220;a potentially unacceptable patent clause,&#8221; citing <a href="https://github.com/Automattic/wp-calypso/issues/650" target="_blank">pushback from WordPress.com&#8217;s Calypso and React contributors</a>.</p>\n<p>The WordPress open source project has not formally announced its decision on which JavaScript framework will be included in core, but all signs point to React. WordPress&#8217; upcoming Gutenberg editor is built on React and its chief contributors are Automattic employees who work on React-based products for WordPress.com. Gutenberg continues to plough forward at a breakneck pace with no indication of a rewrite, and WordPress co-creator Matt Mullenweg has been outspoken about his preference for using React.</p>\n<p>Although Automattic&#8217;s legal counsel has said the company is <a href="https://wptavern.com/automattic-will-continue-to-use-react-js-in-calypso-despite-patent-clause" target="_blank">comfortable using React for its product under the project&#8217;s current license </a>, others in the WordPress community are not as amenable to including the framework in core.</p>\n<p>The Open Source Initiative (OSI) includes a generic <a href="https://opensource.org/licenses/BSDplusPatent" target="_blank">BSD+Patent license</a> listed among its approved licenses, but Facebook&#8217;s particular BSD+Patent license has not been submitted. Robert Pierce, a partner at El Camino Legal, <a href="https://www.elcaminolegal.com/single-post/2016/10/04/Facebook-Reactjs-License" target="_blank">contends</a> that the license termination provision ought to be impermissible in an open source license because it exists to protect Facebook from patent litigation that is completely unrelated to React code:</p>\n<blockquote><p>Facebook touts React.js as open source software. But in my mind the license termination provision of the Additional Grant of Patent Rights takes the offering outside the realm of open source software.</p>\n<p>The patent license offered in the Additional Grant of Patent Rights (v.2) is conditioned upon the licensee not bringing a patent infringement lawsuit against Facebook or its affiliates. Thus, the licensee pays a price to use the library. It is not a price paid with money. The price demanded by Facebook for use of the library is that the licensee refrain from exercising any of its patent rights against Facebook or its affiliates.</p></blockquote>\n<p>Pierce views Facebook&#8217;s publication of React source code as leverage to win some protection against patent lawsuits, which he deems to be &#8220;too greedy an approach for Facebook to claim open source status.&#8221;</p>\n<p>The open source community has widely speculated about the implications of including Facebook&#8217;s BSD+Patent license as a dependency, but the license has not yet been tested in court. The Apache Software Foundation is the first major organization to take a hard line stance on the controversial license and this has caught Facebook&#8217;s attention. Facebook representatives have promised an update on the petition for re-licensing after its internal discussions have concluded.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Jul 2017 03:25:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: Stylishly Display Weather Conditions with the Weather Atlas Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73229";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wptavern.com/stylishly-display-weather-conditions-with-the-weather-atlas-widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2207:"<p>If you&#8217;re looking for an easy way to display weather conditions on your site, check out the new <a href="https://wordpress.org/plugins/weather-atlas/">Weather Atlas Widget</a> by <span class="byline"><span class="author vcard"><a href="https://profiles.wordpress.org/weatheratlas">Yu Media Group d.o.o</a>. Once activated, browse to Appearance &gt; Widgets, and add the Weather Atlas widget to a sidebar. </span></span></p>\n<img />Weather Atlas Settings\n<p>As you begin typing, a drop-down list of cities is displayed. This helps choose the correct city. From here, users can configure the following settings:</p>\n<ul>\n<li>Display temperatures in Fahrenheit or Celsius</li>\n<li>Use English or Spanish language</li>\n<li>Horizontal or Vertical Layout &#8211; Horizontal displays more information such as five-day forecasts</li>\n<li>Font size. By default, the widget uses the font size specified in the theme</li>\n<li>Background color</li>\n<li>Text Color</li>\n<li>Headings</li>\n</ul>\n<p>Users can display sunrise and sunset times, heat index, wind chills, UV index, wind speeds, humidity, and pressure. You can also hide or display hourly forecasts.</p>\n<img />Forecast for Cleveland, Ohio\n<p>It&#8217;s recommended that for three-hour forecasts, you use the vertical layout and for five-hour forecasts, the horizontal layout. The same recommendations apply for daily forecasts.</p>\n<p>The widget not only looks nice but it also changes color based on temperature. Shades of blue represent cooler temperatures while shades of red represent warmer temperatures.</p>\n<img />Temperatures Represented by Colors\n<p>By default, the bottom of the widget displays the text, &#8220;Weather from Weather Atlas&#8221;. However, if you choose to display the detailed forecast, the text is replaced with a Detailed Forecast link. This link takes visitors to a page on Weather-Atlas.com that displays detailed weather conditions for the selected city.</p>\n<p>I tested the Weather Atlas Widget on WordPress 4.8 and didn&#8217;t encounter any issues. It&#8217;s <a href="https://wordpress.org/plugins/weather-atlas/">available for free</a> on the WordPress plugin directory.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Jul 2017 01:55:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: Gutenberg Boilerplate Demonstrates How to Build Custom Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73202";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wptavern.com/gutenberg-boilerplate-demonstrates-how-to-build-custom-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4716:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/gutenberg-boilerplate.jpg?ssl=1"><img /></a></p>\n<p>Gutenberg is still in beta but developers are already getting ready for creating their own custom blocks. Over the weekend Ahmad Awais released a new project called <a href="https://ahmadawais.com/gutenberg-boilerplate/" target="_blank">Gutenberg Boilerplate For Third-Party Custom Blocks</a>. Awais&#8217; introductory post includes a rundown of his thoughts on the current pros and cons of developing for the Gutenberg project. Although he appreciates the technology behind Gutenberg and the improvements over shortcodes, he is not fully sold on the concept of putting everything into blocks. To learn more, he decided to jump into the code.</p>\n<p>&#8220;I am still making up my mind with how Gutenberg will fit in the WordPress core,&#8221; Awais said. &#8220;There are so many things which are both good and bad about it. So, instead of ranting about it, I wanted to do something more productive. I went ahead, studied the source code and received a lot of help from Gutenberg contributors (Matias Ventura, James Nylen, Riad Benguella, Andrew Duthie, Joen, etc.) to finally build a Gutenberg Boilerplate project.&#8221;</p>\n<p>Awais&#8217; <a href="https://github.com/ahmadawais/Gutenberg-Boilerplate/" target="_blank">Gutenberg Boilerplate</a> is a good starting place for learning more of the basics about developing for the editor. It comes in the form of a plugin that offers four examples of how to build different kinds of custom Gutenberg blocks, with and without a build process:</p>\n<ul>\n<li>A block with custom CSS for editor and front end</li>\n<li>A block with ES6 or ESNext and a Webpack build process</li>\n<li>A block with editable content</li>\n<li>A block to click Tweet the contents of that block</li>\n</ul>\n<p>For example, the tweet block, which is something that might previously been handled with a shortcode, is an example that includes four files: block.js to register the custom Gutenberg block, editor.css, style.css, and index.php.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/4-gb.gif?ssl=1"><img /></a></p>\n<p>Awais noticed that many developers were wanting to try building third-party blocks, but Gutenberg&#8217;s documentation for this was outdated and/or non-existent. He got involved in contributing to the project&#8217;s documentation after discovering the docs describing how to enqueue block and block editor assets were not available. This gave him the inspiration to create a boilerplate.</p>\n<p>&#8220;Both as a theme/plugin developer, I think there’s going to be a steep learning curve here for just about everyone &#8211; users as well as developers,&#8221; Awais said. &#8220;WordPress development just became very complicated with the Gutenberg project. I&#8217;m also not sure how devs will start writing extensions. Some users might expect them to keep the shortcodes for the old editor. Some might ask for blocks in the new one. Is there an API or back-compat? In short everything is changing and this change has both pros and cons.&#8221;</p>\n<p>These concerns also tie into the larger discussion around <a href="https://github.com/WordPress/gutenberg/issues/952" target="_blank">how Gutenberg can support legacy metaboxes that use the old PHP framework</a>, instead of updating to the new JS.</p>\n<p>&#8220;New metaboxes should be written in JS, and will appear in the Post Settings sidebar alongside the stock ones,&#8221; Gutenberg contributor Joen Asmussen said. &#8220;Metaboxes written in PHP should ideally be upgraded to be JS, but should continue to work in their PHP form also.&#8221; Asmussen has proposed an &#8220;Extended Settings&#8221; panel to house legacy metaboxes in a section below the editor. It would appear only when legacy plugins and metaboxes are enabled, as shown in the mockup below.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/extended-settings-mockup.png?ssl=1"><img /></a></p>\n<p>Discussion regarding how to support metaboxes is still ongoing. With so many important issues like this up in the air, it&#8217;s too early to know what the future of extending Gutenberg will look like. At the moment, the project is undergoing rapid development and changes, so extending Gutenberg may evolve drastically over a short period of time. If the editor is to preserve the same flexibility and customization opportunities of its predecessor, the project will need to ensure that it is easy to create custom blocks and extensions while continuing to support older PHP metabox infrastructure that is currently widely used.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 17 Jul 2017 20:28:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:93:"WPTavern: Gutenberg 0.5.0 Adds New Verse Block for Poetry and a New Display for Recent Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72830";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:104:"https://wptavern.com/gutenberg-0-5-0-adds-new-verse-block-for-poetry-and-a-new-display-for-recent-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5718:"<p>Another round of Gutenberg updates was released today. Last weekend brought <a href="https://make.wordpress.org/core/2017/07/08/whats-new-in-gutenberg-july-8th/" target="_blank">version 0.4.0</a>, which didn&#8217;t have too many noteworthy visible changes on the frontend but introduced an API for handling pasted content. Gutenberg developers are aiming to have specific handling for converting pasted content from applications like Word, Markdown, and Google Docs to native WordPress blocks. Version 0.4.0 also added navigation between blocks using arrow keys and included a new approach for rendering embed frames.</p>\n<p><a href="https://make.wordpress.org/core/2017/07/14/whats-new-in-gutenberg-14th-july/" target="_blank">Gutenberg 0.5.0</a> hit dashboards today. One major improvement to the writing flow is that the editor will now avoid showing block UI while the user is typing and/or starting a new paragraph in a text block. You can test this by typing and pressing enter twice to begin a new text block. No UI should be visible during this process. Small improvements like this one are gradually bringing a bit more zen to the editor, which is still full of confusing and surprising experiences.</p>\n<p>Version 0.5.0 adds the ability to upload images via drag-and-drop onto image block placeholders. The example below shows one of my tests. While the image is uploading, it fades in and out. This experience is a bit disconcerting, especially if the upload never resolves. I&#8217;m not certain this UI provides the best communication for the status of the image upload.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/gutenberg-image-upload.gif?ssl=1"><img /></a></p>\n<p>This version also introduces a new Verse block, which is intended for poetry. It has a slight indent, as compared to a plain text block, but it doesn&#8217;t yet work well with copy and paste. Unless you are a poet composing in WordPress, it&#8217;s far more likely that you will be pasting in poetry content from somewhere else on the web. Other than the initial bugs, it&#8217;s a useful block for those who often post verse.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/verse-block.png?ssl=1"><img /></a></p>\n<p>With the growing number of block types, it can be cumbersome to sort through all of them when adding a new block. Gutenberg 0.5.0 implements a new display for recent blocks. A maximum of eight are shown and the most recently used ones are displayed at the top. It does not yet persist between editor sessions, but Gutenberg contributors plan to add that in the future.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/recent-blocks.png?ssl=1"><img /></a></p>\n<p>Other notable improvements in this release include the following:</p>\n<ul>\n<li><a href="https://github.com/WordPress/gutenberg/pull/1833" target="_blank">New tabs mode for the sidebar</a> to switch between post settings and block inspector</li>\n<li><a href="https://github.com/WordPress/gutenberg/pull/1816" target="_blank">Display warning message</a> when navigating away from the editor with unsaved changes</li>\n<li><a href="https://github.com/WordPress/gutenberg/pull/1872" target="_blank">Mobile implementation</a> of block mover, settings, and delete actions</li>\n<li><a href="https://github.com/WordPress/gutenberg/pull/1852" target="_blank">Search through all tabs</a> on the inserter and hide tabs</li>\n<li>Enable <a href="https://github.com/WordPress/gutenberg/pull/1889" target="_blank">ability to add custom classes</a> to blocks (via inspector)</li>\n<li>Add <a href="https://github.com/WordPress/gutenberg/pull/1896" target="_blank">“table of contents” document outline</a> for headings (with empty heading validation)</li>\n</ul>\n<h3>Writing Long-Form Content with Gutenberg is Still a Frustrating Experience</h3>\n<p>Gutenberg in its current state is a long way away from being an editor that users would embrace for long-form writing. It still contains many unnerving bugs that steal user confidence. For example, when pasting in multiple paragraphs from a lorem ipsum generator, the editor gave me a white screen and I lost all of the content in my post. After a bit of testing I found that pasting in paragraphs one at a time worked.</p>\n<p>This kind of frustrating and unexpected behavior has caused many testers to wonder why it isn&#8217;t being referred to as alpha software instead of beta. WordPress contributor Jon Brown summed up this common sentiment in a <a href="https://make.wordpress.org/core/2017/07/08/whats-new-in-gutenberg-july-8th/#comment-32799" target="_blank">comment</a> on the 0.4.0 release post.</p>\n<p>&#8220;It’s getting better, but it honestly still feels more like a 0.0.4 alpha than a 0.4.0 beta,&#8221; Brown said. &#8220;I’ve tried writing long form content several times with each version since 0.1.0 and each time I’m quickly frustrated by the lack of flow between blocks. It’s more frustrating than TinyMCE.&#8221;</p>\n<p>Gutenberg needs to make significant progress before it can be suitable for writing anything more than a few short paragraphs. It&#8217;s nearly impossible to get into the flow of creating long-form content with the prominence of the block UI. Right now, the editor just gets in the way. The current UI is skewed heavily towards frequent block creation. It is clutter-some and distracting for pure writing tasks. Following the evolution of the editor, with its fast-paced development cycle, is exhilarating after years of stagnation. But the project is sorely in need of a breakthrough where the Gutenberg UI finally gets out of the way of writing.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 15 Jul 2017 05:14:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"WPTavern: Jetpack Professional Plan Introduces Unlimited Access to 200+ Commercial Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73055";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"https://wptavern.com/jetpack-professional-plan-introduces-unlimited-access-to-200-commercial-themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3407:"<p>Automattic has been teasing its plan to add commercial themes to Jetpack for several months after introducing theme installation for self-hosted users from WordPress.com. In March, the plugin <a href="https://wptavern.com/jetpack-introduces-theme-installation-from-wordpress-com-sparks-controversy-with-alternative-marketplace-for-free-themes" target="_blank">opened up access to all of WordPress.com&#8217;s free themes via the Jetpack Manage interface</a>. All signs pointed to Automattic developing the infrastructure to offer commercial themes via Jetpack upgrades. At that time, however, Jetpack team member Richard Muscat said that Automattic had &#8220;no immediate plans to sell themes at this time.&#8221;</p>\n<p></p>\n<p>Yesterday those subscribed to the Jetpack Announcements email were notified that <a href="https://wordpress.com/professional-sites/" target="_blank">commercial themes have landed</a> in the <a href="https://jetpack.com/install/professional/" target="_blank">Jetpack Professional plan</a>, which is regularly priced at $24.92/month or $299/year. Customers will have unlimited access to more than 200 commercial themes that are already available on WordPress.com. Jetpack users on the free plan will see all the themes available in the WordPress.com theme browser with a prompt to upgrade for the ones that are commercial.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/jetpack-themes.png?ssl=1"><img /></a></p>\n<p>The announcement also noted that any themes users elect to use will be automatically backed up and regularly scanned for malware as part of the security services included in the package. For those who are running a multisite network, each site will need its own Jetpack Professional subscription to have access to the commercial themes.</p>\n<p>For years the WordPress community has speculated about what Automattic&#8217;s long game was for Jetpack, and many believed it was only a matter of time before the plugin started offering commercial upgrades. It was <a href="https://jetpack.com/2011/03/09/blast-off/" target="_blank">introduced to the WordPress world in 2011</a>  as a way to provide feature parity between WordPress.com and self-hosted sites. The first version included just eight modules, but fellow plugin developer and entrepreneurs in the community were immediately aware of its commercial potential.</p>\n<p>In 2016, Automattic CEO Matt Mullenweg <a href="https://wptavern.com/woocommerce-powers-42-of-all-online-stores" target="_blank">identified both Jetpack and WooCommerce as “multi-billion dollar opportunities”</a> that could each individually be larger than WordPress.com. The plugin is now active on more than 3 million WordPress sites. Automattic&#8217;s aggressive commercialization of Jetpack in the past two years is the fulfillment of initial predictions about where the plugin was headed.</p>\n<p>The new commercial themes offering significantly raises the value of the Jetpack Professional plan, which was previously targeted at business users who require unlimited storage, Google Analytics, and additional SEO features. With the addition of unlimited use of 200+ themes, Automattic has expanded the Professional plan to be more compelling for non-business users who are simply interested in gaining access to a collection of professionally-supported themes.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Jul 2017 21:46:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"BuddyPress: BuddyPress 2.9.0 Release Candidate 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=267012";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://buddypress.org/2017/07/buddypress-2-9-0-release-candidate-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2980:"<p>Today sees BP 2.9.0 move to The final testing phase <strong>Release Candidate 1</strong>.</p>\n<p>This is the last chance to test out this release and report back any issues found before final release in approximately two weeks time.</p>\n<p>Any issues found can be reported to our <a href="https://buddypress.trac.wordpress.org/newticket"> trac ticket home </a>, or raised on the support forum.</p>\n<p>Amongst other improvements and fixes to look out for are:</p>\n<ul>\n<li>Fixing display of older activity comments.</li>\n<li>Correction of message when removing friends that are not friends.</li>\n<li>Group invites &#8211; omit sending to previously invited members.</li>\n<li>Profile image upload fix for IE Edge breaksIOS fix.</li>\n<li>Correct issue with hidden group &amp; CSS specificity.</li>\n<li>URL compatibility for LightSpeed.</li>\n<li>Fix inability resizing of member avatar for cyrillic character filenames.</li>\n</ul>\n<p>For a full list of commits see <a href="https://buddypress.trac.wordpress.org/query?keywords=~&milestone=2.9&group=status&col=id&col=summary&col=keywords&col=owner&col=type&col=priority&col=component&col=version&order=priority">2.9 tickets</a> A full changelog will be available when we release the final version.</p>\n<p>You can download the plugin to test from the WP repo <a href="https://downloads.wordpress.org/plugin/buddypress.2.9.0-RC1.zip">BP 2.9.0-RC1</a> or grab a copy from our SVN repo.</p>\n<p>A reminder to all theme developers that there are changes to template markup that could effect layouts and ask that they check their themes carefully, the changes are listed below along with changelog links; again any issues or problems please report as soon as possible to the BP trac or slack channel.</p>\n<p><strong>Template changes</strong></p>\n<p>In this release there are a number of improvements to templates that add a level of improved a11y performance and markup changes for better semantics &amp; Standards.</p>\n<p>Theme authors may want to pay particular attention to changes to profile field visibility links and the profile field descriptions where significant markup changes are made that effect positioning of these elements &#8211; changesets for these are <a href="https://buddypress.trac.wordpress.org/changeset/11617">r11617</a> &amp; <a href="https://buddypress.trac.wordpress.org/changeset/11618">r11618</a></p>\n<p><strong>Nouveau &#8211; new template pack</strong></p>\n<p>If you&#8217;re looking for Nouveau as we mentioned in the beta2 announcement we have delayed the release of this new template pack to ensure it receives as much code checking &amp; refinement as possible and we&#8217;ll be looking to probably package this as it&#8217;s own release shortly after 2.9 is released.</p>\n<p>We thank you in advance for all testing and reports and it need not be mentioned but please don&#8217;t run Beta or RC releases in a production environment only on test installs.</p>\n<p>Regards,<br />\nThe BuddyPress team.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Jul 2017 12:57:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Hugo Ashmore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:102:"WPTavern: CoKinetic Systems Pursues $100 Million GPL License Violation Case Against Panasonic Avionics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72923";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:112:"https://wptavern.com/cokinetic-systems-pursues-100-million-gpl-license-violation-case-against-panasonic-avionics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7082:"<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/02/paper-plane.jpg?ssl=1"><img /></a>photo credit: <a href="http://www.flickr.com/photos/8176740@N05/5703519506">Paper Plane</a> &#8211; <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>\n<p>Open source software has made its way into nearly every industry, but a recent open source security and risk analysis shows <a href="https://wptavern.com/2017-open-source-security-and-risk-analysis-report-shows-widespread-gpl-license-conflicts" target="_blank">widespread license compliance risks</a>, with 75% of the audited applications including GPL license conflicts. Although most violations are unintentional, there are some cases where companies do not comply with the license in order to block competitors from developing similar software.</p>\n<p>GPL enforcement doesn&#8217;t often lead to litigation. When it does, most other avenues of resolving the complaint have already been exhausted. A lawsuit in the air transport industry is currently bringing more attention to the gravity of not complying with open source software licensing requirements.</p>\n<p><a href="http://www.cokinetic.com/" target="_blank">CoKinetic Systems</a>, a developer and manufacturer of in-flight entertainment (IFE) software, has <a href="https://www.unitedstatescourts.org/federal/nysd/470007/1-0.html" target="_blank">filed a case against Panasonic Avionics</a> that includes allegations of a fairly egregious breach of the GPL. The complaint alleges that Panasonic Avionics has monopolized the Panasonic IFE Software and Media Services Market by deliberately refusing to distribute the source code for its open-source Linux-based operating system:</p>\n<blockquote><p>More specifically, Panasonic has built the Linux-Based Panasonic Core Software using the open-source Linux kernel, which is clearly governed by the GPL, together with Panasonic’s own modified Linux modules, which are likewise governed by the GPL. </p>\n<p>Indeed, Panasonic has itself affirmatively identified its own modified modules as being subject to the GPL, because the original Linux modules were specifically designed to generate warning messages if other code is linked with or otherwise combined with the Linux modules that are not licensed under the GPL. To suppress these warnings, Panasonic willfully acted to insert code into its own modules to indicate that they were licensed under the GPL.</p>\n<p>Panasonic has incorporated a massive amount of open source modules, programs, and libraries into the Linux-Based Panasonic Core Software, without distributing notices or source code to the Linux-Based Panasonic Core Software, or even to any part of it&#8230;By deliberately refusing to distribute the source code to the Linux-Based Panasonic Core Software in accordance with its GPL obligations, Panasonic intentionally deprives competitors in the market from having the ability to develop software that can access the basic features and capabilities of Panasonic IFE Hardware.</p></blockquote>\n<p>CoKinetic Systems contends that Panasonic&#8217;s refusal to distribute its source code voids its GPL license and &#8220;potentially exposes Panasonic to billions of dollars in statutory damages for hundreds of thousands of hardware installations that willfully infringe copyrights belonging to hundreds or even thousands of software developers that freely contributed source code to Linux.&#8221;</p>\n<p>Furthermore, the complaint details how competitors have to rely on Panasonic&#8217;s APIs in order to offer software services to airlines using Panasonic&#8217;s IFE hardware, because they do not have access to the source code for the Linux-based core software. CoKinetic claims that Panasonic also deliberately blocks competitor products by its selective distribution of its APIs, resulting in stifled industry innovation and monopoly control over the Panasonic IFE Software and Media Services Market.</p>\n<p>Perhaps the worst and most grave allegation in the complaint is that, in addition to locking up the source code and doling out access to the APIs, Panasonic also maliciously sabotaged its own APIs in order to give the appearance that it is the only reliable software service provider for its hardware, which CoKinetic claims is inferior and sold at monopolistic prices.</p>\n<blockquote><p>Panasonic also is able to use its control over the Linux-Based Panasonic Core Software in order to make ongoing, undisclosed, and often malicious modifications to its source code, deliberately “breaking” Panasonic’s own APIs in order to purposely and maliciously sabotage the performance of third-party software products that Panasonic deems a competitive threat — particularly CoKinetic software.</p></blockquote>\n<p>In the introduction to the case, CoKinetic cites a litany of anti-competitive conduct the company has engaged in over the past decade before detailing the current allegations. The case is not purely an open source license dispute, as the plaintiff also alleges that Panasonic abused regulatory processes, engaged in acts of corporate espionage, defamed CoKinetic, paid commercial bribes, and employed unlawful means to monopolize the Panasonic IFE Software and Media Services Market.</p>\n<p>CoKinetic is seeking compensatory damages for Panasonic&#8217;s GPL ongoing GPL breaches. The specific amount would be determined at the trial but the company believes it to be in excess of $100 million. The company also wants the court to compel Panasonic to publicly disclose and distribute the source code.</p>\n<p>This isn&#8217;t a case where distributing the source code is just a small sticking point or just a matter of principle. It has the potential to open up the IFE industry for faster progress and greater innovation. Many reading this article have undoubtedly used Panasonic&#8217;s IFE products when flying with the company&#8217;s customers, which include Emirates Airlines, Delta Air Lines, Virgin America, and United Airlines. With the source code available, airline customers could remove Panasonic&#8217;s software from their IFE hardware and replace it with their own software solutions.</p>\n<p>The <a href="https://www.unitedstatescourts.org/federal/nysd/470007/1-0.html" target="_blank">complaint</a>, which was filed in the Southern District of New York in March, demands a jury trial. An initial pre-trial conference was held in May, but the case has been slow moving. The Court gave a deadline for the Defendant to file its motion to dismiss, but deadlines have since been extended. The Court also strongly recommended that the two parties retain a private mediator but it&#8217;s not clear how outside mediation could solve such a far-reaching matter that impacts so many vendors. <a href="https://www.pacermonitor.com/public/case/20747763/CoKinetic_Systems,_Corp_v_Panasonic_Avionics_Corporation" target="_blank">Additional documents</a> are due over the next few months, so it will be some time before there are updates on the progress of the case.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Jul 2017 04:39:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"WPTavern: AJ Morris Acquires iThemes Exchange";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73071";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wptavern.com/aj-morris-acquires-ithemes-exchange";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3545:"<p>In 2013, iThemes <a href="https://wptavern.com/ithemes-launches-e-commerce-plugin-exchange">released Exchange</a>, an e-commerce platform that aimed to make selling online as simple as possible. Today, the company <a href="https://ithemes.com/2017/07/13/ithemes-exchange-new-home-exchangewpcom/">announced</a> that AJ Morris, Product Manager at Liquid Web, has taken over the project.</p>\n<p>&#8220;When approached about taking over iThemes Exchange early this year, we wanted to be sure the project and our customers went into very competent hands, someone who will love and care for them as much as we do,&#8221; Cory Miller, founder of iThemes, said.</p>\n<p>&#8220;Having spent four and a half years investing in the project and in you and your success, we did not take this lightly.</p>\n<p>&#8220;After numerous conversations over the past several months, we believe the best home for Exchange is with ExchangeWP LLC led by AJ Morris.&#8221;</p>\n<p>Everything iThemes Exchange related will transition to <a href="https://exchangewp.com/">ExchangeWP.com</a>. Toolkit, Plugin Suite, Exchange Pro Pack, and iThemes Exchange Add-on customers will be given accounts for free support and upgrades through August 2018 at ExchangeWP.com.</p>\n<p>Beginning today, customers will no longer be able to purchase Exchange or its add-ons through iThemes as the company transfers licenses and products to ExchangeWP. However, iThemes will continue to provide customer support until the transition is completed, expected to happen in early August.</p>\n<p>Morris says he&#8217;ll continue to focus on making e-commerce simple and will provide regular updates to customers to provide insight into what goes into transition a product from one company to another and where the product is heading.</p>\n<p>&#8220;These days, it’s very easy to get WordPress up and running so you can start blogging,&#8221; Morris said. &#8220;But when you want to add e-commerce to the mix, it&#8217;s a bit different.&#8221;</p>\n<p>&#8220;With big players like WooCommerce out there, it becomes too much too quickly for the average content producer to get their store up and running.</p>\n<p>&#8220;Exchange is going to continue focusing on the independent publishers that want to keep the revenue they can, while providing a simplistic experience in an easy-to-use e-commerce plugin that will help get their stores online quickly.&#8221;</p>\n<p>Allowing Morris to take over the project frees up resources for iThemes to focus on three of its flagship products; BackupBuddy, iThemes Security, and iThemes Sync. In addition to their core products, the company says it will soon release a new project.</p>\n<p>&#8220;My job as CEO is to be a steward of the time and resources we have at iThemes in order to serve you best,&#8221; Miller said.</p>\n<p>&#8220;We’ve realized for a while that it was past time for us to refocus our finite resources on the projects that have the most growth and potential for our company and you.</p>\n<p>&#8220;That meant we either needed to find a new home for Exchange or sunset the project. I’m thankful we didn’t have to do the latter.&#8221;</p>\n<p><a href="https://ajmorris.me/">Morris</a> is a <a href="https://profiles.wordpress.org/ajmorris">long-time member</a> of the WordPress community and <a href="https://wordpress.tv/speakers/aj-morris/">has spoken</a> at several WordCamps. With Morris taking over the reigns, existing customers won&#8217;t have to worry about finding a replacement.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Jul 2017 01:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"Akismet: Akismet WordPress Plugin 3.3.3 Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1953";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://blog.akismet.com/2017/07/13/akismet-wordpress-plugin-3-3-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1413:"<p>Version 3.3.3 of <a href="http://wordpress.org/plugins/akismet/">the Akismet plugin for WordPress</a> is now available.</p>\n<p>For a full list of the changes in this release, see the <a href="https://plugins.trac.wordpress.org/log/akismet/trunk?action=stop_on_copy&mode=stop_on_copy&rev=1695995&stop_rev=1676206&limit=100&sfp_email=&sfph_mail=">revision log</a>, but here are some notable fixes:</p>\n<ul>\n<li>The number of spam blocked that is displayed on the WordPress dashboard will now be more accurate and updated more frequently.</li>\n<li>We fixed a bug in the Akismet widget that could cause PHP warnings.</li>\n<li>We&#8217;ve improved Akismet&#8217;s compatibility with other plugins by removing a workaround that only targeted very old versions of WordPress.</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1953/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1953/" /></a> <img alt="" border="0" src="https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1953&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 13 Jul 2017 22:00:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Christopher Finke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: WordPress.com Introduces Scheduling for Social Media Posts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73026";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/wordpress-com-introduces-scheduling-for-social-media-posts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2916:"<p>WordPress.com is venturing into the realm of social media management applications with its latest feature that allows users to <a href="https://en.blog.wordpress.com/2017/07/13/you-can-now-schedule-your-social-media-posts-from-wordpress-com/" target="_blank">schedule Facebook, Twitter, and LinkedIn updates for individual posts</a>. This goes beyond the basic <a href="https://jetpack.com/support/publicize/" target="_blank">Publicize</a> functionality that automatically shares posts to connected accounts as soon as they are published, giving users the ability to automate their content marketing to social networks for the most optimal time for sharing.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/schedule-sharing.png?ssl=1"><img /></a></p>\n<p>It&#8217;s difficult to know how a post will appear on social networks once it has automatically been shared, which is one reason why many people choose to manually share a post for the best presentation. You want to ensure that the right thumbnail will show up with a message customized for each network&#8217;s particular audience. The new social scheduling feature on WordPress.com includes a built-in preview screen so users can see what the post will look like once it is shared to the network and then make any necessary tweaks.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/social-sharing-previews.png?ssl=1"><img /></a></p>\n<p>Scheduling social media posts is available on WordPress.com for Premium and Business plan users and for Jetpack Professional and Premium users. On the Premium plan level, which comes in at ~$9/month, users pay less than they would for scheduling apps like Buffer, Hootsuite, or Sprout Social while also getting access to more commercial WordPress features.</p>\n<p>To truly become a realistic replacement for these types of social media marketing apps, WordPress.com would need to offer better analytics tied into the new sharing feature to show how posts are performing at different times and networks. Although WordPress.com allows for unlimited scheduling and users, it would also need to allow sharing to more networks to be more competitive against these apps. For users who don&#8217;t need all of that data but just want the scheduling feature, a paid Jetpack or WordPress.com plan is a more affordable option.</p>\n<p>Several other self-hosted WordPress plugins already <a href="https://wordpress.org/plugins/search/schedule+social+media/" target="_blank">offer scheduling social media posts</a> for free and some even integrate the social accounts with Google Analytics. The addition of this feature to Jetpack commercial plans may not be as compelling for self-hosted users who can already find this for free, but it adds value for existing Jetpack customers who may now be able to replace a plugin or third-party service.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 13 Jul 2017 19:59:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WPTavern: WPWeekly Episode 281 – In Memory of Jesse Petersen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=73045&preview=true&preview_id=73045";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/wpweekly-episode-281-in-memory-of-jesse-petersen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2501:"<p>In this episode, <a href="http://jjj.me/">John James Jacoby</a> and I are joined by <a href="https://www.wpsteward.com/">Ben Meredith</a>. Over the past few years, Ben has established a friendly and professional relationship with <a href="https://twitter.com/jpetersen">Jesse Petersen</a>, <a href="https://wptavern.com/jesse-petersen-founder-of-genesis-the-me-passes-away">who passed away</a> due to complications from Cystic Fibrosis.</p>\n<p>Ben shares his unique perspective on who Petersen was as a person and describes the challenges of taking over his business. We emphasized how important it is to create a file with passwords and other login information to help appointed people access a person&#8217;s digital presence. We also discuss if saying a person lost their battle with an illness is a negative thing to say.</p>\n<p>To close out the show, we talk about net neutrality, 10up acquiring Lift UX, and Let&#8217;s Encrypt offering wildcard certificates in 2018.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/automattic-releases-net-neutrality-wordpress-plugin-ahead-of-july-12-protest">Automattic Releases Net Neutrality WordPress Plugin Ahead of July 12 Protest</a><br />\n<a href="https://wptavern.com/10up-acquires-lift-ux">10up Acquires Lift UX</a><br />\n<a href="https://wptavern.com/lets-encrypt-passes-100-million-certificates-issued-will-offer-wildcard-certificates-in-january-2018">Let’s Encrypt Passes 100 Million Certificates Issued, Will Offer Wildcard Certificates in January 2018</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://www.newlungsfor.me/">Newlungsfor.me</a> is a place to read about Jesse’s battle with Cystic Fibrosis along with <a href="http://www.cffatboy.com/">CFfatboy.com</a>.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 19th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #281:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Jul 2017 22:00:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Sustain Event Draws 100 Attendees to Discuss the Sustainability of Open Source Software";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=73014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:108:"https://wptavern.com/sustain-event-draws-100-attendees-to-discuss-the-sustainability-of-open-source-software";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5136:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/sustain.png?ssl=1"><img /></a></p>\n<p>More than 100 open source project maintainers and industry leaders gathered at the GitHub headquarters in San Francisco last month to discuss the long-term sustainability of open source software. The <a href="https://sustainoss.org/" target="_blank">Sustain</a> event, put on by a relatively new organization called SustainOSS, did not follow a traditional conference format with talks and keynotes but was intentionally left unstructured to foster open discussion.</p>\n<p>Organizers expected 50 attendees but ended up with double their estimates. The $50 ticket price covered day care, travel assistance, food, and other miscellaneous event costs. Attendees shared insights from their diverse backgrounds and participated in collaborative working sessions and various discussions facilitated by organizers.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Defining a common unified theory of open source sustainability is super hard! <a href="https://twitter.com/hashtag/sustainoss?src=hash">#sustainoss</a> <a href="https://t.co/2PznN2oZGM">pic.twitter.com/2PznN2oZGM</a></p>\n<p>&mdash; Lou Huang (@saikofish) <a href="https://twitter.com/saikofish/status/876863604670304257">June 19, 2017</a></p></blockquote>\n<p></p>\n<p>Co-organizer Alanna Irving shared in her <a href="https://medium.com/open-collective/we-gathered-100-open-source-sustainers-c24f571447a4" target="_blank">wrap-up post</a> how the team <a href="https://opencollective.com/sustainoss" target="_blank">used Open Collective</a> to make the event&#8217;s finances transparent and offer payment options for participants and sponsors. The service has recently added a new feature that allows collectives to communicate event info and sell tickets.</p>\n<p>Representatives from large tech companies attended the event, as well as contributors from various open source projects and foundations, including Google, Amazon, Paypal, Airbnb, Red Hat, JS Foundation, Linux Foundation, Apache Foundation, npm, FontAwesome, GulpJS, and more. Irving published a few insights from the discucssions that she and her colleagues are applying to their work at Open Collective:</p>\n<ul>\n<li>Introducing money in open source is less controversial than we thought. The main issues are related to how.</li>\n<li>The coder role is only one among many equally important roles: community builder (for onboarding and creating a healthy ecosystem), documentation writer, fundraiser, and public advocate.</li>\n<li>Companies want to support open source communities. This is now more clear than ever.</li>\n<li>It’s easier for some companies to make in-kind donations rather than cash. We’re working on making this easier, and will share more about it soon.</li>\n<li>Projects that companies publicly support need to have accountability and respect codes of conduct, in order to avoid PR nightmares.</li>\n</ul>\n<p>On the day following the event, SustainOSS organizers tweeted out a link to <a href="https://github.com/sustainers/discussions" target="_blank">a new forum on GitHub for discussing open source sustainability</a>. Proposed topics include fundraising, governance, contributor retention, productivity, and managing corporate relationships. It was created to offer a safe place for open source sustainers to collaborate with each other in the open and contributors have already submitted some practical ideas for discussion, such as <a href="https://github.com/sustainers/discussions/issues/4" target="_blank">adding a standardized FUNDING or SUSTAINABILITY file to repositories</a>.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Busy day, got a lot done. Stay tuned. <a href="https://twitter.com/hashtag/sustainoss?src=hash">#sustainoss</a> <a href="https://twitter.com/hashtag/sustain17?src=hash">#sustain17</a> <a href="https://t.co/CtWs82FXAn">pic.twitter.com/CtWs82FXAn</a></p>\n<p>&mdash; SustainOSS (@SustainOSS) <a href="https://twitter.com/SustainOSS/status/876996636391559169">June 20, 2017</a></p></blockquote>\n<p></p>\n<p>Sustain was inspired by inspired by the <a href="https://maintainerati.org/" target="_blank">Maintainerati</a> event held in London in May 2017. The similarly unstructured event brought together open source maintainers who share similar challenges. GitHub also hosted the <a href="https://events.chef.io/events/wontfix-cabal/" target="_blank">Wontfix Cabal</a> event at its San Francisco headquarters in February, which highlighted some of the difficulties related to maintaining OSS projects. Events focused on maintaining and funding OSS have been popping up in the past two years, as more people become aware that open source infrastructure has a critical sustainability problem.</p>\n<p>The SustainOSS organizers will be releasing a more detailed article on the event soon. They are also open to considering hosting other Sustain events in different locations. Follow <a href="https://twitter.com/SustainOSS" target="_blank">@SustainOSS</a> on Twitter for the latest updates.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Jul 2017 20:38:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"HeroPress: How I found myself in WordPress – Как я нашел себя в WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1962";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:128:"https://heropress.com/essays/i-found-myself-in-wordpress/?utm_source=rss&utm_medium=rss&utm_campaign=i-found-myself-in-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22562:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2018/07/071217-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: WordPress remains the place where you can find yourself, and help make life a little better." /><p><a href="http://heropress.com/feed/#russian">Это эссе также доступно на русском языке.</a></p>\n<h3>About Russia and familiarity with technologies</h3>\n<p>Russia is a very large and very different country. The basic population, as well as technological development, is concentrated in the central part of the country, in &#8220;city-states&#8221;: Moscow and St. Petersburg. Other regions are much less developed: lower wages, worse and more expensive infrastructure, fewer IT-vacancies and activities.</p>\n<p>I was born and grew up in a remote part of Russia &#8211; in the Far East, in one of the industrial cities, which is located in 7 time zones and 9000 kilometers from Moscow. The Internet, like other technologies, reached there with a significant delay and for a lot of money (unlimited Internet at a speed of 64 kb/s appeared only in 2007), Therefore, at first, the basics of site building had to be learned in snatches with the help of dial-up.</p>\n<p>The first site I did in school. It was built using simple HTML and CSS. But even in this form, it was very impressive and exciting. Then such sites were popular and periodically on the Internet I <a href="http://softphoenix.narod.ru/about.htm">met guys</a> of my age who like me comprehended the science of site building.<br />\nI was lucky to find a like-minded person, with whom we were able to develop together for some time and even launch a joint website.<br />\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img1-min.png"><img class="aligncenter wp-image-1963 size-full" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img1-min.png" alt="" width="962" height="637" /></a></p>\n<h3>University and start of work</h3>\n<p>Admission to the computer faculty of the university allowed to more specifically address the issues of web development: to learn PHP and MySQL, to get acquainted with a couple of CMS and to make <a href="http://web.archive.org/web/20100207131804/http://www.compnot.ru:80/">my first blog</a> on WordPress :). As far as I remember, the blog worked on some WordPress assembly using version 2.9. If you count from that moment, it turns out that I somehow have been working with WordPress for almost 8 years.</p>\n<p>In those days, <a href="http://ru.wordpress.org">ru.wordpress.org</a> was just born and there was no main site on the Russian-language Internet. It was a time of amateur assemblies, amateur translations and even <a href="http://book.max-3000.com/page/istorija-sozdanija">alternatives of WordPress</a>, aimed to the Russian segment of the Internet.</p>\n<p>By the will of fate, my first place of work related to website development was the web studio that used Joomla and Drupal. Then there were a few more places of work, during which time WordPress then turned into the main working tool, then returned to the category of extra work and hobbies.</p>\n<p>The turning point was the decision to move to Moscow and a full transition to WordPress in freelance format.</p>\n<h3>Moving to Moscow</h3>\n<p>The scenario of moving to Moscow or St. Petersburg is quite popular among IT specialists of my native region. This is a great chance to find interesting and highly paid job, get acquainted with a lot of IT specialists, including narrow ones, and develop in the area of interest.</p>\n<p>In Moscow, I moved with remote work and I do not have personal experience of employment in this city, but my wife and most of the acquaintances were satisfied with the options found.</p>\n<p>After about six months of living in Moscow, I was even more thirsty for adventure — to become a freelancer and completely concentrate on WordPress. The ability to plan time independently gives additional space for maneuvers and time for reflection. In my case, this led to an increase in activity in the WordPress community.</p>\n<h3>Participate in the WordPress community</h3>\n<p>Actively participate in the life of the community, I started about 1.5 years ago. Initially, these were the replies at the support forum, then the development of my plugins, after which I decided to try myself in translating the extensions into Russian and recording training videos for Russian-speaking users.</p>\n<p>Over time, it turned into a kind of hobby or even a way of life. Every day I read a lot of posts from users on the support forums and try to help resolve their issues, check and correct the added translation lines, periodically record and post training videos.</p>\n<p>Communication with users is very helpful. You are one of the first to learn about the problems and ways to solve them, you can quickly correct some incorrect or incorrect translation. Also, over time, a list of popular questions accumulates, which can be turned into training articles and videos. In turn, the creation of articles and videos helps to structure knowledge and understand the details.</p>\n<p>On <a href="http://ru.wordpress.org">ru.wordpress.org</a> a great team of moderators and translation editors has gathered. We regularly communicate in Slack, some I meet on WordCamp.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img2-min-1.jpg"><img class="aligncenter size-large wp-image-1967" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img2-min-1-1024x768.jpg" alt="Denis and Sergey" width="960" height="720" /></a></p>\n<p>In November 2016 I took part in the Global Day of Translation 2. It was an unusual experience: broadcasting from around the world, feeling the scale of what was happening and the excitement of the translation. At that time we took 6th place as the most active locale and attracted 7 new translators.</p>\n<h3>Meetups and WordCamp</h3>\n<p>In Russia there are not so many cities where WordPress-meetups are held, and WordCamp is held only in Moscow. But despite all this, these events are a great opportunity to be among WordPress lovers, to see live people with whom I have only spoken on the network before, and just feel the spirit of WordPress :).</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img3-min.jpg"><img class="aligncenter wp-image-1968 size-full" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img3-min.jpg" alt="Three big cheery guys at WordCamp" width="1000" height="667" /></a></p>\n<p>This year I plan to visit WordCamp Moscow for the third time. I visit WordCamp as a participant, but I hope someday I will find a topic close to me and I will decide to apply for a presentation :). I think it will be interesting.</p>\n<h3>Conclusion</h3>\n<p>At the moment I&#8217;m a full-time freelancer. This allows me to quite well combine work and activities in the community. I like to <a href="https://www.youtube.com/channel/UCLkgL32ycnfl1hs0nJJD6Og">share knowledge</a> and make WordPress more accessible for Russian users.</p>\n<p>Many resources of WordPress are dominated by English, and some, for example, as <a href="https://developer.wordpress.org/">developer.wordpress.org</a> or &#8220;Handbook&#8221; are not available for localization. I hope, in the future this will change and we will be able to expand our activities.</p>\n<p>In any case, WordPress remains the place where you can find yourself and help make life a little better for yourself and the rest of the participants.</p>\n<hr />\n<h1 id="russian">Как я нашел себя в WordPress</h1>\n<h3>Про Россию и знакомство с технологиями</h3>\n<p>Россия очень большая и очень разная страна. Основное население, как и технологическое развитие, сосредоточено в центральной части страны, в &#8220;городах-государствах&#8221;: Москве и Санкт-Петербурге. Остальные регионы развиты значительно слабее: ниже зарплаты, хуже и дороже инфраструктура, меньшее количество IT-вакансий и мероприятий.</p>\n<p>Я родился и вырос в отдаленной части России — на Дальнем Востоке, в одном из промышленных городов, который расположен в 7 часовых поясах и 9000 километров от Москвы. Интернет, как и другие технологии, доходили туда с существенным опозданием и за большие деньги (безлимитный интернет на скорости 64 кб/сек появился только в 2007 году), поэтому, по началу, азы сайтостроения приходилось познавать урывками с помощью dial-up.</p>\n<p>Первый сайт я сделал ещё в школе. Он был построен на простейшем HTML и CSS. Но даже в таком виде, это было очень впечатляюще и захватывающе. Тогда такие сайты были популярны и, периодически на просторах интернета, я <a href="http://softphoenix.narod.ru/about.htm">встречал ребят</a> моего возраста, которые, как и я, постигали науку сайтостроения.</p>\n<p>Мне повезло найти единомышленника, с которым мы смогли некоторое время вместе развиваться и даже запустить совместный сайт.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img1-min.png"><img class="aligncenter size-full wp-image-1963" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img1-min.png" alt="Very old style web site." width="962" height="637" /></a></p>\n<h3>Университет и начало работы</h3>\n<p>Поступление на компьютерный факультет университета позволило более предметно заняться вопросами веб-разработки: изучить PHP и MySQL, познакомиться с парой CMS и завести <a href="http://web.archive.org/web/20100207131804/http://www.compnot.ru:80/">свой первый блог</a> на WordPress :). Насколько я помню, блог работал на какой-то сборке WordPress, использующей версию 2.9. Если вести отсчет с того момента, то получается, что я так или иначе работаю с WordPress уже почти 8 лет.</p>\n<p>В те времена <a href="http://ru.wordpress.org/">ru.wordpress.org</a> только зарождался и в русскоязычном интернете не было какой-то основной площадки. Это было время любительских сборок, любительских переводов и даже <a href="http://book.max-3000.com/page/istorija-sozdanija">альтернатив WordPress</a>, ориентированных на русский сегмент интернета.</p>\n<p>Волею судеб, моим первым местом работы, связанным с разработкой сайтов, стала веб-студия, использовавшая Joomla и Drupal. Затем было ещё несколько мест работы, в течение которых WordPress то превращалась в основной рабочий инструмент, то возвращалась в разряд дополнительной работы и хобби.</p>\n<p>Переломным моментом стало решение о переезде в Москву и полный переход на WordPress в фриланс-формате.</p>\n<h3>Переезд в Москву</h3>\n<p>Сценарий переезда в Москву или Санкт-Петербург достаточно популярен среди IT-специалистов моего родного региона. Это отличный шанс найти интересную и высокооплачиваемую работу, познакомится со множеством IT-специалистов, в том числе узких, и развиться в интересующей области.</p>\n<p>В Москву я переезжал вместе с удаленной работой и у меня нет личного опыта трудоустройства в этом городе, но моя жена и большинство знакомых остались довольны найденными вариантами.</p>\n<p>Примерно через полгода проживания в Москве, меня обуздала ещё большая жажда приключений — стать фрилансером и полностью сосредоточиться на WordPress. Возможность самостоятельно планировать время дает дополнительное пространство для маневров и время на размышления. В моем случае, это привело к увеличению активности в сообществе WordPress.</p>\n<h3>Участие в сообществе WordPress</h3>\n<p>Активно участвовать в жизни сообщества я начал примерно 1.5 года назад. Вначале это были ответы на форуме поддержки, затем разработка своих плагинов, после чего я решил попробовать себя в переводе расширений на русский язык и записи обучающих видео для русскоязычных пользователей.</p>\n<p>Со временем это превратилось в некое хобби или даже образ жизни. Каждый день я читаю множество сообщений от пользователей на форумах поддержки и пытаюсь помочь решить их вопросы, проверяю и корректирую добавленные строки перевода, периодически записываю и выкладываю обучающие ролики.</p>\n<p>Общение с пользователями очень помогает. Ты одним из первых узнаешь о проблемах и способах их решения, можешь оперативно исправить какой-то неверный или некорректный перевод. Также, со временем накапливается список популярных вопросов, которые можно превращать в обучающие статьи и ролики. В свою очередь, создание статей и видео помогает структурировать знания и разобраться в деталях.</p>\n<p>На <a href="http://ru.wordpress.org/">ru.wordpress.org</a> собралась отличная команда модераторов и редакторов переводов. Мы регулярно общаемся в Slack, некоторых я встречаю на WordCamp.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img2-min-1.jpg"><img class="aligncenter size-large wp-image-1967" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img2-min-1-1024x768.jpg" alt="Denis and Sergey" width="960" height="720" /></a></p>\n<p>В ноябре 2016 я принимал участвовали в Глобальном дне перевода 2. Это был необычный опыт: трансляции со всего света, ощущение масштабности происходящего и азарта перевода. В тот раз мы заняли 6 место как самый активный язык и привлекли 7 новых переводчиков.</p>\n<h3>Митапы и WordCamp</h3>\n<p>В России не так много городов, где проводятся WordPress-митапы, а WordCamp проводится только в Москве. Но не смотря на всё это, данные мероприятия — отличная возможность побыть среди любителей WordPress, увидеть в живую людей, с которыми до этого общался только по сети, и просто почувствовать дух WordPress :).</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img3-min.jpg"><img class="aligncenter size-full wp-image-1968" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/img3-min.jpg" alt="" width="1000" height="667" /></a></p>\n<p>В этом году я планирую посетить WordCamp Moscow в третий раз. Я посещаю WordCamp как участник, но надеюсь когда-нибудь найду близкую мне тему и решусь подать заявку на выступление :). Я думаю, это будет интересно.</p>\n<h3>Заключение</h3>\n<p>На данный момент я — фул-тайм фрилансер. Это позволяет мне достаточно неплохо совмещать работу и деятельность в сообществе. Мне нравится <a href="https://www.youtube.com/channel/UCLkgL32ycnfl1hs0nJJD6Og">делиться знаниями</a> и делать WordPress доступнее для русскоязычных пользователей</p>\n<p>На многих ресурсах WordPress преобладает английский язык, а некоторые, например, как <a href="https://developer.wordpress.org/">developer.wordpress.org/</a> или &#8220;Handbook&#8221; вовсе недоступны для локализации. Надеюсь, в будущем это изменится и мы сможем расширить свою деятельность.</p>\n<p>В любом случае, WordPress остается тем местом, где можно найти себя и помочь сделать его чуточку лучше для себя и остальных участников.</p>\n<h2>участник</h2>\n<p><img class="alignleft size-medium wp-image-1961" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/photo-min-300x300.jpg" alt="Denis Yanchevskiy" width="300" height="300" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3>Денис Янчевский</h3>\n<ul>\n<li><a href="http://denisco.pro/">http://denisco.pro</a></li>\n<li><a href="http://twitter.com/dyanchevskiy">@dyanchevskiy</a></li>\n<li><a href="http://wordpress.tv/speakers/denisco/">WordPress.tv</a></li>\n<li><a href="http://profiles.wordpress.org/denisco/">WordPress.org Profile</a></li>\n</ul>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: How I found myself in WordPress &#8211; Как я нашел себя в WordPress" class="rtsocial-twitter-button" href="https://twitter.com/share?text=How%20I%20found%20myself%20in%20WordPress%20%2D%20%D0%9A%D0%B0%D0%BA%20%D1%8F%20%D0%BD%D0%B0%D1%88%D0%B5%D0%BB%20%D1%81%D0%B5%D0%B1%D1%8F%20%D0%B2%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fi-found-myself-in-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: How I found myself in WordPress &#8211; Как я нашел себя в WordPress" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fi-found-myself-in-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fi-found-myself-in-wordpress%2F&title=How+I+found+myself+in+WordPress+%26%238211%3B+%D0%9A%D0%B0%D0%BA+%D1%8F+%D0%BD%D0%B0%D1%88%D0%B5%D0%BB+%D1%81%D0%B5%D0%B1%D1%8F+%D0%B2+WordPress" rel="nofollow" target="_blank" title="Share: How I found myself in WordPress &#8211; Как я нашел себя в WordPress"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/i-found-myself-in-wordpress/&media=https://heropress.com/wp-content/uploads/2018/07/071217-150x150.jpg&description=How I found myself in WordPress - Как я нашел себя в WordPress" rel="nofollow" target="_blank" title="Pin: How I found myself in WordPress &#8211; Как я нашел себя в WordPress"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/i-found-myself-in-wordpress/" title="How I found myself in WordPress &#8211; Как я нашел себя в WordPress"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/i-found-myself-in-wordpress/">How I found myself in WordPress &#8211; Как я нашел себя в WordPress</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Jul 2017 12:00:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Denis Yanchevskiy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"WPTavern: Automattic Releases Net Neutrality WordPress Plugin Ahead of July 12 Protest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72930";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wptavern.com/automattic-releases-net-neutrality-wordpress-plugin-ahead-of-july-12-protest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2074:"<p>Automattic <a href="https://en.blog.wordpress.com/2017/07/11/join-us-in-the-fight-for-net-neutrality/" target="_blank">announced</a> its intent to protest the FCC&#8217;s attack on net neutrality today by making a way for the millions of WordPress.com users to join in. The company&#8217;s logo has been listed on the <a href="https://www.battleforthenet.com/july12/" target="_blank">Save Net Neutrality</a> event website for some time but it had yet to announce how it would be participating. WordPress.com users are encouraged to send a message to the FCC and also enable the Fight for Net Neutrality Plugin via the dashboard Settings screen.</p>\n<p>The plugin is open source and <a href="https://wordpress.org/plugins/net-neutrality/" target="_blank">available to self-hosted users on WordPress.org</a>. Unlike the existing plugins that support the event on July 12 by presenting visitors with a banner to raise awareness, Automattic&#8217;s plugin simulates what life might be like in the &#8220;slow lane&#8221; if the FCC abandons the principle of net neutrality. It replaces a few of the posts on your site with a “Still Loading” spinner. This plugin doesn&#8217;t seem to offer a way to test it ahead of the event, but it essentially displays a message at the bottom of your website and slows down some of your posts.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/net-neutrality-plugin.png?ssl=1"><img /></a></p>\n<p>The plugin will automatically be disabled after the event has concluded, so both WordPress.com and self-hosted users do not have to worry about turning it off and can remove it later. If you are uneasy about slowing down some of your posts as part of the protest and feel more comfortable displaying a modal or a widget, check out the <a href="https://wordpress.org/plugins/cat-signal/" target="_blank">Internet Defense League Cat Signal</a> or the <a href="https://wordpress.org/plugins/fftf-alerts/" target="_blank">Fight for the Future Alerts</a> plugins as alternatives.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Jul 2017 05:07:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: VersionPress 4.0 Beta Adds User-Editable Location for Plugin Definitions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72939";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wptavern.com/versionpress-4-0-beta-adds-user-editable-location-for-plugin-definitions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2944:"<p><a href="https://github.com/versionpress/versionpress/releases/tag/4.0-beta">VersionPress 4.0 beta</a> is available for testing. It includes a number of improvements, most notably, the ability to load plugin definitions from a user-defined location within the wp-content directory.</p>\n<p><a href="https://github.com/versionpress/versionpress/blob/aba96d3f63bc5d84d49019bffa47252f87734288/docs/Plugin-Support.md">Plugin definitions</a> are files used to understand data, actions, shortcodes, and other things plugins do in order to automatically provide version control for them.</p>\n<p>According to Borek Bernard, co-founder of VersionPress:</p>\n<blockquote><p>If you create a folder WP_CONTENT_DIR/.versionpress/plugins/woocommerce and put <a href="https://github.com/versionpress/versionpress/blob/aba96d3f63bc5d84d49019bffa47252f87734288/docs/Plugin-Support.md">definition files</a> like schema.yml or actions.yml there, VersionPress will use and actually prefer it over the bundled definitions if they exist.</p></blockquote>\n<img />User Defined Location of Plugin Definition File\n<p>Support for WooCommerce and Jetpack are included in 4.0 Beta 1. VersionPress will automatically detect the definition file as long as each plugin has a .versionpress folder in it.</p>\n<p>With the release of 4.0 Beta, Bernard says a <a href="https://github.com/versionpress/versionpress/issues/1243">repository</a> containing plugin definitions is next on the list and is encouraging plugin authors to contribute to the project.</p>\n<p>&#8220;The final step is to have an online repository of the definitions,&#8221; Bernard said. &#8220;It will be open to anyone to contribute, not just plugin authors, and used by VersionPress transparently.&#8221;</p>\n<p>For insight on how to create definitions, developers can look at <a href="https://github.com/versionpress/versionpress/tree/aba96d3f63bc5d84d49019bffa47252f87734288/plugins/versionpress/.versionpress">WordPress core</a> and <a href="https://github.com/pavelevap/versionpress-for-woocommerce">WooCommerce</a> for real-world examples.</p>\n<p>Other major changes include full support for WordPress 4.7 and 4.8, adoption of <a href="https://github.com/versionpress/versionpress/projects/2">GitHub projects</a> to help manage the development process, and <a href="https://github.com/versionpress/versionpress/issues?q=project%3Aversionpress%2Fversionpress%2F2+sort%3Acreated-desc+label%3Abug">a number of bugs fixed</a>.</p>\n<p>Developers and users can download <a href="https://github.com/versionpress/versionpress/releases/tag/4.0-beta">4.0 Beta</a> from GitHub. Users are encouraged to test the plugin in a staging environment as it&#8217;s not ready to be used on live sites. If you encounter an error, you can report it by creating a new <a href="https://github.com/versionpress/versionpress/issues">Issue request</a> on the project&#8217;s GitHub page.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Jul 2017 04:26:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WPTavern: 10up Acquires Lift UX";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72917";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wptavern.com/10up-acquires-lift-ux";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4294:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/07/10up-logo.png?ssl=1"><img /></a></p>\n<p>10up, a leading WordPress design and development agency, has <a href="https://10up.com/blog/2017/10up-acquires-lift-ux/" target="_blank">acquired Lift UX</a>, a smaller user experience design-driven agency that will bolster the company&#8217;s existing Experience design team. Lift founders Chris Wallace and Brad Miller will join 10up&#8217;s 120+ person distributed team, along with Lift&#8217;s director of technology, Christian Chung, and front-end developer Anthony Garand.</p>\n<p>10up is acquiring the Lift UX brand, hiring four team members, and will also take possession of <a href="https://remotejobs.com/" target="_blank">RemoteJobs.com</a>, which will continue operating independently as a remote job board. The Lift UX brand will be dissolved and clients and projects are in the process of transitioning over to 10up.</p>\n<p>&#8220;We were always looking for agencies to partner with and when I reached out to 10up I was looking to build a relationship to help work on UX design projects,&#8221; Miller said. &#8220;10up has a strong engineering background and I felt like having them as a partner would be huge for our agency. Jake and I quickly realized that Lift UX and 10up had so many similar processes that it sounded like our two companies were the same but just different in size.&#8221;</p>\n<p>With similar expertise serving large clients in the WordPress space, the two companies were bound to end up competing on different projects, which happened during the course of their conversations spanning a year leading up to the deal. Miller said 10up founder Jake Goldman proposed a merger/acquisition type of approach.</p>\n<p>&#8220;I ended up speaking to them off and on for the next couple of weeks and things got pretty serious when we were competing for some projects,&#8221; Miller said. &#8220;I was of course flattered by the offer. Jake and John were awesome. We enjoyed our conversations and decided to do an onsite to discuss things in more detail. They made an offer after our onsite and Chris and I decided to accept it.&#8221;</p>\n<p>In 10up&#8217;s announcement, Goldman said it &#8220;takes a special kind of chemistry and alignment for a deal like this to work.&#8221; The company&#8217;s acquisition of Lift is one of the biggest design-driven acquisitions in the WordPress ecosystem in awhile.</p>\n<p>&#8220;Adding more experience design expertise to our company DNA enhances our empathy and ability to collaborate with design partners in an era of interactive, responsive design where divisions between &#8216;design&#8217; and &#8216;engineering&#8217; have eroded,&#8221; Goldman said.</p>\n<p>Miller, who has worked with Wallace to build Lift into a top-notch design and user experience agency, said that securing design talent is a challenge in the industry. 10up adding a fellow competitor to its team is a stretegic move when design talent is in short supply.</p>\n<p>&#8220;I think it&#8217;s certainly hard to find quality talent that&#8217;s interested in a full time position,&#8221; Miller said. &#8220;There are some amazing designers out there but a lot of them are contractors/freelancers. 10up wanted to find a team that had a big focus on quality design and UX. It didn&#8217;t hurt that we were big on WordPress either.&#8221;</p>\n<p>Miller and Wallace founded Lift UX in 2009 and will be closing out a chapter of their entrepreneurial lives as the brand dissolves into 10up.</p>\n<p>&#8220;Basically we&#8217;ll fade into the 10up brand bringing along our team, portfolio, accolades, and ultimately our personality,&#8221; Miller said.</p>\n<p>Wallace said closing out this chapter is &#8220;definitely bittersweet,&#8221; but the team is excited to transition into 10up.</p>\n<p>&#8220;As a 6-7 person agency, we were all constantly being pulled in a million different directions,&#8221; Wallace said. &#8220;Joining 10up allows us to focus on our individual areas of specialization and excel in each. I love many aspects of entrepreneurship and small agency ownership but the idea of focusing on the success of the experience design team at 10up is something I am looking forward to.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 11 Jul 2017 22:02:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Donncha: Thank you Translators!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"https://odd.blog/?p=89500320";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"https://odd.blog/2017/07/11/thank-you-translators/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1384:"<p>Well, well. <a href="https://translate.wordpress.org/projects/wp-plugins/wp-super-cache">WP Super Cache translations</a> are coming along well. 100% of strings in the development version are translated into Canadian English and Romanian! (That might change over the next few days as I have a couple of UI changes in mind, sorry!)</p>\n<p>Other languages like Persian, Japanese, Spanish, Russian and Italian are roaring along and sometimes only need a handful of words or sentences translated to hit that magic 100% too. The next version of the plugin will grab translations from WordPress.org if they&#8217;re available which is awesome for users around the world. We&#8217;re still shipping translation files but I think the release after that may ship without and rely entirely on the up-to-date online translations.</p>\n<p>So, thank you so much to the translators. Code is nigh on useless if the user and developer don&#8217;t speak the same language and the interface is incomprehensible. WP Super Cache has lots of technical language which must be a pain to translate. Your work is invaluable!</p>\n<p>Mulțumesc! متشکرم! ありがとうございました！¡Gracias! Спасибо! Grazie! Hvala ti! 谢谢！Vielen Dank!</p>\n\n<p><strong>Related Posts</strong><ul><li> No related posts</li></ul></p>\n<p><a href="https://odd.blog/" rel="external nofollow">Source</a></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 11 Jul 2017 10:44:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Donncha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: Interview with WordCamp US 2017 Organizers Dustin Meza and Laura Byrne-Cristiano";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=72903&preview=true&preview_id=72903";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"https://wptavern.com/interview-with-wordcamp-us-2017-organizers-dustin-meza-and-laura-byrne-cristiano";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2252:"<p>While at WordCamp Europe I had the opportunity to interview <a href="https://twitter.com/dustinmeza">Dustin Meza</a>, lead organizer of <a href="https://2017.us.wordcamp.org/">WordCamp US 2017</a>, and <a href="https://twitter.com/newyorkerlaura">Laura Byrne-Cristiano</a>, who is part of the marketing team for the event. The two are members of a 20-person team of organizers who will welcome an estimated 2,500 attendees to Nashville in December.</p>\n<p>Although the maximum capacity of the <a href="http://www.nashvillemusiccitycenter.com/">Music City Center</a> venue is much higher than what is required by WordCamp US, the organizers want to make judicious use of the event&#x27;s resources to put on the best possible event for those who make the effort to attend.</p>\n<p>"At the end of the day, it&#x27;s going to be the right size for the event," Byrne-Cristiano said. "You could say, &#x27;Hey, we want 10,000 people, but that&#x27;s not the right size for the event. The right size is probably somewhere between 2,000 and 2,500. The venue can do more than that, but I don&#x27;t know that that&#x27;s the main goal. Bigger isn&#x27;t always better. Your main goal is the best event and quality for the people who are already there."</p>\n<p>Meza said he considers WordCamp US to be the premier event for North America and that it is there to represent the communities located in this area. He couldn&#x27;t share the full details of the unique things they are working on, but organizers plan to display and exhibit more information about the the various WordPress communities throughout North America.</p>\n<p>In the interview below, Meza and Byrne-Cristiano share a little bit about why they believe Nashville was selected and how welcoming the city is for people from different cultures. </p>\n<p>"No matter where in the world you are coming from, there&#x27;s a place for you at WordCamp US," Byrne-Cristiano said.</p>\n<p>"This is, by far, the best technology community I have ever been apart of, seeing how much everyone involved embraces new people &#8211; to me that is the big reason why I got involved," Meza said. "I want to give this community the best event that we possibly can."</p>\n<p></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 11 Jul 2017 02:16:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WPTavern: WPCampus 2017 Will Be Streamed Live for Free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72896";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wptavern.com/wpcampus-2017-will-be-streamed-live-for-free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1020:"<p><a href="https://2017.wpcampus.org/">WPCampus</a>, a conference focused on using WordPress in higher education, takes place this Friday and Saturday in Buffalo, NY. If you&#8217;re unable to attend the event, WPCampus will be <a href="https://2017.wpcampus.org/watch/">live streaming the sessions</a> for free.</p>\n<p>Visit the <a href="https://2017.wpcampus.org/watch/">streaming page</a> on July 14th and 15th where viewers can choose between <a href="https://2017.wpcampus.org/schedule/">three tracks of sessions</a> to watch. Viewers can also hang out in the <a href="https://wordcampus.slack.com/messages/C65Q1LHB9/">#discuss-wpc17</a> Slack <a href="https://wpcampus.org/get-involved/">channel</a> to discuss sessions with other people.</p>\n<p>Organizers are encouraging viewers to have watch parties at WordPress meetups and campuses. Sessions will be recorded and made available online at the end of the event. The stream starts on Friday, July 14th at 9 AM Eastern.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Jul 2017 21:49:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WPTavern: Episodes 271-280 of WordPress Weekly are Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72884";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wptavern.com/episodes-271-280-of-wordpress-weekly-are-now-available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1011:"<p>In the past two weeks, listeners have reported that recent episodes of <a href="https://wptavern.com/wordpress-weekly">WordPress Weekly</a> are not available for download through Apple&#8217;s Podcasting app, Stitcher, and other applications.</p>\n<img />Podcast Download Error\n<p>I use <a href="http://vid2mp3.com/">Vid2MP3</a> to convert YouTube videos into MP3 files. Starting with episode 271, there was an error in the conversion process. It was difficult to diagnose since the MP3 played fine in some browsers and applications but not in others.</p>\n<p>I have reconverted the affected episodes using a different service and uploaded the new files to the site. I confirmed that the episodes are accessible in Apple&#8217;s Podcasting application. If you still encounter a problem downloading these episodes, please leave a note in the comments along with which podcasting app you&#8217;re using. Thanks to all who reported the error and for listening to the show.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Jul 2017 20:19:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:131:"WPTavern: Automattic Joins Amazon, GitHub, Mozilla, reddit, and Twitter in July 12 Protest Against FCC’s Attack on Net Neutrality";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72799";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:135:"https://wptavern.com/automattic-joins-amazon-github-mozilla-reddit-and-twitter-in-july-12-protest-against-fccs-attack-on-net-neutrality";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3713:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/day-of-action-banner.png?ssl=1"><img /></a></p>\n<p>Major internet websites, companies, and organizations are banding together on Wednesday, July 12, to <a href="https://www.battleforthenet.com/july12/" target="_blank">protest the FCC&#8217;s attack on net neutrality</a>. These include Amazon, GitHub, Kickstarter, Vimeo, reddit, Mozilla, Twitter, Etsy, Spotify, Netflix, and many others. Automattic is joining these tech companies in the protest, as it has several times in the past, including the <a href="https://en.blog.wordpress.com/2014/09/09/fight-for-net-neutrality/" target="_blank">Internet Slowdown event in September 2014</a>. The company also <a href="https://transparency.automattic.com/2015/09/21/defending-net-neutrality/" target="_blank">reaffirmed its commitment to net neutrality in 2015</a> by filing an amicus brief with the Court of Appeals for the DC Circuit in the case of United States Telecom Assn. v. FCC, joined by Medium, Reddit, Squarespace, Twitter, and Yelp.</p>\n<p>Net neutrality is the principle that ensures people can communicate freely online by prohibiting Internet Service Providers (ISPs) and government entities from favoring, blocking, or throttling certain websites, or charging fees for premium content delivery. It guarantees individuals have free to access all content and applications, and forbids ISPs from discriminating against or prioritizing certain users, equipment, or types of content. Vimeo created a handy video to illustrate the importance of defending net neutrality:</p>\n<div class="embed-vimeo"></div>\n<p>Net neutrality is once again under attack as the FCC is planning to remove the Title II (<a href="https://en.wikipedia.org/wiki/Common_carrier#Telecommunications" target="_blank">common carrier</a>) protections established during the Obama administration.</p>\n<h3>How to Join the Protest</h3>\n<p>Self-hosted WordPress site owners who want to participate in the Internet-Wide Day of Action to Save Net Neutrality on July 12 can do so by installing the <a href="https://wordpress.org/plugins/cat-signal/" target="_blank">Internet Defense League Cat Signal</a> plugin or the <a href="https://wordpress.org/plugins/fftf-alerts/" target="_blank">Fight for the Future Alerts</a> plugin. Both support the upcoming Save Net Neutrality event and are based on the <a href="https://github.com/fightforthefuture/battleforthenet-widget" target="_blank">official Fight for the Future widget</a> for the campaign.</p>\n<p>The widget will not display until July 12, so you can add a plugin ahead of time. If you want to test it to see what it will look like on the day of action, you can append #ALWAYS_SHOW_BFTN_WIDGET to your site URL after installing one of the plugins. See an example here: <a href="https://wptavern.com/#ALWAYS_SHOW_BFTN_WIDGET" target="_blank">https://wptavern.com/#ALWAYS_SHOW_BFTN_WIDGET</a></p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/07/battleforthenet-modal.png?ssl=1"><img /></a></p>\n<p>The alert urges visitors to contact Congress and the FCC through the provided form. It can be displayed as a banner at the top of the page or as a modal (see example above).</p>\n<p>Automattic may also be planning a way for WordPress.com users to opt-in to participate. We&#8217;ll update the post if that information becomes available.</p>\n<p><em>Update:</em> Automattic has since created a <a href="https://wptavern.com/automattic-releases-net-neutrality-wordpress-plugin-ahead-of-july-12-protest" target="_blank">Net Neutrality plugin</a> for WordPress.com and self-hosted users who want to join the protest.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Jul 2017 18:12:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:114:"WPTavern: Let’s Encrypt Passes 100 Million Certificates Issued, Will Offer Wildcard Certificates in January 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72805";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:121:"https://wptavern.com/lets-encrypt-passes-100-million-certificates-issued-will-offer-wildcard-certificates-in-january-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2660:"<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/lock.jpg?ssl=1"><img /></a>photo credit: <a href="https://stocksnap.io/photo/550FJBDFSW">Chris Anderson</a>\n<p>Let&#8217;s Encrypt, the free and open certificate authority that launched in 2016, has <a href="https://letsencrypt.org/2017/06/28/hundred-million-certs.html" target="_blank">issued more than 100 million certificates</a> as of June 2017 and is currently securing 47 million domains. Earlier this year, the web passed a major milestone of getting <a href="https://wptavern.com/more-than-50-of-web-traffic-is-now-encrypted" target="_blank">more than 50% of traffic encrypted</a>. Let&#8217;s Encrypt has been a major contributor to that percentage growing to nearly 58%.</p>\n<p>&#8220;When Let’s Encrypt’s service first became available, less than 40% of page loads on the Web used HTTPS,&#8221; ISRG Executive Director Josh Aas said. &#8220;It took the Web 20 years to get to that point. In the 19 months since we launched, encrypted page loads have gone up by 18%, to nearly 58%. That’s an incredible rate of change for the Web.&#8221;</p>\n<p>Aas also announced that <a href="https://letsencrypt.org/2017/07/06/wildcard-certificates-coming-jan-2018.html" target="_blank">wildcard certificates are coming to Let&#8217;s Encrypt in 2018</a>. Wildcard certificates allow a site to secure an unlimited number of subdomains with the same certificate.</p>\n<p>Currently, the process to get Let&#8217;s Encrypt working on a WordPress multisite installation is much more complicated than adding a certificate for a single domain. The <a href="https://wordpress.org/plugins/wp-encrypt/" target="_blank">WP Encrypt</a> plugin claims multisite and multi-network compatibility but super admins have often run into failure on networks with higher numbers of sites. Wildcard support for Let&#8217;s Encrypt will provide a better way to secure multisite networks.</p>\n<p>Let&#8217;s Encrypt will offer the wildcard certificates via the new <a href="https://letsencrypt.org/2017/06/14/acme-v2-api.html" target="_blank">ACME v2 API endpoint</a> and will start by supporting base domain validation via DNS with the possibility of adding other validation options in the future. ACME is the protocol that Let&#8217;s Encrypt developed to allow subscribers to acquire and manage certificates. Those using the v1 endpoint are encouraged to move to v2 as soon as it&#8217;s available in January 2018. The v2 protocol was developed to be an IETF (Internet Engineering Task Force) standard so that ACME can work with more certificate authorities in the future.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 07 Jul 2017 18:32:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WPTavern: WangGuard Plugin Author Shuts Down Splog Hunting Service Due to Trauma and Death Threats";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72733";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wptavern.com/wangguard-plugin-author-shuts-down-splog-hunting-service-due-to-trauma-and-death-threats";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6853:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/wangguard.png?ssl=1"><img /></a></p>\n<p>After seven years of developing and supporting the WangGuard/SplogHunter service, José Conti has <a href="https://www.joseconti.com/2017/07/03/la-verdadera-razon-del-cierre-wangguard/" target="_blank">shut down the server permanently</a> due to the stress and trauma associated with maintaining it. Conti is a WordPress plugin developer and consultant, and a member of the WordPress España translation team. His <a href="https://wordpress.org/plugins/wangguard/" target="_blank">WangGuard plugin</a> identifies and blocks sploggers, unwanted users, and untrusted users on WordPress, Multisite, BuddyPress, bbPress, and WooCommerce sites. It is currently active on more than 10,000 sites.</p>\n<p>Speculation about why the service shut down was running rampant after Conti had <a href="https://wptavern.com/wangguard-plugin-launches-indiegogo-campaign-to-fund-development-and-support" target="_blank">collected donations via an Indiegogo campaign in October 2016</a> to fund support and server costs. Since that time SiteGround stepped in to sponsor WangGuard, eliminating the server costs. The only costs that remained were Conti&#8217;s time and effort that he put into supporting the plugin.</p>\n<p>&#8220;My purpose with WangGuard was never money,&#8221; Conti said in his post explaining the reason for the shut-down. &#8220;I could have made WangGuard a paid plugin at anytime, and actually had a plan for that for years. But I didn’t do it because there is something inside me that would never let that happen. It was never, I repeat, never my plan to get rich with WangGuard, and I assure you that I could have done it easily: simply charging each of my users 24€/year, would have meant an income of more than 2 million euros per year. I just had to distribute a version of WangGuard I had collecting dust, with a checkbox on WangGuard’s server administration options but I never got it done. No matter the other reasons, which only people very close to me know: I simply didn’t want to, nor did I want to be a millionaire.&#8221;</p>\n<h3>Mafia Death Threats and Trauma from Exposure to the Dark Web: The High Cost of WangGuard&#8217;s 99.9% Accurate Detection of Splogs</h3>\n<p>WangGuard has long been known for its nearly perfect detection of registration spam. Not only did it completely block unwanted users, it also removed them from the database. The plugin was unrivaled in both accuracy and price &#8211; all users got everything the service offered for free. In order for WangGuard to provide its 99.90% accuracy, Conti bolstered the algorithm with manual curation and reviews.</p>\n<p>&#8220;WangGuard worked in two different ways: as an algorithm that I had been refining for seven years, and which was getting better as the sploggers evolved, so that it was always one step ahead of them, and also as human curation, in which I reviewed many factors, among them sites of sploggers to see if their content could improve the algorithm and make sure that it worked correctly both when it was blocking or not blocking a site,&#8221; Conti said. &#8220;The great secret of WangGuard was this second part. Without it WangGuard would not ever have become what it was.&#8221;</p>\n<p>Because of how effective WangGuard was at stopping unwanted users, Conti said for four years he received &#8220;almost daily death threats from mafias for making them lose millions of dollars.&#8221;</p>\n<p>Through the process of manually curating splogger sites, Conti caught a glimpse of the some of the darkest places on the web, which he said had a damaging psychological impact on him.</p>\n<p>&#8220;For seven years, I have visited places where I saw pederasty, pictures, and videos of murders (by razor blades, by gutting live people, by beheadings, dismemberments, to name a few), real videos of rape of all kinds (children, women, boys), photos of accidents in which people were totally disfigured, bizarre actions that I did not even know existed, and a very long &#8216;and so on,&#8217; which I do not want to expand on,&#8221; Conti said.</p>\n<p>The effects of viewing these types of websites every day took their toll and Conti decided to close the splog hunter service.</p>\n<p>&#8220;Finally, a few months ago, I broke down,&#8221; Conti said. &#8220;I disappeared from everywhere and fell into a depression. The seven years of working at WangGuard finally took a toll on me. I had nightmares because of all the macabre deaths I had seen, an obsession with protecting my children from pederasty, OCD, depression, and many other symptoms. It took me about 6 months to recover (and honestly, I may be deceiving myself, since I do not think I completely recovered my life).&#8221;</p>\n<p>I asked Conti if clicking through to the websites was necessary for maintaining the service. He explained that while WangGuard blocked emails, domains, IPs, and ISPs, without his manual curation of visiting the domains and clicking the links, users could get a lot of &#8220;sleepers&#8221; &#8211; registered and active accounts that remain silent until one day with a 0day vulnerability or a bug fix, they attack thousands of websites. The sleepers also wait to perform actions like create millions of sites on thousands of WordPress multisite installations in order to create a lot of bad content/links.</p>\n<p>&#8220;Visiting many domains, I was able to minimize this problem,&#8221; Conti said. &#8220;The way I worked not only fixed the current spam / splog problem, but the wizard and database also fixed any future problems with sleepers.&#8221;</p>\n<p>Another reason he visited the domains was to figure out what he needed to block, whether it was an email or a domain. The domain could be a spam domain or possibly a free email service.</p>\n<p>&#8220;By visiting a website, I could detect whether it was a phishing website or a site camouflaged as an email service in order to try to cheat WangGuard,&#8221; he said. &#8220;I saw a lot of &#8216;techniques&#8217; for trying to cheat WangGuard at Black Hat specialized forums. I had been subscribed to many spam/sploggers forums for investigation. Every time that a user described a real technique for cheating WangGuard, it was fixed immediately.&#8221;</p>\n<p>If you&#8217;re still using the WangGuard plugin, it may continue to work but not nearly as well as in the past. Conti said that some parts of the code work without the API, but the most important parts require the WangGuard/SplogHunter server. The plugin is open source, so anyone can fork it. <a href="https://wordpress.org/support/topic/why-wangguard-was-closed/" target="_blank">An English translation of his original post</a> is available on the WordPress.org plugin forums.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 07 Jul 2017 00:36:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: WordSesh Asia Now in Planning for 2018, WordCamp Asia Targeted for 2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72742";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://wptavern.com/wordsesh-asia-now-in-planning-for-2018-wordcamp-asia-targeted-for-2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4161:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/07/wordcamp-asia-meeting-group.jpg?ssl=1"><img /></a>photo credit: <a href="https://sakinshrestha.com/events/wordcamp-asia/">Sakin Shrestha</a>\n<p>Yesterday Sakin Shrestha <a href="https://sakinshrestha.com/events/wordcamp-asia/" target="_blank">announced</a> that WordCamp Asia is now in the preliminary planning stages. Shrestha is a key reviewer on the Theme Review Team, translates WordPress to Nepali, and organizes meetups and WordCamps in Nepal. He and other members of the WordPress community in Asia, including representatives from India, Japan, Indonesia, Thailand, Sri Lanka, Singapore, and Nepal, had the opportunity to meet at WordCamp Europe.</p>\n<p>&#8220;We have been talking about WordCamp Asia informally when some of us attended WordCamp US for the first time,&#8221; Shrestha said. &#8220;That’s was in 2015, where I met Naoko Takano. She is the one with the main idea as the Japanese WordPress community was already doing well. Then we started meeting more people from Asia at WordCamp Europe 2016 and had an informal meeting there.&#8221;</p>\n<p>After this meeting, Rahul Bansal created a Facebook group for <a href="https://www.facebook.com/groups/wpasia/" target="_blank">WordPress Community Organizers in Asia</a> to support each other in a more coordinated effort. The first formal meeting happened at WordCamp Europe 2017 where the team decided that trying for WordCamp Asia in 2018 would be too soon. Instead, they are planning to host a WordSesh Asia event in 2018 to work on their coordination and teamwork. The team is working towards hosting WordCamp Asia in 2019.</p>\n<h3>Organizers Consider Bangkok as a Possible Location for WordCamp Asia in 2019</h3>\n<p>Shrestha&#8217;s <a href="https://sakinshrestha.com/events/wordcamp-asia/" target="_blank">post</a> identifies several challenges that are unique to hosting a large scale WordCamp in Asia, including the need for visas even for travel within Asia, political instability, and numerous currencies and languages in use.</p>\n<p>&#8220;WordCamp Asia is really important for the WordPress community in Asia,&#8221; Shrestha said. &#8220;I am fortunate enough to attend WCUS and WCEU, which are some of the biggest WordCamps where we get to meet lot of WordPressers, share and exchange ideas, contribute to WordPress, start a new business, and think outside of the box. But for most of Asians, it’s really difficult to go that far and also it’s expensive to attain those. So, we are limited to WordCamps in our own country and neighboring ones. That is why we are thinking about WordCamp Asia in Bangkok, which will be really inclusive as it’s in the center part of Asia and it’s cheaper to go there and less time consuming for all.&#8221;</p>\n<p>Shrestha also feels strongly about providing travel assistance for those with financial hardships, as the most expensive aspect of attending a WordCamp is usually the travel and accommodation.</p>\n<p>&#8220;WordCamps are not just for the rich,&#8221; Shrestha said. &#8220;The primary motive of WordCamps is to grow the local community. So, WordCamp Asia’s mission will be to influence the community of WordPress Asia and help it to grow. That is why, instead of planning for a grand and pompous event, we need to make sure it is affordable and reachable to people of all financial backgrounds.&#8221;</p>\n<p>Shrestha said he has seen major changes in working with the WordPress community in Nepal from 2012 &#8211; 2017, which he attributes to having a stronger local presence with the WordCamp. India has also benefited from hosting WordCamps and has approximately nine happening in various cities. They are working towards hosting a WordCamp India in the future. There are also emerging communities in Singapore, Thailand, Indonesia, Sri Lanka, Cambodia, and Vietnam.</p>\n<p>&#8220;It’s time for pursuing WordCamp Asia,&#8221; Shrestha said. &#8220;We really have good talents here in Asia but we lack exposure. WordCamp Asia can create buzz and make more people aware, inspire, and provide opportunity.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 06 Jul 2017 18:10:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WPTavern: Jesse Petersen, Founder of Genesis The.me Passes Away";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72772";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"https://wptavern.com/jesse-petersen-founder-of-genesis-the-me-passes-away";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8085:"<img />Petersen Family\n<p><a href="https://twitter.com/jpetersen">Jesse Petersen</a>, founder of <a href="https://www.genesisthe.me/">Genesis The.me</a> and <a href="https://www.petersenmediagroup.com/">Petersen Media Group</a>, has <a href="https://www.newlungsfor.me/2017/jesse-petersen-has-passed-away/">passed away</a> at the age of 38. Petersen had been battling <a href="http://www.cffatboy.com/what-is-cystic-fibrosis/">Cystic Fibrosis</a> for the past several years and suffered a massive lung bleed earlier today. He passed out before paramedics could reach him and could not be revived at the emergency room.</p>\n<p>Petersen was on a double-lung transplant list with a <a href="https://en.wikipedia.org/wiki/Lung_allocation_score">lung allocation score</a> of 38.859. The LAS is a score used to prioritize waiting list candidates based on a combination of wait list urgency and post-transplant survival. Last month, Petersen received the phone call he had been waiting for.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">I got the call! Getting ready to leave to go to the hospital for testing and waiting.<a href="https://twitter.com/hashtag/NewLungsForJesse?src=hash">#NewLungsForJesse</a> <a href="https://t.co/hCCJik05MY">pic.twitter.com/hCCJik05MY</a></p>\n<p>&mdash; Jesse Ⓦ Petersen (@jpetersen) <a href="https://twitter.com/jpetersen/status/873074034065391619">June 9, 2017</a></p></blockquote>\n<p></p>\n<p>Unfortunately, the lungs were determined not to be in a suitable condition for transplant.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">No go. He didn''t like the look of the lungs. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f629.png" alt="?" class="wp-smiley" /> No new lungs for Jesse today. Maybe tonight the phone will ring again.</p>\n<p>&mdash; Jesse Ⓦ Petersen (@jpetersen) <a href="https://twitter.com/jpetersen/status/873302087668576256">June 9, 2017</a></p></blockquote>\n<p></p>\n<p>He <a href="https://www.newlungsfor.me/2017/how-i-felt-on-dry-run-day-and-after/">shared his experience</a> in a raw, emotional post that describes the highs and lows he felt that day. &#8220;While the day was an emotional roller coaster, with the highs being WAY up there, the lows were surprisingly mild,&#8221; Petersen said. &#8220;They just weren’t the right lungs, and this protected me from years of issues, so it’s all good. The call for the perfect lungs for me will come in God’s timing. I am content to wait.&#8221;</p>\n<p>On July 2nd, a patient with a higher LAS score than Petersen&#8217;s was taken into surgery to receive a double-lung transplant. This made Petersen the highest priority pending a match was found but a match wasn&#8217;t found in time.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">She was taken into surgery at noon, Tampa time. Surgery is 6-12 hours. I''m very happy for her because her need was more than twice mine.</p>\n<p>&mdash; Jesse Ⓦ Petersen (@jpetersen) <a href="https://twitter.com/jpetersen/status/881549935405129728">July 2, 2017</a></p></blockquote>\n<p></p>\n<p>I did not have the opportunity to meet him in person. From those who knew him personally, Petersen was a great husband, father, and a caring individual who despite his medical situation, would help out the best way he could. There are two stories that highlight the kind of person he was. The first is <a href="https://twitter.com/jpetersen/status/881974173085691904">a Twitter thread</a> he published two days ago.</p>\n<blockquote><p>When you meet a 5 year-old who needs a heart and double-lung transplant but has been turned down everywhere, your situation doesn’t seem so bad. That family doesn’t care about politics, social class, keeping up with the Joneses, or whether their clothes match. They are enjoying life.</p>\n<p>Because when it comes down to it, all we really need is to know our worth and love everyone else because they have equal worth. That doesn’t mean you have to agree with everyone, but you don’t have to seek out opposition or turmoil. Random acts of kindness rock.</p>\n<p>Can you look over your life and say you’d be leaving those connected to you better off having known you? If not, start today.</p></blockquote>\n<p>The second is <a href="https://www.facebook.com/jesse.dubyah/posts/238778876639367">from his Facebook account</a> about an encounter he had with a mother pushing her small boy in a wheelchair with a surgical mask on.</p>\n<blockquote><p>I finally got out of the house to go do a God &amp; Country service followed by fireworks. While waiting to go outside, a mom I&#8217;d seen pushing a small boy in a wheelchair with a surgical mask and oxygen on him came over to me.</p>\n<p>&#8216;I just wanted to say how cool I think your double tank cart is. I&#8217;m going to call my supplier tomorrow to get one for our wheelchair.&#8217;</p>\n<p>We started talking (most unlike me) and she said her son needed a heart and a double lung transplant&#8230; but they&#8217;ve been turned down everywhere, starting with the very forgiving Pittsburgh center.</p>\n<p>&#8216;I&#8217;m so sorry.&#8217;</p>\n<p>[nodded her head with a pained look] &#8216;We&#8217;re just making the most of our time now.&#8217;</p>\n<p>My heart broke. I&#8217;ve already lived 7 of his lifetimes. I&#8217;ve played sports, graduated from college, stood on the equator, married my best friend, and have two healthy boys.</p>\n<p>So kick me the next time I complain about my wait, OK?</p></blockquote>\n<p>Members of the WordPress community are using social media to share memories, grieve, and pass along condolences to his family.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">I first met <a href="https://twitter.com/jpetersen">@jpetersen</a> at <a href="https://twitter.com/hashtag/wcorl?src=hash">#wcorl</a> and was honored to have him at <a href="https://twitter.com/hashtag/wcmia?src=hash">#wcmia</a> 2015. Hope it’s ok to share his “speaker card” from <a href="https://twitter.com/wordcampmiami">@wordcampmiami</a>. <a href="https://t.co/R7czM5AV1h">pic.twitter.com/R7czM5AV1h</a></p>\n<p>&mdash; David Bisset (@dimensionmedia) <a href="https://twitter.com/dimensionmedia/status/882711570899492864">July 5, 2017</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">RIP <a href="https://twitter.com/jpetersen">@jpetersen</a>, you were a great friend, and co-host. Gonna miss the great convos we had.</p>\n<p>&mdash; The WP Crowd (@thewpcrowd) <a href="https://twitter.com/thewpcrowd/status/882708241532059648">July 5, 2017</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Met <a href="https://twitter.com/jpetersen">@jpetersen</a> on multiple occasions. Family man and proud dad. Always respected the hell outta that. See you on the flip side, buddy.</p>\n<p>&mdash; Jared Atchison (@jaredatch) <a href="https://twitter.com/jaredatch/status/882714968990371840">July 5, 2017</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Terrible news, <a href="https://twitter.com/jpetersen">@jpetersen</a> will be missed. CF takes too many, too soon. Rest in peace, buddy.</p>\n<p>&mdash; Brian Krogsgard (@Krogsgard) <a href="https://twitter.com/Krogsgard/status/882711331929022470">July 5, 2017</a></p></blockquote>\n<p></p>\n<p>Petersen&#8217;s family has created a <a href="https://www.newlungsfor.me/2017/jesse-petersen-has-passed-away/">crowd-funding campaign</a> to help offset funeral and medical expenses. Since its creation, the community has donated more than $12K of $20K. If you are able, please consider donating as Petersen was the sole provider of income for his family.</p>\n<p>My deepest condolences go out to his friends and family. Petersen is survived by his wife and two sons.</p>\n<p><strong>Related Reading</strong>:</p>\n<blockquote class="wp-embedded-content"><p><a href="https://2017.us.wordcamp.org/2017/07/05/the-loss-of-one-of-our-own/">The Loss of One of Our Own</a></p></blockquote>\n<p></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 06 Jul 2017 02:09:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: WPWeekly Episode 280 – Behind the Scenes of Tuniversity";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=72768&preview=true&preview_id=72768";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wptavern.com/wpweekly-episode-280-behind-the-scenes-of-tuniversity";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2595:"<p>In this episode, <a href="http://jjj.me/">John James Jacoby</a> and I are joined by <a href="http://kikodoran.com/">Kiko Doran</a> and <a href="http://www.travistotz.com/">Travis Totz</a>, Senior Web Strategist at Modern Tribe. Doran helped create <a href="https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewBook?id=1235850828&mt=11&ls=1">Tuniversity</a>, a revolutionary new way of learning music through a highly interactive iBook.</p>\n<p>The project was so large, Doran <a href="http://tri.be/case-study/tuniversity/">outsourced</a> some of the work to <a href="http://tri.be">Modern Tribe</a>, a web design and development firm. During the show, we learn the benefits of working with an agency you trust. Doran also explained what it was like to be a client as he&#8217;s normally fulfilling the agency role.</p>\n<p>Two major takeaways from the Tuniversity project include:</p>\n<ol>\n<li>Work on things you&#8217;re passionate about with people who share the same passion.</li>\n<li>Approach problems with a positive mindset.</li>\n</ol>\n<p>Near the end of the show, we discussed the news that WangGuard is <a href="https://wordpress.org/support/topic/why-wangguard-was-closed/">officially closed</a>.</p>\n<h2>Picks of the Week:</h2>\n<p><a href="http://wphierarchy.com/">WPHierarchy.com</a> is a WordPress resource<a href="https://wptavern.com/pretty-wordpress-template-hierarchy-diagram"> created</a> by Rami Abraham in 2013. The site is an interactive version of<a href="http://wpdaily.co/wp-template-hierarchy-chart/"> Michelle Schulp’s colorful diagram</a> of WordPress’ template hierarchy. Each template is linked to documentation that explains its function</p>\n<p><a href="https://www.youtube.com/playlist?list=PLzBixSjmbc8eFl6UX5_wWGP8i0mAs-cvY">Dr. Russell A. Barkley (30 essential ideas everyone should know about ADHD)</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, July 12th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #280:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Jul 2017 23:58:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:105:"WPTavern: Nadia Eghbal and Mikeal Rogers Join a16z Podcast to Discuss the Changing Culture of Open Source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72702";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:116:"https://wptavern.com/nadia-eghbal-and-mikeal-rogers-join-a16z-podcast-to-discuss-the-changing-culture-of-open-source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6242:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2015/06/open-source.jpg?ssl=1"><img /></a>photo credit: <a href="http://www.flickr.com/photos/79777096@N00/6866996865">16th st</a> &#8211; <a href="https://creativecommons.org/licenses/by-nd/2.0/">(license)</a>\n<p>Nadia Eghbal and Mikeal Rogers recently joined Sonal Chokshi for <a href="https://a16z.com/2017/04/08/culture-open-source-community/" target="_blank">an episode of the a16z Podcast</a> to discuss the changing culture of open source. Eghbal works in community programs at GitHub to better support people doing open source work. Rogers is the community manager at the Node.js Foundation. The episode focuses on the human aspect of the world of open source software and what inspires people to work together to give software away for free.</p>\n<p>Through Eghbal&#8217;s research on sustaining open source communities, she found, as Rogers succinctly summarized on the show: &#8220;There&#8217;s no connection between the number of users and the number of people maintaining a project.&#8221; The <a href="http://heartbleed.com/" target="_blank">Heartbleed Bug</a>, which arrested public attention when it was disclosed in 2014, is perhaps one of the most critical examples of an open source project with a global user base and a grossly disproportionate number of maintainers.</p>\n<p>As part of her research at GitHub, Eghbal is working on creating a vocabulary to explain things that are happening with open source projects. One example is the distinction between &#8220;popular&#8221; versus &#8220;healthy&#8221; when describing projects in terms of the communities behind them, governance, quality of maintainership, and other factors that influence a project&#8217;s condition.</p>\n<p>&#8220;Because the dialogue tends to be set by popular projects, and those developers and their problems tend to dominate the story about this, you have these words and vocabulary like &#8216;drive-by-contributions,''&#8221; Rogers said. This often implies that maintainers are too busy to look at the code. Rogers advocated for changing this perception of &#8220;drive-by-contributors&#8221; to view them as casual contributors, people who show up and have value to add. If maintainers can seize these contributions as an opportunity, they will have a better chance of leveling up contributors to be a more active part of their organization.</p>\n<p>The group also discussed how technology has caused a cultural shift among open source communities from the old world versus the new world of open source.</p>\n<p>&#8220;In older open source, part of the barrier to entry that people went through before they were ever identifiable to any contributor was an acclimation to the culture and an acclimation to the tool chain and all this stuff,&#8221; Rogers said. &#8220;One of the things that GitHub has done is completely remove all of that cultural acclimation. There is one tool chain that you use to contribute to any project and when you show up you don&#8217;t have all of this cultural knowledge. You haven&#8217;t bought into any of these ideals about open source necessarily. You&#8217;re just there to contribute. We actually need to work with that.&#8221;</p>\n<p>In the past, contributors informally acclimated to the culture through the onboarding process, and most software projects were more self-contained.</p>\n<p>&#8220;Where that becomes awkward today is that so many different pieces of software depend on other open source projects, which wasn&#8217;t actually true 10 or 20 year ago,&#8221; Eghbal said. With so many projects fitting into others as dependencies, it becomes more difficult to actually remove a project from the public domain. Open source licensing ensures that these projects have a life of their own. This has democratized entrepreneurship, making it easy for people to piece together technology to build applications and businesses. It also requires a higher level of skills for people working together across various open source projects and cultures.</p>\n<p>Eghbal and Rogers discussed the qualities of a healthy open source community, such as how welcoming the project is and how contributors speak to each other and resolve conflict. The ability to successfully resolve conflict can make the difference between a healthy growth of contributors or attrition on a project. Rogers mentioned a related conversation they had with Karl Fogel on their <a href="https://changelog.com/rfc" target="_blank">Request for Commits podcast</a> concerning conflict within projects.</p>\n<p>&#8220;When we were talking to Karl, he has this view that &#8216;As long as a it has an open source license, it doesn&#8217;t matter how dysfunctional the project is, because we as a community always have this ability to fork it,''&#8221; Rogers said. &#8220;I didn&#8217;t agree with him on this, because the practical reality of forking a project is such a huge overhaul and you don&#8217;t necessarily have the right people to do it in your particular time. What you actually want are the healthy communities with healthy practices, what you want is to keep them going.&#8221;</p>\n<p>Another open source predicament they discussed, which is fairly common in the WordPress ecosystem, is when a company releases a project as open source or &#8220;gifts it to the community.&#8221; Eghbal likened this to &#8220;sending your dog away to a farm upstate.&#8221;</p>\n<p>&#8220;We&#8217;re really excited to announce this is now open source, meaning we don&#8217;t want to take care of it anymore,&#8221; she said. &#8220;&#8216;We&#8217;ll give it to the community,&#8217; (except they haven&#8217;t actually identified anyone in the community who wants to take care of it.)&#8221; This type of situation shows how &#8220;giving back to the community&#8221; isn&#8217;t always what it appears to be for those who end up using these projects that have been released into the wild.</p>\n<p>The group also discussed how the incentives for people to contribute to open source have changed over the years and why &#8220;the GitHub generation&#8221; has more readily adopted the MIT license. Check out the full podcast episode below:</p>\n<p></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Jul 2017 19:26:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"HeroPress: How I tried, applied, got involved. Realizing one of my childhood dreams.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1950";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:188:"https://heropress.com/essays/tried-applied-got-involved-realizing-one-childhood-dreams/?utm_source=rss&utm_medium=rss&utm_campaign=tried-applied-got-involved-realizing-one-childhood-dreams";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:15809:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/07/070517-min-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: It was so scary admitting my ignorance, exposing it in a remote environment where I couldn''t see my teammates reactions live." /><p>When you’re born in an island, you usually grow up thinking about all the marvelous things awaiting for you on the other side of the sea. I was born in Sardinia, an island in the middle of the Mediterranean Sea, and as a child I dreamt about becoming an air hostess.</p>\n<p>I wanted to travel the world and speak tons of foreign languages, to be able to communicate with local people everywhere I’d go.</p>\n<p>But people kept telling me that I wasn’t going to become tall enough for that job (genetics don’t lie!), and I eventually listened to them. I ended up choosing a different path in life, following the Italian mantra: “You have to study something that will guarantee a stable and secure job for life”.</p>\n<p>Even if I wasn’t that much convinced about the perspective of having the same job for all my life, as my parents did, at the same time I didn’t want to get stuck in the island forever: the unemployment rate in Sardinia is unfortunately really high and I didn’t want to risk to be part of that percentage.</p>\n<h3>Crossing the borders of the island</h3>\n<p>So I chose the Faculty of Economics and did my best to cross the borders of my island as soon as I had the chance: this happened when I was 22 and I moved to Siena, Tuscany, to finish my studies. That is also the time when I opened my first personal blog on an Italian platform named Tiscali, which I later migrated to WordPress.com.</p>\n<p><strong>I’ve always loved writing</strong>, and since I was a little girl I used to spend hours in my room writing stories and poems. I was doing the same with the blog but with the advantage of reaching a much larger public, virtually meeting many people and getting inspired by their stories.</p>\n<p>After 2 years in Tuscany I moved to Strasbourg, France. There I learnt French and did several little jobs, but I found my first important one in Milan, the big city shining with job opportunities for everyone —as Italians love to say.</p>\n<p>There I was, fulfilling the dream of many young people of my age (and their families): I was 25, with an average-paid 40 hours/week office job in the marketing department of a big international company, and I was surrounded by ambitious colleagues and a boss constantly asking for extra —and free— working hours per day.</p>\n<blockquote><p>I was feeling like a parrot inside a golden cage.</p></blockquote>\n<p>It seemed to me I wasn’t going anywhere. I also gave up blogging because I wasn’t feeling inspired enough to write. People constantly repeated to me that I was super lucky to have a permanent contract and work in a marketing department; in their eyes I was all set for life, so —using some strange equation — I also had to be happy!</p>\n<p>Of course I was luckier than many of my peers, but I kept asking myself if I really wanted to do that life forever.<br />\nDid I really want to keep on working 10 hours per day under the neon lights of an office, annihilate my dreams and live waiting for the free time of the weekend?</p>\n<p>The most vivid memory I have of that period is the overwhelming feeling clenching my throat on Sunday afternoons, when I started to dread the moment of coming back to the office the day after.</p>\n<h3>Facing new challenges</h3>\n<p>So I left and faced the change. At the beginning I gave myself the opportunity to test different office jobs. But the results were always the same: I kept feeling unsatisfied with my life, and I understood I had to respect my little girl’s dream and fly away from my golden cage.</p>\n<blockquote><p>I opted for emigration and moved alone to Barcelona, Spain, in 2012.</p></blockquote>\n<p>My first move was plunging myself into a few months of intense Spanish learning at the University, then I found a job in an international Assisted Reproduction Clinic.</p>\n<p>My job title was “Patient Coordinator” and I was assisting international patients coming to Barcelona for their treatments: I was their translator, interpreter and administrative consultant. Patients were from Italy, France, England, Morocco, Senegal…it was a Babylon of people with so many different backgrounds that I felt really inspired by some of their stories.<br />\nThis inspiration led me to start writing again: <strong>I dusted off my WordPress blog</strong> and filled it up with stories about my new life in Barcelona and some of the women I was meeting at the Clinic. I was feeling stronger and more independent than ever.</p>\n<p>The job at the Clinic lasted for 3 years. Even if it was really inspiring, it was also very stressful. Imagine being a 30-something woman speaking all day long about fertility problems with women struggling to have a baby.</p>\n<p>I realized I was getting too involved and decided to look around to see what I could do next.</p>\n<h3>How can I find a job like this?</h3>\n<p>It was summer 2015 and I was at my desk, in my little tiny apartment in front of Barcelona’s beach. I was writing in my blog and I got stuck in a technical problem. While I was searching through the WordPress.com documentation, I saw a pop-up in the bottom right corner of my screen: an Automattician wrote me to ask if I needed help. I gladly accepted her offer, we chatted for a few minutes, the problem was solved and I could go back to my writing. But I also left the chat with one question: <strong>how could that person on chat find a support job with WordPress</strong>?</p>\n<p>Curious as I am, I started looking for an answer and I stumbled upon the official WordPress job page: <a href="http://jobs.wordpress.net">jobs.wordpress.net</a></p>\n<p>There I found a job offer that caught my attention: WP Media, a French startup, was looking for <strong>a polyglot and remote customer service teammate</strong> for one of their plugins, WP Rocket. I read their requirements: fluency in English, French and possibly another language, great experience with WordPress, some coding skills.</p>\n<p>That offer was calling me, I felt it.</p>\n<p><strong>I knew I didn&#8217;t have all the requirements</strong>, but hey, I could speak 4 languages, and I had a WordPress blog…right? Of course, I didn’t know anything about PHP, I had always been a WordPress.com user until that moment and I didn’t really know how to manage a self-hosted website or use a cache plugin…but I felt I was ready to learn all that. And moreover, what did I have to lose?</p>\n<h3>I wrote my most inspired cover letter and sent my CV.</h3>\n<p>With my total surprise, they answered me the day after and we set up an interview by Skype. My main strengths were the fluency in 4 languages and my previous experience in customer service, so I was really confident about those skills; yet I wanted to be totally honest with them: yes, I had been using WordPress for a long time, and yes, I was digital savvy enough, but I knew very little on the technical side. I had always worked on the front end of websites, writing, blogging, learning by myself; I didn&#8217;t know anything about the backend of WordPress sites.</p>\n<p>Even so, they had faith in me and in a few days I had the confirmation: I was in! <strong>During the first days I felt so happy about this new major turning point in my life</strong>: not only had I found a job thanks to my primordial passion, speaking foreign languages, but for the first time in my life I could do that job from home or anywhere else I liked, instead of being caged in a formal office!</p>\n<p>I got introduced to my remote teammates and I instantly felt welcomed.</p>\n<h3>Learning by doing</h3>\n<p>But, very soon, that initial enthusiasm started to struggle with another intense feeling: <strong>the fear of exposing my inexperience</strong>.</p>\n<p>There were too many things I didn&#8217;t know!</p>\n<p>Working in a WordPress backend was so new to me that I started studying like crazy and reading everything I could about WordPress for beginners. I went through some really intense months of learning by doing, supported by my teammates. Like a baby who start crawling and then taking little steps, I was initially answering the easiest tickets from our customers.  At the same my teammates were sending me useful material to read, setting up video-calls for 1to1 training, encouraging me every time they could.</p>\n<p>After a few days I received the first happy comments by the customers I was helping in their mother tongue: until that moment the plugin’s support had been offered only in English and French, so it was the first time Spanish and Italian customers were being answered in their own language…and they appreciated that!</p>\n<p>Even so, I can’t deny it, I was scared.</p>\n<blockquote><p>It was so scary admitting my ignorance, exposing it in a remote environment where I couldn’t see my teammates reactions live.</p></blockquote>\n<p>My first instinct was imagining the worst scenarios where they were secretly hating me for interrupting their work on Slack with my doubts.</p>\n<p>But I had no other choice than to keep asking questions and learn from their answers. Not doing so would have been much worse: silencing my voice would have slowed down my learning process.</p>\n<h3>Why don’t you try to contribute to WordPress?</h3>\n<p>We were at WordCamp Paris 2016 when one of my teammates showed me how the WordPress community worked together and kept in contact through Slack.</p>\n<p>“You speak multiple languages, why don’t you try to contribute to the polyglots team?” —he asked.</p>\n<p>That thought never crossed my mind before, I knew very little about contributing to WordPress. I had been working for WP Media for 6 months and, while I was enjoying my new job a lot, I was just slowly starting to abandon that overwhelming feeling of insecurity I mentioned above.</p>\n<blockquote><p>I didn’t feel ready to dive into a new challenge and start also contributing to WordPress, I thought I didn’t have the ability to do that. I was wrong, obviously.</p></blockquote>\n<p>Curiosity won on me another time and I joined the two Slack channels <em>Making WordPress</em> (where all the WP global community meets) and <em>Italia WP Community</em>. I lurked the channels for a few months, until I went to WordCamp Milan and met some members of the Italian Polyglots team.</p>\n<p>It was love at first string: Laura, one of the <a href="https://make.wordpress.org/polyglots/teams/?locale=it_IT">General Translation Editors</a> (GTE) for Italy, taught me how to start contributing and translating following the polyglots guidelines. She also told me about the big effort the Italian community has been doing to work together, consistently, to boost WordPress related events in Italy and to grow up.</p>\n<p>I wanted to be an active part of it and I started contributing.</p>\n<p><strong>Now I’m a Project Translator Editor for the Italian polyglots team</strong> and I mentor new contributors: I love it!</p>\n<p>Since the beginning of my journey into the WordPress world I traveled a lot, and also attended WordCamps in <a href="https://2016.paris.wordcamp.org/">Paris</a>, <a href="https://2016.europe.wordcamp.org/">Vienna</a>, <a href="https://2016.milano.wordcamp.org/">Milan</a>, <a href="https://2016.barcelona.wordcamp.org/">Barcelona</a>, <a href="https://2017.torino.wordcamp.org/">Torino</a> and <a href="https://2017.bilbao.wordcamp.org/">Bilbao</a>.</p>\n<p>Following my teammates encouragement, <strong>I also started applying to WordCamps as a speaker</strong>, because I felt my story could be important for other people looking for new inspiration for their working and personal life. I gave my first talk in my adoptive city, Barcelona, in December 2016, then in Torino in April 2017 and I recently had the honor to tell my story also from the stage of WordCamp Europe 2017.</p>\n<p>In a short glimpse of time I engaged in many activities related to WordPress which allowed me to meet very interesting and inspiring people from all over the world.</p>\n<h3>I’m (not) lucky.</h3>\n<p>People keep telling me that I’m lucky, and it’s true, I really am. But if I’m here, now, sharing my story (and thanks Topher for inviting me to write it!) is not because I live under a lucky star: I just used my previous skills and passions and adapted them to a new career and life path.</p>\n<p>We all have some skills; and if we don’t know which they are exactly, we should take some time to make a list of the things we’re really good at. With that in mind, just try. Apply. Get involved. Don’t get stuck in the feeling of “I can’t do it because I don’t know enough”.</p>\n<p>That is what I did: without even realizing it, I started putting into reality the dream of the little girl who was born in an island and wanted to travel and speak different languages.</p>\n<p>WordPress made this possible: I’m part of a big community, and I am proud of it.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: How I tried, applied, got involved. Realizing one of my childhood dreams." class="rtsocial-twitter-button" href="https://twitter.com/share?text=How%20I%20tried%2C%20applied%2C%20got%20involved.%20Realizing%20one%20of%20my%20childhood%20dreams.&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Ftried-applied-got-involved-realizing-one-childhood-dreams%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: How I tried, applied, got involved. Realizing one of my childhood dreams." class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Ftried-applied-got-involved-realizing-one-childhood-dreams%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Ftried-applied-got-involved-realizing-one-childhood-dreams%2F&title=How+I+tried%2C+applied%2C+got+involved.+Realizing+one+of+my+childhood+dreams." rel="nofollow" target="_blank" title="Share: How I tried, applied, got involved. Realizing one of my childhood dreams."></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/tried-applied-got-involved-realizing-one-childhood-dreams/&media=https://heropress.com/wp-content/uploads/2017/07/070517-min-150x150.jpg&description=How I tried, applied, got involved. Realizing one of my childhood dreams." rel="nofollow" target="_blank" title="Pin: How I tried, applied, got involved. Realizing one of my childhood dreams."></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/tried-applied-got-involved-realizing-one-childhood-dreams/" title="How I tried, applied, got involved. Realizing one of my childhood dreams."></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/tried-applied-got-involved-realizing-one-childhood-dreams/">How I tried, applied, got involved. Realizing one of my childhood dreams.</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Jul 2017 12:00:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alice Orru";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:102:"WPTavern: WordCamp Europe 2017 Posts 24% No-Show Rate, Cites Early Ticket Sales and Expensive Location";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72644";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:111:"https://wptavern.com/wordcamp-europe-2017-posts-24-no-show-rate-cites-early-ticket-sales-and-expensive-location";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3872:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/06/wordcamp-europe-venue.jpg?ssl=1"><img /></a>photo credit: WP Tavern\n<p>WordCamp Europe 2017 organizers have posted <a href="https://2017.europe.wordcamp.org/2017/06/30/wordcamp-europe-2017-in-paris-its-a-wrap/" target="_blank">attendance and budget data</a> compiled after the conclusion of the event. Despite being <a href="https://2017.europe.wordcamp.org/do-not-miss-the-biggest-wordcamp-in-europe/" target="_blank">promoted</a> as &#8220;the largest WordPress event to this day&#8221; with more than 3,000 expected attendees, WCEU 2017 fell short with 1,900 people on the ground. Attendees were 5% fewer than last year&#8217;s 2,000 in Vienna. Expectations ran high but organizers could not predict the 24% no-show rate once the event got started. This is more than double the 10% no-show rate for the previous four years.</p>\n<p>The camp&#8217;s organizers do not have a simple explanation for the high no-show rate, but cite several factors, including a few dozen participants being <a href="https://wptavern.com/wordcamp-europe-attendees-are-being-denied-visas-because-conference-ticket-price-is-too-low" target="_blank">denied visas</a>, higher local sales, an expensive location, and putting tickets on sale too early. Approximately 60% of attendees were from nearby countries, such as France, Great Britain, Germany, Belgium, and the Netherlands.</p>\n<p>Ticket sales for 2017 were open immediately at the conclusion of the 2016 event in Vienna. Organizers found that tickets sold in the first six months had a 34% no-show rate as compared to 20% for those sold in 2017. As the event has often sold out in the past, prospective attendees may have felt pressure to purchase a ticket in advance without confirming the ability to attend. </p>\n<p>Posting increasingly higher attendance numbers isn&#8217;t one of the goals of the WordCamp, but planning accurately for the number of people who will attend is crucial for resource and budget planning. When one in four attendees is a no-show, the plans for food, swag, venue accommodations, and other aspects of the event are askew.</p>\n<p>Organizers did not mention <a href="https://wptavern.com/wordcamp-europe-2017-kicks-off-with-contributor-day-focused-on-growing-wordpress-through-inclusion" target="_blank">Contributor Day</a> attendance in the wrap-up report, but this may have been one of the most successful aspects of the event. It was held prior to the main conference days, which may explain the event&#8217;s unusually high attendance numbers. Organizers hosted 473 attendees for the 500 available contributors slots. </p>\n<h3>WordCamp Europe 2017 Cost 300€ per Attendee, Sponsors Covered 80%</h3>\n<p>WordCamp Europe&#8217;s wrap-up report also includes a transparent breakdown of the event&#8217;s 700k€ budget. Catering costs for lunches, snacks and drinks, made up 50% of the budget. However, organizers were limited to the venue&#8217;s catering partners, which blurs the line between actual food versus venue costs. </p>\n<p>The team was unable to sell all of the sponsorship packages and was forced to reduce the budget by 149k€ along the way. WordCamp Central subsidized 10€/ticket and covered the final deficit of 28k€. The cost breakdown per attendee was 300€ with sponsors covering 80%, WordCamp Central 7%, and tickets sales 13%. These numbers show that the 40€ ticket price is a small fraction of the total costs required for an event of this size. </p>\n<p>Organizers said they felt it was important to share the data for educational purposes but also to &#8220;demonstrate to everyone who might have a doubt, that maintaining the ticket fee very low is meant to make our events accessible to all, but that the fee is not an indicator of the value of the conference.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Jul 2017 19:06:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Dev Blog: The Month in WordPress: June 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4865";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9049:"<p><i>We&#8217;re starting a new regular feature on this blog today. We&#8217;d like to keep everyone up-to-date about the happenings all across the WordPress open source project and highlight how you can get involved, so we&#8217;ll be posting a roundup of all the major WordPress news at the end of every month.</i></p>\n<p>Aside from other general news, the three big events in June were the release of WordPress 4.8, WordCamp Europe 2017, and the WordPress Community Summit. Read on to hear more about these as well as other interesting stories from around the WordPress world.</p>\n<hr />\n<h2>WordPress 4.8</h2>\n<p>On June 8, a week before the Community Summit and WordCamp Europe,<a href="https://wordpress.org/news/2017/06/evans/"> WordPress 4.8 was released</a>.You can read<a href="https://make.wordpress.org/core/2017/05/26/wordpress-4-8-field-guide/"> the Field Guide</a> for a comprehensive overview of all the features of this release (the News and Events widget in the dashboard is one of the major highlights).</p>\n<p>Most people would either have their version auto-updated, or their hosts would have updated it for them. For the rest, the updates have gone smoothly with no major issues reported so far.</p>\n<p>This WordPress release saw contributions from 346 individuals; you can find their names in <a href="https://wordpress.org/news/2017/06/evans/">the announcement post</a>. To get involved in building WordPress core, jump into the #core channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>, and follow <a href="https://make.wordpress.org/core/">the Core team blog</a>.</p>\n<h2>WordCamp Europe 2017</h2>\n<p><a href="https://2017.europe.wordcamp.org/">WordCamp Europe 2017</a> was held in Paris between June 15-17. The event began with a Contributor Day, followed by two days of talks and community goodness. The talks were live-streamed, but you can still catch all the recordings <a href="http://wordpress.tv/event/wordcamp-europe-2017/">on WordPress.tv</a>. The organisers also published <a href="https://2017.europe.wordcamp.org/2017/06/30/wordcamp-europe-2017-in-paris-its-a-wrap/">a handy wrap-up of the event</a>.</p>\n<p>WordCamp Europe exists to bring together the WordPress community from all over the continent, as well as to inspire local communities everywhere to get their own events going — to that end, the event was a great success, as a host of new meetup groups have popped up in the weeks following WordCamp Europe.</p>\n<p>The work that Contributor Day participants accomplished was both varied and valuable, covering all aspects of the WordPress project — have a look through <a href="https://make.wordpress.org/">the Make blogs</a> for updates from each team.</p>\n<p>Finally, we also learned during the event that <a href="https://2017.europe.wordcamp.org/2017/06/17/belgrade-serbia-to-host-wordcamp-europe-2018/">WordCamp Europe 2018 will be held in Belgrade, Serbia</a>, continuing the tradition of exploring locations and communities across the continent.</p>\n<h2>WordPress Community Summit</h2>\n<p>The fourth WordPress Community Summit took place during the two days leading up to WordCamp Europe 2017. This event is an invite-only unconference where people from all over the WordPress community come together to discuss some of the more difficult issues in the community, as well as to make plans for the year ahead in each of the contribution teams.</p>\n<p>As the Summit is designed to be a safe space for all attendees, the notes from each discussion are in the process of being anonymized before we publish them on <a href="https://make.wordpress.org/summit/">the Summit blog</a> (so stay tuned &#8211; they’ll show up there over the next few weeks).</p>\n<p>You can already see the final list of topics that were proposed for the event <a href="https://make.wordpress.org/summit/2017/06/10/community-summit-2017-final-list-of-topic/">here</a> (although a few more were added during the course of the two day Summit).</p>\n<h2>WordPress marketing push continues apace</h2>\n<p>As part of the push to be more intentional in marketing WordPress (as per Matt Mullenweg&#8217;s <a href="http://wordpress.tv/2016/12/07/matt-mullenweg-state-of-the-word-2016/">2016 State of the Word</a>), the Marketing team has launched two significant drives to obtain more information about who uses WordPress and how that information can shape their outreach and messaging efforts.</p>\n<p><a href="https://make.wordpress.org/marketing/2017/06/15/wordpress-case-studies-and-usage-survey/">The team is looking for WordPress case studies</a> and is asking users, agencies, and freelancers to take a WordPress usage survey. This will go a long way towards establishing a marketing base for WordPress as a platform and as a community — and many people in the community are looking forward to seeing this area develop further.</p>\n<p>To get involved in the WordPress Marketing team, you can visit <a href="https://make.wordpress.org/marketing/">their team blog</a>.</p>\n<h2>New Gutenberg editor available for testing</h2>\n<p>For some time now, the Core team has been hard at work on a brand-new text editor for WordPress — this project has been dubbed “Gutenberg.” The project’s ultimate goal is to replace the existing TinyMCE editor, but for now it is in beta and available for public testing — <a href="https://wordpress.org/plugins/gutenberg/">you can download it here as a plugin</a> and install it on any WordPress site.</p>\n<p>This feature is still in beta, so we don’t recommend using it on a production site. If you test it out, though, you’ll find that it is a wholly different experience to what you are used to in WordPress. It’s a more streamlined, altogether cleaner approach to the text-editing experience than we’ve had before, and something that many people are understandably excited about. Matt Mullenweg discussed the purpose of Gutenberg in more detail during <a href="http://wordpress.tv/2017/07/01/interview-and-qanda-with-matt-mullenweg/">his Q&amp;A at WordCamp Europe</a>.</p>\n<p>There are already a few reviews out from <a href="https://kinsta.com/blog/gutenberg-wordpress-editor/">Brian Jackson at Kinsta</a>, <a href="https://daily.jorb.in/2017/06/random-thoughts-on-gutenberg/">Aaron Jorbin</a>, and <a href="https://www.mattcromwell.com/gutenberg-first-impressions/">Matt Cromwell</a> (among many others). Keep in mind that the project is in constant evolution at this stage; when it eventually lands in WordPress core (probably in v5.0), it could look very different from its current iteration — that’s what makes this beta stage and user testing so important.</p>\n<p>To get involved with shaping the future of Gutenberg, please <a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">test it out</a>, and join the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>. You can also visit <a href="https://github.com/WordPress/gutenberg">the project’s GitHub repository</a> to report issues and contribute to the codebase.</p>\n<hr />\n<h2>Further reading:</h2>\n<ul>\n<li>Bridget Willard <a href="https://make.wordpress.org/community/2017/06/21/proposed-wordcamp-editorial-calendar/">has proposed an editorial calendar</a> to assist WordCamp organizers with publishing content for their event.</li>\n<li>A new kind of niche WordCamp, <a href="https://2017-denver.journalist.wordcamp.org/">WordCamp for Publishers in Denver</a>, has opened ticket sales.</li>\n<li>The WordPress iOS app was updated with <a href="https://en.blog.wordpress.com/2017/06/21/an-all-new-media-library-for-the-wordpress-ios-app/">a fresh, new media library</a> this month.</li>\n<li>It looks like <i>Underscores</i>, the popular WordPress starter theme, <a href="https://themeshaper.com/2017/06/26/the-future-of-underscores-and-a-new-committer/">has a bright future ahead of it</a>, with a renewed vision and new committer.</li>\n<li>The always-inspiring Tom McFarlin <a href="https://tommcfarlin.com/simple-autoloader-for-wordpress">has released a simple autoloader for WordPress</a> that looks very useful indeed.</li>\n<li>After a bit of a discussion on Twitter regarding the differences between WordPress.org, WordPress.com, and Jetpack, <a href="https://helen.wordpress.com/2017/06/21/restaurant-vs-meal-kit-vs-grocery-shopping-or-wordpress-com-vs-jetpack-vs-wordpress-org/">Helen Hou-Sandí came up with a great analogy</a> and an interesting post about it all.</li>\n<li>If you’re interested in contributing specifically to the JavaScript or PHP areas of the WordPress core codebase, then the new #core-js and #core-php channels in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a> are perfect for you.</li>\n</ul>\n<p><i>If you have a story we should consider including in the next “Month in WordPress” post, please </i><a href="https://make.wordpress.org/community/month-in-wordpress-submissions/"><i>submit it here</i></a><i>.</i></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Jul 2017 11:42:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Gutenberg Contributors Explore Adding Drag-and-Drop and Multi-Column Support for Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72638";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:108:"https://wptavern.com/gutenberg-contributors-explore-adding-drag-and-drop-and-multi-column-support-for-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6817:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/building-blocks.jpg?ssl=1"><img /></a>photo credit: ruudgreven <a href="http://www.flickr.com/photos/40811229@N07/6180817922">DSC_0012</a> &#8211; <a href="https://creativecommons.org/licenses/by-nc-sa/2.0/">(license)</a>\n<p>The new Gutenberg editor has an open ticket for <a href="https://github.com/WordPress/gutenberg/issues/38#issuecomment-309998712" target="_blank">allowing users to sort blocks via drag and drop</a>. Blocks can currently be sorted with up and down arrows located to the left of the content but the beta only allows for single-column stacking.</p>\n<p>One of the goals for Gutenberg is to provide &#8220;a page building experience that makes it easy to create rich post layouts.&#8221; As far as layout building goes, the first planned versions of the new editor are very primitive as compared to Wix and Weebly&#8217;s drag and drop website builders where nearly every element on the page can be easily moved to a different position.</p>\n<p>Contributors have been discussing the intricacies of adding this feature to Gutenberg since February. James Nylen <a href="https://github.com/WordPress/gutenberg/issues/38#issuecomment-309984280" target="_blank">summarized some of the challenges</a> that make drag and drop more complicated to implement: </p>\n<blockquote><p>Dragging and dropping a block is not really a one-step operation. It is more like 3:</p>\n<ol>\n<li>Press and hold mouse button or screen</li>\n<li>Move to desired location</li>\n<li>Release</li>\n</ol>\n<p>Step 2 is incredibly difficult to get right, and requires a lot of complicated behaviors like duplicating an item (or at least its general shape and size), scroll handling, and determining the intended new location, especially at the beginning and end of the content. We have all used bad drag-and-drop experiences, and I would argue they are worse than not having it at all.</p>\n<p>That said, for two-dimensional movement with columns, I agree that arrows alone are probably not a good solution. Though mobile support for that is going to be very tricky no matter how it works.</p></blockquote>\n<p>Several commenters on the ticket agree that repeatedly clicking arrows to move blocks is cumbersome and will become untenable in the future when multi-column support is added. This would require up, down, right, and left arrows to rearrange content. Users have come to expect a drag-and-drop interface, because nearly every page builder application offers it.</p>\n<p>&#8220;We are thinking of drag and drop as a progressive enhancement for desktops,&#8221; Joen Asmussen said. &#8220;One that would be great to have, but we should build it after we have explicit button actions in place for doing the same, including splitting into columns in the future. This decision is based on a desire to ensure accessibility as well as mobile devices can play the same game.&#8221;</p>\n<p>Asmussen marked the ticket priority as low in May and removed it from the beta milestone. At this point, users are not likely to see drag and drop in the first release that ships with WordPress core. </p>\n<h3>Multi-Column Layouts Planned for Gutenberg V2</h3>\n<p>The discussion surrounding adding drag-and-drop to the editor naturally leads into <a href="https://github.com/WordPress/gutenberg/issues/219" target="_blank">adding multi-column support</a>. Limiting users to a single column is a one-dimensional approach to designing pages, but contributors don&#8217;t plan to leave Gutenberg without multi-column support for long. </p>\n<p>Geoarge Olaru, a designer at <a href="https://pixelgrade.com/" target="_blank">PixelGrade</a>, shared a <a href="https://invis.io/3FAS8VQE8#/222711568_Creating_Columns_-_0" target="_blank">prototype</a> for adding a simple two or three-grid column layout to Gutenberg. </p>\n<p>&#8220;Extending WordPress further from the default Blog Posts automatically implies the need of multi-column layouts for presentation pages,&#8221; Olaru said. &#8220;I would prefer to tackle this feature upfront, rather than letting every developer do it on his own (see the multitude of page builders plugins).&#8221;</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/06/multi-column-mockup.png?ssl=1"><img /></a></p>\n<p>&#8220;For the V1 editor, I&#8217;m afraid columns like this is out of scope,&#8221; Asmussen <a href="https://github.com/WordPress/gutenberg/issues/219#issuecomment-285330922" target="_blank">said</a> in reply to a Olaru&#8217;s ticket with mockups and a prototype for multi-column support. &#8220;That&#8217;s not a &#8216;no&#8217; — rather, we need some technical foundations to be solid first, before we commit to the really interesting stuff. But it might be a V1.1, or at the very least something for the customization folks later on in the year. Even before that, it would be good to keep this UI in mind, so that perhaps a plugin can add this even earlier.&#8221; </p>\n<p>Other commenters on the ticket feel more urgency about getting multi-column support into the first version of the editor. One of the concerns is that plugin developers will rush to add columns immediately based on demands from users, who will then have to migrate once core adds support.</p>\n<p>&#8220;Multi column layouts are a must-have,&#8221; Anthony Hortin commented on the ticket. &#8220;At the moment, Gutenberg isn&#8217;t solving any issue. You still end up with one long column of content. The whole reason page builders are so popular, and why hundreds of thousands of people are using them, is because they provide the ability to easily make multi-column layouts. Without this functionality, you&#8217;re not providing any reason to use Gutenberg over a page builder plugin.&#8221;</p>\n<p>One of the main challenges of adding multi-column support is figuring out what type of grid system to use and making sure that it scales from mobile to desktop. Weston Ruter joined the discussion to say that the foundational work for nested block support is being done now in version 1, but the UI for displaying them hasn&#8217;t been implemented yet.</p>\n<p>&#8220;I appreciate the excitement and urgency to wanting columns,&#8221; Asmussen said. &#8220;We feel the same urgency. It&#8217;s not about not wanting columns, it&#8217;s purely about managing resources at this point.&#8221;</p>\n<p>The good news is if you&#8217;ve been testing Gutenberg and wondering where some of these features are on the roadmap, they will be coming in later versions. While there may be disagreements about how much of a priority drag-and-drop and multi-column support should have for version 1, contributors agree that laying a solid technical foundation for these features is crucial for future extensibility.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 01 Jul 2017 19:06:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:116:"WPTavern: Gutenberg 0.3.0 Adds Front-End Styles for Core Blocks, Notices Framework, and Text and Image Quick Inserts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=72646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:125:"https://wptavern.com/gutenberg-0-3-0-adds-front-end-styles-for-core-blocks-notices-framework-and-text-and-image-quick-inserts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4557:"<p>Gutenberg development is marching ahead with <a href="https://make.wordpress.org/core/2017/06/30/whats-new-in-gutenberg-june-30/" target="_blank">version 0.3.0</a> released today. New releases are shipping out on a weekly basis, so testers will get to discover another round of new additions after updating to the latest. The <a href="https://wordpress.org/plugins/gutenberg/#developers" target="_blank">changelog</a> has a full list of the 50 additions and improvements included in this release, but here&#8217;s a quick visual tour of a few of the most interesting user-facing features added this week.</p>\n<p>Gutenberg developers have <a href="https://github.com/WordPress/gutenberg/pull/1418" target="_blank">added front-end styles for core blocks</a>, which means that content like cover images will now appear the same as they look in the admin in the editor. The demo content in the plugin has also been <a href="https://github.com/WordPress/gutenberg/pull/1493" target="_blank">updated to display a full-width cover image</a>. Below is an example of a standard width cover image on the front-end.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/06/cover-image-frontend.png?ssl=1"><img /></a></p>\n<p>Version 0.3.0 also includes new <a href="https://github.com/WordPress/gutenberg/pull/1553" target="_blank">text and image quick inserts</a>, which appear when hovering over the blank space beneath the post content. This makes it faster to add the types of content that are used most frequently.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/06/text-and-image-quick-inserts.png?ssl=1"><img /></a></p>\n<p>This release adds a <a href="https://github.com/WordPress/gutenberg/pull/1437" target="_blank">framework for notices</a>, which provides developers with reusable notices components, showing how to trigger notices and where they will show up. Gutenberg now displays <a href="https://github.com/WordPress/gutenberg/pull/1564" target="_blank">notices on post save, schedule, and update</a>.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/06/gutenberg-notices.png?ssl=1"><img /></a></p>\n<p>Version 0.3.0 adds a new <a href="https://github.com/WordPress/gutenberg/pull/1555" target="_blank">block descriptions component</a> to blocks with inspector controls. Several of the core blocks now display descriptions. These will be especially useful when plugin developers begin adding their own custom blocks, offering users a quick way to see the purpose of the block.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/06/block-description-e1498855903121.png?ssl=1"><img /></a></p>\n<p>This release adds more placeholder text to various blocks, as &#8220;placeholders are key,&#8221; according to the newly added <a href="http://gutenberg-devdoc.surge.sh/?selectedKind=Gutenberg&selectedStory=Design&full=0&down=1&left=1&panelRight=1&downPanel=storybooks%2Fstorybook-addon-knobs" target="_blank">design blueprints and principles</a> included in Gutenberg&#8217;s documentation:</p>\n<blockquote><p>If your block can have a neutral placeholder state, it should. An image placeholder block shows a button to open the media library, a text placeholder block shows a writing prompt. By embracing placeholders we can predefine editable layouts, so all you have to do is fill out the blanks.</p></blockquote>\n<p>Version 0.3.0 also adds several enhancements that make it easier to edit and customize the image-oriented blocks with more options and settings: </p>\n<ul>\n<li>Added “edit image” button to image and cover image blocks</li>\n<li>Added option to visually crop images in galleries for nicer alignment</li>\n<li>Added option to disable dimming the background in cover images</li>\n<li>Added option to display date and to configure number of posts in LatestPosts block</li>\n<li>Added text formatting to CoverImage block</li>\n<li>Added toggle option for fixed background in CoverImage</li>\n<li>Added placeholder for all text blocks</li>\n<li>Added placeholder text for headings, quotes, etc</li>\n</ul>\n<p>Active installs for the <a href="https://wordpress.org/plugins/gutenberg/" target="_blank">Gutenberg plugin</a> have nearly doubled since last week and are at more than 900 sites. This is roughly 1% of the goal Matt Mullenweg set for testing on 100,000 sites before replacing the edit screen. The plugin may also be advertised in the dashboard in a future release, possibly 4.8.1, which is slated for the end of July.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Jun 2017 22:07:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: Popular WordPress Plugins Slow to Add Meta Box Support for Calypso";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=71527";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wptavern.com/popular-wordpress-plugins-slow-to-add-meta-box-support-for-calypso";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3361:"<p>During the State of the Word at WordCamp US 2016, Matt Mullenweg <a href="https://wptavern.com/state-of-the-word-2016-mullenweg-pushes-calypso-as-future-of-wordpress-interface-proposes-major-changes-to-release-cycle">announced</a> that Calypso was <a href="https://youtu.be/Nl6U7UotA-M?t=37m1s">plugin aware</a>. Calypso is a REST API and React <a href="https://wptavern.com/early-reviews-show-applications-like-calypso-are-the-future-of-wordpress">powered application</a> for the desktop created by Automattic <a href="https://ma.tt/2015/11/dance-to-calypso/">in 2015</a>.</p>\n<p>Developers with plugins active on 1M sites or more <a href="https://github.com/Automattic/wp-calypso/pull/10517">received an email invitation</a> from Andy Peatling to begin building support for Calypso.</p>\n<p>&#8220;Calypso is now plugin-aware,&#8221; Mullenweg said. &#8220;This pull request was merged today, and as a way to bootstrap this, we’re opening up for what I just described for plugins to create Calypso interfaces for what they’re doing.</p>\n<p>&#8220;Basically saying, if you’re using Calypso on a site that has one of these plugins, let’s say WooCommerce, all of a sudden in the interface, there will be all the WooCommerce stuff. It’ll talk to the API, it will run on the desktop just like the rest of Calypso, and it will only be loaded if the plugin is active.&#8221;</p>\n<p>One of the major differences between <a href="https://developer.wordpress.com/calypso/">Calypso</a> and WP-Admin is that custom meta boxes added by plugins are not accessible in Calypso.</p>\n<p>Nearly seven months since the announcement, popular WordPress plugins have struggled to add meta box support, including those maintained by Automattic. <a href="https://wordpress.org/plugins/wordpress-seo/">WordPress SEO</a>, active on more than 3M sites, is among the plugins that were selected to take part in the experiment.</p>\n<p>When asked about the progress of making WordPress SEO Calypso aware, Joost de Valk, founder of <a href="https://yoast.com/">Yoast.com</a>, declined to comment.</p>\n<p>Automattic has seen little progress on the initiative, &#8220;No news to report at this time, but hope to have some soon,&#8221; Automattic representative Mark Armstrong said. WooCommerce has yet to add meta box support and settings pages in Calypso.</p>\n<p>Gutenberg, WordPress&#8217; new editor, is also built using React. One of the chief concerns expressed by users and developers is how it will <a href="https://github.com/WordPress/gutenberg/issues/952">support custom meta boxes</a> built using the current PHP framework.</p>\n<p>&#8220;I miss a lot of the meta boxes I’m used to seeing on the screen,&#8221; <a href="https://daily.jorb.in/2017/06/random-thoughts-on-gutenberg/">Aaron Jorbin said</a>. &#8220;Things like Yoast SEO (on some sites) and custom taxonomies are just not shown. If every meta box ever made for WordPress needs to be remade, it sure is going to make developers lives a living hell.&#8221;</p>\n<p>I want to use Calypso as a replacement for WP-Admin because it&#8217;s fast and I like the interface. However, I can&#8217;t do that until it supports meta boxes for the plugins I rely on, such as Edit Flow. Is the lack of custom meta box support for Calypso a sign of what&#8217;s to come with Gutenberg?</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Jun 2017 20:05:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 27 Jul 2017 07:03:28 GMT";s:12:"content-type";s:8:"text/xml";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Thu, 27 Jul 2017 07:00:10 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130910223210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(342, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1501182210', 'no'),
(343, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1501139010', 'no'),
(344, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1501182210', 'no'),
(345, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/''>The Month in WordPress: June 2017</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/adobe-to-discontinue-flash-support-and-updates-in-2020''>WPTavern: Adobe to Discontinue Flash Support and Updates in 2020</a></li><li><a class=''rsswidget'' href=''https://heropress.com/essays/random-diary-chapters/?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=random-diary-chapters''>HeroPress: Random Diary Chapters</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/sitelock-acquires-patchmans-malware-and-vulnerability-detection-technology-expands-wordpress-customer-base-to-4-million''>WPTavern: SiteLock Acquires Patchman’s Malware and Vulnerability Detection Technology, Expands WordPress Customer Base to 4 Million</a></li></ul></div>', 'no'),
(347, 'woocommerce_db_version', '3.1.1', 'yes'),
(348, 'woocommerce_version', '3.1.1', 'yes'),
(349, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(350, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(351, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(352, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(353, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(356, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(358, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(359, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(360, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(361, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(362, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(364, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(365, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(366, '_transient_timeout_geoip_::1', '1501743929', 'no'),
(367, '_transient_geoip_::1', '', 'no'),
(368, '_transient_timeout_external_ip_address_::1', '1501743930', 'no'),
(369, '_transient_external_ip_address_::1', '117.227.91.44', 'no'),
(370, '_transient_timeout_geoip_117.227.91.44', '1501743932', 'no'),
(371, '_transient_geoip_117.227.91.44', 'IN', 'no'),
(372, 'woocommerce_allow_tracking', 'yes', 'yes'),
(373, 'woocommerce_tracker_last_send', '1501139213', 'yes'),
(374, '_transient_product_query-transient-version', '1501139245', 'yes'),
(376, '_transient_is_multi_author', '0', 'yes'),
(377, '_transient_timeout_wc_report_sales_by_date', '1501225666', 'no'),
(378, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"6a41d0498984fbf948a2b4f2a99876c2";a:0:{}s:32:"471b30a57ce52f5ce001842576fe7692";a:0:{}s:32:"13a6cfef990fc543330c665b5476a921";a:0:{}s:32:"920f77e801fe0dbedb0f4f037b22e780";N;s:32:"a31306cc422b2d8d3fa61b207908069d";a:0:{}s:32:"ef238291c113f0a326fe103ec416444c";a:0:{}s:32:"1fbd0ce751d390ea8fb613f8c02d2a76";a:0:{}s:32:"9f733fd43d8145b49da5edb0e41cb4d5";a:0:{}}', 'no'),
(379, '_transient_timeout_wc_admin_report', '1501225666', 'no'),
(380, '_transient_wc_admin_report', 'a:1:{s:32:"98aa17c1be8959b412c712b82077fc4a";a:0:{}}', 'no'),
(381, '_transient_timeout_wc_low_stock_count', '1503731266', 'no'),
(382, '_transient_wc_low_stock_count', '0', 'no'),
(383, '_transient_timeout_wc_outofstock_count', '1503731267', 'no'),
(384, '_transient_wc_outofstock_count', '0', 'no'),
(385, '_site_transient_timeout_wporg_theme_feature_list', '1501150468', 'no'),
(386, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(387, '_transient_timeout__woocommerce_helper_subscriptions', '1501141275', 'no'),
(388, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(389, '_transient_timeout__woocommerce_helper_updates', '1501183576', 'no'),
(390, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1501140375;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(392, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1501140391;s:7:"checked";a:4:{s:6:"anissa";s:5:"0.0.5";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(393, 'current_theme', 'Anissa', 'yes'),
(394, 'theme_mods_anissa', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(395, 'theme_switched', '', 'yes'),
(396, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/07/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/07/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(5, 4, '_customize_draft_post_name', 'espresso'),
(6, 5, '_wp_attached_file', '2017/07/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/07/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(9, 5, '_customize_draft_post_name', 'sandwich'),
(10, 6, '_wp_attached_file', '2017/07/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2017/07/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(13, 6, '_customize_draft_post_name', 'coffee'),
(14, 7, '_customize_draft_post_name', 'home'),
(15, 8, '_thumbnail_id', '5'),
(16, 8, '_customize_draft_post_name', 'about'),
(17, 9, '_thumbnail_id', '4'),
(18, 9, '_customize_draft_post_name', 'contact'),
(19, 10, '_thumbnail_id', '6'),
(20, 10, '_customize_draft_post_name', 'blog'),
(21, 11, '_thumbnail_id', '4'),
(22, 11, '_customize_draft_post_name', 'a-homepage-section'),
(23, 13, '_wc_review_count', '0'),
(24, 13, '_wc_rating_count', 'a:0:{}'),
(25, 13, '_wc_average_rating', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-26 17:39:28', '2017-07-26 17:39:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-07-26 17:39:28', '2017-07-26 17:39:28', '', 0, 'http://localhost/wrdpresskame/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-26 17:39:28', '2017-07-26 17:39:28', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wrdpresskame/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-07-26 17:39:28', '2017-07-26 17:39:28', '', 0, 'http://localhost/wrdpresskame/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-07-26 17:39:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-26 17:39:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-07-27 07:03:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/wp-content/uploads/2017/07/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-07-27 07:03:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/wp-content/uploads/2017/07/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-07-27 07:03:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/wp-content/uploads/2017/07/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-27 07:03:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-27 07:03:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-27 07:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-27 07:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-27 07:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-07-27 07:03:17', '0000-00-00 00:00:00', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "cc3599a936e0d5dbd3c9deec1145e124"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "2f12d6c9d9c55e7a1f745a65ef92d073"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "3313b409cda50220bf5bc6dc4fbeeb3d"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "cc3599a936e0d5dbd3c9deec1145e124"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "3313b409cda50220bf5bc6dc4fbeeb3d"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "2f12d6c9d9c55e7a1f745a65ef92d073"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "Top Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/wrdpresskame/wordpress/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 8,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "About"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 10,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "Blog"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 9,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "Contact"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "Social Links Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 7,\n        "type": "option",\n        "user_id": 1\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 10,\n        "type": "option",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 8,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 9,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '74f4c865-716b-4e13-b0de-ee1d5075af14', '', '', '2017-07-27 07:03:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2017-07-27 07:07:25', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-07-27 07:07:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wrdpresskame/wordpress/?post_type=product&p=13', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(11, 'featured', 'featured', 0),
(12, 'outofstock', 'outofstock', 0),
(14, 'rated-1', 'rated-1', 0),
(15, 'rated-2', 'rated-2', 0),
(17, 'rated-3', 'rated-3', 0),
(18, 'rated-4', 'rated-4', 0),
(20, 'rated-5', 'rated-5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"4e77e0909955504916e6713073ee791eaaf61fe58c1af2fb5291646c94f6ec65";a:4:{s:10:"expiration";i:1501263588;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1501090788;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3/898MxKY3kH4H8mVsaT5qODt8hcL0', 'admin', 'krishv.krishv51@gmail.com', '', '2017-07-26 17:39:27', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:1:{s:8:"customer";s:679:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"JH";s:7:"country";s:2:"IN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JH";s:16:"shipping_country";s:2:"IN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:25:"krishv.krishv51@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1501312057);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;
--
-- Database: `wp_demo`
--
CREATE DATABASE IF NOT EXISTS `wp_demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wp_demo`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-19 15:45:19', '2017-07-19 15:45:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=468 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Click Home', 'yes'),
(4, 'blogdescription', 'Kitchen Items', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'krishv.krishv51@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '6', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:17:"index.php/shop/?$";s:27:"index.php?post_type=product";s:47:"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:42:"index.php/shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"index.php/shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:65:"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:60:"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:41:"index.php/product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:53:"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:35:"index.php/product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:62:"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:57:"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:38:"index.php/product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:50:"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:32:"index.php/product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"index.php/product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:43:"index.php/product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:1;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:60:"C:\\wamp\\www\\wordpress/wp-content/themes/storevilla/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'storevilla', 'yes'),
(41, 'stylesheet', 'storevilla', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:12:{s:19:"wp_inactive_widgets";a:0:{}s:20:"storevillasidebarone";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:20:"storevillasidebartwo";a:0:{}s:19:"storevillaheaderone";a:0:{}s:20:"storevillamainwidget";a:0:{}s:18:"storevillafooter-1";a:0:{}s:18:"storevillafooter-2";a:0:{}s:18:"storevillafooter-3";a:0:{}s:18:"storevillafooter-4";a:0:{}s:18:"storevillafooter-5";a:0:{}s:19:"storevillaquickinfo";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'cron', 'a:9:{i:1501090075;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1501092938;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501113600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501127121;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501136138;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501136332;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501170344;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501545600;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(108, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1500531542;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(112, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1501087922;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_timeout_browser_6aa1710f6cbdaeb3492b9b81a594db91', '1501083947', 'no'),
(120, '_site_transient_browser_6aa1710f6cbdaeb3492b9b81a594db91', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(127, '_transient_timeout_plugin_slugs', '1500616406', 'no'),
(128, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(129, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'core_updater.lock', '1500481131', 'no'),
(165, 'woocommerce_default_country', 'IN:JH', 'yes'),
(166, 'woocommerce_allowed_countries', 'all', 'yes'),
(167, 'woocommerce_all_except_countries', '', 'yes'),
(168, 'woocommerce_specific_allowed_countries', '', 'yes'),
(169, 'woocommerce_ship_to_countries', '', 'yes'),
(170, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(171, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(172, 'woocommerce_calc_taxes', 'yes', 'yes'),
(173, 'woocommerce_demo_store', 'no', 'yes'),
(174, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(175, 'woocommerce_currency', 'INR', 'yes'),
(176, 'woocommerce_currency_pos', 'left', 'yes'),
(177, 'woocommerce_price_thousand_sep', ',', 'yes'),
(178, 'woocommerce_price_decimal_sep', '.', 'yes'),
(179, 'woocommerce_price_num_decimals', '2', 'yes'),
(180, 'woocommerce_weight_unit', 'kg', 'yes'),
(181, 'woocommerce_dimension_unit', 'cm', 'yes'),
(182, 'woocommerce_enable_reviews', 'yes', 'yes'),
(183, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(184, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(185, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(186, 'woocommerce_review_rating_required', 'yes', 'no'),
(187, 'woocommerce_shop_page_id', '4', 'yes'),
(188, 'woocommerce_shop_page_display', '', 'yes'),
(189, 'woocommerce_category_archive_display', '', 'yes'),
(190, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(191, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(192, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(193, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(194, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(195, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(196, 'woocommerce_manage_stock', 'yes', 'yes'),
(197, 'woocommerce_hold_stock_minutes', '60', 'no'),
(198, 'woocommerce_notify_low_stock', 'yes', 'no'),
(199, 'woocommerce_notify_no_stock', 'yes', 'no'),
(200, 'woocommerce_stock_email_recipient', 'krishv.krishv51@gmail.com', 'no'),
(201, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(202, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(203, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(204, 'woocommerce_stock_format', '', 'yes'),
(205, 'woocommerce_file_download_method', 'force', 'no'),
(206, 'woocommerce_downloads_require_login', 'no', 'no'),
(207, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(208, 'woocommerce_prices_include_tax', 'yes', 'yes'),
(209, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(210, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(211, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(212, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(213, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(214, 'woocommerce_tax_display_cart', 'excl', 'no'),
(215, 'woocommerce_price_display_suffix', '', 'yes'),
(216, 'woocommerce_tax_total_display', 'itemized', 'no'),
(217, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(218, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(219, 'woocommerce_ship_to_destination', 'billing', 'no'),
(220, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(221, 'woocommerce_enable_coupons', 'yes', 'yes'),
(222, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(223, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(224, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(225, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(226, 'woocommerce_cart_page_id', '5', 'yes'),
(227, 'woocommerce_checkout_page_id', '6', 'yes'),
(228, 'woocommerce_terms_page_id', '', 'no'),
(229, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(230, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(231, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(232, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(233, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(234, 'woocommerce_myaccount_page_id', '7', 'yes'),
(235, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(236, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(237, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(238, 'woocommerce_registration_generate_username', 'yes', 'no'),
(239, 'woocommerce_registration_generate_password', 'no', 'no'),
(240, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(241, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(242, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(243, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(244, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(245, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(246, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(247, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(248, 'woocommerce_email_from_name', 'ecommerce', 'no'),
(249, 'woocommerce_email_from_address', 'krishv.krishv51@gmail.com', 'no'),
(250, 'woocommerce_email_header_image', '', 'no'),
(251, 'woocommerce_email_footer_text', 'ecommerce - Powered by WooCommerce', 'no'),
(252, 'woocommerce_email_base_color', '#96588a', 'no'),
(253, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(254, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(255, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(256, 'woocommerce_api_enabled', 'yes', 'yes'),
(260, 'woocommerce_db_version', '3.1.1', 'yes'),
(261, 'woocommerce_version', '3.1.1', 'yes'),
(262, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(263, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(264, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(266, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(268, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(269, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(270, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(271, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(272, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(273, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(276, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(278, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(279, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(280, '_transient_timeout_geoip_::1', '1501136171', 'no'),
(281, '_transient_geoip_::1', '', 'no'),
(282, '_transient_timeout_external_ip_address_::1', '1501136172', 'no'),
(283, '_transient_external_ip_address_::1', '47.29.10.179', 'no'),
(284, '_transient_timeout_geoip_47.29.10.179', '1501136173', 'no'),
(285, '_transient_geoip_47.29.10.179', 'IN', 'no'),
(286, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(287, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(288, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:25:"krishv.krishv51@gmail.com";}', 'yes'),
(289, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(290, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(291, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(293, 'wc_ppec_version', '1.4.2', 'yes'),
(294, 'wc_gateway_ppce_bootstrap_warning_message', 'WooCommerce Gateway PayPal Express Checkout requires OpenSSL >= 1.0.1 to be installed on your server', 'yes'),
(303, '_transient_shipping-transient-version', '1500531533', 'yes'),
(304, '_transient_timeout_wc_shipping_method_count_0_1500531533', '1503123533', 'no'),
(305, '_transient_wc_shipping_method_count_0_1500531533', '0', 'no'),
(306, '_transient_product_query-transient-version', '1500540404', 'yes'),
(307, 'current_theme', 'StoreVilla', 'yes'),
(308, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(310, 'theme_mods_storefront', 'a:5:{s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1500532082;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(311, 'storefront_nux_fresh_site', '0', 'yes'),
(316, '_transient_product-transient-version', '1500540404', 'yes'),
(326, '_transient_timeout_wc_shipping_method_count_1_1500531533', '1503123913', 'no'),
(327, '_transient_wc_shipping_method_count_1_1500531533', '0', 'no'),
(328, 'storefront_nux_dismissed', '1', 'yes'),
(333, 'theme_mods_storevilla', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:34:"storevilla_web_page_layout_options";s:6:"enable";s:45:"storevilla_woocommerce_display_product_number";i:6;}', 'yes'),
(334, 'widget_storevilla_latest_product_cat_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_storevilla_cat_with_product_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_storevilla_cat_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'widget_storevilla_product_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(338, 'widget_storevilla_column_product_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(339, 'widget_storevilla_contact_info_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(340, 'widget_storevilla_aboutus_info_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'widget_storevilla_blog_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(342, 'widget_storevilla_testimonial_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(343, 'storevilla_plugin_installed_notif', '0', 'yes'),
(350, '_site_transient_timeout_available_translations', '1500543061', 'no'),
(351, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 21:35:47";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-09 03:55:46";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 20:31:44";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.8/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-18 19:16:01";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-16 11:47:56";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 13:21:24";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 23:24:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 21:25:12";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 08:50:23";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-08 16:08:42";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-15 19:58:49";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.8/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 18:05:57";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 08:09:19";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 07:18:00";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 05:14:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 16:48:27";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-27 10:36:23";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-20 00:55:30";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-16 17:22:41";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-07 00:53:01";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-18 10:53:33";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 08:00:44";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 18:25:22";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 06:47:57";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-07 13:48:37";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 17:58:06";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 20:40:15";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-07 12:07:46";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:33:29";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-16 17:29:16";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-19 08:19:39";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-12 12:20:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-04 13:01:37";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-25 11:16:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-12 09:20:11";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-16 18:44:50";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-19 07:08:35";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 11:43:04";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 19:40:47";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-26 11:11:30";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 11:30:58";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-20 17:04:00";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-18 18:26:58";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 13:05:53";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-19 13:38:04";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 10:24:37";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-13 23:57:05";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-15 10:32:19";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:54:09";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 09:02:13";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 15:29:14";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 11:06:53";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-18 17:49:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-19 13:54:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-01 22:52:09";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-02 09:17:00";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 11:24:18";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-16 05:48:05";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 10:14:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(352, 'WPLANG', '', 'yes'),
(364, '_transient_timeout_wc_related_10', '1500619123', 'no'),
(365, '_transient_wc_related_10', 'a:0:{}', 'no'),
(366, 'category_children', 'a:0:{}', 'yes'),
(376, '_transient_timeout_wc_related_17', '1500621132', 'no'),
(377, '_transient_wc_related_17', 'a:2:{i:0;s:1:"8";i:1;s:2:"15";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(382, '_transient_timeout_wc_related_19', '1500621557', 'no'),
(383, '_transient_wc_related_19', 'a:1:{i:0;s:2:"10";}', 'no'),
(398, '_transient_timeout_wc_related_23', '1500622756', 'no'),
(399, '_transient_wc_related_23', 'a:1:{i:0;s:2:"21";}', 'no'),
(400, 'theme_mods_nevada-lite', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1500536837;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:17:"side_sidebar_area";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:16:"top_sidebar_area";a:0:{}s:19:"footer_sidebar_area";a:0:{}}}}', 'yes'),
(407, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1501087907;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.1.1.zip";}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":6:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.4.2";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.4.2.zip";}}}', 'no'),
(412, '_transient_timeout_wc_related_31', '1500623510', 'no'),
(413, '_transient_wc_related_31', 'a:2:{i:0;s:2:"21";i:1;s:2:"23";}', 'no'),
(417, '_transient_timeout_wc_related_33', '1500624423', 'no'),
(418, '_transient_wc_related_33', 'a:3:{i:0;s:2:"21";i:1;s:2:"23";i:2;s:2:"31";}', 'no'),
(428, 'product_cat_children', 'a:0:{}', 'yes'),
(432, '_transient_is_multi_author', '0', 'yes'),
(433, '_transient_timeout_wc_term_counts', '1503132481', 'no'),
(434, '_transient_wc_term_counts', 'a:4:{i:16;s:1:"2";i:17;s:1:"5";i:15;s:1:"3";i:18;s:1:"2";}', 'no'),
(435, '_transient_timeout_wc_low_stock_count', '1503132835', 'no'),
(436, '_transient_wc_low_stock_count', '0', 'no'),
(437, '_transient_timeout_wc_outofstock_count', '1503132835', 'no'),
(438, '_transient_wc_outofstock_count', '0', 'no'),
(447, '_transient_timeout_wc_report_sales_by_date', '1501140269', 'no'),
(448, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"295f51006ea235a08b2c5bf093cc4d23";a:0:{}s:32:"283d33c10a18d58180ecb6813f0f6412";a:0:{}s:32:"42412de344605e6c1ec09754e59bb512";a:0:{}s:32:"76a751944a2445a4834b4ae745032555";N;s:32:"621f1ba83e37627157ad2467226cf2a1";a:0:{}s:32:"e18f19a04617d8a9a06283a65e876a32";a:0:{}s:32:"caf888cb177ca86ccd9a1dec4f4a8c95";a:0:{}s:32:"ea9b0133c69ca346ab01c90d9c9d269d";a:0:{}}', 'no'),
(449, '_transient_timeout_wc_admin_report', '1501140269', 'no'),
(450, '_transient_wc_admin_report', 'a:1:{s:32:"98aa17c1be8959b412c712b82077fc4a";a:0:{}}', 'no'),
(451, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1501097074', 'no'),
(452, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(455, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1501065427', 'no'),
(456, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4353;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2488;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2356;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2220;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1824;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1596;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1576;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1434;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1349;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1345;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1329;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1270;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1266;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1117;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1048;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1042;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:995;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:939;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:815;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:800;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:799;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:772;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:764;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:667;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:662;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:660;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:653;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:637;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:636;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:616;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:601;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:591;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:587;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:585;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:573;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:571;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:564;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:553;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:542;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:540;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:533;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:520;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:509;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:503;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:495;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:493;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:480;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:472;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:471;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:469;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:465;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:443;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:440;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:436;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:436;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:435;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:425;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:412;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:405;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:400;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:400;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:395;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:380;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:379;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:377;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:369;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:352;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:344;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:333;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:329;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:329;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:323;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:323;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:320;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:318;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:317;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:317;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:302;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:298;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:292;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:291;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:282;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:281;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:280;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:278;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:275;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:275;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:266;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:266;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:265;}}', 'no'),
(459, '_site_transient_timeout_theme_roots', '1501088281', 'no'),
(460, '_site_transient_theme_roots', 'a:7:{s:11:"alhena-lite";s:7:"/themes";s:11:"nevada-lite";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:10:"storevilla";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(461, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1501087920;s:7:"checked";a:7:{s:11:"alhena-lite";s:5:"2.2.6";s:11:"nevada-lite";s:5:"1.0.1";s:10:"storefront";s:5:"2.2.4";s:10:"storevilla";s:5:"1.2.0";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:1:{s:11:"alhena-lite";a:4:{s:5:"theme";s:11:"alhena-lite";s:11:"new_version";s:5:"2.2.7";s:3:"url";s:41:"https://wordpress.org/themes/alhena-lite/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/alhena-lite.2.2.7.zip";}}s:12:"translations";a:0:{}}', 'no'),
(462, '_site_transient_timeout_wporg_theme_feature_list', '1501098554', 'no'),
(463, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(464, '_transient_timeout__woocommerce_helper_subscriptions', '1501088812', 'no'),
(465, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(466, '_transient_timeout__woocommerce_helper_updates', '1501131114', 'no'),
(467, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1501087912;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=500 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wc_review_count', '0'),
(3, 8, '_wc_rating_count', 'a:0:{}'),
(4, 8, '_wc_average_rating', '0'),
(5, 8, '_edit_last', '1'),
(6, 8, '_edit_lock', '1500531850:1'),
(7, 9, '_wp_attached_file', '2017/07/61uLVByKhL._SL1500.jpg'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1176;s:6:"height";i:1500;s:4:"file";s:30:"2017/07/61uLVByKhL._SL1500.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"61uLVByKhL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"61uLVByKhL._SL1500-235x300.jpg";s:5:"width";i:235;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"61uLVByKhL._SL1500-768x980.jpg";s:5:"width";i:768;s:6:"height";i:980;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"61uLVByKhL._SL1500-803x1024.jpg";s:5:"width";i:803;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"61uLVByKhL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"61uLVByKhL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"61uLVByKhL._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 8, '_thumbnail_id', '9'),
(10, 8, '_sku', ''),
(11, 8, '_regular_price', '3499'),
(12, 8, '_sale_price', '1989'),
(13, 8, '_sale_price_dates_from', ''),
(14, 8, '_sale_price_dates_to', ''),
(15, 8, 'total_sales', '0'),
(16, 8, '_tax_status', 'taxable'),
(17, 8, '_tax_class', ''),
(18, 8, '_manage_stock', 'no'),
(19, 8, '_backorders', 'no'),
(20, 8, '_sold_individually', 'no'),
(21, 8, '_weight', ''),
(22, 8, '_length', ''),
(23, 8, '_width', ''),
(24, 8, '_height', ''),
(25, 8, '_upsell_ids', 'a:0:{}'),
(26, 8, '_crosssell_ids', 'a:0:{}'),
(27, 8, '_purchase_note', ''),
(28, 8, '_default_attributes', 'a:0:{}'),
(29, 8, '_virtual', 'no'),
(30, 8, '_downloadable', 'no'),
(31, 8, '_product_image_gallery', ''),
(32, 8, '_download_limit', '-1'),
(33, 8, '_download_expiry', '-1'),
(34, 8, '_stock', NULL),
(35, 8, '_stock_status', 'instock'),
(36, 8, '_product_version', '3.1.1'),
(37, 8, '_price', '1989'),
(38, 10, '_wc_review_count', '0'),
(39, 10, '_wc_rating_count', 'a:0:{}'),
(40, 10, '_wc_average_rating', '0'),
(41, 10, '_edit_last', '1'),
(42, 10, '_edit_lock', '1500532580:1'),
(43, 10, '_sku', ''),
(44, 10, '_regular_price', '3995'),
(45, 10, '_sale_price', '3063'),
(46, 10, '_sale_price_dates_from', ''),
(47, 10, '_sale_price_dates_to', ''),
(48, 10, 'total_sales', '0'),
(49, 10, '_tax_status', 'taxable'),
(50, 10, '_tax_class', ''),
(51, 10, '_manage_stock', 'no'),
(52, 10, '_backorders', 'no'),
(53, 10, '_sold_individually', 'no'),
(54, 10, '_weight', ''),
(55, 10, '_length', ''),
(56, 10, '_width', ''),
(57, 10, '_height', ''),
(58, 10, '_upsell_ids', 'a:0:{}'),
(59, 10, '_crosssell_ids', 'a:0:{}'),
(60, 10, '_purchase_note', ''),
(61, 10, '_default_attributes', 'a:0:{}'),
(62, 10, '_virtual', 'no'),
(63, 10, '_downloadable', 'no'),
(64, 10, '_product_image_gallery', ''),
(65, 10, '_download_limit', '-1'),
(66, 10, '_download_expiry', '-1'),
(67, 10, '_stock', NULL),
(68, 10, '_stock_status', 'instock'),
(69, 10, '_product_version', '3.1.1'),
(70, 10, '_price', '3063'),
(71, 11, '_wp_attached_file', '2017/07/61R6ZSVGSJL._SL1336.jpg'),
(72, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1336;s:6:"height";i:1200;s:4:"file";s:31:"2017/07/61R6ZSVGSJL._SL1336.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-300x269.jpg";s:5:"width";i:300;s:6:"height";i:269;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-768x690.jpg";s:5:"width";i:768;s:6:"height";i:690;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"61R6ZSVGSJL._SL1336-1024x920.jpg";s:5:"width";i:1024;s:6:"height";i:920;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"61R6ZSVGSJL._SL1336-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"61R6ZSVGSJL._SL1336-195x175.jpg";s:5:"width";i:195;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 10, '_thumbnail_id', '11'),
(74, 12, '_wp_trash_meta_status', 'publish'),
(75, 12, '_wp_trash_meta_time', '1500533118'),
(76, 13, '_edit_last', '1'),
(77, 13, '_edit_lock', '1500533140:1'),
(78, 13, '_wp_page_template', 'default'),
(79, 13, 'storevilla_page_layouts', 'rightsidebar'),
(80, 13, '_wp_trash_meta_status', 'publish'),
(81, 13, '_wp_trash_meta_time', '1500533280'),
(82, 13, '_wp_desired_post_slug', 'home'),
(83, 15, '_wc_review_count', '0'),
(84, 15, '_wc_rating_count', 'a:0:{}'),
(85, 15, '_wc_average_rating', '0'),
(86, 15, '_edit_last', '1'),
(87, 15, '_edit_lock', '1500533499:1'),
(88, 16, '_wp_attached_file', '2017/07/71BSH0mshlL._SL1500.jpg'),
(89, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1500;s:4:"file";s:31:"2017/07/71BSH0mshlL._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"71BSH0mshlL._SL1500-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"71BSH0mshlL._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"71BSH0mshlL._SL1500-175x175.jpg";s:5:"width";i:175;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 15, '_thumbnail_id', '16'),
(91, 15, '_sku', ''),
(92, 15, '_regular_price', '5099'),
(93, 15, '_sale_price', '2678'),
(94, 15, '_sale_price_dates_from', ''),
(95, 15, '_sale_price_dates_to', ''),
(96, 15, 'total_sales', '0'),
(97, 15, '_tax_status', 'taxable'),
(98, 15, '_tax_class', ''),
(99, 15, '_manage_stock', 'no'),
(100, 15, '_backorders', 'no'),
(101, 15, '_sold_individually', 'no'),
(102, 15, '_weight', ''),
(103, 15, '_length', ''),
(104, 15, '_width', ''),
(105, 15, '_height', ''),
(106, 15, '_upsell_ids', 'a:0:{}'),
(107, 15, '_crosssell_ids', 'a:0:{}'),
(108, 15, '_purchase_note', ''),
(109, 15, '_default_attributes', 'a:0:{}'),
(110, 15, '_virtual', 'no'),
(111, 15, '_downloadable', 'no'),
(112, 15, '_product_image_gallery', ''),
(113, 15, '_download_limit', '-1'),
(114, 15, '_download_expiry', '-1'),
(115, 15, '_stock', NULL),
(116, 15, '_stock_status', 'instock'),
(117, 15, '_product_version', '3.1.1'),
(118, 15, '_price', '2678'),
(119, 17, '_wc_review_count', '0'),
(120, 17, '_wc_rating_count', 'a:0:{}'),
(121, 17, '_wc_average_rating', '0'),
(122, 17, '_edit_last', '1'),
(123, 17, '_edit_lock', '1500534589:1'),
(124, 18, '_wp_attached_file', '2017/07/81O4SMS2axL._SL1500.jpg'),
(125, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1292;s:6:"height";i:1500;s:4:"file";s:31:"2017/07/81O4SMS2axL._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-258x300.jpg";s:5:"width";i:258;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-768x892.jpg";s:5:"width";i:768;s:6:"height";i:892;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"81O4SMS2axL._SL1500-882x1024.jpg";s:5:"width";i:882;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"81O4SMS2axL._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"81O4SMS2axL._SL1500-151x175.jpg";s:5:"width";i:151;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 17, '_thumbnail_id', '18'),
(127, 17, '_sku', ''),
(128, 17, '_regular_price', '4495'),
(129, 17, '_sale_price', '3554'),
(130, 17, '_sale_price_dates_from', ''),
(131, 17, '_sale_price_dates_to', ''),
(132, 17, 'total_sales', '0'),
(133, 17, '_tax_status', 'taxable'),
(134, 17, '_tax_class', ''),
(135, 17, '_manage_stock', 'no'),
(136, 17, '_backorders', 'no'),
(137, 17, '_sold_individually', 'no'),
(138, 17, '_weight', ''),
(139, 17, '_length', ''),
(140, 17, '_width', ''),
(141, 17, '_height', ''),
(142, 17, '_upsell_ids', 'a:0:{}'),
(143, 17, '_crosssell_ids', 'a:0:{}'),
(144, 17, '_purchase_note', ''),
(145, 17, '_default_attributes', 'a:0:{}'),
(146, 17, '_virtual', 'no'),
(147, 17, '_downloadable', 'no'),
(148, 17, '_product_image_gallery', ''),
(149, 17, '_download_limit', '-1'),
(150, 17, '_download_expiry', '-1'),
(151, 17, '_stock', NULL),
(152, 17, '_stock_status', 'instock'),
(153, 17, '_product_version', '3.1.1'),
(154, 17, '_price', '3554'),
(155, 19, '_wc_review_count', '0'),
(156, 19, '_wc_rating_count', 'a:0:{}'),
(157, 19, '_wc_average_rating', '0'),
(158, 19, '_edit_last', '1'),
(159, 19, '_edit_lock', '1500535015:1'),
(160, 20, '_wp_attached_file', '2017/07/71A71s3oqcL._SL1500.jpg'),
(161, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:545;s:4:"file";s:31:"2017/07/71A71s3oqcL._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-768x279.jpg";s:5:"width";i:768;s:6:"height";i:279;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"71A71s3oqcL._SL1500-1024x372.jpg";s:5:"width";i:1024;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-600x545.jpg";s:5:"width";i:600;s:6:"height";i:545;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"71A71s3oqcL._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"71A71s3oqcL._SL1500-350x127.jpg";s:5:"width";i:350;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(162, 19, '_thumbnail_id', '20'),
(163, 19, '_sku', ''),
(164, 19, '_regular_price', '4595'),
(165, 19, '_sale_price', '2795'),
(166, 19, '_sale_price_dates_from', ''),
(167, 19, '_sale_price_dates_to', ''),
(168, 19, 'total_sales', '0'),
(169, 19, '_tax_status', 'taxable'),
(170, 19, '_tax_class', ''),
(171, 19, '_manage_stock', 'no'),
(172, 19, '_backorders', 'no'),
(173, 19, '_sold_individually', 'no'),
(174, 19, '_weight', ''),
(175, 19, '_length', ''),
(176, 19, '_width', ''),
(177, 19, '_height', ''),
(178, 19, '_upsell_ids', 'a:0:{}'),
(179, 19, '_crosssell_ids', 'a:0:{}'),
(180, 19, '_purchase_note', ''),
(181, 19, '_default_attributes', 'a:0:{}'),
(182, 19, '_virtual', 'no'),
(183, 19, '_downloadable', 'no'),
(184, 19, '_product_image_gallery', ''),
(185, 19, '_download_limit', '-1'),
(186, 19, '_download_expiry', '-1'),
(187, 19, '_stock', NULL),
(188, 19, '_stock_status', 'instock'),
(189, 19, '_product_version', '3.1.1'),
(190, 19, '_price', '2795'),
(191, 21, '_wc_review_count', '0'),
(192, 21, '_wc_rating_count', 'a:0:{}'),
(193, 21, '_wc_average_rating', '0'),
(194, 21, '_edit_last', '1'),
(195, 21, '_edit_lock', '1500535863:1'),
(196, 22, '_wp_attached_file', '2017/07/81UKNoFDuLL._SL1500.jpg'),
(197, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:942;s:6:"height";i:1500;s:4:"file";s:31:"2017/07/81UKNoFDuLL._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-188x300.jpg";s:5:"width";i:188;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"81UKNoFDuLL._SL1500-768x1223.jpg";s:5:"width";i:768;s:6:"height";i:1223;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"81UKNoFDuLL._SL1500-643x1024.jpg";s:5:"width";i:643;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-942x470.jpg";s:5:"width";i:942;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"81UKNoFDuLL._SL1500-110x175.jpg";s:5:"width";i:110;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 21, '_thumbnail_id', '22'),
(199, 21, '_sku', ''),
(200, 21, '_regular_price', '7495'),
(201, 21, '_sale_price', '5416'),
(202, 21, '_sale_price_dates_from', ''),
(203, 21, '_sale_price_dates_to', ''),
(204, 21, 'total_sales', '0'),
(205, 21, '_tax_status', 'taxable'),
(206, 21, '_tax_class', ''),
(207, 21, '_manage_stock', 'no'),
(208, 21, '_backorders', 'no'),
(209, 21, '_sold_individually', 'no'),
(210, 21, '_weight', ''),
(211, 21, '_length', ''),
(212, 21, '_width', ''),
(213, 21, '_height', ''),
(214, 21, '_upsell_ids', 'a:0:{}'),
(215, 21, '_crosssell_ids', 'a:0:{}'),
(216, 21, '_purchase_note', ''),
(217, 21, '_default_attributes', 'a:0:{}'),
(218, 21, '_virtual', 'no'),
(219, 21, '_downloadable', 'no'),
(220, 21, '_product_image_gallery', ''),
(221, 21, '_download_limit', '-1'),
(222, 21, '_download_expiry', '-1'),
(223, 21, '_stock', NULL),
(224, 21, '_stock_status', 'instock'),
(225, 21, '_product_version', '3.1.1'),
(226, 21, '_price', '5416'),
(227, 23, '_wc_review_count', '0'),
(228, 23, '_wc_rating_count', 'a:0:{}'),
(229, 23, '_wc_average_rating', '0'),
(230, 23, '_edit_last', '1'),
(231, 23, '_edit_lock', '1500536213:1'),
(232, 24, '_wp_attached_file', '2017/07/81MnXUAwg4L._SL1500.jpg'),
(233, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1481;s:4:"file";s:31:"2017/07/81MnXUAwg4L._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-300x296.jpg";s:5:"width";i:300;s:6:"height";i:296;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-768x758.jpg";s:5:"width";i:768;s:6:"height";i:758;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"81MnXUAwg4L._SL1500-1024x1011.jpg";s:5:"width";i:1024;s:6:"height";i:1011;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"81MnXUAwg4L._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"81MnXUAwg4L._SL1500-177x175.jpg";s:5:"width";i:177;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(234, 23, '_thumbnail_id', '24'),
(235, 23, '_sku', ''),
(236, 23, '_regular_price', '3495'),
(237, 23, '_sale_price', '3295'),
(238, 23, '_sale_price_dates_from', ''),
(239, 23, '_sale_price_dates_to', ''),
(240, 23, 'total_sales', '0'),
(241, 23, '_tax_status', 'taxable'),
(242, 23, '_tax_class', ''),
(243, 23, '_manage_stock', 'no'),
(244, 23, '_backorders', 'no'),
(245, 23, '_sold_individually', 'no'),
(246, 23, '_weight', ''),
(247, 23, '_length', ''),
(248, 23, '_width', ''),
(249, 23, '_height', ''),
(250, 23, '_upsell_ids', 'a:0:{}'),
(251, 23, '_crosssell_ids', 'a:0:{}'),
(252, 23, '_purchase_note', ''),
(253, 23, '_default_attributes', 'a:0:{}'),
(254, 23, '_virtual', 'no'),
(255, 23, '_downloadable', 'no'),
(256, 23, '_product_image_gallery', ''),
(257, 23, '_download_limit', '-1'),
(258, 23, '_download_expiry', '-1'),
(259, 23, '_stock', NULL),
(260, 23, '_stock_status', 'instock'),
(261, 23, '_product_version', '3.1.1'),
(262, 23, '_price', '3295'),
(263, 25, '_menu_item_type', 'post_type'),
(264, 25, '_menu_item_menu_item_parent', '0'),
(265, 25, '_menu_item_object_id', '4'),
(266, 25, '_menu_item_object', 'page'),
(267, 25, '_menu_item_target', ''),
(268, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 25, '_menu_item_xfn', ''),
(270, 25, '_menu_item_url', ''),
(271, 25, '_menu_item_orphaned', '1500536787'),
(272, 26, '_menu_item_type', 'post_type'),
(273, 26, '_menu_item_menu_item_parent', '0'),
(274, 26, '_menu_item_object_id', '5'),
(275, 26, '_menu_item_object', 'page'),
(276, 26, '_menu_item_target', ''),
(277, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 26, '_menu_item_xfn', ''),
(279, 26, '_menu_item_url', ''),
(280, 26, '_menu_item_orphaned', '1500536789'),
(281, 27, '_menu_item_type', 'post_type'),
(282, 27, '_menu_item_menu_item_parent', '0'),
(283, 27, '_menu_item_object_id', '6'),
(284, 27, '_menu_item_object', 'page'),
(285, 27, '_menu_item_target', ''),
(286, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 27, '_menu_item_xfn', ''),
(288, 27, '_menu_item_url', ''),
(289, 27, '_menu_item_orphaned', '1500536789'),
(290, 28, '_menu_item_type', 'post_type'),
(291, 28, '_menu_item_menu_item_parent', '0'),
(292, 28, '_menu_item_object_id', '7'),
(293, 28, '_menu_item_object', 'page'),
(294, 28, '_menu_item_target', ''),
(295, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(296, 28, '_menu_item_xfn', ''),
(297, 28, '_menu_item_url', ''),
(298, 28, '_menu_item_orphaned', '1500536790'),
(299, 29, '_menu_item_type', 'post_type'),
(300, 29, '_menu_item_menu_item_parent', '0'),
(301, 29, '_menu_item_object_id', '2'),
(302, 29, '_menu_item_object', 'page'),
(303, 29, '_menu_item_target', ''),
(304, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(305, 29, '_menu_item_xfn', ''),
(306, 29, '_menu_item_url', ''),
(307, 29, '_menu_item_orphaned', '1500536791'),
(308, 30, '_menu_item_type', 'post_type'),
(309, 30, '_menu_item_menu_item_parent', '0'),
(310, 30, '_menu_item_object_id', '4'),
(311, 30, '_menu_item_object', 'page'),
(312, 30, '_menu_item_target', ''),
(313, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(314, 30, '_menu_item_xfn', ''),
(315, 30, '_menu_item_url', ''),
(316, 30, '_menu_item_orphaned', '1500536791'),
(317, 31, '_wc_review_count', '0'),
(318, 31, '_wc_rating_count', 'a:0:{}'),
(319, 31, '_wc_average_rating', '0'),
(320, 31, '_edit_last', '1'),
(321, 31, '_edit_lock', '1500536967:1'),
(322, 32, '_wp_attached_file', '2017/07/71SYlK9BNKL._SL1500.jpg'),
(323, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1228;s:4:"file";s:31:"2017/07/71SYlK9BNKL._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-300x246.jpg";s:5:"width";i:300;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-768x629.jpg";s:5:"width";i:768;s:6:"height";i:629;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"71SYlK9BNKL._SL1500-1024x838.jpg";s:5:"width";i:1024;s:6:"height";i:838;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"71SYlK9BNKL._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"71SYlK9BNKL._SL1500-214x175.jpg";s:5:"width";i:214;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(324, 31, '_thumbnail_id', '32'),
(325, 31, '_sku', ''),
(326, 31, '_regular_price', '14995'),
(327, 31, '_sale_price', '8061'),
(328, 31, '_sale_price_dates_from', ''),
(329, 31, '_sale_price_dates_to', ''),
(330, 31, 'total_sales', '0'),
(331, 31, '_tax_status', 'taxable'),
(332, 31, '_tax_class', ''),
(333, 31, '_manage_stock', 'no'),
(334, 31, '_backorders', 'no'),
(335, 31, '_sold_individually', 'no'),
(336, 31, '_weight', ''),
(337, 31, '_length', ''),
(338, 31, '_width', ''),
(339, 31, '_height', ''),
(340, 31, '_upsell_ids', 'a:0:{}'),
(341, 31, '_crosssell_ids', 'a:0:{}'),
(342, 31, '_purchase_note', ''),
(343, 31, '_default_attributes', 'a:0:{}'),
(344, 31, '_virtual', 'no'),
(345, 31, '_downloadable', 'no'),
(346, 31, '_product_image_gallery', ''),
(347, 31, '_download_limit', '-1'),
(348, 31, '_download_expiry', '-1'),
(349, 31, '_stock', NULL),
(350, 31, '_stock_status', 'instock'),
(351, 31, '_product_version', '3.1.1'),
(352, 31, '_price', '8061'),
(353, 4, '_edit_lock', '1500538751:1'),
(354, 33, '_wc_review_count', '0'),
(355, 33, '_wc_rating_count', 'a:0:{}'),
(356, 33, '_wc_average_rating', '0'),
(357, 33, '_edit_last', '1'),
(358, 33, '_edit_lock', '1500537712:1'),
(359, 34, '_wp_attached_file', '2017/07/71BUoA5J25L._SL1500.jpg'),
(360, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1299;s:4:"file";s:31:"2017/07/71BUoA5J25L._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-300x260.jpg";s:5:"width";i:300;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-768x665.jpg";s:5:"width";i:768;s:6:"height";i:665;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"71BUoA5J25L._SL1500-1024x887.jpg";s:5:"width";i:1024;s:6:"height";i:887;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"71BUoA5J25L._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"71BUoA5J25L._SL1500-202x175.jpg";s:5:"width";i:202;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(361, 33, '_thumbnail_id', '34'),
(362, 33, '_sku', ''),
(363, 33, '_regular_price', '2799'),
(364, 33, '_sale_price', '2069'),
(365, 33, '_sale_price_dates_from', ''),
(366, 33, '_sale_price_dates_to', ''),
(367, 33, 'total_sales', '0'),
(368, 33, '_tax_status', 'taxable'),
(369, 33, '_tax_class', ''),
(370, 33, '_manage_stock', 'no'),
(371, 33, '_backorders', 'no'),
(372, 33, '_sold_individually', 'no'),
(373, 33, '_weight', ''),
(374, 33, '_length', ''),
(375, 33, '_width', ''),
(376, 33, '_height', ''),
(377, 33, '_upsell_ids', 'a:0:{}'),
(378, 33, '_crosssell_ids', 'a:0:{}'),
(379, 33, '_purchase_note', ''),
(380, 33, '_default_attributes', 'a:0:{}'),
(381, 33, '_virtual', 'no'),
(382, 33, '_downloadable', 'no'),
(383, 33, '_product_image_gallery', ''),
(384, 33, '_download_limit', '-1'),
(385, 33, '_download_expiry', '-1'),
(386, 33, '_stock', NULL),
(387, 33, '_stock_status', 'instock'),
(388, 33, '_product_version', '3.1.1'),
(389, 33, '_price', '2069'),
(390, 35, '_wc_review_count', '0'),
(391, 35, '_wc_rating_count', 'a:0:{}'),
(392, 35, '_wc_average_rating', '0'),
(393, 35, '_edit_last', '1'),
(394, 35, '_edit_lock', '1500539060:1'),
(395, 36, '_wp_attached_file', '2017/07/71aeZ6I5ZsL._SL1500.jpg'),
(396, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1489;s:6:"height";i:1500;s:4:"file";s:31:"2017/07/71aeZ6I5ZsL._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-298x300.jpg";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-768x774.jpg";s:5:"width";i:768;s:6:"height";i:774;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"71aeZ6I5ZsL._SL1500-1016x1024.jpg";s:5:"width";i:1016;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:32:"71aeZ6I5ZsL._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"71aeZ6I5ZsL._SL1500-174x175.jpg";s:5:"width";i:174;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(397, 35, '_thumbnail_id', '36'),
(398, 35, '_sku', ''),
(399, 35, '_regular_price', '5425'),
(400, 35, '_sale_price', '3075'),
(401, 35, '_sale_price_dates_from', ''),
(402, 35, '_sale_price_dates_to', ''),
(403, 35, 'total_sales', '0'),
(404, 35, '_tax_status', 'taxable'),
(405, 35, '_tax_class', ''),
(406, 35, '_manage_stock', 'no'),
(407, 35, '_backorders', 'no'),
(408, 35, '_sold_individually', 'no'),
(409, 35, '_weight', ''),
(410, 35, '_length', ''),
(411, 35, '_width', ''),
(412, 35, '_height', ''),
(413, 35, '_upsell_ids', 'a:0:{}'),
(414, 35, '_crosssell_ids', 'a:0:{}'),
(415, 35, '_purchase_note', ''),
(416, 35, '_default_attributes', 'a:0:{}'),
(417, 35, '_virtual', 'no'),
(418, 35, '_downloadable', 'no'),
(419, 35, '_product_image_gallery', ''),
(420, 35, '_download_limit', '-1'),
(421, 35, '_download_expiry', '-1'),
(422, 35, '_stock', NULL),
(423, 35, '_stock_status', 'instock'),
(424, 35, '_product_version', '3.1.1'),
(425, 35, '_price', '3075'),
(426, 37, '_wp_trash_meta_status', 'publish'),
(427, 37, '_wp_trash_meta_time', '1500539492'),
(428, 38, '_wc_review_count', '0'),
(429, 38, '_wc_rating_count', 'a:0:{}'),
(430, 38, '_wc_average_rating', '0'),
(431, 38, '_edit_last', '1'),
(432, 38, '_edit_lock', '1500539863:1'),
(433, 39, '_wp_attached_file', '2017/07/61V47ILn2L._SL1500.jpg'),
(434, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1070;s:4:"file";s:30:"2017/07/61V47ILn2L._SL1500.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-768x548.jpg";s:5:"width";i:768;s:6:"height";i:548;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"61V47ILn2L._SL1500-1024x730.jpg";s:5:"width";i:1024;s:6:"height";i:730;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:31:"61V47ILn2L._SL1500-1170x470.jpg";s:5:"width";i:1170;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:30:"61V47ILn2L._SL1500-245x175.jpg";s:5:"width";i:245;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(435, 38, '_thumbnail_id', '39'),
(436, 38, '_sku', ''),
(437, 38, '_regular_price', '1390'),
(438, 38, '_sale_price', '1246'),
(439, 38, '_sale_price_dates_from', ''),
(440, 38, '_sale_price_dates_to', ''),
(441, 38, 'total_sales', '0'),
(442, 38, '_tax_status', 'taxable'),
(443, 38, '_tax_class', ''),
(444, 38, '_manage_stock', 'no'),
(445, 38, '_backorders', 'no'),
(446, 38, '_sold_individually', 'no'),
(447, 38, '_weight', ''),
(448, 38, '_length', ''),
(449, 38, '_width', ''),
(450, 38, '_height', ''),
(451, 38, '_upsell_ids', 'a:0:{}'),
(452, 38, '_crosssell_ids', 'a:0:{}'),
(453, 38, '_purchase_note', ''),
(454, 38, '_default_attributes', 'a:0:{}'),
(455, 38, '_virtual', 'no'),
(456, 38, '_downloadable', 'no'),
(457, 38, '_product_image_gallery', ''),
(458, 38, '_download_limit', '-1'),
(459, 38, '_download_expiry', '-1'),
(460, 38, '_stock', NULL),
(461, 38, '_stock_status', 'instock'),
(462, 38, '_product_version', '3.1.1'),
(463, 38, '_price', '1246'),
(464, 40, '_wc_review_count', '0'),
(465, 40, '_wc_rating_count', 'a:0:{}'),
(466, 40, '_wc_average_rating', '0'),
(467, 40, '_edit_last', '1'),
(468, 40, '_edit_lock', '1500540339:1'),
(469, 41, '_wp_attached_file', '2017/07/51N2rPAivHL._SL1130.jpg'),
(470, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:1130;s:4:"file";s:31:"2017/07/51N2rPAivHL._SL1130.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-239x300.jpg";s:5:"width";i:239;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-768x964.jpg";s:5:"width";i:768;s:6:"height";i:964;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"51N2rPAivHL._SL1130-816x1024.jpg";s:5:"width";i:816;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-cat-image";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-275x370.jpg";s:5:"width";i:275;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:20:"storevilla-blog-grid";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-255x160.jpg";s:5:"width";i:255;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:21:"storevilla-blog-image";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-900x470.jpg";s:5:"width";i:900;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:23:"storevilla-slider-image";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-760x510.jpg";s:5:"width";i:760;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:15:"storevilla-logo";a:4:{s:4:"file";s:31:"51N2rPAivHL._SL1130-139x175.jpg";s:5:"width";i:139;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(471, 40, '_thumbnail_id', '41'),
(472, 40, '_sku', ''),
(473, 40, '_regular_price', '1220'),
(474, 40, '_sale_price', '1210'),
(475, 40, '_sale_price_dates_from', ''),
(476, 40, '_sale_price_dates_to', ''),
(477, 40, 'total_sales', '0'),
(478, 40, '_tax_status', 'taxable'),
(479, 40, '_tax_class', ''),
(480, 40, '_manage_stock', 'no'),
(481, 40, '_backorders', 'no'),
(482, 40, '_sold_individually', 'no'),
(483, 40, '_weight', ''),
(484, 40, '_length', ''),
(485, 40, '_width', ''),
(486, 40, '_height', ''),
(487, 40, '_upsell_ids', 'a:0:{}'),
(488, 40, '_crosssell_ids', 'a:0:{}'),
(489, 40, '_purchase_note', ''),
(490, 40, '_default_attributes', 'a:0:{}'),
(491, 40, '_virtual', 'no'),
(492, 40, '_downloadable', 'no'),
(493, 40, '_product_image_gallery', ''),
(494, 40, '_download_limit', '-1'),
(495, 40, '_download_expiry', '-1'),
(496, 40, '_stock', NULL),
(497, 40, '_stock_status', 'instock'),
(498, 40, '_product_version', '3.1.1'),
(499, 40, '_price', '1210');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-19 15:45:19', '2017-07-19 15:45:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-07-19 15:45:19', '2017-07-19 15:45:19', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-19 15:45:19', '2017-07-19 15:45:19', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-07-19 15:45:19', '2017-07-19 15:45:19', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-07-19 15:45:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-19 15:45:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2017-07-20 06:16:04', '2017-07-20 06:16:04', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-07-20 06:16:04', '2017-07-20 06:16:04', '', 0, 'http://localhost/wordpress/index.php/shop/', 0, 'page', '', 0),
(5, 1, '2017-07-20 06:16:04', '2017-07-20 06:16:04', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-07-20 06:16:04', '2017-07-20 06:16:04', '', 0, 'http://localhost/wordpress/index.php/cart/', 0, 'page', '', 0),
(6, 1, '2017-07-20 06:16:04', '2017-07-20 06:16:04', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-07-20 06:16:04', '2017-07-20 06:16:04', '', 0, 'http://localhost/wordpress/index.php/checkout/', 0, 'page', '', 0),
(7, 1, '2017-07-20 06:16:05', '2017-07-20 06:16:05', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-07-20 06:16:05', '2017-07-20 06:16:05', '', 0, 'http://localhost/wordpress/index.php/my-account/', 0, 'page', '', 0),
(8, 1, '2017-07-20 06:24:07', '2017-07-20 06:24:07', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">This product does not require installation. please contact brand customer care for any product related queires. Customer Service Number: 18001025963</span></li>\r\n 	<li><span class="a-list-item">Do not worry if you experience some burning smell when you run your mixer grinder for the 1st time .This is due to the motor varnish getting heated for the 1st time. The problem should not recur in subsequent uses. If it does, please contact Brand Service Centre</span></li>\r\n 	<li><span class="a-list-item">Since your mixer grinder runs on a powerful motor, there will be some noise. If the noise level seems abnormal, please contact Brand Service Centre</span></li>\r\n 	<li><span class="a-list-item">Sturdy stainless steel jars for liquidizing , wet/dry grinding and chutney making</span></li>\r\n 	<li><span class="a-list-item">Jar Capacity:1.25 Litre liquidizing jar, 0.88 Litre multi purpose jar, 0.3 Litre chutney jar</span></li>\r\n 	<li><span class="a-list-item">3 speed control with incher for momentary operation</span></li>\r\n 	<li><span class="a-list-item">Multi-functional blade system</span></li>\r\n</ul>\r\n<div class="a-row a-expander-container a-expander-inline-container" aria-live="polite">\r\n<div class="a-expander-content a-expander-extend-content a-expander-content-expanded" aria-expanded="true">\r\n<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Motor overload protector</span></li>\r\n 	<li><span class="a-list-item">Easy grip jar handles</span></li>\r\n 	<li><span class="a-list-item">Warranty: 1 year on product</span></li>\r\n 	<li><span class="a-list-item">Power: 500 watts</span></li>\r\n 	<li><span class="a-list-item">Includes: Mixer grinder, instruction manual and service details</span></li>\r\n 	<li><span class="a-list-item">Bajaj Customer Service Number: 18001025963</span></li>\r\n 	<li><span class="a-list-item">Customer Service Number: 18001025963</span></li>\r\n 	<li><span class="a-list-item">Jar Capacity:1.25 Litre liquidizing jar, 1 Litre multi purpose jar, 0.3 Litre chutney jar</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Bajaj Rex 500-Watt Mixer Grinder with 3 Jars (White)', '<h5>Powerful Two-in-One Kitchen Appliance</h5>\r\nThe Bajaj Rex mixer grinder is a durable kitchen appliance made of stainless steel, which prevents rusting and has vacuum feet for easy operation. It comes with three different stainless steel jars that allow versatile operations in the kitchen so that it can be used for multiple purposes. The Bajaj mixer grinder has made mixing chutney easier with its easy operation and it can also be used for wet and dry grinding. It also has a liquidizing jar that enables you to extract juices. So, you can start your day with a glass of freshly squeezed juice in minutes.\r\n<h5>Easy and Efficient Operation</h5>\r\nThe Bajaj Rex 500 mixer grinder has motor overload protection to safeguard the motor of the mixer during power surge that may occur during fluctuation. The mixer grinder allows easier cooking as there are multi functional blades to give you the most consistent chutneys and purees. The jars have an easy grip to fit the mixer and it operates at 500W. The 500 watts mixer grinder has sharp blades to give you the fine textured blended preparations. So, if you are looking for a versatile kitchen appliance, then check out this 3 jar mixer grinder.\r\n<ul>\r\n 	<li>Brand: Bajaj</li>\r\n 	<li>Colour: White</li>\r\n 	<li>Additional Features: Three speed control, three different jars including liquidizing jar, wet grinding jar and chutney jar, overload protection</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'bajaj-rex-500-watt-mixer-grinder-with-3-jars-white', '', '', '2017-07-20 06:24:07', '2017-07-20 06:24:07', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=8', 0, 'product', '', 0),
(9, 1, '2017-07-20 06:23:13', '2017-07-20 06:23:13', '', '61uL+VByKhL._SL1500', '', 'inherit', 'open', 'closed', '', '61ulvbykhl-_sl1500', '', '', '2017-07-20 06:23:13', '2017-07-20 06:23:13', '', 8, 'http://localhost/wordpress/wp-content/uploads/2017/07/61uLVByKhL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2017-07-20 06:36:40', '2017-07-20 06:36:40', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">This product does not require installation. please contact brand customer care for any product related queires. Customer Service Number: 18001022929</span></li>\r\n 	<li><span class="a-list-item">Programmed for Indian cooking</span></li>\r\n 	<li><span class="a-list-item">0 to 3 hours time setting</span></li>\r\n 	<li><span class="a-list-item">Auto-off program cooks food safely</span></li>\r\n 	<li><span class="a-list-item">More comfortable cooking without flame</span></li>\r\n 	<li><span class="a-list-item">Cool-to-touch surface, cooks foods safely</span></li>\r\n 	<li><span class="a-list-item">Warranty: 1 year on product</span></li>\r\n</ul>\r\n<div class="a-row a-expander-container a-expander-inline-container" aria-live="polite">\r\n<div class="a-expander-content a-expander-extend-content a-expander-content-expanded" aria-expanded="true">\r\n<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Power: 2100 watts</span></li>\r\n 	<li><span class="a-list-item">Operating voltage: 220-240 volts</span></li>\r\n 	<li><span class="a-list-item">Includes: Induction cooktop and User manual</span></li>\r\n 	<li><span class="a-list-item">Customer Service Number: 18001022929</span></li>\r\n 	<li><span class="a-list-item">Power: 2100 watts; Operating voltage: 220-240 volts</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Philips HD4929 2100-Watt Induction Cooker', 'Philips official induction at very cheap price\r\n<div class="aplus">\r\n<table class="data">\r\n<tbody>\r\n<tr>\r\n<th>Problem</th>\r\n<th>Reason</th>\r\n<th>Action</th>\r\n</tr>\r\n<tr>\r\n<td>Error code E1 or E2</td>\r\n<td>Internal Failure</td>\r\n<td>Contact Customer Care. Customer Care Number- 18001022929</td>\r\n</tr>\r\n<tr>\r\n<td>Error code E3 or E6</td>\r\n<td>Very high internal temperature or over glass top</td>\r\n<td>Switch off Appliance to cool down</td>\r\n</tr>\r\n<tr>\r\n<td>Error code E4</td>\r\n<td>Internal Failure</td>\r\n<td>Contact Customer Care. Customer Care Number- 18001022929</td>\r\n</tr>\r\n<tr>\r\n<td>Error code E5 ,E6 , E7</td>\r\n<td>The voltage is either too high or too low.</td>\r\n<td>Please check power supply. Start the unit once Power Supply back to Normal Voltage</td>\r\n</tr>\r\n<tr>\r\n<td>Error code E7</td>\r\n<td>The fan has malfunction. ( Hair / Dust stuck-up )</td>\r\n<td>Contact Customer Care. Customer Care Number- 18001022929</td>\r\n</tr>\r\n<tr>\r\n<td>Error code E8</td>\r\n<td>Internal Failure</td>\r\n<td>Contact Customer Care. Customer Care Number- 18001022929</td>\r\n</tr>\r\n<tr>\r\n<td>Error code E9</td>\r\n<td>Internal Failure</td>\r\n<td>Contact Customer Care. Customer Care Number- 18001022929</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'publish', 'open', 'closed', '', 'philips-hd4929-2100-watt-induction-cooker', '', '', '2017-07-20 06:38:31', '2017-07-20 06:38:31', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=10', 0, 'product', '', 0),
(11, 1, '2017-07-20 06:38:13', '2017-07-20 06:38:13', '', '61R6ZSVGSJL._SL1336', '', 'inherit', 'open', 'closed', '', '61r6zsvgsjl-_sl1336', '', '', '2017-07-20 06:38:13', '2017-07-20 06:38:13', '', 10, 'http://localhost/wordpress/wp-content/uploads/2017/07/61R6ZSVGSJL._SL1336.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2017-07-20 06:45:18', '2017-07-20 06:45:18', '{\n    "storevilla::storevilla_web_page_layout_options": {\n        "value": "enable",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6f70d746-dbb4-48ea-b31e-164e93713272', '', '', '2017-07-20 06:45:18', '2017-07-20 06:45:18', '', 0, 'http://localhost/wordpress/index.php/2017/07/20/6f70d746-dbb4-48ea-b31e-164e93713272/', 0, 'customize_changeset', '', 0),
(13, 1, '2017-07-20 06:46:44', '2017-07-20 06:46:44', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2017-07-20 06:48:01', '2017-07-20 06:48:01', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-07-20 06:46:44', '2017-07-20 06:46:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-07-20 06:46:44', '2017-07-20 06:46:44', '', 13, 'http://localhost/wordpress/index.php/2017/07/20/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-07-20 06:53:30', '2017-07-20 06:53:30', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">This product does not require installation. please contact brand customer care for any product related queires. Customer service number: 18601804111</span></li>\r\n 	<li><span class="a-list-item">Do not worry if you experience some burning smell when you run your mixer grinder for the 1st time .This is due to the motor varnish getting heated for the 1st time. The problem should not recur in subsequent uses. If it does, please contact Brand Service Centre</span></li>\r\n 	<li><span class="a-list-item">Since your mixer grinder runs on a powerful motor, there will be some noise. Product Operating Noise Level : 86.4 Db(Mixer Grinder industry wide acceptable levels: 80-90 DB) ; human voice as a reference(50-60 db). If noise level seems to be higher than this, please contact Brand Service Centre</span></li>\r\n 	<li><span class="a-list-item">Stainless steel jars</span></li>\r\n 	<li><span class="a-list-item">Safe with non-slip feet</span></li>\r\n 	<li><span class="a-list-item">Ergonomic handle</span></li>\r\n 	<li><span class="a-list-item">Durable stainless steel jar</span></li>\r\n</ul>\r\n<div class="a-row a-expander-container a-expander-inline-container" aria-live="polite">\r\n<div class="a-expander-content a-expander-extend-content a-expander-content-expanded" aria-expanded="true">\r\n<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Warranty: 2 years on product and 5 years on motor</span></li>\r\n 	<li><span class="a-list-item">Power: 750 watts</span></li>\r\n 	<li><span class="a-list-item">Operating Voltage: 220-240 volts</span></li>\r\n 	<li><span class="a-list-item">Includes: Mixer grinder, Liquidising jar (1.5 liter), Dry and wet grinding jar (1 liter) and Chutney jar (0.3 liter)</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Maharaja Whiteline Joy Turbo 750 Watt Mixer Grinder with 3 Jars (Black/Silver)', '<ul>\r\n 	<li><b>Product Dimensions: </b>40.9 x 31.4 x 27.6 cm ; 3.5 Kg</li>\r\n 	<li><b>Item model number:</b> MX-155</li>\r\n 	<li><b>ASIN: </b>B01A9ZTCS6</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 7 January 2016</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B01A9ZTCS6/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B01A9ZTCS6_9195_star__contentDiv_reviewHistoPop_B01A9ZTCS6_9195"><span class="swSprite s_star_3_5 " title="3.4 out of 5 stars">3.4 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B01A9ZTCS6/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B01A9ZTCS6_9195_button__contentDiv_reviewHistoPop_B01A9ZTCS6_9195"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B01A9ZTCS6/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">362 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'maharaja-whiteline-joy-turbo-750-watt-mixer-grinder-with-3-jars-blacksilver', '', '', '2017-07-20 06:53:31', '2017-07-20 06:53:31', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2017-07-20 06:53:12', '2017-07-20 06:53:12', '', '71BSH0mshlL._SL1500', '', 'inherit', 'open', 'closed', '', '71bsh0mshll-_sl1500', '', '', '2017-07-20 06:53:12', '2017-07-20 06:53:12', '', 15, 'http://localhost/wordpress/wp-content/uploads/2017/07/71BSH0mshlL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2017-07-20 07:11:44', '2017-07-20 07:11:44', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">This product does not require installation. please contact brand customer care for any product related queires. Customer Service Number: 18001022929</span></li>\r\n 	<li><span class="a-list-item">Do not worry if you experience some burning smell when you run your mixer grinder for the 1st time .This is due to the motor varnish getting heated for the 1st time. The problem should not recur in subsequent uses. If it does, please contact Brand Service Centre</span></li>\r\n 	<li><span class="a-list-item">Since your mixer grinder runs on a powerful motor, there will be some noise. Product Operating Noise Level : 87 Db(Mixer Grinder industry wide acceptable levels: 80-90 DB) ; human voice as a reference(50-60 db). If noise level seems to be higher than this, please contact Brand Service Centre</span></li>\r\n 	<li><span class="a-list-item">Improved design that prevents coupler and motor damage for long lasting performance</span></li>\r\n 	<li><span class="a-list-item">Ease of use and clean ability</span></li>\r\n 	<li><span class="a-list-item">Designed for a ''Best in class'' mixing grinding</span></li>\r\n 	<li><span class="a-list-item">High Quality blades for perfect mixing and fine grinding performance</span></li>\r\n</ul>\r\n<div class="a-row a-expander-container a-expander-inline-container" aria-live="polite">\r\n<div class="a-expander-content a-expander-extend-content a-expander-content-expanded" aria-expanded="true">\r\n<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Open coupler for easy cleaning and maintenance</span></li>\r\n 	<li><span class="a-list-item">Click Jar assembly for secure and easy locking</span></li>\r\n 	<li><span class="a-list-item">Auto cut off for overload protection</span></li>\r\n 	<li><span class="a-list-item">Advanced ventilation system for enhanced motor life</span></li>\r\n 	<li><span class="a-list-item">1.5 litre wet grinding jar, 1 litre dry grinding jar and 0.4 litre chutney grinding jar</span></li>\r\n 	<li><span class="a-list-item">Speed Configuration: 3+1 pulse</span></li>\r\n 	<li><span class="a-list-item">Warranty: 2 years on product</span></li>\r\n 	<li><span class="a-list-item">Power: 750 watts</span></li>\r\n 	<li><span class="a-list-item">Includes: Mixer grinder and 3 jars</span></li>\r\n 	<li><span class="a-list-item">Customer Service Number: 18001022929</span></li>\r\n 	<li><span class="a-list-item">Specially designed motor for effective processing of wide range of ingredients</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Philips HL 7720 750-Watt 3-Jar Mixer Grinder', '<ul>\r\n 	<li><b>Item Weight: </b>5 Kg</li>\r\n 	<li><b>Item model number:</b> HL7720</li>\r\n 	<li><b>ASIN: </b>B00HQZG41Q</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 8 January 2014</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00HQZG41Q/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00HQZG41Q_11_star__contentDiv_reviewHistoPop_B00HQZG41Q_11"><span class="swSprite s_star_3_5 " title="3.7 out of 5 stars">3.7 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00HQZG41Q/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00HQZG41Q_11_button__contentDiv_reviewHistoPop_B00HQZG41Q_11"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00HQZG41Q/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">470 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'philips-hl-7720-750-watt-3-jar-mixer-grinder', '', '', '2017-07-20 07:11:57', '2017-07-20 07:11:57', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2017-07-20 07:11:28', '2017-07-20 07:11:28', '', '81O4SMS2axL._SL1500', '', 'inherit', 'open', 'closed', '', '81o4sms2axl-_sl1500', '', '', '2017-07-20 07:11:28', '2017-07-20 07:11:28', '', 17, 'http://localhost/wordpress/wp-content/uploads/2017/07/81O4SMS2axL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2017-07-20 07:18:56', '2017-07-20 07:18:56', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Indian menu options and aerodynamic cooling system</span></li>\r\n 	<li><span class="a-list-item">Automatic voltage regulator and power consumption display</span></li>\r\n 	<li><span class="a-list-item">Dual heat sensors</span></li>\r\n</ul>', 'Prestige PIC 6.0 V3 2000-Watt Induction Cook-top', '<ul>\r\n 	<li><b>Product Dimensions: </b>46.3 x 35.9 x 10.3 cm ; 2.8 Kg</li>\r\n 	<li><b>Item model number:</b> PIC 6.0 V3</li>\r\n 	<li><b>ASIN: </b>B00GBXDKXO</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 31 October 2013</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00GBXDKXO/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00GBXDKXO_165_star__contentDiv_reviewHistoPop_B00GBXDKXO_165"><span class="swSprite s_star_4_0 " title="4.1 out of 5 stars">4.1 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00GBXDKXO/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00GBXDKXO_165_button__contentDiv_reviewHistoPop_B00GBXDKXO_165"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00GBXDKXO/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">677 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'prestige-pic-6-0-v3-2000-watt-induction-cook-top', '', '', '2017-07-20 07:19:07', '2017-07-20 07:19:07', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2017-07-20 07:18:41', '2017-07-20 07:18:41', '', '71A71s3oqcL._SL1500', '', 'inherit', 'open', 'closed', '', '71a71s3oqcl-_sl1500', '', '', '2017-07-20 07:18:41', '2017-07-20 07:18:41', '', 19, 'http://localhost/wordpress/wp-content/uploads/2017/07/71A71s3oqcL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-07-20 07:33:10', '2017-07-20 07:33:10', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">This product does not require installation. please contact brand customer care for any product related queires. Customer Service Number: 18001022929</span></li>\r\n 	<li><span class="a-list-item">Material housing: ABS Plastic and Material jug: PP Plastic</span></li>\r\n 	<li><span class="a-list-item">Material pulp container and pusher: ABS, SAN</span></li>\r\n 	<li><span class="a-list-item">Drip stop, compact design, QuickClean technology, smooth and easy to clean</span></li>\r\n 	<li><span class="a-list-item">Direct serve, QuickClean sieve and can see-through pulp container</span></li>\r\n 	<li><span class="a-list-item">Make up to 1.5 litre in one go</span></li>\r\n 	<li><span class="a-list-item">Integrated pulp container</span></li>\r\n</ul>\r\n<div class="a-row a-expander-container a-expander-inline-container" aria-live="polite">\r\n<div class="a-expander-content a-expander-extend-content a-expander-content-expanded" aria-expanded="true">\r\n<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Non-slip feet, safety clamps and integrated cord storage</span></li>\r\n 	<li><span class="a-list-item">One optimized speed: For all fruits</span></li>\r\n 	<li><span class="a-list-item">Capacity: 1.5 liters</span></li>\r\n 	<li><span class="a-list-item">Power: 400 watts</span></li>\r\n 	<li><span class="a-list-item">Operating Voltage: 220-240 volts</span></li>\r\n 	<li><span class="a-list-item">Includes: Juicer, Pulp Container (1 litre) and Juice Jug (500 milliliter)</span></li>\r\n 	<li><span class="a-list-item">Customer Service Number: 18001022929</span></li>\r\n 	<li><span class="a-list-item">Power: 400 watts; Operating Voltage: 220-240 volts</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Philips Viva Collection HR1832/00 1.5-Litre Juicer (Ink Black)', '<ul>\r\n 	<li><b>Product Dimensions: </b>23.3 x 23.3 x 42 cm ; 1.9 Kg</li>\r\n 	<li><b>Item model number:</b> Viva Collection HR1832/00</li>\r\n 	<li><b>ASIN: </b>B00S9BSJC8</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 15 January 2015</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00S9BSJC8/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00S9BSJC8_5579_star__contentDiv_reviewHistoPop_B00S9BSJC8_5579"><span class="swSprite s_star_4_0 " title="4.2 out of 5 stars">4.2 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00S9BSJC8/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00S9BSJC8_5579_button__contentDiv_reviewHistoPop_B00S9BSJC8_5579"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00S9BSJC8/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">298 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'philips-viva-collection-hr183200-1-5-litre-juicer-ink-black', '', '', '2017-07-20 07:33:11', '2017-07-20 07:33:11', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2017-07-20 07:32:43', '2017-07-20 07:32:43', '', '81UKNoFDuLL._SL1500', '', 'inherit', 'open', 'closed', '', '81uknofdull-_sl1500', '', '', '2017-07-20 07:32:43', '2017-07-20 07:32:43', '', 21, 'http://localhost/wordpress/wp-content/uploads/2017/07/81UKNoFDuLL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-07-20 07:39:04', '2017-07-20 07:39:04', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Removable extra wide feed chute and satinless steel filter for detachability</span></li>\r\n 	<li><span class="a-list-item">Cleaning brush, easy to detach parts and clean and dishwasher safe</span></li>\r\n 	<li><span class="a-list-item">Fruit Recommend for Juice: Pineapple, half apple, pears, carrots, strawberry</span></li>\r\n 	<li><span class="a-list-item">Warranty: 2 years on product</span></li>\r\n 	<li><span class="a-list-item">Power: 400 watts; Operating voltage: 220 volts</span></li>\r\n 	<li><span class="a-list-item">Includes: Juice extractor, Cleaning brush and Instruction manual</span></li>\r\n</ul>', 'Oster 3157-049 400-Watt Juice Extractor (Gray)', '<ul>\r\n 	<li><b>Product Dimensions: </b>35.8 x 32 x 22.5 cm ; 2.8 Kg</li>\r\n 	<li><b>Item model number:</b> 3157-049</li>\r\n 	<li><b>ASIN: </b>B009HS7OFU</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 27 September 2012</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B009HS7OFU/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B009HS7OFU_7758_star__contentDiv_reviewHistoPop_B009HS7OFU_7758"><span class="swSprite s_star_3_0 " title="2.8 out of 5 stars">2.8 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B009HS7OFU/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B009HS7OFU_7758_button__contentDiv_reviewHistoPop_B009HS7OFU_7758"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B009HS7OFU/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">58 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'oster-3157-049-400-watt-juice-extractor-gray', '', '', '2017-07-20 07:39:04', '2017-07-20 07:39:04', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=23', 0, 'product', '', 0),
(24, 1, '2017-07-20 07:38:40', '2017-07-20 07:38:40', '', '81MnXUAwg4L._SL1500', '', 'inherit', 'open', 'closed', '', '81mnxuawg4l-_sl1500', '', '', '2017-07-20 07:38:40', '2017-07-20 07:38:40', '', 23, 'http://localhost/wordpress/wp-content/uploads/2017/07/81MnXUAwg4L._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-07-20 07:46:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-20 07:46:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-07-20 07:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-20 07:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-07-20 07:46:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-20 07:46:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-07-20 07:46:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-20 07:46:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2017-07-20 07:46:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-20 07:46:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2017-07-20 07:46:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-20 07:46:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2017-07-20 07:51:36', '2017-07-20 07:51:36', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Large feeding tube, 2 speed control</span></li>\r\n 	<li><span class="a-list-item">120 degree rotatable spout and anit-drop spout</span></li>\r\n 	<li><span class="a-list-item">Precise and durable full metal spinner</span></li>\r\n 	<li><span class="a-list-item">2.0L large capacity pulp container</span></li>\r\n 	<li><span class="a-list-item">1.5L juice jug with bubble separator</span></li>\r\n 	<li><span class="a-list-item">Safety Switch-Lock clamps</span></li>\r\n 	<li><span class="a-list-item">Warranty: 2 Year warranty on products &amp; 5 years on Motor</span></li>\r\n</ul>', 'Panasonic 240 Watt Stainless Steel Wide Tube Juicer MJ-DJ01 (Silver)', '<ul>\r\n 	<li><b>Product Dimensions: </b>29.8 x 23.2 x 42.2 cm ; 5 Kg</li>\r\n 	<li><b>Item model number:</b> MJ-DJ01</li>\r\n 	<li><b>ASIN: </b>B00QQH5LHS</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 8 December 2014</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00QQH5LHS/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00QQH5LHS_4477_star__contentDiv_reviewHistoPop_B00QQH5LHS_4477"><span class="swSprite s_star_4_5 " title="4.5 out of 5 stars">4.5 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00QQH5LHS/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00QQH5LHS_4477_button__contentDiv_reviewHistoPop_B00QQH5LHS_4477"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00QQH5LHS/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">2 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'panasonic-240-watt-stainless-steel-wide-tube-juicer-mj-dj01-silver', '', '', '2017-07-20 07:51:37', '2017-07-20 07:51:37', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2017-07-20 07:51:15', '2017-07-20 07:51:15', '', '71SYlK9BNKL._SL1500', '', 'inherit', 'open', 'closed', '', '71sylk9bnkl-_sl1500', '', '', '2017-07-20 07:51:15', '2017-07-20 07:51:15', '', 31, 'http://localhost/wordpress/wp-content/uploads/2017/07/71SYlK9BNKL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-07-20 08:04:03', '2017-07-20 08:04:03', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Maximum juice extraction</span></li>\r\n 	<li><span class="a-list-item">Super sharp blades</span></li>\r\n 	<li><span class="a-list-item">Stainless steel juicer mesh</span></li>\r\n 	<li><span class="a-list-item">Feeder tube: Full apple</span></li>\r\n 	<li><span class="a-list-item">Warranty: 2 year on product</span></li>\r\n 	<li><span class="a-list-item">Power: 550 watts; Operating voltage: 230 volts</span></li>\r\n 	<li><span class="a-list-item">Includes: Juice Extractor, Instruction Manual, Customer Care List and Warranty Card</span></li>\r\n 	<li><span class="a-list-item">Customer Service Number: 18601804111</span></li>\r\n</ul>', 'Maharaja Whiteline Desire Red Treasure 550-Watt Juice Extractor (Red and Silver)', '<ul>\r\n 	<li><b>Item Weight: </b>2.9 Kg</li>\r\n 	<li><b>Item model number:</b> Desire</li>\r\n 	<li><b>ASIN: </b>B00KILRD0Q</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 23 May 2014</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00KILRD0Q/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00KILRD0Q_3760_star__contentDiv_reviewHistoPop_B00KILRD0Q_3760"><span class="swSprite s_star_2_5 " title="2.5 out of 5 stars">2.5 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00KILRD0Q/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00KILRD0Q_3760_button__contentDiv_reviewHistoPop_B00KILRD0Q_3760"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00KILRD0Q/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">14 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'maharaja-whiteline-desire-red-treasure-550-watt-juice-extractor-red-and-silver', '', '', '2017-07-20 08:04:03', '2017-07-20 08:04:03', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2017-07-20 08:03:41', '2017-07-20 08:03:41', '', '71BUoA5J25L._SL1500', '', 'inherit', 'open', 'closed', '', '71buoa5j25l-_sl1500', '', '', '2017-07-20 08:03:41', '2017-07-20 08:03:41', '', 33, 'http://localhost/wordpress/wp-content/uploads/2017/07/71BUoA5J25L._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-07-20 08:26:26', '2017-07-20 08:26:26', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Removable juice container</span></li>\r\n 	<li><span class="a-list-item">Durable and hygienic stainless-steel sieve</span></li>\r\n 	<li><span class="a-list-item">Pulp container with safety lock</span></li>\r\n 	<li><span class="a-list-item">Removable pulp container can be emptied and cleaned easily</span></li>\r\n 	<li><span class="a-list-item">Warranty: 2 years on product</span></li>\r\n 	<li><span class="a-list-item">Power: 450 watts; Operating Voltage: 220 - 240 volts</span></li>\r\n 	<li><span class="a-list-item">Includes: Motor Housing, Pulp container, Juice container, Cover, Tray, Pusher, Sieve and Manual</span></li>\r\n</ul>', 'Black & Decker 2 Speed JE65-B5 450-Watt Juice Extractor (White)', '<ul>\r\n 	<li><b>Product Dimensions: </b>33 x 19.6 x 27.9 cm ; 3 Kg</li>\r\n 	<li><b>Item model number:</b> JE65</li>\r\n 	<li><b>ASIN: </b>B00CHJK7TG</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 26 April 2017</li>\r\n 	<li><b>Average Customer Review:</b> <a href="http://www.amazon.in/review/create-review/ref=dp_db_cm_cr_acr_wr_link?ie=UTF8&amp;asin=B00CHJK7TG&amp;channel=detail-glance&amp;nodeID=">Be the first to review this item</a></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'black-decker-2-speed-je65-b5-450-watt-juice-extractor-white', '', '', '2017-07-20 08:26:27', '2017-07-20 08:26:27', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2017-07-20 08:26:09', '2017-07-20 08:26:09', '', '71aeZ6I5ZsL._SL1500', '', 'inherit', 'open', 'closed', '', '71aez6i5zsl-_sl1500', '', '', '2017-07-20 08:26:09', '2017-07-20 08:26:09', '', 35, 'http://localhost/wordpress/wp-content/uploads/2017/07/71aeZ6I5ZsL._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2017-07-20 08:31:31', '2017-07-20 08:31:31', '{\n    "storevilla::storevilla_woocommerce_display_product_number": {\n        "value": "6",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a234cede-3e52-44bc-9035-ed85c6bf8034', '', '', '2017-07-20 08:31:31', '2017-07-20 08:31:31', '', 0, 'http://localhost/wordpress/index.php/2017/07/20/a234cede-3e52-44bc-9035-ed85c6bf8034/', 0, 'customize_changeset', '', 0),
(38, 1, '2017-07-20 08:39:47', '2017-07-20 08:39:47', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Pressure indicator</span></li>\r\n 	<li><span class="a-list-item">Induction bottom</span></li>\r\n 	<li><span class="a-list-item">Controlled GRS</span></li>\r\n 	<li><span class="a-list-item">Comfortable handles</span></li>\r\n 	<li><span class="a-list-item">Extra strong lugs</span></li>\r\n 	<li><span class="a-list-item">Heavier body</span></li>\r\n 	<li><span class="a-list-item">Package Contents: 1-Piece Induction Base Aluminium Pressure Cooker (3 Litres)</span></li>\r\n</ul>', 'Prestige Deluxe Plus Induction Base Aluminium Pressure Cooker, 3 Litres', '<ul>\r\n 	<li><b>Product Dimensions: </b>27.9 x 12.7 x 12.7 cm ; 1.4 Kg</li>\r\n 	<li><b>Item model number:</b> DPA-3L</li>\r\n 	<li><b>ASIN: </b>B00AFQZ5FO</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 13 August 2013</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00AFQZ5FO/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00AFQZ5FO_5308_star__contentDiv_reviewHistoPop_B00AFQZ5FO_5308"><span class="swSprite s_star_4_0 " title="3.8 out of 5 stars">3.8 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00AFQZ5FO/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00AFQZ5FO_5308_button__contentDiv_reviewHistoPop_B00AFQZ5FO_5308"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00AFQZ5FO/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">171 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'prestige-deluxe-plus-induction-base-aluminium-pressure-cooker-3-litres', '', '', '2017-07-20 08:39:48', '2017-07-20 08:39:48', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2017-07-20 08:39:34', '2017-07-20 08:39:34', '', '61V47+ILn2L._SL1500', '', 'inherit', 'open', 'closed', '', '61v47iln2l-_sl1500', '', '', '2017-07-20 08:39:34', '2017-07-20 08:39:34', '', 38, 'http://localhost/wordpress/wp-content/uploads/2017/07/61V47ILn2L._SL1500.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2017-07-20 08:46:41', '2017-07-20 08:46:41', '<ul class="a-unordered-list a-vertical a-spacing-none">\r\n 	<li><span class="a-list-item">Induction Compatible</span></li>\r\n 	<li><span class="a-list-item">Color: Silver, Material type: Aluminium</span></li>\r\n 	<li><span class="a-list-item">Package contents: 1 pressure cooker with lid (3 litres)</span></li>\r\n</ul>', 'Prestige Popular Plus Induction Base Pressure Cooker, 3 Litres', '<ul>\r\n 	<li><b>Product Dimensions: </b>31.6 x 22.3 x 18.2 cm ; 1.5 Kg</li>\r\n 	<li><b>Item model number:</b> 10201</li>\r\n 	<li><b>ASIN: </b>B00MA01ZOI</li>\r\n 	<li><b>Date first available at Amazon.in:</b> 31 July 2014</li>\r\n 	<li><b>Average Customer Review:</b> <span class="crAvgStars"><span class="asinReviewsSummary"><a href="http://www.amazon.in/product-reviews/B00MA01ZOI/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00MA01ZOI_3947_star__contentDiv_reviewHistoPop_B00MA01ZOI_3947"><span class="swSprite s_star_4_0 " title="3.8 out of 5 stars">3.8 out of 5 stars</span> </a> <span class="histogramButton"><a href="http://www.amazon.in/product-reviews/B00MA01ZOI/ref=dp_db_cm_cr_acr_img?ie=UTF8&amp;showViewpoints=1" name="reviewHistoPop_B00MA01ZOI_3947_button__contentDiv_reviewHistoPop_B00MA01ZOI_3947"><span class="swSprite s_chevron ">See all reviews</span> </a></span></span>(<a href="http://www.amazon.in/product-reviews/B00MA01ZOI/ref=dp_db_cm_cr_acr_txt?ie=UTF8&amp;showViewpoints=1">46 customer reviews</a>)</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'prestige-popular-plus-induction-base-pressure-cooker-3-litres', '', '', '2017-07-20 08:46:42', '2017-07-20 08:46:42', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2017-07-20 08:46:12', '2017-07-20 08:46:12', '', '51N2rPAivHL._SL1130', '', 'inherit', 'open', 'closed', '', '51n2rpaivhl-_sl1130', '', '', '2017-07-20 08:46:12', '2017-07-20 08:46:12', '', 40, 'http://localhost/wordpress/wp-content/uploads/2017/07/51N2rPAivHL._SL1130.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(8, 15, 0),
(10, 2, 0),
(10, 16, 0),
(15, 2, 0),
(15, 15, 0),
(17, 2, 0),
(17, 15, 0),
(19, 2, 0),
(19, 16, 0),
(21, 2, 0),
(21, 17, 0),
(23, 2, 0),
(23, 17, 0),
(31, 2, 0),
(31, 17, 0),
(33, 2, 0),
(33, 17, 0),
(35, 2, 0),
(35, 17, 0),
(38, 2, 0),
(38, 18, 0),
(40, 2, 0),
(40, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 12),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 3),
(16, 16, 'product_cat', '', 0, 2),
(17, 17, 'product_cat', '', 0, 5),
(18, 18, 'product_cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '0'),
(2, 15, 'product_count_product_cat', '3'),
(3, 16, 'order', '0'),
(4, 16, 'product_count_product_cat', '2'),
(5, 17, 'order', '0'),
(6, 17, 'product_count_product_cat', '5'),
(7, 18, 'order', '0'),
(8, 18, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'mixer grinder', 'mixer-grinder', 0),
(16, 'Induction Cooker', 'induction-cooker', 0),
(17, 'Juicer', 'juicer', 0),
(18, 'Pressure Cooker', 'pressure-cooker', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"13952f136af8c3bb5948bf12a01cbb4158c309e38fe4c1139e55f424447d5a99";a:4:{s:10:"expiration";i:1501226666;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1501053866;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1500537582'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"c9f0f895fb98ab9159f51fd0297e236d";a:9:{s:10:"product_id";i:8;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:1989;s:13:"line_subtotal";d:1989;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7jW6bNzIGyLWtXGxzqDX0Fr3unHVt/', 'admin', 'krishv.krishv51@gmail.com', '', '2017-07-19 15:45:19', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(9, '1', 'a:19:{s:4:"cart";s:306:"a:1:{s:32:"c9f0f895fb98ab9159f51fd0297e236d";a:9:{s:10:"product_id";i:8;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:1989;s:13:"line_subtotal";d:1989;s:8:"line_tax";d:0;s:17:"line_subtotal_tax";d:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";i:1989;s:5:"total";d:1989;s:8:"subtotal";i:1989;s:15:"subtotal_ex_tax";i:1989;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:8:"customer";s:679:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"JH";s:7:"country";s:2:"IN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"JH";s:16:"shipping_country";s:2:"IN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:25:"krishv.krishv51@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1501226672);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
