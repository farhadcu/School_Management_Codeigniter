-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2016 at 07:38 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE IF NOT EXISTS `academic_year` (
`academic_year_id` int(11) NOT NULL,
  `academic_year` int(4) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE IF NOT EXISTS `accountant` (
`accountant_id` int(10) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `admit_card`
--

CREATE TABLE IF NOT EXISTS `admit_card` (
`admit_id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `exam_id` int(10) NOT NULL,
  `year` int(10) NOT NULL,
  `grantedform` date NOT NULL,
  `grantedto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mark`
--

CREATE TABLE IF NOT EXISTS `attendance_mark` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=801 ;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_type`
--

CREATE TABLE IF NOT EXISTS `attendance_type` (
`type_id` int(11) NOT NULL,
  `attendance_type` varchar(60) NOT NULL,
  `short_form` tinytext NOT NULL,
  `color` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE IF NOT EXISTS `bank_account` (
`bank_account_id` int(11) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `account_holder` varchar(100) DEFAULT NULL,
  `bank_address` text,
  `initial_balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bank_deposit`
--

CREATE TABLE IF NOT EXISTS `bank_deposit` (
`bank_deposit_id` int(11) NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_from` varchar(200) DEFAULT NULL,
  `method` enum('Cash','Cheque','Bank Transfer','bKash','ATM Withdrawals') DEFAULT NULL,
  `description` text,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bank_expense`
--

CREATE TABLE IF NOT EXISTS `bank_expense` (
`bank_expense_id` int(11) NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_to` varchar(100) DEFAULT NULL,
  `method` enum('Cash','Checque','Bank Transfer','ATM Withdrawals') DEFAULT NULL,
  `description` text,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE IF NOT EXISTS `blood_group` (
`blood_group_id` smallint(6) NOT NULL,
  `group` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
`book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`class_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` int(11) NOT NULL,
  `teacher_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
`class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time_end` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE IF NOT EXISTS `class_section` (
`class_section_id` int(11) NOT NULL,
  `section_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `collegesubject`
--

CREATE TABLE IF NOT EXISTS `collegesubject` (
`subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `catagory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `controls`
--

CREATE TABLE IF NOT EXISTS `controls` (
`controls_id` int(11) NOT NULL,
  `maximum_student` int(11) DEFAULT NULL,
  `maximum_teacher` int(11) DEFAULT NULL,
  `rate_per_student` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `csalary`
--

CREATE TABLE IF NOT EXISTS `csalary` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE IF NOT EXISTS `dormitory` (
`dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
`email_template_id` int(11) NOT NULL,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE IF NOT EXISTS `employee_attendance` (
`employee_attendance_id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
`exam_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `publishing_date` date NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE IF NOT EXISTS `exam_result` (
`exam_result_id` bigint(20) unsigned NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED AUTO_INCREMENT=30090 ;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
`id` bigint(20) unsigned NOT NULL,
  `student_id` int(11) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1561 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_name`
--

CREATE TABLE IF NOT EXISTS `fees_name` (
`fees_name_id` int(10) NOT NULL,
  `fee_name` varchar(256) NOT NULL,
  `fee_full_name` varchar(256) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

-- --------------------------------------------------------

--
-- Table structure for table `fees_setup`
--

CREATE TABLE IF NOT EXISTS `fees_setup` (
`fees_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `fees_name_id` int(10) NOT NULL,
  `fees_amount` int(4) NOT NULL,
  `total_bill` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fourthsubject`
--

CREATE TABLE IF NOT EXISTS `fourthsubject` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `catagoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `full_mark`
--

CREATE TABLE IF NOT EXISTS `full_mark` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=433 ;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
`grade_id` smallint(6) NOT NULL,
  `name` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` float(4,2) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`group_id` int(11) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE IF NOT EXISTS `holiday` (
`holidayid` int(11) NOT NULL,
  `holidayname` text NOT NULL,
  `holidaydate` date NOT NULL,
  `holidaytype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE IF NOT EXISTS `invoice_details` (
`invoice_details_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `collection_amount` float NOT NULL,
  `weaver` float NOT NULL,
  `fine` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
`phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=535 ;

-- --------------------------------------------------------

--
-- Table structure for table `language_keys`
--

CREATE TABLE IF NOT EXISTS `language_keys` (
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE IF NOT EXISTS `leave_type` (
`leave_type_id` int(11) NOT NULL,
  `leave_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED AUTO_INCREMENT=22889 ;

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

CREATE TABLE IF NOT EXISTS `marksheet` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22292 ;

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
`notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `overallmarksheet`
--

CREATE TABLE IF NOT EXISTS `overallmarksheet` (
`id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `sub_exam_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `overall_total` decimal(10,2) NOT NULL,
  `overall_gpa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
`parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `provident_payment`
--

CREATE TABLE IF NOT EXISTS `provident_payment` (
`provident_payment_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `paid_amount` double NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
`relation_id` int(11) NOT NULL,
  `relation_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE IF NOT EXISTS `religion` (
`religion_id` int(11) NOT NULL,
  `religion_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `salarysetup`
--

CREATE TABLE IF NOT EXISTS `salarysetup` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_name` varchar(10) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`settings_id` int(11) NOT NULL,
  `system_name` varchar(200) DEFAULT NULL,
  `system_title` varchar(200) DEFAULT NULL,
  `system_email` varchar(116) DEFAULT 'admin@wemaxedu.com',
  `address` text,
  `phone` varchar(200) DEFAULT NULL,
  `logo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings_old`
--

CREATE TABLE IF NOT EXISTS `settings_old` (
`settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE IF NOT EXISTS `shift` (
`shift_id` int(11) NOT NULL,
  `shift_name` varchar(40) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
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
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=420 ;

-- --------------------------------------------------------

--
-- Table structure for table `studentattendance`
--

CREATE TABLE IF NOT EXISTS `studentattendance` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `subjectid` varchar(50) NOT NULL,
  `classid` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`subject_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `group_id` int(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=266 ;

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE IF NOT EXISTS `superadmin` (
`superadmin_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_education`
--

CREATE TABLE IF NOT EXISTS `teacher_education` (
`teacher_education_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `institute` varchar(200) NOT NULL,
  `institute_address` text NOT NULL,
  `year` varchar(4) NOT NULL,
  `result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `temp_group`
--

CREATE TABLE IF NOT EXISTS `temp_group` (
`group_id` int(11) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `temp_update`
--

CREATE TABLE IF NOT EXISTS `temp_update` (
`update` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` enum('file','database') NOT NULL,
  `code` longtext NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE IF NOT EXISTS `testimonial` (
`testimonial_id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `testimonial_info` varchar(1000) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_certificate`
--

CREATE TABLE IF NOT EXISTS `transfer_certificate` (
`tc_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `admitted_class` varchar(30) NOT NULL,
  `last_day_attends` date NOT NULL,
  `result` varchar(200) NOT NULL,
  `obserbation` varchar(300) NOT NULL,
  `leavingdate` date NOT NULL,
  `TC_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
`transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE IF NOT EXISTS `update` (
`update` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` enum('file','database') NOT NULL,
  `code` longtext NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
MODIFY `academic_year_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
MODIFY `accountant_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admit_card`
--
ALTER TABLE `admit_card`
MODIFY `admit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_mark`
--
ALTER TABLE `attendance_mark`
MODIFY `attendance_mark_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=801;
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
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
MODIFY `class_section_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `collegesubject`
--
ALTER TABLE `collegesubject`
MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `controls`
--
ALTER TABLE `controls`
MODIFY `controls_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `csalary`
--
ALTER TABLE `csalary`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `exam_result`
--
ALTER TABLE `exam_result`
MODIFY `exam_result_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30090;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
MODIFY `exp_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1561;
--
-- AUTO_INCREMENT for table `fees_name`
--
ALTER TABLE `fees_name`
MODIFY `fees_name_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `fees_setup`
--
ALTER TABLE `fees_setup`
MODIFY `fees_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `full_mark`
--
ALTER TABLE `full_mark`
MODIFY `full_mark_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=433;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
MODIFY `grade_id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
MODIFY `holidayid` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `invoice_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=535;
--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
MODIFY `leave_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22889;
--
-- AUTO_INCREMENT for table `marksheet`
--
ALTER TABLE `marksheet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22292;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `overallmarksheet`
--
ALTER TABLE `overallmarksheet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
MODIFY `religion_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `salarysetup`
--
ALTER TABLE `salarysetup`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `settings_old`
--
ALTER TABLE `settings_old`
MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
MODIFY `superadmin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `teacher_education`
--
ALTER TABLE `teacher_education`
MODIFY `teacher_education_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp_group`
--
ALTER TABLE `temp_group`
MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `update`
--
ALTER TABLE `update`
MODIFY `update` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
