-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 12:20 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enjoy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `slug`, `avatar`, `image`, `is_deleted`, `facebook`, `instagram`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'gioi-thieu', '3860e418f25a9136ff257d990d2660cb.png', '[\"3860e418f25a9136ff257d990d2660cb.png\"]', 0, '', '', '2018-06-19 13:01:55', 'administrator', '2018-06-19 13:01:55', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `about_lang`
--

CREATE TABLE `about_lang` (
  `id` int(11) NOT NULL,
  `about_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `about_lang`
--

INSERT INTO `about_lang` (`id`, `about_id`, `title`, `description`, `content`, `language`) VALUES
(1, 1, 'giới thiệu', NULL, '<p>Tr&ecirc;n sait depuis longtemps que travailler avec du texte lisible v&agrave; contenant du sens l&agrave; nguồn g&acirc;y mất tập trung, et emp&ecirc;che de se concentrer sur la mise en trang elle-m&ecirc;me. L\'avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme \'Du texte. Du texte. Du texte. \' est qu\'il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas so s&aacute;nh chuẩn avec celle du fran&ccedil;ais. De nombreuses suites logicielles de mise en trang của c&aacute;c trang web Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, v&agrave; une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites quy n\'en sont encore qu\'&agrave; leur phase de x&acirc;y dựng. C&aacute;c phi&ecirc;n bản của Plusieurs c&oacute; thể được sử dụng để m&ocirc; tả c&aacute;c t&igrave;nh huống xấu, sự cố xảy ra, sự cố &yacute; thức (histoire d\'y rajouter de petits), c&aacute;c cụm từ ngụy biện (embarassantes).</p>', 'vi'),
(2, 1, 'About', NULL, '<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me. L\'avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme \'Du texte. Du texte. Du texte.\' est qu\'il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du fran&ccedil;ais standard. De nombreuses suites logicielles de mise en page ou &eacute;diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'&agrave; leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(4) DEFAULT '1' COMMENT '0: active; 1:deactive',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_activated`, `is_deleted`) VALUES
(33, 'a80f9612cf8251a8125d84949cc44afd.jpg', '2018-06-26 14:47:45', 'administrator', '2018-06-26 14:47:45', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner_lang`
--

CREATE TABLE `banner_lang` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_lang`
--

INSERT INTO `banner_lang` (`id`, `banner_id`, `title`, `description`, `language`) VALUES
(64, 33, 'en', '', 'en'),
(65, 33, 'cn', '', 'cn'),
(66, 33, 'sc', '', 'sc');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text,
  `meta_keywords` text,
  `meta_description` text,
  `is_deleted` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `viewed` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `type`, `slug`, `image`, `meta_keywords`, `meta_description`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `viewed`) VALUES
