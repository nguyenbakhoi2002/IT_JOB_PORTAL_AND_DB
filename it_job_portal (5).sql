-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2024 lúc 04:59 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `it_job_portal`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0 COMMENT '0 là nhân viên, 1 là admin\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`, `image`, `phone`, `address`, `type`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$12$QkvZ8YcQ7Gn.tFFLM4Ltg.nnVKb7dbHk96/ChXFNTvVRrtgROCOBy', 'admin', '1716705159-logo-admin.png', '19001009', 'Admin, hà nội', 1, NULL, '2024-05-26 07:30:10'),
(2, 'nv1@gmail.com', '$2y$12$lAPRlcJDyH7/veq2vQ8XWONiHW2PqWegXprxcSRK3AuVHi1n56gLe', 'Nguyễn Thị Hà ', NULL, '19781009', 'Phùng Xá, Thạch Thất, Hà Nội', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `candidate`
--

CREATE TABLE `candidate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1 COMMENT '0: chặn, 1:hoạt động',
  `job_search_function` int(11) NOT NULL DEFAULT 0 COMMENT 'Chức năng tìm kiếm việc làm, 0: đang tắt, 1: đang bật',
  `token` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `email`, `password`, `phone`, `user_image`, `status`, `job_search_function`, `token`, `google_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyễn Bá Khôi', 'nkhoi855@gmail.com', '$2y$12$tPLxVLL/MCjmvq5kT41.3evTq94o6qUc6ABHJfhS3IZMbMozDWwvG', '0368454463', '1716705224-logo-nguyen-ba-khoi.png', 1, 1, NULL, NULL, '2024-02-22 19:38:44', '2024-06-18 15:56:27', NULL),
(2, 'Nguyễn Anh Vui', 'nvui@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', '0368542323', '', 1, 0, '', NULL, '2024-02-22 19:38:44', '2024-02-22 19:38:44', NULL),
(3, 'Nguyễn Văn Hà', 'nha@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', '0368456548', '', 1, 0, '', NULL, '2024-02-22 19:38:44', '2024-02-22 19:38:44', NULL),
(4, 'Nguyễn Thi Lan', 'nhlan@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', '0368456548', '', 1, 0, '', NULL, '2024-02-22 19:38:44', '2024-02-22 19:38:44', NULL),
(5, 'Đỗ Văn Long', 'dlong@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', '0368456548', '', 1, 0, '', NULL, '2024-02-22 19:38:44', '2024-02-22 19:38:44', NULL),
(6, 'ĐỗThị Trang', 'trang@gmail.com', '$2y$12$AWZN4W16OzqJIdFaEzoPVO0zba08iv2VpAAnSQm2loW7ElWDrZ5j.', NULL, NULL, 0, 1, '', NULL, '2024-03-16 00:18:28', '2024-05-13 11:27:09', NULL),
(7, 'Thanh Minh Nguyễn', 'tm@gmail.com', '$2y$12$EqK1lnzWP4qRO4Yzk0Iu.erkfGsTrl.Q7T8FRHI4Ggr8BmOWPhXL6', '0368235732', '1711797950-logo-them-moi.png', 1, 1, '', NULL, '2024-03-30 16:31:06', '2024-05-31 00:22:56', NULL),
(9, 'Trang Đỗ', 'trangeri203@gmail.com', 'eyJpdiI6IklTdUZwd3Y0djg2bituNmlleTFEWUE9PSIsInZhbHVlIjoiV0NuVTNLV2NMK2NxQmQ4cUVlNm44WjR3TVFrdk95SnlZaGFnZUFTUll5VT0iLCJtYWMiOiJlMTU5MzA4YTIxYjY2NjhiYTc0MTkzMDRiYzQ4NWQyMDFlODg1ODUzODZjZGM1YWM5ZjBkN2Y2NjI3OGU5ZDQwIiwidGFnIjoiIn0=', NULL, NULL, 1, 0, NULL, '117692855760333312222', '2024-05-29 08:22:24', '2024-05-29 08:22:24', NULL),
(10, 'Nguyễn Văn Khánh', 'vkhanh@gmai.com', '$2y$12$BekNbvxNEQGT00T2sAIxbOJ9pm3GPq7Uybll5ObvRMe1ZBMDRsUA6', '0248651248', '1717158797-logo-nguyen-van-khanh.jpg', 1, 0, NULL, NULL, '2024-05-31 14:22:50', '2024-06-10 01:01:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `company_model` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1 COMMENT '0: chặn, 1: hoạt động\r\n',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link_web` text DEFAULT NULL,
  `image_paper` varchar(255) DEFAULT NULL,
  `founded_in` date DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `companies`
--

INSERT INTO `companies` (`id`, `email`, `password`, `name`, `company_name`, `address`, `phone`, `logo`, `token`, `company_model`, `status`, `created_at`, `updated_at`, `link_web`, `image_paper`, `founded_in`, `team`, `about`, `map`, `deleted_at`) VALUES
(1, 'ct1@gmail.com', '$2y$12$lAPRlcJDyH7/veq2vQ8XWONiHW2PqWegXprxcSRK3AuVHi1n56gLe', 'HR1', 'Công ty Cổ phẩn giải pháp công nghệ', '05 Phạm Văn Hai, Phường 1, Quận Tân Bình, Tp.HCM', '123456789', '1705909809-logo-.jpg', NULL, 'Công ty cổ phần', 1, '2024-01-22 00:22:20', '2024-06-17 01:52:10', 'https://CTCP.com/home', '1717315998-paper-.jpg', NULL, '2000', 'là một công ty đa quốc gia chuyên về giải pháp phần mềm, cung cấp các dịch vụ hỗ trợ kỹ thuật nhanh chóng và chuyên sâu hàng đầu thế giới.Vượt qua các rào cản về địa lý, ngôn ngữ và múi giờ, ...', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1652848713757!2d106.66284577457513!3d10.798649858784348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175292e2ddab663%3A0xbfeb8a23e0e555f2!2zNSBQaOG6oW0gVsSDbiBIYWksIFBoxrDhu51uZyAxLCBUw6JuIELDrG5oLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1716974940306!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL),
(2, 'ct2@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', NULL, 'Công ty TNHH Acgen', 'Hà nội', '0368454462', '1705857739-logo-.jpg', NULL, 'Công ty hợp danh', 1, '2024-01-22 00:22:20', '2024-03-22 15:13:21', NULL, '1705857739-paper-.jpg', NULL, '800', 'about', NULL, NULL),
(4, 'ct3@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', 'CEO11', 'Công nghệ và truyền thông HIG', 'Hà Nội', '0333656656', '1710933149-logo-.png', NULL, 'Công ty hợp danh', 1, '2024-03-18 20:33:47', '2024-06-12 22:27:48', 'https://www.facebook.com/khoi.nguyenba.986', '1711768688-paper-.jpg', NULL, '3000', 'about3', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8639811788175!2d105.74421217517667!3d21.03812778061359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b991d80fd5%3A0x53cefc99d6b0bf6f!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEZQVCBQb2x5dGVjaG5pY', NULL),
(5, 'ct4@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', 'CEO1111', 'Công ty Fox Bay', 'HCM', '0333656652', '1710933191-logo-.jpg', NULL, 'Công ty cổ phần', 1, '2024-03-12 20:33:47', '2024-03-20 18:13:11', NULL, '1710933191-paper-.jpg', NULL, NULL, NULL, NULL, NULL),
(6, 'ct5@gmail.com', '$2y$12$zunzp35J9bBGqnLX0VqwFOk1zG2EiiiEmqDdPNm/o2z7A2MyZZdxy', 'CEO123', 'Công ty TNHH NewRobo', 'Đống Đa , Hà Nội', '0333656633', '1710933218-logo-.jpg', NULL, 'Công ty tư nhân', 1, '2024-03-08 20:33:47', '2024-03-20 18:13:38', NULL, '1710933218-paper-.jpg', NULL, '500', NULL, NULL, NULL),
(9, 'cttest@gmail.com', '$2y$12$gjh8OggPBiY.M8L0kSOi0OTfx9ZWF4ctiTfSQnTHdbKQvaykdcDI.', 'Nguyễn bá khôi', 'Công ty test', 'Thôn Bùng, Phùng Xá, Thạch Thất', '19001009', '1718036584-logo-cong-ty-test.jpg', NULL, 'công ty tư nhân', 1, '2024-05-08 20:33:47', '2024-06-18 00:25:49', 'http://localhost/phpmyadmin/', NULL, '2022-03-03', '1200', 'Đây là công ty Yone', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `degree`
--

CREATE TABLE `degree` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `degree`
--

INSERT INTO `degree` (`id`, `name`, `level`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Không', 0, 1, NULL, '2024-06-09 18:02:41', NULL),
(2, 'Cao đẳng', 3, 1, NULL, '2024-06-09 18:02:45', NULL),
(3, 'Đại hoc', 4, 1, NULL, '2024-06-09 18:02:48', NULL),
(4, 'Thạc sĩ', 5, 1, NULL, '2024-06-14 16:41:47', NULL),
(5, 'Trung học phổ thông', 1, 1, NULL, '2024-06-09 18:02:55', NULL),
(8, 'Bằng trung tâm đào tạo', 2, 1, '2024-03-22 10:55:24', '2024-06-09 18:02:59', NULL),
(12, '1', 15, 0, '2024-03-27 18:23:46', '2024-03-27 18:23:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `educations`
--

CREATE TABLE `educations` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `major_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `seeker_profile_id` int(10) UNSIGNED NOT NULL,
  `degree_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `educations`
--

INSERT INTO `educations` (`id`, `school_name`, `major_id`, `start_date`, `end_date`, `description`, `seeker_profile_id`, `degree_id`, `created_at`, `updated_at`) VALUES
(1, 'UTC', 1, '2024-04-12', NULL, 'a', 1, 4, NULL, '2024-04-12 14:02:50'),
(3, 'PTIT', 3, '2020-06-09', NULL, NULL, 2, 4, NULL, NULL),
(4, 'TLU', 1, '2020-06-09', NULL, NULL, 3, 3, NULL, NULL),
(5, 'Đại học Việt Hung', 4, '2020-06-09', NULL, NULL, 4, 3, NULL, NULL),
(6, 'Đại học Công Đoàn', 5, '2016-06-09', '2020-06-09', NULL, 5, 4, NULL, NULL),
(7, 'Đại học Giao thông vận tải', 5, '2020-07-09', '2024-06-09', NULL, 5, 3, NULL, NULL),
(9, 'Thủy Lợi', 6, '2024-04-09', NULL, 'đoạn văn này', 1, 3, '2024-04-12 14:55:43', '2024-04-12 14:56:46'),
(16, 'UTC', 1, '2024-04-12', NULL, 'a', 9, 4, '2024-04-23 17:05:09', '2024-04-23 17:05:09'),
(17, 'Thủy Lợi', 6, '2024-04-09', NULL, 'đoạn văn này', 9, 3, '2024-04-23 17:05:09', '2024-04-23 17:05:09'),
(18, 'Đại học Giao thông vận tải', 6, '2019-07-28', NULL, 'GPA 3.6', 10, 3, '2024-04-28 15:42:04', '2024-04-28 15:42:04'),
(19, 'Đại học Giao thông vận tải', 6, '2019-07-28', NULL, 'GPA 3.6', 11, 3, '2024-04-28 15:46:18', '2024-04-28 15:46:18'),
(20, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 12, 3, '2024-05-30 17:59:17', '2024-05-30 17:59:17'),
(21, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 13, 3, '2024-05-30 18:07:54', '2024-05-30 18:07:54'),
(22, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 14, 3, '2024-05-30 18:08:03', '2024-05-30 18:08:03'),
(23, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 15, 3, '2024-05-30 18:08:11', '2024-05-30 18:08:11'),
(24, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 16, 3, '2024-05-30 18:08:18', '2024-05-30 18:08:18'),
(25, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 17, 3, '2024-05-30 18:08:25', '2024-05-30 18:08:25'),
(26, 'Đại học Bưu chính viễn thông', 1, '2017-06-30', '2023-06-30', 'GPA: 3.8', 18, 3, '2024-05-30 18:08:33', '2024-05-30 18:08:33'),
(27, 'Đại học công nghiệp', 3, '2015-09-12', '2020-06-12', 'học lực xuất sắc \r\nGPA 3.9', 23, 4, '2024-05-31 10:15:46', '2024-05-31 10:47:14'),
(31, 'Đại học công nghiệp', 3, '2015-09-12', '2020-06-12', 'học lực xuất sắc \r\nGPA 3.9', 24, 4, '2024-05-31 12:22:51', '2024-05-31 12:22:51'),
(32, 'Đại học công nghiệp', 3, '2015-09-12', '2020-06-12', 'học lực xuất sắc \r\nGPA 3.9', 25, 4, '2024-05-31 12:29:31', '2024-05-31 12:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `seeker_profile_id` int(11) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `company_name` varchar(255) NOT NULL,
  `work_position` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `experiences`
--

INSERT INTO `experiences` (`id`, `seeker_profile_id`, `start_date`, `end_date`, `company_name`, `work_position`, `description`, `created_at`, `updated_at`) VALUES
(3, 2, '2023-01-27', '2023-09-20', 'Công ty cung cấp dịch vụ internet II', 'Nhân viên', NULL, NULL, NULL),
(4, 3, '2022-06-27', '2023-07-20', 'Công ty TNHH chuyển đổi số', 'Nhân viên', NULL, NULL, NULL),
(5, 2, '2023-10-14', '2023-11-19', 'Công ty Asus', 'Nhân viên', NULL, NULL, NULL),
(6, 3, '2020-02-14', '2022-05-19', 'Công ty công nghệ CMC', 'Nhân viên', NULL, NULL, NULL),
(21, 1, '2023-02-23', '2024-01-23', 't', 'sếp', 'e', '2024-04-23 14:45:51', '2024-04-23 14:46:34'),
(22, 1, '2023-12-01', '2024-04-23', 't2', 'sếp', 'ee', '2024-04-23 14:51:13', '2024-04-23 14:51:13'),
(29, 9, '2023-02-23', '2024-01-23', 't', 'sếp', 'e', '2024-04-23 17:05:09', '2024-04-23 17:05:09'),
(30, 9, '2023-12-01', '2024-04-23', 't2', 'sếp', 'ee', '2024-04-23 17:05:09', '2024-04-23 17:05:09'),
(31, 5, '2021-02-25', '2024-04-02', 'hobasoft', 'nhân viên', 'mô tả', '2024-04-24 16:35:45', '2024-04-24 16:35:45'),
(32, 10, '2022-01-28', '2023-11-28', 'FPT SOFT', 'Trưởng phòng', 'Trưởng Phòng DEV FS02', '2024-04-28 15:35:46', '2024-04-28 15:35:46'),
(33, 10, '2023-12-28', '2024-04-03', 'Samsung', 'Lập trình viên', 'Lập trình C#', '2024-04-28 15:37:13', '2024-04-28 15:37:13'),
(34, 11, '2022-01-28', '2023-11-28', 'FPT SOFT', 'Trưởng phòng', 'Trưởng Phòng DEV FS02', '2024-04-28 15:46:18', '2024-04-28 15:46:18'),
(35, 11, '2023-12-28', '2024-04-03', 'Samsung', 'Lập trình viên', 'Lập trình C#', '2024-04-28 15:46:18', '2024-04-28 15:46:18'),
(36, 4, '2022-02-23', '2024-01-16', 'công ty công nghệ APE', 'nhân viên', 'thực hiện làm những dự án CRUD', '2024-05-27 09:11:06', '2024-05-27 09:11:06'),
(37, 4, '2022-02-23', '2024-01-16', 'công ty công nghệ APE', 'nhân viên', 'thực hiện làm những dự án CRUD', '2024-05-27 09:11:15', '2024-05-27 09:11:15'),
(38, 4, '2022-02-23', '2024-01-16', 'công ty công nghệ APE', 'nhân viên', 'thực hiện làm những dự án CRUD', '2024-05-27 09:11:15', '2024-05-27 09:11:15'),
(39, 12, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 17:55:58', '2024-05-30 17:55:58'),
(40, 13, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 18:07:54', '2024-05-30 18:07:54'),
(41, 14, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 18:08:03', '2024-05-30 18:08:03'),
(42, 15, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 18:08:11', '2024-05-30 18:08:11'),
(43, 16, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 18:08:18', '2024-05-30 18:08:18'),
(44, 17, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 18:08:25', '2024-05-30 18:08:25'),
(45, 18, '2019-06-30', '2024-01-31', 'Công nghệ Á Châu', 'Trưởng phòng', 'leder của đội dev', '2024-05-30 18:08:33', '2024-05-30 18:08:33'),
(46, 23, '2016-03-12', '2022-06-22', 'Công ty TNHH StarDay', 'Nhân viên lập trình', 'Lập trình , Sửa chữa các trang web công ty đang vân hành, triển khai, ...', '2024-05-31 09:14:21', '2024-05-31 10:58:14'),
(48, 24, '2016-03-12', '2022-06-22', 'Công ty TNHH StarDay', 'Nhân viên lập trình', 'Lập trình , Sửa chữa các trang web công ty đang vân hành, triển khai, ...', '2024-05-31 12:22:51', '2024-05-31 12:22:51'),
(49, 25, '2016-03-12', '2022-06-22', 'Công ty TNHH StarDay', 'Nhân viên lập trình', 'Lập trình , Sửa chữa các trang web công ty đang vân hành, triển khai, ...', '2024-05-31 12:29:31', '2024-05-31 12:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_posts`
--

CREATE TABLE `job_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `level` int(11) DEFAULT NULL,
  `min_salary` decimal(10,0) DEFAULT NULL,
  `max_salary` decimal(10,0) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `type_work` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `requirement` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0 COMMENT '0 : ban đầu, 1 : hoạt động , 2: chặn\r\n3, đợi duyệt\r\n',
  `date_request` datetime DEFAULT NULL COMMENT 'ngày gửi yêu cầu duyệt',
  `allow_date` datetime DEFAULT NULL COMMENT 'Ngày được duyệt',
  `degree_id` int(10) UNSIGNED NOT NULL,
  `time_exp_id` int(10) UNSIGNED NOT NULL,
  `major_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'nhân viên duyeetk tài khoản',
  `admin_edit_id` int(10) UNSIGNED DEFAULT NULL,
  `reason` text DEFAULT NULL COMMENT 'Lý do bị từ chối bài đăng\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `job_posts`
--

INSERT INTO `job_posts` (`id`, `company_id`, `title`, `level`, `min_salary`, `max_salary`, `end_date`, `amount`, `type_work`, `description`, `requirement`, `benefits`, `area`, `address`, `status`, `date_request`, `allow_date`, `degree_id`, `time_exp_id`, `major_id`, `admin_id`, `admin_edit_id`, `reason`, `created_at`, `updated_at`) VALUES
(1, 1, 'thực tập sinh php', 0, '2000000', '4000000', '2024-06-30', 3, 0, '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Tham gia khóa training full-time của công ty trong thời gian 2 tháng.</li><li style=\"font-family: unset !important; width: unset !important;\">Được đào tạo chuyên sâu về: Web basics, Kỹ thuật lập trình, PHP, Javascript, eCommerce, Magento, GIT, Quy trình quản lý và phát triển phần mềm...</li><li style=\"font-family: unset !important; width: unset !important;\">Được On-job-training tại BSS Commerce Service - team chuyên cung cấp đa dạng các giải pháp và dịch vụ phát triển hệ thống eCommerce, website đa nền tảng, website Magento, PWA, Headless, ERP integration, CRM integration, mobile app</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Là sinh viên năm cuối hoặc vừa tốt nghiệp không quá 1 năm, có thể tham gia thực tập full-time từ thứ 2 đến thứ 6.</li><li style=\"font-family: unset !important; width: unset !important;\">Nắm chắc các kiến thức cơ bản liên quan tới: cấu trúc dữ liệu giải thuật, cơ sở dữ liệu, kỹ thuật lập trình.</li><li style=\"font-family: unset !important; width: unset !important;\">Nắm chắc kiến thức về lập trình hướng đối tượng</li><li style=\"font-family: unset !important; width: unset !important;\">Có khả năng sử dụng một ngôn ngữ bất kỳ: PHP, ReactJS, NodeJS, JAVA, C/C++,...</li><li style=\"font-family: unset !important; width: unset !important;\">Cẩn thận và tỉ mỉ, sẵn sàng học hỏi các công nghệ mới, cởi mở trong giao tiếp</li><li style=\"font-family: unset !important; width: unset !important;\">Tiếng anh cơ bản, có thể đọc hiểu và làm bài tập sử dụng tiếng Anh</li><li style=\"font-family: unset !important; width: unset !important;\">Sẵn sàng học hỏi thêm công nghệ mới theo sự phân công quản lý.</li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên:<ul style=\"font-family: unset !important; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Sinh viên các trường Bách Khoa HN, Đại học Công Nghệ, FPT, PTIT: chuyên ngành Công nghệ phần mềm, khoa học máy tính, CNTT, Hệ thống thông tin, Kỹ thuật máy tính.</li><li style=\"font-family: unset !important; width: unset !important;\">Có các giải thưởng nghiên cứu khoa học trong trường hoặc tham gia các cuộc thi lập trình.</li></ul></li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Nhận trợ cấp&nbsp;<span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">4-5 triệu/tháng (Full-time)</span></li><li style=\"font-family: unset !important; width: unset !important;\"><span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">Hỗ trợ máy tính.</span></li><li style=\"font-family: unset !important; width: unset !important;\"><span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">Hỗ trợ tiền gửi xe</span>&nbsp;tại tòa nhà văn phòng</li><li style=\"font-family: unset !important; width: unset !important;\"><span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">Cấp chứng nhận thực tập</span>&nbsp;theo thời gian thực tập</li></ul>', 1, 'Thôn Bùng, Phùng Xá, Thạch Thất', 1, NULL, '2024-05-11 22:54:12', 2, 2, 1, NULL, 1, NULL, NULL, '2024-05-31 19:25:19'),
(2, 1, 'lập trình viên php', 0, '7000000', '14000000', '2024-06-30', 2, 0, '<p>mt</p>', '<p>yc</p>', '<p>ql</p>', 1, 'hà nội', 1, NULL, '2024-05-31 22:54:12', 3, 2, 7, NULL, 1, NULL, NULL, '2024-05-11 06:38:22'),
(3, 1, 'lập trình viên \r\njava', 3, '2000000', '4000000', '2024-06-30', 4, 3, '<p>3</p>', '<p>3</p>', '<p>3</p>', 1, 'đống đa', 1, '2024-05-31 22:03:58', '2024-05-28 22:54:12', 4, 4, 4, NULL, NULL, NULL, NULL, '2024-03-12 17:39:24'),
(4, 1, 'lập trình viên backend', 0, '12000000', '24000000', '2024-06-30', 1, 3, '1. Nghiên cứu hệ thống\r\n- Nghiên cứu Hệ thống vận hành F&B\r\n- Nghiên cứu Hệ thống IT phục vụ vận hành doanh nghiệp F&B\r\n- Đề xuất lựa chọn giải pháp Công nghệ\r\n\r\n2. Sản xuất và nâng cấp phần mềm\r\n- Phân tích thiết kế: Giải pháp đáp ứng; Quy trình tương lai; Kịch bản kiểm thử\r\n- Xây dựng phần mềm và Kiểm thử nội bộ\r\n\r\n3. Triển khai phần mềm\r\n- Kiểm thử phần mềm: xây dựng kịch bản kiểm thử và Unit test\r\n- Quản lý các version thay đổi phần mềm\r\n- Chuyển giao và nghiệm thu phần mềm\r\n- Bảo trì, sửa chữa và nâng cấp phần mềm\r\n\r\n4. Đào tạo: Hỗ trợ đào tạo người dùng sử dụng phần mềm\r\n\r\n5. Khác: Thực hiện các công việc, hỗ trợ các công việc khác theo yêu cầu của Trưởng phòng và Ban Giám đốc', '1. Yêu cầu về kỹ năng - chuyên môn\r\n• Năng lực:\r\n- Kiến thức về hệ quản trị cơ sở dữ liệu\r\n- Kiến thức về vòng đời xây dựng ứng dụng Website\r\n- Kiến thức về mô hình phát triển hướng đối tượng (MVC, MVP, MVVM)\r\n- Kiến thức về GIT\r\n- Kiến thức về ngôn ngữ lập trình HTML5/PHP/Ajax\r\n- Kiến thức, kỹ năng deployment sản phẩm theo phiên bản lên máy chủ\r\n\r\n-Có kinh nghiệm thiết kế website bằng các hệ thống CMS\r\n\r\n• Kỹ năng\r\n- Kỹ năng giao tiếp, trao đổi, trình bày\r\n- Kỹ năng về tích hợp API Restful, SOAP, GraphQL\r\n\r\n2. Yêu cầu về Trình độ văn hoá\r\nTốt nghiệp đại học, cao đẳng chuyên ngành CNTT các trường đại học đào tạo chuyên ngành\r\n\r\n3. Yêu cầu về kinh nghiệm / thâm niên công tác\r\nTối thiểu 1 năm kinh nghiệm tại vị trí tương đương tại các Doanh nghiệp\r\n\r\n4. Yêu cầu đặc thù khác\r\n• Độ tuổi: 22-35T\r\n• Tính cách: trung thực, kiên trì, nhiệt huyết, có tinh thần trách nhiệm, cầu tiến, yêu thương và hỗ trợ đồng đội, năng lượng tích cực.\r\n• Khả năng làm việc độc lập và theo nhóm.\r\n• Sáng tạo, ham học hỏi, có trách nhiệm và khát vọng thăng tiến trong công việc.', 'QUYỀN LỢI DÀNH CHO ỨNG VIÊN:\r\n1. Lương: 15tr – 25tr /tháng + Thưởng (Thỏa thuận không giới hạn)\r\n2. Địa điểm làm việc: Văn phòng công ty Aladdin – 69Tố Hữu, Vạn Phúc, Hà Đông\r\n3. Làm việc tại Công ty có hoạt động lớn trong ngành F&B, phát triển nóng\r\n4. Thời gian làm việc: Giờ hành chính (Nghỉ chiều thứ 7 + CN)\r\n5. Chế độ khen thưởng, phúc lợi: Tham gia BHXH đầy đủ; chính sách khen thưởng hàng tháng, năm; lương tháng 13++++ theo kết quả kinh doanh của công ty; thưởng nhân các ngày lễ/tết trong năm; nghỉ dưỡng định kỳ.\r\n6. Lương và cơ hội thăng tiến: Hàng năm công ty xem xét và điều chỉnh tăng lương theo kết quả công việc; đối với những cá nhân có tiềm năng có cơ hội tham gia các dự án của của công ty, xây dưng quy hoạch cán bộ nguồn và có nhiều cơ hội thăng tiến.\r\n7. Chế độ đào tạo: Được công ty đầu tư tham gia các khóa đào tạo về nghiệp vụ, kỹ năng cần thiết theo yêu cầu công việc và các khóa học phát huy tiềm năng con người, thay đổi tư duy và cách thức tiếp cận mọi vấn đề hướng đến văn hóa mang lại hạnh phúc cho mọi nhân viên.\r\n8. Văn hóa Aladdin: Tại Aladdin quan niệm vạn sự khởi nguồn từ con người, con người là tài sản vô giá, là trung tâm của sự phát triển và động lực để phát triển. Tất cả hoạt động kinh doanh của Công ty đều chỉ hướng đến kết quả cuối cùng là mang lại hạnh phúc nhân viên và toàn bộ cộng đồng. Do vậy, phúc lợi lớn nhất bạn được hưởng khi gia nhập vào công ty là gia nhập vào một DOANH NGHIỆP HẠNH PHÚC.', 1, 'Cầu giấy , hà nội', 1, '2024-05-21 22:03:58', '2024-05-30 22:54:12', 2, 2, 2, NULL, 1, NULL, NULL, '2024-05-26 15:50:51'),
(5, 4, 'lập trình viên front-end', 0, '12000000', '16000000', '2024-06-30', 1, 0, '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">LG CNS Việt Nam đang tìm kiếm các lập trình viên Front-end đủ tiêu chuẩn tham gia vào các dự án của công ty. Bạn sẽ phát triển trong việc phát triển ứng dụng web trong các lĩnh vực khác nhau, chẳng hạn như các dự án về Data, Machine learning / Data Learning, AI, Logistic và các solution hiện có của công ty</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">Nhiệm vụ:</p><ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Đảm bảo hiệu suất, chất lượng và khả năng đáp ứng tốt nhất có thể của các ứng dụng ở phía Front-end</li><li style=\"font-family: unset !important; width: unset !important;\">Tham gia lập trình các ứng dụng web</li><li style=\"font-family: unset !important; width: unset !important;\">Phối hợp cùng team dự án Việt Nam và Hàn Quốc để đảm bảo tiến độ</li><li style=\"font-family: unset !important; width: unset !important;\">Trao đổi chi tiết khi phỏng vấn</li><li></li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Có ít nhất 1 năm kinh nghiệm (Ưu tiên kinh nghiệm cao)</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm phát triển ứng dụng web/mobile</li><li style=\"font-family: unset !important; width: unset !important;\">Có thể phát triển HTML, CSS, Javascript, jQuery</li><li style=\"font-family: unset !important; width: unset !important;\">Có thể phát triển dựa trên SPA (Vue.js, Vuex)</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm với các công cụ cộng tác như Git, Jira và Confluence</li><li style=\"font-family: unset !important; width: unset !important;\">Hiểu và sử dụng CI/CD</li><li style=\"font-family: unset !important; width: unset !important;\">Tốt nghiệp đại học trở lên</li><li style=\"font-family: unset !important; width: unset !important;\">Giao tiếp Tiếng anh ở mức trung bình (TOEIC trên 550 và các chứng chỉ tương tự hoặc tự tin giao tiếp tiếng anh)</li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên: Hiểu về Back-End</li><li style=\"font-family: unset !important; width: unset !important;\">Sử dụng được Typescript</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm UI/UX</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm với biểu đồ javascript ( Echarts, Chart.js...).</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Lương, thưởng sẽ được thảo luận sau khi thông qua CV &amp; Phỏng vấn</li><li style=\"font-family: unset !important; width: unset !important;\">Review đánh giá năng lực hàng năm và điều chỉnh tăng lương theo hiệu quả công việc</li><li style=\"font-family: unset !important; width: unset !important;\">Phụ cấp chứng chỉ ngoại ngữ tiếng hàn (TOPIK)</li><li style=\"font-family: unset !important; width: unset !important;\">Chăm sóc sức khỏe: Khám sức khỏe định kỳ hàng năm, Bảo hiểm sức khỏe cao cấp</li><li style=\"font-family: unset !important; width: unset !important;\">Điều kiện làm việc thoải mái và thời gian làm việc linh hoạt</li><li style=\"font-family: unset !important; width: unset !important;\">Cơ hội phát triển nghề nghiệp tốt với các dự án thú vị và đầy thử thách;</li><li style=\"font-family: unset !important; width: unset !important;\">Các khóa đào tạo tiếng Anh, tiếng Hàn, kỹ thuật, kỹ năng mềm;</li><li style=\"font-family: unset !important; width: unset !important;\">Cơ hội học các khóa học đặc biệt của LG CNS, công nghệ mới và bảo mật</li><li style=\"font-family: unset !important; width: unset !important;\">Quà tặng, thưởng vào các dịp lễ, tết (30/4-1/5, 2/9, tết v.v)</li><li style=\"font-family: unset !important; width: unset !important;\">Các hoạt động ngoài trời với sự hỗ trợ của công ty: câu lạc bộ thể thao, team building, tiệc happy hour, sinh nhật, du lịch, sự kiện nhân viên và gia đình, v.v.</li><li style=\"font-family: unset !important; width: unset !important;\">Thời gian làm việc: 8 tiếng từ T2 - T6 (8:00- 12:/ 13:00 - 17:00)</li></ul>', 1, '1194 Chùa láng', 1, '2024-05-31 22:03:58', '2024-05-29 22:54:12', 3, 3, 6, NULL, 1, NULL, NULL, '2024-05-26 16:15:09'),
(8, 1, 'Học việc Laravel', 0, '3000000', '4000000', '2024-07-11', 10, 0, '<p>- Chỉnh sửa , phát triển các phần mềm</p><p>- Nâng cấp các phần mềm cũ</p>', '<p>-Có máy tính cá nhân</p><p>-Biết sửa giao diện</p><p>-Biết các chức năng thêm sửa xóa cơ bản</p>', '<p>-Có dấu thực tập<br>-Có lương Theo năng lực</p>', 1, 'Duy Tân, Hà Nội', 1, '2024-05-31 22:03:58', '2024-06-01 22:54:12', 3, 1, 1, 2, NULL, NULL, '2024-03-11 16:41:47', '2024-06-01 15:54:12'),
(9, 1, 'Web developer', 0, '1', '11', '2024-08-11', 1, 0, '<p>1</p>', '<p>1</p>', '<p>1</p>', 1, '1', 1, '2024-05-10 22:44:29', '2024-05-21 22:54:12', 3, 1, 1, 1, NULL, NULL, '2024-03-11 16:46:10', '2024-05-10 16:16:49'),
(10, 1, 'UI/UX frontend', 1, '1200000', '2000000', '2024-07-20', 10, 1, '<p>mô tả</p>', '<p>yêu cầu</p>', '<p>fafsafasf</p>', 5, 'hà nội', 1, NULL, '2024-05-28 20:54:12', 5, 2, 1, NULL, NULL, NULL, '2024-03-30 08:14:53', '2024-03-30 08:14:53'),
(11, 1, 'Backend developer', 0, '45', '455', '2024-04-09', 4, 0, '<p>td</p>', '<p>td</p>', '<p>td</p>', 1, '5f', 1, NULL, '2024-05-28 12:54:12', 1, 1, 1, NULL, NULL, NULL, '2024-04-09 06:59:31', '2024-04-09 07:10:51'),
(12, 1, 'thực tập sinh wordpress', 0, '1200000', '2000000', '2024-06-30', 5, 0, '<p>mô tả</p>', '<p>yêu cầu</p>', '<p>được học tập&nbsp;</p>', 1, 'hà nội', 3, '2024-05-31 22:03:38', NULL, 5, 2, 2, NULL, NULL, NULL, '2024-05-05 15:40:33', '2024-05-31 15:03:38'),
(13, 2, 'Lập trình viên Python', 1, '7500000', '10000000', '2024-06-22', 10, 2, '<p>Công việc nhẹ nhàng lương cao</p>', '<p>Biết code là đủ</p>', '<p>Ăn trưa free</p>', 2, 'Hà giang', 0, NULL, NULL, 5, 2, 7, NULL, NULL, NULL, '2024-05-24 14:24:30', '2024-05-24 14:24:30'),
(14, 2, 'Lập trình       Di động', 1, '7500000', '10000000', '2024-06-22', 10, 2, '<p>Công việc nhẹ nhàng lương cao</p>', '<p>Biết code là đủ</p>', '<p>Ăn trưa free</p>', 2, 'Hà giang', 1, NULL, '2024-06-18 10:50:47', 5, 2, 7, 1, NULL, NULL, '2024-05-24 14:26:14', '2024-06-18 03:50:47'),
(15, 1, 'Lập trình viên di động', 1, '7000000', '10000000', '2024-07-31', 10, 2, '<p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Phát triển Mobile App cho ứng dụng Smart Home trên nền tảng Android và iOS</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Nghiên cứu giải pháp toàn diện dành cho nhà thông tin: Giải pháp an ninh an toàn, giải pháp kết nối thông minh, giải pháp điều khiển thông minh</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Tích hợp đa đạng các thiết bị thông minh: IP Camera, Smart Lock, Điều khiển hồng ngoại, Cảm biến thống minh, Điều khiển giọng nói (Google Speaker, Olli Speaker)</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\"><br style=\"font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\"></p>', '<p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Tốt nghiệp ĐH chuyên ngành CNTT hoặc ĐTVT hoặc tương đương</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Thành thạo các kiến thức iOS/Android: OOP, MultiThread, Memory, Network,...</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Có kiến thức nền tảng giao tiếp client – server: REST, TCP/IP, Firebase, Websocket, WebService và giao thức JSON / XML</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Đam mê công nghệ</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Đọc và hiểu tài liệu kỹ thuật tiếng Anh</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Làm việc nhóm hiệu quả linh hoạt</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Trung thực và có tinh thần trách nhiệm</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\">- Chủ động sáng tạo</p><p style=\"margin-bottom: 10px; font-family: unset !important; width: unset !important;\"><br style=\"font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\"></p>', '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Chế độ lương thưởng hấp dẫn (từ 16 tháng lương/năm), đánh giá xét tăng bậc lương theo năng lực (2 lần/năm)</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Cơ hội được đào tạo ngắn và dài hạn do công ty tổ chức</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Môi trường làm việc năng động, sáng tạo, nhiều thử thách, phát huy tối đa sở trường.</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Cung cấp đầy đủ trang thiết bị hiện đại, laptop, máy tính cá nhân... cần thiết để nâng cao hiệu quả làm việc.</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Nghỉ mát hàng năm, Team Building, hoạt động nội bộ Công ty sôi nổi, hấp dẫn.</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Khám sức khỏe định kỳ hàng năm</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(246, 247, 247); width: unset !important;\">- Được hưởng đầy đủ các chế độ phúc lợi xã hội do luật Lao động quy định và chế độ riêng dành cho CBNV Công ty.</p>', 50, 'Bình Thạnh, Hồ Chí Minh', 2, '2024-05-31 22:03:20', NULL, 3, 2, 6, NULL, NULL, 'Nội dung chưa phù hợp', '2024-05-31 14:50:38', '2024-06-07 18:09:53'),
(16, 9, 'Lập trình PHP, Laravel framework\r\n', 0, '3000000', '4000000', '2024-07-11', 10, 0, '<p>- Chỉnh sửa , phát triển các phần mềm</p><p>- Nâng cấp các phần mềm cũ</p>', '<p>-Có máy tính cá nhân</p><p>-Biết sửa giao diện</p><p>-Biết các chức năng thêm sửa xóa cơ bản</p>', '<p>-Có dấu thực tập<br>-Có lương Theo năng lực</p>', 1, 'Duy Tân, Hà Nội', 1, '2024-05-31 22:03:58', '2024-06-01 22:54:12', 3, 1, 1, 2, NULL, NULL, '2024-03-11 16:41:47', '2024-06-01 15:54:12'),
(18, 1, 'Data Engineer', 0, '20000000', '40000000', '2024-06-26', 2, 2, '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">Tek Experts PSV đang tìm kiếm ứng viên tiềm năng cho vị trí Data Engineer (từ 2 năm kinh nghiệm trở lên) với nội dung công việc như sau:</p><ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Làm việc trực tiếp với khách hàng lớn bên mảng Ngân hàng</li><li style=\"font-family: unset !important; width: unset !important;\">Dự án ETL: trao đổi để làm rõ yêu cầu của khách hàng, thiết kế và làm báo cáo liên quan đến ETL, tiến hành kiểm thử và đảm bảo tiến độ cũng như chất lượng công việc</li><li style=\"font-family: unset !important; width: unset !important;\">Luồng dữ liệu (Data flow): xác định nguồn đầu vào và đầu ra của dữ liệu, thiết kế quy trình để di chuyển dữ liệu sang một nguồn mới</li><li style=\"font-family: unset !important; width: unset !important;\">Báo cáo trên BI: sử dụng BI tools để trực quan hóa dữ liệu và cung cấp cái nhìn tổng thể về hiệu quả kinh doanh</li><li style=\"font-family: unset !important; width: unset !important;\">Các thành phần dịch vụ dữ liệu (data service components): tạo các thành phần có thể tái sử dụng để truy cập và xử lý dữ liệu</li><li style=\"font-family: unset !important; width: unset !important;\">Tài liệu chuyển giao công nghệ/vận hành: ghi lại các khía cạnh kỹ thuật vận hành của các công việc và báo cáo ETL để các nhà phát triển và nhân viên vận hành khác có thể dễ dàng hiểu và duy trì</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Tốt nghiệp đại học chuyên ngành CNTT, kỹ thuật phần mềm hoặc các chuyên ngành liên quan khác</li><li style=\"font-family: unset !important; width: unset !important;\">Có tối thiểu 2 năm kinh nghiệm tại vị trí tương đương</li><li style=\"font-family: unset !important; width: unset !important;\">Đã từng làm việc với các công cụ ETL như ODI, Data Stage, ...</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm với SQL, PL/SQL, Oracle/IBM Netezza databases</li><li style=\"font-family: unset !important; width: unset !important;\">Có kiến thức tốt về các ngôn ngữ lập trình phổ biến như Java, SQL, XML</li><li style=\"font-family: unset !important; width: unset !important;\">Thành thạo trong việc lập trình liên quan đến ETL, xây dựng báo cáo bằng BI, phát hiện và sửa lỗi coding, sử dụng Jira</li><li style=\"font-family: unset !important; width: unset !important;\">Có kỹ năng giao tiếp và làm việc nhóm tốt</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Mức lương thỏa thuận theo năng lực của ứng viên, có thể lên đến 40M gross</li><li style=\"font-family: unset !important; width: unset !important;\">Hưởng 100% lương trong thời gian 2 tháng thử việc</li><li style=\"font-family: unset !important; width: unset !important;\">Đóng bảo hiểm xã hội trên 100% lương</li><li style=\"font-family: unset !important; width: unset !important;\">Bảo hiểm sức khỏe cao cấp PTI (điều trị ngoại trú đến 15 triệu/năm, nội trú đến 100 triệu/năm)</li><li style=\"font-family: unset !important; width: unset !important;\">Khám sức khỏe định kỳ hàng năm tại các cơ sở khám chữa bệnh uy tín</li><li style=\"font-family: unset !important; width: unset !important;\">Performance bonus/KPI bonus hấp dẫn hàng quý và cuối năm</li><li style=\"font-family: unset !important; width: unset !important;\">Văn phòng hạng A được trang trí hệ thống thiết bị hiện đại cùng khu giải trí Sky Garden độc đáo.</li></ul>', 1, 'Tầng 16 - Tòa Lotte Center 54 Liễu Giai, Ba Đình, Ba Đình', 1, '2024-06-18 10:50:04', '2024-06-18 10:50:51', 3, 3, 2, 1, NULL, NULL, '2024-06-18 03:46:14', '2024-06-18 03:50:51'),
(19, 2, 'Automation Tester', 1, '15000000', '25000000', '2024-06-27', 1, 2, '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">Tek Experts PSV là công ty trực thuộc tập đoàn đa quốc gia YNV, hoạt động trong lĩnh vực cung cấp dịch vụ và giải pháp công nghệ cho các đối tác toàn cầu. Sau nhiều năm hình thành và phát triển, Tek Experts PSV tự hào cam kết mang đến một môi trường làm việc quốc tế chuyên nghiệp với đầy đủ trang thiết bị hiện đại, nơi mọi màu sắc cá nhân được tôn trọng và tất cả thành viên đều có cơ hội tự do tỏa sáng.</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">Tek Experts PSV đang tìm kiếm ứng viên tiềm năng cho vị trí Automation Tester với nội dung công việc như sau:</p><ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Phân tích, xem xét, đánh giá các yêu cầu và thông số thiết kế</li><li style=\"font-family: unset !important; width: unset !important;\">Tham gia xác định điều kiện kiểm thử và đưa ra thiết kế kiểm thử, test case, thông số quy trình và dữ liệu kiểm thử</li><li style=\"font-family: unset !important; width: unset !important;\">Viết kịch bản kiểm thử tự động hóa (Automation script)</li><li style=\"font-family: unset !important; width: unset !important;\">Ghi chép và xác định mức độ nghiêm trọng của lỗi</li><li style=\"font-family: unset !important; width: unset !important;\">Đảm bảo tính chính xác của lỗi do người dùng nêu ra</li><li style=\"font-family: unset !important; width: unset !important;\">Báo cáo các vấn đề và rủi ro cho người quản lý</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Tốt nghiệp đại học chuyên ngành kỹ thuật, khoa học máy tính hoặc các chuyên ngành liên quan</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm từ 2 năm trở lên tại vị trí tương đương</li><li style=\"font-family: unset !important; width: unset !important;\">Quen thuộc với công việc của automation tester</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm với C# và Selenium WebDriver</li><li style=\"font-family: unset !important; width: unset !important;\">Có khả năng nắm bắt nghiệp vụ nhanh</li><li style=\"font-family: unset !important; width: unset !important;\">Tiếng Anh đọc hiểu cơ</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Mức lương hấp dẫn, thỏa thuận theo năng lực của ứng viên, có thể lên đến 30 triệu gross</li><li style=\"font-family: unset !important; width: unset !important;\">Hưởng 100% lương trong thời gian 2 tháng thử việc</li><li style=\"font-family: unset !important; width: unset !important;\">Đóng bảo hiểm xã hội trên 100% lương</li><li style=\"font-family: unset !important; width: unset !important;\">Bảo hiểm sức khỏe cao cấp PTI (điều trị ngoại trú đến 15 triệu/năm, nội trú đến 100 triệu/năm)</li><li style=\"font-family: unset !important; width: unset !important;\">Khám sức khỏe định kỳ hàng năm tại các cơ sở khám chữa bệnh uy tín</li><li style=\"font-family: unset !important; width: unset !important;\">Làm việc trực tiếp tại văn phòng của công ty khách hàng thuộc top các công ty hàng đầu Việt Nam</li></ul>', 1, '16 Floor, Lotte Center Lieu Giai building', 1, '2024-06-18 10:56:08', '2024-06-18 11:09:11', 3, 3, 6, 1, NULL, NULL, '2024-06-18 03:55:50', '2024-06-18 04:09:11'),
(20, 2, 'Kỹ Sư Mạng/ Hệ Thống (System/Network Engineer)', 1, '12000000', '16000000', '2024-06-28', 3, 2, '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Quản trị hệ thống server, domain controler và active directory</li><li style=\"font-family: unset !important; width: unset !important;\">Quản trị hệ thống mạng ( router, camera, switch, ... )</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm quản trị hệ thống sử dụng router draytek, cisco, unifi</li><li style=\"font-family: unset !important; width: unset !important;\">Cài đặt và khắc phục sự cố của HĐH Windows, phần mềm (MS Office và các loại khác)</li><li style=\"font-family: unset !important; width: unset !important;\">Giám sát, kiểm tra hoạt động 24/7 của hệ thống hạ tầng: hệ thống internet, hệ thống mạng LAN, hệ thống mạng Wifi, hệ thống chấm công, hệ thống tivi, hệ thống tổng đài nội bộ, hệ thống các máy chủ ứng dụng... chịu trách nhiệm cho mạng lưới hoạt động tốt trong ca làm việc.</li><li style=\"font-family: unset !important; width: unset !important;\">Lên kế hoạch bảo trì, nâng cấp hệ thống, thiết bị định kỳ.</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Nam, có độ tuổi từ 24 - 35.</li><li style=\"font-family: unset !important; width: unset !important;\">Tốt nghiệp cao đẳng trở lên chuyên ngành Công nghệ thông tin</li><li style=\"font-family: unset !important; width: unset !important;\">Có khả năng giao tiếp bằng tiếng Anh cơ bản</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm với domain controler, active directory, windows server</li><li style=\"font-family: unset !important; width: unset !important;\">Có kiến thức và kinh nghiệm vận hành Call Center</li><li style=\"font-family: unset !important; width: unset !important;\">Kinh nghiệm ít nhất 1 năm về bảo trì hệ thống</li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên kiến thức: CCNA, MCSA, CCNP, Firewall</li><li style=\"font-family: unset !important; width: unset !important;\">Nhận hồ sơ ứng viên bằng ngôn ngữ: Tiếng Anh</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Các chế độ và quyền lợi theo Luật Lao động được đảm bảo đầy đủ;</li><li style=\"font-family: unset !important; width: unset !important;\">Được làm việc trong môi trường làm việc năng động, chuyên nghiệp 5 sao;</li><li style=\"font-family: unset !important; width: unset !important;\">Được hưởng chế độ đãi ngộ hấp dẫn từ phía công ty:Thưởng lễ tết (5 đợt/ năm)</li><li style=\"font-family: unset !important; width: unset !important;\">Thưởng Lương tháng 13</li><li style=\"font-family: unset !important; width: unset !important;\">Thưởng theo chỉ tiêu đánh năng lực làm việc của nhân viên: 2 lần/ năm</li><li style=\"font-family: unset !important; width: unset !important;\">Thưởng theo doanh thu</li><li style=\"font-family: unset !important; width: unset !important;\">Thưởng Nhân viên xuất sắc của Tuần/Tháng/Năm</li><li style=\"font-family: unset !important; width: unset !important;\">Thưởng theo thâm niên làm việc</li><li style=\"font-family: unset !important; width: unset !important;\">Thưởng tiền cho nhân viên thông thạo ngoại ngữ từ $50-$150/tháng</li><li style=\"font-family: unset !important; width: unset !important;\">Tiền + Quà sinh nhật</li><li style=\"font-family: unset !important; width: unset !important;\">Các bữa ăn, đồng phục, giặt ủi</li><li style=\"font-family: unset !important; width: unset !important;\">Bảo hiểm y tế chăm sóc sức khỏe</li></ul>', 50, '148 Trần Hưng Đạo, Phường Nguyễn Cư Trinh, Quận 1', 1, '2024-06-18 11:08:46', '2024-06-18 11:09:13', 2, 3, 5, 1, NULL, NULL, '2024-06-18 04:07:06', '2024-06-18 04:09:13'),
(21, 4, 'Kỹ Sư Mạng', 1, '10000000', '15000000', '2024-07-27', 3, 2, '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">1. Triển khai, lắp đặt các hệ thống mạng máy tính (LAN, WAN...) các thiết bị switch, Firewall, router của các hãng: Cisco, Meraki, Unifi, Dlink...</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">2. Tư vấn, hỗ trợ, khắc phục sự cố máy tính, mạng LAN, Internet.</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">3. Giám sát và bảo trì hệ thống mạng LAN, WAN.</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">4. Các công việc khác (chi tiết sẽ trao đổi khi phỏng vấn).</p>', '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Nam, từ 25-37 tuổi</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Tốt nghiệp Cao đẳng, Đại học hoặc tương đương;</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Có kiến thức &amp; kinh nghiệm về mạng máy tính (LAN,WAN...);</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Có kỹ năng cấu hình và quản trị Firewall, Wireless controller;</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Chịu khó, ham học hỏi, có tinh thần làm việc nhóm;</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Có kiến thức về các phần mềm giám sát hệ thống mạng như: Zabbix, PRTG, SolarWinds và khả năng giao tiếp bằng tiếng Anh là một lợi thế;</p>', '<p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Thời gian làm việc: 8:30 – 17:30 hàng ngày từ thứ 2 – thứ 6</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Thứ 7 &amp; Chủ Nhật sẽ được tính là làm thêm Theo QĐ Nhà Nước từ 150%-400%<br style=\"font-family: unset !important; width: unset !important;\">- Lương theo thoả thuận và đảm bảo cạnh tranh + Phụ cấp kỹ thuật hàng tháng</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Đánh giá xét nâng lương định kỳ hàng năm;<br style=\"font-family: unset !important; width: unset !important;\">- Hưởng đầy đủ các chế độ bảo hiểm, khám sức khoẻ định kỳ theo quy định của nhà nước;<br style=\"font-family: unset !important; width: unset !important;\">- Được hưởng chế độ Lương tháng 13, và thưởng vào tất cả các dịp Lễ, Tết,..</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Nhân viên làm việc cứ đủ 03 năm được tăng 1 ngày phép;</p><p style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\">- Được tham gia vào các Hoạt động Công ty như: Nghỉ mát, YEP,...<br style=\"font-family: unset !important; width: unset !important;\">- Nhân viên nữ khi nghỉ thai sản hưởng 100% lương thực lĩnh trong thời gian nghỉ thai sản;<br style=\"font-family: unset !important; width: unset !important;\">- Có xe đưa đón nhân viên theo tuyến từ nội thành Hà Nội;<br style=\"font-family: unset !important; width: unset !important;\">- Chính sách hỗ trợ đào tạo nâng cao năng lực nhân viên<br style=\"font-family: unset !important; width: unset !important;\">- Hoạt động thể thao: Câu lạc bộ NMV football club hoạt động hàng tuần.</p>', 1, 'Phòng 301, Tâng trung tâm Công nghệ, KCN Thăng Long, Kim Chung, Đông Anh, Hà Nội, Đông Anh', 1, '2024-06-18 11:14:55', '2024-06-18 11:15:29', 2, 3, 5, 1, NULL, NULL, '2024-06-18 04:14:51', '2024-06-18 04:15:29'),
(22, 5, 'Nhân Viên Kỹ Thuật Máy Tính', 1, '8000000', '11000000', '2024-07-17', 2, 2, '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Sửa chữa, bảo trì các thiết bị điện tử văn phòng, máy tính, máy in</li><li style=\"font-family: unset !important; width: unset !important;\">Cài đặt, bảo trì hệ thống mạng máy tính, internet.</li><li style=\"font-family: unset !important; width: unset !important;\">Tư vấn, hướng dẫn, hỗ trợ khách hàng các vấn đề về kỹ thuật</li><li style=\"font-family: unset !important; width: unset !important;\">Đề xuất các giải pháp tối ưu về máy tính, mạng máy tính.</li><li style=\"font-family: unset !important; width: unset !important;\">Cung cấp, lắp đặt, thi công hệ thống IT phần cứng - mạng.</li><li style=\"font-family: unset !important; width: unset !important;\">Lắp đặt, cài đặt, thi công hệ thống mạng nội bộ LAN.</li><li style=\"font-family: unset !important; width: unset !important;\">Lắp đặt, cài đặt, thi công hệ thống Camera, báo động, chấm công ....</li><li style=\"font-family: unset !important; width: unset !important;\">Lắp đặt, cài đặt các thiết bị CNTT – thiết bị văn phòng (Máy in, scan, modem, wifi,...)</li><li style=\"font-family: unset !important; width: unset !important;\">Lắp ráp và cài đặt máy tính tại công ty &amp; tại khách hàng.</li><li style=\"font-family: unset !important; width: unset !important;\">Tư vấn và khắc phục sự cố máy tính.</li><li style=\"font-family: unset !important; width: unset !important;\">Cài đặt, thay thế linh kiện Laptop</li><li style=\"font-family: unset !important; width: unset !important;\">Cài đặt window, office, các phần mềm thông dụng trong PC, laptop cho KH</li><li style=\"font-family: unset !important; width: unset !important;\">Tư vấn, giải đáp kỹ thuật cho khách hàng qua hotline, điện thoại, qua internet (email, website...).</li><li style=\"font-family: unset !important; width: unset !important;\">Test sản phẩm bảo hành (Laptop) của nhà cung cấp gửi về và của khách hàng đến bảo hành;</li><li style=\"font-family: unset !important; width: unset !important;\">Làm các công việc khác dưới sự chỉ đạo của quản lý</li><li style=\"font-family: unset !important; width: unset !important;\">Báo cáo công việc định kỳ cho trưởng phòng</li><li style=\"font-family: unset !important; width: unset !important;\">Công việc sẽ được trao đổi cụ thể hơn trong quá trình phỏng vấn</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Có kiến thức cơ bản về máy tính, mạng máy tính, các thiết bị điện tử văn phòng</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm sửa chữa, bảo trì các thiết bị điện tử văn phòng, máy tính, máy in</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm cài đặt, bảo trì hệ thống mạng máy tính, internet.</li><li style=\"font-family: unset !important; width: unset !important;\">Có kỹ năng tư vấn, hướng dẫn, hỗ trợ khách hàng</li><li style=\"font-family: unset !important; width: unset !important;\">Có khả năng làm việc độc lập, chịu khó và tỉ mỉ</li><li style=\"font-family: unset !important; width: unset !important;\">Có tính cầu tiến và ham học hỏi</li><li style=\"font-family: unset !important; width: unset !important;\">Sức khỏe tốt, nhanh nhẹn, có tinh thần trách nhiệm cao, năng động, nhiệt tình</li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên ứng viên có kinh nghiệm trong lĩnh vực thi công mạng, camera, điện nhẹ, ...</li><li style=\"font-family: unset !important; width: unset !important;\">Tốt nghiệp đại học, cao đẳng, trung cấp các ngành kỹ thuật, CNTT, điện, điện tử.</li><li style=\"font-family: unset !important; width: unset !important;\"><span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">Ưu tiên tốt nghiệm Trung cấp (Cao đẳng) trở lên ngành kỹ thuật, CNTT...</span></li><li style=\"font-family: unset !important; width: unset !important;\">Trung thực, Nhanh nhẹn, Mong muốn làm việc lâu dài và thu nhập cao</li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên ứng viên nộp hồ sơ và phỏng vấn sớm.</li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên ứng viên có định hướng và lộ trình rõ ràng trong công việc</li><li style=\"font-family: unset !important; width: unset !important;\">Trung thực, nhiệt tình, có trách nhiệm, chịu được áp lực trong công việc .</li><li style=\"font-family: unset !important; width: unset !important;\">Có tinh thần ham học hỏi vươn lên trong công việc .</li><li style=\"font-family: unset !important; width: unset !important;\"><span style=\"font-weight: 700; font-family: unset !important; width: unset !important;\">Có thể đi công tác ngoại tỉnh.</span></li><li style=\"font-family: unset !important; width: unset !important;\">Ưu tiên các ứng viên có kinh nghiệm về ngành điện tử, tin học, công nghệ thông tin</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Mức lương thỏa thuận theo năng lực</li><li style=\"font-family: unset !important; width: unset !important;\">Được hưởng chế độ phúc lợi theo quy định pháp luật</li><li style=\"font-family: unset !important; width: unset !important;\">Được đào tạo nâng cao trình độ chuyên môn</li><li style=\"font-family: unset !important; width: unset !important;\">Được tham gia các hoạt động Team building, du lịch</li><li style=\"font-family: unset !important; width: unset !important;\">Ứng viên được chọn sẽ được làm việc trong môi trường chuyên nghiệp, sáng tạo, cạnh tranh, phát triển, năng động có nhiều cơ hội thăng tiến .</li><li style=\"font-family: unset !important; width: unset !important;\">Chính sách, chế độ đãi ngộ hấp dẫn. Thu nhập cứng từ 5 - 10 triệu VNĐ tuỳ theo năng lực.</li><li style=\"font-family: unset !important; width: unset !important;\">Chế độ Bảo hiểm xã hội, Bảo hiểm y tế, chính sách lao động theo quy định của Luật Lao động.</li></ul>', 1, 'D28-08, Geleximco D, Lê Trọng Tấn, Hà Đông, HN', 3, '2024-06-18 11:40:22', NULL, 5, 3, 4, NULL, NULL, NULL, '2024-06-18 04:29:36', '2024-06-18 04:40:22'),
(23, 1, 'Python Web Developer', 1, '1200000', '18000000', '2024-06-29', 3, 2, '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Cùng leader, tham gia phát triển các dự án back-end và front-end bằng Python.</li><li style=\"font-family: unset !important; width: unset !important;\">Đảm bảo hoàn thành kịp thời và chính xác các nhiệm vụ được giao.</li><li style=\"font-family: unset !important; width: unset !important;\">Hỗ trợ leader và các thành viên khác trong việc tiếp cận các giải pháp, công nghệ mới</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">6 tháng kinh nghiệm trở lên với lập trình Python.</li><li style=\"font-family: unset !important; width: unset !important;\">Thành thạo các nguyên tắc phát triển application qua API và kiến trúc server, cơ chế phân tải.</li><li style=\"font-family: unset !important; width: unset !important;\">Có kinh nghiệm UX/UI Angular.</li><li style=\"font-family: unset !important; width: unset !important;\">Có tư duy tốt về AI, đặc biệt là nhận diện. Bao gồm: người, mặt, vật thể, OCR, 3D detection là một lợi thế.</li><li style=\"font-family: unset !important; width: unset !important;\">Có tư duy hệ thống tốt, logic rõ ràng, làm việc nhóm tốt.</li><li style=\"font-family: unset !important; width: unset !important;\">Quen thuộc với cơ sở dữ liệu SQL, ưu tiên biết NOSQL (Not-Only SQL), các hệ thống phân tích dữ liệu lớn (Big Data) là một lợi thế.</li><li style=\"font-family: unset !important; width: unset !important;\">Thành thạo các công cụ quản lý mã nguồn và dự án như Git, Github, viết tài liệu cho API, công cụ để quản lý chất lượng code, API doc, phát triển REST API với Django là một lợi thế.</li><li style=\"font-family: unset !important; width: unset !important;\">Thành thạo môi trường Linux và các câu lệnh trên Linux là một lợi thế.</li></ul>', '<ul style=\"margin-bottom: 10px; font-family: Inter, sans-serif; color: rgb(51, 51, 51); font-size: 14px; width: unset !important;\"><li style=\"font-family: unset !important; width: unset !important;\">Lương cứng: Upto 25M + thưởng dự án.</li><li style=\"font-family: unset !important; width: unset !important;\">Hỗ trợ thiết bị làm việc (khi lên chính thức).</li><li style=\"font-family: unset !important; width: unset !important;\">Review lương 6 tháng một lần, thưởng dự án liên tục.</li><li style=\"font-family: unset !important; width: unset !important;\">Du lịch hè, teambuilding gắn kết tình cảm.</li><li style=\"font-family: unset !important; width: unset !important;\">Quỹ ăn nhẹ hàng tháng, hàng tuần cho nhân viên.</li><li style=\"font-family: unset !important; width: unset !important;\">Lương tháng 13.</li><li style=\"font-family: unset !important; width: unset !important;\">Cơ hội phát triển bản thân, qua các dự án lớn và quy trình chuyên nghiệp.</li><li style=\"font-family: unset !important; width: unset !important;\">Cơ hội làm việc tại Nhật Bản.</li><li style=\"font-family: unset !important; width: unset !important;\">Được hưởng đầy đủ các chế độ cho người lao động theo luật lao động Việt Nam (BHXH, BHYT...).</li></ul>', 1, 'Tầng 3, toà nhà Fafim, số 19 Nguyễn Trãi, Thanh Xuân', 1, '2024-06-18 15:53:53', '2024-06-18 15:54:11', 3, 3, 6, 1, NULL, NULL, '2024-06-18 08:53:44', '2024-06-18 08:54:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_post_activity`
--

CREATE TABLE `job_post_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `seeker_profile_id` int(11) UNSIGNED NOT NULL,
  `job_post_id` int(11) UNSIGNED NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0 COMMENT '0: chưa xem; 1: đã xem\r\n2.không phù hợp, 3.phù hợp\r\n',
  `satisfy` varchar(255) DEFAULT NULL COMMENT 'những \r\ntiêu chí đạt được trong bài post đó',
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `job_post_activity`
--

INSERT INTO `job_post_activity` (`id`, `seeker_profile_id`, `job_post_id`, `seen`, `satisfy`, `company_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 1, NULL, 1, '2024-04-30 17:05:09', '2024-05-28 17:12:08'),
(3, 3, 1, 0, NULL, 1, '2024-05-12 17:05:09', '2024-04-30 17:05:09'),
(4, 5, 3, 0, NULL, 1, '2024-04-30 17:05:09', '2024-04-30 17:05:09'),
(6, 9, 2, 1, 'edu|exp|language', 1, '2024-04-23 17:05:09', '2024-05-31 14:42:16'),
(7, 11, 2, 3, 'edu|exp|skill|language', 1, '2024-04-28 15:46:19', '2024-05-31 14:42:11'),
(9, 9, 3, 2, 'edu|exp|language', 1, '2024-04-23 17:05:09', '2024-05-10 10:36:17'),
(10, 13, 1, 1, 'edu|exp|language', 1, '2024-05-30 18:07:54', '2024-06-10 17:40:54'),
(11, 14, 2, 0, 'edu|exp', 1, '2024-05-30 18:08:03', '2024-05-30 18:08:03'),
(12, 15, 3, 0, 'exp|language', 1, '2024-05-30 18:08:11', '2024-05-30 18:08:11'),
(13, 16, 4, 0, 'edu|exp|language', 1, '2024-05-30 18:08:18', '2024-05-30 18:08:18'),
(14, 17, 5, 0, 'edu|exp|skill', 4, '2024-05-30 18:08:25', '2024-05-30 18:08:25'),
(15, 18, 9, 1, 'exp|edu|skill|language', 1, '2024-05-30 18:08:33', '2024-06-13 12:29:46'),
(16, 24, 1, 3, 'edu|exp|skill|language', 1, '2024-05-31 12:22:51', '2024-05-31 14:41:45'),
(17, 24, 2, 1, 'edu|exp|skill', 1, '2024-05-31 12:23:16', '2024-05-31 14:42:20'),
(18, 24, 3, 1, 'edu|exp|skill|language', 1, '2024-05-31 12:25:17', '2024-06-10 17:00:19'),
(19, 25, 5, 0, 'edu|exp|skill|language', 4, '2024-05-31 12:29:31', '2024-05-31 12:29:31'),
(23, 9, 10, 0, 'edu|exp|language', 1, '2024-06-18 08:23:59', '2024-06-18 08:23:59'),
(24, 9, 14, 0, 'edu|exp|skill|language', 2, '2024-06-18 08:24:13', '2024-06-18 08:24:13'),
(25, 9, 8, 0, 'exp|edu', 1, '2024-06-18 08:24:27', '2024-06-18 08:24:27'),
(26, 9, 1, 0, 'edu|exp', 1, '2024-06-18 08:27:07', '2024-06-18 08:27:07'),
(27, 9, 23, 0, 'edu|language', 1, '2024-06-18 08:54:53', '2024-06-18 08:54:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_post_language`
--

CREATE TABLE `job_post_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_post_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) DEFAULT 0 COMMENT '0: không; 1:sơ cấp; 2: trung cấp; 3: cao cấp; 4: bản ngữ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `job_post_language`
--

INSERT INTO `job_post_language` (`id`, `job_post_id`, `language_id`, `level`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, NULL, NULL),
(2, 2, 2, 1, NULL, NULL),
(3, 12, 1, 1, '2024-05-05 15:40:34', '2024-05-05 15:40:34'),
(5, 12, 3, 2, '2024-05-06 07:38:19', '2024-05-06 07:38:19'),
(6, 12, 5, 4, '2024-05-06 07:38:19', '2024-05-06 07:38:19'),
(7, 8, 1, 3, '2024-05-12 18:04:49', '2024-05-12 18:04:49'),
(8, 8, 6, 3, '2024-05-12 18:04:49', '2024-05-12 18:09:47'),
(9, 13, 1, 2, '2024-05-24 14:24:30', '2024-05-24 14:24:30'),
(10, 14, 1, 2, '2024-05-24 14:26:14', '2024-05-24 14:26:14'),
(11, 12, 7, 3, '2024-05-26 16:04:37', '2024-05-26 16:04:37'),
(12, 5, 1, 2, '2024-05-26 16:15:09', '2024-05-26 16:15:09'),
(13, 5, 6, 2, '2024-05-26 16:15:09', '2024-05-26 16:15:09'),
(14, 15, 1, 2, '2024-05-31 14:50:38', '2024-05-31 14:50:38'),
(15, 15, 5, 2, '2024-05-31 14:50:38', '2024-05-31 14:50:38'),
(16, 1, 1, 2, '2024-05-31 19:25:19', '2024-05-31 19:25:19'),
(17, 1, 6, 1, '2024-05-31 19:25:19', '2024-05-31 19:25:19'),
(18, 18, 1, 2, '2024-06-18 03:46:14', '2024-06-18 03:46:14'),
(19, 18, 5, 2, '2024-06-18 03:46:14', '2024-06-18 03:46:14'),
(20, 19, 7, 2, '2024-06-18 03:55:50', '2024-06-18 03:55:50'),
(21, 20, 1, 3, '2024-06-18 04:08:42', '2024-06-18 04:08:42'),
(22, 21, 3, 2, '2024-06-18 04:14:51', '2024-06-18 04:14:51'),
(23, 22, 5, 2, '2024-06-18 04:29:37', '2024-06-18 04:29:37'),
(24, 23, 1, 2, '2024-06-18 08:53:44', '2024-06-18 08:53:44'),
(25, 23, 2, 2, '2024-06-18 08:53:44', '2024-06-18 08:53:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_post_skill`
--

CREATE TABLE `job_post_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_post_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `job_post_skill`
--

INSERT INTO `job_post_skill` (`id`, `job_post_id`, `skill_id`) VALUES
(2, 1, 1),
(3, 1, 2),
(1, 1, 3),
(15, 1, 14),
(6, 2, 1),
(7, 2, 2),
(5, 2, 3),
(8, 2, 14),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 3, 6),
(20, 3, 13),
(35, 4, 1),
(36, 4, 3),
(37, 4, 5),
(38, 5, 1),
(39, 5, 3),
(11, 8, 1),
(12, 8, 2),
(13, 9, 1),
(14, 9, 2),
(21, 10, 1),
(22, 10, 2),
(23, 10, 3),
(24, 11, 1),
(25, 11, 2),
(26, 12, 1),
(27, 12, 2),
(28, 12, 3),
(29, 13, 1),
(30, 13, 3),
(31, 13, 15),
(32, 14, 1),
(33, 14, 3),
(34, 14, 15),
(40, 15, 1),
(41, 15, 3),
(42, 18, 1),
(43, 18, 3),
(44, 18, 15),
(45, 19, 1),
(46, 19, 3),
(47, 19, 15),
(48, 20, 3),
(49, 20, 20),
(50, 21, 20),
(51, 23, 1),
(52, 23, 2),
(53, 23, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 là chặn, 1 là hoạt động',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anh', NULL, 1, NULL, '2024-06-14 17:19:48', NULL),
(2, 'Đức\r\n', NULL, 1, NULL, '2024-06-09 18:04:10', NULL),
(3, 'Pháp\n', NULL, 1, NULL, '2024-06-09 18:04:13', NULL),
(4, 'Nga', NULL, 1, NULL, '2024-06-09 18:04:16', NULL),
(5, 'Trung Quốc', NULL, 1, NULL, '2024-06-09 18:04:20', NULL),
(6, 'Hàn Quốc', NULL, 1, NULL, '2024-06-09 18:04:24', NULL),
(7, 'Nhật', NULL, 1, NULL, '2024-06-09 18:04:27', NULL),
(9, 'Ả rập', 'đây là', 0, '2024-05-06 17:50:24', '2024-06-09 18:04:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `majors`
--

CREATE TABLE `majors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `majors`
--

INSERT INTO `majors` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Khoa học máy tính', 'Khoa học máy tính là ngành giúp bạn có thể làm chủ mọi máy tính', 1, '2024-01-21 01:01:33', '2024-06-10 01:02:10', NULL),
(2, 'Công nghệ thông tin', 'Công nghệ thông tin là một ngành học được đào tạo để sử dụng máy tính và các phần mềm máy tính để phân phối và xử lý các dữ liệu thông tin', 1, '2024-01-21 01:03:22', '2024-06-14 22:59:42', NULL),
(3, 'Mạng máy tính và truyền thông dữ liệu', 'Ngành Mạng máy tính & Truyền thông dữ liệu là một ngành nghiên cứu những nguyên lý của mạng', 1, '2024-01-21 01:03:59', '2024-06-14 22:59:44', NULL),
(4, 'Kỹ thuật máy tính', 'Ngành Kỹ thuật máy tính (Computer Engineering) là ngành học có sự kết hợp giữa khối kiến thức Điện tử và khối kiến thức Công nghệ thông tin', 1, '2024-01-21 01:04:38', '2024-06-10 01:02:21', NULL),
(5, 'Kỹ thuât mạng', 'Kỹ thuật mạng là ngành nghề được cho là “trái tim” của lĩnh vực công nghệ thông tin bởi vì gần như mọi doanh nghiệp đều cần mạng lưới', 1, '2024-01-21 01:05:14', '2024-06-14 22:59:47', NULL),
(6, 'Công nghệ phần mềm', 'Công nghệ phần mềm là chuyên ngành nghiên cứu về hệ thống kỹ thuật, phần mềm máy tính.', 1, '2024-01-21 01:05:42', '2024-06-18 11:03:59', NULL),
(7, 'Lập trình thiết kế web', 'Lập trình Web hiện là công việc đáng mơ ước của rất nhiều người. Đặc biệt có thể thấy số lượng sinh viên đầu ra trường CNTT ngày càng tăng.', 1, '2024-01-21 01:07:13', '2024-06-10 01:02:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `seeker_profile_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `seeker_profile_id`, `name`, `start_date`, `end_date`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Web site bán điện thoại', '2022-08-27', '2024-04-11', 'mô tả :\r\nCông cụ :\r\nphp, mysql', NULL, '2024-04-12 21:51:56'),
(2, 1, 'ứng dụng mượn sách', '2022-08-27', '2024-04-04', 'mô tả :\r\nCông cụ :\r\nphp, mysql', NULL, '2024-04-12 09:43:59'),
(3, 2, 'website đặt phòng khách sạn', '2022-08-27', NULL, 'mô tả :\r\nCông cụ :\r\nreactJS, sqlserver\r\n', NULL, NULL),
(4, 2, 'website bán đồ ăn', '2022-08-27', NULL, 'mô tả :\r\nCông cụ :\r\nAsp.net core mvc, sqlserver\r\n', NULL, NULL),
(5, 3, 'website bán đồ ăn', '2022-08-27', NULL, 'mô tả :\r\nCông cụ :\r\nphp, laravel\r\n', NULL, NULL),
(6, 3, 'website đặt phòng khách sạn', '2022-08-27', NULL, 'mô tả :\r\nCông cụ :\r\nphp, laravel, mysql\r\n', NULL, NULL),
(11, 9, 'Web site bán điện thoại', '2022-08-27', '2024-04-11', 'mô tả :\r\nCông cụ :\r\nphp, mysql', '2024-04-24 00:05:09', '2024-04-24 00:05:09'),
(12, 9, 'ứng dụng mượn sách', '2022-08-27', '2024-04-04', 'mô tả :\r\nCông cụ :\r\nphp, mysql', '2024-04-24 00:05:09', '2024-04-24 00:05:09'),
(13, 5, 'thiết kế website bán hàng', '2019-04-11', '2020-02-22', 'mô tả', '2024-04-25 00:05:20', '2024-04-25 00:05:20'),
(14, 10, 'Website tìm kiếm việc làm', '2023-02-28', '2023-07-28', '-Giúp nhà tuyển dụng và lập trình viên kết nối với nhau\r\n-Sử dụng laravel, mySql', '2024-04-28 22:40:31', '2024-04-28 22:40:31'),
(15, 11, 'Website tìm kiếm việc làm', '2023-02-28', '2023-07-28', '-Giúp nhà tuyển dụng và lập trình viên kết nối với nhau\r\n-Sử dụng laravel, mySql', '2024-04-28 22:46:19', '2024-04-28 22:46:19'),
(16, 4, 'Trang web vận chuyển HungThinh', '2024-01-30', '2024-05-17', 'xây dựng trang web 1 mình, làm từ bộ core của công ty', '2024-05-27 16:13:36', '2024-05-27 16:13:36'),
(17, 12, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 00:57:24', '2024-05-31 00:57:24'),
(18, 13, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 01:07:54', '2024-05-31 01:07:54'),
(19, 14, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 01:08:03', '2024-05-31 01:08:03'),
(20, 15, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 01:08:11', '2024-05-31 01:08:11'),
(21, 16, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 01:08:18', '2024-05-31 01:08:18'),
(22, 17, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 01:08:25', '2024-05-31 01:08:25'),
(23, 18, 'Cổng thông tin việc làm', '2023-01-31', '2023-07-05', 'Ứng dụng kết nói nhà tuyển dụng và ứng viên', '2024-05-31 01:08:33', '2024-05-31 01:08:33'),
(24, 23, 'Website thương mại điện tử', '2017-02-23', '2017-07-14', 'Nhà bán hàng sẽ đăng tỉa thông tin shop và sản phẩm, khách hàng có thể mua sắm, thanh toán', '2024-05-31 16:17:49', '2024-05-31 16:17:49'),
(26, 23, 'web site bán đồ uống', '2019-02-12', '2020-03-12', '...hhh', '2024-05-31 17:35:12', '2024-05-31 17:43:49'),
(28, 24, 'Website thương mại điện tử', '2017-02-23', '2017-07-14', 'Nhà bán hàng sẽ đăng tỉa thông tin shop và sản phẩm, khách hàng có thể mua sắm, thanh toán', '2024-05-31 19:22:51', '2024-05-31 19:22:51'),
(29, 24, 'web site bán đồ uống', '2019-02-12', '2020-03-12', '...hhh', '2024-05-31 19:22:51', '2024-05-31 19:22:51'),
(30, 25, 'Website thương mại điện tử', '2017-02-23', '2017-07-14', 'Nhà bán hàng sẽ đăng tỉa thông tin shop và sản phẩm, khách hàng có thể mua sắm, thanh toán', '2024-05-31 19:29:31', '2024-05-31 19:29:31'),
(31, 25, 'web site bán đồ uống', '2019-02-12', '2020-03-12', '...hhh', '2024-05-31 19:29:31', '2024-05-31 19:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saved_candidates`
--

CREATE TABLE `saved_candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `saved_candidates`
--

INSERT INTO `saved_candidates` (`id`, `company_id`, `candidate_id`, `created_at`, `updated_at`) VALUES
(3, 1, 4, '2024-05-27 16:19:51', '2024-05-27 16:19:51'),
(4, 1, 7, '2024-05-31 17:07:14', '2024-05-31 17:07:14'),
(5, 1, 10, '2024-05-31 17:08:04', '2024-05-31 17:08:04'),
(6, 9, 4, '2024-06-10 16:20:37', '2024-06-10 16:20:37'),
(7, 9, 7, '2024-06-10 16:20:41', '2024-06-10 16:20:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saved_companies`
--

CREATE TABLE `saved_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `saved_companies`
--

INSERT INTO `saved_companies` (`id`, `candidate_id`, `company_id`, `created_at`, `updated_at`) VALUES
(3, 1, 2, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 1, 1, NULL, NULL),
(6, 7, 2, '2024-05-30 15:42:25', '2024-05-30 15:42:25'),
(7, 7, 1, '2024-05-30 15:49:37', '2024-05-30 15:49:37'),
(8, 7, 4, '2024-05-30 16:31:55', '2024-05-30 16:31:55'),
(9, 7, 5, '2024-05-30 18:09:17', '2024-05-30 18:09:17'),
(10, 7, 6, '2024-05-30 18:09:20', '2024-05-30 18:09:20'),
(12, 1, 4, '2024-06-02 16:09:22', '2024-06-02 16:09:22'),
(13, 1, 6, '2024-06-02 16:09:26', '2024-06-02 16:09:26'),
(14, 1, 9, '2024-06-02 16:09:32', '2024-06-02 16:09:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` int(11) NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `job_post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `candidate_id`, `job_post_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, '2024-05-01 14:24:46', '2024-05-01 14:24:46'),
(7, 1, 5, '2024-05-01 14:24:47', '2024-05-01 14:24:47'),
(9, 9, 1, '2024-05-29 01:32:29', '2024-05-29 01:32:29'),
(10, 9, 3, '2024-05-29 01:32:32', '2024-05-29 01:32:32'),
(11, 7, 9, '2024-05-30 18:08:38', '2024-05-30 18:08:38'),
(12, 7, 1, '2024-05-30 18:08:44', '2024-05-30 18:08:44'),
(13, 7, 2, '2024-05-30 18:08:53', '2024-05-30 18:08:53'),
(14, 7, 3, '2024-05-30 18:08:58', '2024-05-30 18:08:58'),
(15, 7, 4, '2024-05-30 18:09:03', '2024-05-30 18:09:03'),
(16, 7, 5, '2024-05-30 18:09:09', '2024-05-30 18:09:09'),
(17, 1, 2, '2024-06-02 16:08:58', '2024-06-02 16:08:58'),
(18, 1, 3, '2024-06-02 16:09:00', '2024-06-02 16:09:00'),
(19, 1, 4, '2024-06-02 16:09:02', '2024-06-02 16:09:02'),
(20, 1, 8, '2024-06-02 16:09:05', '2024-06-02 16:09:05'),
(21, 1, 9, '2024-06-02 16:09:07', '2024-06-02 16:09:07'),
(22, 1, 10, '2024-06-09 15:35:28', '2024-06-09 15:35:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seeker_language`
--

CREATE TABLE `seeker_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `seeker_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL COMMENT 'chứng chỉ ngoại ngữ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `seeker_language`
--

INSERT INTO `seeker_language` (`id`, `seeker_profile_id`, `language_id`, `level`, `certificate`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'ielts', NULL, NULL),
(4, 1, 2, 3, 'không có đâuaa', '2024-04-13 07:22:22', '2024-04-14 14:15:35'),
(9, 9, 1, 2, 'ielts', '2024-04-23 17:05:09', '2024-04-23 17:05:09'),
(10, 9, 2, 3, 'không có đâuaa', '2024-04-23 17:05:09', '2024-04-23 17:05:09'),
(11, 5, 2, 2, 'không có', '2024-04-24 17:07:02', '2024-04-24 17:07:14'),
(12, 10, 1, 2, 'Tiếng Anh B1', '2024-04-28 15:43:53', '2024-04-28 15:43:53'),
(13, 10, 2, 1, 'không có', '2024-04-28 15:44:08', '2024-04-28 15:44:08'),
(14, 10, 4, 3, 'không có', '2024-04-28 15:44:20', '2024-04-28 15:44:20'),
(15, 11, 1, 2, 'Tiếng Anh B1', '2024-04-28 15:46:19', '2024-04-28 15:46:19'),
(16, 11, 2, 1, 'không có', '2024-04-28 15:46:19', '2024-04-28 15:46:19'),
(17, 11, 4, 3, 'không có', '2024-04-28 15:46:19', '2024-04-28 15:46:19'),
(18, 4, 1, 2, 'chứng chỉ ielt', '2024-05-27 09:16:10', '2024-05-27 09:16:10'),
(19, 4, 3, 1, 'không có', '2024-05-27 09:16:31', '2024-05-27 09:16:31'),
(20, 12, 3, 3, 'không', '2024-05-30 17:59:32', '2024-05-30 17:59:32'),
(21, 12, 1, 3, 'không', '2024-05-30 17:59:47', '2024-05-30 17:59:47'),
(22, 13, 3, 3, 'không', '2024-05-30 18:07:54', '2024-05-30 18:07:54'),
(23, 13, 1, 3, 'không', '2024-05-30 18:07:54', '2024-05-30 18:07:54'),
(24, 14, 3, 3, 'không', '2024-05-30 18:08:03', '2024-05-30 18:08:03'),
(25, 14, 1, 3, 'không', '2024-05-30 18:08:03', '2024-05-30 18:08:03'),
(26, 15, 3, 3, 'không', '2024-05-30 18:08:11', '2024-05-30 18:08:11'),
(27, 15, 1, 3, 'không', '2024-05-30 18:08:11', '2024-05-30 18:08:11'),
(28, 16, 3, 3, 'không', '2024-05-30 18:08:18', '2024-05-30 18:08:18'),
(29, 16, 1, 3, 'không', '2024-05-30 18:08:18', '2024-05-30 18:08:18'),
(30, 17, 3, 3, 'không', '2024-05-30 18:08:25', '2024-05-30 18:08:25'),
(31, 17, 1, 3, 'không', '2024-05-30 18:08:25', '2024-05-30 18:08:25'),
(32, 18, 3, 3, 'không', '2024-05-30 18:08:33', '2024-05-30 18:08:33'),
(33, 18, 1, 3, 'không', '2024-05-30 18:08:33', '2024-05-30 18:08:33'),
(34, 23, 1, 2, 'ielt 6.0', '2024-05-31 10:50:17', '2024-05-31 10:50:17'),
(35, 23, 4, 3, 'không có', '2024-05-31 10:50:47', '2024-05-31 10:51:24'),
(37, 24, 1, 2, 'ielt 6.0', '2024-05-31 12:22:51', '2024-05-31 12:22:51'),
(38, 24, 4, 3, 'không có', '2024-05-31 12:22:51', '2024-05-31 12:22:51'),
(39, 23, 6, 2, 'không có', '2024-05-31 12:28:34', '2024-05-31 12:28:34'),
(40, 25, 1, 2, 'ielt 6.0', '2024-05-31 12:29:31', '2024-05-31 12:29:31'),
(41, 25, 4, 3, 'không có', '2024-05-31 12:29:31', '2024-05-31 12:29:31'),
(42, 25, 6, 2, 'không có', '2024-05-31 12:29:31', '2024-05-31 12:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seeker_profile`
--

CREATE TABLE `seeker_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `objective` text DEFAULT NULL COMMENT 'mục tiêu nghề nghiệp',
  `total_experience` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_clone` int(11) NOT NULL DEFAULT 0 COMMENT '0: bản chính; 1: bản sao\r\n',
  `is_change` int(11) NOT NULL DEFAULT 0 COMMENT 'xem đã thay đổi chưa: 0 là chưa, 1 là rồi',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `seeker_profile`
--

INSERT INTO `seeker_profile` (`id`, `candidate_id`, `name`, `gender`, `date_of_birth`, `email`, `phone`, `address`, `link`, `title`, `image`, `objective`, `total_experience`, `is_clone`, `is_change`, `updated_at`, `created_at`) VALUES
(1, 1, 'nguyễn bá khôii', '1', '2002-11-27', 'nkhoi855@gmail.com', '0368454462', 'Thôn Bùng, Phùng Xá, Thạch Thất', 'https://www.facebook.com/khoi.nguyenba.986', 'Web devvvv', '1712993124-imageCV-nguyen-ba-khoii.png', 'phát triển bản thân thành lập trình viên theo hướng fullstack  nha :))', '1.30', 0, 0, '2024-04-23 21:51:13', NULL),
(2, 2, 'Nguyễn Anh Vui', '0', '2002-01-02', 'nvui@gmail.com', '0368542323', 'phùng xá, thạch thất, hà nội', 'https://github.com/nguyenbakhoi2002', '', NULL, '', '0.00', 0, 0, NULL, NULL),
(3, 3, 'Nguyễn Văn Hà', '1', '1999-04-27', 'nha@gmail.com', '0368456548', 'phùng xá, thạch thất, hà nội', 'https://github.com/nguyenbakhoi2002', '', NULL, '', '0.00', 0, 0, NULL, NULL),
(4, 4, 'Nguyễn Thị Lan', '0', '2001-10-20', 'nlan@gmail.com', '0368456548', 'phùng xá, thạch thất, hà nội', 'https://github.com/nguyenbakhoi2002', 'Lập trình viên Laravel', NULL, 'Phấn đấu , học tập, củng cố kiến thức, nâng cao giá trị bản thân', '3.80', 0, 0, '2024-05-27 16:12:17', NULL),
(5, 5, 'Đỗ Văn Long', '1', '2003-04-03', 'dlong@gmail.com', '0368456548', 'phùng xá, thạch thất, hà nội', 'https://github.com/nguyenbakhoi2002', 'Web developer', '1713977806-imageCV-do-van-long.jpg', 'trờ thành lập trình viên web site chuyên nghiệp', '3.10', 0, 0, '2024-04-24 23:56:46', NULL),
(9, 1, 'nguyễn bá khôii', '1', '2002-11-27', 'nkhoi855@gmail.com', '0368454462', 'Thôn Bùng, Phùng Xá, Thạch Thất', 'https://www.facebook.com/khoi.nguyenba.986', 'Web devvvv', '1712993124-imageCV-nguyen-ba-khoii.png', 'phát triển bản thân thành lập trình viên theo hướng fullstack  nha :))', '1.30', 1, 0, '2024-04-24 00:05:09', '2024-04-24 00:05:09'),
(10, 6, 'Đỗ Thị Thùy Trang', 'Nữ', '2024-04-10', 'trang@gmail.com', '03684521312', 'Thạch thất , hà nộii', 'http://localhost/itjob_portal/public/profile', 'Treng thiên thần', '1714327160-imageCV-do-thi-thuy-trang.png', 'phát triển bản thân', '2.20', 0, 0, '2024-04-29 01:07:47', '2024-04-28 17:31:53'),
(11, 6, 'ĐỗThị Trang', NULL, NULL, 'trang@gmail.com', '03684521312', 'hà nội', NULL, 'âsasas', NULL, 'phát triển bản thân', '2.20', 1, 0, '2024-04-28 22:46:18', '2024-04-28 22:46:18'),
(12, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 0, 0, '2024-05-31 00:55:59', '2024-05-31 00:06:04'),
(13, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 1, 0, '2024-05-31 01:07:54', '2024-05-31 01:07:54'),
(14, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 1, 0, '2024-05-31 01:08:03', '2024-05-31 01:08:03'),
(15, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 1, 0, '2024-05-31 01:08:11', '2024-05-31 01:08:11'),
(16, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 1, 0, '2024-05-31 01:08:18', '2024-05-31 01:08:18'),
(17, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 1, 0, '2024-05-31 01:08:25', '2024-05-31 01:08:25'),
(18, 7, 'Thanh Minh Nguyễn', 'Nữ', '2002-05-02', 'tm@gmail.com', '0368235732', 'Quốc Oai, Hà Nội', 'https://www.topcv.vn/cong-ty', 'Lập trình viên Android', '1717090005-imageCV-thanh-minh-nguyen.png', 'Không ngừng học tập và phát triển, nâng cao kinh nghiệm cũng như kiến thức\r\nTrở thành một nhà lập trình có tiếng trong tương lai', '4.70', 1, 0, '2024-05-31 01:08:33', '2024-05-31 01:08:33'),
(23, 10, 'Nguyễn Văn Khánh', 'Nam', '1995-06-13', 'vkhanh@gmai.com', '0348452142', 'Đan Phượng, Hà Nội', 'https://www.facebook.com/', 'Web developer', '1717158827-imageCV-nguyen-van-khanh.jpg', 'Phát triển tối đa kỹ năng lập trình của bản thân', '6.40', 0, 1, '2024-05-31 19:33:47', '2024-05-31 14:49:48'),
(24, 10, 'Nguyễn Văn Khánh', 'Nam', '1995-06-13', 'vkhanh@gmai.com', '0348452142', 'Đan Phượng, Hà Nội', 'https://www.facebook.com/', 'Web developer', NULL, 'Phát triển tối đa kỹ năng lập trình của bản thân', '6.40', 1, 1, '2024-05-31 19:22:51', '2024-05-31 19:22:51'),
(25, 10, 'Nguyễn Văn Khánh', 'Nam', '1995-06-13', 'vkhanh@gmai.com', '0348452142', 'Đan Phượng, Hà Nội', 'https://www.facebook.com/', 'Web developer', NULL, 'Phát triển tối đa kỹ năng lập trình của bản thân', '6.40', 1, 1, '2024-05-31 19:29:31', '2024-05-31 19:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seeker_skill`
--

CREATE TABLE `seeker_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `seeker_profile_id` int(11) UNSIGNED NOT NULL,
  `skill_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `seeker_skill`
--

INSERT INTO `seeker_skill` (`id`, `seeker_profile_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(4, 2, 3, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 2, 9, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 6, NULL, NULL),
(9, 3, 13, NULL, NULL),
(12, 5, 1, NULL, NULL),
(13, 5, 2, NULL, NULL),
(14, 5, 3, NULL, NULL),
(15, 5, 6, NULL, NULL),
(16, 5, 13, NULL, NULL),
(31, 1, 1, NULL, NULL),
(32, 1, 3, NULL, NULL),
(33, 1, 5, NULL, NULL),
(34, 1, 13, NULL, NULL),
(35, 1, 15, NULL, NULL),
(51, 9, 1, NULL, NULL),
(52, 9, 3, NULL, NULL),
(53, 9, 5, NULL, NULL),
(54, 9, 13, NULL, NULL),
(55, 9, 15, NULL, NULL),
(56, 5, 15, NULL, NULL),
(57, 10, 1, NULL, NULL),
(58, 10, 2, NULL, NULL),
(59, 10, 3, NULL, NULL),
(60, 10, 6, NULL, NULL),
(61, 10, 14, NULL, NULL),
(62, 11, 1, NULL, NULL),
(63, 11, 2, NULL, NULL),
(64, 11, 3, NULL, NULL),
(65, 11, 6, NULL, NULL),
(66, 11, 14, NULL, NULL),
(67, 4, 1, NULL, NULL),
(68, 4, 2, NULL, NULL),
(69, 4, 3, NULL, NULL),
(70, 4, 7, NULL, NULL),
(71, 4, 14, NULL, NULL),
(72, 12, 1, NULL, NULL),
(73, 12, 2, NULL, NULL),
(74, 12, 3, NULL, NULL),
(75, 12, 6, NULL, NULL),
(76, 12, 7, NULL, NULL),
(77, 13, 1, NULL, NULL),
(78, 13, 2, NULL, NULL),
(79, 13, 3, NULL, NULL),
(80, 13, 6, NULL, NULL),
(81, 13, 7, NULL, NULL),
(82, 14, 1, NULL, NULL),
(83, 14, 2, NULL, NULL),
(84, 14, 3, NULL, NULL),
(85, 14, 6, NULL, NULL),
(86, 14, 7, NULL, NULL),
(87, 15, 1, NULL, NULL),
(88, 15, 2, NULL, NULL),
(89, 15, 3, NULL, NULL),
(90, 15, 6, NULL, NULL),
(91, 15, 7, NULL, NULL),
(92, 16, 1, NULL, NULL),
(93, 16, 2, NULL, NULL),
(94, 16, 3, NULL, NULL),
(95, 16, 6, NULL, NULL),
(96, 16, 7, NULL, NULL),
(97, 17, 1, NULL, NULL),
(98, 17, 2, NULL, NULL),
(99, 17, 3, NULL, NULL),
(100, 17, 6, NULL, NULL),
(101, 17, 7, NULL, NULL),
(102, 18, 1, NULL, NULL),
(103, 18, 2, NULL, NULL),
(104, 18, 3, NULL, NULL),
(105, 18, 6, NULL, NULL),
(106, 18, 7, NULL, NULL),
(191, 23, 1, NULL, NULL),
(192, 23, 3, NULL, NULL),
(193, 23, 5, NULL, NULL),
(194, 23, 7, NULL, NULL),
(195, 23, 8, NULL, NULL),
(196, 23, 2, NULL, NULL),
(197, 23, 6, NULL, NULL),
(198, 23, 9, NULL, NULL),
(199, 23, 13, NULL, NULL),
(200, 23, 14, NULL, NULL),
(201, 23, 15, NULL, NULL),
(202, 24, 1, NULL, NULL),
(203, 24, 2, NULL, NULL),
(204, 24, 3, NULL, NULL),
(205, 24, 5, NULL, NULL),
(206, 24, 6, NULL, NULL),
(207, 24, 7, NULL, NULL),
(208, 24, 8, NULL, NULL),
(209, 24, 9, NULL, NULL),
(210, 24, 13, NULL, NULL),
(211, 24, 14, NULL, NULL),
(212, 24, 15, NULL, NULL),
(213, 25, 1, NULL, NULL),
(214, 25, 2, NULL, NULL),
(215, 25, 3, NULL, NULL),
(216, 25, 5, NULL, NULL),
(217, 25, 6, NULL, NULL),
(218, 25, 7, NULL, NULL),
(219, 25, 8, NULL, NULL),
(220, 25, 9, NULL, NULL),
(221, 25, 13, NULL, NULL),
(222, 25, 14, NULL, NULL),
(223, 25, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `skills`
--

INSERT INTO `skills` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CSS', 'Lập trình sử dụng ngôn ngữ CSS', 1, NULL, '2024-06-14 22:59:38', NULL),
(2, 'PHP', 'Lập trình sử dụng ngôn ngữ PHP', 1, '2024-01-20 15:53:00', '2024-06-14 23:00:18', NULL),
(3, 'HTML', 'Lập trình sử dụng ngôn ngữ HTML', 1, '2024-01-20 16:21:03', '2024-06-14 23:00:23', NULL),
(5, 'API', 'Lập trình sử dụng ngôn ngữ API', 1, '2024-01-21 00:30:49', '2024-06-14 23:00:26', NULL),
(6, 'Ruby', 'Lập trình sử dụng ngôn ngữ  Ruby', 1, '2024-01-22 14:55:25', '2024-06-14 23:00:28', NULL),
(7, 'GoLang', 'Lập trình sử dụng ngôn ngữ GoLang', 1, '2024-01-22 14:55:57', '2024-06-14 23:00:31', NULL),
(8, 'SCSS', 'Có nhiều sự thay đổi so với CSS', 1, '2024-01-22 14:56:15', '2024-06-14 23:00:35', NULL),
(9, 'C#', 'Lập trình sử dụng ngôn ngữ C#', 1, '2024-01-22 14:56:36', '2024-06-14 23:00:37', NULL),
(13, 'ReactJs', 'Frame work ReactJs', 1, NULL, '2024-06-14 23:00:40', NULL),
(14, 'VueJs', 'Freamwork VueJs', 1, NULL, '2024-06-14 23:00:42', NULL),
(15, 'javascript', 'ttt', 1, '2024-03-16 01:44:29', '2024-06-14 23:00:46', NULL),
(16, 'Test phần mềm', 'test trang web', 1, '2024-06-14 23:01:07', '2024-06-18 11:02:14', NULL),
(17, 'SQL server', 'Quản trị cơ sở dữ liệu', 1, '2024-06-18 10:56:55', '2024-06-18 10:57:21', NULL),
(18, 'My SQL', 'Quản trị cơ sở dữ liệu', 1, '2024-06-18 10:58:03', '2024-06-18 10:58:12', NULL),
(19, 'oracle', 'Quản trị cơ sở dữ liệu', 1, '2024-06-18 10:58:46', '2024-06-18 10:58:56', NULL),
(20, 'Firewall', 'Kiến thức về tường lửa', 1, '2024-06-18 11:07:46', '2024-06-18 11:07:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time_exp`
--

CREATE TABLE `time_exp` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `time_exp`
--

INSERT INTO `time_exp` (`id`, `name`, `level`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'không yêu cầu', 0, 1, NULL, '2024-06-09 18:03:25', NULL),
(2, '1 năm', 1, 1, NULL, '2024-06-09 18:03:50', NULL),
(3, '2 năm', 2, 1, NULL, '2024-06-09 18:03:28', NULL),
(4, '3 năm', 3, 1, NULL, '2024-06-09 18:03:52', NULL),
(5, '4 năm', 4, 1, NULL, '2024-06-09 18:03:56', NULL),
(8, 'ee', 23, 0, '2024-06-14 16:43:52', '2024-06-14 16:52:05', NULL),
(9, '5 năm', 5, 1, '2024-06-14 16:57:44', '2024-06-14 16:57:49', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `level` (`level`);

--
-- Chỉ mục cho bảng `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_educations_seekerProfile` (`seeker_profile_id`),
  ADD KEY `FK_educations_degree` (`degree_id`),
  ADD KEY `FK_educations_major` (`major_id`);

--
-- Chỉ mục cho bảng `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_experience_seekerProfile` (`seeker_profile_id`);

--
-- Chỉ mục cho bảng `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_job_company` (`company_id`),
  ADD KEY `FK_job_degree` (`degree_id`),
  ADD KEY `FK_job_major` (`major_id`),
  ADD KEY `FK_job_timeExp` (`time_exp_id`);

--
-- Chỉ mục cho bảng `job_post_activity`
--
ALTER TABLE `job_post_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jobPostsActivity_jobPosts` (`job_post_id`),
  ADD KEY `FK_jobPostsActivity_seekerProfile` (`seeker_profile_id`);

--
-- Chỉ mục cho bảng `job_post_language`
--
ALTER TABLE `job_post_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jpl_post` (`job_post_id`),
  ADD KEY `FK_jpl_lg` (`language_id`);

--
-- Chỉ mục cho bảng `job_post_skill`
--
ALTER TABLE `job_post_skill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_post_id` (`job_post_id`,`skill_id`),
  ADD KEY `FK_jobPostSkill_skill` (`skill_id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_projects_seekerProfile` (`seeker_profile_id`);

--
-- Chỉ mục cho bảng `saved_candidates`
--
ALTER TABLE `saved_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_save_candidates _candidate` (`candidate_id`),
  ADD KEY `FK_save_candidates _companies` (`company_id`);

--
-- Chỉ mục cho bảng `saved_companies`
--
ALTER TABLE `saved_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_savecompany_company` (`company_id`),
  ADD KEY `FK_savecompany_candidate` (`candidate_id`);

--
-- Chỉ mục cho bảng `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_savejob_job` (`job_post_id`),
  ADD KEY `FK_savejob_candidate` (`candidate_id`);

--
-- Chỉ mục cho bảng `seeker_language`
--
ALTER TABLE `seeker_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SeekerLanguage_Languague` (`language_id`),
  ADD KEY `FK_SeekerLanguage_Seeker` (`seeker_profile_id`);

--
-- Chỉ mục cho bảng `seeker_profile`
--
ALTER TABLE `seeker_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_seekerProfile_candidate` (`candidate_id`);

--
-- Chỉ mục cho bảng `seeker_skill`
--
ALTER TABLE `seeker_skill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seeker_id` (`seeker_profile_id`,`skill_id`),
  ADD KEY `FK_seekerSkill_skill` (`skill_id`);

--
-- Chỉ mục cho bảng `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `time_exp`
--
ALTER TABLE `time_exp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `job_post_activity`
--
ALTER TABLE `job_post_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `job_post_language`
--
ALTER TABLE `job_post_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `job_post_skill`
--
ALTER TABLE `job_post_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `saved_candidates`
--
ALTER TABLE `saved_candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `saved_companies`
--
ALTER TABLE `saved_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `seeker_language`
--
ALTER TABLE `seeker_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `seeker_profile`
--
ALTER TABLE `seeker_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `seeker_skill`
--
ALTER TABLE `seeker_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `time_exp`
--
ALTER TABLE `time_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `FK_educations_degree` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`),
  ADD CONSTRAINT `FK_educations_major` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`),
  ADD CONSTRAINT `FK_educations_seekerProfile` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profile` (`id`);

--
-- Các ràng buộc cho bảng `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `FK_experience_seekerProfile` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profile` (`id`);

--
-- Các ràng buộc cho bảng `job_posts`
--
ALTER TABLE `job_posts`
  ADD CONSTRAINT `FK_job_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `FK_job_degree` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`),
  ADD CONSTRAINT `FK_job_major` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`),
  ADD CONSTRAINT `FK_job_timeExp` FOREIGN KEY (`time_exp_id`) REFERENCES `time_exp` (`id`);

--
-- Các ràng buộc cho bảng `job_post_activity`
--
ALTER TABLE `job_post_activity`
  ADD CONSTRAINT `FK_jobPostsActivity_jobPosts` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`),
  ADD CONSTRAINT `FK_jobPostsActivity_seekerProfile` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profile` (`id`);

--
-- Các ràng buộc cho bảng `job_post_language`
--
ALTER TABLE `job_post_language`
  ADD CONSTRAINT `FK_jpl_lg` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `FK_jpl_post` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`);

--
-- Các ràng buộc cho bảng `job_post_skill`
--
ALTER TABLE `job_post_skill`
  ADD CONSTRAINT `FK_jobPostSkill_jobPost` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`),
  ADD CONSTRAINT `FK_jobPostSkill_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`);

--
-- Các ràng buộc cho bảng `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `FK_projects_seekerProfile` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profile` (`id`);

--
-- Các ràng buộc cho bảng `saved_candidates`
--
ALTER TABLE `saved_candidates`
  ADD CONSTRAINT `FK_save_candidates _candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  ADD CONSTRAINT `FK_save_candidates _companies` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Các ràng buộc cho bảng `saved_companies`
--
ALTER TABLE `saved_companies`
  ADD CONSTRAINT `FK_savecompany_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  ADD CONSTRAINT `FK_savecompany_company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Các ràng buộc cho bảng `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `FK_savejob_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  ADD CONSTRAINT `FK_savejob_job` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`);

--
-- Các ràng buộc cho bảng `seeker_language`
--
ALTER TABLE `seeker_language`
  ADD CONSTRAINT `FK_SeekerLanguage_Languague` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `FK_SeekerLanguage_Seeker` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profile` (`id`);

--
-- Các ràng buộc cho bảng `seeker_profile`
--
ALTER TABLE `seeker_profile`
  ADD CONSTRAINT `FK_seekerProfile_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`);

--
-- Các ràng buộc cho bảng `seeker_skill`
--
ALTER TABLE `seeker_skill`
  ADD CONSTRAINT `FK_seekerSkill_seekerProfile` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profile` (`id`),
  ADD CONSTRAINT `FK_seekerSkill_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
