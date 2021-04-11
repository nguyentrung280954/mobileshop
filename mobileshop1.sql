-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2020 lúc 02:55 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(112, 97, 14, 2, 700, '1400.00', ''),
(113, 98, 14, 2, 700, '1400.00', ''),
(114, 99, 14, 1, 700, '700.00', ''),
(115, 100, 7, 1, 1400, '1400.00', '1'),
(116, 101, 6, 1, 0, '0.00', '5'),
(117, 102, 205, 2, 120.999, '242.00', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(1, 'Chuyển phát nhanh', 500),
(3, 'Giao tận nơi', 100),
(4, 'Tư vấn online', 50),
(5, 'Theo dõi lộ trình', 400),
(6, 'Quay trúng thưởng', 600);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(96, 'akanashi1999@gmail.com', '2020-11-13', 'NGUYỄN tHÀNH tRUNG', '1', '01212212112', 'Live', '0.00'),
(97, 'bichtram280954@gmail.com', '2020-11-13', 'TRƯƠNG QUỐC THÁI ', '1', '01212212112', 'Live', '0.00'),
(98, 'bichtram280954@gmail.com', '2020-11-13', 'TRƯƠNG QUỐC THÁI ', '1', '01212212112', 'Live', '0.00'),
(99, 'bichtram280954@gmail.com', '2020-11-13', 'TRƯƠNG QUỐC THÁI ', '1', '01212212112', 'ATM', '0.00'),
(100, 'a@gmail.com', '2020-11-19', 'Trần Văn A', 'Số 12 Phan Văn Trị, P.7, Q.Gò Vấp, Tp.HCM', '0967245551', 'ATM', '516.00'),
(101, 'a@gmail.com', '2020-11-19', 'Trần Văn A', 'Số 12 Phan Văn Trị, P.7, Q.Gò Vấp, Tp.HCM', '0967245551', 'ATM', '422.50'),
(102, 'a@gmail.com', '2020-11-20', 'Trần Văn A', 'vgvhbj', '0967245551', 'ATM', '242.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('a@gmail.com', 123, 'Trần Văn A', '0967245551'),
('akanashi1999@gmail.com', 123123123, 'Nguyễn Thành Trung', '0967245557');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`ID`, `Ten`) VALUES
(1, 'Huwei'),
(2, 'Oppo'),
(3, 'Xiaomi'),
(8, 'Samsung'),
(9, 'Apple');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`) VALUES
(2, 'Samsung Galaxy J7 ', 3.969, 'samsung-galaxy-j7-1-400x533.png', 8, '<p>SKU SA937ELAA1ABP9VNAMZ-1959787 Thương hiệu sản phẩm tương th&iacute;ch Samsung Camera Back 11 to 15MP Camera trước 5-6 MP M&agrave;u V&agrave;ng Cổng kết nối Micro USB, 3.5mm CPU Speed 1-2Ghz Độ ph&acirc;n giải m&agrave;n h&igrave;nh (pixels) 1280 x 720 K&iacute;ch thước m&agrave;n h&igrave;nh 5.5 Screen Size (inches) 5.5 Loại m&agrave;n h&igrave;nh Super AMOLED Expandable Memory Yes Độ ph&acirc;n giải camera (MP) 13.0 Hỗ trợ thẻ nhớ MicroSD 128GB Mẫu m&atilde; SSHALOSHOP005Go Network Connec', '2020-03-30', 0, 0),
(3, 'Xiaomi Redmi 4A', 1.968, 'medium-Xiaomi-Redmi-4A-xach-tay-gia-re-MobileCity-002-1.jpg', 3, '<p>SKU XI431ELAA65T4CVNAMZ-11353703 Battery Capacity 3000 - 3999 mAh Camera Back 11 to 15MP Camera trước 5-6 MP Screen Size (inches) 5.0 Mẫu m&atilde; redmi 4a Network Connections 2G - GPRS|3G - HSPA|4G - LTE|2G - EDGE Hệ điều h&agrave;nh Android Operating System Version Marshmallow Processor Type Quad-core Sản xuất tại China RAM memory 2GB Screen Type IPS LCD Bộ nhớ trong 16GB Loại pin/&aacute;c quy Built-in Rechargeable Battery Video Resolution 720p Thời gian bảo h&agrave;nh 12 Months Loại h&a', '2020-03-04', 1, 3.936),
(6, 'Iphone 6', 22.499, 'iphone.jpg', 9, '<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh : 2960 x 1440 pixels Độ ph&acirc;n giải : 8 MP Độ ph&acirc;n giải : 2 camera 12 MP Tốc độ CPU : 4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz Số nh&acirc;n : 8 Nh&acirc;n Chipset : L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm RAM : 6 GB Chip đồ họa (GPU) : Mali&trade; G71</p>\r\n', '2020-03-05', 1, 0),
(7, 'Samsung Galaxy S8 ', 15.999, 'samsung-galaxy-s8-plus-xanh-hang-phan-phoi-chinh-thuc-1499311585-5746125-6e02c82540d7f6e821c6c61e3d73ea8d-webp-zoom.jpg', 8, '<p><strong>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</strong> : 2560 x 1440 pixels Độ ph&acirc;n giải : 8.0 MP</p>\r\n\r\n<p><strong>Độ ph&acirc;n giải</strong> : 12.0 MP Tốc độ CPU : 4 nh&acirc;n 2.3GHz + 4 nh&acirc;n 1.7GHz</p>\r\n\r\n<p><strong>Số nh&acirc;n</strong> : 8 Nh&acirc;n Chipset : Exynos 8895 RAM : 4 GB Chip đồ họa (GPU) : Mali&trade; G71 ROM : 64 GB</p>\r\n\r\n<p><strong>K&iacute;ch thước</strong> : 148.9 x 68.1 x 8.0mm</p>\r\n', '2020-03-05', 1, 1400),
(13, 'Samsung Galaxy J6', 6.999, 'samsung-galaxy-j1-2016-8gb-2sim-trang-hang-phan-phoi-chinh-thuc-1513767879-4431612-36b5c5c02ecf4275bab974e9477474c8-webp-zoom.jpg', 8, '<p><img alt=\"\" src=\"https://hoanghamobile.com/Uploads/Originals/2017/06/13/201706131550179059_j7pro4.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg\" style=\"height:450px; width:720px\" /></p>\r\n', '2020-03-22', 0, 0),
(14, 'Samsung', 7.399, 'samsung-galaxy-j7-1-400x533.png', 8, '<p><strong>test</strong></p>\r\n', '2020-02-08', 1, 600),
(201, 'Iphone 11 Pro Max', 30.499, 'thumb_11-ProMAX_2.jpg', 9, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.7 inches 1284 x 2778 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.7&micro;m, dual pix', '2020-11-19', 0, 0),
(202, 'IPhone 12 Pro Max 256GB Chính Hãng (2 Sim)', 50.299, 'iphone-12-pro-max-4_2_2.png', 9, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.7 inches 1284 x 2778 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>256GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.7&micro;m, dual pix', '2020-11-19', 0, 0),
(203, 'Iphone XR', 17.999, 'iphone_xr11024x768.jpg', 9, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 1, 0),
(204, 'Iphone X 64GB', 21.999, 'iphone-x-hinh-dai-dien.jpg', 9, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 0, 0),
(205, 'Huwei Mate X', 120.999, '636873920735807003_Huawei-Mate-X-1.png', 1, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 0, 0),
(206, 'Huwei P40 Pro', 25.999, 'h3.png', 1, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 1, 0),
(207, 'Huwei P30', 16.999, 'huawei-enjoy-10s-1.jpg', 1, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 1, 0),
(208, 'Oppo A31', 12.229, '71KCwNV6MuL._SX679_.jpg', 2, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 0, 0),
(209, 'Oppo Y21', 8.999, 'product_17380_5.png', 2, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 1, 0),
(210, 'Xiaomi Mi 9', 6.999, 'xiaomi-mi-9-6-8gb-128gb-chinh-hang-xach-tay-vtb.jpg', 3, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 1, 0),
(211, 'Xiaomi Mi 10T', 12.299, 'xiaomi-mi-10t-pro-300420-070407-600x600.jpg', 3, '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) 6.1 inches 1170 x 2532 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ xử l&yacute;:</p>\r\n\r\n	<p>Apple A14 Bionic (5 nm) 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:</p>\r\n\r\n	<p>128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera ch&iacute;nh:</p>\r\n\r\n	<p>12 MP, f/1.6, 26mm (wide), 1.4&micro;m, dual pix', '2020-11-19', 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhasanxuat` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
