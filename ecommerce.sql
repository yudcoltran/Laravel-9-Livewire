-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 03:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Logitech', 'lg', 0, NULL, '2023-02-27 04:56:39', '2023-03-02 08:12:27', 2),
(2, 'DELL', 'dell', 0, NULL, '2023-02-27 05:04:51', '2023-03-02 08:12:17', 3),
(3, 'HP', 'hp', 0, NULL, '2023-02-27 05:05:01', '2023-03-02 08:11:59', 3),
(4, 'Asus', 'asus', 0, NULL, '2023-02-27 05:05:16', '2023-03-02 08:12:38', 3),
(5, 'Logitech', 'lg', 0, NULL, '2023-03-02 08:20:19', '2023-03-02 08:20:19', 4),
(6, 'Asus', 'asus', 1, NULL, '2023-03-02 08:20:44', '2023-03-02 08:20:53', 6),
(7, 'Akko', 'akko', 0, NULL, '2023-03-02 09:35:23', '2023-03-02 09:35:23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(43, 2, 15, 1, '2023-03-06 12:54:27', '2023-03-06 12:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Keyboard', 'keyboard', 'This is Keyboard', '1677702560.jpg', 'Keyboard', 'Keyboard', 'This is Keyboard', 0, '2023-02-27 00:03:54', '2023-03-01 13:29:20', NULL),
(3, 'Laptop', 'laptop', 'This is Laptop', '1677702512.png', 'Laptop', 'Laptop', 'This is Laptop', 0, '2023-02-27 00:09:26', '2023-03-01 13:28:32', NULL),
(4, 'Mouse', 'mouse', 'This is Mouse', '1677702575.jpg', 'Mouse', 'Mouse', 'This is Mouse', 0, '2023-02-27 00:15:54', '2023-03-01 13:29:35', NULL),
(5, 'CPU', 'cpu', 'This is CPU', NULL, 'CPU', 'CPU', 'This is CPU', 1, '2023-02-27 00:16:51', '2023-03-01 13:23:15', NULL),
(6, 'VGA', 'vga', 'This is VGA', '1677702399.jpg', 'VGA', 'VGA', 'This is VGA', 0, '2023-02-27 00:17:07', '2023-03-01 13:26:39', NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_26_154300_add_details_to_users_table', 2),
(7, '2023_02_26_174458_create_categories_table', 3),
(8, '2023_02_27_084125_add_soft_deletes_to_categories_table', 4),
(9, '2023_02_27_093257_create_brands_table', 5),
(10, '2023_02_27_154555_create_products_table', 6),
(11, '2023_02_27_155600_create_product_images_table', 6),
(12, '2023_02_28_055322_add_soft_deletes_to_products_table', 7),
(14, '2023_03_01_105150_create_sliders_table', 8),
(15, '2023_03_02_145140_add_category_id_to_brands_table', 9),
(16, '2023_03_02_205015_create_wishlists_table', 10),
(18, '2023_03_05_060015_create_carts_table', 11),
(20, '2023_03_05_172113_create_orders_table', 12),
(21, '2023_03_05_172528_create_order_items_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'LC-DoPwjRYA5b', 'Admin', 'admin1@gmail.com', '1111111111', '500000', 'shesssssssh', 'In progress', 'COD', NULL, '2023-03-05 12:27:20', '2023-03-05 12:27:20'),
(2, 2, 'LC-F93PHIm7Cd', 'Admin', 'admin1@gmail.com', '22222222222', '123123', '123123123', 'In progress', 'COD', NULL, '2023-03-05 12:30:00', '2023-03-05 12:30:00'),
(3, 2, 'LC-LHA3w1Jgqh', 'Admin', 'admin1@gmail.com', '11111111111', '500000', 'aaaaaaaaaaa', 'In progress', 'COD', NULL, '2023-03-05 12:46:17', '2023-03-05 12:46:17'),
(4, 2, 'LC-0nMRUnLH0u', 'Admin', 'admin1@gmail.com', '11111111111', '111111', '11111111', 'In progress', 'COD', NULL, '2023-03-05 13:00:48', '2023-03-05 13:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 3, 140, '2023-03-05 12:27:20', '2023-03-05 12:27:20'),
(2, 1, 17, 1, 180, '2023-03-05 12:27:20', '2023-03-05 12:27:20'),
(3, 2, 4, 3, 140, '2023-03-05 12:30:00', '2023-03-05 12:30:00'),
(4, 3, 4, 6, 140, '2023-03-05 12:46:17', '2023-03-05 12:46:17'),
(5, 4, 4, 1, 140, '2023-03-05 13:00:48', '2023-03-05 13:00:48');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending, 0=not trending',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden, 0=visible',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 4, 'G Pro X Superlight Black', 'G Pro X Superlight Black', 'Logitech', NULL, NULL, 150, 200, 20, 0, 0, NULL, NULL, NULL, '2023-02-27 23:38:41', '2023-02-28 11:42:26', NULL),
(4, 2, 'Logitech G913 TKL wireless', 'Logitech G913 TKL wireless', 'Logitech', NULL, NULL, 140, 200, 9, 0, 0, 'Logitech G913 TKL wireless', NULL, 'Logitech G913 TKL wireless', '2023-02-28 03:19:59', '2023-03-05 13:00:48', NULL),
(15, 2, 'Logitech G715 TKL Aurora Off White Linear Wireless', 'Logitech G715 TKL Aurora Off White Linear Wireless', 'Logitech', 'Thiết kế phần tựa bàn tay hình đám mây thoải mái\r\nKết nối không dây LIGHTSPEED siêu nhạy\r\nCông nghệ Switch GX cao cấp đến từ Logitech\r\nBố cục nhỏ gọn, không có bàn phím số\r\nĐộ cao điều chỉnh được đem lại cảm giác tuyệt vời suốt cả ngày.', 'G715 TKL phối màu Off White là một trong những dòng bàn phím cơ mới nhất trong series Aurora từ Logitech. Với thiết kế bàn phím TKL nhỏ gọn, cùng các phím bấm media bố trí thông minh giúp bạn thuận lợi trong mọi nhu cầu sử dụng. Logitech G715 TKL Off White là một trong những dòng bàn phím máy tính sở hữu thiết kế nhỏ gọn dễ dàng mang đi bất kỳ đâu. Được đánh giá là một trong những dòng bàn phím TKL mang đến cho người chơi trải nghiệm gõ độc đáo cùng thiết kế nổi bật.  Để tăng thêm phần độc đáo cho mọi không gian, Logitech G715 TKL Off White được trang bị hệ thống led RGB cùng nhiều hiệu ứng chiếu sáng ấn tượng, lung linh có thể tinh chỉnh qua LIGHTSYNC. Người chơi hoàn toàn có thể đồng bộ các thiết bị như chuột máy tính, tai nghe và các thiết bị trong “Hệ sinh thái Logitech” vô cùng dễ dàng. Để tối ưu khả năng di chuyển cho mọi nhu cầu sử dụng, Logitech G715 TKL được trang bị công nghệ kết nối Bluetooth siêu nhanh, kết nối ổn định, độ trễ cực thấp tránh làm gián đoạn khi sử dụng. Đặc biệt, với công nghệ LIGHTSPEED siêu nhạy bạn sẽ có những trải nghiệm ấn tượng cùng Logitech G715.', 200, 250, 10, 1, 0, 'Logitech G715 TKL Aurora Off White Linear Wireless', NULL, 'Logitech G715 TKL Aurora Off White Linear Wireless', '2023-03-02 09:00:26', '2023-03-02 11:33:24', NULL),
(16, 2, 'AKKO 3084 v2 RGB – Black', 'AKKO 3084 v2 RGB – Black', 'Akko', 'AKKO 3084 v2 RGB – Black hứa hẹn sẽ là bàn phím cơ nổi bật ở phân khúc giá trong khoảng từ 1 triệu tới dưới 2 triệu Đồng nhờ những ưu điểm dưới đây\r\n\r\nKeycap PBT Double-Shot, ASA profile xuyên LED\r\nTặng kèm rất nhiều keycap (kết hợp cùng keycap stock trên phím để thành fullset)\r\nKết nối dây qua cổng USB Type-C và có thể tháo rời, thuận tiện cho việc mang vác đi lại\r\nAKKO CS Jelly switch kết hợp cùng foam tiêu âm PCB cho trải nghiệm gõ tối ưu và êm ái\r\nGiá thành hấp dẫn, phù hợp với người dùng mới và dễ tiếp cận\r\nCó LED RGB và hotswap cho người dùng phím cơ thích tự vọc vạch, mày mò, nghiên cứu (custom theo sở thích cá nhân)', 'Model: 3084 (84 keys)\r\nKết nối: USB Type-C to Type-A, có thể tháo rời\r\nHỗ trợ thay nóng switch (hotswap, 5 pin)\r\nCó lót tiêu âm (FOAM) dầy 3.5mm (nằm giữa plate và PCB)\r\nKích thước: 315 x 127 x 42mm | Trọng lượng ~ 0.73kg\r\nLED RGB (Backlit, 4028 SMD LED dạng SMD) với nhiều chế độ\r\nKeycap: PBT Double-Shot, ASA profile (Xuyên LED)\r\nLoại switch: Akko CS switch (Jelly Pink / Jelly Purple)\r\nHỗ trợ NKRO / Multimedia / Macro / Khóa phím Windows\r\nPhụ kiện: 1 sách hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 dây cáp USB + 1 set keycap tặng kèm (kết hợp cùng keycap trên phím tạo thành full set)\r\nTương thích: Windows / MacOS / Linux\r\nBàn phím AKKO khi kết nối với MacOS: (Ctrl -> Control | Windows -> Command | Alt -> Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này)', 140, 90, 5, 0, 0, 'AKKO 3084 v2 RGB – Black', NULL, 'AKKO 3084 v2 RGB – Black', '2023-03-02 09:07:19', '2023-03-02 11:33:34', NULL),
(17, 2, 'AKKO 3084B Plus World Tour Tokyo R2', 'AKKO 3084B Plus World Tour Tokyo R2', 'Akko', 'AKKO 3084B Plus World Tour Tokyo R2 hứa hẹn sẽ là bàn phím cơ nổi bật ở phân khúc giá trong khoảng 2 triệu Đồng nhờ những ưu điểm dưới đây\r\n\r\nKeycap PBT Dye-Subbed, OSA profile với tông màu trắng / hồng thiết kế theo chủ đề đặc trưng của Nhật Bản\r\nLayout 84 phím 75% có hàng F1 – F12 tiện dụng cho mọi loại nhu cầu sử dụng\r\n3 chế độ kết nối tùy chọn (Dây / Bluetooth 5.0 / Wireless 2.4Ghz)\r\nAKKO CS Jelly switch kết hợp cùng foam tiêu âm PCB cho trải nghiệm gõ tối ưu và êm ái\r\nCó LED RGB và hotswap cho người dùng phím cơ thích tự vọc vạch, mày mò, nghiên cứu (custom theo sở thích cá nhân)', 'Model: 3084 (84 keys)\r\nLED nền RGB (6028 SMD LED) với nhiều chế độ\r\nPin 3000mah (Tiêu thụ 12ma / giờ ở chế độ không dây và không bật LED)\r\nKích thước: 315x126x38 mm | Trọng lượng ~ 0.75kg\r\nKeycap PBT Dye-Subbed, OSA Profile\r\nLoại switch: AKKO CS Switch Jelly Pink\r\nKết nối: USB Type C, có thể tháo rời / Bluetooth 5.0 (tối đa 3 thiết bị)/ Wireless 2.4Ghz (1 trong 3). NSX khuyến cáo chỉ nên cắm USB receiver 2.4ghz vào cổng USB 2.0 để được tín hiệu không dây tốt nhất.\r\nHỗ trợ NKRO / Multimedia / Macro / Khóa phím Win\r\nTích hợp sẵn foam tiêu âm PCB và foam đáy\r\nHotswap 5 pin TTC socket (Riêng nút F1 và F2 3 pin do thiết kế gần với đầu cắm USB)\r\nPhụ kiện: 1 sách hướng dẫn sử dụng + 1 dây USB Type-C to USB + 1 USB Receiver 2.4Ghz\r\nPhần mềm: AKKO Cloud (Hỗ trợ Audio Visualizer ở chế độ kết nối 2.4Ghz) có thể keymap và chỉnh LED\r\nTương thích: Windows / MacOS / Linux\r\nBàn phím AKKO khi kết nối với MacOS: (Ctrl -> Control | Windows -> Command | Alt -> Option, Mojave OS trở lên sẽ điều chỉnh được thứ tự của các phím này)', 180, 150, 6, 0, 0, 'AKKO 3084B Plus World Tour Tokyo R2', NULL, 'AKKO 3084B Plus World Tour Tokyo R2', '2023-03-02 09:08:26', '2023-03-02 11:33:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'uploads/products/1677566321.jpg', '2023-02-27 23:38:41', '2023-02-27 23:38:41'),
(2, 4, 'uploads/products/16775795991.jpg', '2023-02-28 03:19:59', '2023-02-28 03:19:59'),
(5, 3, 'uploads/products/16775864471.jpg', '2023-02-28 05:14:07', '2023-02-28 05:14:07'),
(15, 3, 'uploads/products/16776106661.jpg', '2023-02-28 11:57:46', '2023-02-28 11:57:46'),
(16, 15, 'uploads/products/16777728261.jpg', '2023-03-02 09:00:26', '2023-03-02 09:00:26'),
(17, 16, 'uploads/products/16777732391.jpg', '2023-03-02 09:07:19', '2023-03-02 09:07:19'),
(18, 17, 'uploads/products/16777733061.jpg', '2023-03-02 09:08:26', '2023-03-02 09:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden, 0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce Slider One', 'Ecommerce Slider One Description', 'uploads/slider/1677678204.jpg', 1, '2023-03-01 06:43:24', '2023-03-01 10:09:43'),
(2, 'Ecommerce Slider Two', 'Ecommerce Slider Two Description', 'uploads/slider/1677678235.jpg', 1, '2023-03-01 06:43:55', '2023-03-01 10:09:37'),
(3, 'Ecommerce Slider Three', 'Ecommerce Slider Three Description', 'uploads/slider/1677678255.png', 1, '2023-03-01 06:44:15', '2023-03-01 10:09:32'),
(4, 'Ecommerce Slider Four', 'Ecommerce Slider Four Description', 'uploads/slider/1677678272.jpg', 1, '2023-03-01 06:44:32', '2023-03-01 10:09:27'),
(5, 'Ecommerce Slider Five', 'Ecommerce Slider Five Description', 'uploads/slider/1677678286.png', 1, '2023-03-01 06:44:46', '2023-03-01 10:09:21'),
(6, 'Máy tính xách tay Dòng GeForce RTX™ 40', 'Thế hệ mới', 'uploads/slider/1677690632.jpg', 0, '2023-03-01 10:10:32', '2023-03-02 11:18:18'),
(7, 'GeForce RTX™ 4070 Ti', 'Nhanh hơn cả người yêu cũ trở mặt', 'uploads/slider/1677690648.jpg', 0, '2023-03-01 10:10:48', '2023-03-02 11:17:20'),
(8, 'NVIDIA DLSS', 'Sẵn sàng cho tựa game yêu thích của bạn.', 'uploads/slider/1677690665.jpg', 0, '2023-03-01 10:11:05', '2023-03-01 10:34:49');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user, 1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'tran duy loc', 'user1@gmail.com', NULL, '$2y$10$qRPs3B7C07tvkf0PmAH/Ee.N/01ZpLz8TEbH7CzWpWCRjB2TN7kle', NULL, '2023-02-26 03:41:59', '2023-02-26 03:41:59', 0),
(2, 'Admin', 'admin1@gmail.com', '2023-02-26 09:09:02', '$2y$10$.WIwRkUMHYKHWGwIsDR1NuCBGujBwyBZ7B2Qj6BfszqGi6GLwx2pu', 'JLEzd00xolkMZToB7WopSGlGmUhdP5BtVEnFXctM0AwtKWx56J05ovclsHNw', '2023-02-26 09:09:02', '2023-02-26 09:09:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
