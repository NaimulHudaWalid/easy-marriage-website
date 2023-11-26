-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 06:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy_marriage_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(4, 6, 9, 0, '2022-08-30', '2022-08-19 03:39:51'),
(5, 6, 9, 0, '2022-08-22', '2022-08-19 03:40:22'),
(6, 1, 1, 1, '2022-08-20', '2022-08-19 03:42:15'),
(7, 1, 9, 3, '2022-08-25', '2022-08-19 05:32:57'),
(8, 6, 1, 2, '2022-08-24', '2022-08-19 16:09:45'),
(9, 6, 8, 1, '0000-00-00', '2022-08-31 10:46:55'),
(10, 6, 8, 0, '2022-08-24', '2022-08-31 10:51:35'),
(11, 6, 10, 2, '2022-09-29', '2022-08-31 15:06:16'),
(12, 6, 10, 0, '2022-09-14', '2022-09-06 15:44:44'),
(13, 6, 10, 0, '2022-09-13', '2022-09-11 12:42:37'),
(14, 6, 15, 0, '2022-09-20', '2022-09-11 16:43:26'),
(15, 7, 10, 1, '2022-09-14', '2022-09-12 17:30:07'),
(16, 7, 0, 0, '2022-09-14', '2022-09-13 11:15:39'),
(17, 7, 0, 0, '2022-09-14', '2022-09-13 19:34:02'),
(18, 7, 14, 2, '2022-09-14', '2022-09-13 19:41:10'),
(19, 7, 14, 0, '2022-09-30', '2022-09-13 19:41:20'),
(20, 7, 15, 3, '2022-09-28', '2022-09-13 23:14:02'),
(21, 7, 16, 3, '2022-09-28', '2022-09-19 23:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(11, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'e7iu', NULL, 1, '2022-08-31 16:16:10'),
(12, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'fsd', NULL, 1, '2022-08-31 16:17:42'),
(13, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'ctykyfu', NULL, 1, '2022-08-31 16:30:21'),
(14, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'hh', NULL, 1, '2022-09-01 10:50:34'),
(15, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'test', NULL, 1, '2022-09-11 11:20:28'),
(16, 'Al Amin', 'bmalamin112@gmail.com', 'fgh', NULL, 1, '2022-09-11 17:48:38'),
(17, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'lk', NULL, 1, '2022-09-12 17:46:42'),
(18, 'Rownok Ripon', 'sb.rownokripon@gmail.com', 'rrrrrrrrrrrrrrrrrrrrrr', NULL, 1, '2022-09-12 18:16:42'),
(19, 'Rownok Ripon', 'mail.rownok@gmail.com', 'sxdg', NULL, 1, '2022-09-12 21:11:29'),
(20, '', '', '', NULL, 1, '2022-09-12 21:23:32'),
(21, '', '', '', NULL, 1, '2022-09-12 21:23:34'),
(22, 'Rownok Ripon', 'mail.rownok@gmail.com', 'Computer Science And Engineering  ', NULL, 1, '2022-09-12 21:24:45'),
(23, 'ggggggggg', 'ggggggggg@gmail.com', 'ggggggggg', NULL, 1, '2022-09-12 21:25:58'),
(24, 'Rownok Ripon', 'mail.rownok@gmail.com', 'Computer Science And Engineering  ', NULL, 1, '2022-09-12 21:33:39'),
(25, 'Rownok Ripon', 'mail.rownok@gmail.com', 'Computer Science And Engineering  ', NULL, 0, '2022-09-12 21:36:10'),
(26, 'Rownok Ripon', 'mail.rownok@gmail.com', 'Computer Science And Engineering  ', NULL, 0, '2022-09-12 21:42:01'),
(27, 'Rownok Ripon', 'rownokdiu@gmail.com', 'cccc', NULL, 1, '2022-09-12 21:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `image`) VALUES
(1, 'Perfume', '6000', 'product1.png'),
(2, 'Jualary', '10000', 'product2.png'),
(3, 'Wedding Dress', '15000', 'product3.png'),
(4, 'Wedding Ring', '5000', 'product4.png'),
(6, 'Man Wedding Dress', '12000', 'product5.png'),
(7, 'Wedding Watch', '4500', 'product6.png'),
(8, 'Couple Watch', '8000', 'product7.png'),
(9, 'Gift Pack', '3000', 'product8.png'),
(10, 'Panjabi', '2500', 'panjabi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `Item_id` varchar(191) NOT NULL,
  `total_price` varchar(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `email`, `phone`, `address`, `Item_id`, `total_price`, `payment_mode`) VALUES
(30, 'Rownok', 'mail.rownok@gmail.com', '0174947556', 'Dhaka', '3 & 2', '25,000.00', 'COD'),
(31, 'Rownok', 'rownokdiu@gmail.com', '0174947556', 'Dhaka', '9', '3,000.00', 'COD'),
(32, 'Rownok', 'mail.rownok@gmail.com', '0174947556', 'Dhaka', '9 ,  8', '17,000.00', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `Item_Id` int(191) NOT NULL,
  `item_name` varchar(191) NOT NULL,
  `item_price` int(191) NOT NULL,
  `item_quantity` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(10, 'A mini wedding', 'Dhaka,Bangladesh', 50000, '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px;&quot;&gt;&ldquo;A mini wedding, also called a tiny or petite wedding, is a lot like how we imagined weddings pre-COVID-19, but with no more than 50 guests (to adhere to the gathering regulations),&rdquo; explains Janice Carnevale of&amp;nbsp;&lt;/span&gt;&lt;font color=&quot;#222222&quot; face=&quot;ProximaNova, ProximaNova-fallback-Arial, sans-serif&quot;&gt;&lt;span style=&quot;transition-duration: 0.15s; transition-property: color; word-break: break-word; font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;Bellwether Events&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px;&quot;&gt;&amp;nbsp;in Falls Church, Virginia. &ldquo;The couple would still have a legal ceremony, followed by a cocktail reception, dinner, and then dancing might be limited to just the couple and their parents.&rdquo;&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_10', 1, '2022-08-31 15:04:54'),
(11, 'A microwedding', 'Dhaka,Bangladesh', 100000, '&lt;p&gt;A microwedding is even smaller than your average &ldquo;small wedding,&rdquo; with a guest count of 20 people or fewer. It&rsquo;s like a regular wedding with all of the common features&mdash;a DJ, band, florist, you name it&mdash;except the guest list is just very small. This gives couples the wedding experience they&rsquo;ve always dreamed of at a much lower price tag because there are so many fewer guests.&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 'uploads/package_11', 1, '2022-08-31 16:41:44'),
(12, 'A popup wedding ', 'Dhaka,Bangladesh', 150000, '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px;&quot;&gt;This is a relatively newer type of wedding that involves more than just one couple. &ldquo;A beautiful predetermined wedding setup is created on a set day and you pick your timeframe where you and your guests (typically 30 or less guests) would gather to witness your ceremony,&rdquo; explains Chang. &ldquo;You usually get a limited amount of time in the venue and then you have leave to make room for the next couple.&rdquo; Although this is certainly not a lengthy affair, it can be ideal for couples looking to save on costs without sacrificing on quality.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_12', 1, '2022-08-31 16:43:59'),
(13, 'Social distance wedding  ', 'Dhaka,Bangladesh', 20000, '&lt;p&gt;&lt;a href=&quot;https://www.weddingwire.com/wedding-ideas/coronavirus-wedding-questions&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); transition: color 0.15s ease 0s; text-decoration-line: underline; word-break: break-word; font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;The coronavirus pandemic&lt;/a&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px;&quot;&gt;&amp;nbsp;has made it near-impossible for couples to carry out what is considered to be a &ldquo;normal&rdquo; wedding, where guests mingle and are in close proximity to one another. This has given way to the formation of what&rsquo;s being considered a social distance wedding. &ldquo;This is a combination of any of the smaller types of weddings plus a virtual wedding,&rdquo; says Chang. &ldquo;It allows for couples to have more guests in &lsquo;attendance&rsquo; virtually without actually increasing the size of the wedding and number of people in person.&rdquo;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_13', 1, '2022-08-31 16:46:46'),
(14, 'Virtual wedding', 'Online', 10000, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px;&quot;&gt;This is the newest type of wedding and for obvious reasons. With a&amp;nbsp;&lt;a href=&quot;https://www.weddingwire.com/wedding-ideas/tips-for-hosting-virtual-wedding&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); transition: color 0.15s ease 0s; text-decoration-line: underline; word-break: break-word;&quot;&gt;virtual wedding&lt;/a&gt;, all guests, including the couple, are in a virtual setting, which means they&rsquo;re behind a computer screen usually in the comfort of their home but still &ldquo;in attendance.&rdquo; &ldquo;It can just include a ceremony, which is what many DIY virtual weddings consist of, but there are now companies and services that help create an actual wedding day, just virtually,&rdquo; says Chang. &ldquo;The best part is that it\'s completely safe for you, your guests and your vendor team.&rdquo;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: ProximaNova, ProximaNova-fallback-Arial, sans-serif; font-size: 18px;&quot;&gt;Whichever type of wedding you have, remember to be patient and kind with yourselves during this difficult time. It&rsquo;s not an easy time to get married, but no matter &ldquo;how&rdquo; you say &ldquo;I do,&rdquo; just remember what matters: that the love of your life is there at the other end of the altar.&amp;nbsp;&lt;/p&gt;', 'uploads/package_14', 1, '2022-08-31 17:18:43'),
(15, 'Formal/Traditional Wedding ', 'Dhaka,Bangladesh', 500000, '&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Georgia, serif; font-size: 18px;&quot;&gt;Considering a black-tie wedding? If you envision you and your guests dressing to the nines, your overall theme will have to match accordingly. For nuptials this grandiose, you\'ll want to pull out all the stops and include complete&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.brides.com/story/formal-wedding-reception-table-setting-etiquette&quot; data-component=&quot;link&quot; data-source=&quot;inlineLink&quot; data-type=&quot;internalLink&quot; data-ordinal=&quot;1&quot; rel=&quot;noopener noreferrer&quot; style=&quot;box-sizing: inherit; margin: 0px; padding: 0px; font-size: 18px; vertical-align: baseline; background-image: linear-gradient(rgb(29, 115, 139), rgb(29, 115, 139)); background-position: 0px 100%; background-size: 2px 1px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(34, 34, 34); display: inline; font-family: Georgia, serif;&quot;&gt;table settings&lt;/a&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Georgia, serif; font-size: 18px;&quot;&gt;&amp;nbsp;(wine glasses and all) with a full sit-down dinner, posh seating, ornate flower arrangements (even on the cake), and an exquisite&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.brides.com/gallery/fall-wedding-decor-ideas-head-table&quot; data-component=&quot;link&quot; data-source=&quot;inlineLink&quot; data-type=&quot;internalLink&quot; data-ordinal=&quot;2&quot; rel=&quot;noopener noreferrer&quot; style=&quot;box-sizing: inherit; margin: 0px; padding: 0px; font-size: 18px; vertical-align: baseline; background-image: linear-gradient(rgb(29, 115, 139), rgb(29, 115, 139)); background-position: 0px 100%; background-size: 2px 1px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(34, 34, 34); display: inline; font-family: Georgia, serif;&quot;&gt;head table&lt;/a&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Georgia, serif; font-size: 18px;&quot;&gt;, just to name a few formalities.&lt;/span&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_15', 1, '2022-08-31 17:23:11'),
(16, 'Asif', 'Asif', 20, '&lt;p&gt;srthjrstj srthjrstjh srthsrthj&lt;/p&gt;', 'uploads/package_16', 1, '2022-09-19 23:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Car Service 1-Mercedes Benz', 'Mercedes-Benz, commonly referred to as Mercedes and sometimes as Benz, is a German luxury and commercial vehicle automotive brand established in 1926. Mercedes-Benz AG is headquartered in Stuttgart, Baden-Württemberg, Germany', 100000, '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;font style=&quot;background-color: rgb(255, 255, 255);&quot; color=&quot;#ce0000&quot;&gt;CAR SERVICE-1&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;b&gt;Car Name:&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;Marcedes Benz&lt;/b&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;b&gt;Timeline:&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;3 Days&lt;/b&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;b&gt;Gass:&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;Owner&lt;/b&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;b&gt;Parking:&lt;/b&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;Owner&lt;/b&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/services_1', 1, '2022-09-13 11:10:14'),
(3, 'photographer', 'photographer', 10000, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;sdgsdfgdfh&lt;/td&gt;&lt;td&gt;dtjhrtjh&lt;/td&gt;&lt;td&gt;rstjrtjk&lt;/td&gt;&lt;td&gt;sryjksrtjk&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;artj&lt;/td&gt;&lt;td&gt;artjsrtj&lt;/td&gt;&lt;td&gt;asrtj&lt;/td&gt;&lt;td&gt;sarjk&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;artj&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/services_3', 1, '2022-09-19 23:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `services_book`
--

CREATE TABLE `services_book` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled	',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_book`
--

INSERT INTO `services_book` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(1, 7, 1, 0, '2022-09-15', '2022-09-13 19:57:44'),
(2, 7, 1, 0, '2022-09-22', '2022-09-13 20:00:44'),
(3, 7, 1, 0, '2022-09-14', '2022-09-13 20:16:06'),
(4, 7, 1, 0, '2022-09-27', '2022-09-13 23:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Easy Marriage'),
(6, 'short_name', 'Admin Panel'),
(11, 'logo', 'uploads/1661929500_client1.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1661929500_banner5.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1663610100_client3.png', NULL, 1, '2021-01-20 14:02:37', '2022-09-19 23:55:52'),
(7, 'Rownok', 'Ripon', 'ripon181', '4e7c1e8a4e1490d3edd8f1a1e3ebd769', 'uploads/1662897060_client3.png', NULL, 0, '2022-09-11 17:49:59', '2022-09-11 17:51:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_book`
--
ALTER TABLE `services_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services_book`
--
ALTER TABLE `services_book`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
