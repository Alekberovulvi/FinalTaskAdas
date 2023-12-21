-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2023 at 08:01 AM
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
(5, 'front/assets/image/OkbLQ2pa6g.jpg', '2023-12-09 08:42:48', '2023-12-14 07:43:19'),
(6, 'front/assets/image/qd3aPKdSqi.jpg', '2023-12-09 08:43:06', '2023-12-14 07:43:26'),
(7, 'front/assets/image/nOkQ2A5zjh.jpg', '2023-12-09 08:43:30', '2023-12-14 07:43:39'),
(8, 'front/assets/image/EXUvWETgxf.jpg', '2023-12-11 09:59:54', '2023-12-14 07:43:46'),
(9, 'front/assets/image/Ve09U5Bq34.jpg', '2023-12-14 08:03:52', '2023-12-14 08:03:52'),
(10, 'front/assets/image/L4fplZE755.jpg', '2023-12-14 08:04:16', '2023-12-14 08:10:56'),
(11, 'front/assets/image/6TW9A9SIsa.jpg', '2023-12-14 08:11:10', '2023-12-14 08:11:10');

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
(46, 'Pozitiv Düşün Pozitiv Yaşa', 'ickini-atmagin-asan-usulu', 43, '2023-12-05 05:26:16', '2023-12-16 05:29:39'),
(47, 'Ruh sağlamlığımız üçün', 'ruh-saglamligimiz-ucun', 43, '2023-12-05 05:26:27', '2023-12-05 05:26:27'),
(48, 'Hakimiyyətin 48 Qanunu', 'pozitiv-dusun-pozitiv-yasa', 43, '2023-12-05 05:26:44', '2023-12-16 05:30:50'),
(49, 'Ərə Getməyin 49 Yolu', 'irade-terbiyesi', 43, '2023-12-05 05:27:02', '2023-12-16 05:27:45'),
(50, 'Bədii Ədəbiyyat', 'bedii-edebiyyat', 0, '2023-12-05 05:27:34', '2023-12-05 05:27:34'),
(51, 'Zamanın daha qısa tarixi', 'detektivler-trillerler', 50, '2023-12-05 05:28:03', '2023-12-16 07:27:18'),
(52, 'Mifin qısa tarixi', 'tarixi-romanlar', 50, '2023-12-05 05:28:21', '2023-12-16 07:27:40'),
(53, 'İtkin qız', 'sevgi-romanlari', 50, '2023-12-05 05:28:32', '2023-12-16 07:27:55'),
(54, 'Simba', 'simba', 18, '2023-12-05 05:28:39', '2023-12-05 05:28:39'),
(55, 'Harri Potter və alov qədəhi', 'azerbaycan-ve-dunya-klassikasi', 50, '2023-12-05 05:29:29', '2023-12-16 07:28:23'),
(60, 'Dördlərin İşarəsi', 'usaq-edebiyyati', 60, '2023-12-05 06:41:01', '2023-12-16 07:34:29'),
(61, 'Boyamalar', 'boyamalar', 60, '2023-12-05 06:41:28', '2023-12-05 06:41:28'),
(62, 'Nağıllar', 'nagillar', 60, '2023-12-05 06:41:38', '2023-12-05 06:41:38'),
(63, 'Uşaqlar Üçün Bədii Ədəbiyyat', 'usaqlar-ucun-bedii-edebiyyat', 60, '2023-12-05 06:41:50', '2023-12-05 06:41:50'),
(64, 'Ensiklopediyalar.Təlim', 'ensiklopediyalartelim', 60, '2023-12-05 06:42:01', '2023-12-05 06:42:01'),
(65, 'Bestseller', 'bestseller', 60, '2023-12-05 06:42:10', '2023-12-05 06:42:10'),
(81, 'Dedektiv', 'dedektiv', 0, '2023-12-16 07:34:54', '2023-12-16 07:34:54'),
(82, 'Dördlərin İşarəsi', 'dordlerin-isaresi', 81, '2023-12-16 07:35:06', '2023-12-16 07:35:06'),
(83, 'Sherlok Holms və Doktor Vatson', 'sherlok-holms-ve-doktor-vatson', 81, '2023-12-16 07:35:40', '2023-12-16 07:35:40'),
(84, 'Şəhər Yatarkən', 'seher-yatarken', 81, '2023-12-16 07:35:58', '2023-12-16 07:35:58'),
(85, 'Qara Volqa', 'qara-volqa', 81, '2023-12-16 07:36:11', '2023-12-16 07:36:11'),
(86, 'Roman', 'roman', 0, '2023-12-16 07:45:54', '2023-12-16 07:45:54'),
(87, 'Pəncərədəki Qız', 'penceredeki-qiz', 86, '2023-12-16 07:46:11', '2023-12-16 07:46:11'),
(88, 'Qatardakı qız', 'qatardaki-qiz', 86, '2023-12-16 07:46:32', '2023-12-16 07:46:32'),
(89, 'Ayvinin kitabı', 'avinin-kitabi', 86, '2023-12-16 07:46:58', '2023-12-16 07:50:41'),
(90, 'Xaç atası', 'xac-atasi', 86, '2023-12-16 07:47:18', '2023-12-16 07:47:18');

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
(13, 'front/assets/image/tr7w5kPodl.jpeg', '2023-12-07 07:54:04', '2023-12-14 05:47:16'),
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
(30, '2023_12_14_101945_create_shopproducts_table', 14);

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
(1, 'Veks Kinq', 'Pozitiv Düşün Pozitiv Yaşa', 'front/assets/image/LhJ1R4wrrb.jpeg', '25.00', '2023-12-08 09:31:58', '2023-12-16 05:33:18', '10.00'),
(4, 'Siyavuş Quliyev', 'Ruh Sağlamlığınlz Üçün', 'front/assets/image/2LoERrHAyf.jpeg', '28.00', '2023-12-08 10:18:42', '2023-12-16 05:34:53', '20.00'),
(10, 'Robert Qrin', 'Hakimiyyətin 48 Qanunu', 'front/assets/image/JCj46zWTr8.jpeg', '27.00', '2023-12-14 03:23:31', '2023-12-16 05:36:32', '20.00'),
(11, 'Ruhiyye Məmmədova', 'Ərə Getməyin 49 Yolu', 'front/assets/image/bMh1uRCFS1.jpeg', '7.00', '2023-12-14 06:01:21', '2023-12-16 05:39:11', '5.00'),
(12, 'Stiven Hokinq', 'Zamanın Daha Qısa Tarixi', 'front/assets/image/zZUDiBLIyS.jpg', '63.00', '2023-12-14 06:09:27', '2023-12-16 06:33:55', '20.00'),
(13, 'Karen Armstronq', 'Mifin Qısa Tarixi', 'front/assets/image/Q4uMDXjm6L.jpg', '70.00', '2023-12-14 06:10:24', '2023-12-16 06:35:17', '20.00'),
(14, 'Gllian Flynn', 'İtkin Qız', 'front/assets/image/C62asyueTU.jpeg', '43.00', '2023-12-14 07:32:25', '2023-12-16 06:36:42', '20.00'),
(15, 'Çingiz Abdullayev', 'Ağrı Mələyi', 'front/assets/image/mRRIFAZ40D.jpeg', '49.00', '2023-12-14 07:40:51', '2023-12-16 06:37:45', '20.00'),
(16, 'Arthur Konan Doyl', 'Dördlərin İşarəsi', 'front/assets/image/VmnUSv3EZC.jpg', '125.00', '2023-12-16 07:31:45', '2023-12-16 07:31:45', '20.00'),
(17, 'Arthur Konan Doyl', 'Sherlok Holms və Doktor Vatson', 'front/assets/image/iHuHhKzimd.jpg', '199.00', '2023-12-16 07:32:44', '2023-12-16 07:32:44', '30.00'),
(18, 'Cəmşid Əmirov', 'Şəhər Yatarkən', 'front/assets/image/RqW7Yq9MVs.jpg', '34.00', '2023-12-16 07:33:20', '2023-12-16 07:33:20', '15.00'),
(19, 'Cəmşid Əmirov', 'Qara Volqa', 'front/assets/image/Kak9K5opA1.jpg', '43.00', '2023-12-16 07:33:49', '2023-12-16 07:33:49', '20.00'),
(20, 'Gülsərən Budayicioğlu', 'Pəncərədəki Qız', 'front/assets/image/lBjplXK8sG.jpeg', '44.00', '2023-12-16 07:48:15', '2023-12-16 07:48:15', '20.00'),
(21, 'Paula Hawkins', 'Qatardakı qız', 'front/assets/image/sZrk4PHH6E.jpg', '49.00', '2023-12-16 07:49:01', '2023-12-16 07:49:01', '20.00'),
(22, 'Emi Encel', 'Ayvinin Kitabı', 'front/assets/image/IKzJKJ2Csz.jpg', '99.00', '2023-12-16 07:49:33', '2023-12-16 07:49:33', '20.00'),
(23, 'Mario Puzo', 'Xaç Atası', 'front/assets/image/WO66Tege84.jpg', '199.00', '2023-12-16 07:50:05', '2023-12-16 07:50:05', '20.00');

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
(9, 'Nizami Gəncəvi', 'front/assets/image/NKiayjqYzF.jpeg', '2023-12-13 10:41:21', '2023-12-13 10:42:37', 'Əbu Məhəmməd İlyas ibn Yusif;'),
(14, 'Albert', 'front/assets/image/7nf3ntGKzb.jpg', '2023-12-14 05:46:37', '2023-12-16 07:53:53', 'Enistein');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lunea England', 'popehuwo@mailinator.com', NULL, '$2y$12$Mk.hmd85shV.ULVSbpjppuOXvJgR0W96MCUwBOgu7diyNTLnDz1HO', NULL, '2023-12-21 03:40:06', '2023-12-21 03:40:06'),
(2, 'Alexandra Vaughn', 'becesa@mailinator.com', NULL, '$2y$12$Q9fgsaXhbsqGohOPjiARMu/Jl.41o.wyE52k/fGV9KNrVphJJiGdm', NULL, '2023-12-21 03:40:20', '2023-12-21 03:40:20'),
(3, 'Ulvi', 'cekilinbesirgelir@mail.ru', NULL, '$2y$12$YS3bZskwumbn5It2SQZP2erW0YQjzQfzDA7tyTi.A.HXzSbgO0keG', NULL, '2023-12-21 03:48:55', '2023-12-21 03:48:55'),
(5, 'Ulvi', 'alekberov@mail.ru', NULL, '$2y$12$MZp6T9EHPk/Eod52qfI2yuBau6yLpX8yWtJYaV.BvT56mwxqV4/vq', NULL, '2023-12-21 03:49:37', '2023-12-21 03:49:37');

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shopproducts`
--
ALTER TABLE `shopproducts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `updated`
--
ALTER TABLE `updated`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
