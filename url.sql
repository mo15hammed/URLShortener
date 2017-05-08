-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 05:24 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url`
--

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `ID` int(11) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `Code` varchar(12) DEFAULT NULL,
  `Created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`ID`, `URL`, `Code`, `Created`) VALUES
(457123182, 'http://www.google.com', '7k5qi6', '2017-02-20 23:55:16'),
(457123183, 'http://www.facebook.com', '7k5qi7', '2017-02-20 23:55:34'),
(457123184, 'http://www.youtube.com', '7k5qi8', '2017-02-21 19:50:53'),
(457123185, 'http://www.mohammed.com', '7k5qi9', '2017-02-21 21:33:48'),
(457123186, 'http://localhost/urlshortener/index.php', '7k5qia', '2017-02-24 14:28:06'),
(457123187, 'http://www.google.comasdasdasdasdasdasdasdasdasdasdasdasdasdasdaasda', '7k5qib', '2017-05-08 16:57:18'),
(457123188, 'http://google.com', '7k5qic', '2017-05-08 17:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fullname` int(255) NOT NULL,
  `Email` int(11) NOT NULL,
  `Password` int(11) NOT NULL,
  `RegDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_urls`
--

CREATE TABLE `users_urls` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Url_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `users_urls`
--
ALTER TABLE `users_urls`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Url_ID` (`Url_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457123189;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_urls`
--
ALTER TABLE `users_urls`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_urls`
--
ALTER TABLE `users_urls`
  ADD CONSTRAINT `users_urls_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_urls_ibfk_2` FOREIGN KEY (`Url_ID`) REFERENCES `urls` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
