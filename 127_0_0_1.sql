-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2021 at 05:03 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votanhiep_2119110216`
--
CREATE DATABASE IF NOT EXISTS `votanhiep_2119110216` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `votanhiep_2119110216`;

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_admin`
--

DROP TABLE IF EXISTS `votanhiep_admin`;
CREATE TABLE IF NOT EXISTS `votanhiep_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adminName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votanhiep_admin`
--

INSERT INTO `votanhiep_admin` (`adminId`, `username`, `adminName`, `email`, `pass`, `level`, `trash`) VALUES
(1, 'Hiep', 'Hiep Sneaker', 'votanhiep1001@gmail.com', 'c910336f86e9fe252b99b54c946f36eb', 0, 0),
(3, 'VoTanHiep', 'Sneaker', 'votanhiep1001@gmail.com', '123456', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_brand`
--

DROP TABLE IF EXISTS `votanhiep_brand`;
CREATE TABLE IF NOT EXISTS `votanhiep_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(100) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_brand`
--

INSERT INTO `votanhiep_brand` (`brandId`, `brandName`, `alias`, `trash`, `status`) VALUES
(1, 'NIKE', 'Nike', 0, 1),
(2, 'CONVERSE', 'Converse', 0, 1),
(3, 'BALENCIAGA', 'Balenciaga', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_cart`
--

DROP TABLE IF EXISTS `votanhiep_cart`;
CREATE TABLE IF NOT EXISTS `votanhiep_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` varchar(255) CHARACTER SET utf8 NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_cart`
--

INSERT INTO `votanhiep_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(28, 'hb1dkvk8ptdfhleq375m01e891', 1, ' Ariyan Lorem Ipsum fsdfasdaf', 525.00, 1, 'upload/a2d9ff0c56.png'),
(42, 'ki70g8rmb4mfqs7cmei2l3qpi3', 10, 'Woman Tshirt 03', 300.00, 1, 'upload/a2fccb0144.png'),
(43, 'e6r6avk209clao063d5p18i597', 7, 'Mans Tshirt 02', 400.00, 1, 'upload/4b2b2f0556.png');

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_category`
--

DROP TABLE IF EXISTS `votanhiep_category`;
CREATE TABLE IF NOT EXISTS `votanhiep_category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `parentId` int(11) NOT NULL,
  `trash` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_category`
--

INSERT INTO `votanhiep_category` (`catId`, `catName`, `alias`, `parentId`, `trash`, `status`) VALUES
(2, 'GIÀY SNEAKER', 'giay-sneaker', 0, 0, 1),
(3, 'GIÀY THỂ THAO', 'giay-the-theo', 0, 0, 1),
(4, ' GIÀY BUCKS', 'giay-bucks', 0, 0, 0),
(11, ' GIÀY BOOTS', 'giay-boots', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_contact`
--

DROP TABLE IF EXISTS `votanhiep_contact`;
CREATE TABLE IF NOT EXISTS `votanhiep_contact` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_customer`
--

DROP TABLE IF EXISTS `votanhiep_customer`;
CREATE TABLE IF NOT EXISTS `votanhiep_customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_customer`
--

INSERT INTO `votanhiep_customer` (`customerId`, `userId`, `fullname`, `address`, `phone`, `email`, `trash`) VALUES
(2, 0, '', 'Groan Puran Polton south Dhaka ', '4544555455', 'kaziariyan@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_image`
--

DROP TABLE IF EXISTS `votanhiep_image`;
CREATE TABLE IF NOT EXISTS `votanhiep_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `trash` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_image`
--

INSERT INTO `votanhiep_image` (`id`, `title`, `image`, `imageName`, `position`, `trash`, `status`) VALUES
(1, 'Slider1', 'slide1.png', '', 1, 0, 1),
(2, 'Slider2', 'slide2.jpg', '', 1, 0, 1),
(3, 'Slider3', 'slide3.png', '', 1, 0, 1),
(4, 'Sale', 'Sale1.jpg', '', 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_order`
--

DROP TABLE IF EXISTS `votanhiep_order`;
CREATE TABLE IF NOT EXISTS `votanhiep_order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float(10,2) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_order`
--

INSERT INTO `votanhiep_order` (`orderId`, `customerId`, `orderDate`, `total`, `note`, `status`, `trash`) VALUES
(8, 2, '0000-00-00 00:00:00', 500.00, '', 1, 0),
(9, 2, '0000-00-00 00:00:00', 400.00, '', 0, 0),
(10, 2, '0000-00-00 00:00:00', 450.00, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_orderdetail`
--

DROP TABLE IF EXISTS `votanhiep_orderdetail`;
CREATE TABLE IF NOT EXISTS `votanhiep_orderdetail` (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`orderDetailId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_page`
--

DROP TABLE IF EXISTS `votanhiep_page`;
CREATE TABLE IF NOT EXISTS `votanhiep_page` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `createBy` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votanhiep_page`
--

INSERT INTO `votanhiep_page` (`pageId`, `title`, `content`, `createBy`, `createDate`, `updateDate`, `trash`, `status`) VALUES
(1, 'Vê chúng tôi', 'Có nhiều lý do khiến chúng tôi quyết định mở rộng hoạt động kinh doanh, bán củ giống chất lượng cho người dùng hoa mà không thông qua bất cứ trung gian nào khác. Dù bạn muốn tự trồng và chăm sóc một chậu hoa để gần gũi với thiên nhiên hơn, thư giãn đầu óc sau một ngày làm việc. Hoặc bạn muốn có một chậu hoa đẹp vào dịp tết, tránh việc mua phải những bó hoa lạnh, hoa kém chất lượng với giá quá cao. Dù lý do là gì, chúng tôi tự tin mang tới cho bạn những cử giống hoa chất lượng nhất với chi phí hợp lý.\r\n\r\nĐược thành lập từ năm 2014, công ty chúng tôi là đơn vị tiên phong trong lĩnh vực phân phối củ giống hoa Ly và các loại hoa thành phẩm như hoa Ly, hoa hồng ngoại. Sản phẩm củ giống hoa Ly được chúng tôi nhập khẩu trực tiếp từ các nhà cung cấp tới từ châu Âu như Hà Lan, Pháp …đảm bảo chất lượng tốt nhất cho người trồng.\r\n\r\nCác vườn hoa có tổng diện tích 10ha của chúng tôi tại huyện Đan Phượng – Hà Nội cung cấp hoa tươi bán buôn, hoa tươi tết cho không chỉ thị trường Hà Nội mà cả các tỉnh miền Bắc như Nam Định, Hải Phòng, Quảng Ninh, Lạng Sơn …\r\n\r\nKhách hàng chính của chúng tôi là các nhà vườn trồng hoa ly tại miền Bắc ở các vùng chuyên canh trồng hoa như làng hoa Tây Tựu, hoa Mê Linh, hoa Sapa. Sản phẩm chất lượng và việc tư vấn sát sao tới từng người trồng là bí quyết tạo dựng uy tín công ty chúng tôi.', 1, '2021-03-02 23:09:19', '0000-00-00 00:00:00', 0, 1),
(2, 'Chính sách', 'Chúng tôi áp dụng phương thức thu tiền khi giao hàng và chuyển khoản ngân hàng với các đơn hàng trên toàn lãnh thổ Việt Nam.\r\n\r\nThông tin tài khoản:\r\n\r\nChủ tài khoản: Trịnh Xuân Trường\r\nSố tài khoản: 19032 80223 6018\r\nNgân hàng Techcombank chi nhánh Từ Liêm\r\nCó 3 cách chủ yếu để bạn đặt hàng trên hệ thống của chúng tôi:\r\n\r\nCách 1: Bạn chọn sản phẩm và số lượng mình muốn, rồi đặt hàng trên web (ưu tiên sử dụng)\r\nCách 2: Bạn để lại thông tin số điện thoại trên website hoặc facebook để chúng tôi chủ động liên lạc lại. \r\nCách 3: Bạn gọi điện trực tiếp tới các số điện thoại của Gánh hoa Ly trên website hoặc facebook.', 1, '2021-03-16 23:09:19', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_product`
--

DROP TABLE IF EXISTS `votanhiep_product`;
CREATE TABLE IF NOT EXISTS `votanhiep_product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `saleprice` float(10,2) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votanhiep_product`
--

INSERT INTO `votanhiep_product` (`productId`, `productName`, `alias`, `catId`, `brandId`, `detail`, `price`, `saleprice`, `image`, `status`, `trash`) VALUES
(1, 'Air Jordan 1 Mid', 'Air-Jordan-1-Mid', 1, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'jordan-1-low-panda.jpg', 1, 0),
(3, 'NIKE RENEW RIDE', 'NIKE-RENEW-RIDE', 2, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike1.jpg', 1, 0),
(4, 'NIKE FLEX CONTROL', 'NIKE-FLEX-CONTROL', 2, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike2.jpg', 1, 0),
(5, 'NIKE VOMERO', 'NIKE-VOMERO', 2, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike3.jpg', 1, 0),
(7, 'NIKE AIR ZOOM SPAN 3', 'NIKE-AIR-ZOOM-SPAN 3', 2, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike4.jpg', 1, 0),
(8, 'NIKE-AIR-ZOOM-PEGASUS', 'NIKE-AIR-ZOOM-PEGASUS', 2, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike5.jpg', 1, 0),
(9, 'NIKE-DOWNSHIFTER', ' NIKE-DOWNSHIFTER', 3, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike6.jpeg', 1, 0),
(10, 'NIKE AIR MAX ALPHA TRAINER', 'NIKE-AIR-MAX-ALPHA-TRAINER', 3, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike7.jpeg', 1, 0),
(11, 'NIKE AIR ZOOM', 'NIKE-AIR-ZOOM', 3, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike8.ppg', 1, 0),
(12, 'NIKE REACT INFINITY', 'NIKE-REACT-INFINITY', 3, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike9.jpeg', 1, 0),
(13, 'NIKE EPIC PHANTOM', 'NIKE-EPIC-PHANTOM', 3, 1, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'nike10.jpg', 1, 0),
(14, 'Converse Run Star', 'Converse-Run-Star', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 200.00, 180.00, 'converse1.png', 1, 0),
(15, 'Converse Chuck Taylor', 'Converse-Chuck-Taylor', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 190.00, 170.00, 'converse2.jpg', 1, 0),
(16, 'Converse All Star', 'Converse-All-Star', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 170.00, 150.00, 'converse3.jpg', 1, 0),
(17, 'Converse classic', 'Converse-classic', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 220.00, 190.00, 'converse4.jpg', 1, 0),
(18, 'Converse 1970s', 'Converse-1970s', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 250.00, 220.00, 'converse5.jpg', 1, 0),
(19, 'Converse Jack Purcell', 'Converse-pack-Purcell', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 250.00, 220.00, 'converse6.png', 1, 0),
(20, 'Converse One Star', 'Converse-One-star', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 240.00, 210.00, 'converse7.png', 1, 0),
(21, 'Converse Rubber', 'Converse-Rubber', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 230.00, 210.00, 'converse8.png', 1, 0),
(22, 'Converse Dainty', 'Converse-Dainty', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 280.00, 250.00, 'converse9.png', 1, 0),
(23, 'Converse Seasonal Color', 'Converse-Seasonal-Color', 4, 2, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 300.00, 250.00, 'converse10.png', 1, 0),
(24, 'Balenciaga Speed Trainer', 'Balenciaga-Speed-Trainer', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 270.00, 250.00, 'bl1.jpg', 1, 0),
(25, 'Balenciaga Track', 'Balenciaga-Track', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 310.00, 280.00, 'bl2.jpg', 1, 0),
(26, 'Balenciaga Triple S', 'Balenciaga-Triple-S', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 320.00, 290.00, 'bl3.jpg', 1, 0),
(27, 'Balenciaga Wmns', 'Balenciaga-Wmns', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 300.00, 270.00, 'bl4.jpg', 1, 0),
(31, 'Balenciaga Track', 'Balenciaga-Track', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 320.00, 290.00, 'bl7.png', 1, 0),
(29, 'Balenciaga Tracki', 'Balenciaga-Tracki', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 320.00, 290.00, 'bl5.jpg', 1, 0),
(30, 'Balenciaga Triple S', 'Balenciaga-Triple-S', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 320.00, 290.00, 'bl6.png', 1, 0),
(32, 'balenciaga speed trainer', 'Balenciaga-Speed-Trainer', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 320.00, 290.00, 'bl8.png', 1, 0),
(33, 'balenciaga speed trainer', 'Balenciaga-Speed-Trainer', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 320.00, 290.00, 'bl9.png', 1, 0),
(34, 'Balenciaga Track', 'Balenciaga-Track', 11, 3, 'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness. Fresh color trims the clean, classic materials, injecting some newness into the familiar design.', 350.00, 290.00, 'bl10.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `votanhiep_user`
--

DROP TABLE IF EXISTS `votanhiep_user`;
CREATE TABLE IF NOT EXISTS `votanhiep_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pass` char(32) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
