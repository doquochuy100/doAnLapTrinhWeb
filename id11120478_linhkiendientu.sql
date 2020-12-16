-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 16, 2020 lúc 03:37 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id11120478_linhkiendientu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `stt` int(11) NOT NULL,
  `madh` varchar(20) NOT NULL,
  `masp` varchar(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL,
  `created_time` varchar(30) NOT NULL,
  `last_update` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`stt`, `madh`, `masp`, `soluong`, `gia`, `created_time`, `last_update`) VALUES
(60, 'tO2fbR', 'acpdt', 1, 5000, '10-12-2020', '10-12-2020'),
(61, 'tO2fbR', 'asrogd15', 10, 2500, '10-12-2020', '10-12-2020'),
(62, 'qeBeKA', 'acpdt', 1, 5000, '10-12-2020', '10-12-2020'),
(63, 'qeBeKA', 'asrogd15', 1, 2500, '10-12-2020', '10-12-2020'),
(64, 'BrpjU9', 'acpdt', 1, 5000, '10-12-2020', '10-12-2020'),
(65, 'BrpjU9', 'asrogd15', 1, 2500, '10-12-2020', '10-12-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madh` varchar(20) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `ghichu` text NOT NULL,
  `tongtien` double NOT NULL,
  `create_time` varchar(30) NOT NULL,
  `last_update` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`madh`, `tenkh`, `email`, `diachi`, `ghichu`, `tongtien`, `create_time`, `last_update`) VALUES
('BrpjU9', 'doquochuy', 'doquochuy10000@gmail.com', '136 Hau Giang', '', 7500, '10-12-2020', '10-12-2020'),
('qeBeKA', 'doquochuy', 'doquochuy10000@gmail.com', '136 Hau Giang', '', 7500, '10-12-2020', '10-12-2020'),
('tO2fbR', 'doquochuy', 'doquochuy10000@gmail.com', '136 Hau Giang', '', 30000, '10-12-2020', '10-12-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`taikhoan`, `matkhau`, `email`, `tenkh`, `diachi`, `dienthoai`) VALUES
('doquochuy1', '123', 'doquochuy10000@gmail.com', 'doquochuy', '136 Hau Giang', '077594978'),
('doquochuy2', '123', 'doquochuy2@gmail.com', 'Đỗ Quốc Huy', '136 Hậu Giang P6, Q6', '01225594978');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` varchar(20) NOT NULL,
  `tenloai` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`) VALUES
('hp', 'headphone'),
('kb', 'keyboard'),
('lt', 'Laptop'),
('mh', 'Màn hình'),
('MP', 'Mouse + MousePad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `mansx` varchar(20) NOT NULL,
  `tennsx` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`mansx`, `tennsx`) VALUES
('ac', 'Acer'),
('as', 'Asus'),
('de', 'Dell'),
('hp', 'HP'),
('int', 'Intel'),
('lgt', 'Logitech'),
('msi', 'MSI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(20) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text NOT NULL,
  `baohanh` varchar(20) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinh` varchar(200) NOT NULL,
  `maloai` varchar(20) NOT NULL,
  `tennsx` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `mota`, `baohanh`, `gia`, `hinh`, `maloai`, `tennsx`) VALUES
('acn5', 'Laptop Acer Nitro 5', '    asdasdas    ', '12T', 15000, 'Laptop gaming Acer Nitro 5 AN515 55 77P9.jpg', 'lt', 'Acer'),
('acpdt', 'Laptop Acer Predator Helios 300', '  asdasd  ', '24t', 5000, 'Laptop gaming Acer Predator Helios 300 PH315 53 70U6.jpg', 'lt', 'Acer'),
('asrogd15', 'Laptop gaming ASUS ROG Zephyrus Duo 15 ', ' asda ', '12T', 2500, 'Laptop gaming ASUS ROG Zephyrus Duo 15 GX550LXS HC055R.jpg', 'lt', 'Asus'),
('msige', 'Laptop Gaming MSI GE66 Raider', 'asdzx', '24t', 50000, 'Laptop Gaming MSI GE66 Raider 10SFS 474VN.jpg', 'lt', 'MSI');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`stt`),
  ADD KEY `masp` (`masp`),
  ADD KEY `madh` (`madh`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madh`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id_user` (`taikhoan`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`tennsx`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `maloai` (`maloai`),
  ADD KEY `tennsx` (`tennsx`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`madh`) REFERENCES `donhang` (`madh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`email`) REFERENCES `khachhang` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`tennsx`) REFERENCES `nhasanxuat` (`tennsx`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
