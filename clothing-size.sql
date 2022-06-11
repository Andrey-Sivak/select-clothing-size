-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2022 at 04:44 PM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothing-size`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothing-size`
--

CREATE TABLE `clothing-size` (
  `id` int(10) NOT NULL,
  `height` int(3) NOT NULL,
  `size` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clothing-size`
--

INSERT INTO `clothing-size` (`id`, `height`, `size`) VALUES
(1, 160, 'XS'),
(2, 161, 'XS'),
(3, 162, 'XS'),
(4, 163, 'XS'),
(5, 164, 'XS'),
(6, 165, 'XS'),
(7, 166, 'XS'),
(8, 167, 'XS'),
(9, 168, 'XS'),
(10, 169, 'XS'),
(11, 170, 'S'),
(12, 171, 'S'),
(13, 172, 'S'),
(14, 173, 'S'),
(15, 174, 'S'),
(16, 175, 'M'),
(17, 176, 'M'),
(18, 177, 'M'),
(19, 178, 'M'),
(20, 179, 'M'),
(21, 180, 'L'),
(22, 181, 'L'),
(23, 182, 'L'),
(24, 183, 'L'),
(25, 184, 'L'),
(26, 185, 'XL'),
(27, 186, 'XL'),
(28, 187, 'XL'),
(29, 188, 'XL'),
(30, 189, 'XL'),
(31, 190, 'XL'),
(32, 191, 'XL'),
(33, 192, 'XL'),
(34, 193, 'XL'),
(35, 194, 'XL'),
(36, 195, 'XXL'),
(37, 196, 'XXL'),
(38, 197, 'XXL'),
(39, 198, 'XXL'),
(40, 199, 'XXL'),
(41, 200, 'XXL'),
(42, 201, 'XXL'),
(43, 202, 'XXL'),
(44, 203, 'XXL'),
(45, 204, 'XXL'),
(46, 205, 'XXL'),
(47, 206, 'XXL'),
(48, 207, 'XXL'),
(49, 208, 'XXL'),
(50, 209, 'XXL'),
(51, 210, 'XXL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clothing-size`
--
ALTER TABLE `clothing-size`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clothing-size`
--
ALTER TABLE `clothing-size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
