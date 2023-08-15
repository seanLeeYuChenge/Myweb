-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2014 at 11:25 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `album`
--
CREATE DATABASE IF NOT EXISTS `album` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `album`;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `owner` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `owner`) VALUES
(1, '寵物精選集', 'sean'),
(2, '布袋戲相冊', 'sean'),
(3, '袖珍房屋及擺件相冊', 'sean'),
(4, '袖珍室內精選集', 'sean'),
(5, '袖珍建築篇', 'sean');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `name`, `filename`, `comment`, `album_id`) VALUES
(26, 'IMG_0152.jpg', '49db3a1c689f8.jpg', NULL, 1),
(27, 'IMG_0160.jpg', '49db3a1c80931.jpg', NULL, 1),
(28, 'IMG_0164.jpg', '49db3a1c93876.jpg', NULL, 1),
(29, 'IMG_0165.jpg', '49db3a1ca75ba.jpg', NULL, 1),
(30, 'IMG_0166.jpg', '49db3a2b315ab.jpg', NULL, 1),
(31, 'IMG_0167.jpg', '49db3a2b45822.jpg', NULL, 1),
(32, 'IMG_0168.jpg', '49db3a2b5b33c.jpg', NULL, 1),
(33, 'IMG_0169.jpg', '49db3a2b6e5f6.jpg', NULL, 1),
(34, 'IMG_0170.jpg', '49db3a35ab078.jpg', NULL, 1),
(35, 'IMG_0171.jpg', '49db3a35bf2eb.jpg', NULL, 1),
(36, 'IMG_0173.jpg', '20200725_143851.jpg', NULL, 2),
(37, 'IMG_0176.jpg', '20200725_143912.jpg', NULL, 2),
(38, 'IMG_0178.jpg', '20200725_143928.jpg', NULL, 2),
(39, 'IMG_0179.jpg', '20200725_143948.jpg', '唷... 漂亮喔!', 2),
(40, 'IMG_0180.jpg', '20200725_144019.jpg', NULL, 2),
(41, 'IMG_0181.jpg', '20200725_144022.jpg', NULL, 2),
(58, 'IMG_0324.jpg', '20200725_152356.jpg', NULL, 4),
(61, 'IMG_0318.jpg', '20200725_152419.jpg', NULL, 4),
(62, 'IMG_0321.jpg', '20200725_152436.jpg', NULL, 4),
(63, 'IMG_0322.jpg', '20200725_152516.jpg', NULL, 4),
(64, 'IMG_0315.jpg', '20200725_152548.jpg', NULL, 4),
(65, 'IMG_0316.jpg', '20200725_152658.jpg', NULL, 4),
(66, 'IMG_0316.jpg', '20200725_152719.jpg', NULL, 4),
(67, 'IMG_0316.jpg', '20200725_153541.jpg', NULL, 4),
(68, 'IMG_0338.jpg', '20200725_152733.jpg', NULL, 5),
(69, 'IMG_0343.jpg', '20200725_153202.jpg', NULL, 5),
(70, 'IMG_0344.jpg', '20200725_153248.jpg', NULL, 5),
(71, 'IMG_0345.jpg', '20200725_153315.jpg', NULL, 5),
(72, 'IMG_0346.jpg', '20200725_153347.jpg', NULL, 5),
(73, 'IMG_0346.jpg', '20200725_153449.jpg', NULL, 5),
(74, 'IMG_0346.jpg', '20200725_154022.jpg', NULL, 5),
(75, 'IMG_0346.jpg', '20200725_154120.jpg', NULL, 5),
(76, 'IMG_0346.jpg', '20200725_154157.jpg', NULL, 5),
(77, 'IMG_0346.jpg', '20200725_160737.jpg', NULL, 5),
(113, 'DSC00031.JPG', '20200725_144355.jpg', NULL, 3),
(114, 'DSC00030.JPG', '20200725_144409.jpg', NULL, 3),
(115, 'DSC00034.JPG', '20200725_144617.jpg', NULL, 3),
(116, 'DSC00035.JPG', '20200725_144642.jpg', NULL, 3),
(117, 'DSC00037.JPG', '20200725_144708.jpg', NULL, 3),
(118, 'DSC00038.JPG', '20200725_145006.jpg', NULL, 3),
(119, 'DSC00041.JPG', '20200725_145036.jpg', NULL, 3),
(120, 'DSC00042.JPG', '20200725_145104.jpg', NULL, 3),
(121, 'DSC00043.JPG', '20200725_145115.jpg', NULL, 3),
(122, 'DSC00044.JPG', '20200725_145135.jpg', NULL, 3),
(123, 'DSC00046.JPG', '20200725_145221.jpg', NULL, 3),
(129, 'DSC00047.JPG', '20200725_145241.jpg', NULL, 3),
(130, 'DSC00048.JPG', '20200725_145247.jpg', NULL, 3),
(131, 'DSC00049.JPG', '20200725_145320.jpg', NULL, 3),
(132, 'DSC00050.JPG', '20200725_145337.jpg', NULL, 3),
(133, 'DSC00051.JPG', '20200725_145403.jpg', NULL, 3),
(134, 'DSC00052.JPG', '20200725_145415.jpg', NULL, 3);
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `account` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`account`, `password`, `name`) VALUES
('sean', 'sean', 'sean'),
('jerry', 'jerry', 'jerry'),
('guest', 'guest', 'guest');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
