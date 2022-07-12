-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 04:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `bid_price` int(11) NOT NULL,
  `is_select` tinyint(1) DEFAULT 0,
  `finish` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `project_id`, `bid_price`, `is_select`, `finish`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 15, 8, 50000000, 0, 0, '2021-09-19 08:16:17', '2021-09-19 08:16:17', NULL),
(2, 15, 11, 100000000, 1, 0, '2021-11-13 22:51:59', '2021-11-14 04:22:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Teknologi', '2021-08-14 01:07:13', '2021-08-14 01:11:22', NULL),
(2, 'Politik', '2021-08-14 01:11:12', '2021-08-14 01:11:12', NULL),
(3, 'Sosial', '2021-08-14 02:21:00', '2021-09-12 10:59:31', NULL),
(4, 'Ekonomi1', '2021-09-08 13:35:34', '2021-09-08 13:35:46', '2021-09-08 13:35:46'),
(5, 'Ekonomi', '2021-09-12 11:21:22', '2021-09-12 14:33:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\Post', 13, 'dcdd3746-2dbe-4819-9dc8-9e65e9c161de', 'avatars', 'BBNV0065', 'BBNV0065.jpg', 'image/jpeg', 'mydisk', 'mydisk', 120875, '[]', '[]', '[]', '[]', 1, '2021-08-17 05:20:43', '2021-08-17 05:20:43'),
(4, 'App\\Models\\Post', 16, '5ec9a751-2feb-4988-a77e-2100ca8fb98d', 'avatars', 'TFKH1238', 'TFKH1238.jpg', 'image/jpeg', 'mydisk', 'mydisk', 1226237, '[]', '[]', '[]', '[]', 2, '2021-08-17 05:26:10', '2021-08-17 05:26:10'),
(5, 'App\\Models\\Post', 18, '250724c4-dc0f-4b99-92df-4c7c740b22f4', 'avatars', '5', '5.png', 'image/png', 'mydisk', 'mydisk', 166089, '[]', '[]', '[]', '[]', 3, '2021-08-17 06:16:08', '2021-08-17 06:16:08'),
(6, 'App\\Models\\Post', 68, 'a4e96bf4-2c64-4b0d-8dff-341c8a1a32ab', 'document', '612a044d41da5_Foto2', '612a044d41da5_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 4, '2021-08-28 09:39:33', '2021-08-28 09:39:33'),
(7, 'App\\Models\\Post', 68, 'dfc99ae1-d0d8-40c1-8e64-af9241d81959', 'document', '612a044f961a7_Foto3', '612a044f961a7_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 5, '2021-08-28 09:39:33', '2021-08-28 09:39:33'),
(8, 'App\\Models\\Post', 69, '6a84ab65-1b74-4c7d-88ca-637dd781c057', 'document', '612a053ae1223_1', '612a053ae1223_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 6, '2021-08-28 09:43:29', '2021-08-28 09:43:29'),
(9, 'App\\Models\\Post', 69, 'cfa7b17a-12d0-4e83-aecc-2ecb8c6039ad', 'document', '612a053d82246_2', '612a053d82246_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 7, '2021-08-28 09:43:29', '2021-08-28 09:43:29'),
(10, 'App\\Models\\Post', 69, 'fcf0bc52-bc4d-4a36-a241-4aa489bde1c2', 'document', '612a053f93bca_3', '612a053f93bca_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 8, '2021-08-28 09:43:30', '2021-08-28 09:43:30'),
(11, 'App\\Models\\Post', 70, 'fd200dae-4ca3-40f5-a1d2-afc3fbb7ec06', 'document', '612a4ec7c736a_1', '612a4ec7c736a_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 9, '2021-08-28 14:57:30', '2021-08-28 14:57:30'),
(12, 'App\\Models\\Post', 70, '7c6da8cb-edeb-4967-a714-7d8ec5f686b1', 'document', '612a4eca1468f_2', '612a4eca1468f_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 10, '2021-08-28 14:57:30', '2021-08-28 14:57:30'),
(13, 'App\\Models\\Post', 70, '57bb207b-5b76-49c6-8e6f-1847d9661d74', 'document', '612a4ecc5b8b6_3', '612a4ecc5b8b6_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 11, '2021-08-28 14:57:31', '2021-08-28 14:57:31'),
(14, 'App\\Models\\Post', 70, '50835cf4-9ab7-4f07-a390-d0a29bda7592', 'document', '612a4ecf393e8_4', '612a4ecf393e8_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 12, '2021-08-28 14:57:31', '2021-08-28 14:57:31'),
(15, 'App\\Models\\Post', 70, 'd14ea936-3d0d-4e0e-8619-fdce4c58aaea', 'document', '612a4ed19e8de_5', '612a4ed19e8de_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 13, '2021-08-28 14:57:31', '2021-08-28 14:57:31'),
(16, 'App\\Models\\Post', 70, 'd9055efe-a3e4-417d-aab0-783409060455', 'document', '612a4ed5274ea_6', '612a4ed5274ea_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 14, '2021-08-28 14:57:31', '2021-08-28 14:57:31'),
(17, 'App\\Models\\Post', 78, '4b50b204-30d7-41f6-8abb-333323bf6df8', 'document', '612b0152e262a_1', '612b0152e262a_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 15, '2021-08-29 03:39:04', '2021-08-29 03:39:04'),
(18, 'App\\Models\\Post', 78, '27ea1a1e-bbb5-44d5-817f-b0b597108eff', 'document', '612b01535c1ac_2', '612b01535c1ac_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 16, '2021-08-29 03:39:05', '2021-08-29 03:39:05'),
(19, 'App\\Models\\Post', 78, '66270331-8e35-4032-a4f5-d00c000100e0', 'document', '612b01538c1bf_3', '612b01538c1bf_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 17, '2021-08-29 03:39:05', '2021-08-29 03:39:05'),
(20, 'App\\Models\\Post', 78, '03e26edd-83a6-477e-bff4-0c6312c7ca05', 'document', '612b0153bd30b_4', '612b0153bd30b_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 18, '2021-08-29 03:39:05', '2021-08-29 03:39:05'),
(21, 'App\\Models\\Post', 78, '4fb59d24-3f1b-444e-b509-764d7a8b0e08', 'document', '612b0153ed212_5', '612b0153ed212_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 19, '2021-08-29 03:39:06', '2021-08-29 03:39:06'),
(22, 'App\\Models\\Post', 78, '2f3d1063-e69e-4443-b486-a96c6d3e7895', 'document', '612b01542c0d5_6', '612b01542c0d5_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 20, '2021-08-29 03:39:06', '2021-08-29 03:39:06'),
(23, 'App\\Models\\Post', 80, '0394ce13-077f-4326-b722-0f84e6997293', 'document', '612b0566ecf8d_Foto2', '612b0566ecf8d_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 21, '2021-08-29 03:56:32', '2021-08-29 03:56:32'),
(24, 'App\\Models\\Post', 80, '2326d632-5420-4779-9b9d-a46f7600ae20', 'document', '612b056723bec_Foto3', '612b056723bec_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 22, '2021-08-29 03:56:32', '2021-08-29 03:56:32'),
(32, 'App\\Models\\Post', 85, '3ea1a8ee-a2a3-4475-b1c0-9d081c52bc07', 'document', '612b0e12713c6_Foto3', '612b0e12713c6_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 24, '2021-08-29 04:33:23', '2021-08-29 04:33:23'),
(33, 'App\\Models\\Post', 85, '266bf4d6-0ead-4fe0-be1c-dc85287031fc', 'document', '612b252d7f62c_KriteriaLansia', '612b252d7f62c_KriteriaLansia.png', 'image/png', 'mydisk', 'mydisk', 8390, '[]', '[]', '[]', '[]', 25, '2021-08-29 06:11:59', '2021-08-29 06:11:59'),
(35, 'App\\Models\\Post', 86, '8d7e8749-7717-4884-a984-2c31d5042c40', 'document', '612b26ab63769_2', '612b26ab63769_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 27, '2021-08-29 06:18:22', '2021-08-29 06:18:22'),
(36, 'App\\Models\\Post', 86, '64727b8e-33fb-40d3-aee0-e235900135c6', 'document', '612b26ab8e49b_3', '612b26ab8e49b_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 28, '2021-08-29 06:18:22', '2021-08-29 06:18:22'),
(37, 'App\\Models\\Post', 86, 'b86c9d16-b101-4c88-b61d-eaa8c246845a', 'document', '612b26abbb7f7_4', '612b26abbb7f7_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 29, '2021-08-29 06:18:22', '2021-08-29 06:18:22'),
(38, 'App\\Models\\Post', 86, 'b3fc8c3e-9de5-4ff3-a82a-58deba802ba8', 'document', '612b26abe2f33_5', '612b26abe2f33_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 30, '2021-08-29 06:18:22', '2021-08-29 06:18:22'),
(39, 'App\\Models\\Post', 86, 'b3a2c395-dd84-4ecd-89e0-4abe27fe8000', 'document', '612b26ac1799b_6', '612b26ac1799b_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 31, '2021-08-29 06:18:22', '2021-08-29 06:18:22'),
(41, 'App\\Models\\Post', 86, '312ea7e6-5f01-433d-9363-b01d1b4eac9e', 'document', '612b26c4e00f7_Foto3', '612b26c4e00f7_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 33, '2021-08-29 06:18:47', '2021-08-29 06:18:47'),
(42, 'App\\Models\\Post', 87, 'ee5be062-551a-4e62-8324-8fa9b7223335', 'document', '612b2e72f35c0_BBNV0065', '612b2e72f35c0_BBNV0065.JPG', 'image/jpeg', 'mydisk', 'mydisk', 90830, '[]', '[]', '[]', '[]', 34, '2021-08-29 06:51:32', '2021-08-29 06:51:32'),
(43, 'App\\Models\\Post', 87, '2217bf88-37b6-4f49-aa6c-2245d95a2c78', 'document', '612b2e733d5f6_Foto2', '612b2e733d5f6_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 35, '2021-08-29 06:51:32', '2021-08-29 06:51:32'),
(44, 'App\\Models\\Post', 87, '4a322968-fda6-47a8-a0e1-f7b4ce47519d', 'document', '612b2e7372e43_Foto3', '612b2e7372e43_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 36, '2021-08-29 06:51:32', '2021-08-29 06:51:32'),
(45, 'App\\Models\\Post', 87, '16e20731-5bca-4c6f-a6dd-f2703312c08b', 'document', '612b2e879d34a_KriteriaLansia', '612b2e879d34a_KriteriaLansia.png', 'image/png', 'mydisk', 'mydisk', 8390, '[]', '[]', '[]', '[]', 37, '2021-08-29 06:51:52', '2021-08-29 06:51:52'),
(46, 'App\\Models\\Post', 87, '77a050f4-6ef7-4731-aacb-25a898d8bb8c', 'document', '612b9430d155e_BBNV0065', '612b9430d155e_BBNV0065.JPG', 'image/jpeg', 'mydisk', 'mydisk', 90830, '[]', '[]', '[]', '[]', 38, '2021-08-29 14:05:40', '2021-08-29 14:05:40'),
(47, 'App\\Models\\Post', 88, 'fc361d66-4c68-4627-a8b8-89307a760860', 'document', '612ee58754682_1', '612ee58754682_1.png', 'image/png', 'mydisk', 'mydisk', 323670, '[]', '[]', '[]', '[]', 39, '2021-09-01 02:29:30', '2021-09-01 02:29:30'),
(48, 'App\\Models\\Post', 88, '7a73c571-387e-48ab-8930-a94ca2a7032c', 'document', '612ee587a786f_2', '612ee587a786f_2.png', 'image/png', 'mydisk', 'mydisk', 249613, '[]', '[]', '[]', '[]', 40, '2021-09-01 02:29:30', '2021-09-01 02:29:30'),
(49, 'App\\Models\\Post', 88, '0af97eb8-5237-4937-b605-630f20c34d3c', 'document', '612ee588066bd_3', '612ee588066bd_3.png', 'image/png', 'mydisk', 'mydisk', 144082, '[]', '[]', '[]', '[]', 41, '2021-09-01 02:29:31', '2021-09-01 02:29:31'),
(50, 'App\\Models\\Post', 88, '9f64c0d7-8605-4812-a3b7-2345a3f35603', 'document', '612ee5885618a_4', '612ee5885618a_4.png', 'image/png', 'mydisk', 'mydisk', 142436, '[]', '[]', '[]', '[]', 42, '2021-09-01 02:29:31', '2021-09-01 02:29:31'),
(51, 'App\\Models\\Post', 88, '7376bd86-127e-403e-914f-7e0a70c2b38a', 'document', '612ee5889c926_5', '612ee5889c926_5.png', 'image/png', 'mydisk', 'mydisk', 633990, '[]', '[]', '[]', '[]', 43, '2021-09-01 02:29:31', '2021-09-01 02:29:31'),
(52, 'App\\Models\\Post', 88, '4c44d2da-e5ff-49ef-b8a4-f61df448e7e7', 'document', '612ee5a21d9cf_6', '612ee5a21d9cf_6.png', 'image/png', 'mydisk', 'mydisk', 67540, '[]', '[]', '[]', '[]', 44, '2021-09-01 02:29:55', '2021-09-01 02:29:55'),
(53, 'App\\Models\\Post', 89, 'ac140204-198b-45c7-9fb9-3ac722bcc23e', 'document', '6138bd3458e94_QR Code Panduan Obat Gratis COVID-19', '6138bd3458e94_QR-Code-Panduan-Obat-Gratis-COVID-19.png', 'image/png', 'mydisk', 'mydisk', 430302, '[]', '[]', '[]', '[]', 45, '2021-09-08 13:40:11', '2021-09-08 13:40:11'),
(54, 'App\\Models\\Post', 89, 'a7f10ab3-275f-44a0-a24c-b7ca9d678ec5', 'document', '6138bd34b87c5_logo-rsbm5', '6138bd34b87c5_logo-rsbm5.png', 'image/png', 'mydisk', 'mydisk', 193352, '[]', '[]', '[]', '[]', 46, '2021-09-08 13:40:12', '2021-09-08 13:40:12'),
(55, 'App\\Models\\Post', 89, 'a045de33-a12d-46a0-a9e8-6b8832bf418e', 'document', '6138bd6621464_boats-night', '6138bd6621464_boats-night.jpeg', 'image/jpeg', 'mydisk', 'mydisk', 93855, '[]', '[]', '[]', '[]', 47, '2021-09-08 13:40:56', '2021-09-08 13:40:56'),
(56, 'App\\Models\\Post', 90, 'f38754c3-540d-4c5f-8dd8-02a1f33aad2b', 'document', '613ddd238079f_1', '613ddd238079f_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 48, '2021-09-12 10:57:44', '2021-09-12 10:57:44'),
(57, 'App\\Models\\Post', 90, '78f7dadb-2cac-493e-a9c3-0701fd54a5fc', 'document', '613ddd23dec01_2', '613ddd23dec01_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 49, '2021-09-12 10:57:45', '2021-09-12 10:57:45'),
(58, 'App\\Models\\Post', 90, 'a7387f17-a17f-41bc-af78-a594dad7f93c', 'document', '613ddd243a2b3_3', '613ddd243a2b3_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 50, '2021-09-12 10:57:45', '2021-09-12 10:57:45'),
(59, 'App\\Models\\Post', 90, '9b59bced-f86a-40fa-b936-c04f588b653b', 'document', '613ddd24896d2_4', '613ddd24896d2_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 51, '2021-09-12 10:57:46', '2021-09-12 10:57:46'),
(60, 'App\\Models\\Post', 90, '070826c7-d06b-4ba4-ab53-1cfe6dd9f1cc', 'document', '613ddd24d775f_5', '613ddd24d775f_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 52, '2021-09-12 10:57:46', '2021-09-12 10:57:46'),
(61, 'App\\Models\\Post', 90, 'e93d08c2-4e04-4f90-b797-07fcdf6b4e9c', 'document', '613ddd251f00a_6', '613ddd251f00a_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 53, '2021-09-12 10:57:46', '2021-09-12 10:57:46'),
(62, 'App\\Models\\Post', 91, 'b910eb37-b93f-48fc-9d24-b1842c26f30a', 'document', '613ef82d69df0_1', '613ef82d69df0_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 54, '2021-09-13 07:05:21', '2021-09-13 07:05:21'),
(63, 'App\\Models\\Post', 91, 'f374c566-60a3-4cf3-a232-e62f756370af', 'document', '613ef82db8251_2', '613ef82db8251_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 55, '2021-09-13 07:05:22', '2021-09-13 07:05:22'),
(64, 'App\\Models\\Post', 91, '3cbe73cc-79fb-4ce2-8060-29d19eaca945', 'document', '613ef82e23c0d_3', '613ef82e23c0d_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 56, '2021-09-13 07:05:22', '2021-09-13 07:05:22'),
(65, 'App\\Models\\Post', 91, '0ee156a6-f2f4-4375-acb4-b2d4eb8c680c', 'document', '613ef82e8713d_4', '613ef82e8713d_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 57, '2021-09-13 07:05:22', '2021-09-13 07:05:22'),
(66, 'App\\Models\\Post', 91, 'fc39e731-5465-4aa5-91af-ebd7b561da8a', 'document', '613ef82f0cdad_5', '613ef82f0cdad_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 58, '2021-09-13 07:05:22', '2021-09-13 07:05:22'),
(67, 'App\\Models\\Post', 91, '7bbe1c96-e2e3-49ec-9e70-26665929a618', 'document', '613ef82f6b503_6', '613ef82f6b503_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 59, '2021-09-13 07:05:22', '2021-09-13 07:05:22'),
(68, 'App\\Models\\Project', 2, '61b7f4cc-9e48-49c0-8b5d-b2cc11ddef35', 'gambardesain', '6146047370707_Materi TI_MDI', '6146047370707_Materi-TI_MDI.jpeg', 'image/jpeg', 'mydisk', 'mydisk', 47737, '[]', '[]', '[]', '[]', 60, '2021-09-18 15:23:35', '2021-09-18 15:23:35'),
(69, 'App\\Models\\Project', 2, 'da14a4d9-3beb-4a8c-91c5-24c3a5b43b90', 'gambardesain', '61460473be0ee_WhatsApp Image 2021-09-14 at 17.55.54 (1)', '61460473be0ee_WhatsApp-Image-2021-09-14-at-17.55.54-(1).jpeg', 'image/jpeg', 'mydisk', 'mydisk', 103284, '[]', '[]', '[]', '[]', 61, '2021-09-18 15:23:38', '2021-09-18 15:23:38'),
(70, 'App\\Models\\Project', 3, '8e5ec2e0-2736-4310-a7d7-f6723cafe609', 'gambardesain', '61460582da80c_1', '61460582da80c_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 62, '2021-09-18 15:28:15', '2021-09-18 15:28:15'),
(71, 'App\\Models\\Project', 3, '34b6677f-360f-469f-a63d-9eb957d138aa', 'gambardesain', '6146058333231_2', '6146058333231_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 63, '2021-09-18 15:28:16', '2021-09-18 15:28:16'),
(72, 'App\\Models\\Project', 3, '88c15d0f-b5ff-4656-8818-b90e36a2654e', 'gambardesain', '61460583dd6c8_3', '61460583dd6c8_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 64, '2021-09-18 15:28:16', '2021-09-18 15:28:16'),
(73, 'App\\Models\\Project', 3, 'af6a09c2-598b-4e8d-aab8-f150fae527d2', 'gambardesain', '614605842c875_4', '614605842c875_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 65, '2021-09-18 15:28:16', '2021-09-18 15:28:16'),
(74, 'App\\Models\\Project', 3, '8a207122-93c7-4ecd-ae8d-2b2eeec19670', 'gambardesain', '614605846d753_5', '614605846d753_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 66, '2021-09-18 15:28:16', '2021-09-18 15:28:16'),
(75, 'App\\Models\\Project', 3, 'b7cec13e-13e2-4bad-a568-86af2a0de998', 'gambardesain', '61460584a583a_6', '61460584a583a_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 67, '2021-09-18 15:28:16', '2021-09-18 15:28:16'),
(76, 'App\\Models\\Project', 4, 'b14fbe7b-2554-4efb-94ba-7917d58e0738', 'gambardesain', '614605db211aa_1', '614605db211aa_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 68, '2021-09-18 15:29:42', '2021-09-18 15:29:42'),
(77, 'App\\Models\\Project', 4, '0b476cdd-e9b1-4929-9e26-30994c8adcb0', 'gambardesain', '614605db66739_2', '614605db66739_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 69, '2021-09-18 15:29:42', '2021-09-18 15:29:42'),
(78, 'App\\Models\\Project', 4, '53b53356-4306-4773-991b-bbe6b060927e', 'gambardesain', '614605dbac054_3', '614605dbac054_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 70, '2021-09-18 15:29:43', '2021-09-18 15:29:43'),
(79, 'App\\Models\\Project', 4, '18011f50-93e9-4208-b735-2b8c174e5f60', 'gambardesain', '614605dbef3d0_4', '614605dbef3d0_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 71, '2021-09-18 15:29:43', '2021-09-18 15:29:43'),
(80, 'App\\Models\\Project', 4, '92100538-d8b8-42b5-b1c0-17db4da0dae0', 'gambardesain', '614605dd0517c_5', '614605dd0517c_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 72, '2021-09-18 15:29:43', '2021-09-18 15:29:43'),
(81, 'App\\Models\\Project', 4, '1dce9892-5d7f-42f8-a560-57443b5823ff', 'gambardesain', '614605dd43467_6', '614605dd43467_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 73, '2021-09-18 15:29:43', '2021-09-18 15:29:43'),
(82, 'App\\Models\\Project', 4, '8d165c32-11e7-4c8e-a889-14b67e891084', 'gambarkerja', '614605e4a3c56_Foto2', '614605e4a3c56_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 74, '2021-09-18 15:29:43', '2021-09-18 15:29:43'),
(83, 'App\\Models\\Project', 4, '26216954-9981-4160-892e-9bdc18612deb', 'gambarkerja', '614605e4e558c_Foto3', '614605e4e558c_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 75, '2021-09-18 15:29:43', '2021-09-18 15:29:43'),
(84, 'App\\Models\\Project', 5, '0d2ddbf1-f9f9-415c-9f82-ba3e193cfc2c', 'gambardesain', '6146873c5532c_2', '6146873c5532c_2.png', 'image/png', 'mydisk', 'mydisk', 249613, '[]', '[]', '[]', '[]', 76, '2021-09-19 00:42:28', '2021-09-19 00:42:28'),
(85, 'App\\Models\\Project', 5, '23942b0f-dc73-4072-8520-0c8f2bd6707f', 'gambardesain', '6146873cc7acb_1', '6146873cc7acb_1.png', 'image/png', 'mydisk', 'mydisk', 323670, '[]', '[]', '[]', '[]', 77, '2021-09-19 00:42:31', '2021-09-19 00:42:31'),
(86, 'App\\Models\\Project', 5, 'a267f92b-79ed-4e51-ad3c-74b845758dae', 'gambarkerja', '6146874636567_3', '6146874636567_3.png', 'image/png', 'mydisk', 'mydisk', 144082, '[]', '[]', '[]', '[]', 78, '2021-09-19 00:42:31', '2021-09-19 00:42:31'),
(87, 'App\\Models\\Project', 5, '3bb9215a-eebf-4c28-a003-ecf8ccb9a38e', 'gambarkerja', '614687469bbfd_4', '614687469bbfd_4.png', 'image/png', 'mydisk', 'mydisk', 142436, '[]', '[]', '[]', '[]', 79, '2021-09-19 00:42:31', '2021-09-19 00:42:31'),
(88, 'App\\Models\\Project', 5, '8b39782d-783e-4b5d-8216-1dcc0b3ea0a1', 'spesifikasiteknis', '61468754e9912_6', '61468754e9912_6.png', 'image/png', 'mydisk', 'mydisk', 67540, '[]', '[]', '[]', '[]', 80, '2021-09-19 00:42:31', '2021-09-19 00:42:31'),
(89, 'App\\Models\\Project', 5, 'b6e2d249-c6f8-46b2-99a8-d97c394db920', 'spesifikasiteknis', '614687572ea68_5', '614687572ea68_5.png', 'image/png', 'mydisk', 'mydisk', 633990, '[]', '[]', '[]', '[]', 81, '2021-09-19 00:42:31', '2021-09-19 00:42:31'),
(90, 'App\\Models\\Project', 5, '968a8f02-de6c-4a64-9534-89ea6cc06bf2', 'rencanakerja', '6146875da08ab_1', '6146875da08ab_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 82, '2021-09-19 00:42:32', '2021-09-19 00:42:32'),
(91, 'App\\Models\\Project', 5, '5a992180-6dd9-4f22-8e2a-b0eb7a2c473d', 'rencanakerja', '6146875e0ab6d_2', '6146875e0ab6d_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 83, '2021-09-19 00:42:32', '2021-09-19 00:42:32'),
(92, 'App\\Models\\Project', 5, '1c7df3b6-c22c-46c0-9fc5-8e3c66921af2', 'syaratpelaksanaanbangunan', '6146876482be6_4', '6146876482be6_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 84, '2021-09-19 00:42:35', '2021-09-19 00:42:35'),
(93, 'App\\Models\\Project', 5, '10dbdb28-f741-4b8c-92ad-61340f292a88', 'syaratpelaksanaanbangunan', '61468764de820_3', '61468764de820_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 85, '2021-09-19 00:42:36', '2021-09-19 00:42:36'),
(94, 'App\\Models\\Project', 5, '2dde9f8e-a6dd-452f-bf09-549db0007312', 'metodepelaksanaan', '6146876966936_5', '6146876966936_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 86, '2021-09-19 00:42:36', '2021-09-19 00:42:36'),
(95, 'App\\Models\\Project', 5, 'fa195e14-463b-4d45-b67f-6ba0aeb4daf2', 'metodepelaksanaan', '61468769df254_6', '61468769df254_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 87, '2021-09-19 00:42:37', '2021-09-19 00:42:37'),
(96, 'App\\Models\\Project', 6, '36bc27a4-0202-4fbd-820b-2c6fd5e51114', 'gambardesain', '61468b098c55c_1', '61468b098c55c_1.png', 'image/png', 'mydisk', 'mydisk', 323670, '[]', '[]', '[]', '[]', 88, '2021-09-19 00:58:25', '2021-09-19 00:58:25'),
(97, 'App\\Models\\Project', 6, '9042c3be-6b71-4381-a027-1cf19a11e51b', 'gambardesain', '61468b0a25b97_2', '61468b0a25b97_2.png', 'image/png', 'mydisk', 'mydisk', 249613, '[]', '[]', '[]', '[]', 89, '2021-09-19 00:58:26', '2021-09-19 00:58:26'),
(98, 'App\\Models\\Project', 6, 'fb1ba6e9-fc0e-42f4-8d92-20506b754d51', 'gambardesain', '61468b0aadf26_3', '61468b0aadf26_3.png', 'image/png', 'mydisk', 'mydisk', 144082, '[]', '[]', '[]', '[]', 90, '2021-09-19 00:58:28', '2021-09-19 00:58:28'),
(99, 'App\\Models\\Project', 6, '2a36f886-1d45-4468-b4ea-0d43c9b4bcb3', 'gambardesain', '61468b0b1aef7_4', '61468b0b1aef7_4.png', 'image/png', 'mydisk', 'mydisk', 142436, '[]', '[]', '[]', '[]', 91, '2021-09-19 00:58:31', '2021-09-19 00:58:31'),
(100, 'App\\Models\\Project', 6, '973eb734-edd7-4bc7-82c8-f10595b42ba3', 'gambarkerja', '61468b103861f_6', '61468b103861f_6.png', 'image/png', 'mydisk', 'mydisk', 67540, '[]', '[]', '[]', '[]', 92, '2021-09-19 00:58:32', '2021-09-19 00:58:32'),
(101, 'App\\Models\\Project', 6, '53c9e364-ec61-4a28-b100-01a9ed9178da', 'gambarkerja', '61468b10a120f_5', '61468b10a120f_5.png', 'image/png', 'mydisk', 'mydisk', 633990, '[]', '[]', '[]', '[]', 93, '2021-09-19 00:58:32', '2021-09-19 00:58:32'),
(102, 'App\\Models\\Project', 6, '71a5fd97-0240-47d9-a347-19d980f01908', 'gambarkerja', '61468b111d894_7', '61468b111d894_7.png', 'image/png', 'mydisk', 'mydisk', 80405, '[]', '[]', '[]', '[]', 94, '2021-09-19 00:58:33', '2021-09-19 00:58:33'),
(103, 'App\\Models\\Project', 6, '02ff8286-91ae-4593-83fd-4ea7b50bebc3', 'gambarkerja', '61468b117c1f0_8', '61468b117c1f0_8.png', 'image/png', 'mydisk', 'mydisk', 151515, '[]', '[]', '[]', '[]', 95, '2021-09-19 00:58:33', '2021-09-19 00:58:33'),
(104, 'App\\Models\\Project', 6, '36bb9a75-3aca-47ad-9df7-5c09c3877418', 'spesifikasiteknis', '61468b181ace6_88', '61468b181ace6_88.png', 'image/png', 'mydisk', 'mydisk', 129697, '[]', '[]', '[]', '[]', 96, '2021-09-19 00:58:33', '2021-09-19 00:58:33'),
(105, 'App\\Models\\Project', 6, 'a467ed2f-2779-470a-8b47-fd04e7077b21', 'spesifikasiteknis', '61468b187f918_Screenshot_20210410-083801', '61468b187f918_Screenshot_20210410-083801.png', 'image/png', 'mydisk', 'mydisk', 804627, '[]', '[]', '[]', '[]', 97, '2021-09-19 00:58:33', '2021-09-19 00:58:33'),
(106, 'App\\Models\\Project', 6, '552d9776-f2ea-4355-81ba-79e2bf39838c', 'spesifikasiteknis', '61468b18ece02_Screenshot_20210410-115010', '61468b18ece02_Screenshot_20210410-115010.png', 'image/png', 'mydisk', 'mydisk', 142572, '[]', '[]', '[]', '[]', 98, '2021-09-19 00:58:34', '2021-09-19 00:58:34'),
(107, 'App\\Models\\Project', 6, '9df2eacb-07e4-4d83-8f24-0bca64ab0c7e', 'spesifikasiteknis', '61468b195a22a_Screenshot_20210410-115636', '61468b195a22a_Screenshot_20210410-115636.png', 'image/png', 'mydisk', 'mydisk', 189014, '[]', '[]', '[]', '[]', 99, '2021-09-19 00:58:36', '2021-09-19 00:58:36'),
(108, 'App\\Models\\Project', 6, 'c010dd5e-6208-4c9e-b7cf-136ef1cc737b', 'rencanakerja', '61468b215b9ef_1', '61468b215b9ef_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 100, '2021-09-19 00:58:37', '2021-09-19 00:58:37'),
(109, 'App\\Models\\Project', 6, '36408111-f8ef-4b38-a536-bfdc71f6be48', 'rencanakerja', '61468b21bc9be_2', '61468b21bc9be_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 101, '2021-09-19 00:58:38', '2021-09-19 00:58:38'),
(110, 'App\\Models\\Project', 6, '1f0875dd-4c99-4d5d-87fa-25044e24675d', 'rencanakerja', '61468b2229b29_3', '61468b2229b29_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 102, '2021-09-19 00:58:40', '2021-09-19 00:58:40'),
(111, 'App\\Models\\Project', 6, 'c0cac8a1-dad0-4e53-ae76-8029275f2a70', 'syaratpelaksanaanbangunan', '61468b264c813_4', '61468b264c813_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 103, '2021-09-19 00:58:42', '2021-09-19 00:58:42'),
(112, 'App\\Models\\Project', 6, '8ecaf520-7348-420c-9fce-86f90e90fa27', 'syaratpelaksanaanbangunan', '61468b26d4e65_5', '61468b26d4e65_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 104, '2021-09-19 00:58:42', '2021-09-19 00:58:42'),
(113, 'App\\Models\\Project', 6, 'fbfa11a7-c615-4e3f-bf05-1636ab2fa0e5', 'syaratpelaksanaanbangunan', '61468b274524f_6', '61468b274524f_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 105, '2021-09-19 00:58:43', '2021-09-19 00:58:43'),
(114, 'App\\Models\\Project', 6, '90386191-3c44-45ea-af3d-f4a2666b1fa5', 'metodepelaksanaan', '61468b2d8df2a_Foto2', '61468b2d8df2a_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 106, '2021-09-19 00:58:43', '2021-09-19 00:58:43'),
(115, 'App\\Models\\Project', 6, '1cb88755-b8c6-4643-87ef-9028f60f83ec', 'metodepelaksanaan', '61468b2de0c65_Foto3', '61468b2de0c65_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 107, '2021-09-19 00:58:44', '2021-09-19 00:58:44'),
(117, 'App\\Models\\Project', 7, 'f536e15a-3fec-4aaf-9138-8462eee0f533', 'gambarkerja', '6146b52b3f858_gambarkerja', '6146b52b3f858_gambarkerja.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75991, '[]', '[]', '[]', '[]', 109, '2021-09-19 03:57:38', '2021-09-19 03:57:38'),
(118, 'App\\Models\\Project', 7, '81dfb0ab-1b14-48c5-bb5a-64d30a0fdd66', 'rencanakerja', '6146b52e98cdd_Rencanakerja', '6146b52e98cdd_Rencanakerja.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75991, '[]', '[]', '[]', '[]', 110, '2021-09-19 03:57:39', '2021-09-19 03:57:39'),
(119, 'App\\Models\\Project', 7, '67abf8d1-cb4d-4b02-a1c2-955baa3a01bc', 'spesifikasiteknis', '6146bccd14a0a_Foto2', '6146bccd14a0a_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 111, '2021-09-19 04:30:28', '2021-09-19 04:30:28'),
(120, 'App\\Models\\Project', 9, '25ea66b6-48c2-4aaf-a921-5666f2c1af62', 'gambardesain', '6149e96631693_Foto2', '6149e96631693_Foto2.jpg', 'image/jpeg', 'mydisk', 'mydisk', 68418, '[]', '[]', '[]', '[]', 112, '2021-09-21 14:17:51', '2021-09-21 14:17:51'),
(121, 'App\\Models\\Project', 9, '7fe37cb5-b7af-4be6-b65f-968a4e65ddeb', 'gambarkerja', '6149e96dcc7ea_Foto3', '6149e96dcc7ea_Foto3.jpg', 'image/jpeg', 'mydisk', 'mydisk', 75172, '[]', '[]', '[]', '[]', 113, '2021-09-21 14:17:51', '2021-09-21 14:17:51'),
(122, 'App\\Models\\Project', 9, '1e4c0c45-56fa-43b0-86eb-b59396efd05b', 'spesifikasiteknis', '6149e9748a995_BBNV0065', '6149e9748a995_BBNV0065.JPG', 'image/jpeg', 'mydisk', 'mydisk', 90830, '[]', '[]', '[]', '[]', 114, '2021-09-21 14:17:52', '2021-09-21 14:17:52'),
(123, 'App\\Models\\Project', 9, '9b160bdf-1a88-4849-a4aa-bd1758e0d514', 'rencanakerja', '6149e97fbf400_1', '6149e97fbf400_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 115, '2021-09-21 14:17:52', '2021-09-21 14:17:52'),
(124, 'App\\Models\\Project', 9, 'f0d491bc-5bde-4686-9302-ebd614f846b4', 'syaratpelaksanaanbangunan', '6149e9873c3ee_3', '6149e9873c3ee_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 116, '2021-09-21 14:17:52', '2021-09-21 14:17:52'),
(125, 'App\\Models\\Project', 9, '58451e23-27bf-42ea-a8cd-a766dc49fa23', 'metodepelaksanaan', '6149e98da2d65_4', '6149e98da2d65_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 117, '2021-09-21 14:17:52', '2021-09-21 14:17:52'),
(126, 'App\\Models\\Project', 11, '838b0e59-d8a8-442f-a20c-ac69ee2c5b83', 'gambardesain', '619039183de49_1', '619039183de49_1.png', 'image/png', 'mydisk', 'mydisk', 165188, '[]', '[]', '[]', '[]', 118, '2021-11-13 22:17:11', '2021-11-13 22:17:11'),
(127, 'App\\Models\\Project', 11, '78502b78-bbd6-4680-ba2a-dc2bd96bdf5a', 'gambarkerja', '6190392fb1903_2', '6190392fb1903_2.png', 'image/png', 'mydisk', 'mydisk', 168583, '[]', '[]', '[]', '[]', 119, '2021-11-13 22:17:12', '2021-11-13 22:17:12'),
(128, 'App\\Models\\Project', 11, 'bb059f4a-c11c-4e66-bb6d-15abfc9eaf63', 'spesifikasiteknis', '6190393d60f7b_3', '6190393d60f7b_3.png', 'image/png', 'mydisk', 'mydisk', 169546, '[]', '[]', '[]', '[]', 120, '2021-11-13 22:17:12', '2021-11-13 22:17:12'),
(129, 'App\\Models\\Project', 11, '9c8351e0-5227-488d-9206-89e345564e10', 'rencanakerja', '61903947870ef_4', '61903947870ef_4.png', 'image/png', 'mydisk', 'mydisk', 179606, '[]', '[]', '[]', '[]', 121, '2021-11-13 22:17:12', '2021-11-13 22:17:12'),
(130, 'App\\Models\\Project', 11, '1a6795a5-133b-49a4-b1e8-a3fcbf5262df', 'syaratpelaksanaanbangunan', '61903953a3b12_5', '61903953a3b12_5.png', 'image/png', 'mydisk', 'mydisk', 165755, '[]', '[]', '[]', '[]', 122, '2021-11-13 22:17:12', '2021-11-13 22:17:12'),
(131, 'App\\Models\\Project', 11, '53d5b878-e1b1-4c24-91db-307dac1a5cdf', 'metodepelaksanaan', '61903960f412a_6', '61903960f412a_6.png', 'image/png', 'mydisk', 'mydisk', 175879, '[]', '[]', '[]', '[]', 123, '2021-11-13 22:17:12', '2021-11-13 22:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayarans`
--

CREATE TABLE `metode_pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metode_pembayarans`
--

INSERT INTO `metode_pembayarans` (`id`, `metode_pembayaran`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Uang Muka', '2021-09-18 14:52:53', '2021-09-18 14:52:53', NULL),
(2, 'Sesuai Progres', '2021-09-18 14:53:03', '2021-09-18 14:53:03', NULL),
(3, 'Terima Jadi', '2021-09-18 14:53:11', '2021-10-14 13:45:27', NULL);

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
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 1),
(41, '2021_07_25_082453_create_registrations_table', 1),
(42, '2021_07_25_113828_create_sections_table', 1),
(43, '2021_08_14_072910_create_categories_table', 1),
(46, '2021_08_15_221632_create_media_table', 3),
(47, '2021_08_14_073039_create_posts_table', 4),
(48, '2021_08_16_224423_create_temporary_files_table', 5),
(49, '2014_10_12_200000_add_two_factor_columns_to_users_table', 6),
(50, '2021_09_02_003026_create_permission_tables', 7),
(52, '2021_09_12_131750_create_navigations_table', 8),
(53, '2014_10_12_000000_create_users_table', 9),
(55, '2021_09_18_212207_create_metode_pembayarans_table', 10),
(57, '2021_09_18_214611_create_projects_table', 11),
(58, '2021_09_19_141620_create_bids_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 11),
(5, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 11),
(6, 'App\\Models\\User', 18),
(7, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `parent_id`, `name`, `url`, `permission_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Posts', NULL, 'create post', '2021-09-12 06:22:38', '2021-09-12 06:22:38'),
(2, 1, 'Create new Posts', 'post/create', 'create post', '2021-09-12 06:24:24', '2021-09-18 03:10:17'),
(3, 1, 'Data Table', 'post', 'create post', '2021-09-12 06:24:53', '2021-09-18 03:09:47'),
(4, NULL, 'Categories', NULL, 'create category', '2021-09-12 07:33:23', '2021-09-12 07:33:23'),
(5, 4, 'Create new Category', 'category', 'create category', '2021-09-12 07:45:25', '2021-09-12 10:59:06'),
(7, NULL, 'Role & Permission', NULL, 'assign permission', '2021-09-12 07:47:30', '2021-09-12 07:47:30'),
(8, 7, 'Roles', 'role-and-permission/roles', 'assign permission', '2021-09-12 07:49:17', '2021-09-12 09:27:18'),
(9, 7, 'Permissions', 'role-and-permission/permissions', 'assign permission', '2021-09-12 07:50:31', '2021-09-12 07:50:31'),
(10, 7, 'Assign Permission', 'role-and-permission/assignable', 'assign permission', '2021-09-12 07:51:46', '2021-09-12 07:51:46'),
(11, 7, 'Permissions to Users', 'role-and-permission/assign/user', 'assign permission', '2021-09-12 07:52:42', '2021-09-12 07:52:42'),
(12, NULL, 'Navigation Setting', NULL, 'create navigation', '2021-09-12 08:52:51', '2021-09-12 08:52:51'),
(13, 12, 'Create new Menu', 'navigation/create', 'create navigation', '2021-09-12 08:54:03', '2021-09-12 08:54:03'),
(14, 12, 'Data Table', 'navigation/table', 'create navigation', '2021-09-12 08:54:35', '2021-09-12 08:54:35'),
(17, NULL, 'Users', NULL, 'show users', '2021-09-12 11:01:04', '2021-09-12 11:01:04'),
(18, 17, 'Users', 'user', 'show users', '2021-09-12 11:01:22', '2021-09-12 11:01:22'),
(19, NULL, 'Sections', NULL, 'create section', '2021-09-12 11:04:34', '2021-09-12 11:04:34'),
(20, 19, 'Sections', 'section', 'create section', '2021-09-12 11:04:49', '2021-09-12 11:04:49'),
(21, NULL, 'Registrations', NULL, 'create registration', '2021-09-12 11:13:25', '2021-09-12 11:13:25'),
(22, 21, 'Registrations', 'registration', 'create registration', '2021-09-12 11:13:43', '2021-09-12 14:34:46'),
(25, NULL, 'Penyedia Jasa', NULL, 'penyedia jasa', '2021-09-18 04:17:47', '2021-09-18 04:17:47'),
(26, 29, 'Buat Proyek Baru', 'project/create', 'pemilik proyek', '2021-09-18 04:21:58', '2021-09-19 06:32:31'),
(27, 29, 'Data Proyek', 'project', 'pemilik proyek', '2021-09-18 04:22:25', '2021-09-19 06:32:40'),
(28, 19, 'Metode Pembayaran', 'metodepembayaran', 'create section', '2021-09-18 13:35:31', '2021-09-18 13:35:31'),
(29, NULL, 'Pemilik Proyek', NULL, 'pemilik proyek', '2021-09-19 06:32:07', '2021-09-19 06:32:07'),
(30, 25, 'Buat Penawaran Baru', 'public/browse_projects/listing', 'penyedia jasa', '2021-09-19 06:35:35', '2021-09-19 06:36:20'),
(31, 25, 'Data Penawaran', 'bid', 'penyedia jasa', '2021-09-19 06:36:56', '2021-09-19 06:36:56'),
(32, NULL, 'Admin', NULL, 'menu admin', '2021-09-21 15:07:36', '2021-09-21 15:07:36'),
(33, 32, 'Manage Project', 'admin/manageproject', 'manage project', '2021-09-21 15:08:14', '2021-09-21 15:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create post', 'web', '2021-09-01 16:38:48', '2021-09-01 16:38:48'),
(2, 'show users', 'web', '2021-09-01 16:56:16', '2021-09-01 16:56:16'),
(3, 'delete', 'web', '2021-09-01 16:56:35', '2021-09-12 14:34:14'),
(4, 'create category', 'web', '2021-09-07 15:10:56', '2021-09-07 15:10:56'),
(5, 'assign permission', 'web', '2021-09-08 15:46:07', '2021-09-08 15:46:07'),
(6, 'create navigation', 'web', '2021-09-12 08:51:57', '2021-09-12 08:51:57'),
(7, 'create section', 'web', '2021-09-12 11:03:50', '2021-09-12 11:03:50'),
(8, 'create registration', 'web', '2021-09-12 11:11:31', '2021-09-12 11:11:31'),
(9, 'pemilik proyek', 'web', '2021-09-18 04:16:45', '2021-09-19 06:24:01'),
(10, 'penyedia jasa', 'web', '2021-09-19 06:24:52', '2021-09-19 06:24:52'),
(11, 'manage project', 'web', '2021-09-21 15:03:17', '2021-09-21 15:03:17'),
(12, 'menu admin', 'web', '2021-09-21 15:06:20', '2021-09-21 15:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `judul`, `konten`, `currency`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'A odio recusandae A', 'Dolor amet impedit', 94, '2021-08-16 12:23:01', '2021-08-16 12:23:01', NULL),
(2, 1, 'Et sit reprehenderit', 'Et amet quis in quo', 54, '2021-08-16 14:55:16', '2021-08-16 14:55:16', NULL),
(3, 3, 'Ullamco ipsum est a', 'Quis nostrud nisi vo', 58, '2021-08-16 14:56:23', '2021-08-16 14:56:23', NULL),
(4, 3, 'Ullamco ipsum est a', 'Quis nostrud nisi vo', 58, '2021-08-16 14:57:53', '2021-08-16 14:57:53', NULL),
(5, 1, 'Anim non accusantium', 'Possimus ratione se', 61, '2021-08-16 14:59:19', '2021-08-16 14:59:19', NULL),
(6, 3, 'Maiores cumque conse', 'Omnis qui qui placea', 65, '2021-08-16 15:01:52', '2021-08-16 15:01:52', NULL),
(7, 2, 'Facere nesciunt mai', 'Sed lorem voluptatib', 92, '2021-08-16 15:06:36', '2021-08-16 15:06:36', NULL),
(8, 3, 'Dolor minima nulla h', 'Tempora consequuntur', 76, '2021-08-17 02:50:32', '2021-08-17 02:50:32', NULL),
(9, 1, 'Maiores voluptatum q', 'Autem dolorem vel ea', 24, '2021-08-17 02:51:42', '2021-08-17 02:51:42', NULL),
(10, 1, 'Tes', 'Tes', 100000, '2021-08-17 02:52:35', '2021-08-17 02:52:35', NULL),
(11, 3, 'Non sint eum velit s', 'Neque illo repellend', 57, '2021-08-17 02:56:16', '2021-08-17 02:56:16', NULL),
(12, 3, 'Tes', 'Tes', 100000, '2021-08-17 02:57:52', '2021-08-17 02:57:52', NULL),
(13, 2, 'Ullamco nulla delect', 'Laboriosam quia cil', 8, '2021-08-17 05:20:42', '2021-08-17 05:20:42', NULL),
(14, 3, 'Laborum id natus do', 'Ut rerum amet quo r', 76, '2021-08-17 05:22:52', '2021-08-17 05:22:52', NULL),
(15, 3, 'Laborum id natus do', 'Ut rerum amet quo r', 76, '2021-08-17 05:23:06', '2021-08-17 05:23:06', NULL),
(16, 3, 'Aliquam veritatis do', 'Voluptas est et ex v', 66, '2021-08-17 05:26:10', '2021-08-17 05:26:10', NULL),
(17, 2, 'Quae ipsa nulla cor', 'Aliqua Esse ipsum v', 47, '2021-08-17 06:15:31', '2021-08-17 06:15:31', NULL),
(18, 3, 'Culpa deserunt dolo', 'Rem voluptate maxime', 86, '2021-08-17 06:16:06', '2021-08-17 06:16:06', NULL),
(19, 3, 'Ipsum architecto mi', 'Veniam velit atque', 89, '2021-08-17 13:24:09', '2021-08-17 13:24:09', NULL),
(20, 1, 'At exercitation mole', 'Ipsa ut expedita qu', 44, '2021-08-17 13:25:35', '2021-08-17 13:25:35', NULL),
(21, 2, 'Voluptatum alias ill', 'Exercitation omnis r', 66, '2021-08-17 13:29:06', '2021-08-17 13:29:06', NULL),
(22, 1, 'Commodo saepe aliqui', 'Aut et laborum Cons', 38, '2021-08-19 13:48:06', '2021-08-19 13:48:06', NULL),
(23, 1, 'Commodo saepe aliqui', 'Aut et laborum Cons', 38, '2021-08-19 13:49:01', '2021-08-19 13:49:01', NULL),
(24, 1, 'Deleniti dolor rerum', 'Vero dolorem aut nih', 32, '2021-08-19 13:51:03', '2021-08-19 13:51:03', NULL),
(25, 3, 'Aperiam exercitation', 'Corrupti ratione ev', 5, '2021-08-19 13:54:57', '2021-08-19 13:54:57', NULL),
(26, 2, 'Laboris officiis est', 'Aliquid voluptas non', 9, '2021-08-19 13:56:10', '2021-08-19 13:56:10', NULL),
(27, 3, 'Eaque dolor laudanti', 'Nobis et labore quis', 34, '2021-08-19 14:00:34', '2021-08-19 14:00:34', NULL),
(28, 3, 'Et est repudiandae r', 'Qui reiciendis id q', 16, '2021-08-19 14:02:18', '2021-08-19 14:02:18', NULL),
(29, 2, 'Sint laborum Volupt', 'Perspiciatis nisi e', 19, '2021-08-19 14:03:34', '2021-08-19 14:03:34', NULL),
(30, 2, 'Voluptatem Unde ips', 'Lorem natus id temp', 70, '2021-08-19 14:04:52', '2021-08-19 14:04:52', NULL),
(31, 3, 'Aliquam iusto dolor', 'Aut illum sit dese', 52, '2021-08-19 14:05:43', '2021-08-19 14:05:43', NULL),
(32, 3, 'Aliquam iusto dolor', 'Aut illum sit dese', 52, '2021-08-19 14:06:58', '2021-08-19 14:06:58', NULL),
(33, 3, 'Aliquam iusto dolor', 'Aut illum sit dese', 52, '2021-08-19 14:08:11', '2021-08-19 14:08:11', NULL),
(34, 3, 'Aliquam iusto dolor', 'Aut illum sit dese', 52, '2021-08-19 14:09:01', '2021-08-19 14:09:01', NULL),
(35, 3, 'Aspernatur necessita', 'Similique voluptas c', 71, '2021-08-19 14:09:55', '2021-08-19 14:09:55', NULL),
(36, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:12:59', '2021-08-19 14:12:59', NULL),
(37, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:13:34', '2021-08-19 14:13:34', NULL),
(38, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:15:35', '2021-08-19 14:15:35', NULL),
(39, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:15:49', '2021-08-19 14:15:49', NULL),
(40, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:16:19', '2021-08-19 14:16:19', NULL),
(41, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:19:09', '2021-08-19 14:19:09', NULL),
(42, 2, 'Laudantium sit poss', 'Omnis ipsum assumend', 77, '2021-08-19 14:19:29', '2021-08-19 14:19:29', NULL),
(43, 3, 'Excepteur error quis', 'Accusantium qui a de', 45, '2021-08-19 14:20:18', '2021-08-19 14:20:18', NULL),
(44, 3, 'Nisi consequatur qui', 'Occaecat omnis volup', 10, '2021-08-19 14:22:30', '2021-08-19 14:22:30', NULL),
(45, 1, 'Earum ab do recusand', 'Quibusdam aliquam ab', 13, '2021-08-19 14:23:12', '2021-08-19 14:23:12', NULL),
(46, 3, 'Itaque possimus est', 'Nobis voluptatem aut', 42, '2021-08-19 14:24:36', '2021-08-19 14:24:36', NULL),
(47, 2, 'Maiores rerum dolore', 'Alias ut dolores aut', 40, '2021-08-19 14:25:24', '2021-08-19 14:25:24', NULL),
(48, 1, 'Soluta exercitation', 'Reprehenderit aliqua', 56, '2021-08-19 14:26:24', '2021-08-19 14:26:24', NULL),
(49, 1, 'Soluta exercitation', 'Reprehenderit aliqua', 56, '2021-08-19 14:30:38', '2021-08-19 14:30:38', NULL),
(50, 1, 'Soluta exercitation', 'Reprehenderit aliqua', 56, '2021-08-19 14:31:01', '2021-08-19 14:31:01', NULL),
(51, 3, 'Labore eveniet quo', 'Esse duis voluptatem', 45, '2021-08-19 14:33:23', '2021-08-19 14:33:23', NULL),
(52, 2, 'Velit delectus odi', 'Veniam blanditiis l', 11, '2021-08-19 14:34:48', '2021-08-19 14:34:48', NULL),
(53, 2, 'Velit delectus odi', 'Veniam blanditiis l', 11, '2021-08-19 14:36:20', '2021-08-19 14:36:20', NULL),
(54, 3, 'In labore explicabo', 'Nulla nostrum molest', 83, '2021-08-19 14:37:14', '2021-08-19 14:37:14', NULL),
(55, 1, 'Provident aut tempo', 'Voluptatibus sint qu', 44, '2021-08-19 14:42:05', '2021-08-19 14:42:05', NULL),
(56, 2, 'Eiusmod exercitation', 'Voluptatem omnis in', 34, '2021-08-19 14:43:35', '2021-08-19 14:43:35', NULL),
(57, 2, 'Eiusmod exercitation', 'Voluptatem omnis in', 34, '2021-08-19 14:45:59', '2021-08-19 14:45:59', NULL),
(58, 2, 'Eiusmod exercitation', 'Voluptatem omnis in', 34, '2021-08-19 14:46:15', '2021-08-19 14:46:15', NULL),
(59, 1, 'Iure veniam ex cons', 'Enim in sint et eum', 88, '2021-08-19 14:46:47', '2021-08-19 14:46:47', NULL),
(60, 1, 'Aperiam laborum non', 'Ex excepturi iure ve', 74, '2021-08-19 14:47:28', '2021-08-19 14:47:28', NULL),
(61, 3, 'Sunt quia eveniet', 'Voluptas duis labore', 38, '2021-08-19 14:48:25', '2021-08-19 14:48:25', NULL),
(62, 2, 'Rerum quasi molestia', 'Nulla lorem est ut e', 92, '2021-08-19 14:49:09', '2021-08-19 14:49:09', NULL),
(63, 3, 'Veritatis iure venia', 'Repudiandae est pro', 79, '2021-08-19 14:51:26', '2021-08-19 14:51:26', NULL),
(64, 3, 'Est ad nisi est volu', 'Est et nihil id dign', 68, '2021-08-19 14:55:51', '2021-08-19 14:55:51', NULL),
(65, 2, 'Molestiae duis sit', 'Quas ea do ea occaec', 85, '2021-08-19 15:01:11', '2021-08-19 15:01:11', NULL),
(66, 2, 'Aut enim voluptatem', 'Lorem enim nesciunt', 60, '2021-08-19 15:02:14', '2021-08-19 15:02:14', NULL),
(67, 2, 'Itaque facilis est', 'Eveniet voluptas la', 97, '2021-08-19 15:03:43', '2021-08-19 15:03:43', NULL),
(68, 1, 'Sunt culpa dolores d', 'Repudiandae eu archi', 63, '2021-08-28 09:39:28', '2021-08-28 09:39:28', NULL),
(69, 1, 'Eos et laboris labor', 'Pariatur Nihil inve', 27, '2021-08-28 09:43:29', '2021-08-28 09:43:29', NULL),
(70, 1, 'Tes Multiple Image', 'Ini Tes Banyak Gambar', 123456789, '2021-08-28 14:57:29', '2021-08-28 14:57:29', NULL),
(71, 1, 'Corrupti exercitati', 'Ipsum obcaecati volu', 98, '2021-08-29 03:08:02', '2021-08-29 03:08:13', '2021-08-29 03:08:13'),
(72, 1, 'Error sit ipsam quos', 'Sint minim asperiore', 500000, '2021-08-29 03:22:23', '2021-09-18 03:29:30', '2021-09-18 03:29:30'),
(73, 1, 'Tes Multiple Image', 'Ini Tes Banyak Gambar', 123456789, '2021-08-29 03:34:19', '2021-08-29 03:38:24', '2021-08-29 03:38:24'),
(74, 1, 'Tes Multiple Image', 'Ini Tes Banyak Gambar', 123456789, '2021-08-29 03:34:58', '2021-08-29 03:38:21', '2021-08-29 03:38:21'),
(75, 1, 'Tes Multiple Image', 'Ini Tes Banyak Gambar', 123456789, '2021-08-29 03:36:54', '2021-08-29 03:38:19', '2021-08-29 03:38:19'),
(76, 1, 'Tes Multiple Image1', 'Ini Tes Banyak Gambar', 123456789, '2021-08-29 03:37:12', '2021-08-29 03:38:16', '2021-08-29 03:38:16'),
(77, 1, 'Tes Multiple Image2', 'Ini Tes Banyak Gambar', 123456789, '2021-08-29 03:38:06', '2021-08-29 03:38:14', '2021-08-29 03:38:14'),
(78, 1, 'Tes Multiple Image', 'Tes Multiple Image', 1000000000, '2021-08-29 03:39:03', '2021-08-29 04:05:33', '2021-08-29 04:05:33'),
(79, 1, 'Tes Multiple Image123', 'Tes Multiple Image', 1000000000, '2021-08-29 03:39:38', '2021-08-29 04:05:21', '2021-08-29 04:05:21'),
(80, 1, 'Tes Multiple Image', 'Tes Multiple Image', 1000000000, '2021-08-29 03:56:32', '2021-08-29 04:05:18', '2021-08-29 04:05:18'),
(81, 1, 'Tes Multiple Image', 'Tes Multiple Image', 1000000000, '2021-08-29 03:58:45', '2021-08-29 04:05:16', '2021-08-29 04:05:16'),
(82, 1, 'Tes Multiple Image', 'Tes Multiple Image', 1000000000, '2021-08-29 03:59:19', '2021-08-29 04:05:13', '2021-08-29 04:05:13'),
(83, 1, 'Tes Multiple Image678', 'Tes', 7000000, '2021-08-29 04:05:59', '2021-08-29 04:25:51', '2021-08-29 04:25:51'),
(84, 1, 'Tes Multiple Image6780', 'Tes', 7000000, '2021-08-29 04:24:56', '2021-08-29 04:25:34', '2021-08-29 04:25:34'),
(85, 3, 'Tes4', 'Tes', 9000000, '2021-08-29 04:26:12', '2021-08-29 04:30:00', NULL),
(86, 2, 'Tes Multiple Image', 'Tes Multiple Image', 9000000, '2021-08-29 06:18:22', '2021-08-29 06:18:22', NULL),
(87, 2, 'Sunt consequatur acc', 'Deserunt esse praese', 14, '2021-08-29 06:51:32', '2021-08-29 06:51:32', NULL),
(88, 1, 'Quod adipisicing tot', 'Sapiente soluta impe', 600, '2021-09-01 02:29:30', '2021-09-12 10:58:17', '2021-09-12 10:58:17'),
(89, 1, 'Tes', 'Tes', 400000, '2021-09-08 13:40:07', '2021-09-08 13:41:05', '2021-09-08 13:41:05'),
(90, 2, 'Tes Middleware', 'Kontennnn', 43000, '2021-09-12 10:57:42', '2021-09-12 10:58:10', NULL),
(91, 1, 'Voluptatem Et disti', 'Ad natus sint at num', 8400000, '2021-09-13 07:05:21', '2021-09-13 07:05:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran_id` bigint(20) UNSIGNED NOT NULL,
  `nama_proyek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran` int(11) NOT NULL,
  `jangka_waktu_penawaran` int(11) NOT NULL,
  `jangka_waktu_pelaksanaan` int(11) NOT NULL,
  `persentase_pembayaran` int(11) NOT NULL,
  `jaminan_pemeliharaan` int(11) NOT NULL,
  `masa_waktu_pemeliharaan` int(11) NOT NULL,
  `nilai_jaminan_pelaksanaan` int(11) NOT NULL,
  `gambar_desain` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_kerja` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spesifikasi_teknis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rencana_kerja` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syarat_pelaksanaan_bangunan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metode_pelaksanaan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `category_id`, `metode_pembayaran_id`, `nama_proyek`, `anggaran`, `jangka_waktu_penawaran`, `jangka_waktu_pelaksanaan`, `persentase_pembayaran`, `jaminan_pemeliharaan`, `masa_waktu_pemeliharaan`, `nilai_jaminan_pelaksanaan`, `gambar_desain`, `gambar_kerja`, `spesifikasi_teknis`, `rencana_kerja`, `syarat_pelaksanaan_bangunan`, `metode_pelaksanaan`, `approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 15, 1, 2, 'Aspernatur ut consec', 53, 84, 67, 3, 7, 53, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-18 15:19:37', '2021-09-18 15:19:37', NULL),
(2, 15, 3, 2, 'Sit et veniam sapie', 91, 16, 14, 79, 41, 86, 86, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-18 15:23:33', '2021-09-18 15:23:33', NULL),
(3, 15, 5, 3, 'Quia sit in quod ten', 6, 8, 35, 63, 9, 43, 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-18 15:28:15', '2021-09-18 15:28:15', NULL),
(4, 15, 3, 3, 'Rem quam provident', 60, 71, 63, 89, 96, 59, 51, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-18 15:29:42', '2021-09-18 15:29:42', NULL),
(5, 1, 3, 2, 'Neque eius voluptate', 72000, 69, 73, 49, 79, 3, 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-09-19 00:42:19', '2021-09-19 00:42:19', NULL),
(6, 1, 2, 1, 'Nisi illum quia acc', 26000000, 72, 73, 41, 5000000, 78, 4500000, '<b>Ini Gambar Desain</b>', '<i>Ini Gambar Kerja</i>', '<u>Ini Spesifikasi Teknis</u>', 'Ini Rencana Kerja', 'Ini Syarat Pelaksanaan Bangunan', 'Ini Metode Pembayaran', 0, '2021-09-19 00:58:24', '2021-09-19 00:58:24', NULL),
(7, 1, 1, 1, 'Pemavingan Jalan Perumahan Taman Uma Dewi Residance', 43000000, 15, 360, 25, 3000000, 180, 10000000, '<p>Tes Hapus Image Gambar Desain</p>', NULL, '<p><span style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Pengerjaan menggunakan Stemper Kodok</span></p><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Besi untuk Got menggunakan Besi Ulir</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Pengerjaan Rabatan dengan cor isi batu</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Lubang Got&nbsp; dengan kedalaman minimal 25 cm&nbsp;<span style=\"font-size: 1rem;\">dari tepi rabatan&nbsp;</span><span style=\"font-size: 1rem;\">dengan lebar 20 cm&nbsp;&nbsp;</span></div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Bobok Beton dekat jembatan 5m x 2m x 12cm</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Pengerjaan besi termasuk las dan pengecatan&nbsp;</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Pengerjaan kanstein kursi bobok aspal&nbsp;</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Upgrade paving natural ke warna untuk pembuatan motif inisial nama perumahan&nbsp;</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Garansi pekerjaan 1 Tahun</div><div style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Paving ukuran 20x20 tebal 8, K-225</div>', NULL, '<p style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Pengerjaan dilakukan tanpa menutup jalan dan mengganggu aktifitas warga,&nbsp;</p><p style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">-pengerjaan dilakukan dari pukul 8 pagi - maksimal 5 sore. dan tidak boleh lembur</p>', '<p style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">- Pengerjaan dilakukan tanpa menutup jalan dan mengganggu aktifitas warga,&nbsp;</p><p style=\"color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">-pengerjaan dilakukan dari pukul 8 pagi - maksimal 5 sore. dan tidak boleh lembur</p>', 1, '2021-09-19 03:57:36', '2021-10-16 05:43:58', NULL),
(8, 18, 3, 3, 'Pembuatan Gedung Lantai 5', 90000000, 90, 72, 48, 67, 60, 68, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-09-19 06:54:21', '2021-10-16 05:43:31', NULL),
(9, 1, 1, 2, 'Sed exercitation dig', 21, 96, 88, 40, 18, 22, 61, 'fdwghfw', 'sdgfjksegk', 'fgsjkfg', 'gfijkljo', 'hvsdlhgioh', 'jgegjkgejk', 1, '2021-09-21 14:17:51', '2021-09-21 15:40:33', NULL),
(10, 18, 2, 1, 'Quaerat eiusmod dolo', 95000, 99, 15, 15, 86000, 84, 7000, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-09-28 13:50:33', '2021-09-28 13:53:03', NULL),
(11, 18, 1, 1, 'Tess Full Proyek', 100000000, 7, 90, 10, 5000000, 90, 25000000, '<p>Tes Gambar Desain1</p>', '<p>Tes Gambar Kerja</p>', '<p>Tes Spesifikasi Teknis</p>', '<p>Tes Rencana Kerja</p>', '<p>Tes Syarat Bangunan</p>', '<p>Tes Metode Pelaksanaan</p>', 1, '2021-11-13 22:17:07', '2021-11-13 22:35:20', NULL),
(12, 18, 3, 2, 'Rerum irure dolores', 90, 82, 59, 87, 5, 4, 79, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-16 12:55:01', '2021-11-16 12:56:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_periksa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `nama`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `section_id`, `status_periksa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Maesa', '5107082805950002', 'M', 'Tianyar Barat', '1995-05-27 16:00:00', 'Mekar', '1', '0', '2021-08-14 00:51:11', '2021-08-14 00:51:11', NULL),
(2, 'tesssssssssssss', '78', 'M', 'Sit atque dolores au', '2021-09-01 02:29:02', 'Cupidatat consequunt', '1', '0', '2021-09-01 02:28:40', '2021-09-01 02:29:02', '2021-09-01 02:29:02'),
(3, 'Vero ut consequatur', '53', 'M', 'Sunt dolor Nam dolor', '1995-05-27 16:00:00', 'Cupidatat natus quo', '1', '0', '2021-09-01 11:06:25', '2021-09-01 11:06:25', NULL),
(4, 'Qui odit sed fuga C', '44', 'F', 'Ullam quia labore do', '2021-09-01 11:33:08', 'Aut dignissimos sapi', '2', '0', '2021-09-01 11:12:24', '2021-09-01 11:33:08', '2021-09-01 11:33:08'),
(5, 'dbsjkgksjfjkesk', '40', 'F', 'Aut qui obcaecati du', '2021-09-01 11:34:27', 'Quae harum qui excep', '1', '0', '2021-09-01 11:34:07', '2021-09-01 11:34:27', '2021-09-01 11:34:27'),
(6, 'fwjhfweigfiwefuwegf', '70', 'F', 'Dolorum nihil tempor', '2021-09-01 11:35:07', 'Ex pariatur Sint am', '3', '0', '2021-09-01 11:34:44', '2021-09-01 11:35:07', '2021-09-01 11:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2021-09-01 16:37:15', '2021-09-01 16:37:15'),
(2, 'admin', 'web', '2021-09-01 16:37:31', '2021-09-01 16:37:31'),
(3, 'writer', 'web', '2021-09-01 16:41:51', '2021-09-01 16:41:51'),
(4, 'moderator', 'web', '2021-09-08 14:30:47', '2021-09-08 14:30:47'),
(5, 'crew', 'web', '2021-09-08 14:30:56', '2021-09-12 14:33:47'),
(6, 'pemilik proyek', 'web', '2021-09-18 04:15:56', '2021-09-19 06:23:37'),
(7, 'penyedia jasa', 'web', '2021-09-19 06:24:41', '2021-09-19 06:24:41'),
(8, 'konsultan', 'web', '2021-09-21 15:03:04', '2021-09-21 15:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 2),
(4, 1),
(4, 2),
(4, 5),
(7, 5),
(8, 5),
(9, 6),
(10, 7),
(11, 2),
(12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `nama_section`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ruang A', '2021-08-14 00:47:38', '2021-08-14 00:52:41', NULL),
(2, 'Ruang B', '2021-08-14 00:47:47', '2021-08-14 00:47:47', NULL),
(3, 'Ruang C', '2021-08-14 00:47:56', '2021-08-14 00:47:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_files`
--

CREATE TABLE `temporary_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temporary_files`
--

INSERT INTO `temporary_files` (`id`, `folder`, `filename`, `created_at`, `updated_at`) VALUES
(64, '611e694457027-1629382980', '5.png', '2021-08-19 14:23:00', '2021-08-19 14:23:00'),
(65, '611e699e45fd1-1629383070', '3.png', '2021-08-19 14:24:30', '2021-08-19 14:24:30'),
(66, '611e69a07ffb5-1629383072', '5.png', '2021-08-19 14:24:32', '2021-08-19 14:24:32'),
(67, '611e69cd85d35-1629383117', '3.png', '2021-08-19 14:25:17', '2021-08-19 14:25:17'),
(68, '611e69cff049d-1629383119', '4.png', '2021-08-19 14:25:20', '2021-08-19 14:25:20'),
(69, '611e6a06aea1a-1629383174', '1.png', '2021-08-19 14:26:14', '2021-08-19 14:26:14'),
(70, '611e6a0962480-1629383177', '2.png', '2021-08-19 14:26:17', '2021-08-19 14:26:17'),
(71, '611e6a0bde598-1629383179', '3.png', '2021-08-19 14:26:19', '2021-08-19 14:26:19'),
(72, '611e6b1f619ab-1629383455', '3.png', '2021-08-19 14:30:55', '2021-08-19 14:30:55'),
(73, '611e6b21ebe62-1629383457', '5.png', '2021-08-19 14:30:58', '2021-08-19 14:30:58'),
(74, '611e6bacc17a5-1629383596', '3.png', '2021-08-19 14:33:16', '2021-08-19 14:33:16'),
(75, '611e6bafe4f85-1629383599', '5.png', '2021-08-19 14:33:19', '2021-08-19 14:33:19'),
(76, '611e6c03c66d4-1629383683', '4.png', '2021-08-19 14:34:43', '2021-08-19 14:34:43'),
(77, '611e6c062a099-1629383686', '6.png', '2021-08-19 14:34:46', '2021-08-19 14:34:46'),
(78, '611e6c5f6de8c-1629383775', '6.png', '2021-08-19 14:36:15', '2021-08-19 14:36:15'),
(79, '611e6c6250edc-1629383778', '5.png', '2021-08-19 14:36:18', '2021-08-19 14:36:18'),
(80, '611e6c8e31397-1629383822', '4.png', '2021-08-19 14:37:02', '2021-08-19 14:37:02'),
(81, '611e6c975d232-1629383831', '5.png', '2021-08-19 14:37:11', '2021-08-19 14:37:11'),
(82, '611e6dbaea0b4-1629384122', '4.png', '2021-08-19 14:42:03', '2021-08-19 14:42:03'),
(83, '611e6e14cf361-1629384212', '2.png', '2021-08-19 14:43:32', '2021-08-19 14:43:32'),
(84, '611e6ed0f1b34-1629384400', '3.png', '2021-08-19 14:46:41', '2021-08-19 14:46:41'),
(85, '611e6ed3b0ca6-1629384403', '5.png', '2021-08-19 14:46:43', '2021-08-19 14:46:43'),
(86, '611e6efad0825-1629384442', '3.png', '2021-08-19 14:47:23', '2021-08-19 14:47:23'),
(87, '611e6efd56dab-1629384445', '5.png', '2021-08-19 14:47:25', '2021-08-19 14:47:25'),
(88, '611e6f36d9327-1629384502', '4.png', '2021-08-19 14:48:22', '2021-08-19 14:48:22'),
(89, '611e6f6048448-1629384544', '3.png', '2021-08-19 14:49:04', '2021-08-19 14:49:04'),
(90, '611e6f63057ad-1629384547', '5.png', '2021-08-19 14:49:07', '2021-08-19 14:49:07'),
(91, '611e6fe7cb429-1629384679', '3.png', '2021-08-19 14:51:19', '2021-08-19 14:51:19'),
(92, '611e6fea88db3-1629384682', '6.png', '2021-08-19 14:51:22', '2021-08-19 14:51:22'),
(93, '611e70f23f7c1-1629384946', '3.png', '2021-08-19 14:55:46', '2021-08-19 14:55:46'),
(94, '611e70f472a3c-1629384948', '5.png', '2021-08-19 14:55:48', '2021-08-19 14:55:48'),
(95, '611e72335cc0e-1629385267', '4.png', '2021-08-19 15:01:07', '2021-08-19 15:01:07'),
(96, '611e7235785a3-1629385269', '6.png', '2021-08-19 15:01:09', '2021-08-19 15:01:09'),
(97, '611e72708f14d-1629385328', '4.png', '2021-08-19 15:02:08', '2021-08-19 15:02:08'),
(98, '611e72733c04b-1629385331', '6.png', '2021-08-19 15:02:11', '2021-08-19 15:02:11'),
(99, '611e72c98f221-1629385417', '3.png', '2021-08-19 15:03:37', '2021-08-19 15:03:37'),
(100, '611e72cc0b3d9-1629385420', '5.png', '2021-08-19 15:03:40', '2021-08-19 15:03:40'),
(101, '6124b58ae0463-1629795722', '1.png', '2021-08-24 09:02:02', '2021-08-24 09:02:02'),
(102, '6124b58fc28f0-1629795727', '2.png', '2021-08-24 09:02:07', '2021-08-24 09:02:07'),
(103, '6124b59dc7a46-1629795741', '6.png', '2021-08-24 09:02:21', '2021-08-24 09:02:21'),
(104, '6124bb7b0f779-1629797243', '4.png', '2021-08-24 09:27:23', '2021-08-24 09:27:23'),
(105, '6124bb805442c-1629797248', '5.png', '2021-08-24 09:27:28', '2021-08-24 09:27:28'),
(106, '6124bb848fc15-1629797252', '6.png', '2021-08-24 09:27:32', '2021-08-24 09:27:32'),
(107, '6129fe7743245-1630142071', 'Setuju.png', '2021-08-28 09:14:31', '2021-08-28 09:14:31'),
(108, '6129feb3811dc-1630142131', 'Setuju2.png', '2021-08-28 09:15:31', '2021-08-28 09:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', '2021-09-18 06:04:06', '$2y$10$e77x6GU8r30ZADAe38kQKuw1nIVRcvAq6N.B.uKyh7FbNgKgvyLNO', NULL, 1, '2021-09-18 05:59:45', '2021-09-18 06:04:06', NULL),
(2, 'Admin', 'admin@gmail.com', '2021-09-18 06:05:35', '$2y$10$/wJFpaud/n4W8irbTF2FO.P9mPsRJZTl6I1gHMBklM8O6j8yIzDfK', NULL, 1, '2021-09-18 06:05:11', '2021-09-18 06:05:35', NULL),
(3, 'Mia Schmidt', 'ricalys@mailinator.com', '2021-09-18 06:06:27', '$2y$10$mndJaGLtmJ.BJCmldTP78ulbRnOnrfHe1.SPwyFmHtd2NWC08/Y0i', NULL, 0, '2021-09-18 06:06:07', '2021-09-18 09:51:28', '2021-09-18 09:51:28'),
(4, 'Amela George', 'rojycolozi@mailinator.com', '2021-09-18 06:09:06', '$2y$10$Ly3qOuVvT1wx7nRJax5jVO0Pl/Te0NCulWnahAxURpxv8jg19Vf96', NULL, 0, '2021-09-18 06:08:53', '2021-09-18 06:09:06', NULL),
(5, 'Alana Hensley', 'radevakode@mailinator.com', '2021-09-18 06:10:20', '$2y$10$GEpSAIhwt9grpEXva0iyauC2aBf6trImOftLs8VYr54k2I2BVi4U.', NULL, 0, '2021-09-18 06:10:08', '2021-09-18 06:10:20', NULL),
(6, 'Stuart Foreman', 'gewuxehy@mailinator.com', NULL, '$2y$10$TSO9ncuEe7mfU4UEZGfr../BN0FH95fPFYpsIyBr2U3mI3pMUo12O', NULL, 0, '2021-09-18 06:24:08', '2021-09-18 06:24:08', NULL),
(7, 'Mark Hicks', 'rabe@mailinator.com', NULL, '$2y$10$W3m/MrTb5CMDVywR2EIQW.OT/uabVpajIrIXv3zPHKHW747ky7mam', NULL, 0, '2021-09-18 06:25:01', '2021-09-18 09:51:36', '2021-09-18 09:51:36'),
(8, 'Unity Flores', 'jecemyk@mailinator.com', NULL, '$2y$10$Ex5sntNX2qjO16qeFkqsuuTWuS5zlRWDD8LciQamW6r5pGx5RCiZi', NULL, 0, '2021-09-18 06:26:32', '2021-09-18 06:26:32', NULL),
(9, 'Ira Garcia', 'guxoselalo@mailinator.com', NULL, '$2y$10$OIhHUE.SwUKUsynPlnA1KOZTWC4/hj.p7mUvguq2QGHK56G9Gg776', NULL, 0, '2021-09-18 06:26:53', '2021-09-18 06:26:53', NULL),
(10, 'Tara Rivas', 'gucykiw@mailinator.com', NULL, '$2y$10$pZ3C9GppZQ2M2dFMj9Ba.OuQ6zl8xf6BxHnZ7qCURiF3q9ts2Cy1e', NULL, 1, '2021-09-18 06:33:21', '2021-09-18 10:58:49', NULL),
(11, 'Whitney Ferguson', 'qycobic@mailinator.com', NULL, '$2y$10$pOHZfuhjjtlLjjJ26uxbFOiaeOgVmUXSRL5K33L6/3rPVMfQ/h5jG', NULL, 1, '2021-09-18 06:33:46', '2021-09-18 11:00:43', NULL),
(12, 'Jacob Kelley', 'wexiw@mailinator.com', '2021-09-18 06:35:13', '$2y$10$2q2NWGCMXj4RwxvMNy5cRewol9a51Mxg/xvEfGHSefcpJeGmomHLO', NULL, 1, '2021-09-18 06:34:19', '2021-09-18 10:56:13', NULL),
(13, 'Aaron Golden1', 'zizud@mailinator.com', '2021-09-18 09:56:43', '$2y$10$x4PG9G59HKc.z2v4oEOacOadE7biOsLc2bRHPYpSQDZ9KM0JCsMt.', NULL, 1, '2021-09-18 09:56:15', '2021-09-18 10:50:04', NULL),
(14, 'Evelyn Young', 'cucalet@mailinator.com', '2021-09-18 09:59:54', '$2y$10$owR2FnKT9QJntfMJZJ9QxuzQaAzJbGUqktq3IJMRWwfU41tal1RX2', NULL, 1, '2021-09-18 09:59:19', '2021-09-18 10:25:54', NULL),
(15, 'Gal Gadot', 'kontraktor@gmail.com', '2021-09-18 10:01:19', '$2y$10$kx/7TEauDWB6RaGPyF495O2DR98ieJEZIckXoYhswPA/txh0DMG0W', NULL, 1, '2021-09-18 10:01:04', '2021-09-18 10:24:38', NULL),
(16, 'Autumn Gilliam', 'vyfacyqeg@mailinator.com', '2021-09-18 10:05:59', '$2y$10$DaLLgHsOFO1DQYGNkFHB1u48.GaSvu5sklsTu5DVyBYPxC.Bjitx2', NULL, 1, '2021-09-18 10:05:20', '2021-09-18 10:54:12', NULL),
(17, 'Arsenio Cooke', 'hivem@mailinator.com', '2021-09-19 05:57:58', '$2y$10$4Sa5vwI5TAPQkQY/Xv84we8JJz4ZOq2ozkLwwduU4WJWUkMNA8Yha', NULL, 1, '2021-09-19 05:57:10', '2021-09-19 05:58:35', NULL),
(18, 'Captain America', 'owner@gmail.com', '2021-09-19 06:44:23', '$2y$10$P8mUcdYt96GZlSlt2D/DQ.pxor.mLlZ8iZKFoXjL3Rzm9gCsLQfMq', NULL, 1, '2021-09-19 06:43:57', '2021-09-19 06:44:58', NULL),
(19, 'Tesss', 'mahesa.deary@gmail.com', NULL, '$2y$10$JhNzJDTiVd5a4mWXl/4NxejjrBXM3sXKWJZkt88EiGb6VeZGMhkPW', NULL, 0, '2021-10-17 08:48:24', '2021-10-17 08:48:24', NULL),
(20, 'Mechelle Clayton', 'defacysun@mailinator.com', NULL, '$2y$10$RbzpeqSsSEdT5Yk4HecIOO73ltiNDc6Gf1mYgtvl0xSa79vwN7C56', NULL, 0, '2021-11-14 03:31:37', '2021-11-14 03:31:37', NULL),
(21, 'Gisela Vasquez', 'dibuzeq@mailinator.com', NULL, '$2y$10$o3tTwz.3UHOx42mRFgXI0u7wtC4u0JrWMnWtd4bOLEId/AF8CWUVW', NULL, 0, '2021-11-14 03:33:19', '2021-11-14 03:33:19', NULL),
(22, 'Inez Sheppard', 'wotuje@mailinator.com', NULL, '$2y$10$SAIHphGYHssl4R4jdXCMzeu8NZ5EbBpb8Nj.OaR5N6ag9kjRTBa5i', NULL, 0, '2021-11-14 03:34:05', '2021-11-14 03:34:05', NULL),
(23, 'Alea Stanley', 'sikobyqih@mailinator.com', NULL, '$2y$10$.Hv8cLd8ZMYZj9/dMZ19d.IprnHjmT.oewKPB.jWTdxYFxVv6Wga6', NULL, 0, '2021-11-14 03:34:48', '2021-11-14 03:34:48', NULL),
(24, 'Zelenia Clemons', 'vikilyh@mailinator.com', '2021-11-14 03:36:50', '$2y$10$poOcqACSgit93.gEhVqLXOA/9WFF6b//jxjQT2u.Q.dOSz4J25Bmu', NULL, 0, '2021-11-14 03:36:15', '2021-11-14 03:36:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_user_id_foreign` (`user_id`),
  ADD KEY `bids_project_id_foreign` (`project_id`);

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
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `metode_pembayarans`
--
ALTER TABLE `metode_pembayarans`
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
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_category_id_foreign` (`category_id`),
  ADD KEY `projects_metode_pembayaran_id_foreign` (`metode_pembayaran_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporary_files`
--
ALTER TABLE `temporary_files`
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
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `metode_pembayarans`
--
ALTER TABLE `metode_pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `bids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `projects_metode_pembayaran_id_foreign` FOREIGN KEY (`metode_pembayaran_id`) REFERENCES `metode_pembayarans` (`id`),
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
