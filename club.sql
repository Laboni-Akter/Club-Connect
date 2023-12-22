-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 07:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_form`
--

CREATE TABLE `apply_form` (
  `session_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `ammount` int(100) NOT NULL,
  `bkash_number` int(100) NOT NULL,
  `end_time` date NOT NULL,
  `session_status` varchar(100) NOT NULL DEFAULT 'running',
  `session_number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_form`
--

INSERT INTO `apply_form` (`session_id`, `club_id`, `description`, `ammount`, `bkash_number`, `end_time`, `session_status`, `session_number`) VALUES
(25, 36, 'Chirkut need new members\r\nplease submit before 30th september', 100, 1814940719, '2022-09-30', 'running', 1),
(26, 37, 'Recruitment is going on.', 100, 1869868264, '2022-09-30', 'running', 1),
(27, 33, 'New debating society  member needed.Everyone is invited to join the club.\r\nPlease submit the for bef', 100, 1814940719, '2022-09-30', 'running', 1),
(28, 28, 'Recruitment is going on.', 100, 1345789343, '2022-12-20', 'running', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clubmonthypayment`
--

CREATE TABLE `clubmonthypayment` (
  `payment_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `pay_number` int(100) NOT NULL,
  `totall` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubmonthypayment`
--

INSERT INTO `clubmonthypayment` (`payment_id`, `club_id`, `month`, `year`, `pay_number`, `totall`) VALUES
(8, 33, 'january', '2022', 1814940719, 0),
(9, 28, 'january', '2022', 1814940719, 0),
(10, 34, 'January', '2022', 1345789234, 0),
(11, 28, 'February', '2022', 1345789345, 0),
(12, 47, '1', '2023', 1516005850, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(100) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `totall_members` int(100) NOT NULL,
  `club_type` varchar(100) NOT NULL DEFAULT 'cultural',
  `club_description` longtext CHARACTER SET utf8 NOT NULL,
  `club_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `totall_members`, `club_type`, `club_description`, `club_image`) VALUES
