-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 11:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vhiron`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblemployeedetails`
--

CREATE TABLE `tblemployeedetails` (
  `tblemployeedetails_EmployeeFirstName` varchar(50) NOT NULL DEFAULT '',
  `tblemployeedetails_EmployeeMiddleName` varchar(50) NOT NULL,
  `tblemployeedetails_EmployeeLastName` varchar(50) NOT NULL,
  `tblemployeedetails_EmployeeId` int(11) NOT NULL,
  `tblemployeedetails_ContactNo` bigint(11) NOT NULL,
  `tblemployeedetails_AlterContactNo` bigint(20) NOT NULL,
  `tblemployeedetails_Email` varchar(50) NOT NULL,
  `tblemployeedetails_Address` varchar(50) NOT NULL,
  `tblemployeedetails_City` char(50) NOT NULL,
  `tblemployeedetails_State` varchar(50) NOT NULL,
  `tblemployeedetails_AadharCardNo` bigint(50) NOT NULL,
  `tblemployeedetails_AadharURL` varchar(255) NOT NULL,
  `tblemployeedetails_Qualification` text NOT NULL,
  `tblemployeedetails_Stream` text NOT NULL,
  `tblemployeedetails_College name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployeedetails`
--

INSERT INTO `tblemployeedetails` (`tblemployeedetails_EmployeeFirstName`, `tblemployeedetails_EmployeeMiddleName`, `tblemployeedetails_EmployeeLastName`, `tblemployeedetails_EmployeeId`, `tblemployeedetails_ContactNo`, `tblemployeedetails_AlterContactNo`, `tblemployeedetails_Email`, `tblemployeedetails_Address`, `tblemployeedetails_City`, `tblemployeedetails_State`, `tblemployeedetails_AadharCardNo`, `tblemployeedetails_AadharURL`, `tblemployeedetails_Qualification`, `tblemployeedetails_Stream`, `tblemployeedetails_College name`) VALUES
('Rahul', 'Rajendrakumar', 'Yadav', 5, 7208752532, 0, '', 'A/303,Shri Samarth Krupa, Dombivli ', 'Mumbai', 'Maharashtra', 0, '', 'BTech', 'Electronics', 'Pillai college of  Engineering'),
('Prakash', 'Dhalaram', 'Choudhary', 10, 9136221887, 0, '', '231,Shraddha,Charkop', 'Mumbai', 'Maharashtra', 692804845888, '', 'BE', 'Electronics and Telecommunication', 'Atharva college of Engineering'),
('Siddhesh ', 'Vasudev', 'Kanekar', 11, 8767978969, 0, '', 'A/210,Shri Moreshawar,Dahisar', 'Mumbai', 'Maharashtra', 995506876476, '', 'BE', 'Electronics And Telecommunication', 'Atharva College Of engineering'),
('Akash', 'Kamaljit', 'Rana', 15, 9892247626, 0, '', 'yogashram bus stop,malad west', 'Mumbai', 'Maharashtra', 592504983270, '', 'BE', 'Electronics and Telecommuinication', 'Atharva College Of Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `tblindiviualemployeeparameter`
--

CREATE TABLE `tblindiviualemployeeparameter` (
  `tblindiviualemployeeparameter_ID` int(11) NOT NULL,
  `tblindiviualemployeeparameter_EmployeeID` int(11) NOT NULL,
  `tblindiviualemployeeparameter_ParameterID` int(11) NOT NULL,
  `tblindiviualemployeeparameter_Date` int(11) NOT NULL,
  `tblindiviualemployeeparameter_Valuation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblparametermaster`
--

CREATE TABLE `tblparametermaster` (
  `tblparametermaster_OnTime&Budget` int(11) NOT NULL,
  `tblparametermaster_Goals&Achievements` int(11) NOT NULL,
  `tblparametermaster_ObendienceToCompanyPolicies` int(11) NOT NULL,
  `tblparametermaster_TaskCompletion` int(11) NOT NULL,
  `tblparametermaster_WorkQuantity` int(11) NOT NULL,
  `tblparametermaster_Sales&RevenueGenerated` int(11) NOT NULL,
  `tblparametermaster_AbilityToTakeOwnership` int(11) NOT NULL,
  `tblparametermaster_Adoptability&Adaptability` int(11) NOT NULL,
  `tblparametermaster_ConsistentImprovement` int(11) NOT NULL,
  `tblparametermaster_CommunicationAbilities` int(11) NOT NULL,
  `tblparametermaster_Feedback` int(11) NOT NULL,
  `tblparametermaster_LeadershipCapabilities` int(11) NOT NULL,
  `tblparametermaster_Creativity&Innovation` int(11) NOT NULL,
  `tblparametermaster_ExecutionalApproach` int(11) NOT NULL,
  `tblparametermaster_PersonalHabits` int(11) NOT NULL,
  `tblparametermaster_Planning&Organising` int(11) NOT NULL,
  `tblparametermaster_WorkQuality` int(11) NOT NULL,
  `tblparametermaster_Reliability` int(11) NOT NULL,
  `tblparametermaster_Responsiveness` int(11) NOT NULL,
  `tblparametermaster_Expertise` int(11) NOT NULL,
  `tblparametermaster_TeamWork` int(11) NOT NULL,
  `tblparametermaster_TimeManagement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblemployeedetails`
--
ALTER TABLE `tblemployeedetails`
  ADD PRIMARY KEY (`tblemployeedetails_EmployeeId`);

--
-- Indexes for table `tblindiviualemployeeparameter`
--
ALTER TABLE `tblindiviualemployeeparameter`
  ADD PRIMARY KEY (`tblindiviualemployeeparameter_ID`),
  ADD UNIQUE KEY `EmployeeID` (`tblindiviualemployeeparameter_EmployeeID`),
  ADD KEY `ParameterID` (`tblindiviualemployeeparameter_ParameterID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblindiviualemployeeparameter`
--
ALTER TABLE `tblindiviualemployeeparameter`
  ADD CONSTRAINT `tblindiviualemployeeparameter_ibfk_1` FOREIGN KEY (`tblindiviualemployeeparameter_EmployeeID`) REFERENCES `tblemployeedetails` (`tblemployeedetails_EmployeeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
