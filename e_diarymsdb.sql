-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 12:06 PM
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
-- Database: `e_diarymsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(125) DEFAULT NULL,
  `createdBy` int(5) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `categoryName`, `createdBy`, `creationDate`) VALUES
(2, 'Travelling', 1, '2022-04-02 15:56:17'),
(4, 'Travel', 2, '2022-04-03 09:51:43'),
(5, 'Financial', 2, '2022-04-03 09:51:53'),
(11, 'education', 4, '2022-06-21 18:42:56'),
(12, 'Education', 5, '2022-06-23 04:10:33'),
(14, 'Hostel', 3, '2022-06-29 20:04:57'),
(16, 'Hostel', 6, '2022-06-29 21:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `noteCategory` varchar(255) DEFAULT NULL,
  `noteTitle` varchar(255) DEFAULT NULL,
  `noteDescription` mediumtext DEFAULT NULL,
  `createdBy` int(5) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`id`, `noteCategory`, `noteTitle`, `noteDescription`, `createdBy`, `creationDate`) VALUES
(2, 'Personal', 'Nanital Trip', 'This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.', 1, '2022-04-03 06:18:59'),
(3, 'Travelling', 'Trip to Manali', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', 1, '2022-04-03 07:23:13'),
(4, 'Financial', 'Year Budget 2021-2022', 'This is test budget.  This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.', 2, '2022-04-03 09:52:51'),
(5, 'Education', 'quiz', 'Today was was my Quiz', 5, '2022-06-23 04:12:23'),
(6, 'Education', 'Summer', '<p><strong>Today Tempreture was vary high. It is about 47 C.</strong></p>\r\n', 3, '2022-06-29 18:19:42'),
(9, 'Hostel', 'loadshedding', '<p>4 ghanti loadshedding</p>\r\n', 6, '2022-06-29 21:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblnoteshistory`
--

CREATE TABLE `tblnoteshistory` (
  `id` int(11) NOT NULL,
  `noteId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `noteDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnoteshistory`
--

INSERT INTO `tblnoteshistory` (`id`, `noteId`, `userId`, `noteDetails`, `postingDate`) VALUES
(3, 2, 1, 'Note Details. Note DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote Details', '2022-04-03 07:21:09'),
(5, 3, 1, 'This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-04-03 07:23:26'),
(6, 4, 2, 'Testing purpose.  Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. ', '2022-04-03 09:53:17'),
(7, 4, 2, 'Budget  Budget  Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget ', '2022-04-03 09:53:32'),
(8, 6, 3, '<p>&nbsp;I am A computer Science student</p>\r\n', '2022-06-30 04:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(150) DEFAULT NULL,
  `lastName` varchar(150) DEFAULT NULL,
  `emailId` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`id`, `firstName`, `lastName`, `emailId`, `mobileNumber`, `userPassword`, `regDate`) VALUES
(4, 'Mian Abdullah', 'Saeed', 'mian90kakakhel0@gmail.com', 3090080864, '972164c363985f837f430c507387872a', '2022-06-21 17:22:45'),
(5, 'Muhammad', 'Hasnain', 'Hasnainuet1@gmail.com', 3498987656, '1234', '2022-06-23 04:08:58'),
(6, 'Adnan', 'Aman', 'Adnan@gmail.com', 3398987987, 'e10adc3949ba59abbe56e057f20f883e', '2022-06-29 21:13:56'),
(7, 'hasnain1', 'khan', 'hasnain@gmail.com', 3847383728, 'e2fc714c4727ee9395f324cd2e7f331f', '2022-11-15 16:22:10'),
(8, 'Muhammad', 'Hasnain', 'hasnainsps@gmail.com', 349937478, 'b3f947379e88aab49c26f395aa0ebaee', '2022-12-08 18:33:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnoteshistory`
--
ALTER TABLE `tblnoteshistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnoteshistory`
--
ALTER TABLE `tblnoteshistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblregistration`
--
ALTER TABLE `tblregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
