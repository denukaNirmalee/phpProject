-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2018 at 09:53 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_uom`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_staff_tbl`
--

CREATE TABLE IF NOT EXISTS `academic_staff_tbl` (
  `id_no` int(7) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Contact_no` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `academic_staff_tbl`
--


-- --------------------------------------------------------

--
-- Table structure for table `contact_tbl`
--

CREATE TABLE IF NOT EXISTS `contact_tbl` (
  `cont_id` int(10) NOT NULL AUTO_INCREMENT,
  `cont_name` varchar(100) NOT NULL,
  `cont_email` varchar(100) NOT NULL,
  `cont_subject` varchar(100) NOT NULL,
  `cont_msg` varchar(255) NOT NULL,
  PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contact_tbl`
--

INSERT INTO `contact_tbl` (`cont_id`, `cont_name`, `cont_email`, `cont_subject`, `cont_msg`) VALUES
(1, 'gdfhfgh', 'dgfdf', 'dfdbfg', 'gfhfdghfghg'),
(2, 'sfdfhfdx', 'dfjfgjfgjg', 'jgjgjghk', 'hkhkhjk'),
(3, 'sfdfhfdx', 'dfjfgjfgjg', 'jgjgjghk', 'hkhkhjk');

-- --------------------------------------------------------

--
-- Table structure for table `department_tbl`
--

CREATE TABLE IF NOT EXISTS `department_tbl` (
  `Departmnt_id` int(10) NOT NULL AUTO_INCREMENT,
  `Department` varchar(255) NOT NULL,
  PRIMARY KEY (`Departmnt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `department_tbl`
--

INSERT INTO `department_tbl` (`Departmnt_id`, `Department`) VALUES
(1, 'Architecture'),
(2, 'Building Economics'),
(3, 'Integrated Design'),
(4, 'Town and Country Planning'),
(5, 'Chemical and Process Engineering'),
(6, 'Computer Science and Engineering'),
(7, 'Earth Resources Engineering'),
(8, 'Civil Engineering'),
(9, 'Electrical Engineering'),
(10, 'Electronic and Telecommunication Engineering'),
(11, 'Management of Technology'),
(12, 'Materials Science and Engineering'),
(13, 'Mathematics'),
(14, 'Mechanical Engineering'),
(15, 'Textile and Clothing Technology'),
(16, 'Transport and Logistics Management'),
(17, 'Computational Mathematics'),
(18, 'Information Technology'),
(19, 'Interdisciplinary Studies');

-- --------------------------------------------------------

--
-- Table structure for table `designation_tbl`
--

CREATE TABLE IF NOT EXISTS `designation_tbl` (
  `Desig_id` int(10) NOT NULL AUTO_INCREMENT,
  `Designation` varchar(150) NOT NULL,
  PRIMARY KEY (`Desig_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `designation_tbl`
--

INSERT INTO `designation_tbl` (`Desig_id`, `Designation`) VALUES
(1, 'Dean '),
(2, 'Senior Assistant Registrar'),
(3, 'Senior Assistant Bursar Faculties'),
(4, 'Senior Staff Assistant'),
(5, 'Clerk '),
(6, 'Computer Applications Assistant'),
(7, 'Professor'),
(8, 'Labour '),
(9, 'Senior Lecturer'),
(10, 'Lecturer ');

-- --------------------------------------------------------

--
-- Table structure for table `faculties_tbl`
--

CREATE TABLE IF NOT EXISTS `faculties_tbl` (
  `Fac_id` int(10) NOT NULL AUTO_INCREMENT,
  `Fac_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Fac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `faculties_tbl`
--

INSERT INTO `faculties_tbl` (`Fac_id`, `Fac_Name`) VALUES
(1, 'Architecture'),
(2, 'Engineering'),
(3, 'Information Technology'),
(4, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE IF NOT EXISTS `login_tbl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`id`, `username`, `password`) VALUES
(1, 'denuka', 'denuka123'),
(2, 'tharaka', 'tharaka123'),
(3, 'madushika', 'madushika123');

-- --------------------------------------------------------

--
-- Table structure for table `student_detail_tbl`
--

CREATE TABLE IF NOT EXISTS `student_detail_tbl` (
  `Std_id` int(10) NOT NULL AUTO_INCREMENT,
  `Std_name` varchar(255) NOT NULL,
  `Std_gender` varchar(10) NOT NULL,
  `Std_contact` int(10) NOT NULL,
  `Std_faculty` varchar(100) NOT NULL,
  `Std_department` varchar(150) NOT NULL,
  PRIMARY KEY (`Std_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13406 ;

--
-- Dumping data for table `student_detail_tbl`
--

INSERT INTO `student_detail_tbl` (`Std_id`, `Std_name`, `Std_gender`, `Std_contact`, `Std_faculty`, `Std_department`) VALUES
(13401, 'P.D.D.N.Gamage', 'female', 713244763, 'Information Technology', 'Information Technology'),
(13402, 'sdfs', 'male', 0, 'sdfsg', 'sdgsdg'),
(13403, 'dgdsfg', 'gfd', 54356, 'sgdgf', 'fgdhd'),
(13404, 'P.D.N.S.Gamage', 'male', 723456789, 'Engineering', 'Computer Science and Engineering'),
(13405, 'P.D.D.T.Gamage', 'female', 71, 'University of Kelaniya', 'Applied Science');
