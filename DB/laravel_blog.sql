-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 11:58 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `category`, `created_at`, `updated_at`) VALUES
(1, 1, 'testing', 'sdasd', '1-2-3', '2020-04-01 01:18:19', '2020-04-01 01:18:19'),
(2, 1, 'taj', 'dasdasdsd testing', '2', '2020-04-01 01:30:37', '2020-04-01 01:30:37'),
(3, 1, 'xzcvsd', 'sadasdasd', '2', '2020-04-01 01:56:08', '2020-04-01 01:56:08'),
(4, 1, 'xzcvsd', 'asASasAS', '1-2-3', '2020-04-01 02:02:39', '2020-04-01 02:02:39'),
(5, 1, 'testing', 'sdasdasasdasd', '1-2-3', '2020-04-01 02:13:52', '2020-04-01 02:13:52'),
(6, 1, 'Glimpse of Paradise', 'sdasdasdasdasdasdasd', '1-2-3', '2020-04-01 02:16:22', '2020-04-01 02:16:22'),
(7, 1, 'asadasdasd', 'asdasdasd', '1', '2020-04-01 02:51:15', '2020-04-01 02:51:15'),
(8, 1, 'asadasdasd', 'asdasdasd', '1', '2020-04-01 02:51:49', '2020-04-01 02:51:49'),
(9, 1, 'asadasdasd', 'asdasdasd', '1', '2020-04-01 02:51:57', '2020-04-01 02:51:57'),
(10, 2, 'taj', 'SDASDASDASDASD', '2', '2020-04-01 04:24:26', '2020-04-01 04:24:26'),
(11, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:38', '2020-04-01 04:25:38'),
(12, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:39', '2020-04-01 04:25:39'),
(13, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:40', '2020-04-01 04:25:40'),
(14, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:40', '2020-04-01 04:25:40'),
(15, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:40', '2020-04-01 04:25:40'),
(16, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:40', '2020-04-01 04:25:40'),
(17, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:40', '2020-04-01 04:25:40'),
(18, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:25:41', '2020-04-01 04:25:41'),
(19, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:26:06', '2020-04-01 04:26:06'),
(20, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:26:07', '2020-04-01 04:26:07'),
(21, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:26:07', '2020-04-01 04:26:07'),
(22, 2, 'anand', 'SADASDASDASD', '1-2-3', '2020-04-01 04:26:08', '2020-04-01 04:26:08'),
(23, 2, 'anand', 'ASDASDASD', '3', '2020-04-01 04:26:19', '2020-04-01 04:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ygn4B'),
(2, 'hGdfE'),
(3, 'yORqP'),
(4, '9Aq5J'),
(5, 'cHSD2'),
(6, '2qSIQ'),
(7, '7gfF9');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_31_151737_categories', 1),
(4, '2020_03_31_152056_blogs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'anand', 'anandcomputergyaan@gmail.com', NULL, '$2y$10$Stks2i9V1/oCU1xumNUvcuskNaw.0T/4xLcrC1evCR8TQXV.liJie', NULL, '2020-03-31 23:05:09', '2020-03-31 23:05:09'),
(2, 'testong12', 'TESTING@gmail.com', NULL, '$2y$10$8MXWrQLJVEa5zL1B4vnbLeXeBsFTYdlldP4diMvztjfI4KORSRlZa', NULL, '2020-04-01 04:24:13', '2020-04-01 04:24:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
