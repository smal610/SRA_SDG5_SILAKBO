-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 08:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silakbo_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ReportID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `HarassmentType` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `EvidencePath` varchar(255) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Pending',
  `DateSubmitted` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`ReportID`, `UserID`, `FullName`, `HarassmentType`, `Description`, `EvidencePath`, `Status`, `DateSubmitted`) VALUES
(1, 2, 'Sarina Mae Laurel', 'Cyber', 'Sample only', '', 'Completed', '2026-03-19 23:12:22'),
(2, 9, 'Shane Villanueva', 'Verbal', 'Example only', 'C:\\Users\\Daniel\\Downloads\\Logo_1.png', 'Completed', '2026-03-20 00:56:18'),
(3, 10, 'Jane Yu', 'Stalking', 'Sample', '', 'Ongoing', '2026-03-20 02:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `supportresources`
--

CREATE TABLE `supportresources` (
  `ResourceID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supportresources`
--

INSERT INTO `supportresources` (`ResourceID`, `Name`, `Type`, `Contact`) VALUES
(1, 'Bantay Bata 163', 'Child & Family Helpline', '163 / 0917-825-4357'),
(2, 'Women\'s Crisis Center (WCC)', 'Counseling / Abuse Support', '0922-893-0967 / wcc.ph'),
(3, 'Philippine Commission on Women (PCW)', 'Government Support', '02-8802-2400 / pcw.gov.ph'),
(4, 'Child Protection Network Foundation, Inc. (CPN)', 'Child Protection', '0917-560-2275'),
(5, 'Department of Social Welfare and Development (DSWD) Hotline', 'Government Aid', '02-8882-0918 / 1555'),
(6, 'Safe Spaces PH', 'Online Abuse & Counseling', '0917-544-8624 / safespacesph.org'),
(7, 'Philippine Mental Health Association (PMHA)', 'Mental Health Counseling', '02-8929-6541 / pmha.org.ph'),
(8, 'Kababaihan Para sa Kaunlaran (KPK)', 'Women\'s Rights & Support', '0917-123-4567'),
(9, 'National Center for Mental Health (NCMH) Crisis Hotline', 'Suicide / Mental Health', '0917-899-8727 / 02-8531-9001'),
(10, 'Lingap Center for Women & Children', 'Counseling / Shelter', '0927-555-0198');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Birthday` date NOT NULL,
  `Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Username`, `Password`, `Gender`, `Birthday`, `Role`) VALUES
(1, '', '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Female', '2026-03-19', 'User'),
(2, 'Mae Laurel', 'm.laurel', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'Female', '2026-03-19', 'User'),
(3, 'Administrator', 'admin', 'admin123', 'Female', '2000-01-01', 'Admin'),
(5, 'Administrator', 'admin2', 'e99a18c428cb38d5f260853678922e03', 'Male', '2000-01-01', 'Admin'),
(6, 'Administrator', 'admin3', 'e99a18c428cb38d5f260853678922e03', 'Female', '2000-01-01', 'Admin'),
(8, 'Administrator', 'adminA', 'admin123', 'Female', '2000-01-01', 'Admin'),
(9, 'Shane', 's.villanueva', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'Female', '2026-03-20', 'User'),
(10, 'Jane Yu', 'j.yu', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'Female', '2026-03-20', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `supportresources`
--
ALTER TABLE `supportresources`
  ADD PRIMARY KEY (`ResourceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supportresources`
--
ALTER TABLE `supportresources`
  MODIFY `ResourceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
