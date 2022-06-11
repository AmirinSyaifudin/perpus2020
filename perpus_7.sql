-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 12:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_7`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(108, 'Ryan Marketing'),
(109, 'Defri Programmer Laravel'),
(110, 'Amir Programmer Laravel'),
(111, 'Tamimi System Analis'),
(112, 'Fajar Desainer'),
(113, 'Bagus Multimedia'),
(114, 'Zahid Multimedia'),
(115, 'Leli Seketaris'),
(116, 'Badrus Project Manager'),
(117, 'Ari General Afrais'),
(118, 'Fahrul Desainer');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `title`, `description`, `cover`, `qty`, `created_at`, `updated_at`) VALUES
(61, 110, 'Belajar Laravel', 'Panduan Belajar Laravel dari nol sampai Mahir', 'assets/covers/QRelu9YRBYyen5cu8k8OGy0C2IfDXb7KCon4buX1.jpeg', '998', '2022-04-30 05:00:37', '2022-05-14 17:43:51'),
(62, 109, 'Laravel Lanjut', 'Panduan Belajar Laravel dari nol sampai Mahir', 'assets/covers/eJrYRWxn56JELJ4F837E43M5sQvQp3SjwDCIOJj9.jpeg', '98', '2022-04-30 05:01:22', '2022-05-14 17:44:49'),
(63, 112, 'Desain Grafis', 'Panduan Belajar Desain Grafis Pemula', 'assets/covers/SJb3DAnDR19DGBdE87TF1glFdMriSSBfrfmkKl4b.jpeg', '198', '2022-04-30 05:02:56', '2022-05-14 17:44:06'),
(64, 118, 'Desain Grafis Lanjut', 'Panduan Belajar Desain Grafis Lanjut  Grafis', 'assets/covers/3wLxdCSmGtMLgXBPWQXHANswhupqTNCgZ6DaMRdn.jpeg', '198', '2022-04-30 05:04:18', '2022-05-14 17:44:25'),
(65, 117, 'Backend Engineering JavaScript', 'Kamu akan belajar skill JavaScript dan SQL untuk pengembangan back end, membuat dan mendokumentasikan API, menguji dan menggunakan server, serta mengembangkan fitur web.', 'assets/covers/AN7EnGpXkeSdgk6W9snw7r8r9g5fEWjuDzomES5c.jpeg', '100', '2022-05-14 17:47:10', '2022-05-14 17:47:10'),
(66, 117, 'Digital Marketing', 'Kamu akan belajar menjadi T-Shaped Digital Marketer, mulai dari merencanakan, melaksanakan, dan mengoptimalkan kampanye pemasaran digital khususnya Facebook Paid Ads, serta melaporkan hasilnya!', 'assets/covers/9yrCgvEHLL0kEcCPKE8aPU5eJzpl2IAok75s2W2h.jpeg', '1000', '2022-05-14 17:47:48', '2022-05-14 17:47:48'),
(67, 109, 'Full-Stack Website Development', 'Pemula jangan takut! Kuasai bahasa pemrograman JavaScript, CSS, HTML dari nol selama 6 bulan.', 'assets/covers/Zk1BWz6YwlgO2BpbkBtSSJsMIbIJxfryDNqHhAOU.jpeg', '100', '2022-05-14 17:48:25', '2022-05-14 17:48:25'),
(68, 113, 'Product Management', 'Belajar Product Management dari awam sampe jago selama 4 bulan, biar bisa ciptakan inovasi produk digital.', 'assets/covers/kEKm9O0awmWgJYpcWhXWusGoYIrnbX6XKFIooZIn.jpeg', '100', '2022-05-14 17:49:16', '2022-05-14 17:49:16'),
(69, 110, 'UI/UX Research & Design', 'Yang awam jangan minder! Jadi mahir bikin produk lebih menarik pakai tools profesional selama 4 bulan.', 'assets/covers/j3ExGzFxkpPFPwnkjb1cqVXLblE85rXLqdYQg7yT.jpeg', '100', '2022-05-14 17:49:53', '2022-05-14 17:49:53'),
(70, 113, 'Android Engineering', 'Dari awam sampai jadi pro! Belajar bahasa pemrograman Kotlin & Android Dev selama 4 bulan.', 'assets/covers/p79FSm9R6uFyi5YBhDQOH6ZRFzwlnvqO6hCNMhFH.jpeg', '1000', '2022-05-14 17:50:32', '2022-05-14 17:50:32'),
(71, 109, 'Business Intelligence Analysis', 'Jadi ahli dibidang Analysis dengan kuasai Google Data Studio dan skill lainnya dari nol selama 2 bulan.', 'assets/covers/ciKGcuzO2jjYBlJNIXmKx4ZmfeNaCcSvA78fIPu2.jpeg', '1000', '2022-05-14 17:51:06', '2022-05-14 17:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_history`
--

CREATE TABLE `borrow_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `returned_at` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrow_history`
--

