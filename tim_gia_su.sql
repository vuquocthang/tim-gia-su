-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 31, 2017 lúc 09:20 PM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tim_gia_su`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_lop`
--

CREATE TABLE `dang_lop` (
  `id` int(11) NOT NULL,
  `lop_id` int(11) DEFAULT NULL,
  `phu_huynh_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_su`
--

CREATE TABLE `gia_su` (
  `id` int(11) NOT NULL,
  `ma` varchar(1000) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hoten` varchar(1000) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `ns` date NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `gioithieu` text,
  `image` varchar(1000) NOT NULL,
  `video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `id` int(11) NOT NULL,
  `TenMH` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_lop`
--

CREATE TABLE `nhan_lop` (
  `id` int(11) NOT NULL,
  `gia_su_id` int(11) NOT NULL,
  `lop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phu_huynh`
--

CREATE TABLE `phu_huynh` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hoten` varchar(1000) NOT NULL,
  `sdt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dang_lop`
--
ALTER TABLE `dang_lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phu_huynh_id` (`phu_huynh_id`),
  ADD KEY `lop_id` (`lop_id`);

--
-- Chỉ mục cho bảng `gia_su`
--
ALTER TABLE `gia_su`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_lop`
--
ALTER TABLE `nhan_lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lop_id` (`lop_id`),
  ADD KEY `gia_su_id` (`gia_su_id`);

--
-- Chỉ mục cho bảng `phu_huynh`
--
ALTER TABLE `phu_huynh`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dang_lop`
--
ALTER TABLE `dang_lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `gia_su`
--
ALTER TABLE `gia_su`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `nhan_lop`
--
ALTER TABLE `nhan_lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `phu_huynh`
--
ALTER TABLE `phu_huynh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dang_lop`
--
ALTER TABLE `dang_lop`
  ADD CONSTRAINT `dang_lop_ibfk_1` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`Id`),
  ADD CONSTRAINT `dang_lop_ibfk_2` FOREIGN KEY (`phu_huynh_id`) REFERENCES `phu_huynh` (`id`),
  ADD CONSTRAINT `dang_lop_ibfk_3` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`Id`);

--
-- Các ràng buộc cho bảng `nhan_lop`
--
ALTER TABLE `nhan_lop`
  ADD CONSTRAINT `nhan_lop_ibfk_1` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`Id`),
  ADD CONSTRAINT `nhan_lop_ibfk_2` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`Id`),
  ADD CONSTRAINT `nhan_lop_ibfk_3` FOREIGN KEY (`gia_su_id`) REFERENCES `gia_su` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
