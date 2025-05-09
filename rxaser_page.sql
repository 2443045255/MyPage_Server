-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2025-05-09 16:31:56
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rxaser_page`
--

-- --------------------------------------------------------

--
-- 表的结构 `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `Index` int(10) NOT NULL AUTO_INCREMENT,
  `RoomName` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `rooms`
--

INSERT INTO `rooms` (`Index`, `RoomName`) VALUES
(1, 'room_1');

-- --------------------------------------------------------

--
-- 表的结构 `room_1`
--

CREATE TABLE IF NOT EXISTS `room_1` (
  `Index` int(10) NOT NULL AUTO_INCREMENT,
  `userID` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `userName` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `userMsg_Time` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `room_1`
--

INSERT INTO `room_1` (`Index`, `userID`, `userName`, `userMsg_Time`) VALUES
(1, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["123",[2025,5,9,18,8]]'),
(2, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["1234",[2025,5,9,18,8]]'),
(3, '5LKI2UPCY9DW9T7I', '5LKI2UPC', '["123",[2025,5,9,18,12]]'),
(4, '5LKI2UPCY9DW9T7I', '5LKI2UPC', '["1234",[2025,5,9,18,12]]'),
(5, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["1",[2025,5,9,19,7]]'),
(6, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["2",[2025,5,9,19,7]]'),
(7, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["3",[2025,5,9,19,7]]'),
(8, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["4",[2025,5,9,19,7]]'),
(9, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["5",[2025,5,9,19,7]]'),
(10, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["6",[2025,5,9,19,7]]'),
(11, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["7",[2025,5,9,19,7]]'),
(12, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["8",[2025,5,9,19,7]]'),
(13, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["9",[2025,5,9,19,7]]'),
(14, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["10",[2025,5,9,19,7]]'),
(15, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["11",[2025,5,9,19,7]]'),
(16, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["12",[2025,5,9,19,7]]'),
(17, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["13",[2025,5,9,19,8]]'),
(18, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["14",[2025,5,9,19,8]]'),
(19, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["15",[2025,5,9,19,8]]'),
(20, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["16",[2025,5,9,19,9]]'),
(21, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["17",[2025,5,9,19,9]]'),
(22, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["18",[2025,5,9,19,11]]'),
(23, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["19",[2025,5,9,19,11]]'),
(24, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["20",[2025,5,9,19,12]]'),
(25, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["21",[2025,5,9,19,12]]'),
(26, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["22",[2025,5,9,19,12]]'),
(27, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["23",[2025,5,9,19,13]]'),
(28, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["24\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n24",[2025,5,9,19,13]]'),
(29, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["25",[2025,5,9,19,13]]'),
(30, '5LKI2UPCY9DW9T7I', '5LKI2UPC', '["26",[2025,5,9,19,16]]'),
(31, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["123\\n123",[2025,5,9,19,27]]'),
(32, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["1",[2025,5,9,21,26]]'),
(33, '4EQ74S6POZO6Y5B1', '4EQ74S6P', '["123",[2025,5,9,22,25]]');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `UserName` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `UserHandPhoto` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `UserHandPhoto`) VALUES
('4EQ74S6POZO6Y5B1', '4EQ74S6P_1234', 'assets/userHandPhoto/YuanShen_4.png'),
('5LKI2UPCY9DW9T7I', '5LKI2UPC_1223', 'assets/userHandPhoto/YuanShen_7.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
