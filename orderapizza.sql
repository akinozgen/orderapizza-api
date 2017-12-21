-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Ara 2017, 13:48:50
-- Sunucu sürümü: 10.1.26-MariaDB
-- PHP Sürümü: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `orderapizza`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `access_logs`
--

CREATE TABLE `access_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` int(11) NOT NULL,
  `dump` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `access_logs`
--

INSERT INTO `access_logs` (`id`, `ip`, `api_key`, `dump`, `created_at`, `updated_at`) VALUES
(1, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 07:56:27', '2017-12-21 07:56:27'),
(2, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 07:56:45', '2017-12-21 07:56:45'),
(3, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 07:58:04', '2017-12-21 07:58:04'),
(4, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"name\":\"asd\",\"price\":\"10\",\"description\":\"dsasdas das as das \",\"image_path\":\"#\",\"available\":\"1\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 07:59:05', '2017-12-21 07:59:05'),
(5, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/update\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"available\":\"0\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 07:59:29', '2017-12-21 07:59:29'),
(6, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/update\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"available\":\"1\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 07:59:37', '2017-12-21 07:59:37'),
(7, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"name\":\"asd\",\"price\":\"10\",\"description\":\"asdasd as dsa\",\"image_path\":\"#\",\"available\":\"0\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:00:52', '2017-12-21 08:00:52'),
(8, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:01:48', '2017-12-21 08:01:48'),
(9, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:01:53', '2017-12-21 08:01:53'),
(10, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:01:55', '2017-12-21 08:01:55'),
(11, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:01:56', '2017-12-21 08:01:56'),
(12, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/1\\/123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:03:44', '2017-12-21 08:03:44'),
(13, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/1\\/123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:03:50', '2017-12-21 08:03:50'),
(14, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:04:05', '2017-12-21 08:04:05'),
(15, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:04:35', '2017-12-21 08:04:35'),
(16, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/get_token?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"email\":\"akinozgen17@outlook.com\",\"password\":\"123456\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:11:41', '2017-12-21 08:11:41'),
(17, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/1234561513854701123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"email\":\"akinozgen17@outlook.com\",\"password\":\"123456\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:12:12', '2017-12-21 08:12:12'),
(18, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/1234561513854701123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"email\":\"akinozgen17@outlook.com\",\"password\":\"123456\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:12:49', '2017-12-21 08:12:49'),
(19, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/1234561513854701123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:12:59', '2017-12-21 08:12:59'),
(20, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/1234561513854701123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:14:15', '2017-12-21 08:14:15'),
(21, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/1234561513854701123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:14:28', '2017-12-21 08:14:28'),
(22, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/auth\\/authorize\\/1\\/1234561513854701123456?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:14:38', '2017-12-21 08:14:38'),
(23, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:23:41', '2017-12-21 08:23:41'),
(24, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:23:41', '2017-12-21 08:23:41'),
(25, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:49:40', '2017-12-21 08:49:40'),
(26, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:50:34', '2017-12-21 08:50:34'),
(27, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:51:01', '2017-12-21 08:51:01'),
(28, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menus\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:51:13', '2017-12-21 08:51:13'),
(29, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:51:28', '2017-12-21 08:51:28'),
(30, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get_menu_options\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:51:38', '2017-12-21 08:51:38'),
(31, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get_menu_options\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:51:41', '2017-12-21 08:51:41'),
(32, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get_menu_options\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:52:04', '2017-12-21 08:52:04'),
(33, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:52:13', '2017-12-21 08:52:13'),
(34, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"menu_id\":\"3\",\"name\":\"aa\",\"price\":\"11\",\"description\":\"dsada sda\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:53:10', '2017-12-21 08:53:10'),
(35, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/update\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"menu_id\":\"2\",\"name\":\"aaadas\",\"price\":\"11\",\"description\":\"dsada sda\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:53:31', '2017-12-21 08:53:31'),
(36, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/update\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"menu_id\":\"2\",\"name\":\"aaadas\",\"price\":\"11\",\"description\":\"dsada sda\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:08', '2017-12-21 08:54:08'),
(37, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/update\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"menu_id\":\"2\",\"name\":\"aaadas\",\"price\":\"11\",\"description\":\"asdasdas\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:30', '2017-12-21 08:54:30'),
(38, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:43', '2017-12-21 08:54:43'),
(39, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:48', '2017-12-21 08:54:48'),
(40, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:51', '2017-12-21 08:54:51'),
(41, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/delete\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:53', '2017-12-21 08:54:53'),
(42, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/delete\\/4?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 08:54:54', '2017-12-21 08:54:54'),
(43, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get_menu_options\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:02:39', '2017-12-21 09:02:39'),
(44, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:02:49', '2017-12-21 09:02:49'),
(45, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/menu_options\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:03:11', '2017-12-21 09:03:11'),
(46, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/additionals\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:05:59', '2017-12-21 09:05:59'),
(47, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/additionals\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:06:29', '2017-12-21 09:06:29'),
(48, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/additionals\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"name\":\"asd dsa\",\"price\":\"15\",\"description\":\"dsa asd dsa asd dsa asd\",\"image_path\":\"#\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:08:44', '2017-12-21 09:08:44'),
(49, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/additionals\\/update\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"price\":\"5\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:09:01', '2017-12-21 09:09:01'),
(50, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/additionals\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"price\":\"5\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:09:08', '2017-12-21 09:09:08'),
(51, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/additionals\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:09:14', '2017-12-21 09:09:14'),
(52, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:17:02', '2017-12-21 09:17:02'),
(53, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get\\/1\\/?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:19:52', '2017-12-21 09:19:52'),
(54, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get\\/1\\/?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:20:11', '2017-12-21 09:20:11'),
(55, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get_user_addresses\\/1\\/?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:20:26', '2017-12-21 09:20:26'),
(56, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get_user_addresses\\/1\\/?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:21:25', '2017-12-21 09:21:25'),
(57, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get_user_addresses\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:21:30', '2017-12-21 09:21:30'),
(58, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get_user_addresses\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:21:47', '2017-12-21 09:21:47'),
(59, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get_user_addresses\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:22:16', '2017-12-21 09:22:16'),
(60, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/get\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:22:47', '2017-12-21 09:22:47'),
(61, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"user_id\":\"1\",\"address_description\":\"i\\u015f\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:11', '2017-12-21 09:23:11'),
(62, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/update\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"address_description\":\"ev 2\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:25', '2017-12-21 09:23:25'),
(63, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/delete\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:38', '2017-12-21 09:23:38'),
(64, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/delete\\/3?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:40', '2017-12-21 09:23:40'),
(65, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:42', '2017-12-21 09:23:42'),
(66, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:46', '2017-12-21 09:23:46'),
(67, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/addresses\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:23:50', '2017-12-21 09:23:50'),
(68, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:32:27', '2017-12-21 09:32:27'),
(69, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:33:17', '2017-12-21 09:33:17'),
(70, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:33:24', '2017-12-21 09:33:24'),
(71, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/get_user_orders\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:33:31', '2017-12-21 09:33:31'),
(72, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"user_id\":\"1\",\"address_id\":\"1\",\"delivery\":\"2017-12-21 14:32:59\",\"price\":\"25\",\"delivered\":\"0\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:34:49', '2017-12-21 09:34:49'),
(73, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/update\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"delivered\":\"1\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:35:17', '2017-12-21 09:35:17'),
(74, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/update\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"delivered\":\"1\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:36:17', '2017-12-21 09:36:17'),
(75, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/update\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"delivered\":\"1\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:36:26', '2017-12-21 09:36:26'),
(76, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/delete\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:36:35', '2017-12-21 09:36:35'),
(77, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:36:39', '2017-12-21 09:36:39'),
(78, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/orders\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:36:39', '2017-12-21 09:36:39'),
(79, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:42:55', '2017-12-21 09:42:55'),
(80, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/get\\/1?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:43:01', '2017-12-21 09:43:01'),
(81, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/get\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:43:07', '2017-12-21 09:43:07'),
(82, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"username\":\"Deneme Kullan\\u0131c\\u0131\",\"email\":\"hardresset17@gmail.com\",\"password\":\"123456\",\"role\":\"user\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:44:55', '2017-12-21 09:44:55'),
(83, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/insert?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"username\":\"Deneme Kullan\\u0131c\\u0131\",\"email\":\"hardresset17@gmail.com\",\"password\":\"123456\",\"role\":\"user\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:45:18', '2017-12-21 09:45:18'),
(84, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/update\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"role\":\"admin\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:45:43', '2017-12-21 09:45:43'),
(85, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":{\"role\":\"admin\"},\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:45:59', '2017-12-21 09:45:59'),
(86, '::1', 1, '{\"CURRENT URL\":\"http:\\/\\/localhost\\/api\\/v1\\/users\\/delete\\/2?apikey=123456\",\"IP ADDRESS\":\"::1\",\"POST VALUES\":[],\"GET VALUES\":{\"apikey\":\"123456\"}}', '2017-12-21 09:46:02', '2017-12-21 09:46:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `additionals`
--

CREATE TABLE `additionals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'ev', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `api_keys`
--

INSERT INTO `api_keys` (`id`, `api_key`, `description`, `created_at`, `updated_at`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'development server', '2017-12-21 09:55:55', '2017-12-21 09:55:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `description`, `image_path`, `available`, `created_at`, `updated_at`) VALUES
(3, 'asdasd', 10.00, 'asdad asd sa da', '#', 1, '2017-12-21 10:50:09', '2017-12-21 10:50:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_options`
--

CREATE TABLE `menu_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_12_20_180915_create_users_table', 1),
(3, '2017_12_20_180952_create_menus_table', 1),
(4, '2017_12_20_181001_create_menu_options_table', 1),
(5, '2017_12_20_181009_create_additionals_table', 1),
(6, '2017_12_20_181020_create_addresses_table', 1),
(7, '2017_12_20_181216_create_orders_table', 1),
(8, '2017_12_20_215233_create_api_keys_table', 1),
(9, '2017_12_20_215351_create_access_logs_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `delivery` datetime NOT NULL,
  `price` double(8,2) NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Akın Özgen', 'akinozgen17@outlook.com', 'e10adc3949ba59abbe56e057f20f883e', '6f9daf60842020736208ed2a032d641f', '2017-12-21 10:09:00', '2017-12-21 08:11:41', 'user');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `access_logs`
--
ALTER TABLE `access_logs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `additionals`
--
ALTER TABLE `additionals`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu_options`
--
ALTER TABLE `menu_options`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `access_logs`
--
ALTER TABLE `access_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Tablo için AUTO_INCREMENT değeri `additionals`
--
ALTER TABLE `additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `menu_options`
--
ALTER TABLE `menu_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
