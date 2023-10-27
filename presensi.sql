-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 10:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(8, 'Hayat Khizar', 'hayatffoi@gmail.com', '1.png', '$2y$10$L48Ma8XCc1ehaEvqOz17LuYu5/o4E4u1oicxnaHnUSCU/R8eXlOgi', 2, 1, 1698282880);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 0, 2),
(9, 1, 1),
(10, 2, 2),
(11, 2, 2),
(12, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `menu_alias` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `menu_alias`) VALUES
(1, 'admin', 'admin'),
(2, 'profile', 'user'),
(3, 'presensi', 'presensi');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(0, 1, 'Dashboard', 'admin', '--', 1),
(0, 2, 'Profile ku ', 'user', '//', 1),
(0, 2, 'Edit Prodile', 'user/edit', ',,,', 1),
(0, 3, 'Menu Management', 'menu', ',,', 1),
(0, 3, 'Submenu Management', 'menu/submenu', ',,', 1),
(0, 1, 'Role', 'admin/role', ',,', 1),
(0, 2, 'Ganti Sandi', 'user/changepassword', '11', 1),
(0, 7, 'Absen Masuk', 'presensi/clockin', '..', 1),
(0, 7, 'Absen lagi', 'presensi/clockout', '..', 1),
(1, 1, 'Dashboard', 'admin', '--', 1),
(2, 2, 'Profile ku ', 'user', '//', 1),
(3, 2, 'Edit Prodile', 'user/edit', ',,,', 1),
(0, 3, 'Menu Management', 'menu', ',,', 1),
(4, 3, 'Submenu Management', 'menu/submenu', ',,', 1),
(5, 1, 'Role', 'admin/role', ',,', 1),
(6, 2, 'Ganti Sandi', 'user/changepassword', '11', 1),
(7, 7, 'Absen Masuk', 'presensi/clockin', '..', 1),
(8, 7, 'Absen lagi', 'presensi/clockout', '..', 1),
(1, 1, 'Dashboard', 'admin', '--', 1),
(2, 2, 'Profile ku ', 'user', '//', 1),
(3, 2, 'Edit Prodile', 'user/edit', ',,,', 1),
(9, 3, 'Menu Management', 'menu', ',,', 1),
(4, 3, 'Submenu Management', 'menu/submenu', ',,', 1),
(5, 1, 'Role', 'admin/role', ',,', 1),
(6, 2, 'Ganti Sandi', 'user/changepassword', '11', 1),
(7, 7, 'Absen Masuk', 'presensi/clockin', '..', 1),
(8, 7, 'Absen lagi', 'presensi/clockout', '..', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'hayatffoi@gmail.co', '4H5zs6DcsttqV+kh2kRtc/PDgyAEVDVgQZFEmv1Rx68=', 1696474352),
(4, 'hayaat@gmail.com', 'nLvsJkgULRW61LtLwM/H5WRNWLXCU6hj4LkelGexHj8=', 1697069876),
(7, 'hayatffoi@gmail.com', '8fxTsJTUyLC5l7T9PiX7CChqWEuyOGVpWie98o7wLzA=', 1698330464);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