(28, 'JNU It Society', 33, 'Educational', 'JnUITS is the platform for the students to gather knowledge of latest technology .We are committed to fulfill the IT need of JnUians.', 'adventureClub.jpg'),
(33, 'JNU Debating Society', 71, 'Educational', 'This is debating society of Jagannath University.', '296079530_969689971094265_4244960714165675887_n.png'),
(34, 'JNU Career Club', 37, 'Educational', 'Jagannath University Career Club (JNUCC) is one of the best platforms in JnU to make students competent for the professional world.', '299143166_473534951148908_1695854776916005098_n.jpg'),
(36, 'জগন্নাথ বিশ্ববিদ্যালয় সাংবাদিক সমিতি (জবিসাস)', 5, 'Educational', 'জগন্নাথ বিশ্ববিদ্যালয় সাংবাদিক সমিতি (জবিসাস) ২০০৬ সা‌লে ২০ জুন প্র‌তি‌ষ্ঠিত হয়। শিক্ষা, সততা ও সাহসিকতা এর মূলমন্ত্র।\r\nঅফিসঃ ৩০১, অবকাশ ভবন, জগন্নাথ বিশ্ববিদ্যালয় ফোনঃ 02223353875\r\nপ্রধান উপ‌দেষ্টাঃ মাননীয় উপাচার্য ড. মোঃ ইমদাদুল হক\r\nসভাপতিঃ রবিউল আলম\r\nমোবাইল— 01632599915\r\nসাধারণ সম্পাদকঃ আহসান জোবায়ের\r\nমোবাইল— 01612904453\r\nটেলিগ্রাম লিংকঃ https://t.me/jnuja ', '297429773_638637490943613_1378105625457766996_n.jpg'),
(37, 'JNU Photography Society', 1, 'Cultural', 'Jagannath University Photographic Society (JNUPS)\r\nEstablished 18th June 2013.\r\nTo promote the general advancement of the photographic art and science and its applications to facilitate the exchange of information and ideas on these subjects.\r\n\r\nEmail : jnups2013@gmail.com\r\nFacebook page : https://www.facebook.com/jnups2013', '301840525_825842268598036_7911772817667630618_n.jpg'),
(38, 'AIS Business Club,JNU', 30, 'Educational', 'AIS Business club is one of the greatest clubs in Jagannath university, the business club people are very professional.', '259808044_439237467573013_5664132199158856628_n.jpg'),
(39, 'জবি আবৃত্তি সংসদ', 5, 'Cultural', 'This is a cultural club of Jagannath University whose main motto is to assemble students willing to learn receiting in a platform where they can share their skill and beauty of receition.', '277821499_339740154797150_5045825695064316361_n.jpg'),
(40, 'JNU Model United Nations Association', 5, 'Cultural', 'This family is for all general students of JNU. Its two main objectives are Skilling ourselves (students) a little more. And representing our university in various universities.', '306051318_1273688043429287_2111994020083436662_n.png'),
(42, 'Moner Manush', 80, 'cultural', 'Moner Manush is a Campus-based music club of Jagannath University.', 'dhrupod.jpg'),
(43, 'Jagannath University Film Society', 80, 'Cultural', 'This is the official page of Jagannath University Film Society which established in 2009.', '297039107_2298349560323081_8141469850951502757_n.jpg'),
(48, 'IEEE,JnU', 4, 'educational', 'It is a branch of IEEE.', 'IEEE_logo.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `user_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `member_type` varchar(100) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`user_id`, `club_id`, `member_type`) VALUES
(1, 34, 'admin'),
(4, 28, 'admin'),
(4, 33, 'member'),
(4, 34, 'member'),
(5, 33, 'admin'),
(5, 36, 'admin'),
(5, 37, 'admin'),
(5, 38, 'admin'),
(5, 39, 'admin'),
(5, 40, 'admin'),
(5, 42, 'admin'),
(35, 28, 'member'),
(35, 34, 'admin'),
(36, 34, 'member'),
(38, 34, 'member'),
(39, 34, 'member'),
(40, 34, 'admin'),
(41, 34, 'member'),
(42, 34, 'member'),
(43, 34, 'member'),
(44, 34, 'member'),
(45, 34, 'member'),
(46, 34, 'member'),
(47, 34, 'member'),
(48, 34, 'member'),
(49, 34, 'member'),
(50, 34, 'member'),
(51, 34, 'member'),
(52, 34, 'member'),
(53, 34, 'member'),
(54, 34, 'admin'),
(55, 34, 'member'),
(56, 34, 'member'),
(57, 34, 'member'),
(58, 34, 'member'),
(59, 34, 'member'),
(60, 34, 'member'),
(61, 34, 'member'),
(62, 34, 'member'),
(63, 34, 'member'),
(67, 44, 'admin'),
(69, 28, 'member'),
(69, 34, 'admin'),
(69, 43, 'admin'),
(70, 28, 'admin'),
(70, 34, 'member'),
(70, 43, 'member'),
(70, 45, 'admin'),
(70, 46, 'admin'),
(84, 47, 'member'),
(85, 28, 'admin'),
(85, 34, 'member'),
(85, 47, 'admin'),
(85, 48, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `comment_content` varchar(100) NOT NULL,
  `comment_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `post_id`, `comment_content`, `comment_time`) VALUES
(12, 69, 60, 'wow. nice', '02.19.2023');

-- --------------------------------------------------------

--
-- Table structure for table `comment_reply`
--

CREATE TABLE `comment_reply` (
  `reply_id` int(100) NOT NULL,
  `comment_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `reply_content` varchar(100) NOT NULL,
  `comment_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_pay`
--

CREATE TABLE `form_pay` (
  `userpay_id` int(100) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pay_number` varchar(100) NOT NULL,
  `bkash_number` varchar(100) NOT NULL,
  `transiction_number` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_pay`
--

INSERT INTO `form_pay` (`userpay_id`, `session_id`, `user_id`, `pay_number`, `bkash_number`, `transiction_number`, `description`) VALUES
(1, '28', 85, '01516005850', '01516005850', 'djhf453984', 'Recruitment is going on. ');

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

CREATE TABLE `invitation` (
  `invite_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `invitedclub_id` int(100) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `invite_msg` varchar(100) NOT NULL,
  `invite_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`invite_id`, `club_id`, `invitedclub_id`, `event_name`, `invite_msg`, `invite_date`) VALUES
(8, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(15, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(16, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(17, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(18, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(19, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(20, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(21, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(22, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(23, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(24, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(25, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(26, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(27, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(28, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(29, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(30, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(31, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(32, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(33, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(34, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(35, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(36, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(37, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(38, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(39, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(40, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(41, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(42, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(43, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(44, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(45, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(46, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(47, 30, 27, 'ds9078', 'dfdsf', '09.17.2022'),
(48, 27, 30, 'ds9078', 'dfdsf', '09.17.2022'),
(49, 27, 30, 'jdkfhsdmnfbm', 'dfdsfdsflkhskuadf', '09.17.2022'),
(50, 27, 30, 'lame', 'ow shit', '09.17.2022'),
(51, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(52, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(53, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(54, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(55, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(56, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(57, 27, 30, 'lamei', 'ow shit', '09.17.2022'),
(58, 34, 28, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(59, 34, 33, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(60, 34, 34, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(61, 34, 36, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(62, 34, 37, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(63, 34, 38, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(64, 34, 39, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(65, 34, 40, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(66, 34, 42, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(67, 34, 43, 'programming contest', 'IT Club  invitation for club event <b>.programming contest</b> ', '09.20.2022'),
(68, 28, 38, 'Event', 'JNU It Society  invitation for club event <b>.Event</b> ', '12.17.2022'),
(69, 34, 28, 'seminar', 'JNU Career Club  invitation for club event <b>.seminar</b> ', '12.17.2022'),
(70, 28, 34, 'seminar', 'JNU It Society  invitation for club event <b>.seminar</b> ', '12.17.2022'),
(71, 28, 34, 'seminar', 'JNU It Society  invitation for club event <b>.seminar</b> ', '12.17.2022'),
(72, 34, 34, 'seminar', 'JNU Career Club  invitation for club event <b>.seminar</b> ', '12.17.2022'),
(73, 43, 28, 'Workshop', 'Jagannath University Film Society  invitation for club event <b>.Workshop</b> ', '12.18.2022');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `noti_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id`, `club_id`, `description`, `noti_time`) VALUES
(13, 33, 'JNU Debating Society  has now published a new recruitment form .', '2022-09-20'),
(14, 28, 'JNU It Society  has now published a new recruitment form ', '2022-12-17'),
(15, 47, 'skdfhdf  has now published a new recruitment form ', '2023-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `user_id` int(100) NOT NULL,
  `payment_id` int(100) NOT NULL,
  `payment_ammount` int(100) NOT NULL,
  `transiction_number` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL DEFAULT 'not-checked',
  `userpayment_no` int(100) NOT NULL,
  `mobile_number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`user_id`, `payment_id`, `payment_ammount`, `transiction_number`, `payment_status`, `userpayment_no`, `mobile_number`) VALUES
(5, 8, 1000, 'jhjgfhjsd', 'checked', 12, 1814940719),
(4, 8, 1000, 'jhkjg', 'checked', 13, 1814940719),
(35, 9, 100, 'jhj', 'checked', 14, 1869868264),
(69, 9, 100, '3843928394', 'not-checked', 15, 1345789234),
(69, 11, 100, '3843928394', 'not-checked', 16, 1234578912),
(70, 11, 100, '384389429', 'not-checked', 17, 1234578901),
(85, 12, 100, 'djfhe374856384', 'checked', 18, 1731855963),
(85, 12, 100, 'dhf7454', 'checked', 19, 1731866963),
(85, 10, 100, 'sdhfjdh485498', 'not-checked', 20, 1731855953);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `club_id` int(100) NOT NULL,
  `post_caption` longtext NOT NULL,
  `post_picture` varchar(100) NOT NULL,
  `post_status` varchar(100) NOT NULL DEFAULT 'private',
  `post_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `club_id`, `post_caption`, `post_picture`, `post_status`, `post_time`) VALUES
(20, 1, 42, 'Hello from Moner Manush!', 'joined.png', 'private', '9-10-22'),
(26, 1, 33, 'new post!', '1_CDCeyYxNhl-VTM0-MtmC-Q.png', 'Public', '09.14.2022'),
(32, 4, 30, 'klhgjfdg', 'mess.png', 'Public', '09.18.2022'),
(49, 5, 34, 'Hello programmers! International Programmers\' Day is quickly approaching, and we are happy to let you know about it. IT CLUB JNU has decided to celebrate \'World Programmers\' Day\' on 13 September 2022 through organizing a carnival at 5th floor, new academic Building, JNU from 10.00 AM to 4 PM.', '306476526_568504798402451_1128823782142639016_n.jpg', 'Public', '09.20.2022'),
(50, 5, 36, 'Neymar da Silva Santos JÃºnior, \r\nThe Perfect Chaos', '307089410_3344537475802226_8525425874153245127_n.jpg', 'Public', '09.20.2022'),
(51, 5, 37, 'Hurry up. Recruitment is going on.', 'recuit.png', 'Public', '09.20.2022'),
(53, 5, 39, 'This is a cultural club of Jagannath University whose main motto is to assemble students willing to learn receiting in a platform where they can share their skill and beauty of receition.', '277821499_339740154797150_5045825695064316361_n.jpg', 'Public', '09.20.2022'),
(56, 69, 34, 'Royal Economics Club and Bangladesh Youth Leadership Center (BYLC), BYLCx presents \r\nBlended Workshop on Kick Start Your Career.', '307657349_1533839287066762_607429440969716104_n.jpg', 'Public', '09.20.2022'),
(57, 5, 34, 'Intra Department Programming Contest has been held on September 13,2022.', 'contest.jpg', 'Public', '09.21.2022'),
(59, 69, 28, 'A great news for the learners of Jagannath University. BrightSkills, one of the best e-learning skill development platform in Bangladesh, is providing scholarships to 5000 students across the country. Jagannath University IT Society is associating the program as a club ambassador of Jagannath University and providing the opportunity to the students of JnU.\r\nWe are working to ensure that no students of Jagannath University are left behind in the job market due to lack of IT skills in a dynamic world dependent on technology. \r\nBrightSkills is also committed to eliminating unemployment from the country and creating global human resources through skill development.\r\nSo, this is a great opportunity to you to uplift your knowledge with free courses from the scholarship. Jagannath University IT Society is proud to be a part of this journey with BrightSkills and provide such opportunity to the students of Jagannath University.\r\nScan the QR Code for registration or click on this link: https://registration.brightskills.com/\r\n#JnUITS\r\n#BrightSkills', 'itimage.jpg', 'Public', '09.21.2022'),
(60, 69, 28, 'Welcome Pranto! Pranto Saha is a new admin of the club. ', 'pranto.jpg', 'Private', '12.18.2022'),
(62, 70, 28, 'Jagannath University IT Society has arranged a “Seminar on AppLink: Create Your Own Telco Application” powered by Banglalink Digital Communications Ltd. In this seminar, we will be sharing information with students on onboarding and creating applications on AppLink. We will also cover the basic principles of API integration (Application Programming Interfaces) during this session.\r\nAppLink is a platform presented by Banglalink to boost innovation in Bangladesh. It allows developers or non-developers to come onboard and create telco apps, providing a ground for innovation for the young developer community.\r\n  Seminar Agenda:\r\n  Introduction to AppLink\r\n  How can a non-developer create services on AppLink\r\n  How can a developer create services on AppLink\r\n  Basic principles of APIs\r\n  How to monetize services on AppLink\r\n  Q & A\r\nThis will be a great opportunity for the students to get an insight into their careers and industry. So, grab this golden opportunity to get one step closer to achieving your dreams.\r\nRegister to join this session.\r\nLast date of registration: 27th November, 2022\r\nVenue: Virtual Classroom, CSE Department\r\nForm Link: https://forms.gle/12EGeDvidS36dswo8 or scan the QR Code\r\nDate: 28th November, 2022\r\nTime: 1.00 PM\r\nFor quarries: Send us massage on Facebook or send email on jnuitsbd@gmail.com', 'seminar.jpg', 'Private', '12.17.2022'),
(63, 70, 43, '', 'film.jpg', 'Public', '12.17.2022'),
(64, 85, 48, ' 📢 Exciting News! 🎉\r\nToday, we had an incredibly productive General Meeting of IEEE JnU SB & CS SBC.\r\nIt was an honor to have the presence of our esteemed \r\nChairman of the Department of CSE,\r\nDr. Uzzal Kumar Acharjee\r\nProfessor & Chairman\r\nDepartment of CSE, JnU \r\nand the Honorable Advisor of IEEE CS JnU SBC,\r\nDr. Sajeeb Saha \r\nAssociate Professor\r\nDepartment of CSE, JnU \r\nThe meeting was a great success, with the participation of our dedicated executive members and enthusiastic general members. We discussed various important matters and shared valuable insights on the future initiatives of our IEEE JnU Student Branch and Computer Society Student Branch Chapter.\r\nWe are grateful for the guidance and support provided by our Chairman and Advisor, who have always been instrumental in helping us grow and achieve new heights. Their presence at the meeting inspired us all and motivated us to work even harder for the betterment of our community.\r\nThank you all for being a part of this incredible journey!\r\n#IEEEJnUSB #IEEECS #GeneralMeeting #ExcitingTimes #CommunityBuilding', 'IEEE.PNG', 'Public', '05.24.2023'),
(65, 85, 48, 'IEEE Jagannath University Student Branch Executive Committee 2023\r\nCongratulations!\r\nWe would like to extend our warmest congratulations on your election to the executive committee. We are confident that your dedication, skills, and passion for the organization will bring us to new heights.\r\nWe would like to take this opportunity to remind you of the important responsibility that comes with your position. You have been entrusted with leading the organization, and we are counting on you to make sound decisions, to be inclusive of all members, and to always act in the best interest of the organization.', 'ieee1.PNG', 'Private', '05.24.2023'),
(66, 85, 34, '\"Good leaders organize and align people around what the team needs to do. Great leaders motivate and inspire people with why they\'re doing it.\" \r\n– Marillyn Hewson\r\nThe interview board for LDP-23 was a concoction of intellectuals and sophisticated thinkers. Their growth mindset still enlightens the club to push the impossible work into reality.\r\nA humble appreciation for all the brilliant minds who gave their best foot forward for a successful event. It is a pleasure for Jagannath University Career Club to receive such support and guidance from the well-wishers of the club.', 'career.PNG', 'Public', '05.25.2023');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `batch` int(100) NOT NULL,
  `is_validate` int(100) NOT NULL,
  `v_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `user_image`, `user_type`, `department`, `batch`, `is_validate`, `v_code`) VALUES
(1, 'Ikra chy nowkshi', 'b170304055@geb.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211231-WA0157.jpg', 'Student', 'GEB', 1, 1, '7d6c43f4'),
(4, 'Armanur Rashid ', 'b120305007@cse.jnu.ac.bd', '37693cfc748049e45d87b8c7d8b9aacd', 'IMG-20211126-WA0001.jpg', 'student', 'CSE', 14, 1, ''),
(5, 'Sanjida NItu', 'b190303020@math.jnu.ac.bd', 'd89104497e5d0ce69d9df5ef49cfd9d7', 'IMG-20211216-WA0013.jpg', 'student', 'Math', 14, 1, ''),
(35, 'Shahriar Ahmed', 'b180306001@mkt.jnu.ac.bd', '32c8ddfbd374f1499f1a8ec5382f2234', 'Siyam1.jpg', 'Student', 'Marketing', 14, 1, '34f1a9fa'),
(36, 'Raju Bishash', 'b180304022@geb.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '306119681_1053369538683961_9020919689786845281_n.jpg', 'Student', 'GEB', 14, 1, 'ecd58c2b'),
(38, 'Roichuddun rana', 'b190304005@mcj.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '306630147_590001779472321_8372578113628443782_n.jpg', 'Student', 'Journalism', 14, 1, 'ecd58c2b'),
(39, 'Sunaan Sultan', 'b160305008@phar.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211231-WA0157.jpg', 'Student', 'Pharmacy', 14, 1, 'ecd58c2b'),
(40, 'Prosanto Deb', 'b180307002@phar.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '301535541_3269657169990777_4516925668432245305_n.jpg', 'Student', 'Pharmacy', 14, 1, 'ecd58c2b'),
(41, 'Nadia Islam', 'b180305041@math.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'IMG-20211231-WA0157.jpg', 'Student', 'Math', 14, 1, 'ecd58c2b'),
(42, 'Redwan Hossain', 'b20305050@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '305011280_498502491722120_5742514038766624866_n.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(43, 'Md. Al-amin ', 'b180305042@stat.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '305772236_490771615934128_2356736794767902089_n.jpg', 'Student', 'Statistics', 14, 1, 'ecd58c2b'),
(44, 'Abdullah Alif', 'b150403002@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'Aliff.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(46, 'Naimur Rahman', 'b180305003@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'Naimur.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(58, 'Md Rayhan Billah', 'b180305004@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'Billu.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(59, 'Sourav Barman', 'b180305006@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', 'bormon.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(60, 'Dhruba kanti', 'b180305010@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '269914576_471584951235536_8378856938442061634_n.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(61, 'Fardin Ahsan Shawon', 'b180305009@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '280583744_708652253711360_7040209141863349966_n.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(62, 'Ratna Tripura', 'b180305011@cse.jnu.ac.bd', '1ff1de774005f8da13f42943881c655f', '174327172_1444781769198257_4261523618838482564_n.jpg', 'Student', 'CSE', 14, 1, 'ecd58c2b'),
(63, 'Raju miya', 'b180305012@cse.jnu.ac.bd', '8a431f6dc8ef89ffb3d0e722d29aed9a', '307089410_3344537475802226_8525425874153245127_n.jpg', 'Teacher', 'CSE', 15, 1, '01d0fa6f'),
(64, 'Laboni Akter', 'b180305044@cse.jnu.ac.bd', 'Laboni*#', 'user.png', 'Student', 'CSE', 14, 0, '4d3dc526'),
(69, 'Fariha', 'b190302041@math.jnu.ac.bd', '1fa85c388aae67bebebe63122de4eeaf', 'user.png', 'Teacher', 'Math', 0, 1, 'b6ace774'),
(84, 'Pranto Kumar Saha', 'b180305007@cse.jnu.ac.bd', '44e5b3016fe22015c86346ef27140763', 'user.png', 'Student', 'CSE', 14, 1, '9aa64f95'),
(85, 'Laboni Akter', 'b180305044@cse.jnu.ac.bd', '89487539c1cfc6e256c1ccb78be94897', 'IMG_1773.JPG', 'Student', 'CSE', 14, 1, 'b001a215');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_form`
--
ALTER TABLE `apply_form`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `clubmonthypayment`
--
ALTER TABLE `clubmonthypayment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD PRIMARY KEY (`user_id`,`club_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_reply`
--
ALTER TABLE `comment_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `form_pay`
--
ALTER TABLE `form_pay`
  ADD PRIMARY KEY (`userpay_id`);

--
-- Indexes for table `invitation`
--
ALTER TABLE `invitation`
  ADD PRIMARY KEY (`invite_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`userpayment_no`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_form`
--
ALTER TABLE `apply_form`
  MODIFY `session_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clubmonthypayment`
--
ALTER TABLE `clubmonthypayment`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comment_reply`
--
ALTER TABLE `comment_reply`
  MODIFY `reply_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_pay`
--
ALTER TABLE `form_pay`
  MODIFY `userpay_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `invite_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `userpayment_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