INSERT INTO `borrow_history` (`id`, `user_id`, `book_id`, `returned_at`, `admin_id`, `created_at`, `updated_at`) VALUES
(49, 1, 61, NULL, NULL, '2022-04-30 05:19:25', '2022-04-30 05:19:25'),
(50, 1, 62, NULL, NULL, '2022-04-30 05:19:28', '2022-04-30 05:19:28'),
(51, 1, 64, NULL, NULL, '2022-04-30 05:19:31', '2022-04-30 05:19:31'),
(52, 1, 63, NULL, NULL, '2022-04-30 05:19:34', '2022-04-30 05:19:34'),
(53, 11, 61, NULL, NULL, '2022-04-30 05:22:05', '2022-04-30 05:22:05'),
(54, 11, 62, NULL, NULL, '2022-04-30 05:22:07', '2022-04-30 05:22:07'),
(55, 11, 64, NULL, NULL, '2022-04-30 05:22:15', '2022-04-30 05:22:15'),
(56, 11, 63, NULL, NULL, '2022-04-30 05:22:19', '2022-04-30 05:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_23_125824_create_authors_table', 1),
(5, '2020_03_23_130418_create_books_table', 1),
(6, '2020_03_23_131417_create_borrow_history_table', 1),
(7, '2020_03_23_141936_create_permission_tables', 2),
(8, '2020_03_25_055725_add_qty_on_books_table', 3),
(9, '2020_04_14_152429_add_returned_at_and_receiver_user_id_on_borrow_history_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 8),
(2, 'App\\User', 7),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('amirinsyaifudin6@gmail.com', '$2y$10$5UtvGgp/3TcxV0Gs2n48WeYE9a9qGQ9FACsXUDkbgF7H2.bULPoGW', '2020-03-23 17:55:21'),
('andi@gmail.com', '$2y$10$0y8eThMqh0SvEh.xIoBX1eK/UQFXwKd3UoRKxxMctgTZFB3Y.9OmW', '2020-03-23 18:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-03-24 00:15:13', '2020-03-24 00:15:13'),
(2, 'user', 'web', '2020-03-24 00:15:13', '2020-03-24 00:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Amir Sy', 'amirinsyaifudin6@gmail.com', NULL, '$2y$10$ClK5JBLV55Tk59N8x/o1OOgrv5IIM3WT/43iBqYe9OqGNKzhz7Y8W', NULL, '2020-03-23 16:20:32', '2020-03-23 16:20:32'),
(2, 'Andi Putra', 'andi@gmail.com', '2020-03-23 18:42:02', '$2y$10$xOcERet6M10CH.DxVp4a/.Ao8Q6I.llyhqTQvuKEh99wvdRgc5VH6', NULL, '2020-03-23 17:57:25', '2020-03-23 18:42:02'),
(3, 'raka', 'rakainuy@gmail.com', NULL, '$2y$10$Gm/PbCeULCgY4lmHgEj/uurCh7kyai6Qj9UWGIjceD7yWAeG7mlpm', NULL, '2020-03-23 18:29:02', '2020-03-23 18:29:02'),
(4, 'Dodi Hardoyo', 'dodi@perpus.test', '2020-03-23 18:39:29', '$2y$10$huh9N00xpZ9EKsIgPCEm0OONchny47cG/0nJ6UtyAvIf9try8whvq', NULL, '2020-03-23 18:31:22', '2020-03-23 18:39:29'),
(5, 'ahmad', 'ahmad@gmail.com', '2020-03-23 23:42:08', '$2y$10$o0QI/gpFYVPcBuRy/yWoIuceAVXgZd1gBJR1y3YsdVWZkCYKYrxge', NULL, '2020-03-23 23:40:50', '2020-03-23 23:42:08'),
(6, 'dina', 'dina@perpus.test', '2020-03-24 00:35:08', '$2y$10$H1xF5P7TaO/UE9ghDdN8O.jrt6qOQ7scziIW4Zvqt7pum5LBhvXX6', NULL, '2020-03-24 00:34:08', '2020-03-24 00:35:08'),
(7, 'ajik', 'ajik@perpus.test', '2020-03-24 00:46:52', '$2y$10$7blFOmo8vu08VGepkYuceeIO.NBI/FxR9iECV3BrCZmPz6twuy.u.', NULL, '2020-03-24 00:46:35', '2020-03-24 00:46:52'),
(8, 'Admin Perpus', 'admin@perpus.test', '2020-03-24 08:05:30', '$2y$10$8NauhqlTOajbfh9sMdEo8eADG4SoJFQy7uXuZT5izGeJ8gh2D1ZhW', NULL, '2020-03-24 07:58:01', '2020-03-24 08:05:30'),
(9, 'andi jaa', 'andi@perpus.test', '2020-03-29 17:15:21', '$2y$10$CZCGwa3n/6A54BLq6veOGudPjxGFPid.Iwm3qhS541x6Q4anPfNBm', NULL, '2020-03-29 17:04:46', '2020-03-29 17:15:21'),
(10, 'fatimah zahra', 'fatimahzahra@gmail.com', '2020-03-30 16:45:45', '$2y$10$rjn6ljJ9xXCIBbYTyFGyHOhyFbw/dYEXxWvQpkt1tZkhKnOHC8WfG', NULL, '2020-03-30 16:44:55', '2020-03-30 16:45:45'),
(11, 'ryan kcn', 'ryan@gmail.com', NULL, '$2y$10$BrNWj3yVYz2ZP5ZdNct0l.rNZ1WvRc..ihCgEVR9EG8alAbiMDMq.', NULL, '2022-04-30 05:21:39', '2022-04-30 05:21:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_history_user_id_foreign` (`user_id`),
  ADD KEY `borrow_history_book_id_foreign` (`book_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `borrow_history`
--
ALTER TABLE `borrow_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD CONSTRAINT `borrow_history_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