(41, 9, NULL, 'bai-viet-1', '43719337c057403fa34c0905552d4efa.jpg', 'asdas', 'asdasd', 0, '2018-05-28 11:22:57', 'administrator', '2018-05-28 11:22:57', 'administrator', 0),
(42, 9, NULL, 'bai-viet-2', '288e03c09743730211f9e713dd02c8c2.png', 'asdas', 'asdasdas', 0, '2018-05-28 11:32:27', 'administrator', '2018-05-28 11:32:27', 'administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_lang`
--

CREATE TABLE `blog_lang` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `language` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `blog_lang`
--

INSERT INTO `blog_lang` (`id`, `blog_id`, `title`, `description`, `content`, `language`) VALUES
(67, 41, 'bai viet 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'vi'),
(68, 41, 'news 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en'),
(69, 42, 'bai viet 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'vi'),
(70, 42, 'news 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adults` tinyint(4) NOT NULL,
  `children` tinyint(4) NOT NULL,
  `infants` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: pending; 1: success; 2: cancel',
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `product_id`, `title`, `first_name`, `last_name`, `email`, `phone`, `time`, `country`, `adults`, `children`, `infants`, `status`, `content`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 96, 'Mrs', 'Nguyễn', 'Quyền', '12quyen12@gmail.com', '01628299929', '2018-06-29 00:00:00', 'Việt Nam', 2, 2, 2, 1, 'ok đấy', 0, '2018-06-22 17:21:37', 'administrator', '2018-06-22 17:21:37', 'administrator'),
(2, 96, 'Mr', 'Nguyễn Văn', 'Quyền', '12quyen12@gmail.com', '01628299929', '2018-06-29 00:00:00', 'Việt nam', 2, 2, 5, 2, 'ok được', 0, '2018-06-22 17:25:00', 'administrator', '2018-06-22 17:25:00', 'administrator'),
(3, 96, 'Ms', 'Ngô', 'Quyền', '12quyen12@gmail.com', '01628299929', '2018-06-21 00:00:00', 'Việt Nam', 2, 2, 2, 2, 'Ok rồi', 0, '2018-06-23 00:02:39', 'administrator', '2018-06-23 00:02:39', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Table structure for table `customize`
--

CREATE TABLE `customize` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0: pending; 1: success; 2: cancel',
  `content` text COLLATE utf8mb4_unicode_ci,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infants` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customize`
--

INSERT INTO `customize` (`id`, `product_id`, `status`, `content`, `adults`, `children`, `time`, `message`, `title`, `first_name`, `last_name`, `email`, `phone`, `country`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `infants`) VALUES
(1, 96, 0, '[\"\\u0110\\u01b0\\u1ee3c \\u0111\\u1ea5y\"]', 2, 2, '2018-06-15 00:00:00', 'Rất là ok đấy', 'Dr', 'Hoàng', 'Quy', 'Quy@gmail.com', '01628299920', 'Việt Nam', 0, '2018-06-22 23:08:29', 'administrator', '2018-06-22 23:08:29', 'administrator', 3),
(2, 96, 0, '[\"T\\u00f4i kh\\u00f4ng th\\u00edch th\\u1ebf n\\u00e0y\"]', 5, 5, '2018-06-28 00:00:00', 'Quang Huy', 'Mrs', 'Quang', 'Huy', 'quanghuy@gmail.com', '01628222922', 'Việt Nam', 0, '2018-06-23 00:03:35', 'administrator', '2018-06-23 00:03:35', 'administrator', 5);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `localtion`
--

CREATE TABLE `localtion` (
  `id` int(11) NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `localtion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localtion`
--

INSERT INTO `localtion` (`id`, `slug`, `image`, `localtion`, `area`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(11, 'en', '0ab2fb6cb36ae564c04f0559b12a0530.jpg', 'Abc', 'Hà Nội', 0, '2018-06-25 17:16:32', 'administrator', '2018-06-25 17:16:32', 'administrator'),
(12, 'asd', 'de6cd8da802d0412453ee510e4777955.jpg', 'Abc', 'Hà Nội', 0, '2018-06-27 17:04:31', 'administrator', '2018-06-27 17:04:31', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `localtion_lang`
--

CREATE TABLE `localtion_lang` (
  `id` int(11) NOT NULL,
  `localtion_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `localtion_lang`
--

INSERT INTO `localtion_lang` (`id`, `localtion_id`, `title`, `content`, `language`) VALUES
(18, 11, 'en', '', 'en'),
(19, 11, 'cn', '', 'cn'),
(20, 11, 'sn', '', 'sc'),
(21, 12, 'asd', '', 'en'),
(22, 12, 'asda', '', 'cn'),
(23, 12, 'asdasd', '', 'sc');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `slug`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(19, 26, 'about-us', '', '7183e3432ade365207fc219f086479fe.jpg', '2018-06-25 16:00:34', 'administrator', '2018-06-25 16:00:34', 'administrator', 0, 0),
(20, 27, 'product---service', '', 'a75213ca0e3a03d4898727a6dcc71709.jpg', '2018-06-25 16:11:02', 'administrator', '2018-06-25 16:11:02', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(25, 'about', 0, '', '50e478aaba906b7bdf2cb23813b80fa2.jpg', NULL, 0, 0, 0, '2018-06-27 11:37:52', 'administrator', '2018-06-27 11:37:52', 'administrator'),
(26, 'about-us-1', 25, '', 'd1360632d98f56b81e51db03a002891c.jpg', NULL, 0, 0, 0, '2018-06-27 11:39:04', 'administrator', '2018-06-27 11:39:04', 'administrator'),
(27, 'product---service', 25, '', '095239c9c81fd3aba9b4e4e71d93d496.jpg', NULL, 0, 0, 0, '2018-06-25 15:51:39', 'administrator', '2018-06-25 15:51:39', 'administrator'),
(28, 'test-en', 25, '', 'f129b907e74e776835276af3c26a5779.jpg', NULL, 0, 0, 0, '2018-06-25 16:46:47', 'administrator', '2018-06-25 16:46:47', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `title`, `content`, `language`) VALUES
(58, 25, 'About 1 2', '', 'en'),
(59, 25, '  關於  ', '', 'cn'),
(60, 25, '  关于', '', 'sc'),
(61, 26, 'About Us  1', '', 'en'),
(62, 26, ' 關於我們 ', '', 'cn'),
(63, 26, ' 关于我们', '', 'sc'),
(64, 27, 'Product - Service', '', 'en'),
(65, 27, '產品 - 服務', '', 'cn'),
(66, 27, '产品 - 服务', '', 'sc'),
(67, 28, 'test en', '', 'en'),
(68, 28, 'test cn', '', 'cn'),
(69, 28, 'test sc', '', 'sc');

-- --------------------------------------------------------

--
-- Table structure for table `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `language`) VALUES
(31, 19, 'About Us', '', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(32, 19, '關於我們', '', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'cn'),
(33, 19, '关于我们', '', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'scn'),
(34, 20, 'Product - Service', '', '', 'en'),
(35, 20, '產品 - 服務', '', '', 'cn'),
(36, 20, '产品 - 服务', '', '', 'sc');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `dateimg` text COLLATE utf8mb4_unicode_ci,
  `vehicles` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,0) DEFAULT NULL,
  `priceadults` decimal(10,0) NOT NULL,
  `pricechildren` decimal(10,0) NOT NULL,
  `priceinfants` decimal(10,0) NOT NULL,
  `percen` int(11) DEFAULT NULL,
  `imglocaltion` text COLLATE utf8mb4_unicode_ci,
  `localtion` text COLLATE utf8mb4_unicode_ci,
  `librarylocaltion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `count_rating` int(11) DEFAULT NULL,
  `is_top` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `slug`, `avatar`, `image`, `is_deleted`, `is_activated`, `dateimg`, `vehicles`, `price`, `priceadults`, `pricechildren`, `priceinfants`, `percen`, `imglocaltion`, `localtion`, `librarylocaltion`, `date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `total_rating`, `count_rating`, `is_top`) VALUES
(95, 31, 'en', '', '', 0, 0, '[null]', '[\"1\"]', '0', '0', '0', '0', 0, '', '', '[\"\"]', '2018-06-30 00:00:00', '2018-06-26 16:26:38', 'administrator', '2018-06-26 16:26:38', 'administrator', NULL, NULL, 0),
(96, 31, 'en-1', '', 'c307ec5eacc3a8968e44bf41a819a9de.jpg', 0, 1, '[\"b9dd7fa183747fa7a9baff25ce537bad.jpg\"]', '[\"2\"]', '0', '0', '0', '0', 0, 'de93fecf7c5589360337427cd796e573.jpg', '', '[\"\"]', '2018-06-30 00:00:00', '2018-06-26 16:31:53', 'administrator', '2018-06-26 16:31:53', 'administrator', NULL, NULL, 1),
(97, 31, 'en-2', '', '770b42afbd69938ae85b70aa5afcd4c0.jpg', 0, 0, '[\"8aeb05db0057f1197ee77a980095a78a.jpg\"]', '[\"1\"]', '10', '5', '5', '5', 5, '1303ebb556dd4fa25f588218de6b8ca1.jpg', 'asdasd', '[\"11\"]', '2018-06-30 00:00:00', '2018-06-26 16:44:37', 'administrator', '2018-06-26 16:44:37', 'administrator', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(31, 'en', 0, 0, '2018-06-26 12:18:41', 'administrator', '2018-06-26 12:18:41', 'administrator', '', '18db9206eda7398af05ce75fec4ac004.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_lang`
--

CREATE TABLE `product_category_lang` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category_lang`
--

INSERT INTO `product_category_lang` (`id`, `product_category_id`, `title`, `content`, `language`, `metakeywords`, `metadescription`) VALUES
(105, 31, 'en', '', 'en', ' ', ' '),
(106, 31, 'cn', '', 'cn', '  ', '  '),
(107, 31, 'sc', '', 'sc', ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `product_lang`
--

CREATE TABLE `product_lang` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `datetitle` text COLLATE utf8mb4_unicode_ci,
  `datecontent` text COLLATE utf8mb4_unicode_ci,
  `tripnodes` text COLLATE utf8mb4_unicode_ci,
  `detailsprice` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lang`
--

INSERT INTO `product_lang` (`id`, `product_id`, `title`, `description`, `content`, `language`, `metakeywords`, `metadescription`, `datetitle`, `datecontent`, `tripnodes`, `detailsprice`) VALUES
(185, 95, 'en', '', '', 'en', '', '', '[\"en1\"]', '[\"\"]', '', ''),
(186, 95, 'cn', '', '', 'cn', '', '', '[\"cn1\"]', '[\"\"]', '', ''),
(187, 95, 'sc', '', '', 'sc', '', '', '[\"sc1\"]', '[\"\"]', '', ''),
(188, 96, 'en', '', '', 'en', '', '', '[\"en1\"]', '[\"\"]', '', ''),
(189, 96, 'cn', '', '', 'cn', '', '', '[\"cn1\"]', '[\"\"]', '', ''),
(190, 96, 'sc', '', '', 'sc', '', '', '[\"sc1\"]', '[\"\"]', '', ''),
(191, 97, 'en', '', '', 'en', '', '', '[\"en\"]', '[\"\"]', '', ''),
(192, 97, 'cn', '', '', 'cn', '', '', '[\"cn\"]', '[\"\"]', '', ''),
(193, 97, 'sc', '', '', 'sc', '', '', '[\"sc\"]', '[\"\"]', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `rating` float(8,1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `users_id`, `rating`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 76, 14, 5.0, NULL, NULL, NULL, NULL, 0),
(2, 76, 14, 4.5, NULL, NULL, NULL, NULL, 0),
(3, 76, 14, 3.5, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0j2mdd0a58dqf9nee7uf288hgdsi5hdp', '::1', 1529683869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638333836393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('0l71rhs275qtmh2ukk3ehr7f0csrcdti', '::1', 1529741302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393734313330323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('0ljcon05kfa0tvabvjb7jmfosmbi0h1p', '::1', 1529722926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732323932363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('0q52bbboapt3ed5e04nkpe9dflnbktnk', '::1', 1529736460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733363436303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('0t9abgva01bmk0j36e051lnv9ftud5l5', '::1', 1529898486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839383438363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('0v8sfumrkau14o6so3o5e3nt76dg4or4', '::1', 1529722293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732323239333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('10bd4j1fhf8vbd49hne2oghfule3dtht', '::1', 1530070296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037303239363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('1j69gkhrvp9016envgicig8bj1ockhas', '::1', 1529917816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931373831363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('1o3nvpteiklcbnoabpkkre3mt2o4pa0d', '::1', 1529737327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733373332373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('21ffc43s28mjqetutaflf5f62gljq3tg', '::1', 1529737005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733373030353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('21ndpds06d0kbctavfo8m216r95g1v1o', '::1', 1529731867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733313836373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('26g2i7met5h33a7rb931ol5p69n3em5v', '::1', 1529896580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839363538303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('272vc9ojee5qe78e2hlaehuqooeu9vi5', '::1', 1530093494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039333439343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303835303330223b6c6173745f636865636b7c693a313533303039333134353b),
('279lu7cptsku06d64r6jq386p081mlkl', '::1', 1529751354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735313335343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373139393236223b6c6173745f636865636b7c693a313532393734393939383b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('2c0ns9vld8oc2g5efb3287cbs9bmcodp', '::1', 1529915160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931353136303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('2d67ul8gp2pn5it21i95kguds6hc78rr', '::1', 1530004859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030343835393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('2mqvvuscbp9auejbq8lfvuude2nirl76', '::1', 1529722597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732323539373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('2uk61g0t048c0kdpdalpvr7ukfdg6anb', '::1', 1529687122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638373132323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('30ri602pdtgp82g11g8alila74imseu0', '::1', 1529732171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733323137313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('32r9vtge3pa5odf055o1gsng09o5bfdd', '::1', 1529921778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393932313737383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('3ba1580654aqm1qo902j3ema0nkeaaod', '::1', 1529685877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638353837373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('3fa0224d308d2o9mu5g4vbdpu7dd99p7', '::1', 1529938568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933383536383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('3os1277n0pog6vho89jgc45jn7i2c8km', '::1', 1529680643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638303634333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('47rc58tvfb8ure8s9elbhvmsakp0sfht', '::1', 1529990232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939303233323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393335343839223b6c6173745f636865636b7c693a313532393938393938353b),
('49uvdlf8rlnqc29cqjpugb81usnohhkl', '::1', 1529725485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732353438353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('4mf5k5qghvjojekhjgqod6j9nhtpfh32', '::1', 1529939589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933393538393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('4tsmimlki9h1n1htrunosckimmpt66od', '::1', 1529937299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933373239393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('4u87guqef5lp1btp4ahrktt5dh83n1em', '::1', 1529729084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732393038343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('59rfsu658nd2nssbj5nrfgcrn072ht32', '::1', 1529935812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933353831323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('5iikm429k3u8li0qu9nqqiqj7f91svig', '::1', 1529900397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930303339373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b6d6573736167655f6572726f727c733a32323a224944206b68c3b46e672074e1bb936e2074e1baa16921223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('5td8mlgnpc60vejtlduia7gd5ipq0ldb', '::1', 1529683027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638333032373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('6l6kdl9oc6a77jvlnf3l6mdil5fhpsjq', '::1', 1530011062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031313036323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('6m4tn6o99jbhl7c8iue82rqppsveea90', '::1', 1529738085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733383038353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('6mdpp3vaa46lgtt46hip95huc694ha13', '::1', 1529750279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735303237393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373139393236223b6c6173745f636865636b7c693a313532393734393939383b),
('6opgqjhskf6pmr7bbsbqqqdrnsce5per', '::1', 1529740641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393734303634313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('75398jcrbv51at8h3gpkcsn8a4foavic', '::1', 1530093796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039333739363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303835303330223b6c6173745f636865636b7c693a313533303039333134353b),
('76a4ev8kmnolenas8hah8qmk7snhgrue', '::1', 1529750902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735303930323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373139393236223b6c6173745f636865636b7c693a313532393734393939383b),
('77clscmse0fof3t772u9f8fp90uhi4a7', '::1', 1529919208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931393230383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('7bmga1c7r268uc31aanrsleb5fl4e2p4', '::1', 1530071534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037313533343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('7c79fv1gq2u6v01gjh24j5hm5t6q9hjj', '::1', 1529895412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839353431323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('7cn9rvn32u0qs97aov358u5pcggr4b61', '::1', 1529899363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839393336333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b6d6573736167655f6572726f727c733a32323a224944206b68c3b46e672074e1bb936e2074e1baa16921223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('7gk8riv36p4rsc6a2elngmai1e7816k5', '::1', 1529918233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931383233333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('7jf7llbfdvv42jgigt1rfcitelln6tuv', '::1', 1529939223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933393232333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('7qp44l4lhrh76fncfe2ghjn4hf4bl47t', '::1', 1530003702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030333730323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('82on4nrtiipsgtbp4av0ohc8nuuusrl1', '::1', 1529730604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733303630343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('893un8844ta9hf1859t02t634kbqc9kb', '::1', 1529901404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930313430343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('8bi03bshvot8jm9bdshju2jeqeg55jpg', '::1', 1529737744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733373734343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('8iu8ilvhe18mq4tbdv153qnqssp5emrg', '::1', 1530085274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303038353032373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303639353934223b6c6173745f636865636b7c693a313533303038353033303b),
('8n92rjtjfjn5lqun9r4ha8vldalkp829', '::1', 1529727135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732373133353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('905a10c1ks956ankvg3qiu8pp4i14fcd', '::1', 1529731258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733313235383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('950u5654ftk85r9ukm4rvrvpmmgjdrug', '::1', 1529684428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638343432383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('988lslipsnt03dch1j9csdkfvbc6c8im', '::1', 1529725838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732353833383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('9jqobv7ek5unn921u9nujm0i3pq7p6fl', '::1', 1529901711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930313731313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('9k80n07o1apqrmniv54067omr3p3s1da', '::1', 1530005500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030353530303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('a1obi8svjbpi7gq62ko9m9ej3n59nb49', '::1', 1529909706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930393639353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239383935303834223b6c6173745f636865636b7c693a313532393930393730363b),
('a8158qd4d9g8mg469jniubc80r81houo', '::1', 1529749892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393734393839323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('abbcti8jjnb8lk93knn7b0u7bgmt9ufi', '::1', 1529751826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735313735373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373139393236223b6c6173745f636865636b7c693a313532393734393939383b),
('acc1r3a58ltboeu6kjep9ml5ppoogll7', '::1', 1529740975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393734303937353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('as0tmbqf0vjqots6lqf2l5eghs2t142c', '::1', 1530002853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030323835333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('b0tiv5q9utfof4nbn8jhojdvq2q9fttd', '::1', 1529938137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933383133373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('b1qgfrs0pok30me3i12fv3ss8s8qefc4', '::1', 1529725102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732353130323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('b9uc1v7m1qhmrgh1pthl24e61hum4jjn', '::1', 1530004141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030343134313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('bblusambe25b0lrbfc1gtj1v4vt9h12g', '::1', 1529732518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733323531383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('bcn6e185l4sjag5kl20s81t6u0g4p8ei', '::1', 1529916131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931363133313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('bhtbaiphdijou17lko6fp7hgbupgq4c3', '::1', 1529681611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638313631313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('c1r8b9n9qkco82b9gb97pamksvl5f304', '::1', 1529721393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732313339333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('cl2d260gslbbeppe1cv0mhk77n8ho0hu', '::1', 1529916880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931363838303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('cmbu4hhg2j0g6k18i9g4ljhv950t209b', '::1', 1529681953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638313935333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('d4qe3qvpo7l6h9g5lhq9tncoffenp7r7', '::1', 1529901046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930313034363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('d7t4m51po1d34slfh72v5buovo43k8m2', '::1', 1529917202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931373230323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('dga5pns6d9eqivsd2erocr56e2f6fap2', '::1', 1529682611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638323631313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('e5cs6mrk3tqkvd06r697rr806ql69arh', '::1', 1530009142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030393134323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('edf6kug77p1mrgvfnqgi8gld2msev56k', '::1', 1529680948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638303934383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('ek6cqasbmeninju25p5ccs645k17im3o', '::1', 1529940657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393934303632363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('elkfsq7fk3tkisbe9q517chb3h5i7hra', '::1', 1529990861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939303536393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393335343839223b6c6173745f636865636b7c693a313532393938393938353b),
('emj7u0bcisorsdo9jk07vkto91olr8nf', '::1', 1529917508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931373530383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('epqq6773s2rttsfm11h45sefs51bgl1f', '::1', 1529684814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638343831343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('f0s1052ophe2gtdf0gql9qpsd6kviji9', '::1', 1529893940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839333934303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fadufroh4go3t1n4htr7rkg2rs199nf1', '::1', 1529738391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733383339313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('fcn6vsjnlmc9n22a4fvtcvqcqc8dbd5h', '::1', 1529685470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638353437303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('fdeoeqvsogji5cpi33mc89p4rfsc163a', '::1', 1529914628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931343632383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('fr1o9kga8p8aftubmo6h6f53rgvnm3q8', '::1', 1529915792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931353739323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('fv3nqv7o798bkd7nhte9uqdbgl1qu6pd', '::1', 1529916437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931363433373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('g71l5fk4vemj08jvqauue9q43il88c05', '::1', 1529686178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638363137383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('gb060jf1376nk3ircr5lp6seec81en3h', '::1', 1529921437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393932313433373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('gcri8eqscj2152un3kahuk1uqku9i8g4', '::1', 1529681287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638313238373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('gcs0ed53n2je1hhuh7v0qf868ro5ltho', '::1', 1529738755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733383735353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('ge6t13rbeluld3ssfnnu3ci1bk3vp5bi', '::1', 1529682301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638323330313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('glfbid9gaafkv1k1g9sj5ib2gm20jor4', '::1', 1529683487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638333438373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('gn9an1uacju31amuvmi9uj3d3duhu1fb', '::1', 1530011083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031313036323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('gpgkcj9as0pqpvmlqlbdn1r4icot4iuj', '::1', 1529990569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939303536393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393335343839223b6c6173745f636865636b7c693a313532393938393938353b),
('hf0506ls2sj26g8d8m9g5jc46un7esrt', '::1', 1529726301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363330313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('hjvq8rj5bbjac8gcr8hfgf3t2uffm2l0', '::1', 1529735312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733353331323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('hp6jm4ulsp1iulrjst2av22dkleuv7fs', '::1', 1529999647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939393634373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('hpnarhrl8cdanqb3bothv4crrtmf3mtt', '::1', 1529739836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733393833363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('ij8dbv7qhjmsfuau2bj6130f96rhv3g5', '::1', 1530006500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030363530303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('ijrg2fakllajacp97r80p7aioek1ba2h', '::1', 1529730150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733303135303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('iskhom12asaclk8bcofvu7munr2qklnq', '::1', 1529923176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393932333137363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('iu9vlfqmm1jra1m2mdiqscfjmcej6rg7', '::1', 1529900731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930303733313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('j446lv4bkg2657u1gp5pbpehf8ubkghp', '::1', 1529724388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732343338383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('j6538138l5hfq33dklbdv141d065ip7v', '::1', 1529719926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393731393932363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jgc1t7o0be2jns7rg00jnd0kk2g8rkie', '::1', 1530074203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037343230333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('jot19dvef0mcl6uns4g49h15vt2id830', '::1', 1529724781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732343738313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('k2pfqrh495cfm6anoanqd52an8b5k2gh', '::1', 1529902045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930323034353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b3a3a317c733a333a223a3a31223b5f5f63695f766172737c613a313a7b733a333a223a3a31223b693a313532393930353530393b7d),
('k5grv5aiqook3mcu5ldsq7if2jejc20o', '::1', 1529727519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732373531393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('k72mdq5to8qm0jui83ijc5rs3ucroaqm', '::1', 1529750601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735303630313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373139393236223b6c6173745f636865636b7c693a313532393734393939383b),
('klsgsa202cve2ustoif2oi3u53a2nmje', '::1', 1530094078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039333739363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330303835303330223b6c6173745f636865636b7c693a313533303039333134353b),
('kmrpn299sk641pntds8tl0ndh2ueibpk', '::1', 1530007707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030373730373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('l8dr9idlbvh9r29gqosk4c1d7tm8rj4l', '::1', 1529751757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735313735373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373139393236223b6c6173745f636865636b7c693a313532393734393939383b),
('l9ckt7g09jb7vrurb7qogi0vsdkko2s0', '::1', 1530000536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030303533363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('la8rc5459bqu79j1f9qfd20g0v2j0r7m', '::1', 1529686803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638363830333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('ldhrd36dfhk92m8ooh331pmermighplt', '::1', 1529727826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732373832363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('lsk9c2qebnqu797ksjnorrlak4i6r40n', '::1', 1530005989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030353938393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('m696s32g1lnv53vd8f1bqj1eicffbf3r', '::1', 1529729449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732393434393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('m8jqnme7p7q98e8ev5c77mnmrsj67p21', '::1', 1529721087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732313038373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('makd6ga9f97glh5obir68fqbqrb0ufoa', '::1', 1529680338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638303333383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b);
INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('mp0lnufe5uvl8h1uqp670b39tsc5lorc', '::1', 1529940626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393934303632363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('mr2fbni5m321obio72bq99u98o1ivhf1', '::1', 1529894251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839343235313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mr8rf2gbo0lgvgl06kvujvp4k51kkin2', '::1', 1529728599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732383539393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('mrtns2de1i99ibl1aog507pf8hk69ulh', '::1', 1529923176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393932333137363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('mtaasbbrihfkhf12j4kqmfhrecldbqtv', '::1', 1529728236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732383233363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('nnd4lpsjkak7at1l8cm84gj0c7frvgq5', '::1', 1529686493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638363439333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('o02bjesdunc2up9h3tc8ootr03uren4m', '::1', 1529895025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839353032353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('o5pg7vflse9dbq07l1etcbi5luh85vdu', '::1', 1529739350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733393335303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('olemn7us8lu35sabfr9cu53o82octa94', '::1', 1530008836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030383833363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('p44ivmv26a7g2pdqgh7debfmkmkp07dl', '::1', 1530074826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037343535363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('p4bsu1drsn735t3deh6bsqah88o9g0o0', '::1', 1529740205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393734303230353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('p9evuldelgeoppq2475l46oh5cjpukq1', '::1', 1529730913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733303931333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('pdnjreav0as9hknejagoahcajtmkbkbg', '::1', 1529918544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931383534343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('pj1choquj3kc46igv7f7sr3l0lels3td', '::1', 1529741596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393734313330323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('pq6fuhasinl5j5qv514ntnsq2dva5b4b', '::1', 1529937740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933373734303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('qksbcq4gi8c4bf0dqv7cmun15q2n1d85', '::1', 1529687122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638373132323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('qu33pp865gj9k3n5utsis0brrgsi928v', '::1', 1530004555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030343535353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('rad42g6n1iqel26ni76pi1729vv7cpit', '::1', 1529919843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931393834333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('rbodhjdsdo75fbn56isuoo7g09idogfi', '::1', 1529894596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839343539363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rniiupvdlp1972ugv5g5ibv8b6c052fi', '::1', 1529902751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930323735313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b3a3a317c733a333a223a3a31223b5f5f63695f766172737c613a313a7b733a333a223a3a31223b693a313532393930353530393b7d),
('rpfv6kjje8lt0j51pki11p43j98j7sqc', '::1', 1530003231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030333233313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('s35elt9oqr33fqqoqdeac7mkiolobir7', '::1', 1529899039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839393033393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b6d6573736167655f6572726f727c733a32323a224944206b68c3b46e672074e1bb936e2074e1baa16921223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226e6577223b7d),
('s459uoeu08vq5pg4u41jblafdectoep6', '::1', 1530005189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030353138393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('s5rnd10idhcqo0187ogudjmvb34ohg7j', '::1', 1529685147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393638353134373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363537363635223b6c6173745f636865636b7c693a313532393637393939333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('s85gffm37b9bsrqsfc1e9qf7e1jq82vp', '::1', 1530010519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303031303531393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('sb1bbp6gatdihebshin2j7q5fbj0t46b', '::1', 1529724069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732343036393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('scara5heofvhcen8ddbknr3ssotvl7gu', '::1', 1529896164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839363136343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b),
('sn2p45vm01i355j907faca6hml8mif3r', '::1', 1529999084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393939393038343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('soqnko8uvd4vfc3e7o08i8kb21gkdhol', '::1', 1530073181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037333138313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('t54bm6nuq335a21u6d7aturlqc9cg09h', '::1', 1530008120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030383132303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('t9k2le9pnbac7ps8c57t1vfgd70vtkmh', '::1', 1530009615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030393631353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('tcmhqc4nfndtndk9obmadk20obe0q9b1', '::1', 1529899700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393839393730303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b6d6573736167655f6572726f727c733a32323a224944206b68c3b46e672074e1bb936e2074e1baa16921223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('td4q5goh8r317m6dvrc8utl8gdqfrd5r', '::1', 1530069983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036393938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('tglk7orgbjphd5qprh21fc36jbqbpldq', '::1', 1529938885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393933383838353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393133393531223b6c6173745f636865636b7c693a313532393933353438393b),
('tjr2pbi2r05c3gt12l1jemdqnrsfr1ue', '::1', 1529900047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930303034373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b6d6573736167655f6572726f727c733a32323a224944206b68c3b46e672074e1bb936e2074e1baa16921223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226e6577223b7d),
('tm3aat0cqbeibafufguns082ag7ab6es', '::1', 1529720246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732303234363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('ts2b2t8aihopio1t4p13h2a0122k6fku', '::1', 1530074556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037343535363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('tuairsja65t40f72046q42257npbp4qj', '::1', 1529731563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733313536333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('tuu4tqbs9dn8f5dgsv588637e91ctnoq', '::1', 1529918869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931383836393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('u3ppk9jmvh3bcs94dugdgs3umk5oj5hr', '::1', 1530070754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037303735343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('u9ao48up8skoclk4mba1vbi1u0efk1l1', '::1', 1530009953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303030393935333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393839393835223b6c6173745f636865636b7c693a313532393939373939353b),
('uctab80d11ctsda66vm9mghgtcndjk3n', '::1', 1530071934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037313933343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393937393935223b6c6173745f636865636b7c693a313533303036393539343b),
('uhomvvdl088sk7hvmf8t1e4tk9846lnr', '::1', 1529721938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732313933383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('ul9077cgtnbdoqufecguslit9kvii0vn', '::1', 1529719594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393731393539343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v43qmc8v8m1623cfst402pt68rf2stnu', '::1', 1529915461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931353436313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('v6micuqvoc351ik1erflmpfrh7vtc6bh', '::1', 1529726651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363635313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('v9iuell6fn5skdi4skorjc8jn8nk5206', '::1', 1529735760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393733353736303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239363739393933223b6c6173745f636865636b7c693a313532393731393932363b),
('vcc7c3kjnadaljdovrnjug1usqu3rkh0', '::1', 1529919522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393931393532323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239393039373036223b6c6173745f636865636b7c693a313532393931333935313b),
('vu98r3g709nuvvg0b2nkor6j5rdkuso1', '::1', 1529902756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393930323735313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353239373439393938223b6c6173745f636865636b7c693a313532393839353038343b3a3a317c733a333a223a3a31223b5f5f63695f766172737c613a313a7b733a333a223a3a31223b693a313532393930353530393b7d);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `age`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1530093145, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `about_id` (`about_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog_lang`
--
ALTER TABLE `blog_lang`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Indexes for table `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `localtion`
--
ALTER TABLE `localtion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localtion_lang`
--
ALTER TABLE `localtion_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localtion_id` (`localtion_id`) USING BTREE;

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`) USING BTREE;

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Indexes for table `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `banner_lang`
--
ALTER TABLE `banner_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `blog_lang`
--
ALTER TABLE `blog_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `localtion`
--
ALTER TABLE `localtion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `localtion_lang`
--
ALTER TABLE `localtion_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_lang`
--
ALTER TABLE `about_lang`
  ADD CONSTRAINT `about_lang_ibfk_1` FOREIGN KEY (`about_id`) REFERENCES `about` (`id`);

--
-- Constraints for table `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD CONSTRAINT `banner_lang_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`);

--
-- Constraints for table `blog_lang`
--
ALTER TABLE `blog_lang`
  ADD CONSTRAINT `blog_lang_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `customize`
--
ALTER TABLE `customize`
  ADD CONSTRAINT `customize_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `localtion_lang`
--
ALTER TABLE `localtion_lang`
  ADD CONSTRAINT `localtion_lang_ibfk_1` FOREIGN KEY (`localtion_id`) REFERENCES `localtion` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Constraints for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Constraints for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
