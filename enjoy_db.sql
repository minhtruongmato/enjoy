-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2018 lúc 04:44 PM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `enjoy_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
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
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `slug`, `avatar`, `image`, `is_deleted`, `facebook`, `instagram`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'gioi-thieu', '3860e418f25a9136ff257d990d2660cb.png', '[\"3860e418f25a9136ff257d990d2660cb.png\"]', 0, '', '', '2018-06-19 13:01:55', 'administrator', '2018-06-19 13:01:55', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about_lang`
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
-- Đang đổ dữ liệu cho bảng `about_lang`
--

INSERT INTO `about_lang` (`id`, `about_id`, `title`, `description`, `content`, `language`) VALUES
(1, 1, 'giới thiệu', NULL, '<p>Tr&ecirc;n sait depuis longtemps que travailler avec du texte lisible v&agrave; contenant du sens l&agrave; nguồn g&acirc;y mất tập trung, et emp&ecirc;che de se concentrer sur la mise en trang elle-m&ecirc;me. L\'avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme \'Du texte. Du texte. Du texte. \' est qu\'il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas so s&aacute;nh chuẩn avec celle du fran&ccedil;ais. De nombreuses suites logicielles de mise en trang của c&aacute;c trang web Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, v&agrave; une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites quy n\'en sont encore qu\'&agrave; leur phase de x&acirc;y dựng. C&aacute;c phi&ecirc;n bản của Plusieurs c&oacute; thể được sử dụng để m&ocirc; tả c&aacute;c t&igrave;nh huống xấu, sự cố xảy ra, sự cố &yacute; thức (histoire d\'y rajouter de petits), c&aacute;c cụm từ ngụy biện (embarassantes).</p>', 'vi'),
(2, 1, 'About', NULL, '<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me. L\'avantage du Lorem Ipsum sur un texte g&eacute;n&eacute;rique comme \'Du texte. Du texte. Du texte.\' est qu\'il poss&egrave;de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du fran&ccedil;ais standard. De nombreuses suites logicielles de mise en page ou &eacute;diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par d&eacute;faut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'&agrave; leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
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
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_activated`, `is_deleted`) VALUES
(33, 'a80f9612cf8251a8125d84949cc44afd.jpg', '2018-06-26 14:47:45', 'administrator', '2018-06-26 14:47:45', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_lang`
--

CREATE TABLE `banner_lang` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner_lang`
--

INSERT INTO `banner_lang` (`id`, `banner_id`, `title`, `description`, `language`) VALUES
(64, 33, 'en', '', 'en'),
(65, 33, 'cn', '', 'cn'),
(66, 33, 'sc', '', 'sc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
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
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `type`, `slug`, `image`, `meta_keywords`, `meta_description`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `viewed`) VALUES
(41, 9, NULL, 'bai-viet-1', '43719337c057403fa34c0905552d4efa.jpg', 'asdas', 'asdasd', 0, '2018-05-28 11:22:57', 'administrator', '2018-05-28 11:22:57', 'administrator', 0),
(42, 9, NULL, 'bai-viet-2', '288e03c09743730211f9e713dd02c8c2.png', 'asdas', 'asdasdas', 0, '2018-05-28 11:32:27', 'administrator', '2018-05-28 11:32:27', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_lang`
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
-- Đang đổ dữ liệu cho bảng `blog_lang`
--

INSERT INTO `blog_lang` (`id`, `blog_id`, `title`, `description`, `content`, `language`) VALUES
(67, 41, 'bai viet 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'vi'),
(68, 41, 'news 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en'),
(69, 42, 'bai viet 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'vi'),
(70, 42, 'news 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customize`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `localtion`
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
-- Đang đổ dữ liệu cho bảng `localtion`
--

INSERT INTO `localtion` (`id`, `slug`, `image`, `localtion`, `area`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'taipei-hanoi-da-nang-indigo-bay-marble-moutain-my-khe-beach-hoi-an', 'a8aafe544ff205513892433f1751fe96.png', 'Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) 、My Khe Beach Hoi An', 'Miền trung', 0, '2018-07-02 16:06:04', 'administrator', '2018-07-02 16:06:04', 'administrator'),
(2, 'my-khe', 'f9ff69c9209e4bcd6bce712a376daef4.png', 'My Khe', 'Miền trung', 0, '2018-07-02 16:07:37', 'administrator', '2018-07-02 16:07:37', 'administrator'),
(3, 'champa', 'f3da6c873fda848f3bc5306531c59781.png', 'Champa', 'Miền trung', 0, '2018-07-02 16:09:45', 'administrator', '2018-07-02 16:09:45', 'administrator'),
(4, 'cam-nam-village', 'c9ff4f59637a1508b049f33b02edf8d7.png', 'Cam Nam Village', 'Miền trung', 0, '2018-07-02 16:10:29', 'administrator', '2018-07-02 16:10:29', 'administrator'),
(5, 'hoi-an', '084833e703f6cd11731b24931f712cbb.png', 'Hoi An', 'Miền trung', 0, '2018-07-02 16:11:30', 'administrator', '2018-07-02 16:11:30', 'administrator'),
(6, 'the-perfume-rivervietnamese-song-huong-or-huong-giang', 'b5d6f316d3c79909f83d036d1f15edb8.png', 'The Perfume River(Vietnamese: Sông Hương or Hương Giang)', 'Miền trung', 0, '2018-07-02 16:12:21', 'administrator', '2018-07-02 16:12:21', 'administrator'),
(7, 'located-beside-the-picturesque-huong-river-thien-mu-pagoda', 'f34047a5e9c3b7ae77c0c012888c4e34.png', 'Located beside the picturesque Huong River, Thien Mu Pagoda', 'Miền trung', 0, '2018-07-02 16:13:07', 'administrator', '2018-07-02 16:13:07', 'administrator'),
(8, 'khai-dinh', 'e3cb9e0d0dce85c1c1716668ebac3dc5.png', 'Khai Dinh', 'Miền trung', 0, '2018-07-02 16:13:58', 'administrator', '2018-07-02 16:13:58', 'administrator'),
(9, 'tu-duc', 'feb6716be44220e083daab6a7b661d0b.png', 'Tu Duc', 'Mien Trung', 0, '2018-07-02 16:15:57', 'administrator', '2018-07-02 16:15:57', 'administrator'),
(10, 'hue', 'e15bbf32126f228cd35defc31293616c.png', 'Hue', 'Mien Trung', 0, '2018-07-02 16:16:54', 'administrator', '2018-07-02 16:16:54', 'administrator'),
(11, 'hue-dong-ba-market-ho-chi-minh-city-red-churh-museum-of-american-war-crimes-centennial-post-office-town-hall-reunification-palace-sai-gon-river', '395b011199fe9570de10a8433468a7ac.png', 'Hue Dong Ba Market Ho Chi Minh City Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace Sai gon River	', 'Mien Nam', 0, '2018-07-02 16:18:53', 'administrator', '2018-07-02 16:18:53', 'administrator'),
(12, 'ho-chi-minh', 'e7a3b1b5edc26d915852abd345abc640.png', 'Ho Chi Minh', 'Mien Nam', 0, '2018-07-02 16:20:13', 'administrator', '2018-07-02 16:20:13', 'administrator'),
(13, 'red-church', 'c0a52bf23f0239847dfaeeab489eb219.png', 'Red Church', 'Mien Nam', 0, '2018-07-02 16:23:14', 'administrator', '2018-07-02 16:23:14', 'administrator'),
(14, 'the-saigon-central-post-office', 'fff73a085ae5c3c9396a23d5304a3ab4.png', 'The Saigon Central Post Office', 'Mien Nam', 0, '2018-07-02 16:24:28', 'administrator', '2018-07-02 16:24:28', 'administrator'),
(15, 'saigon-city-hall', '3d35f8dfbb51d77e8d04811cb1c75f37.png', 'Saigon City Hall', 'Mien Nam', 0, '2018-07-02 16:25:54', 'administrator', '2018-07-02 16:25:54', 'administrator'),
(16, 'independence-palace-dinh-doc-lap', 'd0ee71ebc0be125336de96a0e70d759f.png', 'Independence Palace (Dinh Doc Lap)', 'Mien Nam', 0, '2018-07-02 16:26:53', 'administrator', '2018-07-02 16:26:53', 'administrator'),
(17, 'saigon-river', 'ddbcede41f36ee0368ad29d49efe020b.png', 'Saigon River', 'Mien Nam', 0, '2018-07-02 16:28:04', 'administrator', '2018-07-02 16:28:04', 'administrator'),
(18, 'the-mekong', '0132e85a20869665c642a90e12411337.png', 'The Mekong', 'Mien Nam', 0, '2018-07-02 16:28:58', 'administrator', '2018-07-02 16:28:58', 'administrator'),
(19, 'vinh-trang-chua', 'f86078efd535499f36946e5df2edb6b0.png', 'Vinh Trang Chua', 'Mien Nam', 0, '2018-07-02 16:29:47', 'administrator', '2018-07-02 16:29:47', 'administrator'),
(20, 'an-dong-market', 'a2cfb5029d398f5227faa82447501f79.png', 'An Dong Market', 'Mien Nam', 0, '2018-07-02 16:30:30', 'administrator', '2018-07-02 16:30:30', 'administrator'),
(21, 'built-by-the-viet-cong', 'b9d360d5fab24dd7c97067175a4b6ee8.png', 'Built by the Viet Cong', 'Mien Nam', 0, '2018-07-02 16:31:28', 'administrator', '2018-07-02 16:31:28', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `localtion_lang`
--

CREATE TABLE `localtion_lang` (
  `id` int(11) NOT NULL,
  `localtion_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `localtion_lang`
--

INSERT INTO `localtion_lang` (`id`, `localtion_id`, `title`, `content`, `language`) VALUES
(1, 1, 'Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) 、My Khe Beach Hoi An', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Driving 9km south of Danang city center on the famous beachfront boulevard Truong Sa, travelers can find one of the most popular attractions of the region, the Marble mountains. It is a group of five marble and limestone mountains, named after the five elements of the ancient oriental philosophy: metal, wood, water, fire and earth.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(2, 1, 'Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) 、My Khe Beach Hoi An', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Driving 9km south of Danang city center on the famous beachfront boulevard Truong Sa, travelers can find one of the most popular attractions of the region, the Marble mountains. It is a group of five marble and limestone mountains, named after the five elements of the ancient oriental philosophy: metal, wood, water, fire and earth.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(3, 1, 'Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) 、My Khe Beach Hoi An', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Driving 9km south of Danang city center on the famous beachfront boulevard Truong Sa, travelers can find one of the most popular attractions of the region, the Marble mountains. It is a group of five marble and limestone mountains, named after the five elements of the ancient oriental philosophy: metal, wood, water, fire and earth.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(4, 2, 'My Khe', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">My Khe is long well-known for its beauty among many locals and international tourists and now its fame has been confirmed by the American leading economic magazine Forbes: the 900m long beach is claimed as one of the six most attractive beaches on the planet.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(5, 2, 'My Khe', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">My Khe is long well-known for its beauty among many locals and international tourists and now its fame has been confirmed by the American leading economic magazine Forbes: the 900m long beach is claimed as one of the six most attractive beaches on the planet.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(6, 2, 'My Khe', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">My Khe is long well-known for its beauty among many locals and international tourists and now its fame has been confirmed by the American leading economic magazine Forbes: the 900m long beach is claimed as one of the six most attractive beaches on the planet.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(7, 3, 'Champa', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Champa culture had great influences on Vietnam&rsquo;s cultural values of significance. The former capital of the Champa Kingdom from 4th to 15th century was My Son Sanctuary (My Son Holy Land) in Quang Nam province, central Vietnam. </td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(8, 3, 'Champa', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Champa culture had great influences on Vietnam&rsquo;s cultural values of significance. The former capital of the Champa Kingdom from 4th to 15th century was My Son Sanctuary (My Son Holy Land) in Quang Nam province, central Vietnam. </td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(9, 3, 'Champa', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Champa culture had great influences on Vietnam&rsquo;s cultural values of significance. The former capital of the Champa Kingdom from 4th to 15th century was My Son Sanctuary (My Son Holy Land) in Quang Nam province, central Vietnam. </td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(10, 4, 'Cam Nam Village', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Cam Nam Village, just a bridge away from Hoi An&lsquo;s&nbsp; Old Quarter, is a nice getaway from the hectic pace of central Old Town. This tranquil destination, which welcomes hundreds of guest everyday, typifies the sort of gastronomically experience available to both foreign and local visitors. Walking around the village, following a beautiful tranquil river lined with starfruit trees, people can explore the local rustic food specialties of the area in dozens of little restaurants.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(11, 4, 'Cam Nam Village', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Cam Nam Village, just a bridge away from Hoi An&lsquo;s&nbsp; Old Quarter, is a nice getaway from the hectic pace of central Old Town. This tranquil destination, which welcomes hundreds of guest everyday, typifies the sort of gastronomically experience available to both foreign and local visitors. Walking around the village, following a beautiful tranquil river lined with starfruit trees, people can explore the local rustic food specialties of the area in dozens of little restaurants.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(12, 4, 'Cam Nam Village', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Cam Nam Village, just a bridge away from Hoi An&lsquo;s&nbsp; Old Quarter, is a nice getaway from the hectic pace of central Old Town. This tranquil destination, which welcomes hundreds of guest everyday, typifies the sort of gastronomically experience available to both foreign and local visitors. Walking around the village, following a beautiful tranquil river lined with starfruit trees, people can explore the local rustic food specialties of the area in dozens of little restaurants.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(13, 5, 'Hoi An', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\"><br />Hoi An Old Town is located 30km south of Danang City, and 60km northeast of Tam Ky. Hoi An used to be an international trade center by sea on the east area in the 16th and 17th centuries. It was the busiest trading port in Dang Trong region of Vietnam during the reign of Nguyen as merchants f-rom Japan, China, Portugal, Spain, Holland...often stopped over to exchange and purchase commodities.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(14, 5, 'Hoi An', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\"><br />Hoi An Old Town is located 30km south of Danang City, and 60km northeast of Tam Ky. Hoi An used to be an international trade center by sea on the east area in the 16th and 17th centuries. It was the busiest trading port in Dang Trong region of Vietnam during the reign of Nguyen as merchants f-rom Japan, China, Portugal, Spain, Holland...often stopped over to exchange and purchase commodities.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(15, 5, 'Hoi An', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\"><br />Hoi An Old Town is located 30km south of Danang City, and 60km northeast of Tam Ky. Hoi An used to be an international trade center by sea on the east area in the 16th and 17th centuries. It was the busiest trading port in Dang Trong region of Vietnam during the reign of Nguyen as merchants f-rom Japan, China, Portugal, Spain, Holland...often stopped over to exchange and purchase commodities.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(16, 6, 'The Perfume River(Vietnamese: Sông Hương or Hương Giang)', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The&nbsp;Perfume River(Vietnamese: S&ocirc;ng Hương or Hương Giang) is a river that crosses the capital city of Hue, in the central Vietnamese province of Thua Thien Hue. Perfume or Huong River is around 80 kilometers long, and owes its name to the fact that it flows through many forests of aromatic plants before reaching Hue, bringing with it a pure and fresh aroma.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(17, 6, 'The Perfume River(Vietnamese: Sông Hương or Hương Giang)', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The&nbsp;Perfume River(Vietnamese: S&ocirc;ng Hương or Hương Giang) is a river that crosses the capital city of Hue, in the central Vietnamese province of Thua Thien Hue. Perfume or Huong River is around 80 kilometers long, and owes its name to the fact that it flows through many forests of aromatic plants before reaching Hue, bringing with it a pure and fresh aroma.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(18, 6, 'The Perfume River(Vietnamese: Sông Hương or Hương Giang)', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The&nbsp;Perfume River(Vietnamese: S&ocirc;ng Hương or Hương Giang) is a river that crosses the capital city of Hue, in the central Vietnamese province of Thua Thien Hue. Perfume or Huong River is around 80 kilometers long, and owes its name to the fact that it flows through many forests of aromatic plants before reaching Hue, bringing with it a pure and fresh aroma.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(19, 7, 'Located beside the picturesque Huong River, Thien Mu Pagoda', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Located beside the picturesque Huong River, Thien Mu Pagoda, with its ancient architecture, adds its charm to this beautiful natural setting. The sound of Thien Mu bell is like the soul of Hue, ever resounding over the Huong River flow winding its way in front of the Citadel to the sea, resonating in the hearts and minds of the people and of visitors to Hue, the ancient capital.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(20, 7, 'Located beside the picturesque Huong River, Thien Mu Pagoda', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Located beside the picturesque Huong River, Thien Mu Pagoda, with its ancient architecture, adds its charm to this beautiful natural setting. The sound of Thien Mu bell is like the soul of Hue, ever resounding over the Huong River flow winding its way in front of the Citadel to the sea, resonating in the hearts and minds of the people and of visitors to Hue, the ancient capital.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(21, 7, 'Located beside the picturesque Huong River, Thien Mu Pagoda', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Located beside the picturesque Huong River, Thien Mu Pagoda, with its ancient architecture, adds its charm to this beautiful natural setting. The sound of Thien Mu bell is like the soul of Hue, ever resounding over the Huong River flow winding its way in front of the Citadel to the sea, resonating in the hearts and minds of the people and of visitors to Hue, the ancient capital.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(22, 8, 'Khai Dinh', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Khai Dinh ordered a tomb that had heavy French elements within its design. Unlike to his predecessors&rsquo;, Khai Dinh&rsquo;s tomb is built like a monument &ndash; built mainly of concrete, preceded by a wrought-iron triple gate; inside, guests will find a riotous battle between Eastern and Western design elements, colorfully decorated with pieces of broken glass and porcelain.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(23, 8, 'Khai Dinh', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Khai Dinh ordered a tomb that had heavy French elements within its design. Unlike to his predecessors&rsquo;, Khai Dinh&rsquo;s tomb is built like a monument &ndash; built mainly of concrete, preceded by a wrought-iron triple gate; inside, guests will find a riotous battle between Eastern and Western design elements, colorfully decorated with pieces of broken glass and porcelain.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(24, 8, 'Khai Dinh', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Khai Dinh ordered a tomb that had heavy French elements within its design. Unlike to his predecessors&rsquo;, Khai Dinh&rsquo;s tomb is built like a monument &ndash; built mainly of concrete, preceded by a wrought-iron triple gate; inside, guests will find a riotous battle between Eastern and Western design elements, colorfully decorated with pieces of broken glass and porcelain.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(25, 9, 'Tu Duc', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\"><br />The opulence of Tu Duc&rsquo;s tomb stands in contrast to the tragic length of his life. Tu Duc reigned longest among the Nguyens, dying childless after 35 years on the throne and cursing the French for their growing influence.<br /><br />Tu Duc is the only Emperor who moved his household into his own tomb, building a Forbidden City of his own on the grounds. Some believe this was due to the smallpox that rendered him infertile; in fact, out of the Emperors who built their tombs in Hue, Tu Duc is the only emperor who wrote his own stele, as he had no son to do this essential duty.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(26, 9, 'Tu Duc', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\"><br />The opulence of Tu Duc&rsquo;s tomb stands in contrast to the tragic length of his life. Tu Duc reigned longest among the Nguyens, dying childless after 35 years on the throne and cursing the French for their growing influence.<br /><br />Tu Duc is the only Emperor who moved his household into his own tomb, building a Forbidden City of his own on the grounds. Some believe this was due to the smallpox that rendered him infertile; in fact, out of the Emperors who built their tombs in Hue, Tu Duc is the only emperor who wrote his own stele, as he had no son to do this essential duty.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(27, 9, 'Tu Duc', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\"><br />The opulence of Tu Duc&rsquo;s tomb stands in contrast to the tragic length of his life. Tu Duc reigned longest among the Nguyens, dying childless after 35 years on the throne and cursing the French for their growing influence.<br /><br />Tu Duc is the only Emperor who moved his household into his own tomb, building a Forbidden City of his own on the grounds. Some believe this was due to the smallpox that rendered him infertile; in fact, out of the Emperors who built their tombs in Hue, Tu Duc is the only emperor who wrote his own stele, as he had no son to do this essential duty.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(28, 10, 'Hue', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Famously being one of&nbsp;Vietnam&rsquo;s seven UNESCO World Heritage Sites, the Imperial City of Hue has long been a must-see attraction for tourists visiting a hidden charm of Vietnam. The Imperial City of Hue was actually a walled fortress and palace belonged to the&nbsp;ancient city of Hue&nbsp;which was a capital city of the&nbsp;Nguyen Dynasty&nbsp;for 140 years date back from 1805 until 1945.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(29, 10, 'Hue', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Famously being one of&nbsp;Vietnam&rsquo;s seven UNESCO World Heritage Sites, the Imperial City of Hue has long been a must-see attraction for tourists visiting a hidden charm of Vietnam. The Imperial City of Hue was actually a walled fortress and palace belonged to the&nbsp;ancient city of Hue&nbsp;which was a capital city of the&nbsp;Nguyen Dynasty&nbsp;for 140 years date back from 1805 until 1945.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(30, 10, 'Hue', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Famously being one of&nbsp;Vietnam&rsquo;s seven UNESCO World Heritage Sites, the Imperial City of Hue has long been a must-see attraction for tourists visiting a hidden charm of Vietnam. The Imperial City of Hue was actually a walled fortress and palace belonged to the&nbsp;ancient city of Hue&nbsp;which was a capital city of the&nbsp;Nguyen Dynasty&nbsp;for 140 years date back from 1805 until 1945.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(31, 11, 'Hue Dong Ba Market Ho Chi Minh City Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace Sai gon River', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Vietnamese government-run War Remnants Museum in Ho Chi Minh City, also known as Saigon, is one of Vietnam\'s most popular museums. It draws 500,000 visitors annually, according to Christina Schwenkel, who wrote about the museum in her 2009 book \"The American War In Contemporary Vietnam: Transnational Remembrance and Representation.\" Foreigners comprise two-thirds of the visitors.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(32, 11, 'Hue Dong Ba Market Ho Chi Minh City Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace Sai gon River', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Vietnamese government-run War Remnants Museum in Ho Chi Minh City, also known as Saigon, is one of Vietnam\'s most popular museums. It draws 500,000 visitors annually, according to Christina Schwenkel, who wrote about the museum in her 2009 book \"The American War In Contemporary Vietnam: Transnational Remembrance and Representation.\" Foreigners comprise two-thirds of the visitors.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(33, 11, 'Hue Dong Ba Market Ho Chi Minh City Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace Sai gon River', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Vietnamese government-run War Remnants Museum in Ho Chi Minh City, also known as Saigon, is one of Vietnam\'s most popular museums. It draws 500,000 visitors annually, according to Christina Schwenkel, who wrote about the museum in her 2009 book \"The American War In Contemporary Vietnam: Transnational Remembrance and Representation.\" Foreigners comprise two-thirds of the visitors.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(34, 12, 'Ho Chi Minh', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Ho Chi Minh City (HCMC) is Vietnam at its most dizzying: a high-octane city of commerce and culture that has driven the country forward with its pulsating energy. A chaotic whirl, the city breathes life and vitality into all who settle here, and visitors cannot help but be hauled along for the ride.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(35, 12, 'Ho Chi Minh', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Ho Chi Minh City (HCMC) is Vietnam at its most dizzying: a high-octane city of commerce and culture that has driven the country forward with its pulsating energy. A chaotic whirl, the city breathes life and vitality into all who settle here, and visitors cannot help but be hauled along for the ride.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(36, 12, 'Ho Chi Minh', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Ho Chi Minh City (HCMC) is Vietnam at its most dizzying: a high-octane city of commerce and culture that has driven the country forward with its pulsating energy. A chaotic whirl, the city breathes life and vitality into all who settle here, and visitors cannot help but be hauled along for the ride.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(37, 13, 'Red Church', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Red Church (Notre Dame Cathedral) is the must-see church in Ho Chi Minh City, it is also one of the initial catholic churches in Ho Chi Minh City. Since 1865, Notre Dame Cathedral was the biggest church of France&rsquo;s constructions in Vietnam, built with Marseille brick, stained glass, steel frame from France and blue stone of Bien Hoa, constructed by the commander Bonard. Notre Dame has established the electric system at the beginning, instead of candles as other churches.<br /><br />Read more: Top famous Churches in Ho Chi Minh City&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(38, 13, 'Red Church', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Red Church (Notre Dame Cathedral) is the must-see church in Ho Chi Minh City, it is also one of the initial catholic churches in Ho Chi Minh City. Since 1865, Notre Dame Cathedral was the biggest church of France&rsquo;s constructions in Vietnam, built with Marseille brick, stained glass, steel frame from France and blue stone of Bien Hoa, constructed by the commander Bonard. Notre Dame has established the electric system at the beginning, instead of candles as other churches.<br /><br />Read more: Top famous Churches in Ho Chi Minh City&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(39, 13, 'Red Church', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Red Church (Notre Dame Cathedral) is the must-see church in Ho Chi Minh City, it is also one of the initial catholic churches in Ho Chi Minh City. Since 1865, Notre Dame Cathedral was the biggest church of France&rsquo;s constructions in Vietnam, built with Marseille brick, stained glass, steel frame from France and blue stone of Bien Hoa, constructed by the commander Bonard. Notre Dame has established the electric system at the beginning, instead of candles as other churches.<br /><br />Read more: Top famous Churches in Ho Chi Minh City&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(40, 14, 'The Saigon Central Post Office', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Saigon Central Post Office, at 2 Paris Commune Street opposite Notre-Dame cathedral is one of Vietnam&rsquo;s most beautiful examples of French colonial architecture.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(41, 14, 'The Saigon Central Post Office', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Saigon Central Post Office, at 2 Paris Commune Street opposite Notre-Dame cathedral is one of Vietnam&rsquo;s most beautiful examples of French colonial architecture.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(42, 14, 'The Saigon Central Post Office', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Saigon Central Post Office, at 2 Paris Commune Street opposite Notre-Dame cathedral is one of Vietnam&rsquo;s most beautiful examples of French colonial architecture.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(43, 15, 'Saigon City Hall', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Beautiful by day, stunning by night, Saigon City Hall is another excellent example of French colonial architecture in Ho Chi Minh City. Built between 1902 and 1908, the building was originally called Hotel de Ville de Saigon. Since 1975, the building has been the headquarters of the Peoples Committee in Ho Chi Minh City and is unfortunately not open to the general public. Only civil servants and cleaners are allowed.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(44, 15, 'Saigon City Hall', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Beautiful by day, stunning by night, Saigon City Hall is another excellent example of French colonial architecture in Ho Chi Minh City. Built between 1902 and 1908, the building was originally called Hotel de Ville de Saigon. Since 1975, the building has been the headquarters of the Peoples Committee in Ho Chi Minh City and is unfortunately not open to the general public. Only civil servants and cleaners are allowed.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(45, 15, 'Saigon City Hall', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Beautiful by day, stunning by night, Saigon City Hall is another excellent example of French colonial architecture in Ho Chi Minh City. Built between 1902 and 1908, the building was originally called Hotel de Ville de Saigon. Since 1975, the building has been the headquarters of the Peoples Committee in Ho Chi Minh City and is unfortunately not open to the general public. Only civil servants and cleaners are allowed.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(46, 16, 'Independence Palace (Dinh Doc Lap)', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Independence Palace (Dinh Độc Lập), also known as Reunification Palace (Vietnamese: Dinh Thống Nhất), built on the site of the former Norodom Palace. This is the place marking the complete victory of anti-American resistance war, libration of the South and national reunification</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(47, 16, 'Independence Palace (Dinh Doc Lap)', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Independence Palace (Dinh Độc Lập), also known as Reunification Palace (Vietnamese: Dinh Thống Nhất), built on the site of the former Norodom Palace. This is the place marking the complete victory of anti-American resistance war, libration of the South and national reunification</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(48, 16, 'Independence Palace (Dinh Doc Lap)', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Independence Palace (Dinh Độc Lập), also known as Reunification Palace (Vietnamese: Dinh Thống Nhất), built on the site of the former Norodom Palace. This is the place marking the complete victory of anti-American resistance war, libration of the South and national reunification</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(49, 17, 'Saigon River', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">&nbsp;Take a leisurely evening dinner cruise down the Saigon River, far away from the honking cars of the city. There will be a sumptuous feast, live jazz performances, fire dancing, and gorgeous night views to make the night comfortable and memorable.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(50, 17, 'Saigon River', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">&nbsp;Take a leisurely evening dinner cruise down the Saigon River, far away from the honking cars of the city. There will be a sumptuous feast, live jazz performances, fire dancing, and gorgeous night views to make the night comfortable and memorable.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(51, 17, 'Saigon River', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">&nbsp;Take a leisurely evening dinner cruise down the Saigon River, far away from the honking cars of the city. There will be a sumptuous feast, live jazz performances, fire dancing, and gorgeous night views to make the night comfortable and memorable.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(52, 18, 'The Mekong', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Mekong rises in the Himalayas in China, in an area called the &lsquo;three-rivers area&rsquo;. The other two rivers that rise here are the Yangtze (6,300 km) and Yellow (5,464 km) rivers.<br /><br />In terms of discharge, the Mekong is the 14th largest river in the world. It discharges 475 km&sup3; of water into the South China Sea every year &ndash; that&rsquo;s about 25 billion swimming pools. The Lao Peoples&rsquo; Democratic Republic (Lao PDR) contributes some 35% of this water, followed by Thailand and Cambodia (18% each), China (16%), Vietnam (11%) and Myanmar (2%).。</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(53, 18, 'The Mekong', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Mekong rises in the Himalayas in China, in an area called the &lsquo;three-rivers area&rsquo;. The other two rivers that rise here are the Yangtze (6,300 km) and Yellow (5,464 km) rivers.<br /><br />In terms of discharge, the Mekong is the 14th largest river in the world. It discharges 475 km&sup3; of water into the South China Sea every year &ndash; that&rsquo;s about 25 billion swimming pools. The Lao Peoples&rsquo; Democratic Republic (Lao PDR) contributes some 35% of this water, followed by Thailand and Cambodia (18% each), China (16%), Vietnam (11%) and Myanmar (2%).。</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(54, 18, 'The Mekong', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">The Mekong rises in the Himalayas in China, in an area called the &lsquo;three-rivers area&rsquo;. The other two rivers that rise here are the Yangtze (6,300 km) and Yellow (5,464 km) rivers.<br /><br />In terms of discharge, the Mekong is the 14th largest river in the world. It discharges 475 km&sup3; of water into the South China Sea every year &ndash; that&rsquo;s about 25 billion swimming pools. The Lao Peoples&rsquo; Democratic Republic (Lao PDR) contributes some 35% of this water, followed by Thailand and Cambodia (18% each), China (16%), Vietnam (11%) and Myanmar (2%).。</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(55, 19, 'Vinh Trang Chua', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Vĩnh Tr&agrave;ng Ch&ugrave;a is a Buddhist temple near Mỹ Tho in the Mekong Delta region of southern Vietnam. It is one of the best-known temples in the region.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(56, 19, 'Vinh Trang Chua', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Vĩnh Tr&agrave;ng Ch&ugrave;a is a Buddhist temple near Mỹ Tho in the Mekong Delta region of southern Vietnam. It is one of the best-known temples in the region.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(57, 19, 'Vinh Trang Chua', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">Vĩnh Tr&agrave;ng Ch&ugrave;a is a Buddhist temple near Mỹ Tho in the Mekong Delta region of southern Vietnam. It is one of the best-known temples in the region.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(58, 20, 'An Dong Market', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">An Dong Market Ho Chi Minh houses a variety of fashion wholesalers and handicrafts stalls. Located in District 5, this indoor market opens daily from 08:00 until 14:00. Divided into four levels, fashion enthusiasts can find an extensive collection of clothing, textiles, shoes, handbags, and accessories on the first two floors. The top floor is dedicated to quality handicrafts and trinkets made by skilled local artisans.<br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(59, 20, 'An Dong Market', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">An Dong Market Ho Chi Minh houses a variety of fashion wholesalers and handicrafts stalls. Located in District 5, this indoor market opens daily from 08:00 until 14:00. Divided into four levels, fashion enthusiasts can find an extensive collection of clothing, textiles, shoes, handbags, and accessories on the first two floors. The top floor is dedicated to quality handicrafts and trinkets made by skilled local artisans.<br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(60, 20, 'An Dong Market', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td width=\"538\">An Dong Market Ho Chi Minh houses a variety of fashion wholesalers and handicrafts stalls. Located in District 5, this indoor market opens daily from 08:00 until 14:00. Divided into four levels, fashion enthusiasts can find an extensive collection of clothing, textiles, shoes, handbags, and accessories on the first two floors. The top floor is dedicated to quality handicrafts and trinkets made by skilled local artisans.<br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc'),
(61, 21, 'Built by the Viet Cong', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"3\" width=\"538\">Built by the Viet Cong in the 1940s as protection from French air raids during the Indochina conflict, the Cu Chi Tunnels extend underground for more than 155 miles (250 km) in the vicinity of Ho Chi Minh City alone. This network of subterranean passageways later provided vital access to and strategic control over the rural areas surrounding the city during the Vietnam War (also known as the Second Indochina War or the American War), when the tunnels housed living quarters, hospitals, booby traps, and storage facilities for the Viet Cong.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en'),
(62, 21, 'Built by the Viet Cong', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"3\" width=\"538\">Built by the Viet Cong in the 1940s as protection from French air raids during the Indochina conflict, the Cu Chi Tunnels extend underground for more than 155 miles (250 km) in the vicinity of Ho Chi Minh City alone. This network of subterranean passageways later provided vital access to and strategic control over the rural areas surrounding the city during the Vietnam War (also known as the Second Indochina War or the American War), when the tunnels housed living quarters, hospitals, booby traps, and storage facilities for the Viet Cong.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn'),
(63, 21, 'Built by the Viet Cong', '<table width=\"538\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"3\" width=\"538\">Built by the Viet Cong in the 1940s as protection from French air raids during the Indochina conflict, the Cu Chi Tunnels extend underground for more than 155 miles (250 km) in the vicinity of Ho Chi Minh City alone. This network of subterranean passageways later provided vital access to and strategic control over the rural areas surrounding the city during the Vietnam War (also known as the Second Indochina War or the American War), when the tunnels housed living quarters, hospitals, booby traps, and storage facilities for the Viet Cong.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
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
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `slug`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(1, 1, 'lorem-ipsum', '', 'af0a9309c4f3ee9f6a03ac9c94d5f6e1.png', '2018-07-03 16:30:57', 'administrator', '2018-07-03 16:30:57', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
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
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'visa', 0, '', '64ca9cd9af4ebedaa555ec43b2843171.jpg', NULL, 0, 0, 0, '2018-07-03 16:24:36', 'administrator', '2018-07-03 16:24:36', 'administrator'),
(2, 'news', 0, '', '879665a3e6363e7131dcf07eb96b2333.jpg', NULL, 0, 0, 0, '2018-07-03 16:25:08', 'administrator', '2018-07-03 16:25:08', 'administrator'),
(3, 'blog', 0, '', '7f31f87be4bd75e4e8161c4a2bcfe4ab.jpg', NULL, 0, 0, 0, '2018-07-03 16:25:29', 'administrator', '2018-07-03 16:25:29', 'administrator'),
(4, 'destination', 3, '', '3b729d3ae1d6f0614daa4bb809e4d53f.jpg', NULL, 0, 0, 0, '2018-07-03 16:28:15', 'administrator', '2018-07-03 16:28:15', 'administrator'),
(5, 'travel-tips', 3, '', '2298a56c1c99a6b06b4b63eded77ed39.jpg', NULL, 0, 0, 0, '2018-07-03 16:28:30', 'administrator', '2018-07-03 16:28:30', 'administrator'),
(6, 'diary', 3, '', '6b758b8cf63391fc236c6e3fb4e7a2d4.jpg', NULL, 0, 0, 0, '2018-07-03 16:28:57', 'administrator', '2018-07-03 16:28:57', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `title`, `content`, `language`) VALUES
(1, 1, 'Visa', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(2, 1, '簽證', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(3, 1, '签证', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc'),
(4, 2, 'News', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(5, 2, '新聞', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(6, 2, '新闻', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc'),
(7, 3, 'Blog', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(8, 3, '博客', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(9, 3, '博客', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc'),
(10, 4, 'Destination', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(11, 4, '景點', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(12, 4, '景点', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc'),
(13, 5, 'Travel Tips', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(14, 5, '旅遊攻略', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(15, 5, '旅游攻略', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc'),
(16, 6, 'Diary', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(17, 6, '行程日記', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(18, 6, '行程日记', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_lang`
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
-- Đang đổ dữ liệu cho bảng `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `language`) VALUES
(1, 1, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(2, 1, 'Lorem Ipsum phon the', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn'),
(3, 1, 'Lorem Ipsum gian the', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。', 'Lorem Ipsumgian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
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
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `slug`, `avatar`, `image`, `is_deleted`, `is_activated`, `dateimg`, `vehicles`, `price`, `priceadults`, `pricechildren`, `priceinfants`, `percen`, `imglocaltion`, `localtion`, `librarylocaltion`, `date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `total_rating`, `count_rating`, `is_top`) VALUES
(1, 5, 'central-vietnam-with-world-heritage-tour-6-days', '', '6d705497eddd7aca2b7c0d18982dd262.png', 0, 0, '[\"eb8ccfb0e5a6683d0b132c57960b9402.png\",\"12bfaca10bd4a255841202be41fd8da8.png\",\"bcb48213fc821ee54b54d226f7d634c0.png\",\"32b07690ad987526afc35a6fd933186c.png\",\"d5b44808796ae43e3224f02e0ffd5d0b.png\",\"6566339083e4eda1db4fd6404d003273.png\"]', '[\"2\",\"5\",\"5\",\"5\",\"5\",\"2\"]', '10000', '100', '85', '30', 0, NULL, 'Viet Nam', '[\"1,2\",\"4,5\",\"5,8,9,10\",\"11\",\"12,19,20\",\"12\"]', '2018-07-12 00:00:00', '2018-07-03 20:23:53', 'administrator', '2018-07-03 20:23:53', 'administrator', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
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
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(1, 'tour-packages', 0, 0, '2018-07-03 10:48:29', 'administrator', '2018-07-03 10:48:29', 'administrator', '', '8eb6a02efecbd7e34a7afbb9e412eb7d.jpg', NULL, 0),
(2, 'backpack-travel', 0, 0, '2018-07-03 10:49:32', 'administrator', '2018-07-03 10:49:32', 'administrator', '', 'ca4feae4a48ed61fe5af5ebef1a55cda.jpg', NULL, 0),
(3, 'vietnam-overview', 0, 0, '2018-07-03 10:50:05', 'administrator', '2018-07-03 10:50:05', 'administrator', '', '4407733b793155f0013f832edd694243.jpg', NULL, 0),
(4, 'top-10-vietnam-tours', 1, 1, '2018-07-03 10:51:04', 'administrator', '2018-07-03 10:51:04', 'administrator', '', 'f3805a15d5e4a3474ee0afcb30947f31.jpg', NULL, 0),
(5, 'vietnam-classic-tours', 1, 0, '2018-07-03 10:51:53', 'administrator', '2018-07-03 10:51:53', 'administrator', '', '6cf479bd2330e1243031d25f6add4e4c.jpg', NULL, 0),
(6, 'top-10-tours', 2, 1, '2018-07-03 10:52:52', 'administrator', '2018-07-03 10:52:52', 'administrator', '', '0ba13cec52e3c1d0e1edb83aa337522b.jpg', NULL, 0),
(7, 'classic-tours', 2, 0, '2018-07-03 10:53:20', 'administrator', '2018-07-03 10:53:20', 'administrator', '', '7045318381425ec13babc05678eebccc.jpg', NULL, 0),
(8, 'history', 3, 0, '2018-07-03 10:54:15', 'administrator', '2018-07-03 10:54:15', 'administrator', '', '39d4fce5fb466aa99d000b8c534e575d.jpg', NULL, 0),
(9, 'geography', 3, 0, '2018-07-03 10:55:21', 'administrator', '2018-07-03 10:55:21', 'administrator', '', 'c39c972a3c726a5c29c94c04e0442a5a.jpg', NULL, 0),
(10, 'culture', 3, 0, '2018-07-03 10:56:07', 'administrator', '2018-07-03 10:56:07', 'administrator', '', 'a8e781593a6ac1be5bf7bac1e6a0f9d3.jpg', NULL, 0),
(11, 'cuisine', 3, 0, '2018-07-03 10:56:37', 'administrator', '2018-07-03 10:56:37', 'administrator', '', 'efbccb277b8d0accfdf81591e3d194c0.jpg', NULL, 0),
(12, 'weather', 3, 0, '2018-07-03 10:57:14', 'administrator', '2018-07-03 10:57:14', 'administrator', '', '2cf81e189441c5d3f1e7d77e3ea278c4.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category_lang`
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
-- Đang đổ dữ liệu cho bảng `product_category_lang`
--

INSERT INTO `product_category_lang` (`id`, `product_category_id`, `title`, `content`, `language`, `metakeywords`, `metadescription`) VALUES
(1, 1, 'Tour Packages', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Tour Packages', 'Tour Packages'),
(2, 1, '團體旅遊', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '團體旅遊', '團體旅遊'),
(3, 1, '團體旅遊', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '團體旅遊', '團體旅遊'),
(4, 2, 'Backpack travel', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Backpack travel', 'Backpack travel'),
(5, 2, '自由行', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '自由行', '自由行'),
(6, 2, '自由行', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '自由行', '自由行'),
(7, 3, 'Vietnam overview', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Vietnam overview', 'Vietnam overview'),
(8, 3, '越南概況', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '越南概況', '越南概況'),
(9, 3, '越南概况', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '越南概况', '越南概况'),
(10, 4, 'Top 10 Vietnam Tours', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Top 10 Vietnam Tours', 'Top 10 Vietnam Tours'),
(11, 4, '越南十大旅遊行程', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '越南十大旅遊行程', '越南十大旅遊行程'),
(12, 4, '越南十大旅游行程', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '越南十大旅游行程', '越南十大旅游行程'),
(13, 5, 'Vietnam classic Tours', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Vietnam classic Tours', 'Vietnam classic Tours'),
(14, 5, '越南旅遊經典行程', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', ' 越南旅遊經典行程 ', ' 越南旅遊經典行程 '),
(15, 5, '越南旅游经典行程', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', ' 越南旅游经典行程', ' 越南旅游经典行程'),
(16, 6, 'Top 10 Tours', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Top 10 Tours', 'Top 10 Tours'),
(17, 6, '十大旅遊行程', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '十大旅遊行程', '十大旅遊行程'),
(18, 6, '十大旅游行程', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '十大旅游行程', '十大旅游行程'),
(19, 7, 'Classic Tours', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Classic Tours', 'Classic Tours'),
(20, 7, '經典行程', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '經典行程', '經典行程'),
(21, 7, '经典行程', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '经典行程', '经典行程'),
(22, 8, 'History', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'History', 'History'),
(23, 8, '歷史', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', ' 歷史 ', ' 歷史 '),
(24, 8, '历史', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', ' 历史', ' 历史'),
(25, 9, 'Geography', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Geography', 'Geography'),
(26, 9, '地理', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '地理', '地理'),
(27, 9, '地理', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '地理', '地理'),
(28, 10, 'Culture', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Culture', 'Culture'),
(29, 10, '文化', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '文化', '文化'),
(30, 10, '文化', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '文化', '文化'),
(31, 11, 'Cuisine', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Cuisine', 'Cuisine'),
(32, 11, '飲食', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '飲食', '飲食'),
(33, 11, '饮食', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '饮食', '饮食'),
(34, 12, 'Weather', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en', 'Weather', 'Weather'),
(35, 12, '天氣', 'Lorem Ipsum phon the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'cn', '天氣', '天氣'),
(36, 12, '天气', 'Lorem Ipsum gian the，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，&rdquo;Leatraset&rdquo;公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件&rdquo;Aldus PageMaker&rdquo;也通过同样的方式使Lorem Ipsum落入大众的视野。', 'sc', '天气', '天气');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_lang`
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
-- Đang đổ dữ liệu cho bảng `product_lang`
--

INSERT INTO `product_lang` (`id`, `product_id`, `title`, `description`, `content`, `language`, `metakeywords`, `metadescription`, `datetitle`, `datecontent`, `tripnodes`, `detailsprice`) VALUES
(1, 1, 'Central Vietnam with World Heritage Tour 6 Days', '\"Five Vietnam’s diverse and fascinating cultural heritage are listed as UNESCO World Heritage \r\nIn addition to Ha Long Bay, the famous heritage of North VietNam, the remaining four world heritage sites are located in central Vietnam. According to the division of UNESCO, the remains of Hue Imperial City, Hoi An Ancient Town, and My Son Site belong to the “Cultural Heritage Site”, while Ha Long Bay and Phong Nha Cave are attributed to “Natural Heritage Site”. The current market is the only itinerary, a six-day tour of three World Heritage sites, one of the six largest beaches in the world and experience of the Mekong River Ecotourism.\r\n\"', '<table width=\"480\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" width=\"480\">Visiting Hue Imperial City, The representative building of Vietnamese architecture in the early 20th century--Khai Ding Mausoleum, Perfume River Cruise, Thien Mu Temple<br />Special arrangements for visits to Marble Mountain<br />&nbsp;Arrange visits to the Ancient Champa Kingdom Religious Center - Mt.<br />Special arrangement of French style buildings such as Ho Chi Minh landmark Red Church, Centennial Post Office and City Hall<br />Mekong Delta Ecotourism<br />A complimentary bottle of mineral water per person per day<br />Give a Vietnamese group photo B<br />Complimentary traditional Vietnamese top<br />NO SHOPPING all the way, not go shopping</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en', '', '', '[\"Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) \\u3001My Khe Beach Hoi An\",\"Hoi An My Son Holy Land(Vietnam Cultural Heritage)  Cam Nam Island\",\"Hoi An Hue (Hai Van Pass)\\u3001(Boat tour of Perfume River, Thien Mu Temple)  Khai Ding Tombs v Tu Duc Tombs Hue Imperial City\",\"Hue Dong Ba Market Ho Chi Minh City - Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace  Sai gon River \",\"Ho Chi Minh City My Tho Thai Son Island Cruise Vinh Trang temple Ho Chi Minh City Thien Hau Temple An dong Market\",\"Ho Chi Minh City Cu Chi Tunnels Ho Chi Minh City Taipei    \\t\"]', '[\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">Gathering at Taoyuan Zhongzheng International Airport, taking a Vietnam Airlines flight to Hanoi for a follow-on flight to central Vietnam\'s largest city, Da Nang. Da Nang has a population of about 1 million people, making it the largest deep-water port and business in the Central region center. Due to its good location and good port conditions, it has been an important international port and transit station since ancient times and it has been very prosperous. In addition, Da Nang is also the capital of the kingdom of Champa in the 2nd and 15th centuries. There are still remnants of the Champa period in the urban and suburban areas.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\"><br \\/>After having breakfast, we will go to Central Vietnam, the ancient capital of Hue, Vietnam&rsquo;s most mysterious coastline&mdash;you can admire the scenery of the beautiful coastline and enjoy the tense atmosphere of the Vietnam army during the Vietnam War. We will pass through Hai Van Pass. It is an important demarcation site for geography, transportation, climate and history in Vietnam. It was listed as a World Heritage Site in 2009. It is also considered by the National Geographic magazine as \\\" 50 Incredible Travel Experiences To Have Once In Your Life&rdquo;<br \\/><br \\/><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, we will go to Dongba Market near Dongcheng Gate. This market has been an important distribution center on the banks of the Perfume River since ancient times. It is also the ideal place to buy gifts, and it is also proper for you to understand the ancient customs of Hue. Among the important attractions, it is worth mentioning that Hue\'s famous products include poetry, embroidery, shrimp paste, and fish sauce.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, a shuttle bus will take you to the My Tho. From Ho Chi Minh City, take the national highway No. 1 to the southwest and take about 1.5 hours.<br \\/>Return to the ferryboat before lunch to enjoy the \\\" Osphronemidae fried fish\\\" at the My Tho City Restaurant, a specialty of the Mekong River.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, head to Tay Ninh Province in the west of Ho Chi Minh City and visit the world-famous Vietnam War trail, the Cu Chi Tunnel, with a total length of 200 kilometers. The tanks, helicopters, and sculptures, etc. It is like being exposed to the Vietnam War scene and experiencing the horror and cruelty of the war. After lunch,we will transfer to the airport and take a flight back to Tai Pei.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\"]', '<table width=\"1254\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Taking part in the tour\'s condition</td>\r\n<td width=\"538\"><br />Breaking up the contract\'s condition&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Your healthy is good<br />Booking Procedure: Only once you are completely happy with any holiday itinerary we create for you will we ask for a payment. In order that we can secure availability for your booking we would typically require a deposit of 50%.<br />Pay all the fee before the departure 20 days<br />Passport period is at least 6 months</td>\r\n<td width=\"538\">After the deposit: the default fee is 15% of the total amount<br />Before the departure 30 days: The default fee is 25% of the total amount<br />Before the departure 8 - 29 days ago: The default fee is 35% of the total amount<br />Before the departure 7 days ago: The default fee is 70% of the total amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\" width=\"1254\">Before deciding to participate in the itinerary, visitors are advised to refer to the itinerary, fees, included and non-payments, and breach of terms as stated above. In the case of asking others for help, please ask the person who has helped you for the relevant information.<br />Customers who are over 70 years old need to commit with us about health issues<br />Since voyages are scheduled on a per-flight basis, sometimes voyages may change time and visitors are not notified in advance<br />In the collective situation, the order of visits to tourist attractions may change, and our agency promises visitors all the attractions included in the tour itinerary.<br />In the event of natural disasters; safety problem ; aviation accidents and other issues, Diamond Travel Agency will also pay tourist fees (after dividing the visa fee).<br /><br /><br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '<table width=\"1254\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Detailed Intinerary</td>\r\n<td width=\"538\">Customize</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 1: Taipei QHanoiQDa nang (Indigo Bay) (Marble Moutain) 、My Khe BeachvHoi An</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 2:Hoi AnvMy Son Holy Land(Vietnam Cultural Heritage)v Cam Nam Island</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 3:Hoi Anv Hue (Hai Van Pass)、(Boat tour of Perfume River, Thien Mu Temple) vKhai Ding Tombs v Tu Duc Tombsv Hue Imperial City</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Day 4: HuevDong Ba Market vHo Chi Minh Cityv Red churh vMuseum of American War Crimes vCentennial Post Office vTown HallvReunification Palacev Sai gon River&nbsp;&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 5: Ho Chi Minh City vMy ThovThai Son Island CruisevVinh Trang temple vHo Chi Minh City<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vThien Hau Temple vAn dong Market<br /><br /></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Day 6: Ho Chi Minh CityvCu Chi TunnelsvHo Chi Minh CityQTaipei&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(2, 1, 'Central Vietnam with World Heritage Tour 6 Days(phồn thể)', '\"Five Vietnam’s diverse and fascinating cultural heritage are listed as UNESCO World Heritage \r\nIn addition to Ha Long Bay, the famous heritage of North VietNam, the remaining four world heritage sites are located in central Vietnam. According to the division of UNESCO, the remains of Hue Imperial City, Hoi An Ancient Town, and My Son Site belong to the “Cultural Heritage Site”, while Ha Long Bay and Phong Nha Cave are attributed to “Natural Heritage Site”. The current market is the only itinerary, a six-day tour of three World Heritage sites, one of the six largest beaches in the world and experience of the Mekong River Ecotourism.\r\n\"', '<table width=\"480\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" width=\"480\">Visiting Hue Imperial City, The representative building of Vietnamese architecture in the early 20th century--Khai Ding Mausoleum, Perfume River Cruise, Thien Mu Temple<br />Special arrangements for visits to Marble Mountain<br />&nbsp;Arrange visits to the Ancient Champa Kingdom Religious Center - Mt.<br />Special arrangement of French style buildings such as Ho Chi Minh landmark Red Church, Centennial Post Office and City Hall<br />Mekong Delta Ecotourism<br />A complimentary bottle of mineral water per person per day<br />Give a Vietnamese group photo B<br />Complimentary traditional Vietnamese top<br />NO SHOPPING all the way, not go shopping</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'cn', '', '', '[\"Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) \\u3001My Khe Beach Hoi An\",\"Hoi An My Son Holy Land(Vietnam Cultural Heritage)  Cam Nam Island\",\"Hoi An Hue (Hai Van Pass)\\u3001(Boat tour of Perfume River, Thien Mu Temple)  Khai Ding Tombs v Tu Duc Tombs Hue Imperial City\",\"Hue Dong Ba Market Ho Chi Minh City - Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace  Sai gon River \",\"Ho Chi Minh City My Tho Thai Son Island Cruise Vinh Trang temple Ho Chi Minh City Thien Hau Temple An dong Market\",\"Ho Chi Minh City Cu Chi Tunnels Ho Chi Minh City Taipei    \\t\"]', '[\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">Gathering at Taoyuan Zhongzheng International Airport, taking a Vietnam Airlines flight to Hanoi for a follow-on flight to central Vietnam\'s largest city, Da Nang. Da Nang has a population of about 1 million people, making it the largest deep-water port and business in the Central region center. Due to its good location and good port conditions, it has been an important international port and transit station since ancient times and it has been very prosperous. In addition, Da Nang is also the capital of the kingdom of Champa in the 2nd and 15th centuries. There are still remnants of the Champa period in the urban and suburban areas.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\"><br \\/>After having breakfast, we will go to Central Vietnam, the ancient capital of Hue, Vietnam&rsquo;s most mysterious coastline&mdash;you can admire the scenery of the beautiful coastline and enjoy the tense atmosphere of the Vietnam army during the Vietnam War. We will pass through Hai Van Pass. It is an important demarcation site for geography, transportation, climate and history in Vietnam. It was listed as a World Heritage Site in 2009. It is also considered by the National Geographic magazine as \\\" 50 Incredible Travel Experiences To Have Once In Your Life&rdquo;<br \\/><br \\/><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, we will go to Dongba Market near Dongcheng Gate. This market has been an important distribution center on the banks of the Perfume River since ancient times. It is also the ideal place to buy gifts, and it is also proper for you to understand the ancient customs of Hue. Among the important attractions, it is worth mentioning that Hue\'s famous products include poetry, embroidery, shrimp paste, and fish sauce.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, a shuttle bus will take you to the My Tho. From Ho Chi Minh City, take the national highway No. 1 to the southwest and take about 1.5 hours.<br \\/>Return to the ferryboat before lunch to enjoy the \\\" Osphronemidae fried fish\\\" at the My Tho City Restaurant, a specialty of the Mekong River.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, head to Tay Ninh Province in the west of Ho Chi Minh City and visit the world-famous Vietnam War trail, the Cu Chi Tunnel, with a total length of 200 kilometers. The tanks, helicopters, and sculptures, etc. It is like being exposed to the Vietnam War scene and experiencing the horror and cruelty of the war. After lunch,we will transfer to the airport and take a flight back to Tai Pei.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\"]', '<table width=\"1254\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Taking part in the tour\'s condition</td>\r\n<td width=\"538\"><br />Breaking up the contract\'s condition&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Your healthy is good<br />Booking Procedure: Only once you are completely happy with any holiday itinerary we create for you will we ask for a payment. In order that we can secure availability for your booking we would typically require a deposit of 50%.<br />Pay all the fee before the departure 20 days<br />Passport period is at least 6 months</td>\r\n<td width=\"538\">After the deposit: the default fee is 15% of the total amount<br />Before the departure 30 days: The default fee is 25% of the total amount<br />Before the departure 8 - 29 days ago: The default fee is 35% of the total amount<br />Before the departure 7 days ago: The default fee is 70% of the total amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\" width=\"1254\">Before deciding to participate in the itinerary, visitors are advised to refer to the itinerary, fees, included and non-payments, and breach of terms as stated above. In the case of asking others for help, please ask the person who has helped you for the relevant information.<br />Customers who are over 70 years old need to commit with us about health issues<br />Since voyages are scheduled on a per-flight basis, sometimes voyages may change time and visitors are not notified in advance<br />In the collective situation, the order of visits to tourist attractions may change, and our agency promises visitors all the attractions included in the tour itinerary.<br />In the event of natural disasters; safety problem ; aviation accidents and other issues, Diamond Travel Agency will also pay tourist fees (after dividing the visa fee).<br /><br /><br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '<table width=\"1254\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Detailed Intinerary</td>\r\n<td width=\"538\">Customize</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 1: Taipei QHanoiQDa nang (Indigo Bay) (Marble Moutain) 、My Khe BeachvHoi An</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 2:Hoi AnvMy Son Holy Land(Vietnam Cultural Heritage)v Cam Nam Island</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 3:Hoi Anv Hue (Hai Van Pass)、(Boat tour of Perfume River, Thien Mu Temple) vKhai Ding Tombs v Tu Duc Tombsv Hue Imperial City</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Day 4: HuevDong Ba Market vHo Chi Minh Cityv Red churh vMuseum of American War Crimes vCentennial Post Office vTown HallvReunification Palacev Sai gon River&nbsp;&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 5: Ho Chi Minh City vMy ThovThai Son Island CruisevVinh Trang temple vHo Chi Minh City<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vThien Hau Temple vAn dong Market<br /><br /></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Day 6: Ho Chi Minh CityvCu Chi TunnelsvHo Chi Minh CityQTaipei&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(3, 1, 'Central Vietnam with World Heritage Tour 6 Days(giản thể)', '\"Five Vietnam’s diverse and fascinating cultural heritage are listed as UNESCO World Heritage \r\nIn addition to Ha Long Bay, the famous heritage of North VietNam, the remaining four world heritage sites are located in central Vietnam. According to the division of UNESCO, the remains of Hue Imperial City, Hoi An Ancient Town, and My Son Site belong to the “Cultural Heritage Site”, while Ha Long Bay and Phong Nha Cave are attributed to “Natural Heritage Site”. The current market is the only itinerary, a six-day tour of three World Heritage sites, one of the six largest beaches in the world and experience of the Mekong River Ecotourism.\r\n\"', '<table width=\"480\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\" width=\"480\">Visiting Hue Imperial City, The representative building of Vietnamese architecture in the early 20th century--Khai Ding Mausoleum, Perfume River Cruise, Thien Mu Temple<br />Special arrangements for visits to Marble Mountain<br />&nbsp;Arrange visits to the Ancient Champa Kingdom Religious Center - Mt.<br />Special arrangement of French style buildings such as Ho Chi Minh landmark Red Church, Centennial Post Office and City Hall<br />Mekong Delta Ecotourism<br />A complimentary bottle of mineral water per person per day<br />Give a Vietnamese group photo B<br />Complimentary traditional Vietnamese top<br />NO SHOPPING all the way, not go shopping</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'sc', '', '', '[\"Taipei Hanoi Da nang (Indigo Bay) (Marble Moutain) \\u3001My Khe Beach Hoi An\",\"Hoi An My Son Holy Land(Vietnam Cultural Heritage)  Cam Nam Island\",\"Hoi An Hue (Hai Van Pass)\\u3001(Boat tour of Perfume River, Thien Mu Temple)  Khai Ding Tombs v Tu Duc Tombs Hue Imperial City\",\"Hue Dong Ba Market Ho Chi Minh City - Red churh Museum of American War Crimes Centennial Post Office Town Hall Reunification Palace  Sai gon River \",\"Ho Chi Minh City My Tho Thai Son Island Cruise Vinh Trang temple Ho Chi Minh City Thien Hau Temple An dong Market\",\"Ho Chi Minh City Cu Chi Tunnels Ho Chi Minh City Taipei    \\t\"]', '[\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">Gathering at Taoyuan Zhongzheng International Airport, taking a Vietnam Airlines flight to Hanoi for a follow-on flight to central Vietnam\'s largest city, Da Nang. Da Nang has a population of about 1 million people, making it the largest deep-water port and business in the Central region center. Due to its good location and good port conditions, it has been an important international port and transit station since ancient times and it has been very prosperous. In addition, Da Nang is also the capital of the kingdom of Champa in the 2nd and 15th centuries. There are still remnants of the Champa period in the urban and suburban areas.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\"><br \\/>After having breakfast, we will go to Central Vietnam, the ancient capital of Hue, Vietnam&rsquo;s most mysterious coastline&mdash;you can admire the scenery of the beautiful coastline and enjoy the tense atmosphere of the Vietnam army during the Vietnam War. We will pass through Hai Van Pass. It is an important demarcation site for geography, transportation, climate and history in Vietnam. It was listed as a World Heritage Site in 2009. It is also considered by the National Geographic magazine as \\\" 50 Incredible Travel Experiences To Have Once In Your Life&rdquo;<br \\/><br \\/><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, we will go to Dongba Market near Dongcheng Gate. This market has been an important distribution center on the banks of the Perfume River since ancient times. It is also the ideal place to buy gifts, and it is also proper for you to understand the ancient customs of Hue. Among the important attractions, it is worth mentioning that Hue\'s famous products include poetry, embroidery, shrimp paste, and fish sauce.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, a shuttle bus will take you to the My Tho. From Ho Chi Minh City, take the national highway No. 1 to the southwest and take about 1.5 hours.<br \\/>Return to the ferryboat before lunch to enjoy the \\\" Osphronemidae fried fish\\\" at the My Tho City Restaurant, a specialty of the Mekong River.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"<table width=\\\"774\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td colspan=\\\"2\\\" width=\\\"774\\\">After breakfast, head to Tay Ninh Province in the west of Ho Chi Minh City and visit the world-famous Vietnam War trail, the Cu Chi Tunnel, with a total length of 200 kilometers. The tanks, helicopters, and sculptures, etc. It is like being exposed to the Vietnam War scene and experiencing the horror and cruelty of the war. After lunch,we will transfer to the airport and take a flight back to Tai Pei.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\"]', '<table width=\"1254\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Taking part in the tour\'s condition</td>\r\n<td width=\"538\"><br />Breaking up the contract\'s condition&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Your healthy is good<br />Booking Procedure: Only once you are completely happy with any holiday itinerary we create for you will we ask for a payment. In order that we can secure availability for your booking we would typically require a deposit of 50%.<br />Pay all the fee before the departure 20 days<br />Passport period is at least 6 months</td>\r\n<td width=\"538\">After the deposit: the default fee is 15% of the total amount<br />Before the departure 30 days: The default fee is 25% of the total amount<br />Before the departure 8 - 29 days ago: The default fee is 35% of the total amount<br />Before the departure 7 days ago: The default fee is 70% of the total amount</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\" width=\"1254\">Before deciding to participate in the itinerary, visitors are advised to refer to the itinerary, fees, included and non-payments, and breach of terms as stated above. In the case of asking others for help, please ask the person who has helped you for the relevant information.<br />Customers who are over 70 years old need to commit with us about health issues<br />Since voyages are scheduled on a per-flight basis, sometimes voyages may change time and visitors are not notified in advance<br />In the collective situation, the order of visits to tourist attractions may change, and our agency promises visitors all the attractions included in the tour itinerary.<br />In the event of natural disasters; safety problem ; aviation accidents and other issues, Diamond Travel Agency will also pay tourist fees (after dividing the visa fee).<br /><br /><br /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '<table width=\"1254\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Detailed Intinerary</td>\r\n<td width=\"538\">Customize</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 1: Taipei QHanoiQDa nang (Indigo Bay) (Marble Moutain) 、My Khe BeachvHoi An</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 2:Hoi AnvMy Son Holy Land(Vietnam Cultural Heritage)v Cam Nam Island</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 3:Hoi Anv Hue (Hai Van Pass)、(Boat tour of Perfume River, Thien Mu Temple) vKhai Ding Tombs v Tu Duc Tombsv Hue Imperial City</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Day 4: HuevDong Ba Market vHo Chi Minh Cityv Red churh vMuseum of American War Crimes vCentennial Post Office vTown HallvReunification Palacev Sai gon River&nbsp;&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" width=\"716\">Day 5: Ho Chi Minh City vMy ThovThai Son Island CruisevVinh Trang temple vHo Chi Minh City<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vThien Hau Temple vAn dong Market<br /><br /></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Day 6: Ho Chi Minh CityvCu Chi TunnelsvHo Chi Minh CityQTaipei&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
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
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `users_id`, `rating`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 76, 14, 5.0, NULL, NULL, NULL, NULL, 0),
(2, 76, 14, 4.5, NULL, NULL, NULL, NULL, 0),
(3, 76, 14, 3.5, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('080a94k5a72mc6q7ltqlb7ukckpe8h8a', '::1', 1530624144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632343134343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('0rscsskqhfjpr02eijbqfq8nv0lqvqf9', '::1', 1530627029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632373032393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('1k9735c31npriqc5k5lupf5ahf0c2jvf', '::1', 1530594558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303539343535383b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('2n8t83vsm3r1gvsmdu9jdcb6hmjlipcb', '::1', 1530606651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630363635313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('2v2r2cmj0vn8av0eeueporpb18br7ov0', '::1', 1530627744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632373734343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('4hsou96vv6q3jplg16vmacaqvl1g6u6s', '::1', 1530605318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630353331383b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('52pls9i9l8ls5agvm0qrbldso3pfmvlt', '::1', 1530604262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630343236323b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('5ognro53352n2sehdb0n4crkphqg70fq', '::1', 1530602790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630323739303b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('7aad3f06tc9ahqbi27o7f19t24qe3tf4', '::1', 1530613609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303631333538393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363039363532223b6c6173745f636865636b7c693a313533303631333539363b),
('7ce6b3sn657b76dahfbuvhhi14m6jpcj', '::1', 1530597004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303539373030343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('8f98vlts2fuosrumd4ta0fg5249l2h5d', '::1', 1530604604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630343630343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('8l9o5101g9tejfjst8p9477qlc84udoh', '::1', 1530604949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630343934393b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('b13621r707saf39gdigq1rmfikrps67s', '::1', 1530624712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632343731323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('b7mf2c95490ckdhe92vhfqosp3ff75ah', '::1', 1530625267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632353236373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('ce63d31afg09mti37ckr5s67sve5hd0f', '::1', 1530627337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632373333373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('dlj5tectrn7q0qkvqsbkfauja9t5ehee', '::1', 1530601697, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630313639373b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('f4bkbl75netsvr0ojkkulajrmrp9lvgt', '::1', 1530628523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632383332313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('f4o7kdmcj1dao86ui30ve323atnnuln4', '::1', 1530603116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630333131363b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('ld3mt5u5gh4s7p3v0vam4iicnl1ic136', '::1', 1530625700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632353730303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('mtpvl432ir1tdgimajuqg2qpokgignqf', '::1', 1530609876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630393837363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353837393838223b6c6173745f636865636b7c693a313533303630393635323b),
('on27a0l6fpiagkp43nom4h5g5o3ai2h7', '::1', 1530601372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630313337323b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('ongl6dfhn9nd68ibnq1kl4032mbg53ms', '::1', 1530594934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303539343933343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('oqbqho3s91d6n9s972e6t88jajfkcup6', '::1', 1530628321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632383332313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('pkpb1qapmfhq6lg5e3u3m7jses5ov4l3', '::1', 1530610258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303631303232333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353837393838223b6c6173745f636865636b7c693a313533303630393635323b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('q26sc6p95ejjdqn4400usaunue1l4fkp', '::1', 1530606702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630363635313b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('qkj6sh3hvo95qbro889hub75chfmefbl', '::1', 1530626332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632363333323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('qr2bnn1r2sqe1hdsug1ghl3neqn7jvf4', '::1', 1530603464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630333436343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('rcsefa6n48f50vu4pu1baqvfbu8m64pu', '::1', 1530610223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303631303232333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353837393838223b6c6173745f636865636b7c693a313533303630393635323b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('ru0a0ppmho6f1qhefjslk8q14444ig5q', '::1', 1530603775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630333737353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('ss7eluu0k1qsle4f4lbfcsbp6h8r3fv0', '::1', 1530602084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630323038343b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('t2eqe0qgeh1igc0f6uqt0i66hro6rvig', '::1', 1530602395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303630323339353b6c616e67416262726576696174696f6e7c733a323a22656e223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330353136383133223b6c6173745f636865636b7c693a313533303538373938383b),
('vnlu85t0ppbuipe03a4ggisiv8c0l07s', '::1', 1530626002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303632363030323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353330363133353936223b6c6173745f636865636b7c693a313533303632333230313b6c616e67416262726576696174696f6e7c733a323a22656e223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `age`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1530623201, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL),
(2, '::1', 'Nguyễn', '$2y$08$0LO6/hE8V7teJQ1QkcDAb.czd5vZI4uwZUNR8msHz3HKjbGZlLpEu', NULL, '12quyen12@gmail.com', NULL, 'bGhWofBRGt79bDumdB0aHOad9b635d0d67e398d2', 1530516852, NULL, 1530516041, 1530516838, 1, 'Nguyễn', 'Quyền', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `about_id` (`about_id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`banner_id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blog_lang`
--
ALTER TABLE `blog_lang`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blog_id` (`blog_id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `localtion`
--
ALTER TABLE `localtion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `localtion_lang`
--
ALTER TABLE `localtion_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localtion_id` (`localtion_id`) USING BTREE;

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT cho bảng `banner_lang`
--
ALTER TABLE `banner_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT cho bảng `blog_lang`
--
ALTER TABLE `blog_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `localtion`
--
ALTER TABLE `localtion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `localtion_lang`
--
ALTER TABLE `localtion_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  ADD CONSTRAINT `about_lang_ibfk_1` FOREIGN KEY (`about_id`) REFERENCES `about` (`id`);

--
-- Các ràng buộc cho bảng `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD CONSTRAINT `banner_lang_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`);

--
-- Các ràng buộc cho bảng `blog_lang`
--
ALTER TABLE `blog_lang`
  ADD CONSTRAINT `blog_lang_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `customize`
--
ALTER TABLE `customize`
  ADD CONSTRAINT `customize_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `localtion_lang`
--
ALTER TABLE `localtion_lang`
  ADD CONSTRAINT `localtion_lang_ibfk_1` FOREIGN KEY (`localtion_id`) REFERENCES `localtion` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
