-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 08:16 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(10) unsigned NOT NULL,
  `name_txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Landline_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL,
  `name_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name_str`, `email`, `subject_str`, `msg_str`, `created_at`, `updated_at`) VALUES
(1, 'srideviashok', 'luvita@gmail.com', 'hello', 'hellosay', '2017-05-06 07:45:16', '2017-05-06 07:45:16'),
(3, 'doraemon', 'doraemonblue@gmail.com', 'hiii', 'ddddddddddddddddddddddddd', '2017-05-06 08:02:41', '2017-05-06 08:02:41'),
(4, 'bharath', 'bharath@gmail.com', 'ggggggggggggg', 'dfefdfdfdd', '2017-05-06 08:04:57', '2017-05-06 08:04:57'),
(5, 'lisa', 'lisa@gmail.com', 'hhhhhhhhhhhhhhhhhhhh', 'yyyyyyyyyyyyyyyyyyyyyyyyyyy', '2017-05-06 09:01:21', '2017-05-06 09:01:21'),
(7, 'ashok', 'ashok.ranganathen@gmail.com', 'Techm', 'oooooooooooooooooo', '2017-05-06 10:00:02', '2017-05-06 10:00:02'),
(8, 'ashok', 'enchanted@gmail.com', 'Techm', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '2017-05-06 10:00:56', '2017-05-06 10:00:56'),
(9, 'symbols', 'flowers@gmail.com', 'dddddddddddddd', 'ccccccccccccc', '2017-05-06 10:03:29', '2017-05-06 10:03:29'),
(10, 'laracast', 'laracast@gmail.com', 'rr', 'fffffffffff', '2017-05-06 10:04:45', '2017-05-06 10:04:45'),
(13, 'dorachutty', 'dorachutty11@gmail.com', 'ddddddddd', 'ssssssssssssssssssssssssss', '2017-05-06 10:28:57', '2017-05-06 10:28:57'),
(14, 'tulips', 'tulips@gmail.com', 'ttttttttttt', 'rrrrrrrrrrrrrr', '2017-05-06 10:29:59', '2017-05-06 10:29:59'),
(15, 'kolabear', 'kolabear@gmail.com', 'lpppppppppppp', 'jjjjjjjjjjjjjjjjj', '2017-05-06 11:27:16', '2017-05-06 11:27:16'),
(16, 'suganya dharshan', 'suganya@gmail.com', 'dddddd44', 'ssssssssssssssss', '2017-05-08 00:29:05', '2017-05-08 00:29:05'),
(17, 'Dharshan', 'dharshan@gmail.com', 'wwwwwwwwwwwww', 'ddddddddddddddddddddd', '2017-05-08 00:30:42', '2017-05-08 00:30:42'),
(18, 'nivi', 'nivi@gmail.com', 'nnnnnnnnnnnn', 'gggggggggggggggg', '2017-05-08 00:59:39', '2017-05-08 00:59:39'),
(19, 'kavya', 'kavya@gmail.com', 'kkkkkkk', 'gggghhhhhhhhnnnnnnn', '2017-05-08 01:00:26', '2017-05-08 01:00:26'),
(20, 'vidhya', 'vidhya@gmail.com', 'vvvvvvvvvvvvvvv', 'ggggggggg', '2017-05-08 01:06:24', '2017-05-08 01:06:24'),
(21, 'giselleg', 'giselle@gmail.com', 'gun', 'done', '2017-05-08 01:13:28', '2017-05-08 01:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2017_04_22_081356_create_company_table', 1),
(18, '2017_05_05_170923_create_contacts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL,
  `name_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_str` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name_str`, `image`, `address_str`, `mobile_str`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'laravel', NULL, 'Chennai', '9962854143', 'laravel@gmail.com', '$2y$10$o6NjY6Lz8k9bNBYR8aRuFOtPNiMD44/ROl3lxkDHGPe1Zp1tM0Pte', 1, 'vW5xZXcypDnEy3QiEhbBNHp359GGcGejdZAlsaKx7ggGzk7Le7Wr63CsAAH3', '2017-04-27 23:33:23', '2017-04-27 23:33:23'),
(2, 'giselle', '54231.jpg', 'Andalasia', '7981234576', 'gisellecute@gmail.com', '$2y$10$w5Hb8lwmegvl5404htMbHOcicTC4P4BtgIEkf4qGPjPqPL5JLVT9u', 0, 'mQ8PNS4c5SdbrzS2ntPjcZWiWRDj9OhZ0zuJ3bZRRKaIkinrk6jsE7RqYO7N', '2017-04-27 23:44:05', '2017-05-08 02:30:03'),
(3, 'dora the explorer', '42423.jpg', 'japan', '8123456789', 'dorachutty@gmail.com', '$2y$10$t5C.7iT6oUOqqo2C81ls6uljwN.Jdb1zaqEnUgmXf.8NCufQHsnpG', 0, NULL, '2017-05-02 02:14:45', '2017-05-02 02:14:45'),
(4, 'cindrella', '39914.jpeg', 'disneyland', '8914567890', 'cindrella@gmail.com', '$2y$10$LqLUfqb06TX8PIq6VLXYxeJKcHQ6EVSZ9jYY4DCslXQY7aWbAKnSa', 0, NULL, '2017-05-04 06:27:53', '2017-05-04 06:27:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`), ADD UNIQUE KEY `company_email_unique` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `contacts_email_unique` (`email`);

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
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
