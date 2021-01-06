-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 12:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_shop_bt`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(1, 'elitebook-x360-830-g7-1-500x500.jpg', 'Sample_title_1', 1603477090),
(2, '2.png', 'New_Phone_2', 1606108153),
(3, '81iB1fNtBhL__SL1500_1.jpg', 'New_Bag_Pack_3', 1606243379),
(4, 'arrow-blk-daniel-jubile-original-imafjvbehhn88rm9.jpg', 'new_Watch_4', 1606243591),
(5, '63542-41-twin-toes-brown-original-imafhehttrjpb9zh.jpeg', 'New_Shoes_5', 1606244056);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(1, 'New Laptop', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'bg', 1),
(2, 'New Laptop', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'en', 1),
(3, 'New Laptop', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'gr', 1),
(4, 'New Laptop', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'id', 1),
(5, 'New Phone', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'bg', 2),
(6, 'New Phone', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'en', 2),
(7, 'New Phone', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'gr', 2),
(8, 'New Phone', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'id', 2),
(9, 'New Bag Pack', '', 'bg', 3),
(10, 'New Bag Pack', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'en', 3),
(11, 'New Bag Pack', '', 'gr', 3),
(12, 'New Bag Pack', '', 'id', 3),
(13, 'new Watch', '', 'bg', 4),
(14, 'new Watch', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'en', 4),
(15, '', '', 'gr', 4),
(16, '', '', 'id', 4),
(17, 'New Shoes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'bg', 5),
(18, 'New Shoes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'en', 5),
(19, '', '', 'gr', 5),
(20, '', '', 'id', 5);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'samsung'),
(2, 'HP'),
(3, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, '977b4de0c36d6bdca338b631041d6b7e', 1234),
(2, '3c5a956d51f175c3f4ec92fe296e633b', 1235),
(3, '4140d899844c76cc5ae2f18cfd508301', 1236);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `valid_from_date`, `valid_to_date`, `status`) VALUES
(1, 'percent', 'Eid2021', '5', 1606086000, 1606431600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(1, 'bg', 'bulgarian', 'лв', 'BGN', 'bg.jpg'),
(2, 'en', 'english', '$', 'USD', 'en.jpg'),
(3, 'gr', 'greece', 'EUR', 'EUR', 'gr.png'),
(4, 'id', 'indonesian', 'RP', 'IDR', 'id.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1606101354\";s:5:\"image\";s:5:\"2.png\";s:4:\"time\";s:10:\"1606101699\";s:11:\"time_update\";s:10:\"1606101720\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:2:\"12\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:2:\"_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:5:\"34999\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1606103704, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, 'Eid2021'),
(2, 1235, 0, 'a:3:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"4\";s:6:\"folder\";s:10:\"1606107626\";s:5:\"image\";s:35:\"elitebook-x360-830-g7-2-500x500.jpg\";s:4:\"time\";s:10:\"1606107807\";s:11:\"time_update\";s:10:\"1606238453\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"2\";s:8:\"quantity\";s:2:\"12\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:2:\"_4\";s:16:\"virtual_products\";s:0:\"\";s:8:\"brand_id\";s:1:\"2\";s:8:\"position\";s:1:\"1\";s:5:\"price\";s:3:\"150\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"5\";s:6:\"folder\";s:10:\"1606108381\";s:5:\"image\";s:24:\"envy-x360-02-500x500.jpg\";s:4:\"time\";s:10:\"1606108463\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"2\";s:8:\"quantity\";s:2:\"10\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:16:\"Laptop_Samsung_5\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"2\";s:5:\"price\";s:3:\"175\";}s:16:\"product_quantity\";s:1:\"1\";}i:2;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"6\";s:6:\"folder\";s:10:\"1606238895\";s:5:\"image\";s:24:\"81iB1fNtBhL__SL1500_.jpg\";s:4:\"time\";s:10:\"1606239297\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:8:\"quantity\";s:2:\"10\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:10:\"Bag_pack_6\";s:16:\"virtual_products\";s:0:\"\";s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"2\";s:5:\"price\";s:2:\"25\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1606239702, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, 'Eid2021'),
(3, 1236, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"1\";s:2:\"id\";s:2:\"13\";s:6:\"folder\";s:10:\"1606244724\";s:5:\"image\";s:41:\"ox-09-ouxi-original-imaf9yzbefnatgem.jpeg\";s:4:\"time\";s:10:\"1606244797\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"4\";s:8:\"quantity\";s:2:\"10\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:8:\"Watch_13\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"2\";s:5:\"price\";s:2:\"15\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1606244869, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, 'Eid2021');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'Hasib', 'Rahman', 'rhasib36@gmail.com', '01680420999', 'Dhaka\r\nDhaka', 'Dhaka', '1203', '', 1),
(2, 'Hasib', 'Rahman', 'rhasib36@gmail.com', '01680420999', 'Dhaka\r\nDhaka', 'Dhaka', '1203', '', 2),
(3, 'Hasib', 'Rahman', 'rhasib36@gmail.com', '01680420999', 'Dhaka\r\nDhaka', 'Dhaka', '1203', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(1, 1603477289, 'laptop2222.jpg', 1603477394, 1606214047, 1, 1, 10, 0, 1, 'Samsung_Mobile_1', '', 1, 1, 0),
(2, 1606101354, 'mobile.jpg', 1606101699, 1606214330, 1, 1, 12, 0, 1, '_2', '', 1, 1, 0),
(3, 1606107150, 'Xiaomi-Redmi-Note-10-450x450.jpg', 1606107262, 1606214596, 1, 1, 10, 0, 0, '_3', '', 3, 3, 0),
(4, 1606107626, 'elitebook-x360-830-g7-2-500x500.jpg', 1606107807, 1606214465, 1, 2, 12, 0, 0, '_4', '', 2, 1, 0),
(5, 1606108381, 'envy-x360-02-500x500.jpg', 1606108463, 1606214473, 1, 2, 10, 0, 0, 'Laptop_Samsung_5', '', 1, 2, 0),
(6, 1606238895, 'bag.jpg', 1606239297, 1606214365, 1, 3, 10, 0, 1, 'Bag_pack_6', '', 1, 2, 0),
(7, 1606241083, 'business-casual-zjb4128in-laptop-backpack-mi-original-imafhexgjhkxzhnm.jpeg', 1606241185, 1606214563, 1, 3, 10, 0, 0, 'Bag_pack_7', '', 1, 2, 0),
(8, 1606241673, 'watch.jpg', 1606241729, 1606214404, 1, 4, 10, 0, 1, 'Watch_8', '', 1, 2, 0),
(9, 1606242531, '218blbl-casado-original-imafvvfvkmvufjzz.jpeg', 1606242611, 1606214496, 1, 4, 10, 0, 0, 'Watch_9', '', 1, 2, 0),
(10, 1606242947, 'shoe.jpg', 1606243019, 1606214433, 1, 5, 10, 0, 1, 'Shoes_10', '', 1, 2, 0),
(11, 1606244095, 'hand-boot9612-6-creattoes-black-pink-original-imafhtkjzekhufqz.jpeg', 1606244185, 1606214517, 1, 5, 0, 0, 0, 'Shoes_11', '', 1, 2, 0),
(12, 1606244234, 'lb03-red-lovbird-hand-held-bag-b05-original-imaefdcegjkaq96n.jpeg', 1606244345, 1606214584, 1, 3, 10, 0, 0, 'Bag_12', '', 1, 2, 0),
(13, 1606244724, 'ox-09-ouxi-original-imaf9yzbefnatgem.jpeg', 1606244797, 1606214605, 1, 4, 10, 0, 0, 'Watch_13', '', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(1, '', '', '', '', '', 'bg', 1),
(2, 'Laptop', '<p>good choise</p>\r\n', '<p>Stylist laptop</p>\r\n', '15000', '', 'en', 1),
(3, '', '', '', '', '', 'gr', 1),
(4, '', '', '', '', '', 'id', 1),
(5, '', '', '', '', '', 'bg', 2),
(6, 'Samsung A71', '<p>Samsung Galaxy A71</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>First Release</strong></td>\r\n			<td>January 2019</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Colors</strong></td>\r\n			<td>Prism, Crush Black, Silver, Blue, Pink</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Connectivity</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G, 3G, 4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Dual Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>✅&nbsp;dual-band, Wi-Fi direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>✅ v5.0 – A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>✅ A-GPS, GLONASS, BDS, Galileo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Radio</td>\r\n			<td>✅ FM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OTG</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB Type-C</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Body</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Punch-hole</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Gorilla Glass 3 front, plastic body</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Water Resistance</td>\r\n			<td>✖</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>163.6 x 76 x 7.7 millimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>179 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Display</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>6.7 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>Full HD+ 1080 x 2400 pixels (393 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Technology</td>\r\n			<td>Super AMOLED Touchscreen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Protection</td>\r\n			<td>✅ Corning Gorilla Glass 3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>Multitouch</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Back Camera</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>Quad 64+12+5+5 Megapixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>PDAF, dedicated macro camera, ultrawide, depth sensor, LED flash &amp; more</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Video Recording</td>\r\n			<td>Ultra HD 4K (2160p), gyro-EIS (1080p)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Front Camera</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>32 Megapixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>F/2.2, wide, HDR &amp; more</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Video Recording</td>\r\n			<td>Full HD (1080p)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Battery</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Type and Capacity</td>\r\n			<td>Lithium-polymer 4500 mAh (non-removable)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fast Charging</td>\r\n			<td>✅ 25W Fast Battery Charging</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Performance</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Android 10 (One UI 2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm Snapdragon 730 (8 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>6 / 8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>Octa core, up to 2.2 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 618</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Storage</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>ROM</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MicroSD Slot</td>\r\n			<td>✅&nbsp;dedicated slot</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Sound</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>3.5mm Jack</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>Loudspeaker</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Security</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Fingerprint</td>\r\n			<td>✅ In-display (optical)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Face Unlock</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Others</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Notification Light</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sensors</td>\r\n			<td>Fingerprint, Accelerometer, Gyroscope, Proximity, E-Compass</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Manufactured by</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Made in</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sar Value</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '34999', '42999', 'en', 2),
(7, '', '', '', '', '', 'gr', 2),
(8, '', '', '', '', '', 'id', 2),
(9, '', '', '', '', '', 'bg', 3),
(10, 'Xiaomi Note 10', '<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"15\" scope=\"row\">NETWORK</th>\r\n			<td><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n			<td><a data-spec=\"nettech\" href=\"https://www.gsmarena.com/xiaomi_redmi_note_10-10247.php#\">GSM / HSPA / LTE / 5G</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"2\" scope=\"row\">LAUNCH</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n			<td data-spec=\"year\">Not announced yet</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n			<td data-spec=\"status\">Rumored</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"6\" scope=\"row\">BODY</th>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_10-10247.php#\" onclick=\"helpW(\'h_dimens.htm\');\">Dimensions</a></td>\r\n			<td data-spec=\"dimensions\">-</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_10-10247.php#\" onclick=\"helpW(\'h_weight.htm\');\">Weight</a></td>\r\n			<td data-spec=\"weight\">-</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n			<td data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"5\" scope=\"row\">DISPLAY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n			<td data-spec=\"displaytype\">IPS LCD</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_10-10247.php#\" onclick=\"helpW(\'h_dsize.htm\');\">Size</a></td>\r\n			<td data-spec=\"displaysize\">6.57 inches, 104.2 cm<sup>2</sup></td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n			<td data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~401 ppi density)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"4\" scope=\"row\">PLATFORM</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n			<td data-spec=\"os\">Android 10, MIUI 12</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n			<td data-spec=\"chipset\">MediaTek MT6853V Dimensity 720 5G (7 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n			<td data-spec=\"cpu\">Octa-core (2x2.0 GHz Cortex-A76 &amp; 6x2.0 GHz Cortex-A55)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n			<td data-spec=\"gpu\">Mali-G57 MC3</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"5\" scope=\"row\">MEMORY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n			<td data-spec=\"memoryslot\">microSDXC (dedicated slot)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n			<td data-spec=\"internalmemory\">64GB 4GB RAM, 128GB 6GB RAM, 256GB 8GB RAM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"4\" scope=\"row\">MAIN CAMERA</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n			<td data-spec=\"cam1modules\">48 MP, f/1.8, 26mm (wide), 1/2.0\", 0.8µm, PDAF<br />\r\n			8 MP, f/2.2, 118˚ (ultrawide), 1/4.0\", 1.12µm<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n			<td data-spec=\"cam1features\">LED flash, HDR, panorama</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n			<td data-spec=\"cam1video\">4K@30fps, 1080p@30fps</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"4\" scope=\"row\">SELFIE CAMERA</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n			<td data-spec=\"cam2modules\">16 MP, (wide), 1/3.06\", 1.0µm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n			<td data-spec=\"cam2features\">HDR, panorama</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n			<td data-spec=\"cam2video\">1080p@30fps</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"3\" scope=\"row\">SOUND</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n			<td>Yes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"9\" scope=\"row\">COMMS</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n			<td data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n			<td data-spec=\"bluetooth\">5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\">GPS</a></td>\r\n			<td data-spec=\"gps\">Yes, with A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n			<td data-spec=\"nfc\">Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=irda\">Infrared port</a></td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n			<td data-spec=\"usb\">USB Type-C 2.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"9\" scope=\"row\">FEATURES</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n			<td data-spec=\"sensors\">Fingerprint (side-mounted), accelerometer, gyro, proximity, compass</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"7\" scope=\"row\">BATTERY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n			<td data-spec=\"batdescription1\">Li-Po 4800 mAh, non-removable</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n			<td>Fast charging 33W<br />\r\n			Reverse charging</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"6\" scope=\"row\">MISC</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n			<td data-spec=\"colors\">Blue, other colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n			<td data-spec=\"models\">M2004J7AC, M2007J22C, M2007J17C</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Xiaomi Note 10</p>\r\n', '30', '35', 'en', 3),
(11, '', '', '', '', '', 'gr', 3),
(12, '', '', '', '', '', 'id', 3),
(13, '', '', '', '', '', 'bg', 4),
(14, 'Laptop HP', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy</p>\r\n', '150', '175', 'en', 4),
(15, '', '', '', '', '', 'gr', 4),
(16, '', '', '', '', '', 'id', 4),
(17, '', '', '', '', '', 'bg', 5),
(18, 'Laptop Samsung', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p><strong>Lorem Ipsum</strong></p>\r\n', '175', '186', 'en', 5),
(19, '', '', '', '', '', 'gr', 5),
(20, '', '', '', '', '', 'id', 5),
(21, '', '', '', '', '', 'bg', 6),
(22, 'Bag pack', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Bag pack</p>\r\n', '25', '30', 'en', 6),
(23, '', '', '', '', '', 'gr', 6),
(24, '', '', '', '', '', 'id', 6),
(25, '', '', '', '', '', 'bg', 7),
(26, 'Bag pack2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Bag pack2</p>\r\n', '20', '25', 'en', 7),
(27, '', '', '', '', '', 'gr', 7),
(28, '', '', '', '', '', 'id', 7),
(29, '', '', '', '', '', 'bg', 8),
(30, 'Watch', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Watch</p>\r\n', '12', '15', 'en', 8),
(31, '', '', '', '', '', 'gr', 8),
(32, '', '', '', '', '', 'id', 8),
(33, '', '', '', '', '', 'bg', 9),
(34, 'Watch2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Watch2</p>\r\n', '10', '12', 'en', 9),
(35, '', '', '', '', '', 'gr', 9),
(36, '', '', '', '', '', 'id', 9),
(37, '', '', '', '', '', 'bg', 10),
(38, 'Shoes ', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Shoes&nbsp;</p>\r\n', '25', '30', 'en', 10),
(39, '', '', '', '', '', 'gr', 10),
(40, '', '', '', '', '', 'id', 10),
(41, '', '', '', '', '', 'bg', 11),
(42, 'Shoes 2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Shoes 2</p>\r\n', '20', '25', 'en', 11),
(43, '', '', '', '', '', 'gr', 11),
(44, '', '', '', '', '', 'id', 11),
(45, '', '', '', '', '', 'bg', 12),
(46, 'Bag', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '<p>Bag</p>\r\n', '20', '25', 'en', 12),
(47, '', '', '', '', '', 'gr', 12),
(48, '', '', '', '', '', 'id', 12),
(49, '', '', '', '', '', 'bg', 13),
(50, 'Watch', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '', '15', '18', 'en', 13),
(51, '', '', '', '', '', 'gr', 13),
(52, '', '', '', '', '', 'id', 13);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(1, '', 'bg', 1),
(2, 'Mobile', 'en', 1),
(3, '', 'gr', 1),
(4, '', 'id', 1),
(5, 'Laptop', 'bg', 2),
(6, 'Laptop', 'en', 2),
(7, 'Laptop', 'gr', 2),
(8, 'Laptop', 'id', 2),
(9, 'Bag', 'bg', 3),
(10, 'Bag', 'en', 3),
(11, 'Bag', 'gr', 3),
(12, 'bag', 'id', 3),
(13, 'Watch', 'bg', 4),
(14, 'Watch', 'en', 4),
(15, 'Watch', 'gr', 4),
(16, 'Watch', 'id', 4),
(17, 'Shoes ', 'bg', 5),
(18, 'Shoes ', 'en', 5),
(19, 'Shoes ', 'gr', 5),
(20, 'Shoes ', 'id', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1606212396);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_public`
--

