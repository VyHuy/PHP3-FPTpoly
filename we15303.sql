-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 16, 2021 lúc 02:46 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `we15303`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Donnie Bauch', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(2, 'Prof. Leopoldo Littel II', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(3, 'Jamil Dare', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(4, 'Mr. Vinnie Hirthe', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(5, 'Meta Hahn', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(6, 'Dusty Hickle', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(7, 'Dejah Trantow PhD', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(8, 'Dr. Ella Klein V', '2021-07-11 22:06:55', '2021-07-11 22:06:55'),
(9, 'Mrs. Macy Schuppe', '2021-07-11 22:06:56', '2021-07-11 22:06:56'),
(10, 'Kailyn Kuhlman', '2021-07-11 22:06:56', '2021-07-11 22:06:56'),
(11, 'Dr. Zackery Lubowitz I', '2021-07-11 22:06:56', '2021-07-11 22:06:56'),
(12, 'Prof. Loy Greenholt', '2021-07-11 22:06:56', '2021-07-11 22:06:56'),
(13, 'Rodrick Carroll', '2021-07-11 22:06:56', '2021-07-11 22:06:56'),
(14, 'Trevion Hayes', '2021-07-11 22:06:56', '2021-07-11 22:06:56'),
(15, 'Griffin Mills', '2021-07-11 22:06:56', '2021-07-11 22:06:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_03_055032_create_table_categories', 2),
(5, '2021_07_03_055117_create_table_products', 2),
(6, '2021_07_03_061157_alter_table_products_add_column_price_image', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `cate_id`, `created_at`, `updated_at`, `image`, `price`, `quantity`, `status`) VALUES
(221, 'Mr. Israel Daugherty', 15, '2021-07-12 22:50:39', '2021-07-12 22:50:39', 'uploads/products/5fd5d399ae2075bcdaed3ff7309df0bf.png', 567424, 63, 1),
(222, 'Mrs. Yazmin Harber', 2, '2021-07-12 22:50:39', '2021-07-12 22:50:39', 'uploads/products/26980793350adb40200fb4fbb329cf6d.png', 1784106, 79, 1),
(223, 'Lisa Bins', 4, '2021-07-12 22:50:39', '2021-07-12 22:50:39', 'uploads/products/73cba789d7bc0746f36bb75d4350656d.png', 1965151, 50, 1),
(224, 'Alexandrea Wiegand', 7, '2021-07-12 22:50:39', '2021-07-12 22:50:39', 'uploads/products/3eefef9ee61b2d5b57dba0717fd11c9c.png', 1893242, 54, 1),
(225, 'Alexa Gottlieb', 7, '2021-07-12 22:50:39', '2021-07-12 22:50:39', 'uploads/products/e59e80b0587541f135b648e379a508a6.png', 1699492, 79, 0),
(226, 'Prof. Verda Ruecker', 6, '2021-07-12 22:50:39', '2021-07-12 22:50:39', 'uploads/products/12e48b027cc965c2c589b56b149b8ebf.png', 637326, 59, 1),
(227, 'Miss Felicia Conn', 11, '2021-07-12 22:50:40', '2021-07-12 22:50:40', 'uploads/products/5dd16f516ed37f1e99ae2c090ec9b010.png', 159437, 70, 0),
(228, 'Dr. Aurelie Stark', 8, '2021-07-12 22:50:40', '2021-07-12 22:50:40', 'uploads/products/626a574d5e8c514446f12e22945e0893.png', 693831, 63, 0),
(229, 'Yasmeen Leannon', 2, '2021-07-12 22:50:40', '2021-07-12 22:50:40', 'uploads/products/1c0a6ccd77187a1d8b4210c329ca2aa5.png', 760092, 92, 0),
(230, 'Haskell Kiehn', 9, '2021-07-12 22:50:40', '2021-07-12 22:50:40', 'uploads/products/617c02a391e7966fb689e3ef3e832108.png', 1818613, 82, 0),
(231, 'Ollie Bogan', 10, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/3d26ee6608f7b3ea355340866d58d046.png', 1637994, 68, 1),
(232, 'Alexandrea Cummerata', 8, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/719a8b286939ea73a522f43fb4f338c3.png', 131799, 83, 0),
(233, 'Magdalen Pfannerstill PhD', 7, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/1b16416264b84890466e6afe3daa2eea.png', 985750, 81, 1),
(234, 'Julie Turcotte', 6, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/90da51ed2c8e007ff5281c5ebc9069c1.png', 959916, 64, 0),
(235, 'Ms. Isabell Bahringer IV', 11, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/44bb01ee5dd40b081d3f9b9128346d88.png', 360942, 80, 1),
(236, 'Nyasia Harris', 1, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/385a533bb5a4bf481728451e2d85eabf.png', 575588, 87, 0),
(237, 'Miss Destini Gutkowski', 10, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/a056933422f3c56dcc398ac470b71fd9.png', 616923, 69, 0),
(238, 'Hilbert Romaguera', 10, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/0578f4c118ac0488e24e41f88689fcdd.png', 1025603, 91, 1),
(239, 'Darren Stamm', 15, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/d3b41a7d7bc116341e9cb62e32b2787b.png', 1539112, 97, 1),
(240, 'Leonardo Koch', 10, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/c9eccb0f789e07e272dbfa47142ca6d0.png', 1166092, 51, 0),
(241, 'Tessie Koss V', 3, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/98978e5726e49da6812615700b1e67a6.png', 186363, 86, 1),
(242, 'Kitty Klein', 3, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/cd966e11a4e90607f59c91a2d246cb88.png', 493523, 50, 1),
(243, 'Dr. Jalyn Walter I', 13, '2021-07-14 22:56:29', '2021-07-14 22:56:29', 'uploads/products/6e09d0658bf14975a6bbfa7d666d5601.png', 986099, 59, 0),
(244, 'Walter Greenfelder', 8, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/c25c5951de858dda025753e64cf4f22f.png', 1096459, 95, 1),
(245, 'Dewitt Gottlieb III', 4, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/2f0328820e5b52eb6ff40fb347b654e5.png', 776794, 82, 0),
(246, 'Trinity Stehr', 6, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/a58c06377424ecfd7fbc9c8438c6f2e7.png', 151984, 77, 1),
(247, 'Johnny Bernhard DVM', 15, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/327261d6079562e237054ba9e018eb34.png', 1864326, 69, 0),
(248, 'Anjali Wisozk', 12, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/8e36d022066c653b1d222d478796a99e.png', 1870849, 69, 0),
(249, 'George Renner', 4, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/3bf2271a1bd69e6ff8ca57f524ea48e6.png', 1005069, 65, 0),
(250, 'Miss Mariam Yundt', 10, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/583b9572c59ecc542e9397ff8bfd30cf.png', 451108, 77, 1),
(251, 'Katherine Tremblay', 3, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/33bcd0128e7c9308d78316335c7b4db1.png', 1619667, 81, 0),
(252, 'Guido Schulist', 12, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/0632d7106fec8a0d11dc5c689e53c117.png', 114335, 86, 0),
(253, 'Marshall Denesik', 14, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/dbdfa1e94debd94087030974699d6130.png', 1268208, 97, 1),
(254, 'Mrs. Sophia Lindgren III', 7, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/75f822ce5e3c0428932e51915cf9a5a6.png', 1452984, 81, 0),
(255, 'Marquise O\'Conner', 14, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/58e7a5aad0aa3231a14e404d8c0a82e4.png', 1352600, 57, 0),
(256, 'Eddie Skiles', 12, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/728550aac804ca6f5a2283a36d35a763.png', 1541496, 68, 1),
(257, 'Bailee Sawayn', 13, '2021-07-14 22:56:30', '2021-07-14 22:56:30', 'uploads/products/1fe8eec99a66e579d85cce45eb2639af.png', 357512, 68, 1),
(258, 'Bonita Kemmer MD', 9, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/4d7c6d0d90025221e4a9503e2904ccdd.png', 411336, 56, 1),
(259, 'Trevor Okuneva', 15, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/1aab8cfe12d8effb447d1dcb32b3bc46.png', 1292551, 83, 0),
(260, 'Dr. Adonis Auer', 13, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/8fccc61e8f321217e24ad7c50c5adca9.png', 1022763, 64, 1),
(261, 'Mr. Ransom Ryan', 3, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/505becb22bf86adad1e255612bc30dd6.png', 861981, 79, 1),
(262, 'Samson Hermiston III', 13, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/7133cf83f9a1799f9e127bada36380e6.png', 820741, 61, 0),
(263, 'Ms. Amya Hyatt', 9, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/86db3c7bf9d08c4aa6267cd72d55b6d7.png', 1619898, 76, 0),
(264, 'Mr. Jacques Abernathy', 2, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/fb350f85677ec82a839699cad4e1f9b2.png', 1736317, 83, 0),
(265, 'Ms. Esta Toy', 3, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/1ca145a14f23bd93a5ad9390c023828d.png', 1159619, 64, 1),
(266, 'Prof. Melba Ankunding', 8, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/410edae2b497ac6bb73443d10f1baf31.png', 1375522, 89, 1),
(267, 'Mckayla Swaniawski', 15, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/82372845b8e381f7930bc33817f89ea4.png', 984867, 64, 0),
(268, 'Mr. Jermain Toy', 7, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/54bf954c6fb3062a3eb4dd5de1d6a493.png', 579484, 76, 0),
(269, 'Javier Douglas', 11, '2021-07-14 22:56:31', '2021-07-14 22:56:31', 'uploads/products/867bf31b6df92356b7ab270fbc94eb2b.png', 1033247, 95, 1),
(270, 'Regan Ward', 10, '2021-07-14 22:56:32', '2021-07-14 22:56:32', 'uploads/products/d851dc7e5b022b1130934ef49c2de561.png', 1025796, 86, 0),
(271, 'abc', 1, '2021-07-15 22:15:42', '2021-07-15 22:15:42', NULL, 1223123, 123, 1),
(272, 'Bird', 2, '2021-07-15 22:16:54', '2021-07-15 22:16:54', NULL, 1223123, 213, 0),
(273, 'Hao', 3, '2021-07-15 22:37:41', '2021-07-15 22:37:41', NULL, 1223123, 123, 0),
(275, 'abc1231313', 2, '2021-07-15 22:39:06', '2021-07-15 22:39:06', NULL, 1223123, 123, 0),
(276, 'abc12313131231231', 2, '2021-07-15 22:40:45', '2021-07-15 22:40:45', NULL, 1223123, 123, 0),
(277, 'Ho1', 3, '2021-07-15 22:41:14', '2021-07-15 22:41:14', NULL, 123, 6656, 0),
(278, 'Rolex gold', 15, '2021-07-15 22:42:03', '2021-07-15 22:42:03', NULL, 1223127, 1, 1),
(279, 'SảnDemo', 4, '2021-07-15 22:44:33', '2021-07-15 22:44:33', NULL, 412421, 123, 0),
(280, 'SsDemo', 4, '2021-07-15 22:44:56', '2021-07-15 22:44:56', NULL, 412421, 123, 0),
(281, 'hello kity', 12, '2021-07-15 22:46:54', '2021-07-15 22:46:54', NULL, 1223123, 213, 1),
(283, 'hello kity213', 12, '2021-07-15 22:48:52', '2021-07-15 22:48:52', NULL, 1223123, 213, 1),
(285, 'Rolex gold1231231', 4, '2021-07-15 22:53:28', '2021-07-15 22:53:28', NULL, 412421, 33, 0),
(286, 'Giày sandal cao gót phối nhựa trong suốt SN01061111', 1, '2021-07-15 22:55:15', '2021-07-15 22:55:15', NULL, 1111, 123, 1),
(288, 'Ho11', 4, '2021-07-15 23:05:39', '2021-07-15 23:05:39', NULL, 123, 111, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Huyvy', 'huy@gmail.com', '0000-00-00 00:00:00', '123', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'namtien', 'namtien@gmail.com', '0000-00-00 00:00:00', '147', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$nMC6vRlGjmS/kIWBD/1ZOuel0nza7d61/QKRn0CHGqnXoujioEaNe', NULL, '2021-07-02 23:38:36', '2021-07-02 23:38:36'),
(4, 'huyvv', 'huyvv@gmail.com', NULL, '$2y$10$QtnCIenaGQhZcy3pG6o5seiHYlCBiKMqkKB1Bj7vam9xpSRjqzAhG', NULL, '2021-07-02 23:38:36', '2021-07-02 23:38:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
