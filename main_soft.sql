-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2016 at 10:57 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main_soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `academic_year_id` int(11) NOT NULL,
  `academic_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`academic_year_id`, `academic_year`) VALUES
(1, 2015),
(2, 2016),
(3, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(10) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `user_role`) VALUES
(1, 'admin', 'admin@grs.com', '1234', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admit_card`
--

CREATE TABLE `admit_card` (
  `admit_id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `exam_id` int(10) NOT NULL,
  `year` int(10) NOT NULL,
  `grantedform` date NOT NULL,
  `grantedto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admit_card`
--

INSERT INTO `admit_card` (`admit_id`, `student_id`, `class_id`, `exam_id`, `year`, `grantedform`, `grantedto`) VALUES
(1, 557, 9, 0, 2015, '2016-12-18', '2016-12-27'),
(2, 558, 9, 0, 2015, '2016-12-18', '2016-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `date_1` tinytext NOT NULL,
  `date_2` tinytext NOT NULL,
  `date_3` tinytext NOT NULL,
  `date_4` tinytext NOT NULL,
  `date_5` tinytext NOT NULL,
  `date_6` tinytext NOT NULL,
  `date_7` tinytext NOT NULL,
  `date_8` tinytext NOT NULL,
  `date_9` tinytext NOT NULL,
  `date_10` tinytext NOT NULL,
  `date_11` tinytext NOT NULL,
  `date_12` tinytext NOT NULL,
  `date_13` tinytext NOT NULL,
  `date_14` tinytext NOT NULL,
  `date_15` tinytext NOT NULL,
  `date_16` tinytext NOT NULL,
  `date_17` tinytext NOT NULL,
  `date_18` tinytext NOT NULL,
  `date_19` tinytext NOT NULL,
  `date_20` tinytext NOT NULL,
  `date_21` tinytext NOT NULL,
  `date_22` tinytext NOT NULL,
  `date_23` tinytext NOT NULL,
  `date_24` tinytext NOT NULL,
  `date_25` tinytext NOT NULL,
  `date_26` tinytext NOT NULL,
  `date_27` tinytext NOT NULL,
  `date_28` tinytext NOT NULL,
  `date_29` tinytext NOT NULL,
  `date_30` tinytext NOT NULL,
  `date_31` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mark`
--

CREATE TABLE `attendance_mark` (
  `attendance_mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `sub_exam_id` int(11) NOT NULL,
  `attend` float NOT NULL,
  `classday` float NOT NULL,
  `homework` varchar(200) NOT NULL,
  `gardian_care` varchar(200) NOT NULL,
  `attention` varchar(200) NOT NULL,
  `behave` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_type`
--

CREATE TABLE `attendance_type` (
  `type_id` int(11) NOT NULL,
  `attendance_type` varchar(60) NOT NULL,
  `short_form` tinytext NOT NULL,
  `color` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `bank_account_id` int(11) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `account_holder` varchar(100) DEFAULT NULL,
  `bank_address` text,
  `initial_balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_deposit`
--

CREATE TABLE `bank_deposit` (
  `bank_deposit_id` int(11) NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_from` varchar(200) DEFAULT NULL,
  `method` enum('Cash','Cheque','Bank Transfer','bKash','ATM Withdrawals') DEFAULT NULL,
  `description` text,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_expense`
--

CREATE TABLE `bank_expense` (
  `bank_expense_id` int(11) NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_to` varchar(100) DEFAULT NULL,
  `method` enum('Cash','Checque','Bank Transfer','ATM Withdrawals') DEFAULT NULL,
  `description` text,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `blood_group_id` smallint(6) NOT NULL,
  `group` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` int(11) NOT NULL,
  `teacher_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_word`, `name_numeric`, `teacher_id`) VALUES
(2, 'Two (Lal)', 'Two', 2, '11'),
(3, 'Three (Modhumoti)', 'Three', 3, '0'),
(4, 'Four (Chameli) ', 'Four', 4, '0'),
(5, 'Five (Durjoy) ', 'Five', 5, '0'),
(6, 'Six (Rokeya)', 'Six', 6, '0'),
(7, 'Seven (Sufiya)', 'Seven', 7, '0'),
(8, 'Eight', 'Eight', 8, '7'),
(9, 'Nine', 'Nine', 9, '9'),
(10, 'Ten', 'Ten', 10, '10'),
(12, 'One (Sharat)', '', 1, '11'),
(13, 'Play (Golap)', '', 0, '11'),
(14, 'Nursery (Moyna)', '', 0, '11'),
(16, 'KG (Padma)', '', 0, '11'),
(20, 'Three (Surma)', '', 3, '11'),
(21, 'Five (Duronta)', '', 5, '11'),
(22, 'Four (Palash)', '', 4, '11'),
(23, 'Six (Nazrul)', '', 6, '11'),
(24, '', '', 0, '15');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time_end` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `subject_id`, `time_start`, `time_end`, `day`) VALUES
(26, 1, 1, '10:00 AM', '10:50 AM', 'saturday'),
(27, 1, 2, '03:21 PM', '03:23 PM', 'sunday'),
(28, 9, 14, '09:30 AM', '10:30 AM', 'sunday'),
(29, 1, 11, '08:00 AM', '', 'saturday'),
(30, 1, 11, '08:00 AM', '08:39 PM', 'saturday'),
(31, 7, 219, '09:18 AM', '11:18 PM', 'tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `class_section_id` int(11) NOT NULL,
  `section_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`class_section_id`, `section_name`) VALUES
(1, 'Padma'),
(2, 'Padma'),
(3, 'Megna'),
(4, 'Jamuna'),
(5, 'Day'),
(6, 'night');

-- --------------------------------------------------------

--
-- Table structure for table `collegesubject`
--

CREATE TABLE `collegesubject` (
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `catagory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `controls`
--

CREATE TABLE `controls` (
  `controls_id` int(11) NOT NULL,
  `maximum_student` int(11) DEFAULT NULL,
  `maximum_teacher` int(11) DEFAULT NULL,
  `rate_per_student` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `controls`
--

INSERT INTO `controls` (`controls_id`, `maximum_student`, `maximum_teacher`, `rate_per_student`) VALUES
(1, 2000, 1000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `csalary`
--

CREATE TABLE `csalary` (
  `id` int(11) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `tname` varchar(200) NOT NULL,
  `employeeID` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `Basic` double NOT NULL,
  `MedicalAllowance` double NOT NULL,
  `HouseRent` double NOT NULL,
  `Convince` double NOT NULL,
  `WorkingHour` varchar(200) NOT NULL,
  `present_day` int(11) NOT NULL,
  `Tax` double NOT NULL,
  `Others` double NOT NULL,
  `Advance` double NOT NULL,
  `Deduction` double NOT NULL,
  `bonus` double NOT NULL,
  `loan` double NOT NULL,
  `pf` double NOT NULL,
  `month` int(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `gsalary` double NOT NULL,
  `tsalary` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `Note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `csalary`
--

INSERT INTO `csalary` (`id`, `teacher_id`, `tname`, `employeeID`, `designation`, `Basic`, `MedicalAllowance`, `HouseRent`, `Convince`, `WorkingHour`, `present_day`, `Tax`, `Others`, `Advance`, `Deduction`, `bonus`, `loan`, `pf`, `month`, `year`, `gsalary`, `tsalary`, `status`, `Note`) VALUES
(12, 13, 'mr. a', '123', 'Night Guard', 50000, 1000, 1000, 1000, '202', 0, 1000, 1000, 1000, 1000, 0, 0, 0, 2, '2014', 54000, 51000, 0, 'justzz'),
(13, 13, 'mr. a', '123', 'Night Guard', 50000, 1000, 1000, 1000, '202', 0, 1000, 1000, 1000, 1000, 0, 0, 0, 4, '2015', 54000, 51000, 1, 'justzz'),
(14, 18, 'Md. Riaj Uddin', '', '', 5000, 500, 250, 0, '0', 0, 750, 0, 2000, 100, 500, 1000, 0, 4, '2015', 5750, 2400, 0, 'For Absence '),
(15, 11, 'Md. Samir Hossen', '', '', 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015', 0, 0, 0, '0'),
(16, 11, 'Md. Samir Hossen', '', 'Teacher', 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015', 0, 0, 0, '0'),
(17, 14, 'Mst. Sabina Khatun', '', '', 10000, 2000, 2000, 200, '0', 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015', 14200, 14200, 0, ''),
(18, 12, 'Md. Sajadur Rahman', 'MSR', 'Teacher', 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015', 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `number_of_room`, `description`) VALUES
(1, 'Shamoli Boys Hostel', '230', 'Blank seat 50 in room no 110, 50, 30, 120 and 250'),
(2, 'Uttara Boys Hostel', '500', 'No Seat Avialable'),
(3, 'Banani Boys Hostel', '230', 'Blank seat 50 in room no 110, 50, 30, 120 and 250'),
(4, 'Girl Hostel', '580', 'Blank seat 50 in room no 110, 50, 30, 120 and 250'),
(5, 'Girl Hostel 2', '650', 'Blank seat 50 in room no 110, 50, 30, 120 and 250');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `employee_attendance_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `publishing_date` date NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `exam_result_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) NOT NULL,
  `sub_exam_id` int(11) NOT NULL,
  `formation` float NOT NULL,
  `objective` float NOT NULL,
  `practical` float NOT NULL,
  `sba` float NOT NULL,
  `total_mark` float NOT NULL,
  `full_mark` float NOT NULL,
  `gpa` float NOT NULL,
  `grade` varchar(2) NOT NULL,
  `merit_position` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `excel_file`
--

CREATE TABLE `excel_file` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `excel_file`
--

INSERT INTO `excel_file` (`id`, `date`, `file_name`) VALUES
(44, '2016-12-26 19:22:55', '1_sample_student_information_(2).xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `exp_id` int(10) NOT NULL,
  `expense_by` varchar(256) NOT NULL,
  `expense_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `expense_name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(256) NOT NULL,
  `material_name` varchar(256) NOT NULL,
  `document_name` varchar(256) NOT NULL,
  `payment_to` varchar(256) NOT NULL,
  `payment_method` varchar(256) NOT NULL,
  `amount` int(10) NOT NULL,
  `expense_date` date NOT NULL,
  `expense_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees_name`
--

CREATE TABLE `fees_name` (
  `fees_name_id` int(10) NOT NULL,
  `fee_name` varchar(256) NOT NULL,
  `fee_full_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees_setup`
--

CREATE TABLE `fees_setup` (
  `fees_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `fees_name_id` int(10) NOT NULL,
  `fees_amount` int(4) NOT NULL,
  `total_bill` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fourthsubject`
--

CREATE TABLE `fourthsubject` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `catagoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `full_mark`
--

CREATE TABLE `full_mark` (
  `full_mark_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `sub_exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `written_pass_mark` varchar(10) NOT NULL,
  `objective_pass_mark` varchar(10) NOT NULL,
  `practical_pass_mark` varchar(10) NOT NULL,
  `sba_pass_mark` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` smallint(6) NOT NULL,
  `name` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` float(4,2) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`) VALUES
(1, 'F', 0.00, 0, 39),
(3, 'C', 2.00, 40, 49),
(4, 'B', 3.00, 50, 59),
(5, 'A-', 3.50, 60, 69),
(6, 'A', 4.00, 70, 79),
(7, 'A+', 5.00, 80, 100),
(8, '', 0.00, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`, `create_date`) VALUES
(1, 'Science', '2015-04-18 11:02:08'),
(2, 'Humanities', '2015-04-18 11:02:08'),
(3, 'Business Studies', '2015-04-18 11:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holidayid` int(11) NOT NULL,
  `holidayname` text NOT NULL,
  `holidaydate` date NOT NULL,
  `holidaytype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holidayid`, `holidayname`, `holidaydate`, `holidaytype`) VALUES
(1, 'Eid-Ul -Azha', '2016-12-20', '');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `inc_id` int(10) NOT NULL,
  `income_by` varchar(256) NOT NULL,
  `income_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `income_name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(256) NOT NULL,
  `material_name` varchar(256) NOT NULL,
  `document_name` varchar(256) NOT NULL,
  `payment_to` varchar(200) NOT NULL,
  `payment_from` varchar(256) NOT NULL,
  `payment_method` varchar(256) NOT NULL,
  `amount` int(10) NOT NULL,
  `income_date` date NOT NULL,
  `income_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `payment_month` varchar(160) NOT NULL,
  `payment_year` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `description` varchar(50) NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `invoice_name` varchar(50) NOT NULL,
  `total_collection` float NOT NULL,
  `total_weaver` float NOT NULL,
  `total_fine` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `invoice_details_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `collection_amount` float NOT NULL,
  `weaver` float NOT NULL,
  `fine` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `student_id`, `fees_id`, `collection_amount`, `weaver`, `fine`) VALUES
(1, 1, 350, 1, 200, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'admin_dashboard', ''),
(2, 'Collection History', ''),
(3, 'Collection', ''),
(4, 'Today Collection', ''),
(5, 'Collection of this month', ''),
(6, 'student information', ''),
(7, 'male', ''),
(8, 'female', ''),
(9, 'noticeboard', ''),
(10, 'calendar_schedule', ''),
(11, 'fees_setup', ''),
(12, 'fees_setup_list', ''),
(13, 'fees_name_list', ''),
(14, 'add_new_fees', ''),
(15, 'sms_fee', ''),
(16, 'edit', ''),
(17, 'receipt_books', ''),
(18, 'invoice_book', ''),
(19, 'cultural_program', ''),
(20, 'lib_fees', ''),
(21, 'sports_fees', ''),
(22, 'session_fee', ''),
(23, 'dev_fees', ''),
(24, 'admission_fees', ''),
(25, 'monthly_fees', ''),
(26, 'exam_fee', ''),
(27, 'registration_fee', ''),
(28, 'others', ''),
(29, 'milad', ''),
(30, 'IT_charge', ''),
(31, 'scout_fees', ''),
(32, 'tc_fees', ''),
(33, 'admission_form', ''),
(34, 'electricity_charge', ''),
(35, 'lab_charge', ''),
(36, 'poor_fund', ''),
(37, 'm_jan', ''),
(38, 'm_feb', ''),
(39, 'm_mar', ''),
(40, 'm_apr', ''),
(41, 'm_may', ''),
(42, 'm_jun', ''),
(43, 'm_jul', ''),
(44, 'm_aug', ''),
(45, 'm_sep', ''),
(46, 'm_oct', ''),
(47, 'm_nov', ''),
(48, 'm_dec', ''),
(49, 'abcd', ''),
(50, 'monthly_fee_test_jan', ''),
(51, 'monthly_fee_test_mar', ''),
(52, 'monthly_fee_test_may', ''),
(53, 'monthly_fee_test_jul', ''),
(54, 'monthly_fee_test_aug', ''),
(55, 'monthly_fee_test_oct', ''),
(56, 'monthly_fee_test_dec', ''),
(57, 'tuition_fee_jan', ''),
(58, 'tuition_fee_mar', ''),
(59, 'tuition_fee_may', ''),
(60, 'tuition_fee_jul', ''),
(61, 'tuition_fee_aug', ''),
(62, 'tuition_fee_oct', ''),
(63, 'tuition_fee_dec', ''),
(64, 'add_fees', ''),
(65, 'Manage Fees', ''),
(66, 'select_class', ''),
(67, 'select_group', ''),
(68, 'select_fee', ''),
(69, 'manage_fees', ''),
(70, 'class_routine_list', ''),
(71, 'add_class_routine', ''),
(72, 'print', ''),
(73, 'all routine print', ''),
(74, 'class', ''),
(75, 'subject', ''),
(76, 'day', ''),
(77, 'starting_time', ''),
(78, 'ending_time', ''),
(79, 'Result Process ', ''),
(80, 'exam_name:', ''),
(81, 'submit', ''),
(82, 'login_failed', ''),
(83, 'account', ''),
(84, 'profile', ''),
(85, 'change_password', ''),
(86, 'logout', ''),
(87, 'admin', ''),
(88, 'panel', ''),
(89, 'Fees Payment', ''),
(90, 'ID', ''),
(91, 'Roll', ''),
(92, 'name', ''),
(93, 'invoice/payment_list', ''),
(94, 'add_invoice/payment', ''),
(95, 'Class', ''),
(96, 'Roll No', ''),
(97, 'Invoice Number', ''),
(98, 'Payment For', ''),
(99, 'Total Payment', ''),
(100, 'status', ''),
(101, 'date', ''),
(102, 'options', ''),
(103, 'download excel', ''),
(104, 'download word', ''),
(105, 'select_a_class', ''),
(106, 'student', ''),
(107, 'title', ''),
(108, 'total_bill', ''),
(109, 'Due', ''),
(110, 'description', ''),
(111, 'overdue', ''),
(112, 'Fine', ''),
(113, 'absence_fine', ''),
(114, 'late_fine', ''),
(115, 'bad_behavior', ''),
(116, 'deposit', ''),
(117, 'weaver', ''),
(118, 'due', ''),
(119, 'paid', ''),
(120, 'unpaid', ''),
(121, 'partial', ''),
(122, 'add_invoice', ''),
(123, 'manage_student', ''),
(124, 'student_list', ''),
(125, 'roll', ''),
(126, 'photo', ''),
(127, 'student_name', ''),
(128, 'father_name', ''),
(129, 'present_address', ''),
(130, 'group', ''),
(131, 'section', ''),
(132, 'marksheet', ''),
(133, 'id_card', ''),
(134, 'delete', ''),
(135, 'roll', ''),
(136, 'manage_teacher', ''),
(137, 'admission_form_fee', ''),
(138, 'admission_fee', ''),
(139, 'tution_fee_jan', ''),
(140, 'tution_fee_feb', ''),
(141, 'tution_fee_mar', ''),
(142, 'tution_fee_apr', ''),
(143, 'tution_fee_may', ''),
(144, 'tution_fee_jun', ''),
(145, 'tution_fee_jul', ''),
(146, 'tution_fee_aug', ''),
(147, 'tution_fee_sep', ''),
(148, 'tution_fee_oct', ''),
(149, 'tution_fee_nov', ''),
(150, 'tution_fee_dec', ''),
(151, 'day_care_fee_jan', ''),
(152, 'day_care_fee_feb', ''),
(153, 'day_care_fee_mar', ''),
(154, 'day_care_fee_apr', ''),
(155, 'day_care_fee_may', ''),
(156, 'day_care_fee_jun', ''),
(157, 'day_care_fee_jul', ''),
(158, 'day_care_fee_aug', ''),
(159, 'day_care_fee_sep', ''),
(160, 'day_care_fee_oct', ''),
(161, 'day_care_fee_nov', ''),
(162, 'day_care_fee_dec', ''),
(163, 'hostel_fee_jan', ''),
(164, 'hostel_fee_feb', ''),
(165, 'hostel_fee_mar', ''),
(166, 'hostel_fee_apr', ''),
(167, 'hostel_fee_may', ''),
(168, 'hostel_fee_jun', ''),
(169, 'hostel_fee_jul', ''),
(170, 'hostel_fee_aug', ''),
(171, 'hostel_fee_sep', ''),
(172, 'hostel_fee_oct', ''),
(173, 'hostel_fee_nov', ''),
(174, 'hostel_fee_dec', ''),
(175, 'transport_fee_jan', ''),
(176, 'transport_fee_feb', ''),
(177, 'transport_fee_mar', ''),
(178, 'transport_fee_apr', ''),
(179, 'transport_fee_may', ''),
(180, 'transport_fee_jun', ''),
(181, 'transport_fee_jul', ''),
(182, 'transport_fee_aug', ''),
(183, 'transport_fee_sep', ''),
(184, 'transport_fee_oct', ''),
(185, 'transport_fee_nov', ''),
(186, 'transport_fee_dec', ''),
(187, 'first_monthly_test_fee', ''),
(188, 'second_monthly_test_fee', ''),
(189, 'first_term_final_exam_fee', ''),
(190, 'third_monthly_test_exam_fee', ''),
(191, 'fourth_monthly_test_fee', ''),
(192, 'second_term_final_exam_fee', ''),
(193, 'five_monthly_test_fee', ''),
(194, 'sixth_monthly_test_fee', ''),
(195, 'annual_exam_fee', ''),
(196, 'manage_parent', ''),
(197, 'manage_backup_restore', ''),
(198, 'backup', ''),
(199, 'restore', ''),
(200, 'teacher', ''),
(201, 'parent', ''),
(202, 'class_routine', ''),
(203, 'studentattendance', ''),
(204, 'exam', ''),
(205, 'grade', ''),
(206, 'mark', ''),
(207, 'overallmarksheet', ''),
(208, 'fees_name', ''),
(209, 'expense', ''),
(210, 'income', ''),
(211, 'invoice', ''),
(212, 'csalary', ''),
(213, 'salarysetup', ''),
(214, 'month', ''),
(215, 'book', ''),
(216, 'dormitory', ''),
(217, 'religion', ''),
(218, 'settings', ''),
(219, 'transport', ''),
(220, 'all', ''),
(221, 'accountant', ''),
(222, 'admit_card', ''),
(223, 'attendance', ''),
(224, 'attendance_mark', ''),
(225, 'attendance_type', ''),
(226, 'blood_group', ''),
(227, 'collegesubject', ''),
(228, 'controls', ''),
(229, 'designation', ''),
(230, 'email_template', ''),
(231, 'exam_result', ''),
(232, 'fees', ''),
(233, 'fourthsubject', ''),
(234, 'full_mark', ''),
(235, 'holiday', ''),
(236, 'invoice_details', ''),
(237, 'language', ''),
(238, 'language_keys', ''),
(239, 'payment', ''),
(240, 'relation', ''),
(241, 'superadmin', ''),
(242, 'teacher_education', ''),
(243, 'testimonial', ''),
(244, 'transfer_certificate', ''),
(245, 'ALL', ''),
(246, 'upload_&_restore_from_backup', ''),
(247, 'ALL', ''),
(248, 'manage_exam_marks', ''),
(249, 'manage_marks', ''),
(250, 'select_exam', ''),
(251, 'Sub_exam', ''),
(252, 'select_subject', ''),
(253, 'select_an_exam', ''),
(254, 'Written', ''),
(255, 'objective', ''),
(256, 'practical', ''),
(257, 'SBA', ''),
(258, 'classday', ''),
(259, 'comment', ''),
(260, 'roll', ''),
(261, 'Admission Form No', ''),
(262, 'Registration No', ''),
(263, 'Student Id', ''),
(264, 'maritial_status', ''),
(265, 'unmarried', ''),
(266, 'married', ''),
(267, 'father_info', ''),
(268, 'O-', ''),
(269, 'O+', ''),
(270, 'A-', ''),
(271, 'A+', ''),
(272, 'B-', ''),
(273, 'B+', ''),
(274, 'AB-', ''),
(275, 'AB+', ''),
(276, 'mother_info', ''),
(277, 'permanent_address', ''),
(278, 'guardian_info', ''),
(279, 'birthday', ''),
(280, 'sex', ''),
(281, 'nationality', ''),
(282, 'phone', ''),
(283, 'email', ''),
(284, 'password', ''),
(285, 'previous_exam_description', ''),
(286, 'TC_students_info', ''),
(287, 're_admission_students_info', ''),
(288, 'first_admission_info', ''),
(289, 'other_students_info', ''),
(290, 'clearance_no', ''),
(291, 'edit_student', ''),
(292, 'roll', ''),
(293, 'roll', ''),
(294, 'roll', ''),
(295, 'student_ID', ''),
(296, 'class_roll', ''),
(297, 'guardian_name ', ''),
(298, 'roll', ''),
(299, 'roll', ''),
(300, 'roll', ''),
(301, 'roll', ''),
(302, 'roll', ''),
(303, 'roll', ''),
(304, 'roll', ''),
(305, 'roll', ''),
(306, 'roll', ''),
(307, 'roll', ''),
(308, 'roll', ''),
(309, 'roll', ''),
(310, 'roll', ''),
(311, 'roll', ''),
(312, 'roll', ''),
(313, 'roll', ''),
(314, 'ALL', ''),
(315, 'ALL', ''),
(316, 'ALL', ''),
(317, 'roll', ''),
(318, 'registration_no', ''),
(319, 'admission_form_no', ''),
(320, 'roll', ''),
(321, 'roll', ''),
(322, 'roll', ''),
(323, 'roll', ''),
(324, 'roll', ''),
(325, 'roll', ''),
(326, 'roll', ''),
(327, 'roll', ''),
(328, 'roll', ''),
(329, 'roll', ''),
(330, 'roll', ''),
(331, 'roll', ''),
(332, 'roll', ''),
(333, 'roll', ''),
(334, 'roll', ''),
(335, 'roll', ''),
(336, 'roll', ''),
(337, 'roll', ''),
(338, 'roll', ''),
(339, 'roll', ''),
(340, 'roll', ''),
(341, 'roll', ''),
(342, 'roll', ''),
(343, 'roll', ''),
(344, 'roll', ''),
(345, 'roll', ''),
(346, 'roll', ''),
(347, 'roll', ''),
(348, 'roll', ''),
(349, 'roll', ''),
(350, 'roll', ''),
(351, 'roll', ''),
(352, 'roll', ''),
(353, 'roll', ''),
(354, 'roll', ''),
(355, 'roll', ''),
(356, 'roll', ''),
(357, 'roll', ''),
(358, 'roll', ''),
(359, 'roll', ''),
(360, 'roll', ''),
(361, 'roll', ''),
(362, 'roll', ''),
(363, 'roll', ''),
(364, 'roll', ''),
(365, 'roll', ''),
(366, 'roll', ''),
(367, 'roll', ''),
(368, 'roll', ''),
(369, 'roll', ''),
(370, 'roll', ''),
(371, 'roll', ''),
(372, 'roll', ''),
(373, 'roll', ''),
(374, 'roll', ''),
(375, 'roll', ''),
(376, 'roll', ''),
(377, 'roll', ''),
(378, 'roll', ''),
(379, 'roll', ''),
(380, 'roll', ''),
(381, 'roll', ''),
(382, 'roll', ''),
(383, 'roll', ''),
(384, 'ALL', ''),
(385, 'roll', ''),
(386, 'roll', ''),
(387, 'roll', ''),
(388, 'roll', ''),
(389, 'Bulk_student', ''),
(390, 'student_bulk', ''),
(391, 'Upload and Import excel', ''),
(392, 'roll', ''),
(393, 'roll', ''),
(394, 'roll', ''),
(395, 'roll', ''),
(396, 'roll', ''),
(397, 'roll', ''),
(398, 'roll', ''),
(399, 'roll', ''),
(400, 'ALL', ''),
(401, 'roll', ''),
(402, 'roll', ''),
(403, 'roll', ''),
(404, 'roll', ''),
(405, 'roll', ''),
(406, 'roll', ''),
(407, 'roll', ''),
(408, 'roll', ''),
(409, 'roll', ''),
(410, 'roll', ''),
(411, 'roll', ''),
(412, 'roll', ''),
(413, 'roll', ''),
(414, 'ALL', ''),
(415, 'roll', ''),
(416, 'roll', ''),
(417, 'roll', ''),
(418, 'roll', ''),
(419, 'roll', ''),
(420, 'roll', ''),
(421, 'roll', ''),
(422, 'roll', ''),
(423, 'roll', ''),
(424, 'roll', ''),
(425, 'roll', ''),
(426, 'roll', ''),
(427, 'roll', ''),
(428, 'roll', ''),
(429, 'roll', ''),
(430, 'roll', ''),
(431, 'roll', ''),
(432, 'roll', ''),
(433, 'roll', ''),
(434, 'roll', ''),
(435, 'roll', ''),
(436, 'roll', ''),
(437, 'roll', ''),
(438, 'roll', ''),
(439, 'roll', ''),
(440, 'roll', ''),
(441, 'roll', ''),
(442, 'roll', ''),
(443, 'roll', ''),
(444, 'roll', ''),
(445, 'roll', ''),
(446, 'roll', ''),
(447, 'roll', ''),
(448, 'roll', ''),
(449, 'roll', ''),
(450, 'roll', ''),
(451, 'roll', ''),
(452, 'roll', ''),
(453, 'roll', ''),
(454, 'roll', ''),
(455, 'roll', ''),
(456, 'roll', ''),
(457, 'roll', ''),
(458, 'roll', ''),
(459, 'roll', ''),
(460, 'roll', ''),
(461, 'roll', ''),
(462, 'roll', ''),
(463, 'roll', ''),
(464, 'roll', ''),
(465, 'roll', ''),
(466, 'roll', ''),
(467, 'roll', ''),
(468, 'parent_list', ''),
(469, 'roll', ''),
(470, 'parent_name', ''),
(471, 'relation_with_student', ''),
(472, 'parent_email', ''),
(473, 'parent_phone', ''),
(474, 'parrent_address', ''),
(475, 'parrent_occupation', ''),
(476, 'add', ''),
(477, 'roll', ''),
(478, 'roll', ''),
(479, 'roll', ''),
(480, 'roll', ''),
(481, 'roll', ''),
(482, 'roll', ''),
(483, 'roll', ''),
(484, 'roll', ''),
(485, 'roll', ''),
(486, 'roll', ''),
(487, 'roll', ''),
(488, 'roll', ''),
(489, 'roll', ''),
(490, 'roll', ''),
(491, 'roll', ''),
(492, 'roll', ''),
(493, 'roll', ''),
(494, 'ALL', ''),
(495, 'ALL', ''),
(496, 'roll', ''),
(497, 'roll', ''),
(498, 'roll', ''),
(499, 'roll', ''),
(500, 'roll', ''),
(501, 'roll', ''),
(502, 'roll', ''),
(503, 'roll', ''),
(504, 'roll', ''),
(505, 'roll', ''),
(506, 'roll', ''),
(507, 'roll', ''),
(508, 'roll', ''),
(509, 'roll', ''),
(510, 'roll', ''),
(511, 'roll', ''),
(512, 'roll', ''),
(513, 'roll', ''),
(514, 'roll', ''),
(515, 'roll', ''),
(516, 'roll', ''),
(517, 'roll', ''),
(518, 'roll', ''),
(519, 'roll', ''),
(520, 'roll', ''),
(521, 'roll', ''),
(522, 'roll', ''),
(523, 'roll', ''),
(524, 'roll', ''),
(525, 'roll', ''),
(526, 'roll', ''),
(527, 'ALL', ''),
(528, 'roll', ''),
(529, 'roll', ''),
(530, 'ALL', ''),
(531, 'roll', ''),
(532, 'roll', ''),
(533, 'roll', ''),
(534, 'ALL', '');

-- --------------------------------------------------------

--
-- Table structure for table `language_keys`
--

CREATE TABLE `language_keys` (
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `leave_type_id` int(11) NOT NULL,
  `leave_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `sub_exam_id` int(11) DEFAULT NULL,
  `formation` float NOT NULL,
  `objective` float NOT NULL,
  `practical` float NOT NULL,
  `sba` float DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `total_marks` float NOT NULL DEFAULT '0',
  `sgpa` float NOT NULL,
  `grade` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `highest_mark` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

CREATE TABLE `marksheet` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `sub_exam_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `overall_total` decimal(10,2) NOT NULL,
  `gpa` varchar(5) DEFAULT NULL,
  `overall_gpa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'Admission Start', '2015-2016 Session Admission start from 30 November 2014. Please Collect your admission from our website.<br><br>', 1416787200),
(2, 'Annual Exam', '<div>For class 1 to 9 annual exam start from <b>November 20, 2014</b>,</div>Please Collect your admit card from our website or office.<br><br>', 1417305600),
(3, ' Picnic', 'You will be very pleased to know \r\nthat, we are going to arrange a picnic from our school on 27 Nov 2014.\r\n We have selected Sonargaon for our picnic spot.\r\n<br><br>Your loving friend\r\n<span><br>Headmaster</span><br>', 1417046400),
(5, 'à¦ªà¦¹à§‡à¦²à¦¾ à¦¬à§ˆà¦¶à¦¾à¦–', '<br>à¦Ÿà¦¾à¦• à¦¡à§à¦®à¦¾ à¦¡à§à¦® à¦¬à¦¾à¦œà¦›à§‡ à¦¢à¦¾à¦•\r\n<br>à¦¤à¦¾à¦°à¦‡ à¦¸à¦¾à¦¥à§‡ à¦¬à¦¾à¦œà¦›à§‡ à¦¶à¦¾à¦à¦–à¥¤\r\n<br>à¦†à¦¬à¦¾à¦° à¦à¦¸à§‡à¦›à§‡ à¦«à¦¿à¦°à§‡ à¦ªà¦¹à§‡à¦²à¦¾ à¦¬à§ˆà¦¶à¦¾à¦–!! \r\n<br>à¦¸à¦¬à¦¾à¦‡à¦•à§‡ à¦ªà¦¹à§‡à¦²à¦¾ à¦¬à§ˆà¦¶à¦¾à¦–à§‡à¦° à¦¶à§à¦­à§‡à¦šà§à¦›à¦¾<br><br>', 1428962400);

-- --------------------------------------------------------

--
-- Table structure for table `overallmarksheet`
--

CREATE TABLE `overallmarksheet` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `sub_exam_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `overall_total` decimal(10,2) NOT NULL,
  `overall_gpa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `student_id`, `relation_with_student`, `phone`, `address`, `profession`) VALUES
(1, 'Abdul kader', 'info@wemaxsoftware.com', '1234', 1, 'Father', '01620888555', 'Mohakhali', 'Service'),
(2, 'Bushra Farook', 'info@wemaxsoftware.com', '', 2, 'Mather', '01620888555', ' Uttara', 'Service'),
(3, 'Bushra Farook', 'info@wemaxsoftware.com', '', 3, 'Mather', '01620888555', 'Dhaka Cantonment', 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `monthly_fees` float NOT NULL,
  `admission_fees` float NOT NULL,
  `admission_form` float NOT NULL,
  `tc_fees` float NOT NULL,
  `scout_fees` float NOT NULL,
  `lib_fees` float NOT NULL,
  `poor_fund` float NOT NULL,
  `dev_fees` float NOT NULL,
  `sports_fees` float NOT NULL,
  `lab_charge` float NOT NULL,
  `electricity_charge` float NOT NULL,
  `IT_charge` float NOT NULL,
  `Fine` float NOT NULL,
  `annual_exam` float NOT NULL,
  `mid_term_exam` float NOT NULL,
  `others` float NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provident_payment`
--

CREATE TABLE `provident_payment` (
  `provident_payment_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `paid_amount` double NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE `relation` (
  `relation_id` int(11) NOT NULL,
  `relation_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relation`
--

INSERT INTO `relation` (`relation_id`, `relation_name`) VALUES
(1, 'Father'),
(2, 'Mother'),
(3, 'Sister'),
(4, 'Brother');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `religion_id` int(11) NOT NULL,
  `religion_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`religion_id`, `religion_name`) VALUES
(1, 'Islam'),
(2, 'Buddhism'),
(3, 'Christianity'),
(4, 'Hinduism'),
(5, 'Jainism'),
(6, 'Judaism'),
(7, 'Shinto'),
(8, 'Sikhism'),
(9, 'Taoism');

-- --------------------------------------------------------

--
-- Table structure for table `salarysetup`
--

CREATE TABLE `salarysetup` (
  `id` int(11) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `Basic` double NOT NULL,
  `MedicalAllowance` double NOT NULL,
  `HouseRent` double NOT NULL,
  `Convince` double NOT NULL,
  `WorkingHour` varchar(200) NOT NULL,
  `present_day` int(11) NOT NULL,
  `Tax` double NOT NULL,
  `Others` double NOT NULL,
  `Advance` double NOT NULL,
  `Deduction` double NOT NULL,
  `pf` double NOT NULL,
  `Note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salarysetup`
--

INSERT INTO `salarysetup` (`id`, `teacher_id`, `Basic`, `MedicalAllowance`, `HouseRent`, `Convince`, `WorkingHour`, `present_day`, `Tax`, `Others`, `Advance`, `Deduction`, `pf`, `Note`) VALUES
(3, 13, 50000, 1000, 1000, 1000, '202', 0, 1000, 1000, 1000, 1000, 0, 'justzz'),
(4, 14, 10000, 2000, 2000, 200, '0', 0, 0, 0, 0, 0, 0, ''),
(5, 18, 5000, 500, 250, 0, '0', 0, 750, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_name` varchar(10) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `system_name` varchar(200) DEFAULT NULL,
  `system_title` varchar(200) DEFAULT NULL,
  `system_email` varchar(116) DEFAULT 'admin@wemaxedu.com',
  `address` text,
  `phone` varchar(200) DEFAULT NULL,
  `logo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `system_name`, `system_title`, `system_email`, `address`, `phone`, `logo`) VALUES
(1, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(2, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(3, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(4, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(5, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(6, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(7, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(8, NULL, NULL, 'admin@wemaxedu.com', NULL, NULL, NULL),
(9, 'Genuen Resi: Model School', 'Genuen Resi: Model School', 'admin@genuen.edu.bd', '<p>\r\n Konabari Gazipur</p>\r\n', '01912938002', 'ad1a5-10606334_1504798969756340_3635191876411244024_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings_old`
--

CREATE TABLE `settings_old` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL,
  `shift_name` varchar(40) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_name`, `in_time`, `out_time`) VALUES
(1, 'Jumur Shift', '09:00:00', '05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `admission_form_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registration_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `student_unique_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `academic_year` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `maritial_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `religion` int(11) NOT NULL,
  `nationality` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `present_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_age` int(3) NOT NULL,
  `father_education` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `father_occupation` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `father_mobile` int(11) NOT NULL,
  `father_blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_nidnumber` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_age` int(3) NOT NULL,
  `mother_education` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mother_occupation` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mother_mobile` int(11) NOT NULL,
  `mother_blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_nidnumber` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `guardian_profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `guardian_age` int(3) NOT NULL,
  `guardian_income` int(10) NOT NULL,
  `guardian_land` longtext COLLATE utf8_unicode_ci NOT NULL,
  `guardian_nid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci NOT NULL,
  `relation_id` int(11) NOT NULL,
  `prev_institution_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `prev_class_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `prev_passing_yrs` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `prev_gpa` float NOT NULL,
  `prev_institution_address` text COLLATE utf8_unicode_ci NOT NULL,
  `tc_institution_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `tc_form_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tc_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clearance_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `roll` longtext COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `group_others` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passing_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_student_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `others_class_id` int(4) NOT NULL,
  `others_section` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `others_roll` int(10) NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fourth_id` int(11) NOT NULL,
  `father_birthday` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mother_birthday` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gardian_blood_group` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gardian_mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_birthday` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `student_name_bangla` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `father_name_bangla` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `father_monthly_income` double NOT NULL,
  `mother_name_bangla` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mother_monthly_income` double NOT NULL,
  `guardian_name_bangla` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `others_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `student_blood_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `admission_form_no`, `registration_no`, `student_unique_ID`, `academic_year`, `name`, `nick_name`, `birthday`, `sex`, `maritial_status`, `religion`, `nationality`, `blood_group`, `present_address`, `permanent_address`, `phone`, `email`, `password`, `father_name`, `father_age`, `father_education`, `father_occupation`, `father_mobile`, `father_blood_group`, `father_nidnumber`, `mother_name`, `mother_age`, `mother_education`, `mother_occupation`, `mother_mobile`, `mother_blood_group`, `mother_nidnumber`, `guardian_name`, `guardian_profession`, `guardian_age`, `guardian_income`, `guardian_land`, `guardian_nid`, `guardian_address`, `relation_id`, `prev_institution_name`, `prev_class_id`, `prev_passing_yrs`, `prev_gpa`, `prev_institution_address`, `tc_institution_name`, `tc_form_no`, `tc_date`, `clearance_no`, `class_id`, `roll`, `section`, `group`, `group_others`, `passing_year`, `other_student_name`, `others_class_id`, `others_section`, `others_roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `subject_id`, `fourth_id`, `father_birthday`, `mother_birthday`, `gardian_blood_group`, `gardian_mobile`, `guardian_birthday`, `status`, `student_name_bangla`, `father_name_bangla`, `father_monthly_income`, `mother_name_bangla`, `mother_monthly_income`, `guardian_name_bangla`, `others_id`, `student_blood_group`) VALUES
(556, '2541', '124212', '121', 2016, 'Ratul', '', '42737', 'nale', '', 1, 'Bangladeshi', '', 'Vill:noyanpur,p.s:nuniyapara,p.s:ramgong,dist:lakshmipur', 'Vill:noyanpur,p.s:nuniyapara,p.s:ramgong,dist:lakshmipur', '', '', '', 'Ruhul', 0, 'Bsc', 'Service Holder', 1912935454, '', '', 'Ohida', 0, '', '', 0, '', '', 'rahul', '', 0, 0, '', '', '', 0, '', '', '', 0, '', 'Rajdhani', '', '', '', '9', '2', 'Padma', '-', '', NULL, '', 0, '', 0, 0, 0, '', '', 0, '', '', '', '', '', 1, '', '', 50000, '', 0, '', '', 'O+'),
(557, '2541', '', '122', 2015, 'Ratul Admmed', '', '27/12/2016', 'male', 'unmarried', 1, 'Bangladeshi', '', 'Vill:noyanpur,p.s:nuniyapara,p.s:ramgong,dist:lakshmipur', 'Vill:noyanpur,p.s:nuniyapara,p.s:ramgong,dist:lakshmipur', '', '', '', 'Ruhul', 0, 'Bsc', 'Service Holder', 1912935454, '', '', 'Ohida', 0, '', '', 0, '', '', 'rahul', '', 0, 0, '', '', '', 0, '', '', '', 0, '', 'Rajdhani', '', '', '', '9', '3', '', '1', '0', NULL, '', 0, '', 0, 0, 0, '', '140SC142SC230SC', 231, '', '', '', '', '', 1, '', '', 50000, '', 0, '', '', 'O+'),
(558, '254111', '', '123', 2015, 'Ratul Ahmmed', '', '27/12/2016', 'male', 'unmarried', 1, 'Bangladeshi', '', 'Vill:noyanpur,p.s:nuniyapara,p.s:ramgong,dist:lakshmipur', 'Vill:noyanpur,p.s:nuniyapara,p.s:ramgong,dist:lakshmipur', '', '', '', 'Ruhul', 0, 'Bsc in', 'Service Holder', 1912935454, '', '', 'Ohida', 0, '', '', 0, '', '', 'rahul sab', '', 0, 0, '', '', '', 0, '', '', '', 0, '', 'Rajdhani', '', '', '', '9', '3', 'Padma', '1', '0', NULL, '', 0, '', 0, 0, 0, '', '', 0, '', '', '', '', '', 1, '', '', 50000, '', 0, '', '', 'O+'),
(559, '111', '', '', 2015, 'Nurul Islam akk', 'Islam', '28/12/2016', 'male', 'married', 1, 'Bangladesh', '', '410,Mirpur,Dhaka', '410,Mirpur,Dhaka-1216', '01912558124', '', '', 'Tofayel Ahmmed', 0, '', '', 1912938002, '', '', 'Wahida', 0, '', '', 0, '', '', 'Ratul', '', 0, 0, '', '', '', 1, '', '', '', 0, '', 'Rajdhani', '', '', '0', '10', '138461', '', '1', '0', '0', '', 0, '', 0, 0, 0, '', '246SC249SC251SC', 0, '09/12/2016', '', '', '', '', 1, '0', '0', 0, '0', 0, '0', '0', 'O+');

-- --------------------------------------------------------

--
-- Table structure for table `studentattendance`
--

CREATE TABLE `studentattendance` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `subjectid` varchar(50) NOT NULL,
  `classid` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `group_id` int(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `short_name`, `class_id`, `group_id`, `teacher_id`, `status`) VALUES
(1, 'Bangla', NULL, 2, 0, 14, 0),
(2, 'English', NULL, 2, 0, 11, 0),
(3, 'Mathematics', NULL, 2, 0, 0, 0),
(5, 'Social Science', NULL, 1, 0, 6, 0),
(6, 'General Science', NULL, 1, 0, 8, 0),
(13, 'Bangla- I', NULL, 9, 0, 0, 0),
(14, 'Bangla-II', NULL, 9, 0, 0, 0),
(15, 'English- I', NULL, 9, 0, 0, 0),
(16, 'English- II', NULL, 9, 0, 0, 0),
(17, 'Drawing ', NULL, 0, 0, 0, 0),
(18, 'Bangla ', NULL, 0, 0, 0, 0),
(20, 'Math', NULL, 0, 0, 0, 0),
(21, 'Mathmatics', NULL, 9, 0, 0, 0),
(22, 'Religion and  Moral Teaching', 'R.M.T', 9, 0, NULL, 0),
(23, 'Drawing', NULL, 0, 0, 0, 0),
(24, 'Bangla', NULL, 0, 0, 0, 0),
(25, 'English', NULL, 0, 0, 0, 0),
(26, 'Math', NULL, 0, 0, 0, 0),
(27, 'Genarel Knowledge', NULL, 0, 0, 0, 0),
(28, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(29, 'Drawing', NULL, 0, 0, 0, 0),
(30, 'Bangla', NULL, 0, 0, 0, 0),
(31, 'English', NULL, 0, 0, 0, 0),
(32, 'Math', NULL, 0, 0, 0, 0),
(33, 'Genarel Knowledge', NULL, 0, 0, 0, 0),
(34, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(35, 'Spoken English', NULL, 0, 0, 0, 0),
(36, 'Drawing', NULL, 0, 0, 0, 0),
(37, 'Bangla', NULL, 0, 0, 0, 0),
(38, 'English', NULL, 0, 0, 0, 0),
(39, 'Math', NULL, 0, 0, 0, 0),
(40, 'Genarel Knowledge', NULL, 0, 0, 0, 0),
(41, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(42, 'Spoken English', NULL, 0, 0, 0, 0),
(43, 'Drawing', NULL, 0, 0, 0, 0),
(44, 'Bangla', NULL, 0, 0, 0, 0),
(45, 'English', NULL, 0, 0, 0, 0),
(46, 'Math', NULL, 0, 0, 0, 0),
(47, 'BANGLADESH AND GLOBAL INTRODUCTION ', NULL, 0, 0, 0, 0),
(48, 'Genarel Science', NULL, 0, 0, 0, 0),
(49, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(50, 'Genarel Knowledge', NULL, 0, 0, 0, 0),
(51, 'Spoken English', NULL, 0, 0, 0, 0),
(52, 'Computer', NULL, 0, 0, 0, 0),
(53, 'Bangla', NULL, 0, 0, 0, 0),
(54, 'English', NULL, 0, 0, 0, 0),
(55, 'Math', NULL, 0, 0, 0, 0),
(56, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(57, 'Genarel Science', NULL, 0, 0, 0, 0),
(58, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(59, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(60, 'Genarel Knowledge', NULL, 0, 0, 0, 0),
(61, 'Spoken English', NULL, 0, 0, 0, 0),
(62, 'Computer', NULL, 0, 0, 0, 0),
(63, 'Bangla', NULL, 0, 0, 0, 0),
(64, 'English', NULL, 0, 0, 0, 0),
(65, 'Math', NULL, 0, 0, 0, 0),
(66, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(67, 'Genarel Science', NULL, 0, 0, 0, 0),
(68, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(69, 'Spoken English', NULL, 0, 0, 0, 0),
(70, 'Bangla', NULL, 0, 0, 0, 0),
(71, 'Bangla-II', NULL, 0, 0, 0, 0),
(72, 'Bangla-II', NULL, 0, 0, 0, 0),
(73, 'English- I', NULL, 0, 0, 0, 0),
(74, 'English- III', NULL, 0, 0, 0, 0),
(75, 'Math', NULL, 0, 0, 0, 0),
(76, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(77, 'Genarel Science', NULL, 0, 0, 0, 0),
(78, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(79, 'Agricultural Studies', NULL, 0, 0, 0, 0),
(80, 'ICT ', NULL, 0, 0, 0, 0),
(81, 'Spoken English', NULL, 0, 0, 0, 0),
(82, 'BANGLA -I', NULL, 0, 0, 0, 0),
(83, 'Bangla-II', NULL, 0, 0, 0, 0),
(84, 'English- I', NULL, 0, 0, 0, 0),
(85, 'English- II', NULL, 0, 0, 0, 0),
(86, 'English- III', NULL, 0, 0, 0, 0),
(87, 'Math', NULL, 0, 0, 0, 0),
(88, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(89, 'Genarel Science', NULL, 0, 0, 0, 0),
(90, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(91, 'Agricultural Studies', NULL, 0, 0, 0, 0),
(92, 'Physical Studies ', NULL, 0, 0, 0, 0),
(93, 'ICT', NULL, 0, 0, 0, 0),
(94, 'ART AND CRAFT', NULL, 0, 0, 0, 0),
(95, 'Spoken English', NULL, 0, 0, 0, 0),
(96, 'Bangla- I', NULL, 0, 0, 0, 0),
(97, 'Bangla-II', NULL, 0, 0, 0, 0),
(98, 'English- I', NULL, 0, 0, 0, 0),
(99, 'English- II', NULL, 0, 0, 0, 0),
(100, 'English- II', NULL, 0, 0, 0, 0),
(101, 'Math', NULL, 0, 0, 0, 0),
(102, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(103, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(104, 'Genarel Science', NULL, 0, 0, 0, 0),
(105, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(106, 'Genarel Science', NULL, 0, 0, 0, 0),
(107, 'RELIGION AND MORAL TEACHING', NULL, 0, 0, 0, 0),
(108, 'Agricultural Studies', NULL, 0, 0, 0, 0),
(109, 'Physical Studies', NULL, 0, 0, 0, 0),
(110, 'ART AND CRAFT', NULL, 0, 0, 0, 0),
(111, 'Bangla- I', NULL, 0, 0, 0, 0),
(112, 'Bangla-II', NULL, 0, 0, 0, 0),
(113, 'English- I', NULL, 0, 0, 0, 0),
(114, 'English- II', NULL, 0, 0, 0, 0),
(115, 'General Mathematics ', NULL, 0, 0, 0, 0),
(116, 'ICT ', NULL, 9, 0, 0, 0),
(117, 'Hinduism Studies ', NULL, 0, 0, 0, 0),
(118, 'Genarel Science', NULL, 0, 0, 0, 0),
(119, 'BANGLADESH AND GLOBAL INTRODUCTION', NULL, 0, 0, 0, 0),
(120, 'Physics', NULL, 0, 0, 0, 0),
(121, 'Chemistry ', NULL, 0, 0, 0, 0),
(122, 'Biology ', NULL, 0, 0, 0, 0),
(123, 'Higher Mathmatics', NULL, 0, 0, 0, 0),
(124, 'Finance, Banking ', NULL, 0, 0, 0, 0),
(125, 'Accounting', NULL, 0, 0, 0, 0),
(126, 'Business ', NULL, 0, 0, 0, 0),
(127, 'Bangla- I', NULL, 0, 0, 0, 0),
(128, 'Bangla-II', NULL, 0, 0, 0, 0),
(129, 'English- I', NULL, 0, 0, 0, 0),
(130, 'Math', NULL, 0, 0, 0, 0),
(131, 'Islamic Studies', NULL, 0, 0, 0, 0),
(132, 'Hinduism Studies', NULL, 0, 0, 0, 0),
(133, 'Physics', NULL, 0, 0, 0, 0),
(134, 'Chemistry', NULL, 0, 0, 0, 0),
(135, 'Biology', NULL, 0, 0, 0, 0),
(136, 'Higher Mathmatics', NULL, 0, 0, 0, 0),
(137, 'Agricultural Studies', NULL, 0, 0, 0, 0),
(138, 'Finance, Banking', NULL, 0, 0, 0, 0),
(139, 'Accounting', NULL, 0, 0, 0, 0),
(140, 'Physics', NULL, 9, 1, 0, 0),
(142, 'Chemistry', NULL, 9, 1, 17, 0),
(143, 'Bangla-I', NULL, 8, 0, 11, 0),
(144, 'Bangla-II', NULL, 8, 0, 17, 0),
(145, 'English- I', NULL, 8, 0, 20, 0),
(146, 'English- II', NULL, 8, 0, 19, 0),
(147, 'Mathmatics', NULL, 8, 0, 15, 0),
(148, 'Science', NULL, 8, 0, 11, 0),
(149, 'ICT', NULL, 8, 0, 11, 0),
(150, 'Religion and moral teaching', NULL, 8, 0, 11, 0),
(151, 'Agricultural Studies', NULL, 8, 0, 11, 0),
(152, 'Physical Studies & Health', NULL, 8, 0, 11, 0),
(154, 'Art & Crafts', NULL, 8, 0, 11, 0),
(155, 'Bangla', NULL, 13, 0, 11, 0),
(156, 'English', NULL, 13, 0, 11, 0),
(157, 'Mathematics', NULL, 13, 0, 11, 0),
(158, 'Viva & Drawing', NULL, 13, 0, 11, 0),
(159, 'Bangla', NULL, 14, 0, 11, 0),
(160, 'English', NULL, 14, 0, 11, 0),
(161, 'Mathematics', NULL, 14, 0, 11, 0),
(162, 'GK  & Drawing', NULL, 14, 0, 11, 0),
(163, 'Religion and moral teaching', NULL, 14, 0, 11, 0),
(164, 'Bangla ', NULL, 16, 0, 11, 0),
(165, 'English', NULL, 16, 0, 11, 0),
(166, 'Mathematics', NULL, 16, 0, 11, 0),
(167, 'GK  & Drawing', NULL, 16, 0, 11, 0),
(168, 'Religion and moral teaching', NULL, 16, 0, 11, 0),
(169, 'Bangla', NULL, 12, 0, 11, 0),
(170, 'English', NULL, 12, 0, 11, 0),
(171, 'Mathematics', NULL, 12, 0, 11, 0),
(172, 'GK  & Drawing', NULL, 12, 0, 11, 0),
(173, 'Religion and Moral Teaching', 'R.M.T', 12, 0, 11, 0),
(177, 'GK  & Drawing', NULL, 2, 0, 11, 0),
(178, 'Religion and moral teaching', NULL, 2, 0, 11, 0),
(179, 'Bangla-I', NULL, 3, 0, 11, 0),
(180, 'Bangla-II', NULL, 3, 0, 11, 0),
(181, 'English- I', NULL, 3, 0, 11, 0),
(182, 'English- II', NULL, 3, 0, 11, 0),
(183, 'Pri Mathematics', NULL, 3, 0, 11, 0),
(184, 'Pri Science', NULL, 3, 0, 11, 0),
(185, 'Bangladesh & global Introduction', NULL, 3, 0, 11, 0),
(186, 'Genarel Knowledge', NULL, 3, 0, 11, 0),
(187, 'Religion and moral teaching', NULL, 3, 0, 11, 0),
(188, 'Bangla-I', NULL, 4, 0, 11, 0),
(189, 'Bangla-II', NULL, 4, 0, 11, 0),
(190, 'English- I', NULL, 4, 0, 11, 0),
(191, 'English- II', NULL, 4, 0, 11, 0),
(192, 'Pri Mathematics', NULL, 4, 0, 11, 0),
(193, 'Pri Science', NULL, 4, 0, 11, 0),
(194, 'Bangladesh & global Introduction', NULL, 4, 0, 11, 0),
(195, 'Genarel Knowledge', NULL, 4, 0, 11, 0),
(196, 'Religion and moral teaching', NULL, 4, 0, 11, 0),
(197, 'Bangla', NULL, 5, 0, 11, 0),
(198, 'English', NULL, 5, 0, 11, 0),
(199, 'Pri Mathematics', NULL, 5, 0, 11, 0),
(200, 'Pri Science', NULL, 5, 0, 11, 0),
(201, 'Bangladesh & global Introduction', NULL, 5, 0, 11, 0),
(202, 'Religion and moral teaching', NULL, 5, 0, 11, 0),
(203, 'Bangla-I', NULL, 6, 0, 11, 0),
(204, 'Bangla-II', NULL, 6, 0, 11, 0),
(205, 'English- I', NULL, 6, 0, 11, 0),
(206, 'English- II', NULL, 6, 0, 11, 0),
(207, 'Mathmatics', NULL, 6, 0, 11, 0),
(208, 'Bangladesh & global Introduction', NULL, 6, 0, 11, 0),
(209, 'Science', NULL, 6, 0, 11, 0),
(210, 'ICT', NULL, 6, 0, 11, 0),
(211, 'Agricultural Studies', NULL, 6, 0, 11, 0),
(212, 'Physical Studies ', NULL, 6, 0, 11, 0),
(213, 'Religion and moral teaching', NULL, 6, 0, 11, 0),
(214, 'Work and life-oriented ', NULL, 6, 0, 11, 0),
(215, 'Art & Crafts', NULL, 6, 0, 11, 0),
(216, 'Bangla-I', NULL, 7, 0, 11, 0),
(217, 'Bangla-II', NULL, 7, 0, 11, 0),
(218, 'English- I', NULL, 7, 0, 11, 0),
(219, 'English- II', NULL, 7, 0, 11, 0),
(220, 'Mathematics', NULL, 7, 0, 11, 0),
(221, 'Bangladesh & global Introduction', NULL, 7, 0, 11, 0),
(222, 'Science', NULL, 7, 0, 11, 0),
(223, 'ICT ', NULL, 7, 0, 11, 0),
(224, 'Agricultural Studies', NULL, 7, 0, 11, 0),
(225, 'Physical Studies', NULL, 7, 0, 11, 0),
(226, 'Work and life-oriented ', NULL, 7, 0, 11, 0),
(227, 'Art & Crafts', NULL, 7, 0, 11, 0),
(228, 'Work and life-oriented ', NULL, 8, 0, 11, 0),
(230, 'Biology', NULL, 9, 1, 11, 0),
(231, 'Higher Mathmatics', NULL, 9, 1, 11, 1),
(232, 'Agricultural Studies', NULL, 9, 0, 11, 1),
(233, 'Physical Studies ', NULL, 9, 0, 11, 0),
(235, 'Career Studies ', NULL, 9, 0, 11, 0),
(236, 'Genarel Science', NULL, 9, 2, 11, 0),
(237, 'Accounting', NULL, 9, 2, 11, 0),
(238, 'Business Entrepreneurship', NULL, 9, 2, 11, 0),
(239, 'Finance & Banking', NULL, 9, 2, 11, 0),
(240, 'Bangla-I', NULL, 10, 0, 11, 0),
(241, 'Bangla-II', NULL, 10, 0, 11, 0),
(242, 'English- I', NULL, 10, 0, 11, 0),
(243, 'English- II', NULL, 10, 0, 11, 0),
(244, 'Mathematics', NULL, 10, 0, 11, 0),
(245, 'Physical Studies', NULL, 10, 0, 11, 0),
(246, 'Bangladesh & global Introduction', NULL, 10, 1, 11, 0),
(247, 'Higher Mathmatics', NULL, 10, 1, 11, 1),
(248, 'Agricultural Studies', NULL, 10, 0, 11, 1),
(249, 'Physics', NULL, 10, 1, 11, 0),
(250, 'Chemistry', NULL, 10, 1, 11, 0),
(251, 'Biology', NULL, 10, 1, 11, 0),
(252, 'Business Entrepreneurship', NULL, 10, 3, 11, 0),
(253, 'Finance & Banking', NULL, 10, 3, 11, 0),
(254, 'Accounting ', NULL, 10, 2, 11, 0),
(255, 'Genarel Science', NULL, 10, 3, 11, 0),
(256, 'Religion and moral teaching ', NULL, 10, 0, 11, 0),
(257, 'Bangladesh & global Introduction', NULL, 8, 0, 11, 0),
(258, 'Bangladesh & global Introduction', NULL, 9, 1, 11, 0),
(259, 'Accounting', NULL, 10, 3, 11, 0),
(260, 'RELIGION AND MORAL TEACHING ', NULL, 7, 0, 13, 0),
(261, 'Accounting', 'AC', 9, 3, 11, 0),
(262, 'General Science', 'GS', 9, 3, NULL, 0),
(263, 'Business Entrepreneureship', 'BE', 9, 3, NULL, 0),
(264, 'Finance & banking', 'FB', 9, 3, NULL, 0),
(265, 'Agricultural Studies', 'AS', 9, 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `superadmin_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `sex` enum('Male','Female','Other') COLLATE utf8_unicode_ci NOT NULL,
  `qualification` text COLLATE utf8_unicode_ci NOT NULL,
  `experience` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `religion` int(11) NOT NULL,
  `blood_group` smallint(6) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `per_address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(86) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `employeeID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `indexNumber` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '9999',
  `joiningDate` date NOT NULL,
  `designation` int(11) NOT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salary_setup` tinyint(4) NOT NULL DEFAULT '0',
  `photo` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shift_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `qualification`, `experience`, `religion`, `blood_group`, `address`, `per_address`, `phone`, `email`, `password`, `employeeID`, `indexNumber`, `order`, `joiningDate`, `designation`, `department`, `subject`, `salary_setup`, `photo`, `document`, `shift_id`, `status`) VALUES
(11, 'Md. Sada Kan', '0000-00-00', 'Male', '<p>\r\n BBS, MBs (Accounting)</p>\r\n', '5', 1, 0, '<p>\r\n Deuliyabari, Konabari, Gazipur City. Vill+Post+Than+Dist- Gaibandha</p>\r\n', '<p>\r\n Deuliyabari, Konabari, Gazipur City. Vill+Post+Than+Dist- Gaibandha</p>\r\n', '01719511566', '', '', '', 0, 9999, '0000-00-00', 0, '0', '0', 0, '4d4e6-10606334_1504798969756340_3635191876411244024_n.jpg', '', 0, 1),
(13, 'Md. Anowar Hossain ', '0000-00-00', 'Male', 'BBS (Hons), MBS', '8', 0, 0, 'Present: Genuine Residential School And College Bhaban, Konabari, Gazipur City.   Permanent Address: Vill: Goriagava, Post: Goria, P/S: Wazirpur, Dist: Barishal', '', '01736458668,01938623126', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(14, 'Md. Motiur Rahman', '0000-00-00', 'Male', 'B.Sc', '10', 0, 0, 'Present- Dewliabari, Konabari, Gazipur City.   Permanent Address: Vill: Mohipur Koloni, P/S- Sherpur,  Dist: Bogra', '', '01956819393, 01713043235', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 1, '', '', 0, 1),
(15, 'Shirin Shabnam', '0000-00-00', 'Female', 'BA (Hons), M. A in English', '2', 0, 0, ' Konabari, Gazipur City, Permanent Address: Vill: Bariadi, Post: Narun Bazar, P/S- Kaligonj, Gazipur', '', '01912029233', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(16, 'Mst. Shahenur Akter', '0000-00-00', 'Female', 'BA (Hons), M. A in Bangla', '0', 0, 0, 'Present: Bymail, Konabari, Gazipur.  Permanent Address: Vill+ Post- Habashpur, Thana- Moheshpur, Dist- Jhenaidah', '', '01936926605,01779132234', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(17, 'Sheuly Akter', '0000-00-00', 'Female', 'M. A (Bangla)', '11', 0, 0, 'Parijat, Konabari, Gazipur,  Permanent: Vill- Jhange Chala, Post- Haturiya Chala, P/S- Kaliakoir, Dist- Gazipur', '', '01710693262,01719931434', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(18, 'Md. Riaj Uddin', '0000-00-00', 'Male', 'Bsc (Hons), MSc (Math)', '0', 0, 0, 'Konabari, Permanent- Rajshahi', '', '01724112855', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 1, '', '', 0, 1),
(19, 'Aklima Akter', '0000-00-00', 'Female', 'BBS (Hons), MSS ', '4', 0, 0, 'Present and Permanent- Purba Chandpur, Post- Sakaswar, Kaliakoir, Gazipur', '', '01731426046,  01686808571', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(20, 'Md. Ruman Mia', '0000-00-00', 'Male', 'BBS (Hons), Social Wokr', '6', 0, 0, 'Present- Konabari, Nilnagar, Gazipur, Permant- Panchgoan, Angargara, Baluka, Mymenshing', '', '01732042025,01682895605', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(21, 'Aparna Roy', '0000-00-00', 'Female', 'HSc', '2', 0, 0, 'Pre+ Permanent-  Konabari, Nilnagar, Gazipur', '', '01732984005,01717132575', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(22, 'Md. Akidul Islam', '0000-00-00', 'Male', 'BA (Hons), M. A in English', '0', 0, 0, 'Sofipur Gazipur, Permanent- Rajapur, Tikervila, Srepur, Magura', '', '01918381723,01557085065', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(23, 'Lata Sharma', '0000-00-00', 'Female', 'HSc', '2', 0, 0, 'Konabari, Nilnagar, Kustia', '', '01756401412', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(24, 'Rubina Jannat Tarin', '0000-00-00', 'Female', 'HSc', '4', 0, 0, 'Konabari, Gazipur.  Permanent- Kushariya, Ghatail, Tangail', '', '01772878004', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(25, 'Mst Nesat Tasnim', '0000-00-00', 'Female', 'B.A ', '6', 0, 0, 'Konabari, Gazipur City.   Premanent- Maruya, Chowgasa, Jessore', '', '01787293676,01787293677', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(26, 'Anamika Sutradhar', '0000-00-00', 'Male', 'Hnrs, Masters in Managment', '3', 0, 0, 'Konabari, Gazipur City. Permanent - Tin Porty, Post- Bhairab, Thana- Bhairab, Dist- Kishorgonj.', '', '01838201457,01813100912', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(27, 'Md. Shoriful Islam ', '0000-00-00', 'Male', 'Kamil', '10', 0, 0, 'Present And Permanent Address: Konabari, Gazipur City, Vill- Joyrumpur, Post- Gongaram, Thana- Mohammadpur, Dist- Magura', '', '01866951680,01685626291', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(28, 'Md. Khalilur Rahaman', '0000-00-00', 'Male', 'B.A (Hons), M. A (English)', '5', 0, 0, 'Present And Permanent Address: Konabari, Gazipur City, Pahartoli, Post- Harivasa, P/S- Panchagar Sadar, Dist- Panchaghar', '', '01722135946', '', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(29, 'Rubel Mia (Computer Oparetor) ', '0000-00-00', 'Male', 'HSc', '0', 0, 0, 'Present: Parijat, Konabari, Gazipur City. Permanent: Jugirchala, Post- Mouchak, P/S-  Kaliakoir, Gazipur', '', '01967345044,01935067634', 'rubel.jinnat@gmail.com', '', '', 0, 9999, '0000-00-00', 0, '', '', 0, '', '', 0, 1),
(30, 'fdmsli', '2016-08-16', 'Male', '<p>\r\n fgsdgg</p>\r\n', 'rgesw ', 1, 0, '<p>\r\n ewtfwwte</p>\r\n', '<p>\r\n ewttwt</p>\r\n', 'wrergtgwet', 'efewef', '', '', 0, 0, '2016-08-08', 0, '', '', 0, 'c38e2-6110.jpg', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_education`
--

CREATE TABLE `teacher_education` (
  `teacher_education_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `institute` varchar(200) NOT NULL,
  `institute_address` text NOT NULL,
  `year` varchar(4) NOT NULL,
  `result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_group`
--

CREATE TABLE `temp_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_group`
--

INSERT INTO `temp_group` (`group_id`, `group_name`, `create_date`) VALUES
(1, 'Science', '2015-04-18 11:02:08'),
(2, 'Humanities', '2015-04-18 11:02:08'),
(3, 'Business Studies', '2015-04-18 11:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `temp_update`
--

CREATE TABLE `temp_update` (
  `update` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` enum('file','database') NOT NULL,
  `code` longtext NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `testimonial_info` varchar(1000) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_certificate`
--

CREATE TABLE `transfer_certificate` (
  `tc_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `admitted_class` varchar(30) NOT NULL,
  `last_day_attends` date NOT NULL,
  `result` varchar(200) NOT NULL,
  `obserbation` varchar(300) NOT NULL,
  `leavingdate` date NOT NULL,
  `TC_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `route_name`, `number_of_vehicle`, `description`, `route_fare`) VALUES
(1, 'Mirpur-1 ', '2', 'Mirpur-1 To School', '10km'),
(2, 'Banani', '10', 'Banani To School', '20km'),
(3, 'Uttara', '5', 'Uttara To School', '5km'),
(4, 'Mohammadpur', '2', 'Start From Mohammadpur', '30km'),
(5, 'Dhanmondi', '20', 'Dhanmondi Jigatola To School', '20km'),
(6, 'Gulshan-1', '40', 'Gulshan-1 To School ', '50km'),
(7, 'Shamoli To School', '10', 'Start From Shamoli 7:00 AM', '5km'),
(8, 'Dohar from Old Dhaka', '30', 'Srart Dohar ', '10km');

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE `update` (
  `update` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` enum('file','database') NOT NULL,
  `code` longtext NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`academic_year_id`);

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admit_card`
--
ALTER TABLE `admit_card`
  ADD PRIMARY KEY (`admit_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `attendance_mark`
--
ALTER TABLE `attendance_mark`
  ADD PRIMARY KEY (`attendance_mark_id`);

--
-- Indexes for table `attendance_type`
--
ALTER TABLE `attendance_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`bank_account_id`);

--
-- Indexes for table `bank_deposit`
--
ALTER TABLE `bank_deposit`
  ADD PRIMARY KEY (`bank_deposit_id`);

--
-- Indexes for table `bank_expense`
--
ALTER TABLE `bank_expense`
  ADD PRIMARY KEY (`bank_expense_id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`blood_group_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `class_section`
--
ALTER TABLE `class_section`
  ADD PRIMARY KEY (`class_section_id`);

--
-- Indexes for table `collegesubject`
--
ALTER TABLE `collegesubject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `controls`
--
ALTER TABLE `controls`
  ADD PRIMARY KEY (`controls_id`);

--
-- Indexes for table `csalary`
--
ALTER TABLE `csalary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`employee_attendance_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`exam_result_id`);

--
-- Indexes for table `excel_file`
--
ALTER TABLE `excel_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_name`
--
ALTER TABLE `fees_name`
  ADD PRIMARY KEY (`fees_name_id`);

--
-- Indexes for table `fees_setup`
--
ALTER TABLE `fees_setup`
  ADD PRIMARY KEY (`fees_id`);

--
-- Indexes for table `full_mark`
--
ALTER TABLE `full_mark`
  ADD PRIMARY KEY (`full_mark_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holidayid`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`inc_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`invoice_details_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`leave_type_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `marksheet`
--
ALTER TABLE `marksheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `overallmarksheet`
--
ALTER TABLE `overallmarksheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `provident_payment`
--
ALTER TABLE `provident_payment`
  ADD PRIMARY KEY (`provident_payment_id`);

--
-- Indexes for table `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`relation_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`religion_id`);

--
-- Indexes for table `salarysetup`
--
ALTER TABLE `salarysetup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `settings_old`
--
ALTER TABLE `settings_old`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`superadmin_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_education`
--
ALTER TABLE `teacher_education`
  ADD PRIMARY KEY (`teacher_education_id`);

--
-- Indexes for table `temp_group`
--
ALTER TABLE `temp_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `temp_update`
--
ALTER TABLE `temp_update`
  ADD PRIMARY KEY (`update`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `transfer_certificate`
--
ALTER TABLE `transfer_certificate`
  ADD PRIMARY KEY (`tc_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `update`
--
ALTER TABLE `update`
  ADD PRIMARY KEY (`update`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `academic_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admit_card`
--
ALTER TABLE `admit_card`
  MODIFY `admit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_mark`
--
ALTER TABLE `attendance_mark`
  MODIFY `attendance_mark_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_type`
--
ALTER TABLE `attendance_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `bank_account_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_deposit`
--
ALTER TABLE `bank_deposit`
  MODIFY `bank_deposit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_expense`
--
ALTER TABLE `bank_expense`
  MODIFY `bank_expense_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `blood_group_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `class_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `collegesubject`
--
ALTER TABLE `collegesubject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `controls`
--
ALTER TABLE `controls`
  MODIFY `controls_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `csalary`
--
ALTER TABLE `csalary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `employee_attendance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `exam_result_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `excel_file`
--
ALTER TABLE `excel_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `exp_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_name`
--
ALTER TABLE `fees_name`
  MODIFY `fees_name_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_setup`
--
ALTER TABLE `fees_setup`
  MODIFY `fees_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `full_mark`
--
ALTER TABLE `full_mark`
  MODIFY `full_mark_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holidayid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `inc_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `invoice_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;
--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `leave_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23254;
--
-- AUTO_INCREMENT for table `marksheet`
--
ALTER TABLE `marksheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `overallmarksheet`
--
ALTER TABLE `overallmarksheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provident_payment`
--
ALTER TABLE `provident_payment`
  MODIFY `provident_payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `relation`
--
ALTER TABLE `relation`
  MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `religion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `salarysetup`
--
ALTER TABLE `salarysetup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `settings_old`
--
ALTER TABLE `settings_old`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;
--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `superadmin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `teacher_education`
--
ALTER TABLE `teacher_education`
  MODIFY `teacher_education_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp_group`
--
ALTER TABLE `temp_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `temp_update`
--
ALTER TABLE `temp_update`
  MODIFY `update` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_certificate`
--
ALTER TABLE `transfer_certificate`
  MODIFY `tc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `update`
--
ALTER TABLE `update`
  MODIFY `update` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
