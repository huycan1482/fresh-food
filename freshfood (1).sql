-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 26, 2021 lúc 04:38 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `position`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'banner 1', 'banner-1', 'uploads/banner/1611389365_1607484695_bg_1.jpg', NULL, '_blank', 0, b'1', NULL, '2021-01-23 01:09:25', '2021-01-23 01:09:25'),
(2, 'banner 2', 'banner-2', 'uploads/banner/1611389406_1607485153_bg_2.jpg', NULL, '_blank', 0, b'1', NULL, '2021-01-23 01:10:06', '2021-01-23 01:10:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_hot` bit(1) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `position`, `is_hot`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Rau, củ quả', 'rau-cu-qua', 'uploads/category/1611373650_1607542736_banner_4.jpg', 0, b'0', b'1', '2020-11-29 00:56:25', '2021-01-22 20:47:30'),
(11, 'Trái cây', 'trai-cay', 'uploads/category/1611307509_1607754455_bg-1.jpg', 0, b'0', b'1', '2020-12-16 20:46:33', '2021-01-22 02:25:09'),
(12, 'Nấm', 'nam', 'uploads/category/1611307531_1607485417_banner_5.jpg', 0, b'0', b'1', '2021-01-17 01:14:46', '2021-01-22 02:25:31'),
(13, 'Thịt', 'thit', 'uploads/category/1611307548_1607484695_bg_1.jpg', 0, b'0', b'1', '2021-01-17 01:30:04', '2021-01-22 02:25:48'),
(14, 'Thủy, hải sản', 'thuy-hai-san', 'uploads/category/1610879314_Screenshot 2020-12-09 153547.jpg', 0, b'1', b'1', '2021-01-17 01:32:49', '2021-01-22 02:26:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(11) NOT NULL,
  `product_id` bigint(11) NOT NULL,
  `price` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'create', b'1', NULL, NULL),
