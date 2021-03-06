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
(2, 'GI??Y SNEAKER', 'giay-sneaker', 0, 0, 1),
(3, 'GI??Y TH??? THAO', 'giay-the-theo', 0, 0, 1),
(4, ' GI??Y BUCKS', 'giay-bucks', 0, 0, 0),
(11, ' GI??Y BOOTS', 'giay-boots', 0, 0, 1);

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
(1, 'V?? ch??ng t??i', 'C?? nhi???u l?? do khi???n ch??ng t??i quy???t ?????nh m??? r???ng ho???t ?????ng kinh doanh, b??n c??? gi???ng ch???t l?????ng cho ng?????i d??ng hoa m?? kh??ng th??ng qua b???t c??? trung gian n??o kh??c. D?? b???n mu???n t??? tr???ng v?? ch??m s??c m???t ch???u hoa ????? g???n g??i v???i thi??n nhi??n h??n, th?? gi??n ?????u ??c sau m???t ng??y l??m vi???c. Ho???c b???n mu???n c?? m???t ch???u hoa ?????p v??o d???p t???t, tr??nh vi???c mua ph???i nh???ng b?? hoa l???nh, hoa k??m ch???t l?????ng v???i gi?? qu?? cao. D?? l?? do l?? g??, ch??ng t??i t??? tin mang t???i cho b???n nh???ng c??? gi???ng hoa ch???t l?????ng nh???t v???i chi ph?? h???p l??.\r\n\r\n???????c th??nh l???p t??? n??m 2014, c??ng ty ch??ng t??i l?? ????n v??? ti??n phong trong l??nh v???c ph??n ph???i c??? gi???ng hoa Ly v?? c??c lo???i hoa th??nh ph???m nh?? hoa Ly, hoa h???ng ngo???i. S???n ph???m c??? gi???ng hoa Ly ???????c ch??ng t??i nh???p kh???u tr???c ti???p t??? c??c nh?? cung c???p t???i t??? ch??u ??u nh?? H?? Lan, Ph??p ????????m b???o ch???t l?????ng t???t nh???t cho ng?????i tr???ng.\r\n\r\nC??c v?????n hoa c?? t???ng di???n t??ch 10ha c???a ch??ng t??i t???i huy???n ??an Ph?????ng ??? H?? N???i cung c???p hoa t????i b??n bu??n, hoa t????i t???t cho kh??ng ch??? th??? tr?????ng H?? N???i m?? c??? c??c t???nh mi???n B???c nh?? Nam ?????nh, H???i Ph??ng, Qu???ng Ninh, L???ng S??n ???\r\n\r\nKh??ch h??ng ch??nh c???a ch??ng t??i l?? c??c nh?? v?????n tr???ng hoa ly t???i mi???n B???c ??? c??c v??ng chuy??n canh tr???ng hoa nh?? l??ng hoa T??y T???u, hoa M?? Linh, hoa Sapa. S???n ph???m ch???t l?????ng v?? vi???c t?? v???n s??t sao t???i t???ng ng?????i tr???ng l?? b?? quy???t t???o d???ng uy t??n c??ng ty ch??ng t??i.', 1, '2021-03-02 23:09:19', '0000-00-00 00:00:00', 0, 1),
(2, 'Ch??nh s??ch', 'Ch??ng t??i ??p d???ng ph????ng th???c thu ti???n khi giao h??ng v?? chuy???n kho???n ng??n h??ng v???i c??c ????n h??ng tr??n to??n l??nh th??? Vi???t Nam.\r\n\r\nTh??ng tin t??i kho???n:\r\n\r\nCh??? t??i kho???n: Tr???nh Xu??n Tr?????ng\r\nS??? t??i kho???n: 19032 80223 6018\r\nNg??n h??ng Techcombank chi nh??nh T??? Li??m\r\nC?? 3 c??ch ch??? y???u ????? b???n ?????t h??ng tr??n h??? th???ng c???a ch??ng t??i:\r\n\r\nC??ch 1: B???n ch???n s???n ph???m v?? s??? l?????ng m??nh mu???n, r???i ?????t h??ng tr??n web (??u ti??n s??? d???ng)\r\nC??ch 2: B???n ????? l???i th??ng tin s??? ??i???n tho???i tr??n website ho???c facebook ????? ch??ng t??i ch??? ?????ng li??n l???c l???i. \r\nC??ch 3: B???n g???i ??i???n tr???c ti???p t???i c??c s??? ??i???n tho???i c???a G??nh hoa Ly tr??n website ho???c facebook.', 1, '2021-03-16 23:09:19', '0000-00-00 00:00:00', 0, 1);

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
