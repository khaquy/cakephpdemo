-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 21, 2018 lúc 10:42 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(1, 'admin', '$2a$10$xzEL1ys16k58IXjPOwGksOrD2Q/OYbkNc9GFEP/G4HFnQnzwKd/Sm', 'admin', '2018-03-20 01:39:15', '2018-03-20 01:39:15'),
(2, 'admin123', '$2a$10$vJ1ZlgsoWPAiwshoaSNA9Ovw.amt3PeAk01eTMzvnF6LRgazLVqFq', 'admin', '2018-03-20 01:40:08', '2018-03-20 01:40:08'),
(3, 'admin88', '$2a$10$OVkAz7AH0Muqq0u9P5Hmxuo/HqYInCvQ2VRjaGpvAMmBYiWG88Aii', 'admin', '2018-03-20 05:50:45', '2018-03-20 05:50:45'),
(4, 'admin88', '$2a$10$xiGNAAEUyFR1XcxbgmUsT.vPCRVi87m/uf.sPUtXLzVTKMeGJQvkK', 'admin', '2018-03-20 05:51:06', '2018-03-20 05:51:06'),
(5, 'admin123', '$2a$10$H4Rosu7jUkrCiRUcdJO/qOjzlzD15nYVhlYpziUiUqmqXoYho/hji', 'admin', '2018-03-20 05:51:32', '2018-03-20 05:51:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
