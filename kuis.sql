-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 07:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuis`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(10, 'TIU', '2023-05-18 08:23:58', '2023-05-18 08:23:58'),
(11, 'TKP', '2023-05-18 08:24:02', '2023-05-18 08:24:02'),
(13, 'TWK', '2023-05-18 18:03:40', '2023-05-18 18:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_04_020715_create_permissions_table', 1),
(6, '2022_02_04_020803_create_roles_table', 1),
(7, '2022_02_04_020910_create_role_user_table', 1),
(8, '2022_02_04_021018_create_permission_role_table', 1),
(9, '2022_04_13_070826_create_categories_table', 1),
(10, '2022_04_13_070920_create_questions_table', 1),
(11, '2022_04_13_071022_create_options_table', 1),
(12, '2022_04_13_072027_create_results_table', 1),
(13, '2022_04_13_072320_create_question_result_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` longtext NOT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `points`, `created_at`, `updated_at`) VALUES
(47, 13, 'Meskipun saya dari jurusan hukum saya akat berkenan melihat pertunjukan seni daerah untuk menghargai ajakan teman.', 3, '2023-05-18 08:25:53', '2023-05-18 08:25:53'),
(48, 13, 'Walaupun saya mahasiswa hukum, saya memilih untuk menonton pertunjukkan itu untuk menambah wawasan tentang kebudayaan bangsa', 5, '2023-05-18 08:26:08', '2023-05-18 08:26:08'),
(49, 13, 'Saya tentu menerima ajakan teman saya tersebut sebab pertunjukkan itu adalah pertunjukkan seni dan seni adalah kesukaan saya.', 4, '2023-05-18 08:27:02', '2023-05-18 08:27:02'),
(51, 17, '30', 0, '2023-05-18 08:34:43', '2023-05-18 08:34:43'),
(52, 17, '28', 5, '2023-05-18 08:34:55', '2023-05-18 08:34:55'),
(53, 17, '29', 0, '2023-05-18 08:35:07', '2023-05-18 08:35:07'),
(54, 18, '10, 15', 0, '2023-05-18 08:39:31', '2023-05-18 08:39:31'),
(55, 18, '15, 18', 5, '2023-05-18 08:40:21', '2023-05-18 08:40:21'),
(56, 18, '16, 20', 0, '2023-05-18 08:40:32', '2023-05-18 08:40:32'),
(60, 21, 'Menyewa konsultan IT dan membangun sistem untuk mempermudah proses seleksi', 4, '2023-05-18 08:49:25', '2023-05-18 08:55:38'),
(61, 21, 'Mempelajari permasalahannya lalu membuat sistem mandiri', 5, '2023-05-18 08:49:56', '2023-05-18 08:55:50'),
(62, 21, 'Membuat kemampuan sistem mandiri seadanya', 4, '2023-05-18 08:50:13', '2023-05-18 08:56:00'),
(75, 26, 'Dagelan : Sandiwara', 0, '2023-05-18 15:55:04', '2023-05-18 15:55:04'),
(76, 26, 'Dongeng : Peristiwa', 5, '2023-05-18 15:55:17', '2023-05-18 15:55:17'),
(77, 26, 'Data : Estimasi', 0, '2023-05-18 15:55:29', '2023-05-18 15:55:29'),
(78, 27, 'Tubuh : tangan : kepala', 0, '2023-05-18 15:56:07', '2023-05-18 15:56:07'),
(79, 27, 'Tanah : laut : air', 0, '2023-05-18 15:56:18', '2023-05-18 15:56:46'),
(80, 27, 'Pelepah : tangkai : daun', 5, '2023-05-18 15:56:29', '2023-05-18 15:56:29'),
(81, 28, 'Berusaha untuk tidak memikirkannya', 2, '2023-05-18 15:57:43', '2023-05-18 15:57:43'),
(82, 28, 'Menghibur semampu saya', 4, '2023-05-18 15:57:54', '2023-05-18 15:57:54'),
(83, 28, 'Tetap melanjutkan kegiatan saya', 5, '2023-05-18 15:58:28', '2023-05-18 15:58:28'),
(84, 29, 'Pikiran bercabang pada usaha lain', 2, '2023-05-18 15:59:06', '2023-05-18 15:59:06'),
(85, 29, 'Menunggu bantuan pihak lain', 3, '2023-05-18 15:59:18', '2023-05-18 15:59:18'),
(86, 29, 'Mundur, begitu melihat resikonya', 5, '2023-05-18 15:59:28', '2023-05-18 15:59:28'),
(87, 30, 'K dan L', 0, '2023-05-18 16:00:31', '2023-05-18 16:00:31'),
(88, 30, 'K dan J', 5, '2023-05-18 16:00:43', '2023-05-18 16:00:43'),
(89, 30, 'N dan M', 0, '2023-05-18 16:00:53', '2023-05-18 16:00:53'),
(90, 31, 'Saya merasa itulah kemampuan maksimal saya', 2, '2023-05-18 16:01:36', '2023-05-18 16:01:36'),
(91, 31, 'Saya dapat segera bangkit dan memperbaiki kelemahan saya', 5, '2023-05-18 16:01:50', '2023-05-18 16:02:12'),
(92, 31, 'Saya dapat bangkit kembali asal ada teman atau keluarga yang mendukung saya', 3, '2023-05-18 16:02:01', '2023-05-18 16:02:01'),
(93, 32, 'Dasar negara', 5, '2023-05-18 18:06:42', '2023-05-18 18:06:42'),
(94, 32, 'Dasar agama', 0, '2023-05-18 18:07:17', '2023-05-18 18:07:17'),
(95, 32, 'Dasar agama', 0, '2023-05-18 18:07:18', '2023-05-18 18:07:18'),
(96, 32, 'Dasar kenegaraan', 0, '2023-05-18 18:07:37', '2023-05-18 18:07:37'),
(97, 33, 'Piagam Jakarta', 0, '2023-05-18 18:08:05', '2023-05-18 18:08:05'),
(98, 33, 'Sumpah Pemuda', 0, '2023-05-18 18:08:23', '2023-05-18 18:08:23'),
(99, 33, 'Pembukaan UUD 1945', 5, '2023-05-18 18:08:40', '2023-05-18 18:08:40'),
(100, 34, 'Mewujudkan kekuasaan', 0, '2023-05-18 18:09:00', '2023-05-18 18:09:00'),
(101, 34, 'Mewujudkan ketertiban', 5, '2023-05-18 18:09:16', '2023-05-18 18:09:16'),
(102, 34, 'Mewujudkan kekayaan', 0, '2023-05-18 18:09:37', '2023-05-18 18:09:37'),
(103, 35, '3 kali', 0, '2023-05-18 18:09:57', '2023-05-18 18:09:57'),
(104, 35, '4 kali', 5, '2023-05-18 18:10:14', '2023-05-18 18:10:14'),
(105, 35, '5 kali', 0, '2023-05-18 18:10:48', '2023-05-18 18:10:48'),
(106, 36, '17 Agustus 1945', 5, '2023-05-18 18:19:07', '2023-05-18 18:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', NULL, NULL),
(2, 'user_management_create', NULL, NULL),
(3, 'user_management_edit', NULL, NULL),
(4, 'user_management_view', NULL, NULL),
(5, 'user_management_delete', NULL, NULL),
(6, 'permission_access', NULL, NULL),
(7, 'permission_create', NULL, NULL),
(8, 'permission_edit', NULL, NULL),
(9, 'permission_view', NULL, NULL),
(10, 'permission_delete', NULL, NULL),
(11, 'role_access', NULL, NULL),
(12, 'role_create', NULL, NULL),
(13, 'role_edit', NULL, NULL),
(14, 'role_view', NULL, NULL),
(15, 'role_delete', NULL, NULL),
(16, 'user_access', NULL, NULL),
(17, 'user_create', NULL, NULL),
(18, 'user_edit', NULL, NULL),
(19, 'user_view', NULL, NULL),
(20, 'user_delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question_text`, `created_at`, `updated_at`) VALUES
(13, 11, 'Anda merupakan mahasiswa jurusan hukum yang suatu ketika diajak oleh teman kampus Anda yang kuliah dijurusan seni dan budaya untuk melihat pertunjukan seni daerah?', '2023-05-18 08:25:23', '2023-05-18 08:25:23'),
(17, 10, '12, 13, 15, 17, 19, 22, 24, …', '2023-05-18 08:33:55', '2023-05-18 08:33:55'),
(18, 10, '3, 6, 8, 9, 12, 14, …, …', '2023-05-18 08:38:45', '2023-05-18 08:38:45'),
(21, 11, 'Di tempat anda bekerja, bagian HRD kesulitan ketika menyeleksi pegawai baru karena sistem lama yang masih manual. Jika Anda seorang praktisi IT, Apa yang hal anda lakukan untuk mengatasi tersebut....', '2023-05-18 08:49:02', '2023-05-18 08:49:02'),
(26, 10, 'Fiktif : Fakta  = .....', '2023-05-18 15:54:24', '2023-05-18 15:54:40'),
(27, 10, 'TANGKAI : KELOPAK : BUNGA=....', '2023-05-18 15:55:46', '2023-05-18 15:55:46'),
(28, 11, 'Sahabat ayah saya tiba-tiba masuk rumah sakit terkena serangan jantung, saya akan…', '2023-05-18 15:57:22', '2023-05-18 15:57:22'),
(29, 11, 'Menurut saya, orang yang kehilangan kesempatan mengembangkan usahanya lebih disebabkan karena mereka…', '2023-05-18 15:58:47', '2023-05-18 15:58:47'),
(30, 10, 'A, B, C, F, E, D, G, H, I, L, …, …', '2023-05-18 16:00:03', '2023-05-18 16:00:03'),
(31, 11, 'Ketika menghadapi kegagalan, saya…', '2023-05-18 16:01:19', '2023-05-18 16:01:19'),
(32, 13, 'Dalam kehidupan bernegara, Pancasila berperan sebagai…', '2023-05-18 18:05:23', '2023-05-18 18:05:23'),
(33, 13, 'Rumusan Pancasila resmi terdapat dalam…', '2023-05-18 18:05:40', '2023-05-18 18:05:40'),
(34, 13, 'Negara kepolisian bertujuan untuk…', '2023-05-18 18:05:55', '2023-05-18 18:05:55'),
(35, 13, 'Berapa kali UUD 1945 di amandemen…', '2023-05-18 18:06:11', '2023-05-18 18:06:11'),
(36, 13, 'kapan indonesia merdeka ?', '2023-05-18 18:18:08', '2023-05-18 18:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `question_result`
--

CREATE TABLE `question_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(4, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$GGuqHVSvsB1LJ67B/Ovxs.lu7WD61Pea4cyECTbS3ofiCewd4Brhi', NULL, NULL, NULL),
(4, 'nisa', 'nisa23@gmail.com', NULL, '$2y$10$XH.v5/1aEww7Cd/V8qoUIOORXfKxmUpfR2t9luNgiqN1xB3zZ0PRy', NULL, '2023-05-18 03:44:39', '2023-05-18 03:44:39');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

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
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_category_id_foreign` (`category_id`);

--
-- Indexes for table `question_result`
--
ALTER TABLE `question_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_result_result_id_foreign` (`result_id`),
  ADD KEY `question_result_question_id_foreign` (`question_id`),
  ADD KEY `question_result_option_id_foreign` (`option_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `question_result`
--
ALTER TABLE `question_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `question_result_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_result_id_foreign` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