(2, 'update', b'1', NULL, NULL),
(3, 'delete', b'1', NULL, NULL),
(4, 'view', b'1', NULL, NULL),
(5, 'active', b'0', NULL, '2020-12-19 02:21:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions_tables`
--

CREATE TABLE `permissions_tables` (
  `id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `table_id` bigint(20) NOT NULL,
  `action_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions_tables`
--

INSERT INTO `permissions_tables` (`id`, `permission_id`, `table_id`, `action_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'CREATE', b'1', '2020-12-18 03:04:24', '2020-12-18 03:04:24'),
(2, 2, 1, 'UPDATE', b'1', '2020-12-18 03:04:24', '2020-12-18 03:04:24'),
(3, 3, 1, 'DELETE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(4, 4, 1, 'VIEW', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(5, 5, 1, 'ACTIVE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(6, 1, 2, 'CREATE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(7, 2, 2, 'UPDATE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(8, 3, 2, 'DELETE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(9, 4, 2, 'VIEW', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(10, 5, 2, 'ACTIVE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(11, 1, 3, 'CREATE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(12, 2, 3, 'UPDATE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(13, 3, 3, 'DELETE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(14, 4, 3, 'VIEW', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(15, 5, 3, 'ACTIVE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(16, 1, 4, 'CREATE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(17, 2, 4, 'UPDATE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(18, 3, 4, 'DELETE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(19, 4, 4, 'VIEW', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(20, 5, 4, 'ACTIVE', b'1', '2020-12-18 03:05:14', '2020-12-18 03:05:14'),
(21, 1, 5, 'CREATE', b'1', '2020-12-18 03:11:36', '2020-12-18 03:11:36'),
(22, 2, 5, 'UPDATE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(23, 3, 5, 'DELETE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(24, 4, 5, 'VIEW', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(25, 5, 5, 'ACTIVE', b'1', '2020-12-18 03:24:10', '2020-12-18 03:24:10'),
(26, 1, 6, 'CREATE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(27, 2, 6, 'UPDATE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(28, 3, 6, 'DELETE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(29, 4, 6, 'VIEW', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(30, 5, 6, 'ACTIVE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(31, 1, 7, 'CREATE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:14:14'),
(32, 2, 7, 'UPDATE', b'1', '2020-12-18 03:14:14', '2020-12-18 03:24:24'),
(33, 3, 7, 'DELETE', b'1', '2020-12-18 03:28:19', '2020-12-18 03:28:19'),
(34, 4, 7, 'VIEW', b'1', '2020-12-18 03:28:19', '2020-12-18 03:28:19'),
(35, 5, 7, 'ACTIVE', b'1', '2020-12-18 08:19:39', '2020-12-18 08:19:39'),
(36, 1, 8, 'CREATE', b'1', '2020-12-20 02:46:20', '2020-12-20 02:46:20'),
(37, 2, 8, 'UPDATE', b'1', '2020-12-20 02:46:44', '2020-12-20 02:46:44'),
(38, 3, 8, 'DELETE', b'1', '2020-12-20 02:46:44', '2020-12-20 02:46:44'),
(39, 4, 8, 'VIEW', b'1', '2020-12-20 02:46:44', '2020-12-20 02:46:44'),
(40, 5, 8, 'ACTIVE', b'1', '2020-12-20 02:46:44', '2020-12-20 02:46:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `is_hot` bit(1) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NSX` date NOT NULL,
  `HSD` date NOT NULL,
  `season_start` date NOT NULL,
  `season_end` date NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `number`, `price`, `sku`, `sale`, `position`, `is_active`, `is_hot`, `category_id`, `vendor_id`, `summary`, `description`, `NSX`, `HSD`, `season_start`, `season_end`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'Bắp cải xanh', 'bap-cai-xanh', 'uploads/product/1611373930_1607531979_bap-cai.jpg', 213, 12312, NULL, 0, 0, b'1', b'0', 1, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2020-11-02', '2020-11-06', '2020-11-04', '2020-11-14', 'kg', '2020-11-30 08:01:06', '2021-01-23 02:04:41'),
(3, 'Bắp cải tím', 'bap-cai-tim', 'uploads/product/1611375294_1607541074_product-4.jpg', 10, 10000, NULL, NULL, 0, b'1', b'0', 1, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-04', '2021-01-07', '2021-01-18', '2021-01-29', 'kg', '2021-01-22 21:14:54', '2021-01-23 02:04:07'),
(4, 'Cần tây', 'can-tay', 'uploads/product/1611375443_1607543055_rau-can-tay.jpg', 10, 10000, NULL, NULL, 0, b'1', b'1', 1, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-11', '2021-01-15', '2021-01-11', '2021-01-30', 'kg', '2021-01-22 21:17:23', '2021-01-23 02:02:30'),
(5, 'Nấm đùi gà', 'nam-dui-ga', 'uploads/product/1611375524_1607592439_Nam_dui_ga.jpg', 10, 10000, NULL, 10, 0, b'1', b'1', 12, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-06', '2021-01-16', '2021-01-06', '2021-01-30', 'gam', '2021-01-22 21:18:44', '2021-01-23 02:03:57'),
(6, 'Nấm kim châm', 'nam-kim-cham', 'uploads/product/1611375582_1607592591_nam-kim-cham-han-quoc.png', 10, 10000, NULL, NULL, 0, b'1', b'0', 12, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-07', '2021-01-17', '2021-01-13', '2021-02-01', 'kg', '2021-01-22 21:19:42', '2021-01-23 02:03:47'),
(7, 'Táo NewZeland', 'tao-newzeland', 'uploads/product/1611375661_1607593350_Tao_Newzealand.png', 10, 10000, NULL, NULL, 0, b'1', b'1', 11, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-09', '2021-01-18', '2021-01-16', '2021-02-16', 'kg', '2021-01-22 21:21:01', '2021-01-23 02:03:38'),
(8, 'Xoài ngọt', 'xoai-ngot', 'uploads/product/1611375716_1607592985_qua_xoai.png', 10, 10000, NULL, NULL, 0, b'1', b'0', 11, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-07', '2021-01-18', '2021-01-16', '2021-02-16', 'kg', '2021-01-22 21:21:56', '2021-01-23 02:03:29'),
(9, 'Thịt gà công nghiệp', 'thit-ga-cong-nghiep', 'uploads/product/1611375744_243-2431471_chicken-meat-hd-png-download.png', 10, 10000, NULL, NULL, 0, b'1', b'0', 13, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-07', '2021-01-18', '2021-01-16', '2021-02-16', 'kg', '2021-01-22 21:22:24', '2021-01-23 02:03:19'),
(10, 'Thịt cá lóc', 'thit-ca-loc', 'uploads/product/1611375761_phan-biet-ca-loc-viet-nam-va-trung-quoc-201909041507591318.jpg', 10, 10000, NULL, NULL, 0, b'1', b'1', 14, 2, '<p>&quot;Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn&quot;</p>', '<h2>Lorem Ipsum l&agrave; g&igrave;?</h2>\n\n<p>Lorem Ipsum chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.</p>\n\n<p>&nbsp;</p>\n\n<h2>Tại sao lại sử dụng n&oacute;?</h2>\n\n<p>Ch&uacute;ng ta vẫn biết rằng, l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa dễ g&acirc;y rối tr&iacute; v&agrave; cản trở việc tập trung v&agrave;o yếu tố tr&igrave;nh b&agrave;y văn bản. Lorem Ipsum c&oacute; ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu &ldquo;Nội dung, nội dung, nội dung&rdquo; l&agrave; n&oacute; khiến văn bản giống thật hơn, b&igrave;nh thường hơn. Nhiều phần mềm thiết kế giao diện web v&agrave; d&agrave;n trang ng&agrave;y nay đ&atilde; sử dụng Lorem Ipsum l&agrave;m đoạn văn bản giả, v&agrave; nếu bạn thử t&igrave;m c&aacute;c đoạn &ldquo;Lorem ipsum&rdquo; tr&ecirc;n mạng th&igrave; sẽ kh&aacute;m ph&aacute; ra nhiều trang web hiện vẫn đang trong qu&aacute; tr&igrave;nh x&acirc;y dựng. C&oacute; nhiều phi&ecirc;n bản kh&aacute;c nhau đ&atilde; xuất hiện, đ&ocirc;i khi do v&ocirc; t&igrave;nh, nhiều khi do cố &yacute; (xen th&ecirc;m v&agrave;o những c&acirc;u h&agrave;i hước hay th&ocirc;ng tục).</p>\n\n<p>&nbsp;</p>\n\n<h2>N&oacute; đến từ đ&acirc;u?</h2>\n\n<p>Tr&aacute;i với quan điểm chung của số đ&ocirc;ng, Lorem Ipsum kh&ocirc;ng phải chỉ l&agrave; một đoạn văn bản ngẫu nhi&ecirc;n. Người ta t&igrave;m thấy nguồn gốc của n&oacute; từ những t&aacute;c phẩm văn học la-tinh cổ điển xuất hiện từ năm 45 trước C&ocirc;ng Nguy&ecirc;n, nghĩa l&agrave; n&oacute; đ&atilde; c&oacute; khoảng hơn 2000 tuổi. Một gi&aacute;o sư của trường Hampden-Sydney College (bang Virginia &ndash; Mỹ) quan t&acirc;m tới một trong những từ la-tinh kh&oacute; hiểu nhất, &ldquo;consectetur&rdquo;, tr&iacute;ch từ một đoạn của Lorem Ipsum, v&agrave; đ&atilde; nghi&ecirc;n cứu tất cả c&aacute;c ứng dụng của từ n&agrave;y trong văn học cổ điển, để từ đ&oacute; t&igrave;m ra nguồn gốc kh&ocirc;ng thể chối c&atilde;i của Lorem Ipsum. Thật ra, n&oacute; được t&igrave;m thấy trong c&aacute;c đoạn 1.10.32 v&agrave; 1.10.33 của &ldquo;De Finibus Bonorum et Malorum&rdquo; (Đỉnh tối thượng của C&aacute;i Tốt v&agrave; C&aacute;i Xấu) viết bởi Cicero v&agrave;o năm 45 trước C&ocirc;ng Nguy&ecirc;n. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết đạo l&iacute; rất phổ biến trong thời k&igrave; Phục Hưng.</p>', '2021-01-07', '2021-01-18', '2021-01-16', '2021-02-16', 'kg', '2021-01-22 21:22:41', '2021-01-23 02:02:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `url`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/productImage/1611161850_UserPermission.jpg', NULL, 0, b'1', '2020-12-01 02:48:37', '2021-01-20 09:57:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', b'1', NULL, '2020-12-19 20:59:09'),
(2, 'Manager', b'1', NULL, NULL),
(3, 'User', b'1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permissionTable_id` bigint(20) NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `permissionTable_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 1, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(2, 3, 2, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(3, 3, 3, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(4, 3, 4, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(5, 3, 6, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(6, 3, 7, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(7, 3, 8, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(8, 3, 9, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(9, 2, 11, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(10, 2, 12, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(11, 1, 13, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(12, 2, 14, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(13, 3, 16, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(14, 3, 17, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(15, 3, 18, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(16, 3, 19, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(17, 3, 21, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(18, 3, 22, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(19, 3, 23, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(20, 3, 24, b'1', '2020-12-18 08:20:38', '2020-12-18 08:20:38'),
(66, 2, 26, b'1', '2020-12-18 09:12:54', '2020-12-18 09:12:54'),
(67, 2, 27, b'1', '2020-12-18 09:12:54', '2020-12-18 09:12:54'),
(68, 1, 28, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(69, 2, 29, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(70, 2, 31, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(71, 2, 32, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(72, 1, 33, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(73, 2, 34, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(74, 1, 40, b'1', '2020-12-18 09:14:03', '2020-12-18 09:14:03'),
(75, 1, 36, b'1', '2020-12-20 02:48:06', '2020-12-20 02:48:06'),
(76, 1, 37, b'1', '2020-12-20 02:49:41', '2020-12-20 02:49:41'),
(77, 1, 38, b'1', '2020-12-20 02:49:41', '2020-12-20 02:49:41'),
(78, 1, 39, b'1', '2020-12-20 02:49:41', '2020-12-20 02:49:41'),
(79, 2, 3, b'1', NULL, NULL),
(80, 2, 3, b'1', NULL, NULL),
(81, 2, 3, b'1', NULL, NULL),
(82, 1, 1, b'1', NULL, NULL),
(83, 1, 3, b'1', NULL, NULL),
(84, 1, 1, b'1', NULL, NULL),
(85, 1, 3, b'1', NULL, NULL),
(86, 1, 1, b'1', NULL, NULL),
(87, 1, 3, b'1', NULL, NULL),
(90, 1, 1, b'1', NULL, NULL),
(91, 1, 11, b'1', NULL, NULL),
(92, 1, 1, b'1', NULL, NULL),
(94, 1, 9, b'1', NULL, NULL),
(95, 1, 5, b'1', NULL, NULL),
(96, 1, 5, b'1', NULL, NULL),
(97, 1, 5, b'1', NULL, NULL),
(98, 1, 5, b'1', NULL, NULL),
(99, 1, 5, b'1', NULL, NULL),
(100, 1, 5, b'1', NULL, NULL),
(101, 1, 5, b'1', NULL, NULL),
(102, 1, 5, b'1', NULL, NULL),
(103, 1, 5, b'1', NULL, NULL),
(104, 1, 5, b'1', NULL, NULL),
(105, 1, 5, b'1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'categories', b'1', NULL, NULL),
(2, 'products', b'1', NULL, NULL),
(3, 'users', b'1', NULL, NULL),
(4, 'images', b'1', '2020-12-18 03:01:35', '2020-12-18 03:01:35'),
(5, 'vendors', b'1', '2020-12-18 03:01:35', '2020-12-18 03:01:35'),
(6, 'tables', b'1', '2020-12-18 03:01:35', '2020-12-18 03:01:35'),
(7, 'permissions', b'1', '2020-12-18 03:01:35', '2020-12-19 01:18:21'),
(8, 'roles', b'1', '2020-12-20 02:41:02', '2020-12-20 02:41:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `is_active`) VALUES
(1, 'huy', 'huycan1482@gmail.com', '$2y$10$vKOOHwddSGAqn9bJPCgrRebI.DrZH1lhvOtolaxFz7l3TBeUQaJBq', NULL, '2020-12-02 01:54:39', '2020-12-19 01:14:49', NULL, b'1'),
(2, 'test', 'test@gmail.com', '$2y$10$5ucPg7n1apnXWdkEXFJlYOKVIf1ne0PJu6WZJIZB2Z9gmMGn2FmQK', NULL, '2020-12-02 02:59:51', '2020-12-18 20:00:30', NULL, b'0'),
(3, 'user', 'user@gmail.com', '$2y$10$j3rZzInhq6guqqfSJydM0OnuyvRJwJ.4/FtxC76LyikAbcQhIGLx6', NULL, '2020-12-13 21:46:21', '2020-12-18 19:50:30', NULL, b'1'),
(4, 'manager', 'manager@gmail.com', '$2y$10$PUlhrjB9N8fOAU2D9r1qFukqSFmTziN8oQvGL9ppI/1.gis2hADEO', NULL, '2020-12-15 20:32:08', '2020-12-18 20:01:32', NULL, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`id`, `user_id`, `role_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(2, 1, 2, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(3, 1, 3, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(4, 4, 2, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(5, 4, 3, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(6, 2, 2, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(7, 2, 3, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53'),
(8, 3, 3, b'1', '2020-12-18 02:58:53', '2020-12-18 02:58:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'test 2', 'test-2', 'huycan1482@gmail.com', '2137492379', 'uploads/vendor/1611050594_thu tu.jpg', 'http://freshfood.local:8080/admin/vendor/create', 'ádas', 0, b'0', '2020-11-29 22:27:01', '2021-01-19 03:03:14');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderDetails_orders` (`order_id`),
  ADD KEY `fk_orderDetails_products` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permissions_tables`
--
ALTER TABLE `permissions_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_permissionTable_table` (`table_id`),
  ADD KEY `fk_permissionTable_permission` (`permission_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_categories` (`category_id`),
  ADD KEY `fk_products_vendors` (`vendor_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productImages_products` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rolePer_role` (`role_id`),
  ADD KEY `fk_rolePer_perTable` (`permissionTable_id`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userRole_user` (`user_id`),
  ADD KEY `fk_userRole_role` (`role_id`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `permissions_tables`
--
ALTER TABLE `permissions_tables`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_orderDetails_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_orderDetails_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `permissions_tables`
--
ALTER TABLE `permissions_tables`
  ADD CONSTRAINT `fk_permissionTable_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `fk_permissionTable_table` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_products_vendors` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_productImages_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `fk_rolePer_perTable` FOREIGN KEY (`permissionTable_id`) REFERENCES `permissions_tables` (`id`),
  ADD CONSTRAINT `fk_rolePer_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `fk_userRole_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_userRole_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
