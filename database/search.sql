-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2022 at 07:01 PM
-- Server version: 5.6.38
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `ranking` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `url`, `title`, `description`, `ranking`) VALUES
(1, 'https://google.com', 'Google', 'Google is the best Search Engine', 8),
(2, 'https://bing.com', 'Bing', 'Bing is the best Search Engine that owned by microsoft', 4),
(3, 'https://lightpress.com', 'Lightpress', 'Lightpress is a cms', 0),
(4, 'https://minecraft.net', 'Minecraft', 'Minecraft is a best servival #Microsoft game', 11),
(5, 'https://github.com/', 'Github', 'Github is a git based website', 6),
(6, 'https://python.org/', 'Python -Home', 'Python is the most used programing language', 4),
(7, 'https://php.net', 'PHP', 'PHP is a most used language.', 0),
(8, 'https://windows.php.net', 'PHP WINDOWS', 'php download for windows', 5),
(10, 'https://drive.google.com', 'Google Drive', 'Google drive is a cloud storage', 2),
(11, 'https://microsoft.com', 'Microsoft', 'Microsoft Windows', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
