-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2021 at 11:51 AM
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
(3, 'Sosial', '2021-08-14 02:21:00', '2021-08-14 02:21:19', NULL);

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
(52, 'App\\Models\\Post', 88, '4c44d2da-e5ff-49ef-b8a4-f61df448e7e7', 'document', '612ee5a21d9cf_6', '612ee5a21d9cf_6.png', 'image/png', 'mydisk', 'mydisk', 67540, '[]', '[]', '[]', '[]', 44, '2021-09-01 02:29:55', '2021-09-01 02:29:55');

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
(38, '2014_10_12_000000_create_users_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 1),
(41, '2021_07_25_082453_create_registrations_table', 1),
(42, '2021_07_25_113828_create_sections_table', 1),
(43, '2021_08_14_072910_create_categories_table', 1),
(46, '2021_08_15_221632_create_media_table', 3),
(47, '2021_08_14_073039_create_posts_table', 4),
(48, '2021_08_16_224423_create_temporary_files_table', 5),
(49, '2014_10_12_200000_add_two_factor_columns_to_users_table', 6);

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
(72, 1, 'Error sit ipsam quos', 'Sint minim asperiore', 500000, '2021-08-29 03:22:23', '2021-08-29 03:22:23', NULL),
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
(88, 1, 'Quod adipisicing tot', 'Sapiente soluta impe', 600, '2021-09-01 02:29:30', '2021-09-01 02:29:30', NULL);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adena Oliver', 'vomo@mailinator.com', NULL, '$2y$10$2qCOgPJ/s7Ya3zRS46sYPOroVMlTu8R5KVGjgwndgxCJC0t7AtJqm', NULL, NULL, NULL, '2021-09-01 02:32:47', '2021-09-01 02:32:47', NULL),
(2, 'Maesa', 'tes@gmail.com', '2021-09-01 05:00:49', '$2y$10$2nPeqxpnHqsw5kv3za3TXuJwc63Xmltb9cRnx1UI.t6EktcK1/3ka', NULL, NULL, 'i4lZmuiaNEbpbqZjb04uQCb3jt0s2Tayktd1jKDD7YtejXzeJs68hKPkmVXh', '2021-09-01 02:53:09', '2021-09-01 05:00:49', NULL),
(3, 'Admin', 'admin@gmail.com', '2021-09-01 04:33:34', '$2y$10$BQTdHkuOtGixfpqFGuZOh.LBmK9iO7xd.yRt9bVbpt5ELU5L3/8Xq', NULL, NULL, 'IsOfHl9gjzbek2GJfDBxlYSflVp9BZxJNNPmTO5AE4hraNXPN6FcQumqi1OZ', '2021-09-01 03:50:22', '2021-09-01 06:05:03', NULL),
(4, 'Velma Morton', 'fahirazol@mailinator.com', '2021-09-01 04:19:10', '$2y$10$NT8w2ugHcIHwYjMFH8xWSeoUZH/e.3Qnsy8MA/YsLUCMs9dunULhi', NULL, NULL, NULL, '2021-09-01 04:16:11', '2021-09-01 04:19:10', NULL),
(5, 'Madeson Pope', 'wexosifaca@mailinator.com', '2021-09-01 04:23:26', '$2y$10$XEI57kHhRRZe.V.1LKDsZOJqHl9YeZ0Urhx.B65TmMX/pS.50eGIy', NULL, NULL, NULL, '2021-09-01 04:20:49', '2021-09-01 04:23:26', NULL),
(6, 'Dale Michael', 'cumynexov@mailinator.com', '2021-09-01 04:26:26', '$2y$10$YiQyViSTgBzjBb9qom6kJuYXXLnQIGTF9UA0/VB7LHW6cAv10pkOu', NULL, NULL, NULL, '2021-09-01 04:24:24', '2021-09-01 04:26:26', NULL),
(7, 'Amethyst Boone', 'fomirigehe@mailinator.com', '2021-09-01 04:27:29', '$2y$10$fyx7gR0XSC.m.mmrAyeksO6pe64Htt6ZerlXr5NyowLpWkR0nLSVq', NULL, NULL, NULL, '2021-09-01 04:27:06', '2021-09-01 04:27:29', NULL),
(8, 'Iliana Duncan', 'roti@mailinator.com', '2021-09-01 04:51:42', '$2y$10$TY0hsHHZaFGKfOv0K/ethucS5Y3U6LBrTH0bnbJDHDiylWsZZvSYu', NULL, NULL, NULL, '2021-09-01 04:51:23', '2021-09-01 04:51:42', NULL),
(9, 'Xenos Terry', 'tydilozi@mailinator.com', '2021-09-01 04:52:46', '$2y$10$1I1.MQx7lQ1z1S1bQ5FOeOxcBAZ8qU8OjzgGY3oI3HsplkDmsP2ji', NULL, NULL, NULL, '2021-09-01 04:52:31', '2021-09-01 04:52:46', NULL);

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
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