INSERT INTO `users_public` (`id`, `name`, `email`, `phone`, `password`, `created`) VALUES
(1, 'Al Maksumee', 'almaksumee719@gmail.com', '01633401852', '21232f297a57a5a743894a0e4a801fc3', '2020-11-24 11:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'spree-logo@2x.png'),
(2, 'navitext', ''),
(3, 'footercopyright', ''),
(4, 'contactspage', 'Hello dear client'),
(5, 'footerContactAddr', '13/7(2) K.M Das Lane'),
(6, 'footerContactEmail', 'rhasib36@gmail.com'),
(7, 'footerContactPhone', '01680420999'),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'),
(10, 'footerSocialFacebook', 'https://www.facebook.com'),
(11, 'footerSocialTwitter', 'https://twitter.com/'),
(12, 'footerSocialGooglePlus', ''),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', 'www.Youtub.com'),
(16, 'contactsEmailTo', 'contacts@shop.dev'),
(17, 'shippingOrder', '5'),
(18, 'addJs', ''),
(19, 'publicQuantity', '1'),
(20, 'paypal_email', 'almaksumee719@gmail.com'),
(21, 'paypal_sandbox', '1'),
(22, 'publicDateAdded', '0'),
(23, 'googleApi', ''),
(24, 'template', 'greenlabel'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '1'),
(27, 'showInSlider', '1'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '1'),
(30, 'multiVendor', '1'),
(31, 'outOfStock', '1'),
(32, 'hideBuyButtonsOfOutOfStock', '0'),
(33, 'moreInfoBtn', '1'),
(34, 'refreshAfterAddToCart', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `url`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, NULL, '', 'hasib@gmail.com', '$2y$10$67o9hgYvu9kYl4SYaJ0GGOZbNZDFYDnSFYjDYH25qMS41lNs8eXXu', '2020-11-24 18:27:14', '2020-11-24 18:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors_orders`
--

INSERT INTO `vendors_orders` (`id`, `order_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`, `vendor_id`) VALUES
(1, 1234, 'a:1:{i:13;s:1:\"1\";}', 1606244869, 'Direct', 'Direct', 'cashOnDelivery', NULL, 1, 1, 0, 'Eid2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors_orders_clients`
--

INSERT INTO `vendors_orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'Hasib', 'Rahman', 'rhasib36@gmail.com', '01680420999', 'Dhaka\r\nDhaka', 'Dhaka', '1203', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
