-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2023 at 07:39 AM
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
(5, 'front/assets/image/hbnX4TtxUu.jpg', '2023-12-09 08:42:48', '2023-12-09 08:42:48'),
(6, 'front/assets/image/HtvGmNRkM6.jpg', '2023-12-09 08:43:06', '2023-12-09 08:43:06'),
(7, 'front/assets/image/l8vsYW7Fcx.jpg', '2023-12-09 08:43:30', '2023-12-09 08:43:30'),
(8, 'front/assets/image/o2KMEeLqV6.jpg', '2023-12-11 09:59:54', '2023-12-11 09:59:54');

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
(46, 'İçkini atmağın asan üsulu', 'ickini-atmagin-asan-usulu', 43, '2023-12-05 05:26:16', '2023-12-05 05:26:16'),
(47, 'Ruh sağlamlığımız üçün', 'ruh-saglamligimiz-ucun', 43, '2023-12-05 05:26:27', '2023-12-05 05:26:27'),
(48, 'Pozitiv düşün, pozitiv yaşa', 'pozitiv-dusun-pozitiv-yasa', 43, '2023-12-05 05:26:44', '2023-12-05 05:26:44'),
(49, 'Ərə Getməyin 50 Yolu', 'irade-terbiyesi', 43, '2023-12-05 05:27:02', '2023-12-12 05:50:43'),
(50, 'Bədii Ədəbiyyat', 'bedii-edebiyyat', 0, '2023-12-05 05:27:34', '2023-12-05 05:27:34'),
(51, 'Detektivlər. Trillerlər', 'detektivler-trillerler', 50, '2023-12-05 05:28:03', '2023-12-05 05:28:03'),
(52, 'Tarixi Romanlar', 'tarixi-romanlar', 50, '2023-12-05 05:28:21', '2023-12-05 05:28:21'),
(53, 'Sevgi Romanları', 'sevgi-romanlari', 50, '2023-12-05 05:28:32', '2023-12-05 05:28:32'),
(54, 'Simba', 'simba', 18, '2023-12-05 05:28:39', '2023-12-05 05:28:39'),
(55, 'Azərbaycan Və Dünya Klassikası', 'azerbaycan-ve-dunya-klassikasi', 50, '2023-12-05 05:29:29', '2023-12-05 05:29:29'),
(56, 'Poeziya', 'poeziya', 50, '2023-12-05 05:29:34', '2023-12-05 05:29:34'),
(57, 'Müasir Azərbaycan Ədəbiyyatı', 'muasir-azerbaycan-edebiyyati', 50, '2023-12-05 05:29:44', '2023-12-05 05:29:44'),
(58, 'Müasir Xarici Nəşrlər', 'muasir-xarici-nesrler', 50, '2023-12-05 05:29:54', '2023-12-05 05:29:54'),
(59, 'Fantastika. Mistika', 'fantastika-mistika', 50, '2023-12-05 05:30:08', '2023-12-05 05:30:08'),
(60, 'Uşaq Ədəbiyyatı', 'usaq-edebiyyati', 0, '2023-12-05 06:41:01', '2023-12-05 06:41:01'),
(61, 'Boyamalar', 'boyamalar', 60, '2023-12-05 06:41:28', '2023-12-05 06:41:28'),
(62, 'Nağıllar', 'nagillar', 60, '2023-12-05 06:41:38', '2023-12-05 06:41:38'),
(63, 'Uşaqlar Üçün Bədii Ədəbiyyat', 'usaqlar-ucun-bedii-edebiyyat', 60, '2023-12-05 06:41:50', '2023-12-05 06:41:50'),
(64, 'Ensiklopediyalar.Təlim', 'ensiklopediyalartelim', 60, '2023-12-05 06:42:01', '2023-12-05 06:42:01'),
(65, 'Bestseller', 'bestseller', 60, '2023-12-05 06:42:10', '2023-12-05 06:42:10'),
(66, 'Qeyri-Bədii Ədəbiyyat', 'qeyri-bedii-edebiyyat', 0, '2023-12-05 06:42:28', '2023-12-05 06:42:28'),
(67, 'Psixologiya və biznes', 'psixologiya-ve-biznes', 66, '2023-12-05 06:42:40', '2023-12-05 06:42:40'),
(68, 'Tarix Hüquq', 'tarix-huquq', 66, '2023-12-05 06:48:35', '2023-12-05 06:48:35'),
(69, 'Kulinariya.Asudə Vaxt Hobbi', 'kulinariyaasude-vaxt-hobbi', 66, '2023-12-05 06:48:53', '2023-12-05 06:48:53'),
(70, 'Tibb, sağlamlıq', 'tibb-saglamliq', 66, '2023-12-05 06:49:05', '2023-12-05 06:49:05'),
(71, 'Memuarlar Bioqrafiyalar Aforizmlər', 'memuarlar-bioqrafiyalar-aforizmler', 66, '2023-12-05 06:49:26', '2023-12-05 06:49:26'),
(72, 'Din Məxfilik', 'din-mexfilik', 66, '2023-12-05 06:49:46', '2023-12-05 06:49:46');

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
(13, 'front/assets/image/lOkdXUcPL9.jpeg', '2023-12-07 07:54:04', '2023-12-14 02:42:41'),
(14, 'front/assets/image/2EaKS1LMHd.png', '2023-12-07 07:54:23', '2023-12-07 07:54:23'),
(22, 'front/assets/image/tkeApudftW.png', '2023-12-14 02:22:45', '2023-12-14 02:22:45');

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
(29, '2023_12_12_075821_update_slides_table', 13);

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
  `percent` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_imgs`
--

INSERT INTO `products_imgs` (`id`, `author`, `title`, `img`, `price`, `created_at`, `updated_at`, `percent`) VALUES
(1, 'Aliquam vitae commod', 'Facere esse velit ut', 'front/assets/image/SMSOY4QH4T.jpeg', '32.00', '2023-12-08 09:31:58', '2023-12-14 03:39:02', '212.00'),
(4, 'Eos et aute quis mai', 'Voluptas perspiciati', 'front/assets/image/UGkafsgJY6.jpeg', '285.00', '2023-12-08 10:18:42', '2023-12-14 03:39:13', '55.00'),
(10, 'Optio sapiente nisi', 'Sunt id vitae sapie', 'front/assets/image/FVneQ1HmPA.jpeg', '268.00', '2023-12-14 03:23:31', '2023-12-14 03:37:31', '88.00');

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
(9, 'Nizami Gəncəvi', 'front/assets/image/NKiayjqYzF.jpeg', '2023-12-13 10:41:21', '2023-12-13 10:42:37', 'Əbu Məhəmməd İlyas ibn Yusif;');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `updated`
--
ALTER TABLE `updated`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
