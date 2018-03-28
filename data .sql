-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 28, 2018 lúc 06:19 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(3, 'Title strikes back', 'This is really exciting! Not.', '2018-03-19 01:29:08', NULL, NULL),
(5, 'ahfjs', 'sdadaj', '2018-03-19 10:30:18', '2018-03-19 10:30:18', NULL),
(6, 'ahfjs', 'sdadaj', '2018-03-19 10:30:26', '2018-03-19 10:30:26', NULL),
(7, 'ahfjs', 'sdadaj', '2018-03-19 10:30:37', '2018-03-19 10:30:37', NULL),
(9, 'dtesstt', 'ddddddd', '2018-03-20 11:12:30', '2018-03-20 11:12:30', NULL),
(10, 'dfgfd', 'gdgd', '2018-03-20 11:16:52', '2018-03-20 11:16:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `schema_migrations`
--

INSERT INTO `schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2018-03-26 08:54:52'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2018-03-26 08:54:52'),
(3, 'IncreaseClassNameLength', 'Migrations', '2018-03-26 08:54:53'),
(4, 'Data', 'app', '2018-03-26 08:58:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `role` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created`, `modified`, `status`) VALUES
(23, 'admin44', '$2a$10$CxBJ3va5qV38DSpL7C.iBOQcAQBH6AQt8JyOoZTIPIeqokMkPvEv.', 'khaudsfsfqy@gmail.com', 'admin', '2018-03-27 07:14:59', '2018-03-27 07:14:59', 1),
(24, 'admin123', '$2a$10$WmnZSi7iaKPI/Rvh3sLwOu8MRWScslbibqzSFIJ5R1jqMFVVQT8dG', 'khauqy@gmail.com', 'admin', '2018-03-27 09:29:26', '2018-03-27 09:29:26', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `schema_migrations`
--
ALTER TABLE `schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
