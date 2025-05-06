-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2025-05-06 20:22:01
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `room_1`
--

INSERT INTO `room_1` (`Index`, `userID`, `userName`, `userMsg_Time`) VALUES
(1, '111', '111', '["111_1", [2024, 10, 1, 8, 1]]'),
(2, '222', '222', '["222_1", [2024, 10, 2, 8, 2]]'),
(3, '222', '222', '["222_2", [2024, 10, 2, 8, 3]]'),
(4, '333', '333', '["333_1", [2024, 10, 2, 8, 4]]'),
(5, '444', '444', '["444_1", [2024, 10, 2, 8, 5]]'),
(6, '444', '444', '["444_2", [2024, 10, 2, 8, 6]]'),
(7, '555', '555', '["555_1", [2024, 10, 2, 8, 7]]\r\n'),
(8, '666', '666', '["666_1", [2024, 10, 2, 8, 1]]'),
(9, '666', '666', '["666_2", [2024, 10, 2, 8, 2]]'),
(10, '666', '666', '["666_3", [2024, 10, 2, 8, 3]]'),
(11, '666', '666', '["666_4", [2024, 10, 2, 8, 4]]'),
(12, '666', '666', '["666_5", [2024, 10, 2, 8, 5]]'),
(13, '666', '666', '["666_6", [2024, 10, 2, 8, 6]]');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
