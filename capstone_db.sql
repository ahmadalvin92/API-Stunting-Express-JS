-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 06:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `id_child` int(11) NOT NULL,
  `id_parent_user` int(11) DEFAULT NULL,
  `ch_name` varchar(255) DEFAULT NULL,
  `ch_date_birth` date DEFAULT NULL,
  `ch_gender` varchar(10) DEFAULT NULL,
  `ch_birth_height` float DEFAULT NULL,
  `creat_at_by` int(11) DEFAULT NULL,
  `creat_at_time` datetime DEFAULT NULL,
  `update_at_by` varchar(255) DEFAULT '-',
  `update_at_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`id_child`, `id_parent_user`, `ch_name`, `ch_date_birth`, `ch_gender`, `ch_birth_height`, `creat_at_by`, `creat_at_time`, `update_at_by`, `update_at_time`) VALUES
(4, 1, 'John Doe', '2010-05-15', 'Male', 50, NULL, NULL, '-', NULL),
(5, 9, 'Nopak', '2003-01-01', 'Male', 50.5, NULL, NULL, '-', NULL),
(7, 2, 'jahwan', '2003-07-04', 'Female', 50.5, NULL, NULL, '-', NULL),
(9, 3, 'varel', '2003-01-01', 'Female', 55, NULL, NULL, '-', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_detect`
--

