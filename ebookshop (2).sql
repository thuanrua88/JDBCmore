-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2020 lúc 04:23 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ebookshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customermanagement`
--

CREATE TABLE `customermanagement` (
  `CustomersID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customermanagement`
--

INSERT INTO `customermanagement` (`CustomersID`, `Name`, `Phone`, `Address`, `Level`) VALUES
(12, '12', '12', '12', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `ID` int(10) NOT NULL,
  `User` varchar(50) DEFAULT NULL,
  `Pass` varchar(100) DEFAULT NULL,
  `Role` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`ID`, `User`, `Pass`, `Role`) VALUES
(1, 'Nhu Hoang Minh Duc', 'DK', 0),
(3, 'ez', 'game', 30),
(4, 'd', 'c', 30),
(5, 'haaahhaah', 'd', 30),
(6, 'd', 'c', 30),
(7, 'd', 'e', 30),
(8, 'd', 'c', 30),
(9, 'test1', 'test1', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ebooks`
--

CREATE TABLE `ebooks` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ebooks`
--

INSERT INTO `ebooks` (`id`, `title`, `author`, `price`, `qty`) VALUES
(207, 'A Cup of Java', 'DK', 43, 34),
(1001, 'java', 'Dang thi', 43, 34),
(2525, 'e', 'e', 54, 33),
(8001, 'Java Core', 'Dang Kim Thi', 43, 34),
(8004, 'Java Advanced', 'James Gosling', 43, 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderbook`
--

CREATE TABLE `orderbook` (
  `orderID` int(10) NOT NULL,
  `odername` varchar(50) DEFAULT NULL,
  `BookNameOder` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Customer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderbook`
--

INSERT INTO `orderbook` (`orderID`, `odername`, `BookNameOder`, `status`, `Qty`, `price`, `Customer`) VALUES
(1001, 'order1', 'A Cup of Java', 4, 3, 270, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password`
--

CREATE TABLE `password` (
  `PassWord` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserName`) VALUES
('Nhu Hoang Minh Duc');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customermanagement`
--
ALTER TABLE `customermanagement`
  ADD PRIMARY KEY (`Name`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `orderbook`
--
ALTER TABLE `orderbook`
  ADD KEY `fk_1` (`orderID`),
  ADD KEY `fk_2` (`Customer`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
