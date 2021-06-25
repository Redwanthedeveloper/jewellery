-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 10:50 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '25-06-2021 02:20:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Diamond', 'fashion\r\n', '2020-02-05 15:28:45', NULL),
(8, 'Gold', 'Fashion\r\n', '2020-02-05 15:36:31', NULL),
(9, 'Platinum', 'Fashion', '2020-02-05 15:36:54', NULL),
(10, 'Silver', 'Fashion', '2020-02-05 15:37:12', NULL),
(11, 'jongsong', '', '2021-05-17 19:10:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '22', 1, '2020-02-05 16:09:02', 'COD', NULL),
(8, 4, '23', 1, '2020-02-05 16:20:24', 'Internet Banking', NULL),
(9, 5, '23', 1, '2021-05-17 19:12:25', 'Debit / Credit card', 'Delivered'),
(10, 5, '22', 1, '2021-05-19 17:16:02', 'Debit / Credit card', NULL),
(11, 5, '23', 1, '2021-05-19 17:16:02', 'Debit / Credit card', NULL),
(12, 5, '23', 1, '2021-05-19 18:24:54', 'COD', NULL),
(13, 5, '23', 1, '2021-05-19 18:33:05', 'Debit / Credit card', NULL),
(14, 5, '22', 1, '2021-05-19 18:43:41', 'Internet Banking', NULL),
(15, 5, '23', 1, '2021-05-20 15:58:37', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 9, 'Delivered', 'delivered', '2021-05-17 19:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `views`) VALUES
(22, 7, 14, 'ER021 | Faux Pearl Rhinestone Earrings', 'AVC', 22000, 25000, '<h4 style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-weight: 500; line-height: 1.1; margin-top: 10px; font-size: 18px;\">Dissymmetry Faux Pearl Rhinestone Earrings</h4><p style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Earring Type:</span>&nbsp;Stud Earrings<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Gender:</span>&nbsp;For Women<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Metal Type:</span>&nbsp;Alloy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Style:</span>&nbsp;Trendy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Shape/Pattern:</span>&nbsp;Others<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Weight:</span>&nbsp;0.025kg<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Package:</span>&nbsp;1 x Earrings (Pair)</p>', 'd.jpg', 'd.jpg', 'd.jpg', 50, 'In Stock', '2020-02-05 15:39:34', NULL, 7),
(23, 7, 15, 'Mine Diamond Tanmaniya AJTNTAN1763', 'AVC', 80999, 82999, '<div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Basic Information</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Type</span><span class=\"f-right product_type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Tanmaniya</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Brands</span><span class=\"f-right brand\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Mine</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Jewellery Type</span><span class=\"f-right jewellery_type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Studded</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Item package quantity</span><span class=\"f-right item_package_quantity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">1</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gender</span><span class=\"f-right gender\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Women</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Metal Information</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gold Purity</span><span class=\"f-right gold_purity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">18 KT (750)</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Metal Colour</span><span class=\"f-right gold_colour\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Yellow</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Gross Weight ( g )</span><span class=\"f-right gross_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.78</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Net Weight ( g )</span><span class=\"f-right net_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.59</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Certification Details</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gold Certification</span><span class=\"f-right gold_certification\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">BIS Hallmark 750</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Diamond Certification</span><span class=\"f-right diamond_certification\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">IGI</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Product Dimension</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Height (mm)</span><span class=\"f-right product_height\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">31</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Width (mm)</span><span class=\"f-right product_width\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">41</span></li></ul></div>', 'Diamond_neklace.jpg', 'Diamond_neklace.jpg', 'Diamond_neklace.jpg', 50, 'In Stock', '2020-02-05 15:41:52', NULL, 67),
(24, 8, 16, 'VR201E| Faux Pearl Rhinestone Earrings', 'Royal', 13499, 15999, '<h4 style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-weight: 500; line-height: 1.1; margin-top: 10px; font-size: 18px;\">Dissymmetry Faux Pearl Rhinestone Earrings</h4><p style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Earring Type:</span>&nbsp;Stud Earrings<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Gender:</span>&nbsp;For Women<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Metal Type:</span>&nbsp;Alloy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Style:</span>&nbsp;Trendy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Shape/Pattern:</span>&nbsp;Others<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Weight:</span>&nbsp;0.025kg<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Package:</span>&nbsp;1 x Earrings (Pair)</p>', 'Gold_ring.jpg', 'Gold_ring.jpg', 'Gold_ring.jpg', 50, 'In Stock', '2020-02-05 15:45:01', NULL, 0),
(25, 8, 17, 'Mine Gold Tanmaniya AJTNTAN1763', 'Royal', 22000, 25000, '<h4 style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-weight: 500; line-height: 1.1; margin-top: 10px; font-size: 18px;\"><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Basic Information</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Type</span><span class=\"f-right product_type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Tanmaniya</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Brands</span><span class=\"f-right brand\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Mine</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Jewellery Type</span><span class=\"f-right jewellery_type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Studded</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Item package quantity</span><span class=\"f-right item_package_quantity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">1</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gender</span><span class=\"f-right gender\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Women</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Metal Information</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gold Purity</span><span class=\"f-right gold_purity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">18 KT (750)</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Metal Colour</span><span class=\"f-right gold_colour\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Yellow</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Gross Weight ( g )</span><span class=\"f-right gross_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.78</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Net Weight ( g )</span><span class=\"f-right net_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.59</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Certification Details</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gold Certification</span><span class=\"f-right gold_certification\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">BIS Hallmark 750</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Diamond Certification</span><span class=\"f-right diamond_certification\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">IGI</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Product Dimension</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Height (mm)</span><span class=\"f-right product_height\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">31</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Width (mm)</span><span class=\"f-right product_width\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">41</span></li></ul></div></h4>', 'g.jpg', 'g.jpg', 'g.jpg', 50, 'In Stock', '2020-02-05 15:46:37', NULL, 34),
(26, 9, 18, 'VR208E| Faux Pearl Platinum Earrings', 'AVC', 16999, 18999, '<h4 style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-weight: 500; line-height: 1.1; margin-top: 10px; font-size: 18px;\">Dissymmetry Faux Pearl Platinum Earrings</h4><p style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Earring Type:</span>&nbsp;Stud Earrings<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Gender:</span>&nbsp;For Women<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Metal Type:</span>&nbsp;Alloy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Style:</span>&nbsp;Trendy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Shape/Pattern:</span>&nbsp;Others<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Weight:</span>&nbsp;0.025kg<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Package:</span>&nbsp;1 x Earrings (Pair)</p>', 'Platinum_ring.jpg', 'Platinum_ring.jpg', 'Platinum_ring.jpg', 50, 'In Stock', '2020-02-05 15:53:07', NULL, 31),
(27, 9, 19, 'Platinum Tanmaniya AJTNTAN478i5', 'AVL Ltd.', 33000, 35000, '<div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Basic Information</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Type</span><span class=\"f-right product_type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Tanmaniya</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Brands</span><span class=\"f-right brand\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Mine</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Jewellery Type</span><span class=\"f-right jewellery_type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Studded</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Item package quantity</span><span class=\"f-right item_package_quantity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">1</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gender</span><span class=\"f-right gender\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Women</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Metal Information</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gold Purity</span><span class=\"f-right gold_purity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">18 KT (750)</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Metal Colour</span><span class=\"f-right gold_colour\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Yellow</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Gross Weight ( g )</span><span class=\"f-right gross_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.78</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Net Weight ( g )</span><span class=\"f-right net_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.59</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Certification Details</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Gold Certification</span><span class=\"f-right gold_certification\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">BIS Hallmark 750</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Diamond Certification</span><span class=\"f-right diamond_certification\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">IGI</span></li></ul></div><div class=\"accordion\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 15px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); line-height: 1.35; cursor: pointer;\">Product Dimension</div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Height (mm)</span><span class=\"f-right product_height\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">31</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Product Width (mm)</span><span class=\"f-right product_width\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">41</span></li></ul></div>', 'p.jpg', 'p.jpg', 'p.jpg', 50, 'In Stock', '2020-02-05 15:54:39', NULL, 0),
(28, 10, 21, 'EW06RE |Silver Earrings', 'Royal', 699, 799, '<h4 style=\"box-sizing: border-box; font-family: Arial, sans-serif; font-weight: 500; line-height: 1.1; margin-top: 10px; font-size: 18px;\">Silver Earrings</h4><p style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Earring Type:</span>&nbsp;Stud Earrings<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Gender:</span>&nbsp;For Women<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Metal Type:</span>&nbsp;Alloy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Style:</span>&nbsp;Trendy<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Shape/Pattern:</span>&nbsp;Others<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Weight:</span>&nbsp;0.025kg<br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Package:</span>&nbsp;1 x Earrings (Pair)</p>', 'Silver_ring.jpg', 'Silver_ring.jpg', 'Silver_ring.jpg', 50, 'In Stock', '2020-02-05 15:56:48', NULL, 3),
(29, 10, 22, 'AVI30R | Silver Necklace ', 'Royal LTD.', 1500, 1800, '<div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); font-family: Tahoma, Geneva, sans-serif; line-height: 1.35; cursor: pointer;\">Metal</div><div class=\"product-detail-info-head active\" style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 5px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px; font-size: 14px; color: rgb(133, 23, 83); font-family: Tahoma, Geneva, sans-serif; line-height: 1.35; cursor: pointer;\">&nbsp;Silver&nbsp;<span style=\"color: rgb(43, 36, 33); font-size: 12px;\">Purity</span></div><ul style=\"box-sizing: border-box; margin-left: 0px; list-style: none; float: left; width: 429px; color: rgb(43, 36, 33); font-family: Tahoma, Geneva, sans-serif; font-size: 12px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-right gold_purity\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">18 KT (750)</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Metal Colour</span><span class=\"f-right gold_colour\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">Yellow</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Gross Weight ( g )</span><span class=\"f-right gross_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.78</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 3px 0px; border-bottom: 1px solid rgb(211, 203, 182); float: left; width: 429px;\"><span class=\"f-left\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: left !important;\">Approx Net Weight ( g )</span><span class=\"f-right net_gold_weight\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; float: right !important;\">4.59</span></li></ul>', 's.jpg', 's.jpg', 's.jpg', 50, 'In Stock', '2020-02-05 15:58:32', NULL, 0),
(37, 7, 14, 'adfasdfsdfsdf', 'sdfsdfasdf', 324323, 231232, 'fsdfsdfsdf', 'design_mockup.jpg', 'design_mockup.jpg', 'design_mockup.jpg', 23, 'In Stock', '2021-06-22 19:08:29', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(14, 7, 'Ring', '2020-02-05 15:38:01', NULL),
(15, 7, 'Necklace', '2020-02-05 15:38:09', NULL),
(16, 8, 'Ring', '2020-02-05 15:38:14', NULL),
(17, 8, 'Necklace', '2020-02-05 15:38:18', NULL),
(18, 9, 'Ring', '2020-02-05 15:38:22', NULL),
(19, 9, 'Necklace', '2020-02-05 15:38:27', NULL),
(21, 10, 'Ring', '2020-02-05 15:38:42', NULL),
(22, 10, 'Necklace', '2020-02-05 15:38:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'avl.nikhlesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-05 16:08:57', '05-02-2020 09:41:43 PM', 1),
(25, 'avl.nikhlesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-05 16:19:18', NULL, 0),
(26, 'avl.nikhlesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-05 16:19:27', NULL, 1),
(27, 'avl.nikhlesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-05 16:34:18', '05-02-2020 10:10:39 PM', 1),
(28, '123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-17 19:12:21', '18-05-2021 12:45:33 AM', 1),
(29, '123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 17:15:33', '20-05-2021 12:23:24 AM', 1),
(30, '123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 15:58:13', '20-05-2021 09:41:57 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Redwanul Haque', 'avl.nikhlesh@gmail.com', 0, 'f925916e2754e5e03f75dd58a5733251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05 16:08:37', NULL),
(5, 'sdafsdf', '123@gmail.com', 1214544545, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-17 19:12:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