CREATE TABLE `history_detect` (
  `id_history` int(11) NOT NULL,
  `id_parent_user` int(11) DEFAULT NULL,
  `id_child` int(11) DEFAULT NULL,
  `ch_name` varchar(255) DEFAULT NULL,
  `ch_age` int(11) DEFAULT NULL,
  `ch_latest_height` float DEFAULT NULL,
  `result_detect` varchar(255) DEFAULT NULL,
  `creat_at_by` int(11) DEFAULT NULL,
  `creat_at_time` datetime DEFAULT NULL,
  `update_at_by` varchar(255) DEFAULT '-',
  `update_at_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_detect`
--

INSERT INTO `history_detect` (`id_history`, `id_parent_user`, `id_child`, `ch_name`, `ch_age`, `ch_latest_height`, `result_detect`, `creat_at_by`, `creat_at_time`, `update_at_by`, `update_at_time`) VALUES
(1, 1, 4, 'Anak Pertama', 9, 140, 'Tinggi badan sesuai', NULL, NULL, '-', NULL),
(3, 1, 4, 'Anak Pertama', 9, 140, 'Tinggi badan sesuai', NULL, NULL, '-', NULL),
(4, 9, 5, 'Nathan', 4, 105.5, 'Healthy', NULL, NULL, '-', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role` varchar(50) DEFAULT 'CT_USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `phone`, `address`, `gender`, `birth_date`, `role`) VALUES
(1, 'Alvin@gmail.com', '$2b$10$HoFYSRbqK32lSrPycDOLweJi23aWVIQSeMKd0GVT2boCvZSbQ2s7y', 'Alvin Grifin', '1234567890', '123 Main St', '', '0000-00-00', 'CT_USER'),
(2, 'sultan@gmail.com', '$2b$10$5zK1V0jkgYowbxOtBiLb2uXyfkoieYOSANXxWSUIAnkHXMXPjCrNm', 'Sultan', NULL, NULL, '', '0000-00-00', 'CT_USER'),
(3, 'alvin@alvin.com', '$2b$10$5h/j8ug2EE.29kZ6/Mva6.2K6CV.m06fQWyW9KqTOGU1tfwvWrI5q', NULL, NULL, NULL, '', '0000-00-00', NULL),
(4, 'sultan@yahoo.co.id', '$2b$10$iOB.XIveDe20B.0TZqiBvevAzQvYRjnhjUM0YR2p/3moYDI..asfm', 'sultan ', '1234567890', '123 Nuri St', '', '0000-00-00', NULL),
(5, 'sulthan@yahoo.co.id', '$2b$10$A0eaGocWJwxi2WN3NQsIMOTme0juOsJQ9V/ubREgO9hF0V.XzWHjG', 'sulthan', '089683016080', '122 Nuri', '', '0000-00-00', NULL),
(6, 'sultan@yahoo.co.id', '$2b$10$qt/z9SPjNMida.IjnKMPnecatj9aPiK8pVuDcGqmUFYnGQgHt5Xne', NULL, NULL, NULL, '', '0000-00-00', NULL),
(7, 'alvin@yahoo.co.id', '$2b$10$FJK193nhcsZO2RWFEfzkZetc36XSkl59XAl2i.GxbGg/Z9D3Zi.WO', 'Ahmad Alvin', '1234567890', 'Mentari 112', '', '0000-00-00', NULL),
(8, 'sultan@yahoo.co.id', '$2b$10$vO8jNKLnjEIjy9fS1ZNgSuyMQEATYAplG/Ooen9oKvfRHHHrg3eom', NULL, NULL, NULL, '', '0000-00-00', NULL),
(9, 'joko@yahoo.co.id', '$2b$10$b9McOY9wtcnAma9oHZv3KOW2F3Z/HgOf7xXi3XzZaVI/Gv5ysr7l2', 'Joko', '1234567890', '1234 V', '', '0000-00-00', NULL),
(10, 'alvin@yahoo.co.id', '$2b$10$FJK193nhcsZO2RWFEfzkZetc36XSkl59XAl2i.GxbGg/Z9D3Zi.WO', 'Ahmad Alvin', '1234567890', 'Mentari 112', '', '0000-00-00', NULL),
(11, 'kamal@yahoo.co.id', '$2b$10$lGnFBHuFcESqZFos4LUQb.w4DWw70DwUyI4V3/HEVkc7TKtdKEK6a', 'Kamal A', '1234567890', 'Mentari 223', '', '0000-00-00', NULL),
(12, 'maya@yahoo.co.id', '$2b$10$HvvdrOY1MDLFAA5SecyMyOvdrLH43XCDvIvv0qujkq4WIS5V1avb.', NULL, NULL, NULL, '', '0000-00-00', NULL),
(13, 'mirna@yahoo.co.id', '$2b$10$PI7mIWqMW8jaYLqLhenluuaHdp9RaV.zLLwNLp0Zsx5yghLLWk9Li', NULL, NULL, NULL, '', '0000-00-00', NULL),
(14, 'yanto@yahoo.co.id', '$2b$10$QsjD1d/DockijvzprHrwV.wyMH2zXe6IE0XE4LK4U9ZUe2kCay3Na', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'rizki@yahoo.co.id', '$2b$10$HuSXJ7kY/e3F6GtWSF4h0uY8U3yVzRB9QpoJt9ncccWM.c5pBOu5m', 'Rizky Utama', NULL, NULL, NULL, NULL, NULL),
(16, 'ridho@yahoo.co.id', '$2b$10$EYEAjEuYyf.Gh4QDCzo6.ec1j3FkSGKAWDLgkpieWgsFGh0cqUDj.', 'Ridho Alatas', NULL, NULL, 'male', '2004-01-01', NULL),
(17, 'budi@yahoo.co.id', '$2b$10$uCJ7RAo45fMAyEW617RE6e6bQymCfOdVfepjltU7VZALjuENEFmTG', NULL, NULL, NULL, 'male', '2003-01-01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id_child`),
  ADD KEY `id_parent_user` (`id_parent_user`);

--
-- Indexes for table `history_detect`
--
ALTER TABLE `history_detect`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_parent_user` (`id_parent_user`),
  ADD KEY `id_child` (`id_child`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `children`
--
ALTER TABLE `children`
  MODIFY `id_child` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `history_detect`
--
ALTER TABLE `history_detect`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `children_ibfk_1` FOREIGN KEY (`id_parent_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `history_detect`
--
ALTER TABLE `history_detect`
  ADD CONSTRAINT `history_detect_ibfk_1` FOREIGN KEY (`id_parent_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `history_detect_ibfk_2` FOREIGN KEY (`id_child`) REFERENCES `children` (`id_child`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
