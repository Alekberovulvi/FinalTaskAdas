-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2024 at 01:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finaltaskdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ulvi Alekberov', 'elekberovulvi520@gmail.com', NULL, 'ulvifcbgts', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `img`, `created_at`, `updated_at`) VALUES
(5, 'front/assets/image/OkbLQ2pa6g.jpg', '2023-12-09 08:42:48', '2023-12-14 07:43:19'),
(6, 'front/assets/image/qd3aPKdSqi.jpg', '2023-12-09 08:43:06', '2023-12-14 07:43:26'),
(7, 'front/assets/image/nOkQ2A5zjh.jpg', '2023-12-09 08:43:30', '2023-12-14 07:43:39'),
(8, 'front/assets/image/EXUvWETgxf.jpg', '2023-12-11 09:59:54', '2023-12-14 07:43:46'),
(9, 'front/assets/image/Ve09U5Bq34.jpg', '2023-12-14 08:03:52', '2023-12-14 08:03:52'),
(10, 'front/assets/image/L4fplZE755.jpg', '2023-12-14 08:04:16', '2023-12-14 08:10:56'),
(11, 'front/assets/image/6TW9A9SIsa.jpg', '2023-12-14 08:11:10', '2023-12-14 08:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `up_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `up_id`, `created_at`, `updated_at`) VALUES
(43, 'Biznes, psixologiya, motivasiya', 'biznes-psixologiya-motivasiya', 0, '2023-12-05 05:25:34', '2023-12-05 05:25:34'),
(47, 'aaaa', 'aaaa', 43, '2023-12-05 05:26:27', '2024-01-29 03:51:11'),
(48, 'Motivasiya', 'motivasiya', 43, '2023-12-05 05:26:44', '2023-12-26 05:05:55'),
(54, 'Simba', 'simba', 18, '2023-12-05 05:28:39', '2023-12-05 05:28:39'),
(60, 'Dördlərin İşarəsi', 'usaq-edebiyyati', 60, '2023-12-05 06:41:01', '2023-12-16 07:34:29'),
(61, 'Boyamalar', 'boyamalar', 60, '2023-12-05 06:41:28', '2023-12-05 06:41:28'),
(62, 'Nağıllar', 'nagillar', 60, '2023-12-05 06:41:38', '2023-12-05 06:41:38'),
(63, 'Uşaqlar Üçün Bədii Ədəbiyyat', 'usaqlar-ucun-bedii-edebiyyat', 60, '2023-12-05 06:41:50', '2023-12-05 06:41:50'),
(64, 'Ensiklopediyalar.Təlim', 'ensiklopediyalartelim', 60, '2023-12-05 06:42:01', '2023-12-05 06:42:01'),
(65, 'Bestseller', 'bestseller', 60, '2023-12-05 06:42:10', '2023-12-05 06:42:10'),
(91, 'Biznes', 'biznes', 43, '2023-12-26 06:57:50', '2023-12-26 06:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Məkan və Təfərrüatlar', 'sdsdsds', 'elekberovulvi520@gmail.com', '+994517295859', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disposals`
--

CREATE TABLE `disposals` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disposals`
--

INSERT INTO `disposals` (`id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(83, 27, '0.00', '2024-01-24 12:43:54', '2024-01-24 12:43:54'),
(84, 27, '0.00', '2024-01-24 12:43:54', '2024-01-24 12:43:54'),
(85, 27, '0.00', '2024-01-24 12:43:54', '2024-01-24 12:43:54'),
(86, 27, '0.00', '2024-01-24 12:43:54', '2024-01-24 12:43:54'),
(87, 27, '0.00', '2024-01-24 12:43:54', '2024-01-24 12:43:54'),
(88, 27, '0.00', '2024-01-24 12:43:54', '2024-01-24 12:43:54'),
(89, 27, '0.00', '2024-01-24 12:43:55', '2024-01-24 12:43:55'),
(90, 27, '0.00', '2024-01-24 12:43:55', '2024-01-24 12:43:55'),
(91, 27, '0.00', '2024-01-24 12:43:55', '2024-01-24 12:43:55'),
(92, 27, '0.00', '2024-01-24 12:43:55', '2024-01-24 12:43:55'),
(93, 27, '0.00', '2024-01-24 12:43:55', '2024-01-24 12:43:55'),
(94, 27, '0.00', '2024-01-24 12:43:55', '2024-01-24 12:43:55'),
(95, 27, '0.00', '2024-01-24 12:43:56', '2024-01-24 12:43:56'),
(96, 27, '0.00', '2024-01-24 12:43:56', '2024-01-24 12:43:56'),
(97, 27, '0.00', '2024-01-24 12:43:56', '2024-01-24 12:43:56'),
(98, 27, '0.00', '2024-01-24 12:43:56', '2024-01-24 12:43:56'),
(99, 27, '0.00', '2024-01-24 12:43:56', '2024-01-24 12:43:56'),
(100, 27, '0.00', '2024-01-24 12:43:56', '2024-01-24 12:43:56'),
(101, 27, '0.00', '2024-01-24 12:43:57', '2024-01-24 12:43:57'),
(102, 27, '0.00', '2024-01-24 12:43:57', '2024-01-24 12:43:57'),
(103, 27, '0.00', '2024-01-24 12:46:03', '2024-01-24 12:46:03'),
(104, 27, '0.00', '2024-01-24 12:46:04', '2024-01-24 12:46:04'),
(105, 27, '0.00', '2024-01-24 12:46:04', '2024-01-24 12:46:04'),
(106, 27, '0.00', '2024-01-24 12:46:04', '2024-01-24 12:46:04'),
(107, 27, '0.00', '2024-01-24 12:46:04', '2024-01-24 12:46:04'),
(108, 27, '0.00', '2024-01-24 12:46:04', '2024-01-24 12:46:04'),
(109, 27, '0.00', '2024-01-24 12:46:04', '2024-01-24 12:46:04'),
(110, 27, '0.00', '2024-01-24 12:46:05', '2024-01-24 12:46:05'),
(111, 27, '0.00', '2024-01-24 12:46:05', '2024-01-24 12:46:05'),
(112, 27, '0.00', '2024-01-24 12:46:05', '2024-01-24 12:46:05'),
(113, 27, '0.00', '2024-01-24 12:46:05', '2024-01-24 12:46:05'),
(114, 27, '0.00', '2024-01-24 12:46:05', '2024-01-24 12:46:05'),
(115, 27, '0.00', '2024-01-24 12:46:05', '2024-01-24 12:46:05'),
(116, 27, '0.00', '2024-01-24 12:46:06', '2024-01-24 12:46:06'),
(117, 27, '0.00', '2024-01-24 12:46:06', '2024-01-24 12:46:06'),
(118, 27, '0.00', '2024-01-24 12:46:06', '2024-01-24 12:46:06'),
(119, 27, '0.00', '2024-01-24 12:46:06', '2024-01-24 12:46:06'),
(120, 27, '0.00', '2024-01-24 12:46:06', '2024-01-24 12:46:06'),
(121, 27, '0.00', '2024-01-24 12:46:07', '2024-01-24 12:46:07'),
(122, 27, '0.00', '2024-01-24 12:46:07', '2024-01-24 12:46:07'),
(123, 27, '0.00', '2024-01-24 12:46:08', '2024-01-24 12:46:08'),
(124, 27, '0.00', '2024-01-24 12:46:08', '2024-01-24 12:46:08'),
(125, 27, '0.00', '2024-01-24 12:46:08', '2024-01-24 12:46:08'),
(126, 27, '0.00', '2024-01-24 12:46:08', '2024-01-24 12:46:08'),
(127, 27, '0.00', '2024-01-24 12:46:09', '2024-01-24 12:46:09'),
(128, 27, '0.00', '2024-01-24 12:46:09', '2024-01-24 12:46:09'),
(129, 27, '0.00', '2024-01-24 12:46:09', '2024-01-24 12:46:09'),
(130, 27, '0.00', '2024-01-24 12:46:09', '2024-01-24 12:46:09'),
(131, 27, '0.00', '2024-01-24 12:46:09', '2024-01-24 12:46:09'),
(132, 27, '0.00', '2024-01-24 12:46:09', '2024-01-24 12:46:09'),
(133, 27, '0.00', '2024-01-24 12:46:10', '2024-01-24 12:46:10'),
(134, 27, '0.00', '2024-01-24 12:46:10', '2024-01-24 12:46:10'),
(135, 27, '0.00', '2024-01-24 12:46:10', '2024-01-24 12:46:10'),
(136, 27, '0.00', '2024-01-24 12:46:10', '2024-01-24 12:46:10'),
(137, 27, '0.00', '2024-01-24 12:46:10', '2024-01-24 12:46:10'),
(138, 27, '0.00', '2024-01-24 12:46:10', '2024-01-24 12:46:10'),
(139, 27, '0.00', '2024-01-24 12:46:11', '2024-01-24 12:46:11'),
(140, 27, '0.00', '2024-01-24 12:46:11', '2024-01-24 12:46:11'),
(141, 27, '0.00', '2024-01-24 12:46:11', '2024-01-24 12:46:11'),
(142, 27, '0.00', '2024-01-24 12:46:11', '2024-01-24 12:46:11'),
(143, 27, '0.00', '2024-01-24 12:46:44', '2024-01-24 12:46:44'),
(144, 27, '0.00', '2024-01-24 12:46:44', '2024-01-24 12:46:44'),
(145, 27, '0.00', '2024-01-24 12:46:44', '2024-01-24 12:46:44'),
(146, 27, '0.00', '2024-01-24 12:46:44', '2024-01-24 12:46:44'),
(147, 27, '0.00', '2024-01-24 12:46:45', '2024-01-24 12:46:45'),
(148, 27, '0.00', '2024-01-24 12:46:45', '2024-01-24 12:46:45'),
(149, 27, '0.00', '2024-01-24 12:46:45', '2024-01-24 12:46:45'),
(150, 27, '0.00', '2024-01-24 12:46:45', '2024-01-24 12:46:45'),
(151, 27, '0.00', '2024-01-24 12:46:45', '2024-01-24 12:46:45'),
(152, 27, '0.00', '2024-01-24 12:46:45', '2024-01-24 12:46:45'),
(153, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(154, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(155, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(156, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(157, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(158, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(159, 27, '0.00', '2024-01-24 12:46:46', '2024-01-24 12:46:46'),
(160, 27, '0.00', '2024-01-24 12:46:47', '2024-01-24 12:46:47'),
(161, 27, '0.00', '2024-01-24 12:46:47', '2024-01-24 12:46:47'),
(162, 27, '0.00', '2024-01-24 12:46:47', '2024-01-24 12:46:47'),
(163, 27, '0.00', '2024-01-24 12:46:57', '2024-01-24 12:46:57'),
(164, 27, '0.00', '2024-01-24 12:48:13', '2024-01-24 12:48:13'),
(165, 27, '0.00', '2024-01-24 12:49:42', '2024-01-24 12:49:42'),
(166, 27, '0.00', '2024-01-24 12:49:43', '2024-01-24 12:49:43'),
(167, 27, '0.00', '2024-01-24 12:49:44', '2024-01-24 12:49:44'),
(168, 27, '0.00', '2024-01-24 12:49:44', '2024-01-24 12:49:44'),
(169, 27, '0.00', '2024-01-24 12:49:44', '2024-01-24 12:49:44'),
(170, 27, '0.00', '2024-01-24 12:49:44', '2024-01-24 12:49:44'),
(171, 27, '0.00', '2024-01-24 12:49:44', '2024-01-24 12:49:44'),
(172, 27, '0.00', '2024-01-24 12:49:44', '2024-01-24 12:49:44'),
(173, 27, '0.00', '2024-01-24 12:49:45', '2024-01-24 12:49:45'),
(174, 27, '0.00', '2024-01-24 12:49:45', '2024-01-24 12:49:45'),
(175, 27, '0.00', '2024-01-24 12:49:45', '2024-01-24 12:49:45'),
(176, 27, '0.00', '2024-01-24 12:49:45', '2024-01-24 12:49:45'),
(177, 27, '0.00', '2024-01-24 12:49:45', '2024-01-24 12:49:45'),
(178, 27, '0.00', '2024-01-24 12:49:45', '2024-01-24 12:49:45'),
(179, 27, '0.00', '2024-01-24 12:49:46', '2024-01-24 12:49:46'),
(180, 27, '0.00', '2024-01-24 12:49:46', '2024-01-24 12:49:46'),
(181, 27, '0.00', '2024-01-24 12:49:46', '2024-01-24 12:49:46'),
(182, 27, '0.00', '2024-01-24 12:49:46', '2024-01-24 12:49:46'),
(183, 27, '0.00', '2024-01-24 12:49:46', '2024-01-24 12:49:46'),
(184, 27, '0.00', '2024-01-24 12:49:46', '2024-01-24 12:49:46'),
(185, 27, '0.00', '2024-01-24 12:49:47', '2024-01-24 12:49:47'),
(186, 27, '0.00', '2024-01-24 12:49:48', '2024-01-24 12:49:48'),
(187, 27, '0.00', '2024-01-24 12:49:48', '2024-01-24 12:49:48'),
(188, 27, '0.00', '2024-01-24 12:49:48', '2024-01-24 12:49:48'),
(189, 27, '0.00', '2024-01-24 12:49:48', '2024-01-24 12:49:48'),
(190, 27, '0.00', '2024-01-24 12:49:48', '2024-01-24 12:49:48'),
(191, 27, '0.00', '2024-01-24 12:49:49', '2024-01-24 12:49:49'),
(192, 27, '0.00', '2024-01-24 12:49:49', '2024-01-24 12:49:49'),
(193, 27, '0.00', '2024-01-24 12:49:49', '2024-01-24 12:49:49'),
(194, 27, '0.00', '2024-01-24 12:49:49', '2024-01-24 12:49:49'),
(195, 27, '0.00', '2024-01-24 12:49:49', '2024-01-24 12:49:49'),
(196, 27, '0.00', '2024-01-24 12:49:49', '2024-01-24 12:49:49'),
(197, 27, '0.00', '2024-01-24 12:49:50', '2024-01-24 12:49:50'),
(198, 27, '0.00', '2024-01-24 12:49:50', '2024-01-24 12:49:50'),
(199, 27, '0.00', '2024-01-24 12:49:50', '2024-01-24 12:49:50'),
(200, 27, '0.00', '2024-01-24 12:49:50', '2024-01-24 12:49:50'),
(201, 27, '0.00', '2024-01-24 12:49:50', '2024-01-24 12:49:50'),
(202, 27, '0.00', '2024-01-24 12:49:50', '2024-01-24 12:49:50'),
(203, 27, '0.00', '2024-01-24 12:49:51', '2024-01-24 12:49:51'),
(204, 27, '0.00', '2024-01-24 12:49:51', '2024-01-24 12:49:51'),
(205, 27, '0.00', '2024-01-24 12:49:51', '2024-01-24 12:49:51'),
(206, 27, '0.00', '2024-01-24 12:50:15', '2024-01-24 12:50:15'),
(207, 27, '28.00', '2024-01-24 12:50:51', '2024-01-24 12:50:51'),
(208, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(209, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(210, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(211, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(212, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(213, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(214, 27, '0.00', '2024-01-24 12:50:52', '2024-01-24 12:50:52'),
(215, 27, '0.00', '2024-01-24 12:50:53', '2024-01-24 12:50:53'),
(216, 27, '0.00', '2024-01-24 12:50:53', '2024-01-24 12:50:53'),
(217, 27, '0.00', '2024-01-24 12:50:53', '2024-01-24 12:50:53'),
(218, 27, '0.00', '2024-01-24 12:50:53', '2024-01-24 12:50:53'),
(219, 27, '0.00', '2024-01-24 12:50:53', '2024-01-24 12:50:53'),
(220, 27, '0.00', '2024-01-24 12:50:53', '2024-01-24 12:50:53'),
(221, 27, '0.00', '2024-01-24 12:50:54', '2024-01-24 12:50:54'),
(222, 27, '0.00', '2024-01-24 12:50:54', '2024-01-24 12:50:54'),
(223, 27, '0.00', '2024-01-24 12:50:54', '2024-01-24 12:50:54'),
(224, 27, '0.00', '2024-01-24 12:50:54', '2024-01-24 12:50:54'),
(225, 27, '0.00', '2024-01-24 12:50:54', '2024-01-24 12:50:54'),
(226, 27, '0.00', '2024-01-24 12:50:54', '2024-01-24 12:50:54'),
(227, 27, '0.00', '2024-01-24 12:50:56', '2024-01-24 12:50:56'),
(228, 27, '0.00', '2024-01-24 12:50:56', '2024-01-24 12:50:56'),
(229, 27, '0.00', '2024-01-24 12:50:56', '2024-01-24 12:50:56'),
(230, 27, '0.00', '2024-01-24 12:50:56', '2024-01-24 12:50:56'),
(231, 27, '0.00', '2024-01-24 12:50:56', '2024-01-24 12:50:56'),
(232, 27, '0.00', '2024-01-24 12:50:57', '2024-01-24 12:50:57'),
(233, 27, '0.00', '2024-01-24 12:50:57', '2024-01-24 12:50:57'),
(234, 27, '0.00', '2024-01-24 12:50:57', '2024-01-24 12:50:57'),
(235, 27, '0.00', '2024-01-24 12:50:57', '2024-01-24 12:50:57'),
(236, 27, '0.00', '2024-01-24 12:50:57', '2024-01-24 12:50:57'),
(237, 27, '0.00', '2024-01-24 12:50:57', '2024-01-24 12:50:57'),
(238, 27, '0.00', '2024-01-24 12:50:58', '2024-01-24 12:50:58'),
(239, 27, '0.00', '2024-01-24 12:50:58', '2024-01-24 12:50:58'),
(240, 27, '0.00', '2024-01-24 12:50:58', '2024-01-24 12:50:58'),
(241, 27, '0.00', '2024-01-24 12:50:58', '2024-01-24 12:50:58'),
(242, 27, '0.00', '2024-01-24 12:50:58', '2024-01-24 12:50:58'),
(243, 27, '0.00', '2024-01-24 12:50:58', '2024-01-24 12:50:58'),
(244, 27, '0.00', '2024-01-24 12:50:59', '2024-01-24 12:50:59'),
(245, 27, '0.00', '2024-01-24 12:50:59', '2024-01-24 12:50:59'),
(246, 27, '0.00', '2024-01-24 12:50:59', '2024-01-24 12:50:59'),
(247, 27, '0.00', '2024-01-24 12:51:04', '2024-01-24 12:51:04'),
(248, 27, '0.00', '2024-01-24 12:51:04', '2024-01-24 12:51:04'),
(249, 27, '0.00', '2024-01-24 12:51:04', '2024-01-24 12:51:04'),
(250, 27, '0.00', '2024-01-24 12:51:05', '2024-01-24 12:51:05'),
(251, 27, '0.00', '2024-01-24 12:51:05', '2024-01-24 12:51:05'),
(252, 27, '0.00', '2024-01-24 12:51:05', '2024-01-24 12:51:05'),
(253, 27, '0.00', '2024-01-24 12:51:05', '2024-01-24 12:51:05'),
(254, 27, '0.00', '2024-01-24 12:51:05', '2024-01-24 12:51:05'),
(255, 27, '0.00', '2024-01-24 12:51:05', '2024-01-24 12:51:05'),
(256, 27, '0.00', '2024-01-24 12:51:06', '2024-01-24 12:51:06'),
(257, 27, '0.00', '2024-01-24 12:51:06', '2024-01-24 12:51:06'),
(258, 27, '0.00', '2024-01-24 12:51:06', '2024-01-24 12:51:06'),
(259, 27, '0.00', '2024-01-24 12:51:06', '2024-01-24 12:51:06'),
(260, 27, '0.00', '2024-01-24 12:51:06', '2024-01-24 12:51:06'),
(261, 27, '0.00', '2024-01-24 12:51:06', '2024-01-24 12:51:06'),
(262, 27, '0.00', '2024-01-24 12:51:07', '2024-01-24 12:51:07'),
(263, 27, '0.00', '2024-01-24 12:51:07', '2024-01-24 12:51:07'),
(264, 27, '0.00', '2024-01-24 12:51:07', '2024-01-24 12:51:07'),
(265, 27, '0.00', '2024-01-24 12:51:07', '2024-01-24 12:51:07'),
(266, 27, '0.00', '2024-01-24 12:51:07', '2024-01-24 12:51:07'),
(267, 27, '45.00', '2024-01-24 12:58:39', '2024-01-24 12:58:39'),
(268, 27, '0.00', '2024-01-24 12:58:40', '2024-01-24 12:58:40'),
(269, 27, '0.00', '2024-01-24 12:58:40', '2024-01-24 12:58:40'),
(270, 27, '0.00', '2024-01-24 12:58:40', '2024-01-24 12:58:40'),
(271, 27, '0.00', '2024-01-24 12:58:40', '2024-01-24 12:58:40'),
(272, 27, '0.00', '2024-01-24 12:58:40', '2024-01-24 12:58:40'),
(273, 27, '0.00', '2024-01-24 12:58:40', '2024-01-24 12:58:40'),
(274, 27, '0.00', '2024-01-24 12:58:41', '2024-01-24 12:58:41'),
(275, 27, '0.00', '2024-01-24 12:58:41', '2024-01-24 12:58:41'),
(276, 27, '0.00', '2024-01-24 12:58:41', '2024-01-24 12:58:41'),
(277, 27, '0.00', '2024-01-24 12:58:41', '2024-01-24 12:58:41'),
(278, 27, '0.00', '2024-01-24 12:58:41', '2024-01-24 12:58:41'),
(279, 27, '0.00', '2024-01-24 12:58:41', '2024-01-24 12:58:41'),
(280, 27, '0.00', '2024-01-24 12:58:42', '2024-01-24 12:58:42'),
(281, 27, '0.00', '2024-01-24 12:58:42', '2024-01-24 12:58:42'),
(282, 27, '0.00', '2024-01-24 12:58:42', '2024-01-24 12:58:42'),
(283, 27, '0.00', '2024-01-24 12:58:42', '2024-01-24 12:58:42'),
(284, 27, '0.00', '2024-01-24 12:58:42', '2024-01-24 12:58:42'),
(285, 27, '0.00', '2024-01-24 12:58:42', '2024-01-24 12:58:42'),
(286, 27, '0.00', '2024-01-24 12:58:43', '2024-01-24 12:58:43'),
(287, 27, '0.00', '2024-01-24 12:58:44', '2024-01-24 12:58:44'),
(288, 27, '0.00', '2024-01-24 12:58:44', '2024-01-24 12:58:44'),
(289, 27, '0.00', '2024-01-24 12:58:44', '2024-01-24 12:58:44'),
(290, 27, '0.00', '2024-01-24 12:58:44', '2024-01-24 12:58:44'),
(291, 27, '0.00', '2024-01-24 12:58:44', '2024-01-24 12:58:44'),
(292, 27, '0.00', '2024-01-24 12:58:45', '2024-01-24 12:58:45'),
(293, 27, '0.00', '2024-01-24 12:58:45', '2024-01-24 12:58:45'),
(294, 27, '0.00', '2024-01-24 12:58:45', '2024-01-24 12:58:45'),
(295, 27, '0.00', '2024-01-24 12:58:45', '2024-01-24 12:58:45'),
(296, 27, '0.00', '2024-01-24 12:58:45', '2024-01-24 12:58:45'),
(297, 27, '0.00', '2024-01-24 12:58:45', '2024-01-24 12:58:45'),
(298, 27, '0.00', '2024-01-24 12:58:46', '2024-01-24 12:58:46'),
(299, 27, '0.00', '2024-01-24 12:58:46', '2024-01-24 12:58:46'),
(300, 27, '0.00', '2024-01-24 12:58:46', '2024-01-24 12:58:46'),
(301, 27, '0.00', '2024-01-24 12:58:46', '2024-01-24 12:58:46'),
(302, 27, '0.00', '2024-01-24 12:58:46', '2024-01-24 12:58:46'),
(303, 27, '0.00', '2024-01-24 12:58:46', '2024-01-24 12:58:46'),
(304, 27, '0.00', '2024-01-24 12:58:47', '2024-01-24 12:58:47'),
(305, 27, '0.00', '2024-01-24 12:58:47', '2024-01-24 12:58:47'),
(306, 27, '0.00', '2024-01-24 12:58:47', '2024-01-24 12:58:47'),
(307, 27, '0.00', '2024-01-24 12:58:52', '2024-01-24 12:58:52'),
(308, 27, '0.00', '2024-01-24 12:58:52', '2024-01-24 12:58:52'),
(309, 27, '0.00', '2024-01-24 12:58:52', '2024-01-24 12:58:52'),
(310, 27, '0.00', '2024-01-24 12:58:53', '2024-01-24 12:58:53'),
(311, 27, '0.00', '2024-01-24 12:58:53', '2024-01-24 12:58:53'),
(312, 27, '0.00', '2024-01-24 12:58:53', '2024-01-24 12:58:53'),
(313, 27, '0.00', '2024-01-24 12:58:53', '2024-01-24 12:58:53'),
(314, 27, '0.00', '2024-01-24 12:58:53', '2024-01-24 12:58:53'),
(315, 27, '0.00', '2024-01-24 12:58:53', '2024-01-24 12:58:53'),
(316, 27, '0.00', '2024-01-24 12:58:54', '2024-01-24 12:58:54'),
(317, 27, '0.00', '2024-01-24 12:58:54', '2024-01-24 12:58:54'),
(318, 27, '0.00', '2024-01-24 12:58:54', '2024-01-24 12:58:54'),
(319, 27, '0.00', '2024-01-24 12:58:54', '2024-01-24 12:58:54'),
(320, 27, '0.00', '2024-01-24 12:58:54', '2024-01-24 12:58:54'),
(321, 27, '0.00', '2024-01-24 12:58:54', '2024-01-24 12:58:54'),
(322, 27, '0.00', '2024-01-24 12:58:55', '2024-01-24 12:58:55'),
(323, 27, '0.00', '2024-01-24 12:58:55', '2024-01-24 12:58:55'),
(324, 27, '0.00', '2024-01-24 12:58:55', '2024-01-24 12:58:55'),
(325, 27, '0.00', '2024-01-24 12:58:55', '2024-01-24 12:58:55'),
(326, 27, '0.00', '2024-01-24 12:58:55', '2024-01-24 12:58:55'),
(327, 29, '27.00', '2024-01-25 04:22:22', '2024-01-25 04:22:22'),
(328, 29, '0.00', '2024-01-25 04:25:02', '2024-01-25 04:25:02'),
(329, 29, '0.00', '2024-01-25 04:25:34', '2024-01-25 04:25:34'),
(330, 29, '0.00', '2024-01-25 04:26:14', '2024-01-25 04:26:14'),
(331, 29, '27.00', '2024-01-25 04:26:41', '2024-01-25 04:26:41'),
(332, 29, '0.00', '2024-01-25 04:29:19', '2024-01-25 04:29:19'),
(333, 29, '7.00', '2024-01-25 04:29:35', '2024-01-25 04:29:35'),
(334, 29, '0.00', '2024-01-25 04:30:00', '2024-01-25 04:30:00'),
(335, 29, '0.00', '2024-01-25 04:32:11', '2024-01-25 04:32:11'),
(336, 29, '0.00', '2024-01-25 04:32:23', '2024-01-25 04:32:23'),
(337, 29, '0.00', '2024-01-25 04:33:24', '2024-01-25 04:33:24'),
(338, 29, '7.00', '2024-01-25 04:33:44', '2024-01-25 04:33:44'),
(339, 29, '79.00', '2024-01-25 04:36:12', '2024-01-25 04:36:12'),
(340, 29, '0.00', '2024-01-25 04:38:52', '2024-01-25 04:38:52'),
(341, 29, '7.00', '2024-01-25 04:41:42', '2024-01-25 04:41:42'),
(342, 29, '138.00', '2024-01-25 04:43:14', '2024-01-25 04:43:14'),
(343, 29, '28.00', '2024-01-25 04:45:58', '2024-01-25 04:45:58'),
(344, 29, '0.00', '2024-01-25 04:46:54', '2024-01-25 04:46:54'),
(345, 29, '0.00', '2024-01-25 04:47:08', '2024-01-25 04:47:08'),
(346, 29, '27.00', '2024-01-25 04:47:25', '2024-01-25 04:47:25'),
(347, 29, '27.00', '2024-01-25 04:47:53', '2024-01-25 04:47:53'),
(348, 29, '27.00', '2024-01-25 05:05:57', '2024-01-25 05:05:57'),
(349, 29, '0.00', '2024-01-25 05:10:36', '2024-01-25 05:10:36'),
(350, 29, '7.00', '2024-01-25 05:15:12', '2024-01-25 05:15:12'),
(351, 29, '0.00', '2024-01-25 05:16:04', '2024-01-25 05:16:04'),
(352, 29, '69.00', '2024-01-25 05:17:14', '2024-01-25 05:17:14'),
(353, 27, '54.00', '2024-01-29 03:49:35', '2024-01-29 03:49:35'),
(354, 27, '228.00', '2024-01-31 03:32:33', '2024-01-31 03:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `id` bigint UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`id`, `img`, `created_at`, `updated_at`) VALUES
(13, 'front/assets/image/wKcx6pUJHK.jpeg', '2023-12-07 07:54:04', '2024-01-30 08:50:23'),
(14, 'front/assets/image/kgoRHlBalf.jpeg', '2023-12-07 07:54:23', '2023-12-14 05:48:16'),
(22, 'front/assets/image/i845I98tP6.jpeg', '2023-12-14 02:22:45', '2023-12-14 07:33:22'),
(24, 'front/assets/image/PRoq6XFoW2.jpeg', '2023-12-14 05:49:03', '2023-12-14 05:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2023_11_23_113031_create_categories_table', 1),
(6, '2023_11_27_143453_create_posts_table', 2),
(7, '2023_12_02_101615_create_books_table', 3),
(8, '2023_12_02_101640_create_sub_books_table', 3),
(17, '2014_10_12_000000_create_users_table', 4),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 4),
(19, '2019_08_19_000000_create_failed_jobs_table', 4),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(21, '2023_12_05_120122_create_slides_table', 5),
(22, '2023_12_07_065804_create_imgs_table', 6),
(23, '2023_12_08_064946_create_products_table', 7),
(24, '2023_12_08_124841_destroy_title_id_from_products_img_table', 8),
(25, '2023_12_09_121713_create_brands_table', 9),
(26, '2023_12_11_143300_create_updated_table', 10),
(27, '2023_12_12_071245_update_products_table', 11),
(28, '2023_12_12_072816_insert_percent_field_to_product_imgs_table', 12),
(29, '2023_12_12_075821_update_slides_table', 13),
(30, '2023_12_14_101945_create_shopproducts_table', 14),
(31, '2023_12_26_062926_insert_category_id_into_products_imgs_table', 15),
(32, '2023_12_27_082925_create_admin_users_table', 16),
(33, '2023_12_28_065310_update_users_table', 17),
(34, '2023_12_28_091222_create_orders_table', 18),
(35, '2023_12_28_100734_create_carts_table', 19),
(36, '2024_01_06_131023_create_order_items_table', 20),
(37, '2024_01_23_094811_create_product_details_table', 21),
(38, '2024_01_24_164051_create_disposals_table', 22),
(39, '2024_01_24_171340_create_searches_table', 23),
(40, '2024_01_25_111443_create_contacts_table', 24),
(41, '2024_01_31_073643_create_orders_table', 25),
(42, '2024_01_31_073721_create_order_items_table', 26),
(43, '2024_01_31_083215_insert_qty_into_products_imgs_table', 27),
(44, '2024_01_31_101552_insert_views_into_products_imgs_table', 28),
(45, '2024_01_31_103145_create_settings_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `total_count` int UNSIGNED NOT NULL,
  `total_price` double NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci,
  `is_accepted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_count`, `total_price`, `user_id`, `country`, `city`, `address`, `state`, `zip_code`, `order_number`, `order_notes`, `is_accepted`, `created_at`, `updated_at`) VALUES
(6, 5, 173, 27, 'Azərbaycan', 'Vero adipisci qui mo', 'Labore quis eum mole', 'Voluptatum eius quia', 'Cupidatat dolor quia', '65ba0b120677a', NULL, 1, '2024-01-31 04:55:46', '2024-01-31 09:36:36'),
(7, 7, 260, 27, 'Azərbaycan', 'Nostrum qui non comm', 'Sint qui recusandae', 'Dignissimos aliquid', 'Adipisci cumque tene', '65ba0b711ab35', NULL, 0, '2024-01-31 04:57:21', '2024-01-31 09:38:18'),
(8, 14, 344, 27, 'Azərbaycan', 'Assumenda sed repreh', 'Aut aperiam alias in', 'Aliquam maiores ut e', 'Officia non nihil ad', '65ba4207c6a03', NULL, 1, '2024-01-31 08:50:15', '2024-01-31 09:40:25'),
(10, 3, 210, 27, 'Azərbaycan', 'Dicta ut molestias s', 'Cum qui nisi non ab', 'Qui nemo molestiae o', 'Ut dolor tempore ad', '65ba4eb5d8a2f', NULL, 1, '2024-01-31 09:44:21', '2024-01-31 09:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `qty` bigint UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `book_id`, `order_id`, `qty`, `price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 3, 25, 81, '2024-01-31 04:55:46', '2024-01-31 04:55:46'),
(2, 1, 6, 1, 25, 69, '2024-01-31 04:55:46', '2024-01-31 04:55:46'),
(3, 1, 6, 1, 25, 23, '2024-01-31 04:55:46', '2024-01-31 04:55:46'),
(4, 1, 7, 2, 25, 50, '2024-01-31 04:57:21', '2024-01-31 04:57:21'),
(5, 1, 7, 1, 25, 27, '2024-01-31 04:57:21', '2024-01-31 04:57:21'),
(6, 1, 7, 1, 25, 79, '2024-01-31 04:57:21', '2024-01-31 04:57:21'),
(7, 1, 7, 1, 25, 28, '2024-01-31 04:57:21', '2024-01-31 04:57:21'),
(8, 1, 7, 1, 25, 7, '2024-01-31 04:57:21', '2024-01-31 04:57:21'),
(9, 1, 7, 1, 25, 69, '2024-01-31 04:57:21', '2024-01-31 04:57:21'),
(10, 10, 8, 6, 27, 162, '2024-01-31 08:50:15', '2024-01-31 08:50:15'),
(11, 4, 8, 6, 28, 168, '2024-01-31 08:50:15', '2024-01-31 08:50:15'),
(12, 11, 8, 2, 7, 14, '2024-01-31 08:50:15', '2024-01-31 08:50:15'),
(13, 1, 9, 1, 25, 25, '2024-01-31 09:10:50', '2024-01-31 09:10:50'),
(14, 34, 10, 3, 70, 210, '2024-01-31 09:44:21', '2024-01-31 09:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_imgs`
--

CREATE TABLE `products_imgs` (
  `id` bigint UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent` decimal(8,2) NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `qty` int UNSIGNED DEFAULT NULL,
  `views` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_imgs`
--

INSERT INTO `products_imgs` (`id`, `author`, `title`, `img`, `price`, `created_at`, `updated_at`, `percent`, `category_id`, `qty`, `views`) VALUES
(1, 'Napoleon Hill', 'Düşün və Varlan', 'front/assets/image/r3ya0g3yNc.png', '25.00', '2023-12-08 09:31:58', '2024-01-31 09:10:50', '10.00', 91, 87, 0),
(4, 'Robert Kiosaki', 'Varlı Ata Kasıb Ata', 'front/assets/image/dJfh0obxHA.jpg', '28.00', '2023-12-08 10:18:42', '2024-01-31 08:50:15', '20.00', 91, 94, 0),
(10, 'Napoleon Hill', 'Zənginliyin Açarı', 'front/assets/image/lz3h1kVviF.jpg', '27.00', '2023-12-14 03:23:31', '2024-01-31 08:50:15', '20.00', 91, 94, 0),
(11, 'Brian Tracy', 'Bəhanələrə Yox', 'front/assets/image/Aqj5e2ldXF.jpg', '7.00', '2023-12-14 06:01:21', '2024-01-31 08:50:15', '5.00', 91, 98, 0),
(27, 'Simon Sinck', 'Niyə ilə Başla', 'front/assets/image/OHnvkswqqG.jpeg', '79.00', '2023-12-26 07:27:08', '2023-12-26 07:27:08', '20.00', 47, 100, 0),
(28, 'Con Keho', 'XXI Əsr Ağılın Gücü', 'front/assets/image/d9COheWYX5.jpeg', '69.00', '2023-12-26 07:31:54', '2023-12-26 07:31:54', '31.00', 47, 100, 0),
(29, 'Robert Cialdini', 'Inandırma Psixologiyası', 'front/assets/image/2QNN8QKu6A.png', '99.00', '2023-12-26 07:32:56', '2023-12-26 07:48:17', '15.00', 47, 100, 0),
(30, 'Robert Cialdini', 'Təsir Psixologiyası', 'front/assets/image/V5Jn8KKhEn.jpg', '45.00', '2023-12-26 07:49:16', '2023-12-26 07:49:16', '20.00', 47, 100, 0),
(31, 'Luiza Hey', '21 Günə həyatını dəyiş', 'front/assets/image/wsIo3ZVMYT.jpg', '44.00', '2023-12-26 07:50:40', '2023-12-26 07:50:40', '20.00', 48, 100, 0),
(32, 'Con Qordon', 'Şikayətlənməmək Qaydası', 'front/assets/image/i0jHXnOCrO.png', '64.00', '2023-12-26 07:51:27', '2023-12-26 07:51:27', '26.00', 48, 100, 0),
(33, 'Rayan Holidey', 'Eqo Düşməndir', 'front/assets/image/nfw7SLRhbL.jpg', '23.00', '2023-12-26 07:52:26', '2023-12-26 07:52:26', '14.00', 48, 100, 0),
(34, 'Daniel Çidiak', 'Kim Deyir ki Bacarmasan', 'front/assets/image/NJB7tXh0fA.jpg', '70.00', '2023-12-26 07:53:28', '2024-01-31 09:44:21', '20.00', 48, 97, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `percent` int NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `title`, `description`, `author`, `price`, `percent`, `img`, `created_at`, `updated_at`) VALUES
(1, 'dsdsdsd', 'dsdsd', 'dsdsds', '1.00', 1, 'dsdsd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_fb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_tw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_gp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_yb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `address`, `phone`, `email`, `url_fb`, `url_tw`, `url_gp`, `url_yb`, `created_at`, `updated_at`) VALUES
(1, 'Xəzər Mərdəkan', '0517295859', 'elekberovulvi520@gmail.com', 'https://www.facebook.com/', 'https://twitter.com/', 'https://myaccount.google.com/profile', 'https://www.youtube.com/', '2024-01-31 07:13:24', '2024-01-31 07:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `shopproducts`
--

CREATE TABLE `shopproducts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `image_path`, `created_at`, `updated_at`, `head`) VALUES
(15, 'De Taleyrand', 'front/assets/image/Pq5flthI9e.png', '2024-01-30 07:51:55', '2024-01-30 08:54:18', 'Taleyran  Məmurları'),
(16, 'Dünyanı Dəyişdirən', 'front/assets/image/q8kXlFEQJ7.jpg', '2024-01-30 08:51:25', '2024-01-30 09:01:48', '10 Kitab');

-- --------------------------------------------------------

--
-- Table structure for table `updated`
--

CREATE TABLE `updated` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_status` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_status`) VALUES
(27, 'Ulvi Alekberov', 'alekberovulvi520@gmail.com', NULL, '$2y$12$RTLX9ZcP6Yeoi5uMeZy0e.U/21sF60lQyVaLztPhq0zTDyg7j22Qq', NULL, NULL, NULL, 1),
(29, 'Alekberov99', 'elekberovulvi520@gmail.com', NULL, '$2y$12$gnM/bvtTpS.7/VbzI9XZf.AsvMYDmGlmgjPeJehrWTGTsCYMowLlu', NULL, '2024-01-25 02:23:59', '2024-01-25 02:23:59', 0),
(30, 'Ulvi', 'ulvina@code.edu.az', NULL, '$2y$12$pccsrhTJ7VTJmDD9LGh1qeHMLPRkXJMDk8Ctciwp6WRUajExtUheK', NULL, '2024-01-29 03:48:54', '2024-01-29 03:48:54', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposals`
--
ALTER TABLE `disposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_imgs`
--
ALTER TABLE `products_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopproducts`
--
ALTER TABLE `shopproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updated`
--
ALTER TABLE `updated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disposals`
--
ALTER TABLE `disposals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_imgs`
--
ALTER TABLE `products_imgs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopproducts`
--
ALTER TABLE `shopproducts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `updated`
--
ALTER TABLE `updated`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
