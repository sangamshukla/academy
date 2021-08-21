-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2021 at 01:16 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_homework_students`
--

CREATE TABLE `assigned_homework_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assigned_home_work_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type_of_homework` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `teacher_remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_for_student` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_homework_students`
--

INSERT INTO `assigned_homework_students` (`id`, `assigned_home_work_id`, `type_of_homework`, `student_id`, `is_approved`, `teacher_remark`, `assigned_content`, `given_marks`, `star_rating`, `comment_for_student`, `created_at`, `updated_at`) VALUES
(1, 56, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/Apa1SIRHQNMRc12W9krRKJe6i0AslmeaCYdW5CAN.pdf', '9', NULL, NULL, '2021-06-10 01:45:06', '2021-06-10 01:56:24'),
(2, 53, 'CHOOSE_PDF', 4, NULL, NULL, '77', '50', NULL, NULL, '2021-06-10 06:47:41', '2021-06-10 06:47:41'),
(3, 54, 'CHOOSE_PDF', 12, NULL, NULL, '77', '40', NULL, NULL, '2021-06-10 06:47:41', '2021-06-10 06:47:41'),
(4, 57, 'CHOOSE_PDF', 14, NULL, NULL, '77', '30', NULL, NULL, '2021-06-10 06:47:41', '2021-06-10 06:47:41'),
(5, 58, 'UPLOAD_PDF', 28, NULL, NULL, 'public/pdfs/0NnlmIrrnP3Cn98K9pNiJes93Kc9VjUe1x6dKo5P.pdf', '20', NULL, NULL, '2021-06-11 17:36:47', '2021-06-11 17:36:47'),
(6, 59, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/6N1Ja6Kq42qajdf2cUVdKOfQbftSf7YnejmFFeJL.pdf', '45', NULL, NULL, '2021-06-12 03:42:54', '2021-06-12 03:42:54'),
(7, 59, 'CHOOSE_PDF', 32, NULL, NULL, '73', '50', NULL, NULL, '2021-06-12 03:51:27', '2021-06-12 03:51:27'),
(8, 60, 'UPLOAD_PDF', 7, NULL, NULL, 'public/pdfs/rRkiEOQGpNErk9IzFNnPOMAfE0ABIW1ZOoF97Q9x.pdf', '35', NULL, NULL, '2021-06-12 14:32:20', '2021-06-12 14:32:20'),
(9, 61, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/ZCGc2x09h9Vqz8diWfQLFE0dLHRhzJREOD5h9d9P.pdf', '38', NULL, NULL, '2021-06-12 17:30:32', '2021-06-12 17:30:32'),
(10, 61, 'UPLOAD_PDF', 32, NULL, NULL, 'public/pdfs/ZCGc2x09h9Vqz8diWfQLFE0dLHRhzJREOD5h9d9P.pdf', '39', NULL, NULL, '2021-06-12 17:30:32', '2021-06-12 17:30:32'),
(11, 61, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/k2PcV94IRSZQSTTqoKILJcZRMoBSgL7a0gUDbj3X.pdf', '40', NULL, NULL, '2021-06-12 20:14:32', '2021-06-12 20:14:32'),
(12, 62, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/p8seVhp90gPNtoaxOVKrM85jkb0g8cUBFloyDw0D.pdf', '28', NULL, NULL, '2021-06-12 22:43:23', '2021-06-12 22:48:53'),
(13, 63, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/SbNYYgB36rFzMMd8Hm317gHWQbwr2NnBVHMVQix7.pdf', '45', NULL, NULL, '2021-06-12 23:50:49', '2021-06-12 23:50:49'),
(14, 63, 'UPLOAD_PDF', 32, NULL, NULL, 'public/pdfs/SbNYYgB36rFzMMd8Hm317gHWQbwr2NnBVHMVQix7.pdf', '10', NULL, NULL, '2021-06-12 23:50:49', '2021-06-13 00:36:46'),
(15, 63, 'UPLOAD_PDF', 33, NULL, NULL, 'public/pdfs/SbNYYgB36rFzMMd8Hm317gHWQbwr2NnBVHMVQix7.pdf', '48', NULL, NULL, '2021-06-12 23:50:49', '2021-06-12 23:50:49'),
(16, 64, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/RRKxual7tlUokrr6sCmNfqLCVomWJzV6lnwRN3Rz.pdf', '90', NULL, NULL, '2021-06-17 01:22:17', '2021-06-17 01:30:27'),
(17, 65, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/t8CrNcq3JUDEM0w7Zt1cbd5Kmfc8XagpETAYj2lW.pdf', '20', NULL, NULL, '2021-07-18 16:41:51', '2021-07-18 16:41:51'),
(18, 66, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/JddauU75VjQbDr3zeDml1QejxHHEYEuvaNl4ZnxT.pdf', NULL, NULL, NULL, '2021-07-20 12:11:07', '2021-07-20 12:11:07'),
(19, 67, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/7OKaEt4HnHKLJeoXQKRPHYszNqdU77xkVi2Cig4i.pdf', '30', NULL, NULL, '2021-07-20 12:57:24', '2021-07-20 13:03:26'),
(20, 68, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/3Xl8LCtyK7KFI8FGpqZ2tYIQeoA80X9ly1Xlk538.pdf', '40', NULL, NULL, '2021-07-20 13:28:02', '2021-07-20 13:39:27'),
(21, 68, 'CHOOSE_PDF', 9, NULL, NULL, '77', NULL, NULL, NULL, '2021-07-20 13:29:53', '2021-07-20 13:29:53'),
(22, 68, 'CHOOSE_PDF', 9, NULL, NULL, '77', NULL, NULL, NULL, '2021-07-20 13:30:59', '2021-07-20 13:30:59'),
(23, 68, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/4NwfKtaGeNfW8ZtZnpJfGy9DqKcxhvKP7P5ceYy2.pdf', NULL, NULL, NULL, '2021-07-20 13:32:48', '2021-07-20 13:32:48'),
(24, 67, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/1TZRtJalcRjjvnHKp9k02MflcZDE6dxlbRVOfVMO.pdf', '35', NULL, NULL, '2021-07-20 13:55:25', '2021-07-20 13:59:43'),
(25, 69, 'CHOOSE_PDF', 45, NULL, NULL, '75', NULL, NULL, NULL, '2021-07-20 14:14:12', '2021-07-20 14:14:12'),
(26, 69, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/GNZYL7BuecTDEMDXpiDUeLIRIIDicN4Bz4Ssw78V.pdf', '38', NULL, NULL, '2021-07-20 14:16:49', '2021-07-20 14:18:13'),
(27, 70, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/LRLyn4U1JWhBwl03CRcw8oIZbkGCh1AVgRcLIAjz.pdf', NULL, NULL, NULL, '2021-07-24 16:15:19', '2021-07-24 16:15:19'),
(28, 71, 'CHOOSE_PDF', 4, NULL, NULL, '73', NULL, NULL, NULL, '2021-07-27 01:01:56', '2021-07-27 01:01:56'),
(29, 71, 'CHOOSE_PDF', 9, NULL, NULL, '73', NULL, NULL, NULL, '2021-07-27 01:01:56', '2021-07-27 01:01:56'),
(30, 71, 'CHOOSE_PDF', 40, NULL, NULL, '73', NULL, NULL, NULL, '2021-07-27 01:01:56', '2021-07-27 01:01:56'),
(31, 72, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/NOlk7viRN1ZkkI1ljY1F7ktlKt2KZ67B34SjMX6V.pdf', '80', NULL, NULL, '2021-07-27 18:51:22', '2021-07-27 18:55:29'),
(32, 72, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/NOlk7viRN1ZkkI1ljY1F7ktlKt2KZ67B34SjMX6V.pdf', '90', NULL, NULL, '2021-07-27 18:51:22', '2021-07-27 18:54:11'),
(33, 73, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/WjP3PViNi2WJVBkVfxQkgKYSTeJF1YEwng8IAYTp.pdf', '20', NULL, NULL, '2021-07-27 19:09:47', '2021-07-27 19:21:16'),
(34, 73, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/WjP3PViNi2WJVBkVfxQkgKYSTeJF1YEwng8IAYTp.pdf', NULL, NULL, NULL, '2021-07-27 19:09:47', '2021-07-27 19:09:47'),
(35, 74, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/3VFL4oGbQ4O4MBzBv6zV1n25Z7yy7TgPk2v6YW3i.pdf', '20', NULL, NULL, '2021-07-27 19:11:29', '2021-07-27 19:17:14'),
(36, 74, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/7N309xpOFmoGP372zjCftD4e6ixoqEHDjbb91LES.pdf', '30', NULL, NULL, '2021-07-27 19:13:56', '2021-07-27 19:15:26'),
(37, 73, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/uCp35HPgrtYLy6BzA46bPAGQgbKJN02JnShHEgoh.pdf', NULL, NULL, NULL, '2021-07-27 19:24:33', '2021-07-27 19:24:33'),
(38, 75, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(39, 75, 'UPLOAD_PDF', 6, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(40, 75, 'UPLOAD_PDF', 8, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(41, 75, 'UPLOAD_PDF', 17, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(42, 75, 'UPLOAD_PDF', 19, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(43, 75, 'UPLOAD_PDF', 24, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(44, 75, 'UPLOAD_PDF', 27, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(45, 75, 'UPLOAD_PDF', 39, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(46, 75, 'UPLOAD_PDF', 41, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(47, 75, 'UPLOAD_PDF', 45, NULL, NULL, 'public/pdfs/JCxo1REoIf2wFinYkd4Cha9S1f6cFdqyJTwURAqS.pdf', NULL, NULL, NULL, '2021-08-05 23:12:34', '2021-08-05 23:12:34'),
(48, 75, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/tB6JI6mvcWR6HzLHY9Fhg4TNbLG7RKjCsFzqd19S.pdf', NULL, NULL, NULL, '2021-08-05 23:28:52', '2021-08-05 23:28:52'),
(49, 75, 'Add_Question', 4, NULL, NULL, '<p>State without a river?</p>', NULL, NULL, NULL, '2021-08-05 23:29:48', '2021-08-05 23:29:48'),
(50, 75, 'Add_Question', 4, NULL, NULL, '<p>Who is the head of Security Council?</p>', NULL, NULL, NULL, '2021-08-05 23:51:10', '2021-08-05 23:51:10'),
(51, 77, 'CHOOSE_PDF', 31, NULL, NULL, '73', NULL, NULL, NULL, '2021-08-08 01:01:50', '2021-08-08 01:01:50'),
(52, 78, 'CHOOSE_PDF', 9, NULL, NULL, '74', NULL, NULL, NULL, '2021-08-09 00:21:47', '2021-08-09 00:21:47'),
(54, 79, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/a2BFaGYNnCg12OqKkLccqC5PtlPVuCNTzpYg9NlU.pdf', NULL, NULL, NULL, '2021-08-09 00:24:51', '2021-08-09 00:24:51'),
(55, 79, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/SQ0oEZ9kEh0TPc6tROkADkA5jMskLDkIcHVUwnB9.pdf', '50', NULL, NULL, '2021-08-09 00:28:21', '2021-08-09 00:28:21'),
(56, 84, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/hc3lDGy9dS1AYc6OTbI0u1KHP2JsebweBBwqr4eY.pdf', '2', NULL, NULL, '2021-08-17 19:14:51', '2021-08-17 19:18:57'),
(57, 84, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/hc3lDGy9dS1AYc6OTbI0u1KHP2JsebweBBwqr4eY.pdf', '1', NULL, NULL, '2021-08-17 19:14:51', '2021-08-17 19:19:23'),
(58, 85, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/Pb5g3wbALF7pe7qc1VkF8bXqa9MGteqnCAUgAmF1.pdf', NULL, NULL, NULL, '2021-08-17 19:51:02', '2021-08-17 19:51:02'),
(59, 86, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur.pdf', '45', NULL, NULL, '2021-08-17 20:15:06', '2021-08-17 20:21:37'),
(60, 86, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur.pdf', NULL, NULL, NULL, '2021-08-17 20:15:06', '2021-08-17 20:15:06'),
(61, 86, 'UPLOAD_PDF', 28, NULL, NULL, 'public/pdfs/WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur.pdf', NULL, NULL, NULL, '2021-08-17 20:15:06', '2021-08-17 20:15:06'),
(62, 86, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur.pdf', NULL, NULL, NULL, '2021-08-17 20:15:06', '2021-08-17 20:15:06'),
(63, 87, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/C5vcofs9fwpuWbWYBdN3OqpFVSctwVuI28LW9gEo.pdf', NULL, NULL, NULL, '2021-08-17 20:59:43', '2021-08-17 20:59:43'),
(64, 88, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/qNq7WbvoBZdrrSAsKzGsN6meeS6D2DJJvUB4wa6g.pdf', '60', NULL, NULL, '2021-08-17 21:27:08', '2021-08-17 21:29:25'),
(65, 88, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/qNq7WbvoBZdrrSAsKzGsN6meeS6D2DJJvUB4wa6g.pdf', NULL, NULL, NULL, '2021-08-17 21:27:08', '2021-08-17 21:27:08'),
(66, 89, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/Q2HuOTQ84zPUwEEuLysRGaO2qGsTX1k9YnZjDbOC.pdf', '40', NULL, NULL, '2021-08-17 22:38:03', '2021-08-17 22:40:18'),
(67, 90, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/vwnmZmDZvmbEquTpR3Ogf5dk4Io5WYBiNzwXV2uZ.pdf', '40', NULL, NULL, '2021-08-17 23:35:31', '2021-08-17 23:37:52'),
(68, 90, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/vwnmZmDZvmbEquTpR3Ogf5dk4Io5WYBiNzwXV2uZ.pdf', '30', NULL, NULL, '2021-08-17 23:35:31', '2021-08-17 23:38:55'),
(69, 90, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/qlrJndE7qLIZ2A5JTkVB1OGZsGZaGTxCDPhnHtlU.pdf', NULL, NULL, NULL, '2021-08-18 00:35:24', '2021-08-18 00:35:24'),
(70, 90, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/qlrJndE7qLIZ2A5JTkVB1OGZsGZaGTxCDPhnHtlU.pdf', NULL, NULL, NULL, '2021-08-18 00:35:24', '2021-08-18 00:35:24'),
(71, 91, 'UPLOAD_PDF', 31, NULL, NULL, 'public/pdfs/jQoSTMy9BBe1gWRqHpFwyAMBhl9bp0bgrqXeBQWs.pdf', '45', NULL, NULL, '2021-08-18 00:37:59', '2021-08-18 00:39:15'),
(72, 91, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/jQoSTMy9BBe1gWRqHpFwyAMBhl9bp0bgrqXeBQWs.pdf', '48', NULL, NULL, '2021-08-18 00:37:59', '2021-08-18 00:39:35'),
(73, 92, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/Dy9j6eQO2rzceFNCKhYWVVqu9JbGXeh9D66xeiHH.pdf', NULL, NULL, NULL, '2021-08-19 00:42:21', '2021-08-19 00:42:21'),
(74, 92, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/Dy9j6eQO2rzceFNCKhYWVVqu9JbGXeh9D66xeiHH.pdf', NULL, NULL, NULL, '2021-08-19 00:42:21', '2021-08-19 00:42:21'),
(75, 92, 'UPLOAD_PDF', 28, NULL, NULL, 'public/pdfs/Dy9j6eQO2rzceFNCKhYWVVqu9JbGXeh9D66xeiHH.pdf', NULL, NULL, NULL, '2021-08-19 00:42:21', '2021-08-19 00:42:21'),
(76, 92, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/Dy9j6eQO2rzceFNCKhYWVVqu9JbGXeh9D66xeiHH.pdf', NULL, NULL, NULL, '2021-08-19 00:42:21', '2021-08-19 00:42:21'),
(77, 93, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/BOAKxYVF6rZvhjEshHyDEn6Jb8r9NNUPuuE3Epb3.pdf', NULL, NULL, NULL, '2021-08-20 02:37:38', '2021-08-20 02:37:38'),
(78, 94, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/Vv2tCmXOQ5FWf2F2ZmkadldnQtP8NEr83b5YkoEz.pdf', NULL, NULL, NULL, '2021-08-20 04:21:10', '2021-08-20 04:21:10'),
(79, 94, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/xxpLQYqqydwmikJDincuuOcqo4toTnR2bqEWmwf5.pdf', NULL, NULL, NULL, '2021-08-20 04:42:35', '2021-08-20 04:42:35'),
(80, 95, 'UPLOAD_PDF', 4, NULL, NULL, 'public/pdfs/o8Ap9jOIU2im1ieB5IYegAGyoMYN2ipcZU99MX9u.pdf', '39', NULL, NULL, '2021-08-21 19:16:59', '2021-08-21 19:29:20'),
(81, 95, 'UPLOAD_PDF', 9, NULL, NULL, 'public/pdfs/o8Ap9jOIU2im1ieB5IYegAGyoMYN2ipcZU99MX9u.pdf', NULL, NULL, NULL, '2021-08-21 19:16:59', '2021-08-21 19:16:59'),
(82, 95, 'UPLOAD_PDF', 40, NULL, NULL, 'public/pdfs/UJi4Ogm5dWF1azdAYppxsfPXL2kg9W1Yq5iFgeiL.pdf', '51', NULL, NULL, '2021-08-21 19:31:36', '2021-08-21 19:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_home_works`
--

CREATE TABLE `assigned_home_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_homework` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_home_works`
--

INSERT INTO `assigned_home_works` (`id`, `session_id`, `comment`, `points`, `type_of_homework`, `assigned_content`, `due_date`, `created_at`, `updated_at`) VALUES
(23, 21, 'pfa', '12', 'UPLOAD_PDF', '33,34', NULL, '2021-05-28 04:45:01', '2021-05-28 04:45:01'),
(24, 23, 'bjnjn', '6', 'UPLOAD_PDF', '42', NULL, '2021-05-28 15:47:47', '2021-05-28 15:47:47'),
(25, 25, '', '12', 'UPLOAD_PDF', '45', NULL, '2021-05-28 17:38:08', '2021-05-28 17:38:08'),
(26, 3, 'tet5', '90', 'UPLOAD_PDF', '58', NULL, '2021-05-29 00:15:33', '2021-05-29 00:15:33'),
(27, 15, 'test', '9', 'UPLOAD_PDF', '61', NULL, '2021-05-29 00:20:19', '2021-05-29 00:20:19'),
(28, 29, 'This is a Message from teh teacher. ', '50', 'UPLOAD_PDF', '62', NULL, '2021-05-29 01:44:47', '2021-05-29 01:44:47'),
(29, 32, 'THese are some isntructions to student. ', '50', 'UPLOAD_PDF', '63', NULL, '2021-05-29 05:06:22', '2021-05-29 05:06:22'),
(30, 35, 'test2', '90', 'UPLOAD_PDF', '66', NULL, '2021-05-29 17:16:18', '2021-05-29 17:16:18'),
(31, 37, 'sd', '8', 'UPLOAD_PDF', '71', '2021-05-31 00:00:00', '2021-05-30 02:17:18', '2021-05-30 02:17:18'),
(32, 39, 'gvv', '9', 'Add_Question', '<p>gvhyv</p>', '2021-05-31 00:00:00', '2021-05-30 02:19:55', '2021-05-30 02:19:55'),
(33, 41, '3e', '4', 'Add_Question', '<p>tetst</p>', '2021-05-31 00:00:00', '2021-05-30 02:35:36', '2021-05-30 02:35:36'),
(34, 13, 'esd', '4', 'UPLOAD_PDF', 'public/pdfs/UvIyrBttx7aCD7nqBoRkKLizO0y3DEvnKobZcoP6.pdf', '2021-05-30 00:00:00', '2021-05-30 20:35:21', '2021-05-30 20:35:21'),
(35, 44, 'Awesome comment', '4', 'UPLOAD_PDF', 'public/pdfs/NZS3Vlf4Xg9PixarT6psGhm9oLZ4Q1sAfYZX81Pc.pdf', '2021-06-02 00:00:00', '2021-06-02 07:05:03', '2021-06-02 07:05:03'),
(37, 45, 'what is english', '4', 'Add_Question', '<p>what is englishwhat is englishwhat is englishwhat is englishwhat is englishwhat is englishwhat is englishwhat is english</p>', '2021-06-22 00:00:00', '2021-06-04 01:22:55', '2021-06-04 01:22:55'),
(38, 47, 'this is comment', '90', 'Add_Question', '<p>what is bio</p><p>what is java</p><p>what is php</p>', '2021-06-04 00:00:00', '2021-06-04 16:42:53', '2021-06-04 16:42:53'),
(39, 47, 'what is java test', '2', 'Add_Question', '<p>what is java</p>', '2021-06-04 00:00:00', '2021-06-04 17:24:50', '2021-06-04 17:24:50'),
(40, 47, 'tense pdf upload', '90', 'UPLOAD_PDF', 'public/pdfs/g26Ff5yLhxcQ994z4Ho3gyMoV2s7o41WcT7KYYSR.pdf', '2021-06-28 00:00:00', '2021-06-04 17:36:24', '2021-06-04 17:36:24'),
(41, 47, 'tense pdf uploaded', '4', 'UPLOAD_PDF', 'public/pdfs/uvgjfOQ1Q0LTb1sdTNAqZ2k3DRXdJiFE2NrCMz1R.pdf', '2021-06-04 00:00:00', '2021-06-04 17:40:34', '2021-06-04 17:40:34'),
(42, 47, 'upload again pdf', '7', 'UPLOAD_PDF', 'public/pdfs/DPz6BIWjKex4pLnrrkFBwEPEj9RPI6gkmH9BvVe0.pdf', '2021-06-04 00:00:00', '2021-06-04 18:18:43', '2021-06-04 18:18:43'),
(47, 49, 'Do not take help from google', '5', 'UPLOAD_PDF', 'public/pdfs/BdgRaXRJwQpDu1xakr3VCMGdduhXaRDLUsl9YLhE.pdf', '2021-06-07 00:00:00', '2021-06-05 17:54:41', '2021-06-05 17:54:41'),
(48, 48, 'this is new pdf', '9', 'UPLOAD_PDF', 'public/pdfs/WmvdM3Q0zWDpfaDqN6x0X7lR9UYcCgTeQXbiUJH2.pdf', '2021-06-12 00:00:00', '2021-06-05 21:56:14', '2021-06-05 21:56:14'),
(49, 54, 'this is a new comment', '2', 'UPLOAD_PDF', 'public/pdfs/3R9EzhlVcfJEa4oQuOenYxAF9KnCau0s3FNBYd6w.pdf', '2021-06-16 00:00:00', '2021-06-06 00:52:14', '2021-06-06 00:52:14'),
(50, 56, 'This is Benzene Pdf', '40', 'UPLOAD_PDF', 'public/pdfs/igguAgNtkoP3VXnW8NdWE6djQuqPj7kDyPDmnYxh.pdf', '2021-06-06 00:00:00', '2021-06-06 02:39:01', '2021-06-06 02:39:01'),
(51, 59, 'new comment', '9', 'UPLOAD_PDF', 'public/pdfs/aGlLjBGtvK3T8TtP17AxBOQBXwj3Czb8nyjMAB0d.pdf', '2021-06-07 00:00:00', '2021-06-08 00:17:23', '2021-06-08 00:17:23'),
(52, 95, 'test for demo by today', '90', 'UPLOAD_PDF', 'public/pdfs/Z96fT4SFC1aPGKVJxlb9gChiSKZw0Lm42t6yOL3f.pdf', '2021-06-07 00:00:00', '2021-06-08 01:51:18', '2021-06-08 01:51:18'),
(53, 95, 'by today', '90', 'UPLOAD_PDF', 'public/pdfs/1yem449EarKDk6Ul4aAQOa05aJV5ZCTb2ostnV4L.pdf', '2021-06-07 00:00:00', '2021-06-08 02:19:15', '2021-06-08 02:19:15'),
(54, 128, 'Diagrams', '12', 'UPLOAD_PDF', 'public/pdfs/kjbZMnS4re94h6huTKmD66WHnuOygqO5heKBBBr0.pdf', '2021-06-20 00:00:00', '2021-06-08 02:37:17', '2021-06-08 02:37:17'),
(55, 65, 'last test for demo', '90', 'UPLOAD_PDF', 'public/pdfs/Afz6TbJzHGU9qVjygtinKFF7Up1pvhlDpTcMkcTp.pdf', '2021-06-08 00:00:00', '2021-06-08 03:14:31', '2021-06-08 03:14:31'),
(56, 66, 'homework', '9', 'UPLOAD_PDF', 'public/pdfs/Apa1SIRHQNMRc12W9krRKJe6i0AslmeaCYdW5CAN.pdf', '2021-06-10 00:00:00', '2021-06-10 01:45:06', '2021-06-10 01:45:06'),
(57, 43, 'Awesome Comment', '54', 'CHOOSE_PDF', '77', '2021-06-09 00:00:00', '2021-06-10 06:47:41', '2021-06-10 06:47:41'),
(58, 68, 'add comment', '9', 'UPLOAD_PDF', 'public/pdfs/0NnlmIrrnP3Cn98K9pNiJes93Kc9VjUe1x6dKo5P.pdf', '2021-06-11 00:00:00', '2021-06-11 17:36:47', '2021-06-11 17:36:47'),
(59, 74, 'comment for student 2', '50', 'CHOOSE_PDF', '73', '2021-06-12 00:00:00', '2021-06-12 03:42:54', '2021-06-12 03:51:27'),
(60, 76, 'comment by ishani', '90', 'UPLOAD_PDF', 'public/pdfs/rRkiEOQGpNErk9IzFNnPOMAfE0ABIW1ZOoF97Q9x.pdf', '2021-06-12 00:00:00', '2021-06-12 14:32:20', '2021-06-12 14:32:20'),
(61, 78, 's by comment', '90', 'UPLOAD_PDF', 'public/pdfs/k2PcV94IRSZQSTTqoKILJcZRMoBSgL7a0gUDbj3X.pdf', '2021-06-12 10:38:43', '2021-06-12 17:30:32', '2021-06-12 20:14:32'),
(62, 82, 'tense pdf', '90', 'UPLOAD_PDF', 'public/pdfs/p8seVhp90gPNtoaxOVKrM85jkb0g8cUBFloyDw0D.pdf', '2021-06-12 10:30:00', '2021-06-12 22:43:23', '2021-06-12 22:43:23'),
(63, 84, 'comment by nodejs', '90', 'UPLOAD_PDF', 'public/pdfs/SbNYYgB36rFzMMd8Hm317gHWQbwr2NnBVHMVQix7.pdf', '2021-06-12 03:00:00', '2021-06-12 23:50:49', '2021-06-12 23:50:49'),
(64, 87, 'Comment Submit ', '90', 'UPLOAD_PDF', 'public/pdfs/RRKxual7tlUokrr6sCmNfqLCVomWJzV6lnwRN3Rz.pdf', '2021-06-16 23:00:00', '2021-06-17 01:22:17', '2021-06-17 01:22:17'),
(65, 150, 'marks', '50', 'UPLOAD_PDF', 'public/pdfs/t8CrNcq3JUDEM0w7Zt1cbd5Kmfc8XagpETAYj2lW.pdf', '2021-07-18 17:00:00', '2021-07-18 16:41:51', '2021-07-18 16:41:51'),
(66, 151, 'moni points', '60', 'UPLOAD_PDF', 'public/pdfs/JddauU75VjQbDr3zeDml1QejxHHEYEuvaNl4ZnxT.pdf', '2021-07-20 12:00:00', '2021-07-20 12:11:07', '2021-07-20 12:11:07'),
(67, 158, 'asdfghjkl', '50', 'UPLOAD_PDF', 'public/pdfs/1TZRtJalcRjjvnHKp9k02MflcZDE6dxlbRVOfVMO.pdf', '2021-07-20 13:00:00', '2021-07-20 12:57:24', '2021-07-20 13:55:25'),
(68, 156, 'Home work for essay', '50', 'UPLOAD_PDF', 'public/pdfs/4NwfKtaGeNfW8ZtZnpJfGy9DqKcxhvKP7P5ceYy2.pdf', '2021-07-20 14:00:00', '2021-07-20 13:28:02', '2021-07-20 13:32:48'),
(69, 152, 'asdfasdfasf', '50', 'UPLOAD_PDF', 'public/pdfs/GNZYL7BuecTDEMDXpiDUeLIRIIDicN4Bz4Ssw78V.pdf', '2021-07-20 11:46:00', '2021-07-20 14:14:12', '2021-07-20 14:16:49'),
(70, 176, 'Nice Homework', '50', 'UPLOAD_PDF', 'public/pdfs/LRLyn4U1JWhBwl03CRcw8oIZbkGCh1AVgRcLIAjz.pdf', '2021-07-24 15:00:00', '2021-07-24 16:15:19', '2021-07-24 16:15:19'),
(71, 185, 'Test comment for the teacher', '50', 'CHOOSE_PDF', '73', '2021-07-27 23:00:00', '2021-07-27 01:01:56', '2021-07-27 01:01:56'),
(72, 189, 'test for score sheet', '100', 'UPLOAD_PDF', 'public/pdfs/NOlk7viRN1ZkkI1ljY1F7ktlKt2KZ67B34SjMX6V.pdf', '2021-07-28 21:00:00', '2021-07-27 18:51:22', '2021-07-27 18:51:22'),
(73, 191, 'eng pdf', '10', 'UPLOAD_PDF', 'public/pdfs/uCp35HPgrtYLy6BzA46bPAGQgbKJN02JnShHEgoh.pdf', '2021-07-28 22:00:00', '2021-07-27 19:09:47', '2021-07-27 19:24:33'),
(74, 192, 'essay pdf', '60', 'UPLOAD_PDF', 'public/pdfs/7N309xpOFmoGP372zjCftD4e6ixoqEHDjbb91LES.pdf', '2021-07-28 23:00:00', '2021-07-27 19:11:29', '2021-07-27 19:13:56'),
(75, 268, 'Solve it.', '3', 'Add_Question', '<p>Who is the head of Security Council?</p>', '2021-08-06 21:00:00', '2021-08-04 19:56:32', '2021-08-05 23:51:10'),
(76, 289, 'Work hard', '10', 'UPLOAD_PDF', 'public/pdfs/AS51BUK689TkIi25p0Tw38E5eXbhHn1lbBK6I0VL.pdf', '2021-08-13 13:00:00', '2021-08-05 18:08:22', '2021-08-05 18:08:22'),
(77, 300, 'asdf', '4', 'CHOOSE_PDF', '73', '2021-08-07 20:00:00', '2021-08-08 01:01:50', '2021-08-08 01:01:50'),
(78, 261, 'adfadf', '50', 'CHOOSE_PDF', '74', '2021-08-08 19:00:00', '2021-08-09 00:21:47', '2021-08-09 00:21:47'),
(79, 260, 'asdfasd', '1', 'UPLOAD_PDF', 'public/pdfs/SQ0oEZ9kEh0TPc6tROkADkA5jMskLDkIcHVUwnB9.pdf', '2021-08-08 19:00:00', '2021-08-09 00:23:40', '2021-08-09 00:28:21'),
(80, 327, 'Do not attempt', '10', 'UPLOAD_PDF', 'public/pdfs/wtzh4Yk6pnfqTpaRvC7xzJ2qEqaKtZn5KnocWMaH.pdf', '2021-08-09 19:00:00', '2021-08-10 00:49:43', '2021-08-10 00:49:43'),
(81, 347, '', '10', 'UPLOAD_PDF', 'public/pdfs/TScXcanb3tZ2hEZQmqQ7npOVceh2vhC894QwbJ64.pdf', '2021-08-11 06:00:00', '2021-08-11 16:42:58', '2021-08-11 16:42:58'),
(82, 349, '', '20', 'UPLOAD_PDF', 'public/pdfs/F7luu9h2AGoteMfZlIrA6b1IIt2nR4pWnYFzJugQ.pdf', '2021-08-11 07:00:00', '2021-08-11 17:34:08', '2021-08-11 17:34:08'),
(83, 355, '', '10', 'UPLOAD_PDF', 'public/pdfs/Inv55pY3QgI3qwAje5AOBplZWfDHeodfGaAZsECb.pdf', '2021-08-11 23:00:00', '2021-08-12 03:43:12', '2021-08-12 03:43:12'),
(84, 366, 'commentasdf', '3', 'UPLOAD_PDF', 'public/pdfs/hc3lDGy9dS1AYc6OTbI0u1KHP2JsebweBBwqr4eY.pdf', '2021-08-17 14:00:00', '2021-08-17 19:14:51', '2021-08-17 19:14:51'),
(85, 368, 'pdf upload', '50', 'UPLOAD_PDF', 'public/pdfs/Pb5g3wbALF7pe7qc1VkF8bXqa9MGteqnCAUgAmF1.pdf', '2021-08-18 20:00:00', '2021-08-17 19:51:02', '2021-08-17 19:51:02'),
(86, 357, '', '50', 'UPLOAD_PDF', 'public/pdfs/WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur.pdf', '2021-08-19 13:14:00', '2021-08-17 20:15:06', '2021-08-17 20:15:06'),
(87, 369, 'asdf', '50', 'UPLOAD_PDF', 'public/pdfs/C5vcofs9fwpuWbWYBdN3OqpFVSctwVuI28LW9gEo.pdf', '2021-08-17 16:00:00', '2021-08-17 20:59:43', '2021-08-17 20:59:43'),
(88, 371, 'test for score', '70', 'UPLOAD_PDF', 'public/pdfs/qNq7WbvoBZdrrSAsKzGsN6meeS6D2DJJvUB4wa6g.pdf', '2021-08-18 17:00:00', '2021-08-17 21:27:08', '2021-08-17 21:27:08'),
(89, 375, 'Nice comment', '50', 'UPLOAD_PDF', 'public/pdfs/Q2HuOTQ84zPUwEEuLysRGaO2qGsTX1k9YnZjDbOC.pdf', '2021-08-17 18:00:00', '2021-08-17 22:38:03', '2021-08-17 22:38:03'),
(90, 378, 'math comment', '50', 'UPLOAD_PDF', 'public/pdfs/qlrJndE7qLIZ2A5JTkVB1OGZsGZaGTxCDPhnHtlU.pdf', '2021-08-18 22:00:00', '2021-08-17 23:35:31', '2021-08-18 00:35:24'),
(91, 380, 'math comment', '50', 'UPLOAD_PDF', 'public/pdfs/jQoSTMy9BBe1gWRqHpFwyAMBhl9bp0bgrqXeBQWs.pdf', '2021-08-18 21:00:00', '2021-08-18 00:37:59', '2021-08-18 00:37:59'),
(92, 359, 'asdf', '50', 'UPLOAD_PDF', 'public/pdfs/Dy9j6eQO2rzceFNCKhYWVVqu9JbGXeh9D66xeiHH.pdf', '2021-08-18 20:00:00', '2021-08-19 00:42:21', '2021-08-19 00:42:21'),
(93, 374, '12', '50', 'UPLOAD_PDF', 'public/pdfs/BOAKxYVF6rZvhjEshHyDEn6Jb8r9NNUPuuE3Epb3.pdf', '2021-08-19 20:00:00', '2021-08-20 02:37:38', '2021-08-20 02:37:38'),
(94, 382, 'adf', '50', 'UPLOAD_PDF', 'public/pdfs/xxpLQYqqydwmikJDincuuOcqo4toTnR2bqEWmwf5.pdf', '2021-08-20 19:00:00', '2021-08-20 04:21:10', '2021-08-20 04:42:35'),
(95, 389, 'Home work for Brad', '60', 'UPLOAD_PDF', 'public/pdfs/UJi4Ogm5dWF1azdAYppxsfPXL2kg9W1Yq5iFgeiL.pdf', '2021-08-22 12:31:00', '2021-08-21 19:16:59', '2021-08-21 19:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_home_work_answers`
--

CREATE TABLE `assigned_home_work_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assigned_home_work_id` bigint(20) UNSIGNED NOT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answered_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_submitted` tinyint(1) NOT NULL DEFAULT '1',
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_home_work_answers`
--

INSERT INTO `assigned_home_work_answers` (`id`, `assigned_home_work_id`, `content_type`, `answered_content`, `is_submitted`, `student_id`, `created_at`, `updated_at`) VALUES
(30, 35, 'UPLOAD_PDF', 'PDF', 1, 12, '2021-06-02 07:41:11', '2021-06-02 07:41:11'),
(31, 47, 'UPLOAD_PDF', 'PDF', 1, 7, '2021-06-05 22:22:56', '2021-06-05 22:22:56'),
(32, 49, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-06 00:53:57', '2021-06-06 00:53:57'),
(33, 50, 'UPLOAD_PDF', 'PDF', 1, 24, '2021-06-06 02:43:50', '2021-06-06 02:43:50'),
(34, 52, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 01:52:11', '2021-06-08 01:52:11'),
(35, 52, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 01:53:24', '2021-06-08 01:53:24'),
(36, 52, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 01:55:58', '2021-06-08 01:55:58'),
(37, 53, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 02:26:56', '2021-06-08 02:26:56'),
(38, 53, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 02:32:17', '2021-06-08 02:32:17'),
(39, 54, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 02:40:04', '2021-06-08 02:40:04'),
(40, 55, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-08 03:15:23', '2021-06-08 03:15:23'),
(41, 56, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-10 01:53:15', '2021-06-10 01:53:15'),
(42, 58, 'UPLOAD_PDF', 'PDF', 1, 28, '2021-06-11 17:41:41', '2021-06-11 17:41:41'),
(43, 59, 'CHOOSE_PDF', 'PDF', 1, 32, '2021-06-12 04:00:40', '2021-06-12 04:00:40'),
(44, 59, 'CHOOSE_PDF', 'PDF', 1, 32, '2021-06-12 04:06:17', '2021-06-12 04:06:17'),
(45, 60, 'UPLOAD_PDF', 'PDF', 1, 7, '2021-06-12 14:49:24', '2021-06-12 14:49:24'),
(46, 61, 'UPLOAD_PDF', 'PDF', 1, 32, '2021-06-12 17:32:51', '2021-06-12 17:32:51'),
(47, 61, 'UPLOAD_PDF', 'PDF', 1, 4, '2021-06-12 17:33:16', '2021-06-12 17:33:16'),
(48, 61, 'UPLOAD_PDF', 'PDF', 0, 31, '2021-06-12 20:18:26', '2021-06-12 20:18:26'),
(49, 62, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-12 22:44:40', '2021-06-12 22:44:40'),
(50, 63, 'UPLOAD_PDF', 'PDF', 1, 33, '2021-06-12 23:57:17', '2021-06-12 23:57:17'),
(51, 63, 'UPLOAD_PDF', 'PDF', 1, 32, '2021-06-12 23:59:25', '2021-06-12 23:59:25'),
(52, 63, 'UPLOAD_PDF', '<p>This is my answer for your entire question.</p>', 1, 31, '2021-06-13 00:00:29', '2021-06-13 00:00:29'),
(53, 64, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-17 01:26:49', '2021-06-17 01:26:49'),
(54, 64, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-17 01:26:53', '2021-06-17 01:26:53'),
(55, 64, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-06-17 01:28:46', '2021-06-17 01:28:46'),
(56, 66, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-07-20 12:36:57', '2021-07-20 12:36:57'),
(57, 66, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-07-20 12:37:06', '2021-07-20 12:37:06'),
(58, 66, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-07-20 12:37:08', '2021-07-20 12:37:08'),
(59, 67, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-20 13:01:52', '2021-07-20 13:01:52'),
(60, 68, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-07-20 13:38:20', '2021-07-20 13:38:20'),
(61, 67, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-07-20 13:58:15', '2021-07-20 13:58:15'),
(62, 69, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-07-20 14:17:41', '2021-07-20 14:17:41'),
(63, 70, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-24 16:16:20', '2021-07-24 16:16:20'),
(64, 72, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-07-27 18:52:58', '2021-07-27 18:52:58'),
(65, 72, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-27 18:55:00', '2021-07-27 18:55:00'),
(66, 73, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-07-27 19:10:18', '2021-07-27 19:10:18'),
(67, 73, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-27 19:12:09', '2021-07-27 19:12:09'),
(68, 74, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-27 19:14:22', '2021-07-27 19:14:22'),
(69, 73, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-07-27 19:16:32', '2021-07-27 19:16:32'),
(70, 74, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-07-27 19:16:55', '2021-07-27 19:16:55'),
(71, 73, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-07-27 19:22:23', '2021-07-27 19:22:23'),
(72, 73, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-07-27 19:25:14', '2021-07-27 19:25:14'),
(73, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:54:37', '2021-07-27 21:54:37'),
(74, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:55:02', '2021-07-27 21:55:02'),
(75, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:55:19', '2021-07-27 21:55:19'),
(76, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:55:46', '2021-07-27 21:55:46'),
(77, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:56:09', '2021-07-27 21:56:09'),
(78, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:56:31', '2021-07-27 21:56:31'),
(79, 71, 'CHOOSE_PDF', 'PDF', 1, 4, '2021-07-27 21:56:59', '2021-07-27 21:56:59'),
(80, 73, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-29 22:51:45', '2021-07-29 22:51:45'),
(81, 73, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-29 22:55:39', '2021-07-29 22:55:39'),
(82, 73, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-07-29 22:57:25', '2021-07-29 22:57:25'),
(83, 75, 'Add_Question', '<p>All done.</p>', 1, 4, '2021-08-05 23:31:59', '2021-08-05 23:31:59'),
(84, 77, 'CHOOSE_PDF', 'PDF', 1, 31, '2021-08-08 01:02:04', '2021-08-08 01:02:04'),
(85, 84, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-08-17 19:17:09', '2021-08-17 19:17:09'),
(86, 84, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-17 19:17:32', '2021-08-17 19:17:32'),
(90, 85, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-08-17 20:18:32', '2021-08-17 20:18:32'),
(91, 86, 'UPLOAD_PDF', 'PDF', 1, 4, '2021-08-17 20:19:23', '2021-08-17 20:19:23'),
(92, 85, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-08-17 20:50:10', '2021-08-17 20:50:10'),
(93, 87, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-17 21:02:01', '2021-08-17 21:02:01'),
(94, 88, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-17 21:27:35', '2021-08-17 21:27:35'),
(95, 88, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-08-17 21:27:58', '2021-08-17 21:27:58'),
(96, 89, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-17 22:38:55', '2021-08-17 22:38:55'),
(97, 90, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-08-17 23:36:24', '2021-08-17 23:36:24'),
(98, 90, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-17 23:37:00', '2021-08-17 23:37:00'),
(99, 91, 'UPLOAD_PDF', 'PDF', 1, 31, '2021-08-18 00:38:17', '2021-08-18 00:38:17'),
(100, 91, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-18 00:38:37', '2021-08-18 00:38:37'),
(101, 92, 'UPLOAD_PDF', 'PDF', 1, 4, '2021-08-19 08:13:12', '2021-08-19 08:13:12'),
(102, 93, 'UPLOAD_PDF', 'PDF', 1, 4, '2021-08-20 02:39:19', '2021-08-20 02:39:19'),
(103, 94, 'UPLOAD_PDF', 'PDF', 1, 4, '2021-08-20 04:26:10', '2021-08-20 04:26:10'),
(104, 94, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-20 04:43:06', '2021-08-20 04:43:06'),
(105, 95, 'UPLOAD_PDF', 'PDF', 1, 4, '2021-08-21 19:19:58', '2021-08-21 19:19:58'),
(106, 95, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-08-21 19:20:23', '2021-08-21 19:20:23'),
(107, 95, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-08-21 19:20:27', '2021-08-21 19:20:27'),
(108, 95, 'UPLOAD_PDF', 'PDF', 1, 9, '2021-08-21 19:20:41', '2021-08-21 19:20:41'),
(109, 95, 'UPLOAD_PDF', 'PDF', 1, 40, '2021-08-21 19:34:29', '2021-08-21 19:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_home_work_answer_maps`
--

CREATE TABLE `assigned_home_work_answer_maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assigned_home_work_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_home_work_student_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_home_work_answer_maps`
--

INSERT INTO `assigned_home_work_answer_maps` (`id`, `assigned_home_work_id`, `assigned_home_work_student_id`, `image_path`, `checked_content`, `created_at`, `updated_at`) VALUES
(14, 35, NULL, 'FB_20170101_12_45_23_Saved_Picture.jpg', NULL, '2021-06-02 07:41:11', '2021-06-02 07:41:11'),
(15, 35, NULL, 'FB_20170102_05_13_42_Saved_Picture.jpg', NULL, '2021-06-02 07:41:11', '2021-06-02 07:41:11'),
(16, 25, NULL, 'download.jpeg', NULL, '2021-06-05 22:22:56', '2021-06-05 22:22:56'),
(17, 49, NULL, 'Tenses.pdf', NULL, '2021-06-06 00:53:57', '2021-06-06 00:53:57'),
(18, 50, NULL, '1.pdf', NULL, '2021-06-06 02:43:50', '2021-06-06 02:43:50'),
(19, 52, 57, 'benzene.pdf', NULL, '2021-06-08 01:55:58', '2021-06-08 01:55:58'),
(21, 53, 58, 'algebra-math-ereadersforum.png', NULL, '2021-06-08 02:32:17', '2021-06-08 02:32:17'),
(22, 54, 59, 'algebra-math-ereadersforum.png', NULL, '2021-06-08 02:40:04', '2021-06-08 02:40:04'),
(23, 55, 60, 'algebra-math-ereadersforum.png', NULL, '2021-06-08 03:15:23', '2021-06-08 03:15:23'),
(24, 56, 1, 'chemistry_logo.jpeg', NULL, '2021-06-10 01:53:15', '2021-06-10 01:53:15'),
(25, 58, 5, 'Convergys (@convergys) _ Twitter.jpg', NULL, '2021-06-11 17:41:41', '2021-06-11 17:41:41'),
(26, 58, 5, 'FB_20170101_12_45_23_Saved_Picture.jpg', NULL, '2021-06-11 17:41:41', '2021-06-11 17:41:41'),
(27, 58, 5, 'FB_20170102_05_13_42_Saved_Picture.jpg', NULL, '2021-06-11 17:41:41', '2021-06-11 17:41:41'),
(28, 59, 1, 'check.jpeg', NULL, '2021-06-12 04:00:40', '2021-06-12 04:00:40'),
(29, 59, 1, '5617_584782811550116_627228276_n.jpg', NULL, '2021-06-12 04:06:17', '2021-06-12 04:06:17'),
(30, 59, 1, '417700_584785801549817_444351402_n.jpg', NULL, '2021-06-12 04:06:17', '2021-06-12 04:06:17'),
(31, 60, 1, 'WACart.png', NULL, '2021-06-12 14:49:24', '2021-06-12 14:49:24'),
(32, 60, 1, 'download.jpeg', NULL, '2021-06-12 14:49:24', '2021-06-12 14:49:24'),
(33, 60, 1, 'Wallington Academy logo1 (1).png', NULL, '2021-06-12 14:49:24', '2021-06-12 14:49:24'),
(34, 61, 1, 'dayBreak-cover.jpg', NULL, '2021-06-12 17:32:51', '2021-06-12 17:32:51'),
(35, 61, 1, '1.pdf', NULL, '2021-06-12 17:33:16', '2021-06-12 17:33:16'),
(36, 61, 11, 'WACart18x18.png', NULL, '2021-06-12 20:18:26', '2021-06-12 20:18:26'),
(37, 61, 11, 'WACart18x18.png', NULL, '2021-06-12 20:18:26', '2021-06-12 20:18:26'),
(38, 62, 12, 'download.jpeg', NULL, '2021-06-12 22:44:40', '2021-06-12 22:44:40'),
(39, 62, 12, 'Wallington Academy logo1 (1).png', NULL, '2021-06-12 22:44:40', '2021-06-12 22:44:40'),
(40, 63, 15, 'Convergys (@convergys) _ Twitter.jpg', NULL, '2021-06-12 23:57:17', '2021-06-12 23:57:17'),
(41, 63, 15, 'FB_20170101_12_45_23_Saved_Picture.jpg', NULL, '2021-06-12 23:57:17', '2021-06-12 23:57:17'),
(42, 63, 15, 'FB_20170102_05_13_42_Saved_Picture.jpg', NULL, '2021-06-12 23:57:17', '2021-06-12 23:57:17'),
(43, 63, 14, 'img641 copy(1).jpg', NULL, '2021-06-12 23:59:25', '2021-06-12 23:59:25'),
(44, 63, 14, 'img641 copy(2).jpg', NULL, '2021-06-12 23:59:25', '2021-06-12 23:59:25'),
(45, 63, 14, 'img641 copy.jpg', NULL, '2021-06-12 23:59:25', '2021-06-12 23:59:25'),
(46, 64, 16, 'quadratic_equation.pdf', NULL, '2021-06-17 01:26:49', '2021-06-17 01:26:49'),
(47, 64, 16, 'Tenses.pdf', NULL, '2021-06-17 01:26:49', '2021-06-17 01:26:49'),
(48, 64, 16, 'quadratic_equation.pdf', NULL, '2021-06-17 01:26:53', '2021-06-17 01:26:53'),
(49, 64, 16, 'Tenses.pdf', NULL, '2021-06-17 01:26:53', '2021-06-17 01:26:53'),
(50, 64, 16, 'Tenses.pdf', NULL, '2021-06-17 01:28:46', '2021-06-17 01:28:46'),
(51, 66, 18, 'wacartdesktop.png', NULL, '2021-07-20 12:36:57', '2021-07-20 12:36:57'),
(52, 66, 18, 'wacartdesktop.png', NULL, '2021-07-20 12:37:06', '2021-07-20 12:37:06'),
(53, 66, 18, 'wacartdesktop.png', NULL, '2021-07-20 12:37:08', '2021-07-20 12:37:08'),
(54, 67, 19, 'tea-kubu-igc – 23 Jun 2021.pdf', NULL, '2021-07-20 13:01:52', '2021-07-20 13:01:52'),
(55, 68, 20, 'tea-kubu-igc – 23 Jun 2021 (1).pdf', NULL, '2021-07-20 13:38:20', '2021-07-20 13:38:20'),
(56, 67, 24, 'tea-kubu-igc – 23 Jun 2021.pdf', NULL, '2021-07-20 13:58:15', '2021-07-20 13:58:15'),
(57, 69, 26, 'FEEDWELLPEOPLE ADMIN.pdf', NULL, '2021-07-20 14:17:41', '2021-07-20 14:17:41'),
(58, 70, 27, 'certificate.pdf', NULL, '2021-07-24 16:16:20', '2021-07-24 16:16:20'),
(59, 72, 32, 'certificate.pdf', NULL, '2021-07-27 18:52:58', '2021-07-27 18:52:58'),
(60, 72, 31, 'srs.pdf', NULL, '2021-07-27 18:55:00', '2021-07-27 18:55:00'),
(61, 73, 34, 'srs.pdf', NULL, '2021-07-27 19:10:18', '2021-07-27 19:10:18'),
(62, 73, 33, 'srs.pdf', NULL, '2021-07-27 19:12:09', '2021-07-27 19:12:09'),
(63, 74, 36, 'srs.pdf', NULL, '2021-07-27 19:14:22', '2021-07-27 19:14:22'),
(64, 73, 34, 'srs.pdf', NULL, '2021-07-27 19:16:32', '2021-07-27 19:16:32'),
(65, 74, 35, 'srs.pdf', NULL, '2021-07-27 19:16:55', '2021-07-27 19:16:55'),
(66, 73, 34, 'srs.pdf', NULL, '2021-07-27 19:22:23', '2021-07-27 19:22:23'),
(67, 73, 34, 'srs.pdf', NULL, '2021-07-27 19:25:14', '2021-07-27 19:25:14'),
(68, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:54:37', '2021-07-27 21:54:37'),
(69, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:55:02', '2021-07-27 21:55:02'),
(70, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:55:19', '2021-07-27 21:55:19'),
(71, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:55:46', '2021-07-27 21:55:46'),
(72, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:56:09', '2021-07-27 21:56:09'),
(73, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:56:31', '2021-07-27 21:56:31'),
(74, 71, 28, 'user-manual.pdf', NULL, '2021-07-27 21:56:59', '2021-07-27 21:56:59'),
(75, 73, 33, 'certificate.pdf', NULL, '2021-07-29 22:51:45', '2021-07-29 22:51:45'),
(76, 73, 33, 'certificate.pdf', NULL, '2021-07-29 22:55:39', '2021-07-29 22:55:39'),
(77, 73, 33, 'certificate.pdf', NULL, '2021-07-29 22:57:25', '2021-07-29 22:57:25'),
(78, 77, 51, 'AOR Letter_Anand Shukla(426540).pdf', NULL, '2021-08-08 01:02:04', '2021-08-08 01:02:04'),
(79, 84, 56, 'sample.pdf', NULL, '2021-08-17 19:17:09', '2021-08-17 19:17:09'),
(80, 84, 57, 'sample.pdf', NULL, '2021-08-17 19:17:32', '2021-08-17 19:17:32'),
(84, 85, 58, 'sample.pdf', NULL, '2021-08-17 20:18:32', '2021-08-17 20:18:32'),
(85, 86, 59, 'WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur (1).pdf', 'checked_homeworks/85/Offer Letter - Anand Shukla (2).pdf', '2021-08-17 20:19:23', '2021-08-20 00:49:14'),
(86, 85, 58, 'Offer Letter - Anand Shukla.pdf', NULL, '2021-08-17 20:50:10', '2021-08-17 20:50:10'),
(87, 87, 63, 'sample.pdf', NULL, '2021-08-17 21:02:01', '2021-08-17 21:02:01'),
(88, 88, 65, 'sample.pdf', NULL, '2021-08-17 21:27:35', '2021-08-17 21:27:35'),
(89, 88, 64, 'Offer Letter - Anand Shukla.pdf', NULL, '2021-08-17 21:27:58', '2021-08-17 21:27:58'),
(90, 89, 66, 'sample.pdf', NULL, '2021-08-17 22:38:55', '2021-08-17 22:38:55'),
(91, 90, 67, 'sample.pdf', NULL, '2021-08-17 23:36:24', '2021-08-17 23:36:24'),
(92, 90, 68, 'sample.pdf', NULL, '2021-08-17 23:37:00', '2021-08-17 23:37:00'),
(93, 91, 71, 'sample.pdf', NULL, '2021-08-18 00:38:17', '2021-08-18 00:38:17'),
(94, 91, 72, 'sample.pdf', NULL, '2021-08-18 00:38:37', '2021-08-18 00:38:37'),
(95, 92, 73, 'sample (1).pdf', NULL, '2021-08-19 08:13:12', '2021-08-19 08:13:12'),
(96, 93, 77, 'Offer Letter - Anand Shukla.pdf', 'checked_homeworks/96/sample.pdf', '2021-08-20 02:39:19', '2021-08-20 02:56:20'),
(97, 94, 78, 'Offer Letter - Anand Shukla.pdf', 'checked_homeworks/97/sample (1).pdf', '2021-08-20 04:26:10', '2021-08-20 04:27:19'),
(98, 94, 79, 'sample.pdf', 'checked_homeworks/98/sample (2).pdf', '2021-08-20 04:43:06', '2021-08-20 04:44:05'),
(99, 95, 80, 'WVJptXl4ZLZy7hc3LIAC3yqorL6nbPbxAaIpA4Ur (1).pdf', 'checked_homeworks/99/sample (3).pdf', '2021-08-21 19:19:58', '2021-08-21 19:28:54'),
(100, 95, 81, 'sample.pdf', NULL, '2021-08-21 19:20:23', '2021-08-21 19:20:23'),
(101, 95, 81, 'sample.pdf', NULL, '2021-08-21 19:20:27', '2021-08-21 19:20:27'),
(102, 95, 81, 'sample.pdf', NULL, '2021-08-21 19:20:41', '2021-08-21 19:20:41'),
(103, 95, 82, 'answer.pdf', 'checked_homeworks/103/sample (4).pdf', '2021-08-21 19:34:29', '2021-08-21 19:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_home_work_students`
--

CREATE TABLE `assigned_home_work_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assigned_homework_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_home_work_students`
--

INSERT INTO `assigned_home_work_students` (`id`, `assigned_homework_id`, `student_id`, `created_at`, `updated_at`) VALUES
(29, 23, 7, '2021-05-28 04:45:01', '2021-05-28 04:45:01'),
(30, 24, 7, '2021-05-28 15:47:47', '2021-05-28 15:47:47'),
(31, 25, 6, '2021-05-28 17:38:08', '2021-05-28 17:38:08'),
(32, 25, 7, '2021-05-28 17:38:08', '2021-05-28 17:38:08'),
(33, 26, 6, '2021-05-29 00:15:33', '2021-05-29 00:15:33'),
(34, 26, 7, '2021-05-29 00:15:33', '2021-05-29 00:15:33'),
(35, 26, 8, '2021-05-29 00:15:33', '2021-05-29 00:15:33'),
(36, 27, 9, '2021-05-29 00:20:19', '2021-05-29 00:20:19'),
(37, 27, 10, '2021-05-29 00:20:19', '2021-05-29 00:20:19'),
(38, 28, 12, '2021-05-29 01:44:47', '2021-05-29 01:44:47'),
(39, 29, 14, '2021-05-29 05:06:22', '2021-05-29 05:06:22'),
(40, 29, 15, '2021-05-29 05:06:22', '2021-05-29 05:06:22'),
(41, 30, 2, '2021-05-29 17:16:18', '2021-05-29 17:16:18'),
(42, 30, 14, '2021-05-29 17:16:18', '2021-05-29 17:16:18'),
(43, 31, 7, '2021-05-30 02:17:18', '2021-05-30 02:17:18'),
(44, 32, 2, '2021-05-30 02:19:55', '2021-05-30 02:19:55'),
(45, 33, 7, '2021-05-30 02:35:36', '2021-05-30 02:35:36'),
(46, 34, 9, '2021-05-30 20:35:21', '2021-05-30 20:35:21'),
(47, 34, 10, '2021-05-30 20:35:21', '2021-05-30 20:35:21'),
(48, 35, 12, '2021-06-02 07:05:03', '2021-06-02 07:05:03'),
(49, 37, 9, '2021-06-02 07:05:03', '2021-06-02 07:05:03'),
(50, 47, 7, '2021-06-05 17:54:41', '2021-06-05 17:54:41'),
(51, 48, 7, '2021-06-05 21:56:14', '2021-06-05 21:56:14'),
(52, 48, 9, '2021-06-05 21:56:14', '2021-06-05 21:56:14'),
(53, 49, 9, '2021-06-06 00:52:14', '2021-06-06 00:52:14'),
(54, 50, 24, '2021-06-06 02:39:01', '2021-06-06 02:39:01'),
(55, 50, 25, '2021-06-06 02:39:01', '2021-06-06 02:39:01'),
(56, 51, 2, '2021-06-08 00:17:23', '2021-06-08 00:17:23'),
(57, 52, 9, '2021-06-08 01:51:18', '2021-06-08 01:51:18'),
(58, 53, 9, '2021-06-08 02:19:15', '2021-06-08 02:19:15'),
(59, 54, 9, '2021-06-08 02:37:17', '2021-06-08 02:37:17'),
(60, 55, 9, '2021-06-08 03:14:31', '2021-06-08 03:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_price_per_session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_available_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_seats` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_start_date` datetime NOT NULL,
  `batch_end_date` datetime DEFAULT NULL,
  `class_master_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_each_session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `class_settings_id` int(11) DEFAULT NULL,
  `duration_per_session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `name`, `batch_price_per_session`, `teacher_available_status`, `no_of_seats`, `batch_start_date`, `batch_end_date`, `class_master_id`, `subject_id`, `status`, `location`, `sell_each_session`, `created_at`, `updated_at`, `created_by`, `class_settings_id`, `duration_per_session`) VALUES
(1, '2', '9', NULL, '8', '2021-05-25 22:19:00', '2021-05-28 18:00:00', 1, 2, '1', NULL, '1', '2021-05-25 05:23:04', '2021-05-25 05:23:04', 2, 1, 30),
(5, '2', '8', NULL, '8', '2021-05-24 22:33:00', '2021-05-29 22:33:00', 1, 1, '1', NULL, NULL, '2021-05-25 05:34:57', '2021-05-25 05:34:57', 2, 6, 30),
(6, '2', '7', NULL, '8', '2021-05-26 08:03:00', '2021-05-28 08:03:00', 1, 2, '1', NULL, '1', '2021-05-26 15:04:08', '2021-05-26 15:04:08', 2, 7, 30),
(7, '2', '7', NULL, '8', '2021-05-26 08:03:00', '2021-05-28 08:03:00', 1, 2, '1', NULL, '1', '2021-05-26 15:04:09', '2021-05-26 15:04:09', 2, 7, 30),
(8, '2', '7', NULL, '8', '2025-05-26 08:40:00', '2021-07-14 16:22:00', 1, 2, '1', NULL, '1', '2021-05-26 15:40:57', '2021-05-26 15:40:57', 2, 8, 30),
(9, '2', '7', NULL, '9', '2021-05-26 09:49:00', '2021-05-26 09:49:00', 1, 1, '1', NULL, '1', '2021-05-26 16:49:31', '2021-05-26 16:49:31', 2, 9, 30),
(10, '2', '7', NULL, '9', '2021-05-26 10:21:00', '2021-05-30 10:22:00', 1, 1, '1', NULL, '1', '2021-05-26 17:22:19', '2021-05-26 17:22:19', 2, 10, 60),
(11, '2', '10', NULL, '10', '2021-05-29 11:00:00', '2021-05-30 12:00:00', 1, 4, '1', NULL, '1', '2021-05-28 17:17:51', '2021-05-28 17:17:51', 2, 11, 30),
(12, '2', '10', NULL, '10', '2021-05-31 10:18:00', '2021-06-02 10:18:00', 1, 2, '1', NULL, NULL, '2021-05-28 17:19:02', '2021-05-28 17:19:02', 2, 12, 30),
(13, '11', '5', NULL, '5', '2021-05-28 16:00:00', '2021-05-30 14:00:00', 1, 1, '1', NULL, '1', '2021-05-28 22:02:07', '2021-05-28 22:02:07', 11, 13, 60),
(14, '13', '5', NULL, '5', '2021-05-28 22:00:00', '2021-05-30 20:00:00', 1, 1, '1', NULL, '1', '2021-05-29 04:33:30', '2021-05-29 04:33:30', 13, 14, 30),
(15, '2', '8', NULL, '7', '2021-05-29 10:06:00', '2021-05-31 10:07:00', 1, 1, '1', NULL, '1', '2021-05-29 17:07:17', '2021-05-29 17:07:17', 2, 15, 30),
(16, '2', '9', NULL, '8', '2021-05-30 19:05:00', '2021-05-31 19:05:00', 1, 2, '1', NULL, '1', '2021-05-30 02:05:32', '2021-05-30 02:05:32', 2, 16, 30),
(17, '2', '8', NULL, '8', '2021-05-29 19:06:00', '2021-05-31 19:06:00', 1, 1, '1', NULL, '1', '2021-05-30 02:06:19', '2021-05-30 02:06:19', 2, 17, 30),
(18, '2', '111', NULL, '2', '2021-05-30 19:33:00', '2021-05-30 19:33:00', 1, 1, '1', NULL, '1', '2021-05-30 02:34:03', '2021-05-30 02:34:03', 2, 3, 30),
(19, '2', '7', NULL, '7', '2021-06-01 19:05:00', '2021-06-01 19:05:00', 1, 1, '1', NULL, NULL, '2021-06-02 02:05:47', '2021-06-02 02:05:47', 2, 18, 30),
(20, '13', '5', NULL, '5', '2021-06-01 23:00:00', '2021-06-02 20:00:00', 1, 3, '1', NULL, '1', '2021-06-02 05:56:42', '2021-06-02 05:56:42', 13, 13, 30),
(21, '2', '3', NULL, '2', '2021-06-03 17:59:00', '2021-06-24 17:59:00', 1, 1, '1', NULL, '1', '2021-06-04 00:59:34', '2021-06-04 00:59:34', 2, 19, 30),
(22, '2', '4', NULL, '2', '2021-06-04 09:34:00', '2021-06-05 12:00:00', 1, 1, '1', NULL, '1', '2021-06-04 16:35:37', '2021-06-04 16:35:37', 2, 20, 30),
(23, '2', '4', NULL, '3', '2021-06-05 10:30:00', '2021-06-05 10:30:00', 1, 1, '1', NULL, '1', '2021-06-05 17:31:19', '2021-06-05 17:31:19', 2, 21, 30),
(24, '23', '10', 'YES', '8', '2021-06-05 14:00:00', '2021-06-08 14:00:00', 1, 1, '1', NULL, '1', '2021-06-05 20:45:20', '2021-06-05 20:45:20', 1, 22, 30),
(25, '2', '3', NULL, '3', '2021-06-05 17:48:00', '2021-06-05 19:00:00', 1, 1, '1', NULL, '1', '2021-06-06 00:49:04', '2021-06-06 00:49:04', 2, 23, 30),
(26, '2', '10', NULL, '4', '2021-06-05 19:00:00', '2021-06-07 19:00:00', 1, 1, '1', NULL, '1', '2021-06-06 02:14:47', '2021-06-06 02:14:47', 2, 24, 30),
(27, '2', '2', NULL, '2', '2021-06-07 16:00:00', '2021-06-17 16:29:00', 1, 1, '1', NULL, '1', '2021-06-07 23:29:40', '2021-06-07 23:29:40', 2, 24, 30),
(28, '2', '3', NULL, '3', '2021-06-07 19:00:00', '2021-06-10 19:00:00', 1, 1, '1', NULL, '1', '2021-06-08 01:49:18', '2021-06-08 01:49:18', 2, 25, 30),
(29, '2', '4', NULL, '7', '2021-06-07 20:00:00', '2021-06-07 20:00:00', 1, 1, '1', NULL, '1', '2021-06-08 02:17:44', '2021-06-08 02:17:44', 2, 26, 30),
(30, '2', '9', NULL, '1', '2021-06-19 19:34:00', '2021-06-19 19:34:00', 1, 2, '1', NULL, '1', '2021-06-08 02:35:24', '2021-06-08 02:35:24', 2, 27, 30),
(31, '2', '6', NULL, '4', '2021-06-07 20:12:00', '2021-06-07 20:12:00', 1, 1, '1', NULL, '1', '2021-06-08 03:12:52', '2021-06-08 03:12:52', 2, 28, 30),
(32, '2', '9', NULL, '8', '2021-06-09 19:00:00', '2021-06-11 19:00:00', 1, 1, '1', NULL, '1', '2021-06-10 01:41:14', '2021-06-10 01:41:14', 2, 29, 30),
(33, '27', '9', NULL, '6', '2021-06-11 12:00:00', '2021-06-26 12:00:00', 1, 1, '1', NULL, '1', '2021-06-11 17:13:55', '2021-06-11 17:13:55', 27, 30, 30),
(34, '27', '18', NULL, '8', '2021-06-14 19:45:00', '2021-06-17 19:46:00', 1, 2, '1', NULL, '1', '2021-06-12 02:46:56', '2021-06-12 02:46:56', 27, 31, 60),
(35, '13', '5', NULL, '5', '2021-06-11 21:00:00', '2021-06-12 19:00:00', 1, 1, '1', NULL, '1', '2021-06-12 03:03:02', '2021-06-12 03:03:02', 13, 3, 30),
(36, '2', '9', NULL, '9', '2021-06-12 07:00:00', '2021-06-18 07:00:00', 1, 1, '1', NULL, '1', '2021-06-12 14:26:58', '2021-06-12 14:26:58', 2, 32, 30),
(37, '2', '10', NULL, '4', '2021-06-12 10:00:00', '2021-06-15 10:00:00', 1, 1, '1', NULL, '1', '2021-06-12 17:16:01', '2021-06-12 17:16:01', 2, 33, 30),
(38, '2', '4', NULL, '6', '2021-06-12 02:00:00', '2021-06-13 02:00:00', 1, 1, '1', NULL, '1', '2021-06-12 22:40:09', '2021-06-12 22:40:09', 2, 34, 60),
(39, '34', '10', NULL, '9', '2021-06-12 05:00:00', '2021-06-14 05:00:00', 1, 1, '1', NULL, '1', '2021-06-12 23:41:12', '2021-06-12 23:41:12', 34, 35, 30),
(40, '2', '10', NULL, '10', '2021-06-16 18:15:00', '2021-06-16 18:15:00', 1, 1, '1', NULL, '1', '2021-06-17 01:15:35', '2021-06-18 00:52:55', 2, 36, 30),
(41, '2', '60', NULL, '40', '2021-07-21 10:00:00', '2021-07-24 14:05:00', 1, 1, '0', NULL, NULL, '2021-06-22 01:35:39', '2021-06-22 01:35:39', 2, 37, 60),
(42, '2', '60', NULL, '40', '2021-07-21 14:10:00', '2021-07-25 14:11:00', 2, 2, '0', 'Wallington', '1', '2021-06-22 01:41:33', '2021-06-22 01:41:33', 2, 38, 90),
(43, '2', '3', NULL, '3', '2021-06-23 02:00:00', '2021-06-23 05:00:00', 1, 1, '1', NULL, '1', '2021-06-22 08:28:26', '2021-06-22 08:28:26', 2, 11, 30),
(44, '11', '3', NULL, '3', '2021-06-29 20:00:00', '2021-06-30 20:00:00', 1, 1, '0', 'Dunai', '1', '2021-06-30 02:28:09', '2021-06-30 02:28:09', 11, 8, 30),
(45, '2', '5', NULL, '5', '2021-06-30 14:00:00', '2021-06-30 14:00:00', 1, 1, '0', 'Mumbai', '1', '2021-06-30 07:37:53', '2021-06-30 07:37:53', 2, 16, 30),
(46, '2', '2', NULL, '2', '2021-07-01 09:00:00', '2021-07-01 09:00:00', 1, 1, '1', NULL, '1', '2021-06-30 07:56:03', '2021-06-30 07:56:03', 2, 16, 30),
(47, '1', '9', 'YES', '2', '2021-06-30 10:00:00', '2021-07-14 16:22:14', 1, 1, '0', 'delhi', '1', '2021-06-30 16:08:12', '2021-06-30 16:08:12', 1, 39, 30),
(48, '2', '10', NULL, '9', '2021-06-30 10:00:00', '2021-06-30 12:00:00', 1, 1, '0', 'delhi', '1', '2021-06-30 16:13:06', '2021-06-30 16:13:06', 2, 40, 30),
(49, '2', '90', NULL, '9', '2021-07-01 10:00:00', '2021-07-01 10:00:00', 1, 1, '0', 'patna', '1', '2021-07-01 16:31:15', '2021-07-10 22:37:49', 3, 41, 30),
(53, '2', '10', NULL, '2', '2021-07-01 23:00:00', '2021-07-01 23:00:00', 1, 1, '0', NULL, '1', '2021-07-02 01:27:34', '2021-07-02 01:27:34', 2, 45, 30),
(54, '2', '5', NULL, '5', '2021-07-02 12:00:00', '2021-07-04 14:00:00', 1, 1, '1', NULL, '1', '2021-07-02 18:10:28', '2021-07-02 18:10:28', 2, 4, 30),
(55, '11', '5', NULL, '5', '2021-07-02 21:00:00', '2021-07-04 19:00:00', 1, 2, '0', 'Bhaynader', '1', '2021-07-03 03:12:19', '2021-07-03 03:12:19', 11, 46, 30),
(56, '2', '9', NULL, '7', '2021-07-07 20:00:00', '2021-07-07 20:00:00', 1, 1, '1', NULL, '1', '2021-07-07 23:35:10', '2021-07-07 23:35:10', 2, 6, 60),
(57, '2', '90', NULL, '9', '2021-07-14 16:35:00', '2021-07-16 19:00:00', 1, 1, '1', NULL, '1', '2021-07-07 23:35:54', '2021-07-07 23:35:54', 2, 4, 60),
(58, '1', '10', 'YES', '1', '2021-07-10 17:00:00', '2021-07-11 18:00:00', 1, 1, '0', 'Patna', '1', '2021-07-10 21:49:06', '2021-07-10 21:49:06', 1, 47, 30),
(59, '1', '10', 'YES', '3', '2021-07-10 18:00:00', '2021-07-11 20:00:00', 1, 1, '0', 'Delhi', '1', '2021-07-10 22:14:53', '2021-07-10 22:14:53', 3, 48, 30),
(61, '1', '10', NULL, '21', '2021-07-11 20:00:00', '2021-07-11 20:00:00', 1, 1, '0', 'Delhi To Goa', '1', '2021-07-11 01:24:02', '2021-07-11 01:27:48', 2, 48, 30),
(62, '2', '8', NULL, '8', '2021-07-13 22:00:00', '2021-07-13 22:00:00', 1, 1, '1', NULL, '1', '2021-07-13 02:01:06', '2021-07-13 02:01:06', 2, 18, 60),
(63, '2', '10', NULL, '8', '2021-07-14 17:00:00', '2021-07-17 17:00:00', 1, 1, '0', NULL, '1', '2021-07-15 00:11:23', '2021-07-15 00:11:23', 2, 49, 60),
(64, '2', '3', NULL, '4', '2021-07-15 19:00:00', '2021-07-16 19:00:00', 1, 1, '0', NULL, '1', '2021-07-15 03:55:12', '2021-07-15 03:55:12', 2, 1, 30),
(65, '2', '20', NULL, '3', '2021-07-19 18:00:00', '2021-07-20 19:00:00', 1, 1, '1', NULL, '1', '2021-07-18 16:37:16', '2021-07-18 16:37:16', 2, 50, 60),
(66, '3', '20', 'YES', '4', '2021-07-20 12:00:00', '2021-07-21 12:00:00', 1, 2, '0', 'Delhi', '1', '2021-07-20 11:43:08', '2021-07-20 11:43:08', 1, 51, 30),
(67, '4', '10', 'YES', '2', '2021-07-21 12:00:00', '2021-07-22 12:00:00', 1, 1, '1', NULL, '1', '2021-07-20 11:44:38', '2021-07-20 11:44:38', 1, 52, 30),
(68, '7', '15', 'YES', '4', '2021-07-23 12:00:00', '2021-07-24 12:00:00', 1, 3, '0', 'Panjab', '1', '2021-07-20 11:46:37', '2021-07-20 11:46:37', 1, 53, 30),
(69, '2', '3', 'YES', '5', '2021-07-20 11:00:00', '2021-07-22 12:00:00', 1, 1, '0', 'Mumbai', '1', '2021-07-20 12:52:39', '2021-07-20 12:52:39', 1, 54, 30),
(70, '11', '2', NULL, '3', '2021-07-20 12:00:00', '2021-07-21 13:00:00', 1, 1, '0', NULL, '1', '2021-07-20 13:11:50', '2021-07-20 13:11:50', 11, 55, 30),
(71, '2', '8', 'YES', '8', '2021-07-21 15:00:00', '2021-07-21 15:00:00', 1, 2, '1', NULL, NULL, '2021-07-21 14:50:40', '2021-07-21 14:50:40', 1, 3, 30),
(72, '4', '8', 'YES', '8', '2021-07-21 15:00:00', '2021-07-20 12:32:00', 1, 2, '1', NULL, '1', '2021-07-21 15:03:02', '2021-07-21 15:03:02', 1, 7, 30),
(73, '4', '8', 'YES', '8', '2021-07-21 15:00:00', '2021-07-20 12:32:00', 1, 2, '1', NULL, '1', '2021-07-21 15:03:05', '2021-07-21 15:03:05', 1, 7, 30),
(74, '4', '8', 'YES', '8', '2021-07-21 15:00:00', '2021-07-20 12:32:00', 1, 2, '1', NULL, '1', '2021-07-21 15:03:06', '2021-07-21 15:03:06', 1, 7, 30),
(75, '1', '7', 'YES', '7', '2021-07-21 15:00:00', '2021-07-21 14:00:00', 1, 1, '0', NULL, '1', '2021-07-21 15:10:57', '2021-07-21 15:10:57', 1, 2, 90),
(76, '24', '6', 'YES', '7', '2021-07-21 13:00:00', '2021-07-22 16:00:00', 1, 1, '1', NULL, '1', '2021-07-21 15:18:24', '2021-07-21 15:18:24', 1, 56, 60),
(77, '1', '10', 'YES', '2', '2021-07-21 18:00:00', '2021-07-21 18:00:00', 2, 1, '1', NULL, '1', '2021-07-21 19:19:54', '2021-07-21 19:19:54', 1, 57, 30),
(78, '2', '3', 'YES', '3', '2021-07-22 17:00:00', '2021-07-22 17:00:00', 1, 2, '1', NULL, '1', '2021-07-22 15:26:18', '2021-07-22 15:26:18', 1, 58, 30),
(79, '11', '5', NULL, '5', '2021-07-24 15:00:00', '2021-07-25 15:00:00', 1, 1, '0', NULL, '1', '2021-07-24 16:12:33', '2021-07-24 16:12:33', 11, 59, 30),
(80, '1', '2', 'YES', '3', '2021-07-26 21:00:00', '2021-07-29 17:35:00', 1, 2, '0', 'delhi', '1', '2021-07-26 21:09:05', '2021-07-26 21:09:05', 1, 60, 30),
(83, '1', '5', 'YES', '5', '2021-07-26 21:00:00', '2021-07-28 22:00:00', 1, 1, '0', NULL, '1', '2021-07-26 23:00:03', '2021-07-26 23:00:03', 1, 44, 60),
(84, '47', '2', 'YES', '2', '2021-07-26 22:00:00', '2021-07-26 22:00:00', 1, 1, '0', NULL, '1', '2021-07-26 23:37:58', '2021-07-26 23:37:58', 1, 61, 30),
(85, '11', '5', NULL, '3', '2021-07-27 17:00:00', '2021-07-28 15:00:00', 1, 1, '0', 'Wallington', '1', '2021-07-27 00:20:06', '2021-07-27 00:20:06', 11, 62, 30),
(87, '48', '10', 'YES', '3', '2022-04-27 21:00:00', NULL, 1, 1, '0', 'Delhi', '1', '2021-07-27 18:38:27', '2021-07-27 18:38:27', 1, 63, 30),
(89, '48', '2', 'YES', '6', '2021-07-27 21:00:00', '2021-07-27 21:00:00', 2, 2, '0', NULL, '1', '2021-07-27 18:45:43', '2021-07-27 18:45:43', 1, 64, 30),
(90, '48', '10', 'YES', '1', '2021-07-27 23:00:00', '2021-07-27 23:00:00', 1, 2, '0', NULL, '1', '2021-07-27 19:00:16', '2021-07-27 19:00:16', 1, 64, 30),
(91, '2', '10', 'YES', '2', '2021-07-27 21:00:00', '2021-07-27 21:00:00', 1, 1, '0', NULL, '1', '2021-07-27 19:04:08', '2021-07-27 19:04:08', 1, 64, 60),
(92, '47', '10', 'YES', '10', '2021-07-27 23:00:00', '2021-07-27 23:00:00', 1, 3, '0', NULL, '1', '2021-07-27 19:05:53', '2021-07-27 19:05:53', 1, 65, 30),
(101, '2', '25', 'YES', '20', '2021-08-02 16:00:00', '2021-08-23 18:30:00', 2, 2, '0', NULL, '1', '2021-07-30 01:31:07', '2021-07-30 01:31:07', 2, 66, 90),
(112, '49', '15', 'YES', '15', '2021-07-30 11:09:00', '2021-08-01 11:10:00', 1, 1, '0', 'Lucknow,Uttar Pradesh', '1', '2021-07-30 13:41:09', '2021-07-30 13:41:09', 1, 68, 60),
(113, '1', '10', 'YES', '2', '2021-07-30 23:00:00', '2021-07-30 23:00:00', 1, 1, '1', NULL, '1', '2021-07-31 00:06:59', '2021-07-31 00:06:59', 1, 3, 30),
(114, '1', '9', 'YES', '8', '2025-07-30 22:00:00', '2025-07-30 22:00:00', 1, 1, '0', NULL, '1', '2021-07-31 00:08:58', '2021-07-31 00:08:58', 1, 24, 30),
(115, '1', '9', 'YES', '8', '2025-07-30 22:00:00', '2025-07-30 22:00:00', 1, 1, '0', NULL, '1', '2021-07-31 00:09:18', '2021-07-31 00:09:18', 1, 27, 30),
(116, '3', '10', 'YES', '8', '2025-07-30 22:00:00', '2025-07-30 22:00:00', 1, 3, '0', NULL, '1', '2021-07-31 00:10:08', '2021-07-31 00:10:08', 1, 52, 30),
(117, '3', '12', 'YES', '8', '2025-07-25 23:00:00', '2025-07-25 23:00:00', 1, 3, '0', NULL, '1', '2021-07-31 00:10:54', '2021-07-31 00:10:54', 1, 36, 30),
(118, '2', '3', 'YES', '7', '2022-09-29 23:00:00', '2022-09-30 23:00:00', 1, 2, '0', NULL, '1', '2021-07-31 00:12:19', '2021-07-31 00:12:19', 1, 2, 60),
(119, '1', '1', 'YES', '2', '2023-12-23 21:00:00', '2023-12-23 21:00:00', 1, 1, '0', NULL, '1', '2021-07-31 00:14:40', '2021-07-31 00:14:40', 1, 9, 30),
(120, '1', '1', 'YES', '2', '2023-12-23 21:00:00', '2023-12-23 21:00:00', 1, 1, '0', NULL, '1', '2021-07-31 00:14:40', '2021-07-31 00:14:40', 1, 9, 30),
(121, '2', '21', 'YES', '2', '2023-12-23 21:00:00', '2023-12-23 21:00:00', 1, 1, '0', NULL, '1', '2021-07-31 00:15:07', '2021-07-31 00:15:07', 1, 12, 30),
(122, '4', '8', 'YES', '2', '2021-07-30 23:00:00', '2021-07-30 23:00:00', 1, 1, '0', NULL, '1', '2021-07-31 00:16:42', '2021-07-31 00:16:42', 1, 11, 30),
(126, '2', '10', 'YES', '4', '2021-08-04 14:00:00', '2022-09-16 14:00:00', 1, 1, '0', NULL, '1', '2021-08-04 12:15:11', '2021-08-04 12:15:11', 1, 1, 30),
(127, '58', '2', NULL, '3', '2021-08-04 14:00:00', '2021-08-07 15:00:00', 2, 2, '0', 'Mumbai', '1', '2021-08-04 15:34:09', '2021-08-04 15:34:09', 58, 69, 60),
(129, '59', '20', NULL, '5', '2021-08-05 17:00:00', NULL, 4, 2, '0', NULL, '1', '2021-08-04 18:57:45', '2021-08-04 18:57:45', 59, 69, 90),
(130, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:16', '2021-08-04 21:31:16', 1, 1, 60),
(131, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:18', '2021-08-04 21:31:18', 1, 1, 60),
(132, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:18', '2021-08-04 21:31:18', 1, 1, 60),
(133, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:18', '2021-08-04 21:31:18', 1, 1, 60),
(134, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:18', '2021-08-04 21:31:18', 1, 1, 60),
(135, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:19', '2021-08-04 21:31:19', 1, 1, 60),
(136, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:19', '2021-08-04 21:31:19', 1, 1, 60),
(137, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:19', '2021-08-04 21:31:19', 1, 1, 60),
(138, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:30', '2021-08-04 21:31:30', 1, 1, 60),
(139, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:30', '2021-08-04 21:31:30', 1, 1, 60),
(140, '2', '3', 'YES', '3', '2021-08-11 20:00:00', '2021-08-11 20:00:00', 1, 1, '1', NULL, '1', '2021-08-04 21:31:31', '2021-08-04 21:31:31', 1, 1, 60),
(141, '1', '9', 'YES', '9', '2021-08-05 19:03:00', '2021-08-05 19:03:00', 2, 2, '0', NULL, '1', '2021-08-04 21:34:38', '2021-08-04 21:34:38', 1, 6, 30),
(142, '1', '10', 'YES', '2', '2021-08-05 20:00:00', '2021-08-20 22:00:00', 2, 1, '0', NULL, '1', '2021-08-04 21:38:46', '2021-08-04 21:38:46', 1, 9, 30),
(143, '23', '3', 'YES', '4', '2021-08-05 01:00:00', '2021-08-06 02:00:00', 2, 1, '1', NULL, '1', '2021-08-05 03:26:13', '2021-08-05 03:26:13', 1, 2, 30),
(144, '59', '5', NULL, '3', '2021-08-07 19:00:00', '2021-08-08 20:00:00', 4, 1, '0', NULL, '1', '2021-08-05 18:04:34', '2021-08-05 18:04:34', 59, 69, 60),
(145, '59', '4', NULL, '8', '2021-08-07 19:00:00', '2021-08-07 19:00:00', 4, 2, '0', 'Gzb', '1', '2021-08-05 18:30:28', '2021-08-05 18:30:28', 59, 69, 60),
(146, '59', '5.50', 'YES', '11', '2021-08-05 01:00:00', '2021-08-05 02:00:00', 4, 4, '1', NULL, '1', '2021-08-05 22:55:49', '2021-08-05 22:55:49', 3, 69, 30),
(147, '2', '5', NULL, '4', '2021-08-07 02:00:00', '2021-08-08 03:00:00', 1, 2, '0', NULL, '1', '2021-08-07 08:45:30', '2021-08-07 08:45:30', 2, 70, 30),
(149, '2', '2', 'YES', '2', '2021-08-07 18:00:00', '2021-08-07 18:00:00', 3, 1, '0', NULL, '1', '2021-08-07 23:44:33', '2021-08-07 23:44:33', 1, 1, 60),
(150, '59', '5.63', NULL, '4.5', '2021-08-07 01:00:00', '2021-08-07 01:00:00', 4, 4, '0', NULL, '1', '2021-08-07 23:48:14', '2021-08-07 23:48:14', 59, 69, 30),
(152, '59', '50', 'YES', '-2', '2021-08-07 23:00:00', NULL, 4, 4, '0', NULL, '1', '2021-08-08 00:16:46', '2021-08-08 00:16:46', 3, 69, 60),
(153, '2', '8', 'YES', '7', '2021-08-10 14:00:00', '2021-08-10 14:00:00', 1, 1, '1', NULL, '1', '2021-08-09 19:41:11', '2021-08-09 19:41:11', 1, 4, 60),
(154, '1', '8', 'YES', '5', '2021-08-09 14:00:00', '2021-08-09 14:00:00', 1, 1, '1', NULL, '1', '2021-08-09 20:02:07', '2021-08-09 20:02:07', 1, 3, 30),
(155, '11', '9', 'YES', '7', '2021-08-09 15:00:00', '2021-08-09 15:00:00', 1, 2, '1', NULL, '1', '2021-08-09 20:10:22', '2021-08-09 20:10:22', 1, 4, 60),
(158, '59', '5.51', 'YES', '55', '2021-08-09 09:00:00', '2021-08-09 09:00:00', 4, 4, '0', 'Gzb', '1', '2021-08-09 21:22:23', '2021-08-09 21:22:23', 3, 69, 90),
(159, '59', '0.99', 'YES', '4.5', '2021-08-09 21:00:00', '2021-08-09 21:00:00', 4, 4, '0', 'gzb', '1', '2021-08-09 21:33:51', '2021-08-09 21:33:51', 3, 69, 90),
(160, '11', '2', 'YES', '8', '2021-08-10 15:17:00', '2021-08-10 15:17:00', 2, 1, '1', NULL, '1', '2021-08-09 22:17:36', '2021-08-09 22:17:36', 1, 1, 60),
(164, '2', '9', 'YES', '9', '2021-08-09 19:00:00', '2021-08-09 20:00:00', 1, 2, '1', NULL, '1', '2021-08-09 23:35:02', '2021-08-09 23:35:02', 1, 1, 30),
(165, '59', '1.111', 'YES', '1111', '2021-08-10 22:00:00', '2021-08-10 18:00:00', 4, 4, '1', NULL, '1', '2021-08-10 00:39:14', '2021-08-10 00:39:14', 3, 69, 90),
(166, '2', '4', NULL, '4', '2021-08-09 19:00:00', '2021-08-09 19:00:00', 1, 1, '1', NULL, '1', '2021-08-10 01:24:34', '2021-08-10 01:24:34', 2, 1, 30),
(167, '2', '10', NULL, '5', '2021-08-09 19:00:00', '2021-08-09 19:00:00', 1, 1, '1', NULL, '1', '2021-08-10 01:31:22', '2021-08-10 01:31:22', 2, 1, 60),
(168, '7', '25', 'YES', '10', '2021-08-15 16:00:00', '2021-08-29 16:00:00', 4, 2, '0', 'Wallington', '1', '2021-08-10 02:35:15', '2021-08-10 02:35:15', 1, 71, 90),
(169, '2', '9', NULL, '9', '2021-08-12 20:00:00', '2021-08-12 20:00:00', 1, 1, '1', NULL, '1', '2021-08-10 06:13:57', '2021-08-10 06:13:57', 2, 2, 30),
(170, '2', '9', NULL, '9', '2021-08-12 21:00:00', '2021-08-12 21:00:00', 4, 1, '1', NULL, '1', '2021-08-10 06:18:30', '2021-08-10 06:18:30', 2, 1, 90),
(171, '59', '20', 'YES', '4', '2021-08-11 13:00:00', '2021-08-11 13:00:00', 4, 4, '0', NULL, '1', '2021-08-11 03:42:58', '2021-08-11 03:42:58', 3, 69, 90),
(172, '2', '8', 'YES', '7', '2021-08-11 01:00:00', '2021-08-11 01:00:00', 2, 3, '1', NULL, '1', '2021-08-11 05:09:14', '2021-08-11 05:09:14', 3, 1, 60),
(173, '2', '8', NULL, '8', '2021-08-11 01:00:00', '2021-08-12 19:00:00', 1, 2, '1', NULL, '1', '2021-08-11 06:29:22', '2021-08-11 06:29:22', 2, 4, 30),
(174, '2', '8', NULL, '8', '2021-08-11 03:00:00', '2021-08-11 13:00:00', 1, 1, '1', NULL, '1', '2021-08-11 06:34:40', '2021-08-11 06:34:40', 2, 1, 60),
(175, '2', '9', NULL, '8', '2021-08-11 13:00:00', '2021-08-12 23:37:00', 2, 2, '1', NULL, '1', '2021-08-11 06:38:07', '2021-08-11 06:38:07', 2, 2, 90),
(176, '59', '3', 'YES', '5', '2021-08-11 07:00:00', '2021-08-11 12:00:00', 4, 4, '0', NULL, '1', '2021-08-11 16:34:45', '2021-08-11 16:34:45', 1, 69, 90),
(177, '59', '6', 'YES', '6', '2021-08-11 09:30:00', '2021-08-12 11:00:00', 1, 1, '1', NULL, '1', '2021-08-11 16:58:05', '2021-08-11 16:58:05', 1, 2, 30),
(179, '59', '20', 'YES', '4', '2021-08-11 21:00:00', '2021-08-11 22:00:00', 4, 4, '1', NULL, '1', '2021-08-12 03:32:20', '2021-08-12 03:32:20', 3, 69, 90),
(180, '2', '18', 'YES', '15', '2021-08-16 18:30:00', '2021-08-19 18:30:00', 5, 2, '1', NULL, '1', '2021-08-17 01:32:33', '2021-08-17 01:32:33', 1, 72, 60),
(181, '2', '3', 'YES', '3', '2021-08-16 21:00:00', '2021-08-16 21:00:00', 1, 1, '1', NULL, '1', '2021-08-17 02:17:37', '2021-08-17 02:17:37', NULL, 1, 30),
(195, '2', '3', NULL, '5', '2021-08-20 15:00:00', '2021-08-21 19:00:00', 1, 2, '1', NULL, '1', '2021-08-20 04:06:22', '2021-08-20 04:06:22', 2, 1, 30),
(196, '2', '7', 'YES', '8', '2021-08-19 22:00:00', '2021-08-19 22:00:00', 2, 1, '1', NULL, '1', '2021-08-20 04:15:49', '2021-08-20 04:15:49', NULL, 2, 60),
(197, '3', '8', 'YES', '8', '2021-08-19 22:00:00', '2021-08-20 21:00:00', 2, 4, '1', NULL, '1', '2021-08-20 04:17:11', '2021-08-20 04:17:11', NULL, 4, 30),
(198, '7', '8', 'YES', '8', '2021-08-19 22:00:00', '2021-08-21 20:00:00', 2, 3, '1', NULL, '1', '2021-08-20 04:29:23', '2021-08-20 04:29:23', NULL, 3, 60),
(199, '2', '15', 'YES', '12', '2021-08-21 12:00:00', '2021-08-24 12:00:00', 5, 2, '1', NULL, '1', '2021-08-21 18:50:08', '2021-08-21 18:50:08', NULL, 80, 60);

-- --------------------------------------------------------

--
-- Table structure for table `batch_live`
--

CREATE TABLE `batch_live` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `weekly_off_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch_session`
--

CREATE TABLE `batch_session` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date_time` datetime NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch_session`
--

INSERT INTO `batch_session` (`id`, `batch_id`, `name`, `start_date_time`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Session-1', '2021-05-26 22:19:00', NULL, '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(2, 1, 'Session-2', '2021-05-27 22:20:00', NULL, '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(3, 1, 'Session-3', '2021-05-28 18:00:00', NULL, '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(4, 2, 'Session-1', '2021-05-26 22:19:00', NULL, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(5, 2, 'Session-2', '2021-05-27 22:20:00', NULL, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(6, 2, 'Session-3', '2021-05-28 18:00:00', NULL, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(7, 3, 'Session-1', '2021-05-26 22:19:00', NULL, '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(8, 3, 'Session-2', '2021-05-27 22:20:00', NULL, '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(9, 3, 'Session-3', '2021-05-28 18:00:00', NULL, '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(10, 4, 'Session-1', '2021-05-26 22:19:00', NULL, '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(11, 4, 'Session-2', '2021-05-27 22:20:00', NULL, '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(12, 4, 'Session-3', '2021-05-28 18:00:00', NULL, '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(13, 5, 'Session-1', '2021-05-24 22:33:00', NULL, '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(14, 5, 'Session-2', '2021-05-26 22:33:00', NULL, '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(15, 5, 'Session-3', '2021-05-29 22:33:00', NULL, '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(16, 6, 'Session-1', '2021-05-26 08:03:00', NULL, '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(17, 6, 'Session-2', '2021-05-28 08:03:00', NULL, '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(18, 7, 'Session-1', '2021-05-26 08:03:00', NULL, '2021-05-26 15:04:09', '2021-05-26 15:04:09'),
(19, 7, 'Session-2', '2021-05-28 08:03:00', NULL, '2021-05-26 15:04:09', '2021-05-26 15:04:09'),
(20, 8, 'Session-1', '2025-05-26 08:40:00', NULL, '2021-05-26 15:40:57', '2021-05-26 15:40:57'),
(21, 9, 'Session-1', '2021-05-26 09:49:00', NULL, '2021-05-26 16:49:31', '2021-05-26 16:49:31'),
(22, 10, 'Session-1', '2021-05-26 10:21:00', NULL, '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(23, 10, 'Session-2', '2021-05-28 10:22:00', NULL, '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(24, 10, 'Session-3', '2021-05-30 10:22:00', NULL, '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(25, 11, 'Session-1', '2021-05-29 11:00:00', 'new intro', '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(26, 11, 'Session-2', '2021-05-30 12:00:00', NULL, '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(27, 12, 'Session-1', '2021-05-31 10:18:00', NULL, '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(28, 12, 'Session-2', '2021-06-02 10:18:00', NULL, '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(32, 14, 'Session-1', '2021-05-28 22:00:00', 'tenese present', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(33, 14, 'Session-2', '2021-05-29 21:00:00', 'tense past', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(34, 14, 'Session-3', '2021-05-30 20:00:00', 'tense future', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(35, 15, 'Session-1', '2021-05-29 10:06:00', NULL, '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(36, 15, 'Session-2', '2021-05-31 10:07:00', NULL, '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(37, 16, 'Session-1', '2021-05-30 19:05:00', NULL, '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(38, 16, 'Session-2', '2021-05-31 19:05:00', NULL, '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(39, 17, 'Session-1', '2021-05-29 19:06:00', NULL, '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(40, 17, 'Session-2', '2021-05-31 19:06:00', NULL, '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(41, 18, 'Session-1', '2021-05-30 19:33:00', NULL, '2021-05-30 02:34:03', '2021-05-30 02:34:03'),
(42, 19, 'Session-1', '2021-06-01 19:05:00', NULL, '2021-06-02 02:05:47', '2021-06-02 02:05:47'),
(43, 20, 'Session-1', '2021-06-01 23:00:00', NULL, '2021-06-02 05:56:42', '2021-06-02 05:56:42'),
(44, 20, 'Session-2', '2021-06-02 20:00:00', NULL, '2021-06-02 05:56:42', '2021-06-02 05:56:42'),
(45, 21, 'Session-1', '2021-06-03 17:59:00', NULL, '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(46, 21, 'Session-2', '2021-06-24 17:59:00', NULL, '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(47, 22, 'Session-1', '2021-06-04 09:34:00', NULL, '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(48, 22, 'Session-2', '2021-06-05 12:00:00', NULL, '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(49, 23, 'Session-1', '2021-06-05 10:30:00', NULL, '2021-06-05 17:31:19', '2021-06-05 17:31:19'),
(50, 24, 'Session-1', '2021-06-05 14:00:00', 'test-1', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(51, 24, 'Session-2', '2021-06-06 14:00:00', 'test-2', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(52, 24, 'Session-3', '2021-06-07 14:00:00', 'test-3', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(53, 24, 'Session-4', '2021-06-08 14:00:00', 'test-4', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(54, 25, 'Session-1', '2021-06-05 18:00:00', NULL, '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(55, 25, 'Session-2', '2021-06-05 19:00:00', NULL, '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(56, 26, 'Session-1', '2021-06-05 19:00:00', 'test-1', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(57, 26, 'Session-2', '2021-06-06 19:00:00', 'test-2, test-2, test-2, test-2,test-2', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(58, 26, 'Session-3', '2021-06-07 19:00:00', 'test-3', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(59, 27, 'Session-1', '2021-06-07 16:00:00', 'test-1', '2021-06-07 23:29:40', '2021-06-07 23:29:40'),
(60, 27, 'Session-2', '2021-06-17 16:29:00', 'test-2', '2021-06-07 23:29:40', '2021-06-07 23:29:40'),
(61, 28, 'Session-1', '2021-06-07 19:00:00', NULL, '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(62, 28, 'Session-2', '2021-06-10 19:00:00', NULL, '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(63, 29, 'Session-1', '2021-06-07 20:00:00', 'teset1', '2021-06-08 02:17:44', '2021-06-08 02:17:44'),
(64, 30, 'Session-1', '2021-06-19 19:34:00', 'new', '2021-06-08 02:35:24', '2021-06-08 02:35:24'),
(65, 31, 'Session-1', '2021-06-07 20:12:00', NULL, '2021-06-08 03:12:52', '2021-06-08 03:12:52'),
(66, 32, 'Session-1', '2021-06-09 19:00:00', NULL, '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(67, 32, 'Session-2', '2021-06-11 19:00:00', NULL, '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(68, 33, 'Session-1', '2021-06-11 12:00:00', 'test', '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(69, 33, 'Session-2', '2021-06-26 12:00:00', 'test1', '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(70, 34, 'Session-1', '2021-06-14 19:45:00', 'Integers and combining Numbers with addition and subtraction', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(71, 34, 'Session-2', '2021-06-15 19:45:00', 'Integers and combining Numbers with addition and subtraction', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(72, 34, 'Session-3', '2021-06-16 19:45:00', 'Integers and combining Numbers with addition and subtraction', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(73, 34, 'Session-4', '2021-06-17 19:46:00', 'Integers and combining Numbers with addition and subtraction', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(74, 35, 'Session-1', '2021-06-11 21:00:00', NULL, '2021-06-12 03:03:02', '2021-06-12 03:03:02'),
(75, 35, 'Session-2', '2021-06-12 19:00:00', NULL, '2021-06-12 03:03:02', '2021-06-12 03:03:02'),
(76, 36, 'Session-1', '2021-06-12 07:00:00', NULL, '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(77, 36, 'Session-2', '2021-06-18 07:00:00', NULL, '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(78, 37, 'Session-1', '2021-06-12 10:00:00', 'test-1', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(79, 37, 'Session-2', '2021-06-13 10:00:00', 'test-2', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(80, 37, 'Session-3', '2021-06-14 10:00:00', 'test-3', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(81, 37, 'Session-4', '2021-06-15 10:00:00', 'test-4', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(82, 38, 'Session-1', '2021-06-12 02:00:00', 'test', '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(83, 38, 'Session-2', '2021-06-13 02:00:00', 'test3', '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(84, 39, 'Session-1', '2021-06-12 05:00:00', 'test1', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(85, 39, 'Session-2', '2021-06-13 05:00:00', 'test1', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(86, 39, 'Session-3', '2021-06-14 05:00:00', 'test1', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(87, 40, 'Session-1', '2021-06-16 18:15:00', 'test-1', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(88, 40, 'Session-2', '2021-06-17 18:15:00', 'test-2', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(89, 40, 'Session-3', '2021-06-18 18:15:00', 'test-3', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(90, 40, 'Session-4', '2021-06-19 18:15:00', 'test-4', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(91, 41, 'Session-1', '2021-07-21 10:00:00', NULL, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(92, 41, 'Session-2', '2021-07-22 14:05:00', NULL, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(93, 41, 'Session-3', '2021-07-23 14:05:00', NULL, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(94, 41, 'Session-4', '2021-07-24 14:05:00', NULL, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(95, 42, 'Session-1', '2021-07-21 14:10:00', NULL, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(96, 42, 'Session-2', '2021-07-22 14:11:00', NULL, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(97, 42, 'Session-3', '2021-07-24 14:11:00', NULL, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(98, 42, 'Session-4', '2021-07-25 14:11:00', NULL, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(99, 43, 'Session-1', '2021-06-23 02:00:00', NULL, '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(100, 43, 'Session-2', '2021-06-23 03:00:00', NULL, '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(101, 43, 'Session-3', '2021-06-23 05:00:00', NULL, '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(102, 44, 'Session-1', '2021-06-29 20:00:00', NULL, '2021-06-30 02:28:09', '2021-06-30 02:28:09'),
(103, 44, 'Session-2', '2021-06-30 20:00:00', NULL, '2021-06-30 02:28:09', '2021-06-30 02:28:09'),
(104, 45, 'Session-1', '2021-06-30 14:00:00', NULL, '2021-06-30 07:37:53', '2021-06-30 07:37:53'),
(105, 46, 'Session-1', '2021-07-01 09:00:00', NULL, '2021-06-30 07:56:03', '2021-06-30 07:56:03'),
(106, 47, 'Session-1', '2021-06-30 10:00:00', 'test1', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(107, 47, 'Session-2', '2021-07-01 10:00:00', 'test3', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(108, 47, 'Session-3', '2021-07-02 10:00:00', 'test4', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(109, 48, 'Session-1', '2021-06-30 10:00:00', 'test1', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(110, 48, 'Session-2', '2021-06-30 12:00:00', 'test1', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(111, 48, 'Session-3', '2021-06-30 11:00:00', 'test1', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(112, 49, 'Session-1', '2021-07-01 10:00:00', 'test1', '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(113, 49, 'Session-2', '2020-01-01 11:00:00', 'test2', '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(114, 49, 'Session-3', '2021-07-01 12:00:00', 'test3', '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(115, 50, 'Session-1', '2021-07-01 13:00:00', 'test1', '2021-07-01 18:40:38', '2021-07-01 18:40:38'),
(116, 50, 'Session-2', '2021-07-01 14:00:00', 'test2', '2021-07-01 18:40:38', '2021-07-01 18:40:38'),
(117, 51, 'Session-1', '2021-07-01 13:00:00', 'test1', '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(118, 51, 'Session-2', '2021-07-01 14:00:00', 'test2', '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(119, 52, 'Session-1', '2021-07-01 13:00:00', 'Sam Wallington Math Summer Booster', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(120, 52, 'Session-2', '2021-07-02 14:00:00', 'Sam Wallington Math Summer BoosterSam Wallington Math Summer Booster', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(121, 52, 'Session-3', '2021-07-03 14:00:00', 'Test 3', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(122, 53, 'Session-1', '2021-07-01 23:00:00', 'test2', '2021-07-02 01:27:34', '2021-07-02 01:27:34'),
(123, 54, 'Session-1', '2021-07-02 12:00:00', NULL, '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(124, 54, 'Session-2', '2021-07-03 13:00:00', NULL, '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(125, 54, 'Session-3', '2021-07-04 14:00:00', NULL, '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(126, 55, 'Session-1', '2021-07-02 21:00:00', NULL, '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(127, 55, 'Session-2', '2021-07-03 01:00:00', NULL, '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(128, 55, 'Session-3', '2021-07-04 19:00:00', NULL, '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(129, 56, 'Session-1', '2021-07-07 20:00:00', 'test', '2021-07-07 23:35:10', '2021-07-07 23:35:10'),
(130, 57, 'Session-1', '2021-07-14 16:35:00', 'test4', '2021-07-07 23:35:54', '2021-07-07 23:35:54'),
(131, 57, 'Session-2', '2021-07-16 19:00:00', 'test6', '2021-07-07 23:35:54', '2021-07-07 23:35:54'),
(132, 58, 'Session-1', '2021-07-10 17:00:00', 'test1', '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(133, 58, 'Session-2', '2021-07-11 18:00:00', 'test2', '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(134, 50, 'Session-1', '2021-07-01 13:00:00', 'test', '2021-07-10 21:58:23', '2021-07-10 21:58:23'),
(135, 59, 'Session-1', '2021-07-10 18:00:00', 'test1', '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(136, 59, 'Session-2', '2021-07-11 20:00:00', 'test2', '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(137, 51, 'Session-1', '2021-07-01 13:00:00', 'test1', '2021-07-10 22:16:21', '2021-07-10 22:16:21'),
(138, 49, 'Session-1', '2021-07-01 10:00:00', 'test1', '2021-07-10 22:36:14', '2021-07-10 22:36:14'),
(139, 49, 'Session-1', '2021-07-01 10:00:00', 'test', '2021-07-10 22:37:49', '2021-07-10 22:37:49'),
(140, 60, 'Session-1', '2021-07-10 20:00:00', 'test1', '2021-07-10 23:57:42', '2021-07-10 23:57:42'),
(141, 61, 'Session-1', '2021-07-11 20:00:00', 'test1', '2021-07-11 01:24:02', '2021-07-11 01:24:02'),
(142, 61, 'Session-1', '2021-07-11 20:00:00', 'test1', '2021-07-11 01:27:48', '2021-07-11 01:27:48'),
(143, 62, 'Session-1', '2021-07-13 22:00:00', 'test', '2021-07-13 02:01:06', '2021-07-13 02:01:06'),
(144, 63, 'Session-1', '2021-07-14 17:00:00', 'Bring Note books', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(145, 63, 'Session-2', '2021-07-15 17:00:00', 'Bring Pen', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(146, 63, 'Session-3', '2021-07-16 17:00:00', 'Please prepare for test', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(147, 63, 'Session-4', '2021-07-17 17:00:00', 'Surprise', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(148, 64, 'Session-1', '2021-07-15 19:00:00', NULL, '2021-07-15 03:55:12', '2021-07-15 03:55:12'),
(149, 64, 'Session-2', '2021-07-16 19:00:00', NULL, '2021-07-15 03:55:12', '2021-07-15 03:55:12'),
(150, 65, 'Session-1', '2021-07-19 18:00:00', 'test1', '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(151, 65, 'Session-2', '2021-07-20 19:00:00', 'test2', '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(152, 66, 'Session-1', '2021-07-20 12:00:00', 'test1', '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(153, 66, 'Session-2', '2021-07-21 12:00:00', 'test2', '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(154, 67, 'Session-1', '2021-07-21 12:00:00', 'test1', '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(155, 67, 'Session-2', '2021-07-22 12:00:00', 'test2', '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(156, 68, 'Session-1', '2021-07-23 12:00:00', 'test1', '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(157, 68, 'Session-2', '2021-07-24 12:00:00', 'test2', '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(158, 69, 'Session-1', '2021-07-20 11:00:00', NULL, '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(159, 69, 'New Session', '2021-07-21 12:00:00', NULL, '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(160, 69, 'Third Session', '2021-07-22 12:00:00', NULL, '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(161, 70, 'Session-1', '2021-07-20 12:00:00', NULL, '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(162, 70, 'Session-2', '2021-07-21 13:00:00', NULL, '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(163, 71, 'Session-1', '2021-07-21 15:00:00', NULL, '2021-07-21 14:50:40', '2021-07-21 14:50:40'),
(164, 72, 'Session-1', '2021-07-21 15:00:00', NULL, '2021-07-21 15:03:02', '2021-07-21 15:03:02'),
(165, 72, 'Session-2', '2021-07-20 12:32:00', NULL, '2021-07-21 15:03:02', '2021-07-21 15:03:02'),
(166, 73, 'Session-1', '2021-07-21 15:00:00', NULL, '2021-07-21 15:03:05', '2021-07-21 15:03:05'),
(167, 73, 'Session-2', '2021-07-20 12:32:00', NULL, '2021-07-21 15:03:05', '2021-07-21 15:03:05'),
(168, 74, 'Session-1', '2021-07-21 15:00:00', NULL, '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(169, 74, 'Session-2', '2021-07-20 12:32:00', NULL, '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(170, 75, 'Session-1', '2021-07-21 15:00:00', 'test1', '2021-07-21 15:10:57', '2021-07-21 15:10:57'),
(171, 75, 'Session-2', '2021-07-22 17:00:00', 'test2', '2021-07-21 15:10:57', '2021-07-21 15:10:57'),
(172, 76, 'Session-1', '2021-07-21 13:00:00', 'test1', '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(173, 76, 'Session-2', '2021-07-22 16:00:00', 'test2', '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(174, 77, 'Session-1', '2021-07-21 18:00:00', 'test', '2021-07-21 19:19:54', '2021-07-21 19:19:54'),
(175, 78, 'Session-1', '2021-07-22 17:00:00', 'test1', '2021-07-22 15:26:18', '2021-07-22 15:26:18'),
(176, 79, 'Present Indefinite', '2021-07-24 15:00:00', NULL, '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(177, 79, 'Present Continuous', '2021-07-25 15:00:00', NULL, '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(178, 80, 'Session-1', '2021-07-29 17:35:00', NULL, '2021-07-26 21:09:05', '2021-07-26 21:09:05'),
(179, 81, 'Session-1', '2021-07-29 17:35:00', NULL, '2021-07-26 21:09:07', '2021-07-26 21:09:07'),
(180, 82, 'Session-1', '2021-07-26 21:00:00', NULL, '2021-07-26 23:00:01', '2021-07-26 23:00:01'),
(181, 82, 'Session-1', '2021-07-28 22:00:00', NULL, '2021-07-26 23:00:01', '2021-07-26 23:00:01'),
(182, 83, 'Session-1', '2021-07-26 21:00:00', NULL, '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(183, 83, 'Session-1', '2021-07-28 22:00:00', NULL, '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(184, 84, 'Session-1', '2021-07-26 22:00:00', NULL, '2021-07-26 23:37:58', '2021-07-26 23:37:58'),
(185, 85, '11+ Test 1', '2021-07-27 17:00:00', 'Test comment', '2021-07-27 00:20:06', '2021-07-27 00:20:06'),
(186, 86, 'Session-1', '2022-04-27 21:00:00', 'test', '2021-07-27 18:38:25', '2021-07-27 18:38:25'),
(187, 87, 'Session-1', '2022-04-27 21:00:00', 'test', '2021-07-27 18:38:27', '2021-07-27 18:38:27'),
(188, 88, 'Session-1', '2021-07-27 21:00:00', 'test', '2021-07-27 18:45:42', '2021-07-27 18:45:42'),
(189, 89, 'Session-1', '2021-07-27 21:00:00', 'test', '2021-07-27 18:45:43', '2021-07-27 18:45:43'),
(190, 90, 'Session-1', '2021-07-27 23:00:00', 'math', '2021-07-27 19:00:16', '2021-07-27 19:00:16'),
(191, 91, 'Session-1', '2021-07-27 21:00:00', 'english', '2021-07-27 19:04:08', '2021-07-27 19:04:08'),
(192, 92, 'Session-1', '2021-07-27 23:00:00', 'essay', '2021-07-27 19:05:53', '2021-07-27 19:05:53'),
(193, 93, 'Session-1', '2021-07-28 15:00:00', 'Test comment', '2021-07-28 16:57:47', '2021-07-28 16:57:47'),
(194, 94, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(195, 94, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(196, 94, 'Session-1', '2021-08-16 18:29:00', 'rf', '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(197, 95, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(198, 95, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(199, 95, 'Session-1', '2021-08-16 18:29:00', 'rf', '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(200, 96, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(201, 96, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(202, 96, 'Session-1', '2021-08-16 18:29:00', 'rf', '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(203, 98, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(204, 97, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(205, 98, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(206, 97, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(207, 98, 'Session-1', '2021-08-16 18:29:00', 'rf', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(208, 97, 'Session-1', '2021-08-16 18:29:00', 'rf', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(209, 99, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(210, 99, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(211, 99, 'Session-1', '2021-08-16 18:29:00', 'rf', '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(212, 100, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:31:06', '2021-07-30 01:31:06'),
(213, 100, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:31:06', '2021-07-30 01:31:06'),
(214, 101, 'Session-1', '2021-08-02 16:00:00', 'NUmber', '2021-07-30 01:31:07', '2021-07-30 01:31:07'),
(215, 101, 'Session-1', '2021-08-09 18:29:00', 'wejbwe', '2021-07-30 01:31:07', '2021-07-30 01:31:07'),
(216, 102, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(217, 102, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(218, 102, 'Session-1', '2021-08-01 12:00:00', 'Demo', '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(219, 103, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(220, 103, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(221, 103, 'Session-1', '2021-08-01 12:00:00', 'Demo', '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(222, 104, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(223, 104, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(224, 104, 'Session-1', '2021-08-01 12:00:00', 'Demo', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(225, 105, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(226, 105, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(227, 105, 'Session-1', '2021-08-01 12:00:00', 'Demo', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(228, 106, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:44', '2021-07-30 13:24:44'),
(229, 106, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:44', '2021-07-30 13:24:44'),
(230, 107, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(231, 108, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(232, 109, 'Session-1', '2021-07-30 10:50:00', 'Demo_1', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(233, 107, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(234, 108, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(235, 109, 'Session-1', '2021-07-31 13:00:00', 'Demo_2', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(236, 110, 'Session-1', '2021-07-30 11:09:00', 'Demo_2', '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(237, 110, 'Session-1', '2021-07-31 11:09:00', 'Demo_2', '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(238, 111, 'Session-1', '2021-07-30 11:09:00', 'Demo_2', '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(239, 111, 'Session-1', '2021-07-31 11:09:00', 'Demo_2', '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(240, 111, 'Session-1', '2021-08-01 11:10:00', 'Demo_2', '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(241, 112, 'Session-1', '2021-07-30 11:09:00', 'Demo_2', '2021-07-30 13:41:09', '2021-07-30 13:41:09'),
(242, 112, 'Session-1', '2021-07-31 11:09:00', 'Demo_2', '2021-07-30 13:41:09', '2021-07-30 13:41:09'),
(243, 113, 'Session-1', '2021-07-30 23:00:00', 'test2', '2021-07-31 00:06:59', '2021-07-31 00:06:59'),
(244, 114, 'Session-1', '2025-07-30 22:00:00', 'test1', '2021-07-31 00:08:58', '2021-07-31 00:08:58'),
(245, 115, 'Session-1', '2025-07-30 22:00:00', 'test3', '2021-07-31 00:09:18', '2021-07-31 00:09:18'),
(246, 116, 'Session-1', '2025-07-30 22:00:00', 'test', '2021-07-31 00:10:08', '2021-07-31 00:10:08'),
(247, 117, 'Session-1', '2025-07-25 23:00:00', 'test', '2021-07-31 00:10:54', '2021-07-31 00:10:54'),
(248, 118, 'Session-1', '2022-09-30 23:00:00', 'test2', '2021-07-31 00:12:19', '2021-07-31 00:12:19'),
(249, 119, 'Session-11', '2023-12-23 21:00:00', 'test', '2021-07-31 00:14:40', '2021-07-31 00:14:40'),
(250, 120, 'Session-11', '2023-12-23 21:00:00', 'test', '2021-07-31 00:14:40', '2021-07-31 00:14:40'),
(251, 121, 'Session-1', '2023-12-23 21:00:00', NULL, '2021-07-31 00:15:07', '2021-07-31 00:15:07'),
(252, 122, 'Session-11', '2021-07-30 23:00:00', 'test', '2021-07-31 00:16:42', '2021-07-31 00:16:42'),
(253, 123, 'Session-1', '2021-07-31 07:00:00', 'Test comment', '2021-07-31 07:30:21', '2021-07-31 07:30:21'),
(254, 123, 'Session-2', '2021-07-31 07:00:00', 'Test comment', '2021-07-31 07:30:21', '2021-07-31 07:30:21'),
(255, 124, 'Session-1', '2021-07-31 06:00:00', NULL, '2021-07-31 07:34:36', '2021-07-31 07:34:36'),
(256, 124, 'Session-2', '2021-07-31 07:00:00', NULL, '2021-07-31 07:34:36', '2021-07-31 07:34:36'),
(257, 125, 'Session-1', '2021-08-04 14:00:00', 'test', '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(258, 125, 'Session-2', '2021-08-05 14:00:00', 'test1', '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(259, 125, 'Session-3', '2022-09-16 14:00:00', 'test4', '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(260, 126, 'Session-1', '2021-08-04 14:00:00', 'test', '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(261, 126, 'Session-2', '2021-08-05 14:00:00', 'test1', '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(262, 126, 'Session-3', '2022-09-16 14:00:00', 'test4', '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(263, 127, 'TrigonoMetry', '2021-08-04 14:00:00', 'Test comment', '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(264, 127, 'Algebra', '2021-08-05 11:00:00', NULL, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(265, 127, 'Session-3', '2021-08-06 15:00:00', NULL, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(266, 127, 'Session-4', '2021-08-07 15:00:00', NULL, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(267, 128, 'English Booster', '2021-08-05 20:00:00', 'This class will help learners to boost their speaking and writing skills', '2021-08-04 18:49:46', '2021-08-04 18:49:46'),
(268, 129, 'Math Booster', '2021-08-05 17:00:00', 'Boost your math skills', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(269, 129, 'Math Booster 1', '2021-08-06 18:00:00', 'Boost your counting skills', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(270, 129, 'Math Booster 2', '2021-08-06 18:00:00', 'Boost your counting skills', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(271, 129, 'Math Booster 3', '2021-08-06 18:00:00', 'Boost your counting skills', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(272, 130, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:16', '2021-08-04 21:31:16'),
(273, 131, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(274, 132, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(275, 133, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(276, 134, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(277, 135, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(278, 136, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(279, 137, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(280, 138, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:30', '2021-08-04 21:31:30'),
(281, 139, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:30', '2021-08-04 21:31:30'),
(282, 140, 'Session-1', '2021-08-11 20:00:00', 'test', '2021-08-04 21:31:31', '2021-08-04 21:31:31'),
(283, 141, 'Session-1', '2021-08-05 19:03:00', NULL, '2021-08-04 21:34:38', '2021-08-04 21:34:38'),
(284, 142, 'Session-1', '2021-08-05 20:00:00', 'test', '2021-08-04 21:38:46', '2021-08-04 21:38:46'),
(285, 142, 'Session-2', '2021-08-20 22:00:00', 'test1', '2021-08-04 21:38:46', '2021-08-04 21:38:46'),
(286, 143, 'Session-1', '2021-08-06 02:00:00', 'Test comment', '2021-08-05 03:26:13', '2021-08-05 03:26:13'),
(287, 144, 'English CC', '2021-08-07 19:00:00', 'abc', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(288, 144, 'ENGLISH CC1', '2021-08-08 20:00:00', 'efg', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(289, 144, 'Session-ENGLISH CC3', '2021-08-08 20:00:00', 'hij', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(290, 144, 'English CC4', '2021-08-08 20:00:00', 'klm', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(291, 145, 'Test Session', '2021-08-07 19:00:00', 'abc', '2021-08-05 18:30:28', '2021-08-05 18:30:28'),
(292, 146, 'Session-1', '2021-08-05 01:00:00', NULL, '2021-08-05 22:55:49', '2021-08-05 22:55:49'),
(293, 146, 'Session-2', '2021-08-05 02:00:00', NULL, '2021-08-05 22:55:49', '2021-08-05 22:55:49'),
(294, 147, 'Session-1', '2021-08-07 02:00:00', NULL, '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(295, 147, 'Session-2', '2021-08-08 03:00:00', NULL, '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(296, 148, 'BASIC', '2021-08-07 21:00:00', 'abc', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(297, 148, 'BASIC 2', '2021-08-07 00:00:00', 'xyz', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(298, 148, 'BASIC 3', '2021-09-07 00:00:00', 'pqr', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(299, 148, 'BASIC 4', '2021-08-07 00:00:00', 'lmn', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(300, 149, 'Session-1', '2021-08-07 18:00:00', 'test1', '2021-08-07 23:44:33', '2021-08-07 23:44:33'),
(301, 150, 'BASIC 1', '2021-08-07 01:00:00', 'abc', '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(302, 150, 'BASIC 2', '2021-08-07 01:00:00', 'xyz', '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(303, 150, 'BASIC 3', '2021-08-07 01:00:00', 'lmn', '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(304, 151, 'BASIC I', '2021-08-07 22:00:00', 'abcc', '2021-08-08 00:10:50', '2021-08-08 00:10:50'),
(305, 152, 'Negative class', '2021-08-07 23:00:00', 'minus 2 seats', '2021-08-08 00:16:46', '2021-08-08 00:16:46'),
(306, 153, 'Session-11', '2021-08-10 14:00:00', 'test', '2021-08-09 19:41:11', '2021-08-09 19:41:11'),
(307, 154, 'Session-1', '2021-08-09 14:00:00', NULL, '2021-08-09 20:02:07', '2021-08-09 20:02:07'),
(308, 155, 'Session-1', '2021-08-09 15:00:00', 'test', '2021-08-09 20:10:22', '2021-08-09 20:10:22'),
(309, 156, 'Session-1', '2021-08-09 14:00:00', 'test2', '2021-08-09 20:29:43', '2021-08-09 20:29:43'),
(310, 157, 'Session-1', '2021-08-09 14:00:00', NULL, '2021-08-09 20:35:34', '2021-08-09 20:35:34'),
(311, 157, 'Session-2', '2021-08-09 14:00:00', NULL, '2021-08-09 20:35:34', '2021-08-09 20:35:34'),
(312, 158, 'Phy MON 1', '2021-08-09 09:00:00', 'abc', '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(313, 158, 'Phy MON 2', '2021-08-09 09:00:00', 'xyz', '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(314, 158, 'Phy MON 3', '2021-08-09 09:00:00', 'pqr', '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(315, 159, 'Phy Mon 1', '2021-08-09 21:00:00', 'abc', '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(316, 159, 'Phy Mon 2', '2021-08-09 21:00:00', 'pqr', '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(317, 159, 'Phy Mon 2', '2021-08-09 21:00:00', 'xyz', '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(318, 160, 'Session-1', '2021-08-10 15:17:00', NULL, '2021-08-09 22:17:36', '2021-08-09 22:17:36'),
(319, 161, 'New 1', '2021-08-09 17:00:00', 'abc', '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(320, 161, 'New 2', '2021-08-09 18:00:00', 'pqr', '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(321, 161, 'New 2', '2021-08-09 19:00:00', 'xyz', '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(322, 162, 'Fractional seats', '2021-08-09 23:00:00', 'abc', '2021-08-09 22:56:47', '2021-08-09 22:56:47'),
(323, 163, 'Session-1', '2021-08-10 10:00:00', 'xyz', '2021-08-09 23:22:04', '2021-08-09 23:22:04'),
(324, 163, 'Session-2', '2021-08-10 10:00:00', 'pqr', '2021-08-09 23:22:04', '2021-08-09 23:22:04'),
(325, 164, 'Session-1', '2021-08-09 19:00:00', NULL, '2021-08-09 23:35:02', '2021-08-09 23:35:02'),
(326, 164, 'Session-2', '2021-08-09 20:00:00', NULL, '2021-08-09 23:35:02', '2021-08-09 23:35:02'),
(327, 165, 'Session-1', '2021-08-10 22:00:00', 'abc', '2021-08-10 00:39:14', '2021-08-10 00:39:14'),
(328, 165, 'Session-2', '2021-08-10 18:00:00', 'pqr', '2021-08-10 00:39:14', '2021-08-10 00:39:14'),
(329, 166, 'Session-1', '2021-08-09 19:00:00', NULL, '2021-08-10 01:24:34', '2021-08-10 01:24:34'),
(330, 167, 'Session-1', '2021-08-09 19:00:00', 'test2', '2021-08-10 01:31:22', '2021-08-10 01:31:22'),
(331, 168, 'week 1', '2021-08-15 16:00:00', NULL, '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(332, 168, 'week 2', '2021-08-22 16:00:00', NULL, '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(333, 168, 'Week 3', '2021-08-29 16:00:00', NULL, '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(334, 169, 'Session-1', '2021-08-12 20:00:00', NULL, '2021-08-10 06:13:57', '2021-08-10 06:13:57'),
(335, 170, 'Session-1', '2021-08-12 21:00:00', NULL, '2021-08-10 06:18:30', '2021-08-10 06:18:30'),
(336, 171, 'Session-1', '2021-08-11 13:00:00', 'abc', '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(337, 171, 'Session-2', '2021-08-11 13:00:00', NULL, '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(338, 171, 'Session-3', '2021-08-11 13:00:00', NULL, '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(339, 172, 'Session-1', '2021-08-11 01:00:00', NULL, '2021-08-11 05:09:14', '2021-08-11 05:09:14'),
(340, 173, 'Session-1', '2021-08-11 01:00:00', NULL, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(341, 173, 'Session-2', '2021-08-11 01:00:00', NULL, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(342, 173, 'Session-3', '2021-08-12 19:00:00', NULL, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(343, 173, 'Session-4', '2021-08-12 19:00:00', NULL, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(344, 174, 'Session-1', '2021-08-11 13:00:00', NULL, '2021-08-11 06:34:40', '2021-08-11 06:34:40'),
(345, 174, 'Session-2', '2021-08-11 13:00:00', NULL, '2021-08-11 06:34:40', '2021-08-11 06:34:40'),
(346, 175, 'Session-1', '2021-08-11 13:00:00', 'test', '2021-08-11 06:38:07', '2021-08-11 06:38:07'),
(347, 176, 'Session-1', '2021-08-11 12:00:00', 'abc', '2021-08-11 16:34:45', '2021-08-11 16:34:45'),
(348, 176, 'Session-2', '2021-08-11 12:00:00', NULL, '2021-08-11 16:34:45', '2021-08-11 16:34:45'),
(349, 177, 'Session-1', '2021-08-11 09:30:00', 'test', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(350, 177, 'Session-2', '2021-08-11 09:30:00', 'test2', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(351, 177, 'Session-3', '2021-08-11 09:30:00', 'test2', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(352, 177, 'Session-4', '2021-08-12 11:00:00', 'wadede', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(353, 178, 'Session-1', '2021-08-15 20:00:00', 'pqr', '2021-08-12 03:27:49', '2021-08-12 03:27:49'),
(354, 178, 'Session-2', '2021-08-11 21:00:00', 'xyz', '2021-08-12 03:27:49', '2021-08-12 03:27:49'),
(355, 179, 'Session-1', '2021-08-11 21:00:00', 'abc', '2021-08-12 03:32:20', '2021-08-12 03:32:20'),
(356, 179, 'Session-2', '2021-08-11 22:00:00', 'pqr', '2021-08-12 03:32:20', '2021-08-12 03:32:20'),
(357, 180, 'Session-1', '2021-08-16 19:00:00', '11+ Mock 1', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(358, 180, 'Session-2', '2021-08-17 18:30:00', '11+ Mock 2', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(359, 180, 'Session-3', '2021-08-18 18:30:00', '11+ Mock 3', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(360, 180, 'Session-4', '2021-08-19 18:30:00', '11+ Mock 4', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(361, 181, 'Session-1', '2021-08-16 21:00:00', NULL, '2021-08-17 02:17:37', '2021-08-17 02:17:37'),
(362, 182, 'Session-1', '2021-08-16 22:00:00', NULL, '2021-08-17 02:19:46', '2021-08-17 02:19:46'),
(363, 183, 'Session-1', '2021-08-18 22:00:00', NULL, '2021-08-17 06:30:11', '2021-08-17 06:30:11'),
(364, 184, 'Session-1', '2021-08-17 03:00:00', NULL, '2021-08-17 07:59:23', '2021-08-17 07:59:23'),
(365, 185, 'Session-1', '2021-08-17 11:00:00', NULL, '2021-08-17 15:14:44', '2021-08-17 15:14:44'),
(366, 186, 'Session-1', '2021-08-17 14:00:00', NULL, '2021-08-17 19:10:25', '2021-08-17 19:10:25'),
(367, 186, 'Session-2', '2021-08-18 14:00:00', NULL, '2021-08-17 19:10:25', '2021-08-17 19:10:25'),
(368, 187, 'Session-1', '2021-08-19 22:00:00', NULL, '2021-08-17 19:37:20', '2021-08-17 19:37:20'),
(369, 188, 'Session-1', '2021-08-17 16:00:00', NULL, '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(370, 188, 'Session-2', '2021-08-18 16:00:00', NULL, '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(371, 189, 'Session-1', '2021-08-17 23:00:00', 'test', '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(372, 189, 'Session-2', '2021-08-18 22:00:00', 'test2', '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(373, 189, 'Session-3', '2021-08-21 18:00:00', 'test3', '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(374, 180, 'Maths Session', '2021-08-19 15:08:00', NULL, '2021-08-17 22:09:42', '2021-08-17 22:09:42'),
(375, 191, 'Session-1', '2021-08-17 17:00:00', NULL, '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(376, 191, 'Session-2', '2021-08-18 21:00:00', NULL, '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(377, 192, 'Session-1', '2021-08-17 22:00:00', 'test', '2021-08-17 23:29:55', '2021-08-17 23:29:55'),
(378, 193, 'Session-1', '2021-08-17 20:00:00', 'test2', '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(379, 193, 'Session-2', '2021-08-18 23:00:00', 'test', '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(380, 194, 'Session-1', '2021-08-17 21:00:00', 'test', '2021-08-18 00:31:45', '2021-08-18 00:31:45'),
(381, 194, 'Session-2', '2021-08-18 20:00:00', 'wadede', '2021-08-18 00:31:45', '2021-08-18 00:31:45'),
(382, 195, 'Session-1', '2021-08-20 15:00:00', NULL, '2021-08-20 04:06:22', '2021-08-20 04:06:22'),
(383, 195, 'Session-2', '2021-08-21 19:00:00', NULL, '2021-08-20 04:06:22', '2021-08-20 04:06:22'),
(384, 196, 'Session-1', '2021-08-19 22:00:00', NULL, '2021-08-20 04:15:49', '2021-08-20 04:15:49'),
(385, 197, 'Session-1', '2021-08-19 22:00:00', 'test1', '2021-08-20 04:17:11', '2021-08-20 04:17:11'),
(386, 197, 'Session-2', '2021-08-20 21:00:00', 'test2', '2021-08-20 04:17:11', '2021-08-20 04:17:11'),
(387, 198, 'Session-1', '2021-08-19 22:00:00', 'test', '2021-08-20 04:29:23', '2021-08-20 04:29:23'),
(388, 198, 'Session-2', '2021-08-21 20:00:00', 'test2', '2021-08-20 04:29:23', '2021-08-20 04:29:23'),
(389, 199, 'Session-1', '2021-08-21 12:00:00', '11+ Mock Demo 1', '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(390, 199, 'Session-2', '2021-08-22 12:00:00', '11+ Mock Demo 2', '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(391, 199, 'Session-3', '2021-08-23 12:00:00', '11+ Mock Demo 3', '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(392, 199, 'Session-4', '2021-08-24 12:00:00', '11+ Mock Demo 4', '2021-08-21 18:50:08', '2021-08-21 18:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `batch_topics`
--

CREATE TABLE `batch_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_session_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch_topics`
--

INSERT INTO `batch_topics` (`id`, `batch_session_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(2, 2, 3, '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(3, 3, 3, '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(4, 4, 3, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(5, 5, 3, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(6, 6, 3, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(7, 7, 3, '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(8, 8, 3, '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(9, 9, 3, '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(10, 10, 3, '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(11, 11, 3, '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(12, 12, 3, '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(13, 13, 1, '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(14, 14, 1, '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(15, 15, 1, '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(16, 16, 4, '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(17, 17, 3, '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(18, 18, 4, '2021-05-26 15:04:09', '2021-05-26 15:04:09'),
(19, 19, 3, '2021-05-26 15:04:09', '2021-05-26 15:04:09'),
(20, 20, 3, '2021-05-26 15:40:57', '2021-05-26 15:40:57'),
(21, 21, 1, '2021-05-26 16:49:31', '2021-05-26 16:49:31'),
(22, 22, 1, '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(23, 23, 2, '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(24, 24, 2, '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(25, 25, 7, '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(26, 26, 7, '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(27, 27, 3, '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(28, 28, 4, '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(29, 29, 1, '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(30, 30, 1, '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(31, 31, 1, '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(32, 32, 1, '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(33, 33, 2, '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(34, 34, 1, '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(35, 35, 1, '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(36, 36, 2, '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(37, 37, 3, '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(38, 38, 3, '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(39, 39, 1, '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(40, 40, 1, '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(41, 41, 1, '2021-05-30 02:34:03', '2021-05-30 02:34:03'),
(42, 42, 1, '2021-06-02 02:05:47', '2021-06-02 02:05:47'),
(43, 43, 5, '2021-06-02 05:56:42', '2021-06-02 05:56:42'),
(44, 44, 6, '2021-06-02 05:56:42', '2021-06-02 05:56:42'),
(45, 45, 1, '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(46, 46, 1, '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(47, 47, 1, '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(48, 48, 1, '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(49, 49, 1, '2021-06-05 17:31:19', '2021-06-05 17:31:19'),
(50, 50, 1, '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(51, 51, 2, '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(52, 52, 1, '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(53, 53, 1, '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(54, 54, 1, '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(55, 55, 1, '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(56, 56, 1, '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(57, 57, 2, '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(58, 58, 1, '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(59, 59, 1, '2021-06-07 23:29:40', '2021-06-07 23:29:40'),
(60, 60, 1, '2021-06-07 23:29:40', '2021-06-07 23:29:40'),
(61, 61, 1, '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(62, 62, 1, '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(63, 63, 1, '2021-06-08 02:17:44', '2021-06-08 02:17:44'),
(64, 64, 3, '2021-06-08 02:35:24', '2021-06-08 02:35:24'),
(65, 65, 1, '2021-06-08 03:12:52', '2021-06-08 03:12:52'),
(66, 66, 1, '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(67, 67, 1, '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(68, 68, 1, '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(69, 69, 1, '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(70, 70, 3, '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(71, 71, 3, '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(72, 72, 3, '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(73, 73, 3, '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(74, 74, 1, '2021-06-12 03:03:02', '2021-06-12 03:03:02'),
(75, 75, 2, '2021-06-12 03:03:02', '2021-06-12 03:03:02'),
(76, 76, 1, '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(77, 77, 1, '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(78, 78, 1, '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(79, 79, 1, '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(80, 80, 1, '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(81, 81, 1, '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(82, 82, 1, '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(83, 83, 1, '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(84, 84, 1, '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(85, 85, 1, '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(86, 86, 1, '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(87, 87, 1, '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(88, 88, 1, '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(89, 89, 1, '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(90, 90, 1, '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(91, 91, 1, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(92, 92, 1, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(93, 93, 1, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(94, 94, 1, '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(95, 95, 3, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(96, 96, 3, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(97, 97, 3, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(98, 98, 3, '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(99, 99, 1, '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(100, 100, 1, '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(101, 101, 1, '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(102, 102, 1, '2021-06-30 02:28:09', '2021-06-30 02:28:09'),
(103, 103, 2, '2021-06-30 02:28:09', '2021-06-30 02:28:09'),
(104, 104, 1, '2021-06-30 07:37:53', '2021-06-30 07:37:53'),
(105, 105, 1, '2021-06-30 07:56:03', '2021-06-30 07:56:03'),
(106, 106, 1, '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(107, 107, 1, '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(108, 108, 1, '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(109, 109, 1, '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(110, 110, 1, '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(111, 111, 1, '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(112, 112, 1, '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(113, 113, 1, '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(114, 114, 1, '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(115, 115, 1, '2021-07-01 18:40:38', '2021-07-01 18:40:38'),
(116, 116, 1, '2021-07-01 18:40:39', '2021-07-01 18:40:39'),
(117, 117, 1, '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(118, 118, 1, '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(119, 119, 1, '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(120, 120, 1, '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(121, 121, 1, '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(122, 122, 1, '2021-07-02 01:27:34', '2021-07-02 01:27:34'),
(123, 123, 1, '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(124, 124, 1, '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(125, 125, 1, '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(126, 126, 3, '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(127, 127, 3, '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(128, 128, 3, '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(129, 129, 1, '2021-07-07 23:35:10', '2021-07-07 23:35:10'),
(130, 130, 1, '2021-07-07 23:35:54', '2021-07-07 23:35:54'),
(131, 131, 1, '2021-07-07 23:35:54', '2021-07-07 23:35:54'),
(132, 132, 1, '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(133, 133, 2, '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(134, 134, 1, '2021-07-10 21:58:23', '2021-07-10 21:58:23'),
(135, 135, 1, '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(136, 136, 1, '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(137, 137, 1, '2021-07-10 22:16:21', '2021-07-10 22:16:21'),
(138, 138, 1, '2021-07-10 22:36:14', '2021-07-10 22:36:14'),
(139, 139, 1, '2021-07-10 22:37:49', '2021-07-10 22:37:49'),
(140, 140, 1, '2021-07-10 23:57:42', '2021-07-10 23:57:42'),
(141, 141, 1, '2021-07-11 01:24:02', '2021-07-11 01:24:02'),
(142, 142, 1, '2021-07-11 01:27:48', '2021-07-11 01:27:48'),
(143, 143, 1, '2021-07-13 02:01:06', '2021-07-13 02:01:06'),
(144, 144, 1, '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(145, 145, 1, '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(146, 146, 1, '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(147, 147, 1, '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(148, 148, 1, '2021-07-15 03:55:12', '2021-07-15 03:55:12'),
(149, 149, 2, '2021-07-15 03:55:12', '2021-07-15 03:55:12'),
(150, 150, 1, '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(151, 151, 2, '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(152, 152, 3, '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(153, 153, 4, '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(154, 154, 1, '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(155, 155, 2, '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(156, 156, 5, '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(157, 157, 6, '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(158, 158, 1, '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(159, 159, 2, '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(160, 160, 1, '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(161, 161, 1, '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(162, 162, 2, '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(163, 163, 3, '2021-07-21 14:50:40', '2021-07-21 14:50:40'),
(164, 164, 3, '2021-07-21 15:03:02', '2021-07-21 15:03:02'),
(165, 165, 3, '2021-07-21 15:03:02', '2021-07-21 15:03:02'),
(166, 166, 3, '2021-07-21 15:03:05', '2021-07-21 15:03:05'),
(167, 167, 3, '2021-07-21 15:03:05', '2021-07-21 15:03:05'),
(168, 168, 3, '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(169, 169, 3, '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(170, 170, 1, '2021-07-21 15:10:57', '2021-07-21 15:10:57'),
(171, 171, 2, '2021-07-21 15:10:57', '2021-07-21 15:10:57'),
(172, 172, 1, '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(173, 173, 2, '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(174, 174, 1, '2021-07-21 19:19:54', '2021-07-21 19:19:54'),
(175, 175, 3, '2021-07-22 15:26:18', '2021-07-22 15:26:18'),
(176, 176, 1, '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(177, 177, 1, '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(178, 178, 3, '2021-07-26 21:09:05', '2021-07-26 21:09:05'),
(179, 179, 3, '2021-07-26 21:09:07', '2021-07-26 21:09:07'),
(180, 180, 1, '2021-07-26 23:00:01', '2021-07-26 23:00:01'),
(181, 181, 1, '2021-07-26 23:00:01', '2021-07-26 23:00:01'),
(182, 182, 1, '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(183, 183, 1, '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(184, 184, 1, '2021-07-26 23:37:58', '2021-07-26 23:37:58'),
(185, 185, 1, '2021-07-27 00:20:06', '2021-07-27 00:20:06'),
(186, 186, 1, '2021-07-27 18:38:25', '2021-07-27 18:38:25'),
(187, 187, 1, '2021-07-27 18:38:27', '2021-07-27 18:38:27'),
(188, 188, 3, '2021-07-27 18:45:42', '2021-07-27 18:45:42'),
(189, 189, 3, '2021-07-27 18:45:43', '2021-07-27 18:45:43'),
(190, 190, 3, '2021-07-27 19:00:16', '2021-07-27 19:00:16'),
(191, 191, 1, '2021-07-27 19:04:08', '2021-07-27 19:04:08'),
(192, 192, 5, '2021-07-27 19:05:53', '2021-07-27 19:05:53'),
(193, 193, 3, '2021-07-28 16:57:47', '2021-07-28 16:57:47'),
(194, 194, 3, '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(195, 195, 3, '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(196, 197, 3, '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(197, 198, 3, '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(198, 200, 3, '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(199, 201, 3, '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(200, 203, 3, '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(201, 204, 3, '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(202, 205, 3, '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(203, 206, 3, '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(204, 209, 3, '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(205, 210, 3, '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(206, 212, 3, '2021-07-30 01:31:06', '2021-07-30 01:31:06'),
(207, 213, 3, '2021-07-30 01:31:06', '2021-07-30 01:31:06'),
(208, 214, 3, '2021-07-30 01:31:07', '2021-07-30 01:31:07'),
(209, 215, 3, '2021-07-30 01:31:07', '2021-07-30 01:31:07'),
(210, 216, 3, '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(211, 217, 3, '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(212, 219, 3, '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(213, 220, 3, '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(214, 222, 3, '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(215, 223, 3, '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(216, 225, 3, '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(217, 226, 3, '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(218, 228, 3, '2021-07-30 13:24:44', '2021-07-30 13:24:44'),
(219, 229, 3, '2021-07-30 13:24:44', '2021-07-30 13:24:44'),
(220, 230, 3, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(221, 231, 3, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(222, 232, 3, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(223, 233, 3, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(224, 234, 3, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(225, 235, 3, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(226, 236, 1, '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(227, 237, 1, '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(228, 238, 1, '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(229, 239, 1, '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(230, 241, 1, '2021-07-30 13:41:09', '2021-07-30 13:41:09'),
(231, 242, 1, '2021-07-30 13:41:09', '2021-07-30 13:41:09'),
(232, 243, 1, '2021-07-31 00:06:59', '2021-07-31 00:06:59'),
(233, 244, 1, '2021-07-31 00:08:58', '2021-07-31 00:08:58'),
(234, 245, 1, '2021-07-31 00:09:18', '2021-07-31 00:09:18'),
(235, 246, 5, '2021-07-31 00:10:08', '2021-07-31 00:10:08'),
(236, 247, 6, '2021-07-31 00:10:54', '2021-07-31 00:10:54'),
(237, 248, 3, '2021-07-31 00:12:19', '2021-07-31 00:12:19'),
(238, 249, 1, '2021-07-31 00:14:40', '2021-07-31 00:14:40'),
(239, 250, 1, '2021-07-31 00:14:40', '2021-07-31 00:14:40'),
(240, 251, 1, '2021-07-31 00:15:07', '2021-07-31 00:15:07'),
(241, 252, 1, '2021-07-31 00:16:42', '2021-07-31 00:16:42'),
(242, 253, 1, '2021-07-31 07:30:21', '2021-07-31 07:30:21'),
(243, 254, 1, '2021-07-31 07:30:21', '2021-07-31 07:30:21'),
(244, 255, 3, '2021-07-31 07:34:36', '2021-07-31 07:34:36'),
(245, 256, 3, '2021-07-31 07:34:36', '2021-07-31 07:34:36'),
(246, 257, 1, '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(247, 258, 2, '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(248, 259, 1, '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(249, 260, 1, '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(250, 261, 2, '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(251, 262, 1, '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(252, 263, 4, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(253, 264, 3, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(254, 265, 3, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(255, 266, 3, '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(256, 267, 1, '2021-08-04 18:49:46', '2021-08-04 18:49:46'),
(257, 268, 3, '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(258, 269, 4, '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(259, 270, 4, '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(260, 271, 4, '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(261, 272, 1, '2021-08-04 21:31:16', '2021-08-04 21:31:16'),
(262, 273, 1, '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(263, 274, 1, '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(264, 275, 1, '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(265, 276, 1, '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(266, 277, 1, '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(267, 278, 1, '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(268, 279, 1, '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(269, 280, 1, '2021-08-04 21:31:30', '2021-08-04 21:31:30'),
(270, 281, 1, '2021-08-04 21:31:30', '2021-08-04 21:31:30'),
(271, 282, 1, '2021-08-04 21:31:31', '2021-08-04 21:31:31'),
(272, 283, 3, '2021-08-04 21:34:38', '2021-08-04 21:34:38'),
(273, 284, 2, '2021-08-04 21:38:46', '2021-08-04 21:38:46'),
(274, 285, 1, '2021-08-04 21:38:46', '2021-08-04 21:38:46'),
(275, 286, 1, '2021-08-05 03:26:13', '2021-08-05 03:26:13'),
(276, 287, 1, '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(277, 288, 1, '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(278, 289, 1, '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(279, 290, 1, '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(280, 291, 4, '2021-08-05 18:30:28', '2021-08-05 18:30:28'),
(281, 292, 7, '2021-08-05 22:55:49', '2021-08-05 22:55:49'),
(282, 293, 7, '2021-08-05 22:55:49', '2021-08-05 22:55:49'),
(283, 294, 3, '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(284, 295, 4, '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(285, 296, 7, '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(286, 297, 8, '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(287, 298, 8, '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(288, 299, 8, '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(289, 300, 1, '2021-08-07 23:44:33', '2021-08-07 23:44:33'),
(290, 301, 7, '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(291, 302, 7, '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(292, 303, 7, '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(293, 304, 7, '2021-08-08 00:10:50', '2021-08-08 00:10:50'),
(294, 305, 7, '2021-08-08 00:16:46', '2021-08-08 00:16:46'),
(295, 306, 1, '2021-08-09 19:41:11', '2021-08-09 19:41:11'),
(296, 307, 1, '2021-08-09 20:02:07', '2021-08-09 20:02:07'),
(297, 308, 3, '2021-08-09 20:10:22', '2021-08-09 20:10:22'),
(298, 309, 1, '2021-08-09 20:29:43', '2021-08-09 20:29:43'),
(299, 310, 1, '2021-08-09 20:35:34', '2021-08-09 20:35:34'),
(300, 311, 1, '2021-08-09 20:35:34', '2021-08-09 20:35:34'),
(301, 312, 8, '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(302, 313, 8, '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(303, 314, 8, '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(304, 315, 7, '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(305, 316, 7, '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(306, 317, 7, '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(307, 318, 1, '2021-08-09 22:17:36', '2021-08-09 22:17:36'),
(308, 319, 7, '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(309, 320, 7, '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(310, 321, 8, '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(311, 322, 7, '2021-08-09 22:56:47', '2021-08-09 22:56:47'),
(312, 323, 7, '2021-08-09 23:22:04', '2021-08-09 23:22:04'),
(313, 324, 7, '2021-08-09 23:22:04', '2021-08-09 23:22:04'),
(314, 325, 4, '2021-08-09 23:35:02', '2021-08-09 23:35:02'),
(315, 326, 3, '2021-08-09 23:35:02', '2021-08-09 23:35:02'),
(316, 327, 7, '2021-08-10 00:39:14', '2021-08-10 00:39:14'),
(317, 328, 8, '2021-08-10 00:39:14', '2021-08-10 00:39:14'),
(318, 329, 1, '2021-08-10 01:24:34', '2021-08-10 01:24:34'),
(319, 330, 1, '2021-08-10 01:31:22', '2021-08-10 01:31:22'),
(320, 331, 3, '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(321, 332, 3, '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(322, 333, 3, '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(323, 334, 1, '2021-08-10 06:13:57', '2021-08-10 06:13:57'),
(324, 335, 1, '2021-08-10 06:18:30', '2021-08-10 06:18:30'),
(325, 336, 7, '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(326, 337, 8, '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(327, 338, 8, '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(328, 339, 5, '2021-08-11 05:09:14', '2021-08-11 05:09:14'),
(329, 340, 3, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(330, 341, 3, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(331, 342, 3, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(332, 343, 3, '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(333, 344, 1, '2021-08-11 06:34:40', '2021-08-11 06:34:40'),
(334, 345, 1, '2021-08-11 06:34:40', '2021-08-11 06:34:40'),
(335, 346, 3, '2021-08-11 06:38:07', '2021-08-11 06:38:07'),
(336, 347, 7, '2021-08-11 16:34:45', '2021-08-11 16:34:45'),
(337, 348, 7, '2021-08-11 16:34:45', '2021-08-11 16:34:45'),
(338, 349, 1, '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(339, 350, 1, '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(340, 351, 1, '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(341, 352, 1, '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(342, 353, 7, '2021-08-12 03:27:49', '2021-08-12 03:27:49'),
(343, 354, 7, '2021-08-12 03:27:49', '2021-08-12 03:27:49'),
(344, 355, 7, '2021-08-12 03:32:20', '2021-08-12 03:32:20'),
(345, 356, 7, '2021-08-12 03:32:20', '2021-08-12 03:32:20'),
(346, 357, 4, '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(347, 358, 3, '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(348, 359, 3, '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(349, 360, 3, '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(350, 361, 1, '2021-08-17 02:17:37', '2021-08-17 02:17:37'),
(351, 362, 1, '2021-08-17 02:19:46', '2021-08-17 02:19:46'),
(352, 363, 7, '2021-08-17 06:30:11', '2021-08-17 06:30:11'),
(353, 364, 1, '2021-08-17 07:59:23', '2021-08-17 07:59:23'),
(354, 365, 1, '2021-08-17 15:14:44', '2021-08-17 15:14:44'),
(355, 366, 7, '2021-08-17 19:10:25', '2021-08-17 19:10:25'),
(356, 367, 8, '2021-08-17 19:10:25', '2021-08-17 19:10:25'),
(357, 368, 1, '2021-08-17 19:37:20', '2021-08-17 19:37:20'),
(358, 369, 1, '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(359, 370, 1, '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(360, 371, 1, '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(361, 372, 2, '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(362, 373, 1, '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(363, 374, 3, '2021-08-17 22:09:42', '2021-08-17 22:09:42'),
(364, 375, 1, '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(365, 376, 1, '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(366, 377, 1, '2021-08-17 23:29:55', '2021-08-17 23:29:55'),
(367, 378, 1, '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(368, 379, 1, '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(369, 380, 3, '2021-08-18 00:31:45', '2021-08-18 00:31:45'),
(370, 381, 4, '2021-08-18 00:31:45', '2021-08-18 00:31:45'),
(371, 382, 3, '2021-08-20 04:06:22', '2021-08-20 04:06:22'),
(372, 383, 3, '2021-08-20 04:06:22', '2021-08-20 04:06:22'),
(373, 384, 1, '2021-08-20 04:15:49', '2021-08-20 04:15:49'),
(374, 385, 7, '2021-08-20 04:17:11', '2021-08-20 04:17:11'),
(375, 386, 7, '2021-08-20 04:17:11', '2021-08-20 04:17:11'),
(376, 387, 5, '2021-08-20 04:29:23', '2021-08-20 04:29:23'),
(377, 388, 5, '2021-08-20 04:29:23', '2021-08-20 04:29:23'),
(378, 389, 3, '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(379, 390, 3, '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(380, 391, 3, '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(381, 392, 3, '2021-08-21 18:50:08', '2021-08-21 18:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `class_masters`
--

CREATE TABLE `class_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_masters`
--

INSERT INTO `class_masters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Key Stage 2', '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(2, 'Key Stage 3', '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(3, 'GCSE', '2021-07-31 11:15:29', '2021-07-31 11:17:36'),
(4, '11 + ', '2021-07-31 11:17:42', '2021-07-31 11:17:48'),
(5, '11 + Mock', '2021-07-31 11:17:42', '2021-07-31 11:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `class_settings`
--

CREATE TABLE `class_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_settings`
--

INSERT INTO `class_settings` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prabhat Morning Math Class', NULL, NULL),
(2, 'Ankit Morning English Class', NULL, NULL),
(3, 'Ravi Evening Computer Class', NULL, NULL),
(4, 'Amit Evening Php Class', NULL, NULL),
(5, 'Others', NULL, NULL),
(6, 'test by ramu class', '2021-05-25 05:34:02', '2021-05-25 05:34:02'),
(7, 'test for homework', '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(8, 'test  by raju', '2021-05-26 15:40:57', '2021-05-26 15:40:57'),
(9, 'priyanka by english class', '2021-05-26 16:49:31', '2021-05-26 16:49:31'),
(10, 'ragni by english class', '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(11, 'Physics Evening Class', '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(12, 'Maths Morning Class', '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(13, 'Homework Test Class', '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(14, 'Homework Testing Class', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(15, 'Test for teacher 1', '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(16, 'test add question', '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(17, 'test by upload pdf', '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(18, 'alka by test', '2021-06-02 02:05:47', '2021-06-02 02:05:47'),
(19, 'test by alka for archieve', '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(20, 'alka by php class for today test', '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(21, 'test homework by alka', '2021-06-05 17:31:19', '2021-06-05 17:31:19'),
(22, 'Maths For Class 6th Morning Batch', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(23, 'math class by amit', '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(24, 'Home English Demo Class', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(25, 'Test by today for demo', '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(26, 'test for demo', '2021-06-08 02:17:44', '2021-06-08 02:17:44'),
(27, 'String Theory', '2021-06-08 02:35:24', '2021-06-08 02:35:24'),
(28, 'last test for  demo', '2021-06-08 03:12:52', '2021-06-08 03:12:52'),
(29, 'demo home work', '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(30, 'ritu by php class', '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(31, 'Rishu Demo Test', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(32, 'sunday class by alka', '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(33, 'Demo for testing by today', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(34, 'cheack by me', '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(35, 'demo class of nodejs', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(36, 'Demo On Testing For Php Class', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(37, '40 day program', '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(38, 'Summer', '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(39, 'alka by last test for demo class', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(40, 'alka last test for demo class', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(41, 'final demo by alka', '2021-07-01 16:31:14', '2021-07-01 16:31:14'),
(42, 'operation by demo class', '2021-07-01 18:40:38', '2021-07-01 18:40:38'),
(43, 'operation by demo', '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(44, 'Sam Wallington Math Summer Booster', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(45, 'Test 6Clock by Alka', '2021-07-02 01:27:34', '2021-07-02 01:27:34'),
(46, 'New Operation class', '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(47, 'Alka by Manage Class', '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(48, 'Manage Class By Alka', '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(49, 'Rishu Demo 14', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(50, 'MarkSheet for test', '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(51, 'Ragni Php Class', '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(52, 'Riya Java Class', '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(53, 'Suraj C Class', '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(54, 'New Anand\'s Class', '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(55, 'New class for Marksheet test', '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(56, 'Testing by Admin', '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(57, 'Alka', '2021-07-21 19:19:54', '2021-07-21 19:19:54'),
(58, 'radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha', '2021-07-22 15:26:18', '2021-07-22 15:26:18'),
(59, 'ScoreSheet CLass', '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(60, 'Demo', '2021-07-26 21:09:05', '2021-07-26 21:09:05'),
(61, 'Rina BY Eng Class', '2021-07-26 23:37:58', '2021-07-26 23:37:58'),
(62, 'New Scoresheet Class', '2021-07-27 00:20:06', '2021-07-27 00:20:06'),
(63, 'ScoreSheets Demo Final', '2021-07-27 18:38:25', '2021-07-27 18:38:25'),
(64, 'Ravi by eng class', '2021-07-27 18:45:42', '2021-07-27 18:45:42'),
(65, 'Ravi by essay class', '2021-07-27 19:05:53', '2021-07-27 19:05:53'),
(66, 'Monday Maths', '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(67, 'Rishu_Ayon_Demo_Maths', '2021-07-30 13:24:30', '2021-07-30 13:24:30'),
(68, 'Rishu_Ayon Demo1', '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(69, 'New Class', '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(70, 'Operation Class', '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(71, 'Monday Maths 11+', '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(72, 'Rishu Demo 11+ Mock', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(73, 'Anand Scoresheet clas', '2021-08-17 19:10:25', '2021-08-17 19:10:25'),
(74, 'Alka Score Sheets New', '2021-08-17 19:37:20', '2021-08-17 19:37:20'),
(75, 'New Homework Class', '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(76, 'test mks', '2021-08-17 22:09:42', '2021-08-17 22:09:42'),
(77, 'Score Sheet Homework', '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(78, 'Today Score Sheet', '2021-08-17 23:29:55', '2021-08-17 23:29:55'),
(79, 'Test Today Score Sheet', '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(80, 'Rishu Demo 11+ August 21', '2021-08-21 18:50:08', '2021-08-21 18:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `contact_mails`
--

CREATE TABLE `contact_mails` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `schoolName` varchar(250) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `msg` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_mails`
--

INSERT INTO `contact_mails` (`id`, `fullname`, `schoolName`, `mobileNumber`, `created_at`, `updated_at`, `msg`) VALUES
(1, 'fsfytxshvx', 'dvhjvdhjvd', '23456789', '2021-08-03 14:52:41', '2021-08-03 14:52:41', NULL),
(2, 'Alka Singh', 'D.A.V Public School', '1234567654', '2021-08-03 21:11:25', '2021-08-03 21:11:25', NULL),
(3, 'Alka Singh', 'D.A.V Public School', '8467898767', '2021-08-03 21:34:28', '2021-08-03 21:34:28', NULL),
(4, 'Alka Singh', 'D.A.V Public School', '8467898767', '2021-08-03 21:47:26', '2021-08-03 21:47:26', NULL),
(5, 'alka singgg', 'D.A.V Public School', '1234567888799', '2021-08-03 21:47:55', '2021-08-03 21:47:55', NULL),
(6, 'alka singgg', 'D.A.V Public School', '1234567888799', '2021-08-03 21:49:17', '2021-08-03 21:49:17', NULL),
(7, 'alka singgg', 'D.A.V Public School', '1234567888799', '2021-08-03 21:49:21', '2021-08-03 21:49:21', NULL),
(8, 'ritesh singh', 'D.A.V Public School', '54567890876', '2021-08-03 21:49:47', '2021-08-03 21:49:47', NULL),
(9, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:50:20', '2021-08-03 21:50:20', NULL),
(10, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:52:49', '2021-08-03 21:52:49', NULL),
(11, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:52:53', '2021-08-03 21:52:53', NULL),
(12, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:54:09', '2021-08-03 21:54:09', NULL),
(13, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:54:10', '2021-08-03 21:54:10', NULL),
(14, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:56:52', '2021-08-03 21:56:52', NULL),
(15, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 21:59:13', '2021-08-03 21:59:13', NULL),
(16, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 22:05:58', '2021-08-03 22:05:58', NULL),
(17, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 22:08:31', '2021-08-03 22:08:31', NULL),
(18, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 22:09:09', '2021-08-03 22:09:09', NULL),
(19, 'Alka Singh', 'D.A.V Public School', '8765456789', '2021-08-03 22:10:50', '2021-08-03 22:10:50', NULL),
(20, 'Ruban', 'Wallington', '07427021700', '2021-08-09 23:01:00', '2021-08-09 23:01:00', NULL),
(21, 'Ruban', 'Wallington', '07427021700', '2021-08-09 23:01:04', '2021-08-09 23:01:04', NULL),
(22, 'Ruban', 'Wallington', '07427021700', '2021-08-09 23:01:07', '2021-08-09 23:01:07', NULL),
(23, 'Ruban', 'Wallington', '07427021700', '2021-08-09 23:01:09', '2021-08-09 23:01:09', NULL),
(24, 'alka singgg', 'D.A.V Public School', '6543234565', '2021-08-11 02:04:03', '2021-08-11 02:04:03', NULL),
(25, 'alka singgg', 'D.A.V Public School', '6543234565', '2021-08-11 02:09:47', '2021-08-11 02:09:47', NULL),
(26, 'alka singgg', 'D.A.V Public School', '5432123454', '2021-08-11 02:14:45', '2021-08-11 02:14:45', NULL),
(27, 'alka singgg', 'D.A.V Public School', '5432123454', '2021-08-11 02:15:18', '2021-08-11 02:15:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `created_sessions`
--

CREATE TABLE `created_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` int(11) NOT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `created_sessions`
--

INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(1, 1, '73733844746', 'https://us04web.zoom.us/s/73733844746?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImRPSm12T3BUVmhIVUw0d01nekRhU2s2b0FPSUxwajk0TFFYdFhMTmtMbFEuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TFdMY0FFblVBQUFBIiwiZXhwIjoxNjIxODgyMzg1LCJpYXQiOjE2MjE4NzUxODUsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.mMn6MwyREEUkVqYpU9Xe9_I66ldOCHl5q2ZFeBL3spA', 'https://us04web.zoom.us/j/73733844746?pwd=RysrMTVOU0RGa3VncUdQSjdCMlZGZz09', '8y3SGf', 1, '2021-05-25 05:23:06', '2021-05-25 05:23:06'),
(2, 1, '74890689543', 'https://us04web.zoom.us/s/74890689543?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InYzekVhakVBNFpmbnJGZ2Z2aF9KV0xxVlgxZzhrQ09hQ3Rhbnpmc0dpUXcuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TFh2Z0FFblVBQUFBIiwiZXhwIjoxNjIxODgyMzg3LCJpYXQiOjE2MjE4NzUxODcsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.rl5mBpef8wsGDz71E966opkDnp1lrdAx2PQL2vG9p2k', 'https://us04web.zoom.us/j/74890689543?pwd=cEZyNVJ6RHNqZXN0Sk55VDNhVi9zQT09', 'sqVJ36', 1, '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(3, 1, '76642315005', 'https://us04web.zoom.us/s/76642315005?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImplVmIzZ0kxdWpHVkYySWd4RWx0QTFiRjRGbXBOdUtYNkxJbjNhMWZFWW8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TFphb0FFblVBQUFBIiwiZXhwIjoxNjIxODgyMzg5LCJpYXQiOjE2MjE4NzUxODksImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.66sD6E6gEpapvsC0T_oR-ku6kOIPCqqXmK3yMbwmQyo', 'https://us04web.zoom.us/j/76642315005?pwd=Y0xFaDhHSyt2UFIySk5KUkd1ZVdtdz09', 'pn0y8M', 1, '2021-05-25 05:23:09', '2021-05-25 05:23:09'),
(4, 3, '72030527749', 'https://us04web.zoom.us/s/72030527749?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Ing5dVo2LUJJYXp4OG9mdWwzMGVyRjJvSlBqWXBubHV1bkVPX0tCVWpfWFUuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TGVURUFFblVBQUFBIiwiZXhwIjoxNjIxODgyMzk0LCJpYXQiOjE2MjE4NzUxOTQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.u4eSVOfLgkuBvgvCb2qxk2iNH9qD1ryz4CLd4l4-9V8', 'https://us04web.zoom.us/j/72030527749?pwd=UStJbTNWVE1hOVJySFhJUnRKQUtGdz09', '1pkCDv', 1, '2021-05-25 05:23:14', '2021-05-25 05:23:14'),
(5, 3, '75448764206', 'https://us04web.zoom.us/s/75448764206?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IkN4U3pJdjhsZWxCZHBiUHIyQ1pDR043alZCNUJjRy1JbzlIZENrTnJqajQuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TGdRVUFFblVBQUFBIiwiZXhwIjoxNjIxODgyMzk2LCJpYXQiOjE2MjE4NzUxOTYsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.ddLtYrloWsQrD7mMVCxm6Sy58JQoKaYGfnriqFFo_tE', 'https://us04web.zoom.us/j/75448764206?pwd=dDFuR3B2bmRnR3FmTDNjQnlpVmJYdz09', '6i1Jd9', 1, '2021-05-25 05:23:16', '2021-05-25 05:23:16'),
(6, 4, '77755692205', 'https://us04web.zoom.us/s/77755692205?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InVxMjh2MTBMVFNsejl1TUxzYkw1d2JseFBkSDRWUmVLa0JJYzZMa2lRcUkuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TGlIOEFFblVBQUFBIiwiZXhwIjoxNjIxODgyMzk4LCJpYXQiOjE2MjE4NzUxOTgsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.ppDxqoK_w4Zu4nILdPES_SlE3cWoproI4RKtl3GW0us', 'https://us04web.zoom.us/j/77755692205?pwd=RWw1QTVDS05ZSms0WklhSGFtOXhQUT09', 'M9AKRi', 1, '2021-05-25 05:23:18', '2021-05-25 05:23:18'),
(7, 3, '74735665066', 'https://us04web.zoom.us/s/74735665066?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImlPOHNFMmNCSzhUQWRSY0VZOEhBMzZIUlF4bGFOcGFyTnQtUG4ya3NTcmMuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TGpiNEFFblVBQUFBIiwiZXhwIjoxNjIxODgyMzk5LCJpYXQiOjE2MjE4NzUxOTksImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.NcB_1ds5UUYJoDe0KUwukcR_tP8l2pD5bgTtvjCuCjo', 'https://us04web.zoom.us/j/74735665066?pwd=L0gvRjVMYVBYbmFhTmZoSVFUVTZJUT09', 'kJZx5z', 1, '2021-05-25 05:23:19', '2021-05-25 05:23:19'),
(8, 4, '78322704384', 'https://us04web.zoom.us/s/78322704384?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Ik9WT29JOU50RGlZZWpxaEx6NmNiUkpPMlBfcHpTdHBuUzdoX1czSi1TTVEuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TGp5MEFFblVBQUFBIiwiZXhwIjoxNjIxODgyMzk5LCJpYXQiOjE2MjE4NzUxOTksImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.DLaMUqtVn4d7zOBUtvJuBDXPhdppBrt2X_sUQcQUDcQ', 'https://us04web.zoom.us/j/78322704384?pwd=S09IWFVtN3lTV0hhSng3eC9oTENNdz09', '2r0MdB', 1, '2021-05-25 05:23:20', '2021-05-25 05:23:20'),
(9, 4, '78309668685', 'https://us04web.zoom.us/s/78309668685?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjNscXRuNlNhdzgtUndXUDNSdGE4dWROejcwYkQtY3lESWdrWE5wam9mVmcuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TGxxSUFFblVBQUFBIiwiZXhwIjoxNjIxODgyNDAxLCJpYXQiOjE2MjE4NzUyMDEsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.jsl4UKdoV5TXLU6TqKPkD5PmCXwaHM09NE4StOCyKIM', 'https://us04web.zoom.us/j/78309668685?pwd=QjM4S2RJdzNMZzdoVWExOTd6V2g3QT09', '4BHsTd', 1, '2021-05-25 05:23:22', '2021-05-25 05:23:22'),
(10, 2, '72114736112', 'https://us04web.zoom.us/s/72114736112?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImNpWW1UNTZCTGNvRlRoR1lNdkFwNXl3dVBnYW1Mc2c2VnZBNVRXeWtSWGcuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TDJpOEFFblVBQUFBIiwiZXhwIjoxNjIxODgyNDE4LCJpYXQiOjE2MjE4NzUyMTgsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.z49uxFJLSmJyoZQ6JNoAWYhBTlvaOzgCuNYjZT27qL0', 'https://us04web.zoom.us/j/72114736112?pwd=VHlaYkZLMlVMVXlLL0tZaEdCQy81QT09', 'E2mJA5', 1, '2021-05-25 05:23:39', '2021-05-25 05:23:39'),
(11, 2, '74573988688', 'https://us04web.zoom.us/s/74573988688?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjZhc3FCOW5KNGV0LTAxRE84Ti04YkRZZ0QwMUdicFQzZGlXcnl2TmpCcm8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TDRIb0FFblVBQUFBIiwiZXhwIjoxNjIxODgyNDIwLCJpYXQiOjE2MjE4NzUyMjAsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.hGarFDbmiaTK1jKCoCFHeeAkDCgeHyp0Q8QJGKUUMb0', 'https://us04web.zoom.us/j/74573988688?pwd=elRtYXRnUWFPUENDTkJUYlFJSkJTdz09', 'zb4qmJ', 1, '2021-05-25 05:23:40', '2021-05-25 05:23:40'),
(12, 2, '71921265815', 'https://us04web.zoom.us/s/71921265815?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImYzRVNoMTJKSFk3b0tQM0ZWZERmYzhVZ0t5bzFMNmM4NXlybjJJclAxcjQuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5TDZpWUFFblVBQUFBIiwiZXhwIjoxNjIxODgyNDIzLCJpYXQiOjE2MjE4NzUyMjMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.69C1oVyoighN2FETrP_1StwD2tIWZXKKeRZI-m9e2Bo', 'https://us04web.zoom.us/j/71921265815?pwd=ZldNNSsxUWFFUDVvd05rNGRWRi9hUT09', 'sC0trT', 1, '2021-05-25 05:23:43', '2021-05-25 05:23:43'),
(13, 5, '72110966477', 'https://us04web.zoom.us/s/72110966477?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImRBbjQ2aTFkQUdxbTl4SHYxNjNrWUZnUDlhSm4tTEs5OE54U1RIUTFpU0UuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5V09mRUFFblVBQUFBIiwiZXhwIjoxNjIxODgzMDk4LCJpYXQiOjE2MjE4NzU4OTgsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ._Sne-o3TkizbjFI0Thp0kRvn86DEP3l8i2_LS2_H-QA', 'https://us04web.zoom.us/j/72110966477?pwd=RlhRZFl5MktFSW85SlkxbGkxQ2xQQT09', 'rjW8P0', 1, '2021-05-25 05:34:59', '2021-05-25 05:34:59'),
(14, 5, '72196745729', 'https://us04web.zoom.us/s/72196745729?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Ikwwa052QU5fMlJWenA2SXBBQ2NqV2ZRYzBIV2VXSWlUaEg1djRoN1ktbm8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5V1AzOEFFblVBQUFBIiwiZXhwIjoxNjIxODgzMTAwLCJpYXQiOjE2MjE4NzU5MDAsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.PnuDJJ9nCUpbxmn06aJWpBoh_IbW9Otx6a4jBkEOr9o', 'https://us04web.zoom.us/j/72196745729?pwd=SjlkL2NXeHF5ZEh6MEVwd3M4ZjNtUT09', 'ug083b', 1, '2021-05-25 05:35:00', '2021-05-25 05:35:00'),
(15, 5, '78420414626', 'https://us04web.zoom.us/s/78420414626?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IktaS0FXZkU0VzRDQ1RWaUxORVlNaXlEeW5uLVFDNW9HY3YzVEZJS0ZLODQuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZVo5V1I4VUFFblVBQUFBIiwiZXhwIjoxNjIxODgzMTAyLCJpYXQiOjE2MjE4NzU5MDIsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.r1Q05jJznuZ8Xnk7Emt9e-PzrceLSetW7AYFwULJVBA', 'https://us04web.zoom.us/j/78420414626?pwd=ZUpFNmZRNVNTVlFLYkdRR3FXYXNvdz09', 'hQ57iY', 1, '2021-05-25 05:35:02', '2021-05-25 05:35:02'),
(16, 6, '71389936758', 'https://us04web.zoom.us/s/71389936758?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImdkX3pxWjRaNmNWeHc3UF9WdmtBOXFzb2x4dDRPZkxRUEVlaDdjZlRGcEUuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFhRnQxMEFFblVBQUFBIiwiZXhwIjoxNjIyMDAzNjUxLCJpYXQiOjE2MjE5OTY0NTEsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.vqBg5pzfJZht3B9P5kihnlU3ZcwkWaAZr258dpqv8xs', 'https://us04web.zoom.us/j/71389936758?pwd=ZjhlY3A3Vm9kdGxNK1ZWT2lZUkRMUT09', 'gUV2cy', 1, '2021-05-26 15:04:11', '2021-05-26 15:04:11'),
(17, 7, '74416718595', 'https://us04web.zoom.us/s/74416718595?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IlJ0bm9qd3hDT1NVQk92VktkWGtoWDFacmVMMzB0eXdxS0F3TC1UR2dCWVEuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFhRnQzMEFFblVBQUFBIiwiZXhwIjoxNjIyMDAzNjUxLCJpYXQiOjE2MjE5OTY0NTEsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.m5BOlvg0xgu3GYofakbm_uI2ILD5QmwstKxtK8GAJ4U', 'https://us04web.zoom.us/j/74416718595?pwd=ZXBURGsxdndodFlEeTdaU1VRLytCdz09', '4gp27w', 1, '2021-05-26 15:04:11', '2021-05-26 15:04:11'),
(18, 7, '74092615323', 'https://us04web.zoom.us/s/74092615323?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InIzUzFjUko1WFlNaHc1NDRRaDJvOWZFZlpCeUJDRVhNSGMzWnRabEtac0UuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFhRnZvY0FFblVBQUFBIiwiZXhwIjoxNjIyMDAzNjUzLCJpYXQiOjE2MjE5OTY0NTMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.S9WcTzoIAfzThudWRRylOvR4R-l2zpJtqbxcD0U6mOM', 'https://us04web.zoom.us/j/74092615323?pwd=NWcrQXdZTUpxZDM4NnUwaERxb3FhQT09', 'WpY08X', 1, '2021-05-26 15:04:13', '2021-05-26 15:04:13'),
(19, 6, '75957885436', 'https://us04web.zoom.us/s/75957885436?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjNIWGthbTNOamJQb1Y0UGF6Y0tSWUg5ajQ4T1FUQzQwNkRRUWEtN0lTYWsuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFhRnZwc0FFblVBQUFBIiwiZXhwIjoxNjIyMDAzNjUzLCJpYXQiOjE2MjE5OTY0NTMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.mTsW-Zmu8b_jopEL1w06uMzKsst3RabyAFmVgHfGXus', 'https://us04web.zoom.us/j/75957885436?pwd=Wi96ZzJkWUowcHNvZmNzcjAzb1V0QT09', 'ELMv87', 1, '2021-05-26 15:04:13', '2021-05-26 15:04:13'),
(20, 8, '73958617752', 'https://us04web.zoom.us/s/73958617752?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Il9sZFhKM0ZjeEYxbVZsLTlpYzFSbWxvRTBJdDZSOThEbVF4OFlVMGZJb0UuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFhblpyZ0FFblVBQUFBIiwiZXhwIjoxNjIyMDA1ODU5LCJpYXQiOjE2MjE5OTg2NTksImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.hxEGMpqfQvPLvCc8FrZafiw2cC-PUtZuEL7IwqymUQI', 'https://us04web.zoom.us/j/73958617752?pwd=cFQ3ZmdYc1J3OXYzUlp0OVVmTzhLdz09', 'iE1Bw9', 1, '2021-05-26 15:40:59', '2021-05-26 15:40:59'),
(21, 9, '79224709352', 'https://us04web.zoom.us/s/79224709352?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IkVjV0wtMHo2VzhYUjI2MjFLbllYSWZ5aUVyc2JDQ081Z2ZtZm0tU2kzTjAuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFibUxLWUFFblVBQUFBIiwiZXhwIjoxNjIyMDA5OTczLCJpYXQiOjE2MjIwMDI3NzMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.f0l8eEavOJodxxp6mQEibQ2Yhaml43JbzrwuL4KLxek', 'https://us04web.zoom.us/j/79224709352?pwd=Zmswd3BUS1hOZnhCa0NZb1FKeVVGUT09', 'ji911r', 1, '2021-05-26 16:49:33', '2021-05-26 16:49:33'),
(22, 10, '71159854064', 'https://us04web.zoom.us/s/71159854064?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InVULXhZOVNOMzB4OGlwcm90T25EZWhiaG9YeE9VYWllRTFjVnRMaERKRGsuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFjRU0xOEFFblVBQUFBIiwiZXhwIjoxNjIyMDExOTQwLCJpYXQiOjE2MjIwMDQ3NDAsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.lma4Dd0KcqYH7cm4QRQ5bzrnjabi8cZG2tu7IvtAfbQ', 'https://us04web.zoom.us/j/71159854064?pwd=L1B4dHpnNEE3OGE4dTBGUFhBdWdGUT09', 'q5X0Cs', 1, '2021-05-26 17:22:21', '2021-05-26 17:22:21'),
(23, 10, '79247200875', 'https://us04web.zoom.us/s/79247200875?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjlTOGNSNlhqUjlmcVZDa2Zzd0VLZVhCUDBlY2NWZWlwME5KbEJCRjZ0SDQuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFjRU9vQUFFblVBQUFBIiwiZXhwIjoxNjIyMDExOTQyLCJpYXQiOjE2MjIwMDQ3NDIsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.0xIxL5A-MbpBXx8r9AzP_LkS9_9IEqytNieUd8hdfdA', 'https://us04web.zoom.us/j/79247200875?pwd=dnQ4M3RnZkV1aSs5dzRPTk5hSk5RQT09', '6xSPQY', 1, '2021-05-26 17:22:22', '2021-05-26 17:22:22'),
(24, 10, '79819941205', 'https://us04web.zoom.us/s/79819941205?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InJMbmlKU21MYzltb1NRWmVFY3g4Q0RISGd4ckF3aDBFeDJBUEhjcmd5Mm8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWFjRVFjRUFFblVBQUFBIiwiZXhwIjoxNjIyMDExOTQ0LCJpYXQiOjE2MjIwMDQ3NDQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.71qR6nqyV-e-aeAOEnVuLiBK-kp0MH03dqSas0bdXPs', 'https://us04web.zoom.us/j/79819941205?pwd=cEFKS2FYTkw1WWFZTTRJY2lwclBWQT09', '8FSgXW', 1, '2021-05-26 17:22:24', '2021-05-26 17:22:24'),
(25, 11, '339429654', 'https://us04web.zoom.us/s/73353873686?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IlVjbUY3WXBFQ3J2UTl3cW5qOWZCQlMtZ1hHVGdWcmxidVJGdkxVaDUtSUkuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJGTTF1b0FFblVBQUFBIiwiZXhwIjoxNjIyMTg0NDczLCJpYXQiOjE2MjIxNzcyNzMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.cLMV-WXVnHx_A-_yf64dWkz_4sK9UWiPQLTOp1VFEIk', 'https://us04web.zoom.us/j/73353873686?pwd=S0JIUkRFaFI2cHlqbFlxYVBFdys0UT09', 'T5q1ag', 1, '2021-05-28 17:17:53', '2021-05-28 17:17:53'),
(26, 11, '1850696427', 'https://us04web.zoom.us/s/74865140459?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImZUb19lQUdoMnFhOWJlUUhKS0RTeTJQZ2lLbXAyZW10bV8yUERsYXltNVUuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJGTTIwa0FFblVBQUFBIiwiZXhwIjoxNjIyMTg0NDc0LCJpYXQiOjE2MjIxNzcyNzQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.rQOEVuT030aHPG-UYS-AjT6tfLmhLiPtFRQqyMSXLB0', 'https://us04web.zoom.us/j/74865140459?pwd=WjRtQ29odGdZUzV5WWlXbzIrK0J1QT09', 'nY4cUE', 1, '2021-05-28 17:17:54', '2021-05-28 17:17:54'),
(27, 12, '2000438673', 'https://us04web.zoom.us/s/75014882705?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Im8xeVJXdEVFWV8tYU04MUcxLWl4QXZTMkE2dG5KYVU3T3JPY083M2JzRm8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJGTjVqOEFFblVBQUFBIiwiZXhwIjoxNjIyMTg0NTQzLCJpYXQiOjE2MjIxNzczNDMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.E2PcOlwaq8HMYllzKlM8mB986OFRm4MO3D29VhAP00I', 'https://us04web.zoom.us/j/75014882705?pwd=cGNhOXdPQWx5S0hlMWlhaEQ2eXFoUT09', 'quU7S0', 1, '2021-05-28 17:19:03', '2021-05-28 17:19:03'),
(28, 12, '-357357445', 'https://us04web.zoom.us/s/72657086587?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IlFWYjlPNEttel9pZ1pjSjBlRVI2ZXp5QjhORmVjRTFmbU1JaHNMa2VSSzguQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJGTjZrNEFFblVBQUFBIiwiZXhwIjoxNjIyMTg0NTQ0LCJpYXQiOjE2MjIxNzczNDQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.oU12hmZFlyjCP8O2GdUfDfE5AeDBq08p4kdvd0br8yM', 'https://us04web.zoom.us/j/72657086587?pwd=dER3MDk3VGdpR0RGWkVzdmdPWE1nUT09', 'zKm7UW', 1, '2021-05-28 17:19:04', '2021-05-28 17:19:04'),
(29, 13, '288838044', 'https://us04web.zoom.us/s/77598249372?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IldFQ045QmUxTFNGZmxIY0FETnlqV0ZHUHU2dFZvdER2c1NWRWk4V0pleG8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJKUkZYNEFFblVBQUFBIiwiZXhwIjoxNjIyMjAxNTI4LCJpYXQiOjE2MjIxOTQzMjgsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.zIdt0R7PTxtL0zl2Vaq6vd7EVU9ApPdG9qFqzBCCUXM', 'https://us04web.zoom.us/j/77598249372?pwd=ZlJHUFdwbkxnYnJZUzFjNVFCU1h6dz09', 'Dtf02Y', 1, '2021-05-28 22:02:09', '2021-05-28 22:02:09'),
(30, 13, '1198997496', 'https://us04web.zoom.us/s/78508408824?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Il9DNThnZDh1Z1U2VWd4RHpKOTYyaUU3VXVjM0VRUzdtenpwcHYyaUdTMWsuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJKUkdid0FFblVBQUFBIiwiZXhwIjoxNjIyMjAxNTMwLCJpYXQiOjE2MjIxOTQzMzAsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.G5xpgbMjOJMzhyToSzok-k0SYgghwEVaBd8fEPXel9U', 'https://us04web.zoom.us/j/78508408824?pwd=Sk1oUDRsUmpJMU9VYXEvTVd2UW81Zz09', 'nJZ14F', 1, '2021-05-28 22:02:10', '2021-05-28 22:02:10'),
(31, 13, '-91495556', 'https://us04web.zoom.us/s/72922948476?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InZCYTBMU0dZUU4wc21PS3IzTndEc1l1WWh1M1R5ekZGYUVBLXFMVm5BUlkuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJKUkhkOEFFblVBQUFBIiwiZXhwIjoxNjIyMjAxNTMxLCJpYXQiOjE2MjIxOTQzMzEsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.2cjbH0oAhgDhjJ6zvDlY3hHHVw-2ipBlzaIUoAVkcy0', 'https://us04web.zoom.us/j/72922948476?pwd=RzIwZlpwWE9BMU9tSUR2T2VobjhxUT09', 'S6apqh', 1, '2021-05-28 22:02:11', '2021-05-28 22:02:11'),
(32, 14, '-624335918', 'https://us04web.zoom.us/s/76685075410?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjE5QlktWlBLUE5PczRYcERncm9ZcVk1UUtId1BtS3Q1dk9kcjh0VTRGN0kuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJPM2FSSUFFblVBQUFBIiwiZXhwIjoxNjIyMjI1MDEyLCJpYXQiOjE2MjIyMTc4MTIsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.vX7K5ooDbiWurR589HbSBNkRcUGaPqv_ECYUXhfXpwU', 'https://us04web.zoom.us/j/76685075410?pwd=YzVMMnp6c1VoWGZMTGM5T3VoQTFlUT09', 'MP8xzy', 1, '2021-05-29 04:33:32', '2021-05-29 04:33:32'),
(33, 14, '2104303276', 'https://us04web.zoom.us/s/79413714604?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjdEc1pnV3BRVzIxMXVPaEw4V0hfMEluNjBVamM1WFZTUEhtdXE1Tk9ablkuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJPM2JYOEFFblVBQUFBIiwiZXhwIjoxNjIyMjI1MDEzLCJpYXQiOjE2MjIyMTc4MTMsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.uYHvfc_Z87W2ZmsrcE6rbq6WdDR2NrguaeyzC1NZGN0', 'https://us04web.zoom.us/j/79413714604?pwd=bWlWRXg0QkJlZEZZbmFWQzhaSUNkdz09', 'tT8hPb', 1, '2021-05-29 04:33:33', '2021-05-29 04:33:33'),
(34, 14, '1184436088', 'https://us04web.zoom.us/s/78493847416?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6ImxkOU83ZUQyNmpSS0x0cENTbElQWEZhMERmWDhEYzVwUVBfcDBjT0JRSlUuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJPM2Nib0FFblVBQUFBIiwiZXhwIjoxNjIyMjI1MDE0LCJpYXQiOjE2MjIyMTc4MTQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.M55R5ry5T02Rc2wxOqXfR3_hs-wUOl40IeKL4dGegiE', 'https://us04web.zoom.us/j/78493847416?pwd=Z0tCY3RNRXQxRVI3ZzlXd1VCREpiUT09', '0CmjE2', 1, '2021-05-29 04:33:34', '2021-05-29 04:33:34'),
(35, 15, '-1056241461', 'https://us04web.zoom.us/s/71958202571?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IlJkSWd6TUpMOUx2cG5EcXlnWXRYYTRpZWpYa0lfZ21YUWFBbDN2Yjc4UmcuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJacGh6TUFFblVBQUFBIiwiZXhwIjoxNjIyMjcwMjM5LCJpYXQiOjE2MjIyNjMwMzksImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.mPbCnRObUnY2ryESYDV1p2Y9eG_Y5-0W-8xKMU3foNM', 'https://us04web.zoom.us/j/71958202571?pwd=YTBOazVEbHVNcDRLUE5iVmFVS0thUT09', 'FRWR2b', 1, '2021-05-29 17:07:20', '2021-05-29 17:07:20'),
(36, 15, '-57418209', 'https://us04web.zoom.us/s/72957025823?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Ilo2R2tUZy1sVmRDbUxhVkd5Q0xWcTNSbTJ3dW1wMC1ZRTNNUGo0cGpPMW8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJacGk1c0FFblVBQUFBIiwiZXhwIjoxNjIyMjcwMjQwLCJpYXQiOjE2MjIyNjMwNDAsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.xMamzCIqrk4ZFsvA-a6scpAS5BJCbY_RdQLy5ISLPdM', 'https://us04web.zoom.us/j/72957025823?pwd=WHo5SVZiZm44SWxmWlAzNkx6ZitHUT09', 'kxgkm9', 1, '2021-05-29 17:07:21', '2021-05-29 17:07:21'),
(37, 16, '-1163340264', 'https://us04web.zoom.us/s/71851103768?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IktzbUZlUE1xcUdGV0lsWU13T1RLX19QYi12Q01HSW44RnBiYUdxMXBzSncuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJoV1RONEFFblVBQUFBIiwiZXhwIjoxNjIyMzAyNTM0LCJpYXQiOjE2MjIyOTUzMzQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.FOwJSyfzFJxIiCFErFwN5NQOkZioHPhd79I9aN-x8ig', 'https://us04web.zoom.us/j/71851103768?pwd=a1FCV2NhVkdmZEZkSEEzOTBXeW5IZz09', 'Q3iBGf', 1, '2021-05-30 02:05:34', '2021-05-30 02:05:34'),
(38, 16, '421405320', 'https://us04web.zoom.us/s/77730816648?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IkR4NHFRc2x2TzE1ckNsamtwcTFPSE1meldRYzF3Y1BLVzFwR3FOeTFqcEUuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJoV1VVMEFFblVBQUFBIiwiZXhwIjoxNjIyMzAyNTM1LCJpYXQiOjE2MjIyOTUzMzUsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.0er4xLwGPOwO3OgePKf__GsB8s8V4iBRDoWKDQwu3Do', 'https://us04web.zoom.us/j/77730816648?pwd=RTZ0aHdvUitmd3R1TklqVFNtM0FBUT09', 'a6jmE3', 1, '2021-05-30 02:05:35', '2021-05-30 02:05:35'),
(39, 17, '104965585', 'https://us04web.zoom.us/s/77414376913?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjVGMVhTeU1hRzB4eXVaTVpBQzdYZVlQUU16bUk5YzliczJpZDdxZ0RWN28uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJoWEF6NEFFblVBQUFBIiwiZXhwIjoxNjIyMzAyNTgwLCJpYXQiOjE2MjIyOTUzODAsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.S2Ce9SgJ3EVWd5UifH7baji56UQLgXfM-S2FfO2PJqI', 'https://us04web.zoom.us/j/77414376913?pwd=eVZNVHZwUXlqQUhaV2RxdEl5V2J1dz09', 'ud6Qi7', 1, '2021-05-30 02:06:20', '2021-05-30 02:06:20'),
(40, 17, '-1331539866', 'https://us04web.zoom.us/s/71682904166?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IjdGVk9hQjRNQndQMkt5YUZ3UHIycWg5d1I1ZVN5aDV5VVhfOEdaNGVFVzQuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJoWEI1VUFFblVBQUFBIiwiZXhwIjoxNjIyMzAyNTgxLCJpYXQiOjE2MjIyOTUzODEsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.NJfUliMO89e8_4yTx1PG3-WYBSPGEZBQXbDKK2w0XC0', 'https://us04web.zoom.us/j/71682904166?pwd=bzhTSHFRRm5uc21sVlY1Vjk3TkFEQT09', 'ebi767', 1, '2021-05-30 02:06:22', '2021-05-30 02:06:22'),
(41, 18, '-1292944624', 'https://us04web.zoom.us/s/76016466704?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InU0R1pBR05jazRLZjVLVEEtQ2NCMmY3aTI0WWRlRUVBbDM2b2Zjd2NwYkkuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWJod1pVc0FFblVBQUFBIiwiZXhwIjoxNjIyMzA0MjQ0LCJpYXQiOjE2MjIyOTcwNDQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.IMITrcdx6i8sTtD1Ab-FMpaLpSa93NrAqF3R-457ueM', 'https://us04web.zoom.us/j/76016466704?pwd=aVc5M25qdjVVRThtK1B6bWRFdE1Tdz09', '7rpxk1', 1, '2021-05-30 02:34:04', '2021-05-30 02:34:04'),
(42, 19, '1230640163', 'https://us04web.zoom.us/s/78540051491?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IllZYzVYMVJ5ZG1GY1dmd0FGVUJ6d0R6ODJ2OV9YMEZZRUdQcFFuNU5OeGsuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWNmSm03QUFFblVBQUFBIiwiZXhwIjoxNjIyNTYxNzQ5LCJpYXQiOjE2MjI1NTQ1NDksImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.eDMpdbsTj1clGBT-Ji-XWWWDMkqluF5X-j9If-10Iu0', 'https://us04web.zoom.us/j/78540051491?pwd=V25mWnNjOUQyRVYzR2QyNTZiakJHUT09', 'Bs9pFH', 1, '2021-06-02 02:05:49', '2021-06-02 02:05:49'),
(43, 20, '-1589276767', 'https://us04web.zoom.us/s/71425167265?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6Inlxd05KWVVsSlQ2Y0lGMmhoVFlPeXRNcXhOcW9Zc0Z1dWljcHN5SUpYQm8uQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWNpZEJPd0FFblVBQUFBIiwiZXhwIjoxNjIyNTc1NjA0LCJpYXQiOjE2MjI1Njg0MDQsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.bNzC0epk5Qvz4C-N78CYPIBMCVe2K2qTPj8tVccSwjw', 'https://us04web.zoom.us/j/71425167265?pwd=RkNHTExTSm1VM2xMZ0ZsTGpWZXZHZz09', 'L0XUFi', 1, '2021-06-02 05:56:44', '2021-06-02 05:56:44'),
(44, 20, '749459710', 'https://us04web.zoom.us/s/73763903742?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJTR0NqenA3a1J1aVVDQjNMSnZsSm1nIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InJoaExWS1VfeTMyVks5NXBYek1fUWRGMm95ZS1NSnlKMTJOTkRXN1pLYjQuQmdZc0x6bDVWbGRaZW1WR0sybFlXakpCT1hvd1dFcGFia0Z3Tm1KR1QwVnZRMnd3U0VGVmJFZ3JUVEJ5YnoxQVptVmxaR05tWmpGa05UUmpZMlZpTTJFd1pUWm1aamRqWVdWbE1HRmpOV1ZoWldFeU5qUmhNR1psT1dFNFptRTBPVGhqT1dWaFpUTmpNRE16WlRZMFpnQU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZWNpZENYOEFFblVBQUFBIiwiZXhwIjoxNjIyNTc1NjA1LCJpYXQiOjE2MjI1Njg0MDUsImFpZCI6Im1VemVydkxWVE82VjFrUjFTNlA3S3ciLCJjaWQiOiIifQ.TADjy5HY12kGTy24B9-H3IKxz2pnqjpxZEpPxEXvJzk', 'https://us04web.zoom.us/j/73763903742?pwd=OHVmY0lLcUkrMnplUE5kK2xnMnZuQT09', 'CKS92a', 1, '2021-06-02 05:56:45', '2021-06-02 05:56:45'),
(45, 21, '176128090', 'https://us04web.zoom.us/s/77485539418?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRk1Iai1rQWxBeVdmT1h1YUZ2QTdXVXJ4ckUzaUpPLXJuc3NRa2xiX2xnRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZEhadHcwQUVuVUFBQUEiLCJleHAiOjE2MjI3MzA1NzYsImlhdCI6MTYyMjcyMzM3NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.VB6X3K8Ie7BnDPXPPTAyRlD96AwmBNutyOQHLo1eThM', 'https://us04web.zoom.us/j/77485539418?pwd=dTRDUFdZZGZjQ01uQUVBMVpoUzE0dz09', 'JZqC6G', 1, '2021-06-04 00:59:37', '2021-06-04 00:59:37'),
(46, 21, '-1156388228', 'https://us04web.zoom.us/s/71858055804?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibEhFY2NYRm1LSldQWl9qWE5pVVlXVnFrR1dndEYxanU5cnRNVC1ndzhuby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZEhadTNFQUVuVUFBQUEiLCJleHAiOjE2MjI3MzA1NzgsImlhdCI6MTYyMjcyMzM3OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.E9qxgUjbXyhgiLQUSZvMd3Yl9ae5YmwCXUSksw7S03g', 'https://us04web.zoom.us/j/71858055804?pwd=NXNSdTNiTzJWTjN4bjJ1S3ZNenNTdz09', 'DY3imf', 1, '2021-06-04 00:59:38', '2021-06-04 00:59:38'),
(47, 22, '850598642', 'https://us04web.zoom.us/s/73865042674?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieFZkbkhXWjhZOTBEd3o5VWpyQTVWaFV5ckN0Z0RMSWhzOFNWT003LTFfRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZFV5cmJjQUVuVUFBQUEiLCJleHAiOjE2MjI3ODY3MzgsImlhdCI6MTYyMjc3OTUzOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ucD493wnbvtRbbbDeBmgFXYgxoZTpAKVmIGBEqa45ms', 'https://us04web.zoom.us/j/73865042674?pwd=MEdXQllWOWx5dy93QVJnb1o2VFV1dz09', 'eLW3J7', 1, '2021-06-04 16:35:39', '2021-06-04 16:35:39'),
(48, 22, '2109599824', 'https://us04web.zoom.us/s/75124043856?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNGI2NXhrOEVya0VvazVLOTBuYnBVd2V3T042ME9Ob3VkY2hOdENuRXp6TS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZFV5c2hBQUVuVUFBQUEiLCJleHAiOjE2MjI3ODY3MzksImlhdCI6MTYyMjc3OTUzOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.kwUj6oCrG6g7u4jogECPcKhEYBbeSBrIdR5RnsMKbFg', 'https://us04web.zoom.us/j/75124043856?pwd=RXoxa1JLZnhETk9URERRT2pDQ1NpQT09', 'k8JeUC', 1, '2021-06-04 16:35:40', '2021-06-04 16:35:40'),
(49, 23, '-1058742952', 'https://us04web.zoom.us/s/71955701080?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibDExS0JjWlRRdzFkRmYyT1FiVGpHdFUtWFprMy11MU9IREFHUjNXUEY5NC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHFNQzRjQUVuVUFBQUEiLCJleHAiOjE2MjI4NzY0ODEsImlhdCI6MTYyMjg2OTI4MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ee-F_PP4eWRTgRAa_BSBulys63vqcnJ7bSsR0PNhRsE', 'https://us04web.zoom.us/j/71955701080?pwd=MDJCczc2NTQ3RHp4VFEvQVNGaEtSUT09', '45uj99', 1, '2021-06-05 17:31:21', '2021-06-05 17:31:21'),
(50, 24, '-927306191', 'https://us04web.zoom.us/s/76382105137?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieHpMSnZ3dGQ5ZXprVHRKdlY1VXE3T2NGTU9CMm9OelhRRV9GdFZPM3d2OC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHM5cTNjQUVuVUFBQUEiLCJleHAiOjE2MjI4ODgxMjIsImlhdCI6MTYyMjg4MDkyMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.uhb8WVmR2TlMxk7BbkRc5zcpYQYn9lQx1iOuN4Eg4zg', 'https://us04web.zoom.us/j/76382105137?pwd=UXNRYi9vTTdvWmY3Si9JMDIzNmhUQT09', 'Q2g0zM', 1, '2021-06-05 20:45:22', '2021-06-05 20:45:22'),
(51, 24, '1460437750', 'https://us04web.zoom.us/s/74474881782?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibERTQXlMWEZNM0xCbEV4c3FNdnJCUUpyMUVVYXVCN1RuYTI5WlF3NkdZYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHM5c0JrQUVuVUFBQUEiLCJleHAiOjE2MjI4ODgxMjMsImlhdCI6MTYyMjg4MDkyMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.7nmxhF0y_WZN5d_CK4c3SqFROgnBByof4uQWY2h3y_U', 'https://us04web.zoom.us/j/74474881782?pwd=UXRVcWJRNVdIWFV2dVdiY1Izb21kUT09', 'KZQFt7', 1, '2021-06-05 20:45:23', '2021-06-05 20:45:23'),
(52, 24, '-2082746954', 'https://us04web.zoom.us/s/75226664374?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQ0gzd0h0ai1nUERSY0g3VWpTdl9uWTRibFZMU1BEbWItZnVlVjZIc0Mtdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHM5dERZQUVuVUFBQUEiLCJleHAiOjE2MjI4ODgxMjQsImlhdCI6MTYyMjg4MDkyNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.4EQK3NApAf6dcgwIfayzvYdxKZDMJGAc56slhNt0KcQ', 'https://us04web.zoom.us/j/75226664374?pwd=aDM3dU52MERGbzFNOEhHSmVPMmQ2dz09', '9qzAqC', 1, '2021-06-05 20:45:24', '2021-06-05 20:45:24'),
(53, 24, '896491312', 'https://us04web.zoom.us/s/78205902640?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiYWE0UHFJdGxhTWxHR0hkLVlhdEsyQTZfcFpQWXBjek5xZlgxOVlqMFFaQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHM5dUZNQUVuVUFBQUEiLCJleHAiOjE2MjI4ODgxMjUsImlhdCI6MTYyMjg4MDkyNSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.I0fMxkpaspZDTfMbK7okP7DPnvXZ6WrwhHyPTEpd0Eg', 'https://us04web.zoom.us/j/78205902640?pwd=YSt1TVRYNkFhVjk5aW5rOU50MmlaZz09', 'gp578A', 1, '2021-06-05 20:45:25', '2021-06-05 20:45:25'),
(54, 25, '-594262586', 'https://us04web.zoom.us/s/76715148742?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNkpkQ2UwZzNvcEM0SWJwUzRRR3V3UEJCdnc3NE9BSlA5azQ1Q2hNVERJZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHdjemJzQUVuVUFBQUEiLCJleHAiOjE2MjI5MDI3NDUsImlhdCI6MTYyMjg5NTU0NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.6lzJwSqbxgUAJtJBVdUEXLIBtxQhstmXhWoKkjjGwMA', 'https://us04web.zoom.us/j/76715148742?pwd=blJIOThML25HcHpycXVjeU80NU5NUT09', 'q8xbQe', 1, '2021-06-06 00:49:05', '2021-06-06 00:49:05'),
(55, 25, '945900070', 'https://us04web.zoom.us/s/78255311398?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTzVWY3ZMOUxQM1RFYzBZcmNVWDY3ZGY1NUFKdVpYVzZzbjY4UDZRUWZhZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHdjMGNNQUVuVUFBQUEiLCJleHAiOjE2MjI5MDI3NDYsImlhdCI6MTYyMjg5NTU0NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.YJIjmc2YkPf9nikDIdu3Yg7RUiu1qa3-VfLusP-CLKc', 'https://us04web.zoom.us/j/78255311398?pwd=UDJlWVFuTHdGL2xIQ1Vaa05HUkFXdz09', 'AETrw5', 1, '2021-06-06 00:49:06', '2021-06-06 00:49:06'),
(56, 26, '-49891644', 'https://us04web.zoom.us/s/77259519684?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZTdPZ2p2UXE2SEN1Q01CMVVON1Z3cUZjb09LeDBwZEp4ZjFCOTRlVXJzUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHhyU1NrQUVuVUFBQUEiLCJleHAiOjE2MjI5MDc4ODksImlhdCI6MTYyMjkwMDY4OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.sP8UZvMj5gfA2zhR1iLKQj3bhMITdM-7-M5nGc2lpY0', 'https://us04web.zoom.us/j/77259519684?pwd=NjR6dklmZlo0Q05QeFZBVzY3L2VRdz09', 'tv9wm0', 1, '2021-06-06 02:14:49', '2021-06-06 02:14:49'),
(57, 26, '1408470901', 'https://us04web.zoom.us/s/74422914933?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUDdHbE0zb0djLWIteWlFZ3RHYWpXeTI1NDR5MTBaTGVzLW5uX05XaU9LZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHhyVFZVQUVuVUFBQUEiLCJleHAiOjE2MjI5MDc4OTAsImlhdCI6MTYyMjkwMDY5MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.vTqAnOPnSLgRVrI2VDt0Rkl0sl9sqK1Ri_Mmd8Q7w5s', 'https://us04web.zoom.us/j/74422914933?pwd=S2laUG9KeWlCL1o0UnMrb3JiYTYvQT09', 'CFF6NZ', 1, '2021-06-06 02:14:50', '2021-06-06 02:14:50');
INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(58, 26, '-877961553', 'https://us04web.zoom.us/s/72136482479?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNU9IQUVjY2xkT0F5Sllaa0VSQkpxbUJYRU1SYVhtc3RST2FQdVZraXlESS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZHhyVVVRQUVuVUFBQUEiLCJleHAiOjE2MjI5MDc4OTEsImlhdCI6MTYyMjkwMDY5MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.jLtD9RInGxBx4P3jCtSdubRPskqFAgtRXHOpfmylZ3A', 'https://us04web.zoom.us/j/72136482479?pwd=K3dLbXM4YUFsZ0FNb2NDUDZNSmFYdz09', '1yDJNY', 1, '2021-06-06 02:14:51', '2021-06-06 02:14:51'),
(59, 27, '1723360931', 'https://us04web.zoom.us/s/74737804963?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZVVpVGRuZWNGREhvcmY3Y3BPRVlGdVpLb2tuUjBSeDRUQW8tTGIxRkhvNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZVlnMlVVQUVuVUFBQUEiLCJleHAiOjE2MjMwNzA3ODMsImlhdCI6MTYyMzA2MzU4MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.K0MUivtOlMzg52JR7k5JGBXYdMSExTcYDSsUjOZuVAE', 'https://us04web.zoom.us/j/74737804963?pwd=WXpkcHkvWVcrenVjR05MN1pUNmhCZz09', 'AfLU6u', 1, '2021-06-07 23:29:43', '2021-06-07 23:29:43'),
(60, 27, '956811240', 'https://us04web.zoom.us/s/78266222568?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoid3p0TFlXTTJ6ZGRENDczS2M4NTJycUhXRTJyRGhXcW1rV1lHOUhPX1JxRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZVlnM1owQUVuVUFBQUEiLCJleHAiOjE2MjMwNzA3ODQsImlhdCI6MTYyMzA2MzU4NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ZJIjMrd4t-awDB0pKZY-HLtpM2lJEyLcKmiHvK0HLnw', 'https://us04web.zoom.us/j/78266222568?pwd=eGthWHluRHVObE41dEtjdWRndjRBQT09', 'n284Kx', 1, '2021-06-07 23:29:44', '2021-06-07 23:29:44'),
(61, 28, '656780543', 'https://us04web.zoom.us/s/77966191871?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicmFFWFNIbVlxV1JGRG4wbnVCWkdrN0Z6cHh5LXZrS1F3U0pLZkxQaEtpNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZWFnclJJQUVuVUFBQUEiLCJleHAiOjE2MjMwNzkxNjAsImlhdCI6MTYyMzA3MTk2MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Iu3ieq7jjxE5oLbo9pStE1E-NWY7zAReFuBtTbfXDHE', 'https://us04web.zoom.us/j/77966191871?pwd=VVdVZGgwUVdhTWt5SVg5WEFIV1dJUT09', 'aYJ8Ry', 1, '2021-06-08 01:49:20', '2021-06-08 01:49:20'),
(62, 28, '-1721782039', 'https://us04web.zoom.us/s/75587629289?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiN0VGcEFiVXAyV3V0ZmNaZVRwc1h2OXZpXzNIbzNtN3BOZEZrSHhYV2hNYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZWFnc1dZQUVuVUFBQUEiLCJleHAiOjE2MjMwNzkxNjEsImlhdCI6MTYyMzA3MTk2MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.s7m_VoFype4Dv7eNLOlIqkslH8jNkldJzJEocnlN1e0', 'https://us04web.zoom.us/j/75587629289?pwd=RUVLaS9OWmo1S3lJTE1WRFl0dWNxdz09', '0pN9Pm', 1, '2021-06-08 01:49:21', '2021-06-08 01:49:21'),
(63, 29, '84581081', 'https://us04web.zoom.us/s/77393992409?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieFhuQWhKbVkwRktNVXl2YnVQTXdMM2FUVWFvVVg3QmdYNGpuT3FmSm51QS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZWE2c1RvQUVuVUFBQUEiLCJleHAiOjE2MjMwODA4NjUsImlhdCI6MTYyMzA3MzY2NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.yWbb0aAUcNUNbvaEvr0cxFyacLPWGxKVyu5E3oKVfUQ', 'https://us04web.zoom.us/j/77393992409?pwd=azRKVDlsTWQzRTYrSUdkTm9rM2pXUT09', 'zBt8i6', 1, '2021-06-08 02:17:45', '2021-06-08 02:17:45'),
(64, 30, '782781762', 'https://us04web.zoom.us/s/73797225794?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieVpkX2dEOXRWc05kWWkzSlBlMnRZNDlseGxPNnpZakZHZXNJSi1KVi10QS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZWJLM1p3QUVuVUFBQUEiLCJleHAiOjE2MjMwODE5MjUsImlhdCI6MTYyMzA3NDcyNSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.51RYzmLnTxveP1hKrK-5rIa0w3jBEBc2Y6l9_mFFaRM', 'https://us04web.zoom.us/j/73797225794?pwd=UVdPeTVydHF6My9rN2ttbW51NVlSUT09', 'sk2rJt', 1, '2021-06-08 02:35:25', '2021-06-08 02:35:25'),
(65, 31, '-1516630932', 'https://us04web.zoom.us/s/75792780396?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibVVLSV9fVjlBZnIzQjlxWlZhVGU0YXhISW9MMGpIQm4xcXFTd1Z3OGlnZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZWJ0TEFFQUVuVUFBQUEiLCJleHAiOjE2MjMwODQxNzMsImlhdCI6MTYyMzA3Njk3MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.XPr9-8OsadHYscVE4yZtxONask4tZeb8H4dlnHYOBDU', 'https://us04web.zoom.us/j/75792780396?pwd=Z1YyRFZENTZLZ3VPOVMwVDY4V0VDQT09', 'x5aJ1b', 1, '2021-06-08 03:12:53', '2021-06-08 03:12:53'),
(66, 32, '216767224', 'https://us04web.zoom.us/s/77526178552?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQ1VnR1A5S2F2Ym40c1hyRU9tam5jdmE0WXk4b19kN2RRcE0wTmotdWRSWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZkRsXzc4QUVuVUFBQUEiLCJleHAiOjE2MjMyNTE0NzUsImlhdCI6MTYyMzI0NDI3NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.N3Vh_saBw-MxplsBrIIKZf7a2MOUgE-upDWdqb_ZekM', 'https://us04web.zoom.us/j/77526178552?pwd=OGJ5VkZ2U2JKdWMvOVBka3UrN09SQT09', 'bxP03D', 1, '2021-06-10 01:41:15', '2021-06-10 01:41:15'),
(67, 32, '1103102706', 'https://us04web.zoom.us/s/78412514034?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVG1wMGswMnFrUC1wYVp4akxLTmJDQm43UnZRcUJVeUVBTFZKR3BkNjREby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZkRtQkFNQUVuVUFBQUEiLCJleHAiOjE2MjMyNTE0NzYsImlhdCI6MTYyMzI0NDI3NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.2qdw0D0KjhBkcwRPdtfWFCSx27BefbDqRNEVSk7kISo', 'https://us04web.zoom.us/j/78412514034?pwd=R1ZPRGowWUlHTzAzYm1QTTJuT1p2UT09', 'JNyc24', 1, '2021-06-10 01:41:16', '2021-06-10 01:41:16'),
(68, 33, '1012360719', 'https://us04web.zoom.us/s/74026804751?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNE9IM0dLV3FXSF9JZk9UMmNOSXV5Z1V2SGNxaVdPejE5cHFpNG56N2lvVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZmxpUWFBQUVuVUFBQUEiLCJleHAiOjE2MjMzOTM4MzYsImlhdCI6MTYyMzM4NjYzNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.tfjIHA3K3TZOeRIdx5nKGzykARTjNxQSK5qH8_VkuH4', 'https://us04web.zoom.us/j/74026804751?pwd=NVJhYStTaHNoMDlIRHJSVEtoQUlsUT09', 'RHJ70t', 1, '2021-06-11 17:13:57', '2021-06-11 17:13:57'),
(69, 33, '-68382425', 'https://us04web.zoom.us/s/72946061607?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTTdiRU9iZmNRZXlJSThmVXVOUXdhcDdBdFRLTlp5cVZhUVl5UVRBVjRVYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZmxpUnM4QUVuVUFBQUEiLCJleHAiOjE2MjMzOTM4MzgsImlhdCI6MTYyMzM4NjYzOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xGlvGuBnY4A1KLJNmPem8UjiIGsGK4Ir9oK3_iv3Q1o', 'https://us04web.zoom.us/j/72946061607?pwd=OStqblFOTWcxQ1I5OStiQnVlWDdNQT09', 'pFDt7V', 1, '2021-06-11 17:13:58', '2021-06-11 17:13:58'),
(70, 34, '-845271966', 'https://us04web.zoom.us/s/76464139362?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMnE4VzBhUkxYYzFoUWJHVkhsVVI1QklOenJxV015akJUYlYzZzN3Zi1ZYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZnR1M2gwQUVuVUFBQUEiLCJleHAiOjE2MjM0MjgyMTcsImlhdCI6MTYyMzQyMTAxNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9._vVYmxrjBTUzWWT22F4bi3kFaeSGswvUmRvjLM71mR4', 'https://us04web.zoom.us/j/76464139362?pwd=WHRWdWpkcUhNRWRSZnFtOFJwSWhPZz09', '6wpwEH', 1, '2021-06-12 02:46:57', '2021-06-12 02:46:57'),
(71, 34, '-1208585725', 'https://us04web.zoom.us/s/76100825603?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRV9RN2sxS2NNcnhjUkRZWnRTcTR5bExDb0M5cDRQTnlUVGxRTTJyZDZGRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZnR1NGt3QUVuVUFBQUEiLCJleHAiOjE2MjM0MjgyMTgsImlhdCI6MTYyMzQyMTAxOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.GQ0WXAU4BmYfk7TCLYQSPLuASZG9a1Jnybl1YU77Byg', 'https://us04web.zoom.us/j/76100825603?pwd=cm9GKzZWdE9YWUppZ0tDN1JLQ2NuUT09', 'scn5qV', 1, '2021-06-12 02:46:58', '2021-06-12 02:46:58'),
(72, 34, '982449741', 'https://us04web.zoom.us/s/78291861069?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiODRicnFDMkNaa1JhSFRxV3FVTFN1VHVqV1diQ1NtTGZYZ3dkQi02djJLby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZnR1NW5ZQUVuVUFBQUEiLCJleHAiOjE2MjM0MjgyMTksImlhdCI6MTYyMzQyMTAxOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.leeRtfQYMpW7DDptlHgMipK2lgCG1phvoy5UwjNJXk4', 'https://us04web.zoom.us/j/78291861069?pwd=RTVuQkNaNGR5ZXRVWEFxT2pPemhtdz09', '73e0jm', 1, '2021-06-12 02:46:59', '2021-06-12 02:46:59'),
(73, 34, '934867226', 'https://us04web.zoom.us/s/78244278554?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVFp1TC1xUVpHT0tGSjBUUWJpcVFCV1FXdWk2OEdZcHNGNEVScDVIOGt3ay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZnR1Nm9zQUVuVUFBQUEiLCJleHAiOjE2MjM0MjgyMjAsImlhdCI6MTYyMzQyMTAyMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.8f-hLnBEck5_BSZ3ikR_FR1FjweQqe6Alw3ok5R4y8k', 'https://us04web.zoom.us/j/78244278554?pwd=Q0NWdi9KREo4RkJrRTJGdDZRc1dadz09', 'rhxXv8', 1, '2021-06-12 02:47:00', '2021-06-12 02:47:00'),
(74, 35, '-537390445', 'https://us04web.zoom.us/s/76772020883?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicVN1NG04dFRrVTNkWTdkVERNcVdDWGRsWlFCUkxSbEFZNDFHbHVEcVZkay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZnQ5bWlNQUVuVUFBQUEiLCJleHAiOjE2MjM0MjkxODMsImlhdCI6MTYyMzQyMTk4MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.YNGpggr3T3c8b5a4XWXP0Tgcr7bUvKp4ioilBvFXaAI', 'https://us04web.zoom.us/j/76772020883?pwd=QkwxbUdjQldSNVBXL2FLdHNIamJNdz09', 'p9ds0u', 1, '2021-06-12 03:03:03', '2021-06-12 03:03:03'),
(75, 35, '-1832772539', 'https://us04web.zoom.us/s/79771606085?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiLTNBWXREbGw3VjIwZ28wekVrdHFuZTRMQnFCTFN2eXFDT0hROXF2WlY2dy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZnQ5bm5jQUVuVUFBQUEiLCJleHAiOjE2MjM0MjkxODQsImlhdCI6MTYyMzQyMTk4NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.KeHgkFBy7rBE4lEcIJbRe2azAwVPX12DZ2DX_X6_cmc', 'https://us04web.zoom.us/j/79771606085?pwd=VUl5Zm96alBGU1Bac3hmQlRTV1lHUT09', '6Qeqw4', 1, '2021-06-12 03:03:04', '2021-06-12 03:03:04'),
(76, 36, '-1273727759', 'https://us04web.zoom.us/s/71740716273?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieXVOaW0zZUtBcGV2Rnl0UlNreFh1ZFNhNFN2dXZEQXdJRUk4aDROZ0d3OC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZjN2eDVFQUVuVUFBQUEiLCJleHAiOjE2MjM0NzAyMjAsImlhdCI6MTYyMzQ2MzAyMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.LtbSPKTQ0eTr-e2FerxjPjhNl2mIMaFCZVjG19M5XS8', 'https://us04web.zoom.us/j/71740716273?pwd=RkVGMFJSUnhYZjV4Zzl6QXQvVk04QT09', 'DpA4Gi', 1, '2021-06-12 14:27:00', '2021-06-12 14:27:00'),
(77, 36, '-1421000837', 'https://us04web.zoom.us/s/71593443195?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTUh4Q3NZaGZCRDkzUlJQNEdLX2s2Sk9IZ1dwVXRiamJwZjROdEFqc2tZdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZjN2ekRJQUVuVUFBQUEiLCJleHAiOjE2MjM0NzAyMjEsImlhdCI6MTYyMzQ2MzAyMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.mogQ9QGtI3Ii-w2vJsDryAjm46aEPIaArUhpLeYvnfM', 'https://us04web.zoom.us/j/71593443195?pwd=bCtDQmJzMzZha253U2hHU1FMZkJ4QT09', 'JnZD3h', 1, '2021-06-12 14:27:01', '2021-06-12 14:27:01'),
(78, 37, '1448982060', 'https://us04web.zoom.us/s/74463426092?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidHlTVjJMV0dfUXNQcl9wN0Y4R21CMnRCbG5vLTF4TElOd2JES0tzNG9QMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZjZLajJJQUVuVUFBQUEiLCJleHAiOjE2MjM0ODAzNjQsImlhdCI6MTYyMzQ3MzE2NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.1qlqkU8yhYwu2hKF6oALDtFnobdid3pJ9wY6ncc_Hj4', 'https://us04web.zoom.us/j/74463426092?pwd=azdDcWYxTU96Y0w4WTZmeFVuQ2svdz09', '6RpPc5', 1, '2021-06-12 17:16:04', '2021-06-12 17:16:04'),
(79, 37, '1027483808', 'https://us04web.zoom.us/s/78336895136?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMWh0eTRpN2NhSHJhSFZvb3Jrdi1vUG04Q3ptY2FoTW5YdldkZ1V3M2pGTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZjZLazgwQUVuVUFBQUEiLCJleHAiOjE2MjM0ODAzNjUsImlhdCI6MTYyMzQ3MzE2NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.V2hwIrPaNWAslRcnDVMnxUsVKiBu7VxOrk8BTB31j5o', 'https://us04web.zoom.us/j/78336895136?pwd=MTIvQXczRkZjbW40c0FJQUdNSVVtUT09', 'J6n2PU', 1, '2021-06-12 17:16:05', '2021-06-12 17:16:05'),
(80, 37, '1045099966', 'https://us04web.zoom.us/s/78354511294?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWlVvdl9aeXVwYnNHUDJROEJYOTduVDQ0NGhFQXVqbmpaWGVhbmN3YkxLby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZjZLbC1jQUVuVUFBQUEiLCJleHAiOjE2MjM0ODAzNjYsImlhdCI6MTYyMzQ3MzE2NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.hp8_FchY64q3Z-LUyGNP-uYNsk2c13IltoH5o8e3PIE', 'https://us04web.zoom.us/j/78354511294?pwd=TlBGNzdJWHJ4eEFUL2lFRjdFV3ZKUT09', 'BcCZ8u', 1, '2021-06-12 17:16:06', '2021-06-12 17:16:06'),
(81, 37, '-903061590', 'https://us04web.zoom.us/s/72111382442?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNFVzZXNYVFUzck5NeFhEQTE2RDFGZjN5Q3BPMmJGaHdHbU5idmV3ZFNTOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZjZLbTlzQUVuVUFBQUEiLCJleHAiOjE2MjM0ODAzNjcsImlhdCI6MTYyMzQ3MzE2NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.cSVybUkm7jok0yPXoQXzmGtd1XxPIlRfb-QL4JAlj-0', 'https://us04web.zoom.us/j/72111382442?pwd=UXhwMEZWY0owejZCcFF1MFIwSjNKUT09', 'Kz3REv', 1, '2021-06-12 17:16:07', '2021-06-12 17:16:07'),
(82, 38, '982847124', 'https://us04web.zoom.us/s/78292258452?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQ3hteDVReGhoaFdGQ21ZRDl2SDFONDBqVmUxX0xMbzhpazdyZTl5NFJwUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZi16VDZnQUVuVUFBQUEiLCJleHAiOjE2MjM0OTk4MTIsImlhdCI6MTYyMzQ5MjYxMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.tqXQM5cYUNB3EHEfywaYuaWbq6Wfrz42qdivLgYRH2Y', 'https://us04web.zoom.us/j/78292258452?pwd=RGJYRVphd0wwaGZuNzBmN0pFWTlXdz09', '7zmkHp', 1, '2021-06-12 22:40:12', '2021-06-12 22:40:12'),
(83, 38, '1971266463', 'https://us04web.zoom.us/s/74985710495?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWFZtemNzZFZleEZoY1lzYy1KZTdPU0U0c0g0UUtVSTh5WWdNLW9fWm5LMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZi16VkNFQUVuVUFBQUEiLCJleHAiOjE2MjM0OTk4MTMsImlhdCI6MTYyMzQ5MjYxMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.M7CD3u6JJD90noa_yOaDb24cw6QcGPb919Hi5H_bZQ4', 'https://us04web.zoom.us/j/74985710495?pwd=UXZlY0V5ZDJwMUhjUDZkd2NhTHlJZz09', 'Fyf4UU', 1, '2021-06-12 22:40:13', '2021-06-12 22:40:13'),
(84, 39, '1285026399', 'https://us04web.zoom.us/s/78594437727?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNHpBZWtDZjNBeFNYRm9aYmNSd01GUUpnY1hOM0w2X014RFZrUlRKOTlMRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZl9yTGtNQUVuVUFBQUEiLCJleHAiOjE2MjM1MDM0NzMsImlhdCI6MTYyMzQ5NjI3MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.3sS0lb0pK8M0zT7iQf9qmp6bVnLote_-Scx4e5djP0k', 'https://us04web.zoom.us/j/78594437727?pwd=WVpaTzBTdmh3OEttMHEwcUJxL2FxQT09', '6Yd4CZ', 1, '2021-06-12 23:41:13', '2021-06-12 23:41:13'),
(85, 39, '1570344839', 'https://us04web.zoom.us/s/78879756167?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUGM5S2s5NXItNGVKLVdqV2J0ZVhUcUpJRV94TVVibm00UDJmV1lXX1liMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZl9yTW5NQUVuVUFBQUEiLCJleHAiOjE2MjM1MDM0NzQsImlhdCI6MTYyMzQ5NjI3NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.KbAd7KivUwqNUJ5HNYLpjP6KnO_yFQY3q86YctxAgPY', 'https://us04web.zoom.us/j/78879756167?pwd=MHdIMnllZmFWRmJDaGxlRW4ybkNldz09', 'baR8Z4', 1, '2021-06-12 23:41:14', '2021-06-12 23:41:14'),
(86, 39, '548383151', 'https://us04web.zoom.us/s/77857794479?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicGZqVnczdzdmeU9LMjNKSUNIbjE4cURDa2dYN0d3cEFTTkZyYlgzZ0tCYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlZl9yTnBZQUVuVUFBQUEiLCJleHAiOjE2MjM1MDM0NzUsImlhdCI6MTYyMzQ5NjI3NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.7npPIofJtRrjWI2C3auiAD-BMY2YSIyQKf4vrXmskjM', 'https://us04web.zoom.us/j/77857794479?pwd=c2d1NmNDa3FvMEViUUVUMW9nVlhkZz09', 'tm4L7k', 1, '2021-06-12 23:41:15', '2021-06-12 23:41:15'),
(87, 40, '-1881140664', 'https://us04web.zoom.us/s/79723237960?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiaUlFZnAtejQ1TVR1RDVwX3RVcXJmRmJhRFRZcElsTTNtcFBlTkdjNExmZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaFRiQ2c4QUVuVUFBQUEiLCJleHAiOjE2MjM4NTQ3MzcsImlhdCI6MTYyMzg0NzUzNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.gZ7UX2BaSI0RQm2j0f3pshoOoOK4Td2LycGSqsjkIbQ', 'https://us04web.zoom.us/j/79723237960?pwd=eG1iOFZhbmlWVWc1ZHM3WmM0YmFkZz09', 'LtA5u2', 1, '2021-06-17 01:15:37', '2021-06-17 01:15:37'),
(88, 40, '-446252360', 'https://us04web.zoom.us/s/76863158968?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNGRNR3dzSnFJSFNVaXZPRlBHdVMxa2Zob1dvLXd4d2llSk5BMUZFdVlPUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaFRiRG1nQUVuVUFBQUEiLCJleHAiOjE2MjM4NTQ3MzgsImlhdCI6MTYyMzg0NzUzOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5xpttPVF9Im5oK7tu3LvZ9spBMDNrZiH1AbP1M4nG98', 'https://us04web.zoom.us/j/76863158968?pwd=MEg1Wk1CMUFFbTVxTnlhUU9obWZaQT09', '8Utuw2', 1, '2021-06-17 01:15:38', '2021-06-17 01:15:38'),
(89, 40, '2101628301', 'https://us04web.zoom.us/s/79411039629?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUjllVWxTOTRTR2NLd2xpTzNQTHUyN0hfcjdOU241cWdBWW1tVUtsbEJYay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaFRiRW0wQUVuVUFBQUEiLCJleHAiOjE2MjM4NTQ3MzksImlhdCI6MTYyMzg0NzUzOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.GmitNy0Kikd52PkN8MeyqyHYwPfqpjwQ9clZLNBfw9A', 'https://us04web.zoom.us/j/79411039629?pwd=L0k0M0VWYURqQmNSdWNWNjNLclRjQT09', '2mFbi1', 1, '2021-06-17 01:15:39', '2021-06-17 01:15:39'),
(90, 40, '1588222903', 'https://us04web.zoom.us/s/78897634231?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTWhURE5nc2JBSGpRZUdoT2Y0WE5kUnlYbmRYVjlTMTctcFNFZmhjbFR4ay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaFRiRnBrQUVuVUFBQUEiLCJleHAiOjE2MjM4NTQ3NDAsImlhdCI6MTYyMzg0NzU0MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.vwVhNjy_lM_sSFK7LeeQOM5Ocz0SUMrtQrjSJ4txoQQ', 'https://us04web.zoom.us/j/78897634231?pwd=ZjBwZTIyaUdxMkpjMk9wMUtMWktMZz09', 'G53cqT', 1, '2021-06-17 01:15:40', '2021-06-17 01:15:40'),
(91, 41, '-1554640019', 'https://us04web.zoom.us/s/71459804013?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieGlaT0d2V3VIcV9wSEJ1ajBrcUthVXdNZEpxZHUwVi1YamJuX0pWa1Fyay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ0TWZFQUVuVUFBQUEiLCJleHAiOjE2MjQyODc5NDAsImlhdCI6MTYyNDI4MDc0MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ctjLD7kGTiEBaeVvMal0dQfYoKJEKtiCc0R8tnvns0c', 'https://us04web.zoom.us/j/71459804013?pwd=RnJhQi9IRmNqQnRHNWVqcE05YytNZz09', 'z5BNAH', 1, '2021-06-22 01:35:40', '2021-06-22 01:35:40'),
(92, 41, '1189804040', 'https://us04web.zoom.us/s/78499215368?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiT1gweTE5dDJYb3U2aXF5c2FUUGh5LUtkd244WWVLZ3lnZDFRTm5LUFJXZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ0TmpRQUVuVUFBQUEiLCJleHAiOjE2MjQyODc5NDEsImlhdCI6MTYyNDI4MDc0MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5ssYmfyLFlU0BRJSvqDN8vRL7FsPBB6k9LAlNfO9onI', 'https://us04web.zoom.us/j/78499215368?pwd=UzQ2a2lXdVBwZ0dUYnJuY2s3T2Qvdz09', 'ytu9b5', 1, '2021-06-22 01:35:41', '2021-06-22 01:35:41'),
(93, 41, '1398067955', 'https://us04web.zoom.us/s/74412511987?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUTFOTXVSeWEwaC15MFFFOVpZcU02OF9XSlF3YUd3Tk9FRW9hOFhEakpQNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ0T2tvQUVuVUFBQUEiLCJleHAiOjE2MjQyODc5NDIsImlhdCI6MTYyNDI4MDc0MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.4Rxf3heRq80P7VBpXZpH7xDY2G5KnKUHmIi-rneYYbs', 'https://us04web.zoom.us/j/74412511987?pwd=UnU4ZS9WQ1F4REVRSzg3clNRSWpGUT09', '4Y2yCy', 1, '2021-06-22 01:35:42', '2021-06-22 01:35:42'),
(94, 41, '-776812374', 'https://us04web.zoom.us/s/72237631658?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiemdBQlJXdUpKem0wazdrXzdiczJXYm10WFh0SmV4WXI3aVN6REtPWnY5VS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ0UG9FQUVuVUFBQUEiLCJleHAiOjE2MjQyODc5NDMsImlhdCI6MTYyNDI4MDc0MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.uNxL_9m_AM5vjZD0JvwU9PDxD5e3BjeL0kuN2shntnA', 'https://us04web.zoom.us/j/72237631658?pwd=R0xjRWZ5WFgzaXpIdGV2eUJsZzlCZz09', '9vHVe8', 1, '2021-06-22 01:35:43', '2021-06-22 01:35:43'),
(95, 42, '1367625560', 'https://us04web.zoom.us/s/74382069592?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRVd0LXBIY0J6TTJ4U3Y3SGNGdjhkdVhRUWxmYm81NWQ0V0ZtcXlQWXJOOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ5bVZJQUVuVUFBQUEiLCJleHAiOjE2MjQyODgyOTQsImlhdCI6MTYyNDI4MTA5NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.YlJs8u5ml_KwCU1549FReoep8IXLjdE0B88-jU9CRAs', 'https://us04web.zoom.us/j/74382069592?pwd=RjFnSGhzN2QzZzlnZDg0dExKV1NMdz09', 'F6k5cd', 1, '2021-06-22 01:41:34', '2021-06-22 01:41:34'),
(96, 42, '-581415461', 'https://us04web.zoom.us/s/76727995867?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVmpVZDhJTjUwQjRySjRkTkptM0FvV3Zqci0zT2xNM1ZUQ2d5X1M4cWlvZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ5bldJQUVuVUFBQUEiLCJleHAiOjE2MjQyODgyOTUsImlhdCI6MTYyNDI4MTA5NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.s--rwYjniRTkdRw5g7SB4YY3qIJ2WfQuOUHjhpXnFBc', 'https://us04web.zoom.us/j/76727995867?pwd=U0xjTW9SekQ5ZW4wMEJIclFGSTVWUT09', 'aQdA52', 1, '2021-06-22 01:41:35', '2021-06-22 01:41:35'),
(97, 42, '1102267900', 'https://us04web.zoom.us/s/74116711932?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVVpTOTJ4dDRBaGZXM0hXeG1VeHZfbUpMV1pVb1lKZWR4QmEwcHFRbVJsZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ5b1l3QUVuVUFBQUEiLCJleHAiOjE2MjQyODgyOTYsImlhdCI6MTYyNDI4MTA5NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Sl8P1Dq0GAOiix8-pkg9lcX642BC8TnEc8LV0h6yHMk', 'https://us04web.zoom.us/j/74116711932?pwd=SnRrRVpJeXIwRWtnMmNJTThIcmc1dz09', 'MNL22y', 1, '2021-06-22 01:41:36', '2021-06-22 01:41:36'),
(98, 42, '1837993772', 'https://us04web.zoom.us/s/74852437804?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTjlQMkZnVF9MWWZKR0IwSGlCcFNJYUxhVkQ3YVVaNVlhTXZVWHRZcE9Lay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlaTZ5cFl3QUVuVUFBQUEiLCJleHAiOjE2MjQyODgyOTcsImlhdCI6MTYyNDI4MTA5NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.p-l2sZ9NMs07cesxKWo1HQGxUXGmriwUCL5ZNYUvFtk', 'https://us04web.zoom.us/j/74852437804?pwd=cTdxOUMwOUFmU21jY2lXQlVza0RZUT09', 'EZE55N', 1, '2021-06-22 01:41:37', '2021-06-22 01:41:37'),
(99, 43, '-1669955861', 'https://us04web.zoom.us/s/75639455467?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicldFOUdkYVhKUVY0RUdUSWJSaTFYRUpOeHQxYjNwZFREd1ZVa2JZZ1diNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlakFuSDFrQUVuVUFBQUEiLCJleHAiOjE2MjQzMTI3MDgsImlhdCI6MTYyNDMwNTUwOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.miKBfyPSGs8lTZ07uZ8iKqbj1bvDrDeVx5HYZYZepWc', 'https://us04web.zoom.us/j/75639455467?pwd=TmJtWmFGUXBTdjlaR1JqSmtZYVlmUT09', 'wFnt2C', 1, '2021-06-22 08:28:28', '2021-06-22 08:28:28'),
(100, 43, '-1143325967', 'https://us04web.zoom.us/s/71871118065?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMW1ZOG4wamZvd3N2UmZxSFo0M2diaGwzMWhXUEZrUGlhVzNhT1h6N28xYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlakFuSTVrQUVuVUFBQUEiLCJleHAiOjE2MjQzMTI3MDksImlhdCI6MTYyNDMwNTUwOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Esaxhs1ZXla1FH_hxKlHfG9GYCOSrEoYryYdZSovEYc', 'https://us04web.zoom.us/j/71871118065?pwd=SW1pSEg5Qm8yODZGYzlxbHVFT0tUZz09', 'tE4SSH', 1, '2021-06-22 08:28:29', '2021-06-22 08:28:29'),
(101, 43, '-754048820', 'https://us04web.zoom.us/s/72260395212?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRUN3emJLcnd0cnk4dThiWGlmdkwzT2J4NVhBYmFhX2VTUVQxbFdKUWNCYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlakFuSjVrQUVuVUFBQUEiLCJleHAiOjE2MjQzMTI3MTAsImlhdCI6MTYyNDMwNTUxMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.lbXzJm0rE8R_R_AqOw_ijm1y9i7QtkTX8I-GO7KAFl0', 'https://us04web.zoom.us/j/72260395212?pwd=NE5ZN283RkNYa3BYVWRlWUl2TkVZUT09', 'MkgrQ2', 1, '2021-06-22 08:28:30', '2021-06-22 08:28:30'),
(102, 44, '-852522330', 'https://us04web.zoom.us/s/72161921702?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoia1o5SXFHU1phcEIxQUdZTkZnaTZ5NXdSRklnNWRvYmdWREVEZ3ZLYVJoVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbGdRS09RQUVuVUFBQUEiLCJleHAiOjE2MjQ5ODIyOTEsImlhdCI6MTYyNDk3NTA5MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ZatQTxjCrF1J2FlRjot6KN1jOxwQ2S_MugT_Sl4DbFE', 'https://us04web.zoom.us/j/72161921702?pwd=cTFzV00wMzcxS1E5bGt6dlFkRFdydz09', 'A406St', 1, '2021-06-30 02:28:12', '2021-06-30 02:28:12'),
(103, 44, '737698272', 'https://us04web.zoom.us/s/78047109600?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTkViaFpVVUtLUDZhR1luTDMtOWNrNUFlOEpqNkVXWGpQcVRkbHZETnUycy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbGdRTFRzQUVuVUFBQUEiLCJleHAiOjE2MjQ5ODIyOTMsImlhdCI6MTYyNDk3NTA5MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.OWsuYEDCHkYwW5gEqWfX-SvHGu8e1slH_Z5QxBrEkgU', 'https://us04web.zoom.us/j/78047109600?pwd=bHl1dUtWeXl1bmlnSmR6cHgvSFo2QT09', 'NE1kKR', 1, '2021-06-30 02:28:13', '2021-06-30 02:28:13'),
(104, 45, '-811855731', 'https://us04web.zoom.us/s/76497555597?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoid3NCdUxuYnBHRzJnY1ZmMlhyZUxyVVhYdjhPdWprMlR0STN4eEFFRUpRYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbGtydFRNQUVuVUFBQUEiLCJleHAiOjE2MjUwMDA4NzQsImlhdCI6MTYyNDk5MzY3NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Kdf3tYCm6TdF9BHjpbIIi3Eu8Mk41LTCZ8aTXjGD4Gs', 'https://us04web.zoom.us/j/76497555597?pwd=T0JyMTRGelluTTl4SEdzKy9vOGE1Zz09', '8qC8gL', 1, '2021-06-30 07:37:54', '2021-06-30 07:37:54'),
(105, 46, '-1994368943', 'https://us04web.zoom.us/s/71020075089?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibV9rS0ZJanhYR1dldnhuRWdWczBiQWcyME0xWXJqVXZBQ1VmNWxMR3Y1SS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbGs4VnZZQUVuVUFBQUEiLCJleHAiOjE2MjUwMDE5NjQsImlhdCI6MTYyNDk5NDc2NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.u_7tnDzkFglWjXVuRtiMwwMOgAsNUdAwBMQ6XYifgck', 'https://us04web.zoom.us/j/71020075089?pwd=VVB5RWNxQTFvM095UHAvVDRGc1lydz09', 'fBfRE3', 1, '2021-06-30 07:56:04', '2021-06-30 07:56:04'),
(106, 47, '-196700096', 'https://us04web.zoom.us/s/72817743936?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUklMUHRIcEd5ZXQyWVRLUFNfS1FTSzQ0UDc1azR5bUlsVXM4eV9UQlpTMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbHItN0M0QUVuVUFBQUEiLCJleHAiOjE2MjUwMzE0OTMsImlhdCI6MTYyNTAyNDI5MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5kIqJuwyRXz9B95CSJQ00PYu1eI72yZbbL-dsUiSs1k', 'https://us04web.zoom.us/j/72817743936?pwd=amMxOWkvaFBvb1REZWtmbFphSkhudz09', 'Yf3my4', 1, '2021-06-30 16:08:14', '2021-06-30 16:08:14'),
(107, 47, '267787354', 'https://us04web.zoom.us/s/77577198682?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiR0FnTWF3ZmJYbl9iNkVCUWpxaGhTNDRTUVNKa19vSWR6V09pNndKb2pjNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbHItOEljQUVuVUFBQUEiLCJleHAiOjE2MjUwMzE0OTUsImlhdCI6MTYyNTAyNDI5NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xYvFhaMcVWdSz--EVQd55w_UYKD3oCJ57JWHvP8Fszg', 'https://us04web.zoom.us/j/77577198682?pwd=ZVdIZ0RMVG5oR3hBa0xmaW1IWmFydz09', 'zMyX1C', 1, '2021-06-30 16:08:15', '2021-06-30 16:08:15'),
(108, 47, '1323790415', 'https://us04web.zoom.us/s/78633201743?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiX1Z2c041YjJ3R0Y1MHN6YktXaUFkWWlwQ1drWG9yUjNyVXM2eXNwOE5INC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbHItOUtrQUVuVUFBQUEiLCJleHAiOjE2MjUwMzE0OTYsImlhdCI6MTYyNTAyNDI5NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.UIYrJ0UT-RK4UEizoL5OV4oV97ypTDdqRuav_MLrP8Q', 'https://us04web.zoom.us/j/78633201743?pwd=T0R5dUJEQi9ia3htOTZ4TkZJRkdjQT09', '3aNRuE', 1, '2021-06-30 16:08:16', '2021-06-30 16:08:16'),
(109, 48, '-358860484', 'https://us04web.zoom.us/s/72655583548?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMmczeEVtZG9LSTc1Nl9JS1FNODBITTRSS1RMZlZWQVdtaHV0eU1nLVppMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbHNEWlU4QUVuVUFBQUEiLCJleHAiOjE2MjUwMzE3ODcsImlhdCI6MTYyNTAyNDU4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.StRvYaVoH0khAK-0ffI7GFWmbEN1-RqZi5avz_KYL8Y', 'https://us04web.zoom.us/j/72655583548?pwd=QWRXb1U2UkRMYWpxbDVEa3RLME9KZz09', 'g87P3n', 1, '2021-06-30 16:13:07', '2021-06-30 16:13:07'),
(110, 48, '-453210222', 'https://us04web.zoom.us/s/76856201106?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZkdDOTg0OXVmSHlqRVFBSGM5bXo4Mm5wNHZPZWdGQ3FsX2o3cmxBb3ptay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbHNEYVdzQUVuVUFBQUEiLCJleHAiOjE2MjUwMzE3ODgsImlhdCI6MTYyNTAyNDU4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.qI6U_ddeI08cpbUYgmhfrE0dRKppYJiY5rFYSZIrY5E', 'https://us04web.zoom.us/j/76856201106?pwd=SlNVVFhpMG1UY2hpWDZVRTZ2SngxUT09', 'M7sh8J', 1, '2021-06-30 16:13:08', '2021-06-30 16:13:08'),
(111, 48, '-751707371', 'https://us04web.zoom.us/s/72262736661?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidEZJR0dTYm5nLTNkMTZac3dGMEJlLUsxTEV6Q0RuMkhWRXpNSUEzZWtKcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbHNEYlk4QUVuVUFBQUEiLCJleHAiOjE2MjUwMzE3ODksImlhdCI6MTYyNTAyNDU4OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.mS_1dovn3DLvY9rV64X2Eebby1Il8tfN59JwRTQolYk', 'https://us04web.zoom.us/j/72262736661?pwd=VUFkUmhuNzhhVU5zbGc4RjR6UWszdz09', '6amsUd', 1, '2021-06-30 16:13:09', '2021-06-30 16:13:09'),
(112, 49, '-827500896', 'https://us04web.zoom.us/s/72186943136?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidEhEX1k3ZWVacGUwU0laaC1PekZoWTAwR1B6NUpVTU1DVVJ3MXQ3QUZUZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUE2WDZnQUVuVUFBQUEiLCJleHAiOjE2MjUxMTkyNzYsImlhdCI6MTYyNTExMjA3NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.0D_Cn7pRjltXxkTQvVMaX3NzeYe5U61JB5udnhmTYB4', 'https://us04web.zoom.us/j/72186943136?pwd=UzJZb1pIZkR3TzJvODEzVEFTbldiZz09', '70H94U', 1, '2021-07-01 16:31:16', '2021-07-01 16:31:16'),
(113, 49, '-1958613861', 'https://us04web.zoom.us/s/71055830171?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieEFxbDAwMWRybHBiSXB0RGFCUTRrTHhnX0UxVjQyWk1uLXF3OE5vN2NDZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUE2WTg0QUVuVUFBQUEiLCJleHAiOjE2MjUxMTkyNzcsImlhdCI6MTYyNTExMjA3NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xasg05YzNmFo11vrsb_sKVIq1eKFscMIYMT_SZXz0bQ', 'https://us04web.zoom.us/j/71055830171?pwd=UkxCOVMvU3Z6bFZJNmVBandHK3FHdz09', 'nHF0P1', 1, '2021-07-01 16:31:17', '2021-07-01 16:31:17'),
(114, 49, '-1650800892', 'https://us04web.zoom.us/s/71363643140?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWFRrOGphZGNGNzlNSTdudTMwYWVWaXZUbUNwbDFkZVFOajU5RkE3c3hDRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUE2WjhZQUVuVUFBQUEiLCJleHAiOjE2MjUxMTkyNzgsImlhdCI6MTYyNTExMjA3OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.h9dy0rwkefrviDrQOPibuoojP8GxuO1SQ-HVH-R7jVw', 'https://us04web.zoom.us/j/71363643140?pwd=WXNnODFoOWVFSVZ1MnhBNHNhQkNKQT09', 'h93ZNu', 1, '2021-07-01 16:31:18', '2021-07-01 16:31:18');
INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(115, 50, '1311366308', 'https://us04web.zoom.us/s/78620777636?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiblBsRGRkalZhYzV0emkwNUlya1ZoOE5xOG1hbWxtZGVtMUJwYUxEa0syMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUN3MXZBQUVuVUFBQUEiLCJleHAiOjE2MjUxMjcwMzksImlhdCI6MTYyNTExOTgzOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.4bxdPO-n0wqK2DtjK8E73S2LlZXSfYEIx1n739TfRLA', 'https://us04web.zoom.us/j/78620777636?pwd=K1puRThmUXRLOFVVdlZIejljbHRKQT09', 'mmA57r', 1, '2021-07-01 18:40:40', '2021-07-01 18:40:40'),
(116, 50, '1556174588', 'https://us04web.zoom.us/s/74570618620?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZmtBZVhvSE1RWnFwN09qaHhnM1NoYUh6LTFHOTJuV21QNm9UWWVZMG1PRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUN3MnpNQUVuVUFBQUEiLCJleHAiOjE2MjUxMjcwNDEsImlhdCI6MTYyNTExOTg0MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.SW0vAQuL8kvTtlfln1Jqp1-8ROddfwa7Fa8WDPuMqCg', 'https://us04web.zoom.us/j/74570618620?pwd=TFdFRnBYb3J5dWttVU1NOWY0ZkZqQT09', 'GysUd0', 1, '2021-07-01 18:40:41', '2021-07-01 18:40:41'),
(117, 51, '-800834392', 'https://us04web.zoom.us/s/76508576936?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicUJQem9DXzJ3ZUdhVGRhcktXOC02UmxzNkRoMkVsRktYc3FFakdQbHVMTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUM1c3A0QUVuVUFBQUEiLCJleHAiOjE2MjUxMjc2MjAsImlhdCI6MTYyNTEyMDQyMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.LQDzYmr8KR0to9lt6SHht41ch24iqqQ1c9ec2mxNbpk', 'https://us04web.zoom.us/j/76508576936?pwd=c25tWkE5U0pKS0k4eTBTRkVTT2ZHQT09', 'JnCa1d', 1, '2021-07-01 18:50:20', '2021-07-01 18:50:20'),
(118, 51, '-970315437', 'https://us04web.zoom.us/s/76339095891?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRmVhRHoxN0F0bWF5Z1FrNFNKMGJTbHQzbjFOQkR2ai13SHhvanhTWnN0US5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUM1dHZjQUVuVUFBQUEiLCJleHAiOjE2MjUxMjc2MjEsImlhdCI6MTYyNTEyMDQyMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Ax6K8N5Wx7GGU7tP7AhfPt7P6gjHPxwrXSSLETMVaZ0', 'https://us04web.zoom.us/j/76339095891?pwd=ZlEyRldzTVFNb2U1TGFaTjZCbysyUT09', 'fNJxp7', 1, '2021-07-01 18:50:21', '2021-07-01 18:50:21'),
(119, 52, '-2062343937', 'https://us04web.zoom.us/s/79542034687?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoib3NVTmU0S1A4UUxYZi1ieUlySy1YUzhJOHFfcjUwMHhBTjBtZlUwa1RsRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbURtdnFNQUVuVUFBQUEiLCJleHAiOjE2MjUxMzA1NzIsImlhdCI6MTYyNTEyMzM3MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ygrL6Lol5KKoE5MC3vBZvTquynS6diWqKJ3hjtPyfxg', 'https://us04web.zoom.us/j/79542034687?pwd=RG51bWUrNmNmWjNLRTAzMXQ0ME1oQT09', 'T0s76G', 1, '2021-07-01 19:39:32', '2021-07-01 19:39:32'),
(120, 52, '-158537274', 'https://us04web.zoom.us/s/77150874054?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibGZFNGpSYWR1aGs3MnYzZ09IX3p0VC13VVZKVDlqTGpCQl9TbkQtUXJIMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbURtdzVnQUVuVUFBQUEiLCJleHAiOjE2MjUxMzA1NzMsImlhdCI6MTYyNTEyMzM3MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.q5w8zu6ATLavTZNuf5m-2jLLE57cWhJd0WC4nFdiUCE', 'https://us04web.zoom.us/j/77150874054?pwd=U29XdXdyQ2tsTzlITFc2bWpXZXUzZz09', 'J3vR4V', 1, '2021-07-01 19:39:34', '2021-07-01 19:39:34'),
(121, 52, '-1494383513', 'https://us04web.zoom.us/s/75815027815?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMFpsalVoQVJDMTctelFPeUFyMng4a2E0MTFQeHFpcnlZYmRQSnRPYmhTMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbURteDlNQUVuVUFBQUEiLCJleHAiOjE2MjUxMzA1NzUsImlhdCI6MTYyNTEyMzM3NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.nw0zmjmP8luadO77LwF14yCdBO1gz4hXYeRuC8tIyJw', 'https://us04web.zoom.us/j/75815027815?pwd=eU01ZU90UDNQSGhNMmN3S1VkRVlBZz09', 'ZxUHD2', 1, '2021-07-01 19:39:35', '2021-07-01 19:39:35'),
(122, 53, '-96916507', 'https://us04web.zoom.us/s/72917527525?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiYXhEenpHRWxmTWZfcDl6d2k4YlAtXzd1bEJ4SGZFdXRUcVZjb0xWT3Bfby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbUlsWTlvQUVuVUFBQUEiLCJleHAiOjE2MjUxNTE0NTUsImlhdCI6MTYyNTE0NDI1NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.3L8NWtEkULglsg-HLLHHwxvw94jMF2BbxKoizCTLk9Q', 'https://us04web.zoom.us/j/72917527525?pwd=OTBEN2RyQVRKOFE5Y2ZKcEZNTFNEUT09', 'C5qww1', 1, '2021-07-02 01:27:35', '2021-07-02 01:27:35'),
(123, 54, '596711716', 'https://us04web.zoom.us/s/73611155748?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicnZIUTM5eDZqTjRxRk9pdlZTU1N4TnNKTUpKZEF5cHROM19oWDI0NldmVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbVc3bUdnQUVuVUFBQUEiLCJleHAiOjE2MjUyMTE2MzAsImlhdCI6MTYyNTIwNDQzMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.AfPByB16c5XZkBOAwDsMsvEGE3rMOU3nf9aHUn-QU3s', 'https://us04web.zoom.us/j/73611155748?pwd=Qm1uM2tYTk82UlR4V2pKdCtrZ0dYQT09', 'fLFn8L', 1, '2021-07-02 18:10:31', '2021-07-02 18:10:31'),
(124, 54, '1831221506', 'https://us04web.zoom.us/s/74845665538?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiN3NLRlNtd2trMHItUzN1NXR4eGpPTGI5Wnh5MzNZcGxQeWt6dmtoWnBNWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbVc3blFrQUVuVUFBQUEiLCJleHAiOjE2MjUyMTE2MzIsImlhdCI6MTYyNTIwNDQzMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.pIn7sIkCPsrZK5x7BXQH_7GoxpfrKNR0jPlYCEWCyRo', 'https://us04web.zoom.us/j/74845665538?pwd=cDVUMW1wQ2ZLYnF6eW1rcHlwbklUZz09', 'rT0xp9', 1, '2021-07-02 18:10:32', '2021-07-02 18:10:32'),
(125, 54, '-1800967803', 'https://us04web.zoom.us/s/71213476229?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZVhYSl8wSFJTSklpeTFHdUlqSkcyaThzVktTdjVjZms5ZnlYbkZhUjlCby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbVc3b093QUVuVUFBQUEiLCJleHAiOjE2MjUyMTE2MzMsImlhdCI6MTYyNTIwNDQzMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.s5J68oLoNYrlSAmOD9sJncQzUxnyprk5OYtBFM2B_Ss', 'https://us04web.zoom.us/j/71213476229?pwd=WDM2NGxCL25wb3F3VkhndUUrT1F0QT09', 'R9B65S', 1, '2021-07-02 18:10:33', '2021-07-02 18:10:33'),
(126, 55, '-973542616', 'https://us04web.zoom.us/s/72040901416?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoianhzMGpTUm1od1ZMOTlaclV3dS1CR1ltYXZEMElJX09CYjZ5d29EXzFoSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbWVycG9BQUVuVUFBQUEiLCJleHAiOjE2MjUyNDQxNDAsImlhdCI6MTYyNTIzNjk0MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.EawZcKMZaLkU-T8A0fG6nA3kzHNOhBToGoXosLkBUJY', 'https://us04web.zoom.us/j/72040901416?pwd=TEtCRmYrM1Y3OVExeks0d1Z1Vk1OUT09', 'bbL5AK', 1, '2021-07-03 03:12:20', '2021-07-03 03:12:20'),
(127, 55, '2002618524', 'https://us04web.zoom.us/s/79312029852?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoid2RMdXNtbEpoV00zQ2I4M3Vqb0xpQ3VZUS11YUVxV1RldlZpU1JxMkxHZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbWVycXFzQUVuVUFBQUEiLCJleHAiOjE2MjUyNDQxNDEsImlhdCI6MTYyNTIzNjk0MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.zEY9E1J0DMIyf_1yFRuE644g5SrvDEmnIOx-XIBdf0o', 'https://us04web.zoom.us/j/79312029852?pwd=VklCZVhwT04yUWRqTG9NbXFCSmlNUT09', 'J16W8J', 1, '2021-07-03 03:12:21', '2021-07-03 03:12:21'),
(128, 55, '-350452636', 'https://us04web.zoom.us/s/76958958692?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRlp2dXFBZnhfUFQwNW81bXMyMGdvZlppdjdldXNWaXl6NHpnSERXR24xRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlbWVycnVVQUVuVUFBQUEiLCJleHAiOjE2MjUyNDQxNDIsImlhdCI6MTYyNTIzNjk0MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.3WGjrj5F0L8Xvxg0AdyT1Ujvn0XU6E7iYsfzP2FgnHo', 'https://us04web.zoom.us/j/76958958692?pwd=VXV2WmlXUE9BL094d3NWNHpoKzJsQT09', '9qw1Xq', 1, '2021-07-03 03:12:22', '2021-07-03 03:12:22'),
(129, 56, '2051819209', 'https://us04web.zoom.us/s/75066263241?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicG9BZ2g1VU9pZkt6enBQRkl6V0JyZ1ZvVjBWcXlLalVfelB0UngzMXRuQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlb0NrcXBBQUVuVUFBQUEiLCJleHAiOjE2MjU2NjMxMTMsImlhdCI6MTYyNTY1NTkxMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Bn7LCeV4oCE3B_tabJONWNV_QNJyLUSfLG_k-hI22ak', 'https://us04web.zoom.us/j/75066263241?pwd=Zi96WjN0NGVmWkF1NlZ1Q0trV2Q5Zz09', '05bX91', 1, '2021-07-07 23:35:13', '2021-07-07 23:35:13'),
(130, 57, '-548746191', 'https://us04web.zoom.us/s/76760665137?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMXVOZkVLaU5PczVPT0c0MTZVNUpfOUhZaC04WnBtVWgxTzc1cGk2alVhSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlb0NsVUxFQUVuVUFBQUEiLCJleHAiOjE2MjU2NjMxNTUsImlhdCI6MTYyNTY1NTk1NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.burefny-Li0Vlrsi5n1EYm2beopFO2wQ6RrWTvqGmpQ', 'https://us04web.zoom.us/j/76760665137?pwd=OURSMkwzd3hkZGROZWpvUldwSkdPdz09', 'uh6pWP', 1, '2021-07-07 23:35:55', '2021-07-07 23:35:55'),
(131, 57, '2033089750', 'https://us04web.zoom.us/s/75047533782?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiOFFFN0hXM254NkZyVTJOUlZhY1R6WDJ2UXlrZGZiUHhaMVU2WWttdng5OC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlb0NsVktJQUVuVUFBQUEiLCJleHAiOjE2MjU2NjMxNTYsImlhdCI6MTYyNTY1NTk1NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.cZvpUDwWXHWmm-osVvuSHKqkXkFTG6jZ86-pvcz_QVM', 'https://us04web.zoom.us/j/75047533782?pwd=WGxVWW03N3JFQTU1ZmVON1hVcEs3dz09', 'Ua4fXP', 1, '2021-07-07 23:35:56', '2021-07-07 23:35:56'),
(132, 58, '668133175', 'https://us04web.zoom.us/s/77977544503?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSS1KVmRqMlhrTk5yRm5DRmRTZDVCMDV5NlJKVFhoRHpVdFYtTkV1d25Jcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlby0yb1ZrQUVuVUFBQUEiLCJleHAiOjE2MjU5MTU5NDgsImlhdCI6MTYyNTkwODc0OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ExauzGZPBqwZoEcPxxAzBonaDC3J4XXVCFRcIT1p2kE', 'https://us04web.zoom.us/j/77977544503?pwd=TzdSSkNaVjlZZGdWYlkyNFArQzdxdz09', '5nApPc', 1, '2021-07-10 21:49:08', '2021-07-10 21:49:08'),
(133, 58, '853589872', 'https://us04web.zoom.us/s/73868033904?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMFdkZkdYdkpoX1BjVi1pemtNRm5mcVpjUDhjcjRCZWdjVFRXY1lNVUJNcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlby0ycGFVQUVuVUFBQUEiLCJleHAiOjE2MjU5MTU5NDksImlhdCI6MTYyNTkwODc0OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.qmbY7THsSrd8B3bijs1gdKs2BvyK_GJZH45cjK9q98g', 'https://us04web.zoom.us/j/73868033904?pwd=dGFFdFRRQWZjang1UzliVTZuYTlQZz09', 'vW45qL', 1, '2021-07-10 21:49:09', '2021-07-10 21:49:09'),
(134, 59, '-825868893', 'https://us04web.zoom.us/s/76483542435?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTWcxQnJTaXlOWlVPOEhVazNsRExRRFlTV09zazYzZ3VHN0Z1SFdwckhNay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlb19PTjVRQUVuVUFBQUEiLCJleHAiOjE2MjU5MTc0OTQsImlhdCI6MTYyNTkxMDI5NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.n50N5y6zOO2o2rK584ftlncSnUZ9c_CPcbv5eqTWZZY', 'https://us04web.zoom.us/j/76483542435?pwd=VEZQWkhXS0REbXhHUWVETWlCTE1Pdz09', '81Zz5T', 1, '2021-07-10 22:14:54', '2021-07-10 22:14:54'),
(135, 59, '-1646268624', 'https://us04web.zoom.us/s/79958110000?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVjFOT05EcGdKWTkxeXVjWUlUWnhNd1hNV21PRElVeW9Ta2dLQ1RYS0o1TS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlb19PTzdBQUVuVUFBQUEiLCJleHAiOjE2MjU5MTc0OTUsImlhdCI6MTYyNTkxMDI5NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.JyzevR2mmqKh9R3K5PLZ0RShAl1TykF-X9TxPjdPKrk', 'https://us04web.zoom.us/j/79958110000?pwd=M0pKbmN6VWVPUXpPNU02UXpwWXpqdz09', 'ARazm9', 1, '2021-07-10 22:14:55', '2021-07-10 22:14:55'),
(136, 60, '1260127832', 'https://us04web.zoom.us/s/74274571864?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVS1LTXNJTXRlNFkwM1B0cTVXTUVqUDZXQ0c1emRHNmluVWZXTkpTZ2xnTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcEFzbHkwQUVuVUFBQUEiLCJleHAiOjE2MjU5MjM2NzksImlhdCI6MTYyNTkxNjQ3OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.urlfsJHkbsaA7qSthOFQ-LuoJznLHnJVoR44Jpbl92M', 'https://us04web.zoom.us/j/74274571864?pwd=VUFLS3hvQ1d3R2RaZmJSVldvN1llUT09', 'h6n6AE', 1, '2021-07-10 23:57:59', '2021-07-10 23:57:59'),
(137, 61, '-1918928101', 'https://us04web.zoom.us/s/79685450523?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZlJuRTRKWHlCd01ZbEFremRjTlZCbjF2NnRIZUNDY0VqMExkcjJLZ1Y2VS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcEI3WjNFQUVuVUFBQUEiLCJleHAiOjE2MjU5Mjg4NDQsImlhdCI6MTYyNTkyMTY0NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.DgFrNdXDuN2s62zDmE8hV2410MflKF8azJxWmbWdElo', 'https://us04web.zoom.us/j/79685450523?pwd=ZnBaaXBOcE5RUm5oOS9lbUVLODJrQT09', 'R9dLFb', 1, '2021-07-11 01:24:04', '2021-07-11 01:24:04'),
(138, 62, '81937094', 'https://us04web.zoom.us/s/73096381126?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibzFadFM4a0NEQW5vS1ZFY3IwM2EyVzlfVmdhdUN1RjhROWthRWdBdGtMay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcHJxRFNnQUVuVUFBQUEiLCJleHAiOjE2MjYxMDM4NjcsImlhdCI6MTYyNjA5NjY2NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.nFCAQkdcEpdWZIAjZqvUMUYvkN00Ovt_Nio8ulqmxHg', 'https://us04web.zoom.us/j/73096381126?pwd=YU5Fb0tnNzBqQ0tiV1BkOFpLT21hUT09', '0YcSf9', 1, '2021-07-13 02:01:08', '2021-07-13 02:01:08'),
(139, 63, '274889819', 'https://us04web.zoom.us/s/77584301147?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiS3RjenVzX3EyVmFnN1VWbEh5MDFHUDNGVHoxOENjX2JfYzIxc1Rjb0xGRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcVRTVTkwQUVuVUFBQUEiLCJleHAiOjE2MjYyNzAwODUsImlhdCI6MTYyNjI2Mjg4NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.audM5aBlF-CW42Oss5csRq4I3fAY7H3jUW5lrpLhQTU', 'https://us04web.zoom.us/j/77584301147?pwd=NW50dStoNHhOUGpXRlgwaDd6c1k2QT09', '2qFr8d', 1, '2021-07-15 00:11:25', '2021-07-15 00:11:25'),
(140, 63, '1517318883', 'https://us04web.zoom.us/s/74531762915?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVjBtbGtpWkh0RnNENmlOc0k4b2pEcmRMbnpteVljd3JzNGxHS2dZejJ6ay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcVRTV0JJQUVuVUFBQUEiLCJleHAiOjE2MjYyNzAwODYsImlhdCI6MTYyNjI2Mjg4NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.DmC_uebc8l7VQSe9szHj7LQUOMmFm_bTpkjZqcoMco4', 'https://us04web.zoom.us/j/74531762915?pwd=VUxKOFRhbmpvcmhGYnhWNXdKL1g3dz09', 'ty8z4b', 1, '2021-07-15 00:11:26', '2021-07-15 00:11:26'),
(141, 63, '1578059387', 'https://us04web.zoom.us/s/74592503419?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiLVV4Q0UzeWItQTZ0TlkzUlJCNkkzMmo0XzlQanV5Z0pvenBmS0Z1a3VBWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcVRTWERvQUVuVUFBQUEiLCJleHAiOjE2MjYyNzAwODcsImlhdCI6MTYyNjI2Mjg4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.XsBFNOc7Ir7ZYeN_EKGEucMPpAi1dm14mMgsDY7EoHw', 'https://us04web.zoom.us/j/74592503419?pwd=YytWVHFrZnI1OGVrNGtuaHlaamc1UT09', 'm0KCYy', 1, '2021-07-15 00:11:27', '2021-07-15 00:11:27'),
(142, 63, '127454386', 'https://us04web.zoom.us/s/73141898418?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiazJiVjN5bXl0QVQweXhoZUo4TXREeTZBYm9xay1MMXNXNDZ2b2hHR3ZhNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcVRTWUc0QUVuVUFBQUEiLCJleHAiOjE2MjYyNzAwODgsImlhdCI6MTYyNjI2Mjg4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.4_6ohTtmV6lpNXn5XF3rlAS9_QhQAQ1gN3ysHUIpGPw', 'https://us04web.zoom.us/j/73141898418?pwd=OGJMZ1o4M2xVQ25NeUtWT3BUeDhBQT09', 'Rqf7Wz', 1, '2021-07-15 00:11:28', '2021-07-15 00:11:28'),
(143, 64, '-1359227812', 'https://us04web.zoom.us/s/75950183516?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiaEJEbDJKa0JRRjFFNTBGN3NoMUFpeGVHdklQbGswbjQzSzlCcXFOaXFyOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcVdmUFlzQUVuVUFBQUEiLCJleHAiOjE2MjYyODM1MTQsImlhdCI6MTYyNjI3NjMxNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.7973DmZu48yrBPwIePFV7t7hf6fxuIM8uY2nDrz8KFE', 'https://us04web.zoom.us/j/75950183516?pwd=V0lCclMxbElMb0VvMG1YVkkxWXdpQT09', 'bQa1Z5', 1, '2021-07-15 03:55:14', '2021-07-15 03:55:14'),
(144, 64, '199276997', 'https://us04web.zoom.us/s/73213721029?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNHU2cjBIakRXMG4yRnFla2laR2VocXpfaEI2MklCWldYWHNZb3hhRlZ4QS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcVdmUk1BQUVuVUFBQUEiLCJleHAiOjE2MjYyODM1MTYsImlhdCI6MTYyNjI3NjMxNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.EiRESYHThf1lR2FeiMEsq9zeCx1elTdZIIQ1RzN77II', 'https://us04web.zoom.us/j/73213721029?pwd=d0plbEcvOTkxcnpBQlZTcjlPeGhTZz09', 'H7K4G6', 1, '2021-07-15 03:55:16', '2021-07-15 03:55:16'),
(145, 65, '1926466500', 'https://us04web.zoom.us/s/74940910532?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMFkwdndLRUhINnhnc1pCR3ZJRFVHUzE3Sm41blFra2NmWmFhZkhaTXJ1TS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcmpETnI4QUVuVUFBQUEiLCJleHAiOjE2MjY2MDQ2MzksImlhdCI6MTYyNjU5NzQzOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.rH1ZSqEcGXcv_gPTWldXFriAbfmJH1N6yTTW0Q6FcmE', 'https://us04web.zoom.us/j/74940910532?pwd=cjNFdE5HRDJLSWQ1Yi9UR3dLaG8wdz09', 'nFWYq4', 1, '2021-07-18 16:37:19', '2021-07-18 16:37:19'),
(146, 65, '-1507005626', 'https://us04web.zoom.us/s/71507438406?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMENXaXBQU3BEcXVBc250RDRKR05kVjhYUUpMQUR5Z0lmT0V1RS1iZFJGNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlcmpET3dVQUVuVUFBQUEiLCJleHAiOjE2MjY2MDQ2NDAsImlhdCI6MTYyNjU5NzQ0MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.fOOVB1xLl1GunoQeBsrh16xTfsjcJS7r_cXf-flpmhI', 'https://us04web.zoom.us/j/71507438406?pwd=ZUNac3BIalhINytyL1ZUakcxay9Xdz09', 'Wsz9MU', 1, '2021-07-18 16:37:20', '2021-07-18 16:37:20'),
(147, 66, '-1765894597', 'https://us04web.zoom.us/s/71248549435?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiU182TmFWZW5oYkllUjdwV1VkM01OV3NGbUx2am1fOGZKcnVhanpmWkwycy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0lDb09nQUVuVUFBQUEiLCJleHAiOjE2MjY3NTk3OTAsImlhdCI6MTYyNjc1MjU5MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.hP-Yc_v51tmdGd_xBmXxBaCmouQxvvz2vbOtDcqrPEo', 'https://us04web.zoom.us/j/71248549435?pwd=dnZIRVhPS2MzMXU2Vzl5YzVXK1lPQT09', 'H5i1Y1', 1, '2021-07-20 11:43:10', '2021-07-20 11:43:10'),
(148, 66, '534957161', 'https://us04web.zoom.us/s/73549401193?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidGZEWEY0M2JmZHVSMmM0VEY3eUJtZTVZaHZtSU9NUGwwaUVVU1NVV2k2cy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0lDcFRzQUVuVUFBQUEiLCJleHAiOjE2MjY3NTk3OTEsImlhdCI6MTYyNjc1MjU5MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.XRNt61zRFfr_Ny2SPqiQvXp7HfXyj_XwHYH8wSdBwLU', 'https://us04web.zoom.us/j/73549401193?pwd=VmZRL2RlckM1ZjdwK2M0MFRUa2ZOUT09', '3qm9T7', 1, '2021-07-20 11:43:11', '2021-07-20 11:43:11'),
(149, 67, '2113946933', 'https://us04web.zoom.us/s/75128390965?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSXdwOHh6cUNidXFYNXlSTmxpaHRIMENQcTBxdHBVWXNBS2ItN2d4NkdzSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0lEX0ZBQUVuVUFBQUEiLCJleHAiOjE2MjY3NTk4NzgsImlhdCI6MTYyNjc1MjY3OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.A5P7obEag3uUfHveu-VibRVcm-wI00__BCdOTi5FITs', 'https://us04web.zoom.us/j/75128390965?pwd=ZTJUNnlsSHB4RDJCK3g3MkNDZlN6UT09', 'c2qXH6', 1, '2021-07-20 11:44:39', '2021-07-20 11:44:39'),
(150, 67, '233168602', 'https://us04web.zoom.us/s/73247612634?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWVlOZXVNTkkxVmc1UHNfREhNbUtTQWtnM3BPWWU4XzFXZHhvSXotM09WTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0lFQUdvQUVuVUFBQUEiLCJleHAiOjE2MjY3NTk4ODAsImlhdCI6MTYyNjc1MjY4MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.jlGwBNwcatNuGxfWhMOSOhOQPfuPGcK_hUrGIZcol2M', 'https://us04web.zoom.us/j/73247612634?pwd=d2NkamI1TzBGZlJ1YlduaEFGUlN4QT09', '3KSrKp', 1, '2021-07-20 11:44:40', '2021-07-20 11:44:40'),
(151, 68, '1516462922', 'https://us04web.zoom.us/s/74530906954?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiYTZCRjk0aVJrdkpVUmxORU9tNnFqYVlYbFVVOHBMRExZVFota3BXVTU3WS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0lGejhNQUVuVUFBQUEiLCJleHAiOjE2MjY3NTk5OTgsImlhdCI6MTYyNjc1Mjc5OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5_cyKyuI1Dr7syX1OAd-spq_I8umzW9B8VtJawc0D2I', 'https://us04web.zoom.us/j/74530906954?pwd=dnk4RUpEcTc1RCtTL1hpb2JOSmwrdz09', '4EN4UZ', 1, '2021-07-20 11:46:38', '2021-07-20 11:46:38'),
(152, 68, '-1776217348', 'https://us04web.zoom.us/s/71238226684?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiS3BZUmZtZ3FZOVhjTzVCQ2psWXhySzR1NmFjQzFLT0VLWGE5UWgxbnpHZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0lGMC00QUVuVUFBQUEiLCJleHAiOjE2MjY3NTk5OTksImlhdCI6MTYyNjc1Mjc5OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.H8amd_eS3YgXmztx5UUX4H92LCy6pdD5OpmFcvDRsuo', 'https://us04web.zoom.us/j/71238226684?pwd=M0JDcUJyb29DeVlxR2hDazhKdkN6Zz09', 'PW3uca', 1, '2021-07-20 11:46:39', '2021-07-20 11:46:39'),
(153, 69, '577184710', 'https://us04web.zoom.us/s/77886596038?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZ202cEhnRUVqNHptS2pYSEw0UDlDM3pvVkhha2hkX1lvMEJLQ3hUSTJMdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0pDUXRVQUVuVUFBQUEiLCJleHAiOjE2MjY3NjM5NjAsImlhdCI6MTYyNjc1Njc2MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.J6q5MHCxo0p_3_0OjmpVJ7FHU4EP9-NdFcIirXkh8Fk', 'https://us04web.zoom.us/j/77886596038?pwd=bDRmbmY1amVkbURpWnljZ09nYkpwZz09', 'PCb8hv', 1, '2021-07-20 12:52:40', '2021-07-20 12:52:40'),
(154, 69, '1199485281', 'https://us04web.zoom.us/s/74213929313?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWC1xd1Mxb0xwUVcxUk04bWlJcFRpVGNzcjdScDlBaTdPTHI5ZDhrSWtzMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0pDUnRJQUVuVUFBQUEiLCJleHAiOjE2MjY3NjM5NjEsImlhdCI6MTYyNjc1Njc2MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.UJl9f9ZuD0-acWWtoK6xWmmj4cRFMUwmf3YufvV12vg', 'https://us04web.zoom.us/j/74213929313?pwd=aUg5RnFkQWpNMzAvcEJ1QlJnMFhwdz09', 'c51pp5', 1, '2021-07-20 12:52:41', '2021-07-20 12:52:41'),
(155, 69, '775288896', 'https://us04web.zoom.us/s/78084700224?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSlJKZWpsU2xMZ0pPSGNfdmctQjZUTDNaOE9HY3FuZzFYbDhMVmZ4UjQzay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0pDUzFNQUVuVUFBQUEiLCJleHAiOjE2MjY3NjM5NjIsImlhdCI6MTYyNjc1Njc2MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.-y0-bmsMhWuYTJsmfapyzNAubP05bgmWX9jyMvmDmLQ', 'https://us04web.zoom.us/j/78084700224?pwd=WWpqNkR2aTVCL2JVVHFDMHhIWmZEdz09', '98v8kH', 1, '2021-07-20 12:52:42', '2021-07-20 12:52:42'),
(156, 70, '1253698290', 'https://us04web.zoom.us/s/78563109618?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSjcyUFRZdjFlRW9NZHdPb1Y4N3N1NXdlRklFa0hRNWlMeUxkdHNjMEVZMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0pUMVRFQUVuVUFBQUEiLCJleHAiOjE2MjY3NjUxMTEsImlhdCI6MTYyNjc1NzkxMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.uZ6IOKcFY7akZwKpvvu1cEAjFUX-faQoZhRSEE-T-Os', 'https://us04web.zoom.us/j/78563109618?pwd=SWFucWFoU2loak5McmZyWWs4cmdPZz09', '1R3ND0', 1, '2021-07-20 13:11:51', '2021-07-20 13:11:51'),
(157, 70, '-549623777', 'https://us04web.zoom.us/s/76759787551?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiYV8yZ2pSSHc0Y2Zrb2hna3hMSG0yVWhwUkMxVktwemFkcC1UcWE2bmJrdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc0pUMllZQUVuVUFBQUEiLCJleHAiOjE2MjY3NjUxMTIsImlhdCI6MTYyNjc1NzkxMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.8RCbUKEwsIikVbS-mDQuM2y5zEot184eDInq448YJlk', 'https://us04web.zoom.us/j/76759787551?pwd=RW0vdHl0cjdMeFNqSHo5ZkxZeGxKdz09', '3Fx3KD', 1, '2021-07-20 13:11:53', '2021-07-20 13:11:53'),
(158, 71, '-2110931780', 'https://us04web.zoom.us/s/79493446844?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiT0ZqckNCS1NIenZLRi13ZElNWEp0VDV5MWEyNjZmRHEzMEd6M1ItclZyZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZVcjE4QUVuVUFBQUEiLCJleHAiOjE2MjY4NTc0NDIsImlhdCI6MTYyNjg1MDI0MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.v9hxFzRSBzh7i_1nhAdKuVS7-dGn8TOudYIIX_c17mY', 'https://us04web.zoom.us/j/79493446844?pwd=ZEU1OHJqZVAvdktIcGNDL21oUERrZz09', 'uq2Acn', 1, '2021-07-21 14:50:42', '2021-07-21 14:50:42'),
(159, 72, '1528384768', 'https://us04web.zoom.us/s/74542828800?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicGFseWJxTmRTaTduZG92MmJRUEFrTzRTZWFYRC1XNFhFTEprQzhrUUxOTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZmX2tBQUVuVUFBQUEiLCJleHAiOjE2MjY4NTgxODMsImlhdCI6MTYyNjg1MDk4MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.JVIx5Zg1OR-8cUX8dxi972j7RqxG91ccm0QyVIy8No8', 'https://us04web.zoom.us/j/74542828800?pwd=ZHM5OXVjY3JEZEZVTHRySVhJcWo0UT09', 'r548Zz', 1, '2021-07-21 15:03:03', '2021-07-21 15:03:03'),
(160, 72, '-345173706', 'https://us04web.zoom.us/s/76964237622?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNTM2QWJZOHRxRWdEMXdNZVJGa3pBMjJWWFJwa0VtSE5EN3F5LTFGNk50dy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZnQWw4QUVuVUFBQUEiLCJleHAiOjE2MjY4NTgxODQsImlhdCI6MTYyNjg1MDk4NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.qWK_A8-R9gd-EYfsQaq1yKenlTdc5lycu1xwUFqJJFw', 'https://us04web.zoom.us/j/76964237622?pwd=QUZlSE9WYllMOS9oL0YvdCtpRGpuZz09', 'a0UiNR', 1, '2021-07-21 15:03:04', '2021-07-21 15:03:04'),
(161, 73, '1665487590', 'https://us04web.zoom.us/s/78974898918?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRk1BYndBXy1yMTlzQnFYdjg4aTBfbzJNVG4xeFZvbHVKYUY5NExPNWVFMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZnQ0xNQUVuVUFBQUEiLCJleHAiOjE2MjY4NTgxODYsImlhdCI6MTYyNjg1MDk4NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.CjEWNGXEW4VXxG-QQhR3uy02UQDDNOB7diNV9bs1TZg', 'https://us04web.zoom.us/j/78974898918?pwd=YTI0OEtIQ3FyMVBXa2c0TDBjcHFsUT09', 'gg94w7', 1, '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(162, 73, '-1136364672', 'https://us04web.zoom.us/s/76173046656?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiaTJYWFpSeU1JeGxNWDZzU21IeGk2SGJGZjhyR2Q3MlZTanQ1LWRYaHlRNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZnRE5JQUVuVUFBQUEiLCJleHAiOjE2MjY4NTgxODcsImlhdCI6MTYyNjg1MDk4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.45Iyppn0hEu-Qqd_85zwIsn9DvStsU9bLd7hrXM6ypU', 'https://us04web.zoom.us/j/76173046656?pwd=ZE4vZkc0Q3laMVVhRWNxUHE1cEZFdz09', 'htgjE8', 1, '2021-07-21 15:03:07', '2021-07-21 15:03:07'),
(163, 74, '-457824433', 'https://us04web.zoom.us/s/76851586895?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiOWJpeEhTS2M2d0hpN05BTzJCSTI2bVgtS3piTl94bGdOb3hXMnFvNGlady5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZnRGJBQUVuVUFBQUEiLCJleHAiOjE2MjY4NTgxODcsImlhdCI6MTYyNjg1MDk4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5wQl3nG6z_N2vbIy9b28OCU3xF4-f9nG2D_w-mGKzhw', 'https://us04web.zoom.us/j/76851586895?pwd=RlRNa3o3Z0lJL2drL0lBeU5mc1o4QT09', 'Ez0tJr', 1, '2021-07-21 15:03:07', '2021-07-21 15:03:07'),
(164, 74, '259012855', 'https://us04web.zoom.us/s/77568424183?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNHBQcDExVkJDX29fTFFMOHpzSXBYemhuT1JRZWJkbzMzSmJLaVZiTlJqQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZnRWJVQUVuVUFBQUEiLCJleHAiOjE2MjY4NTgxODgsImlhdCI6MTYyNjg1MDk4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.OkSFVbTii6QCjAYberSCesLAliCEgE3vfxp5VnJBMUE', 'https://us04web.zoom.us/j/77568424183?pwd=NkpDMlNwdk1WRVhyYWZBQW1IOURVUT09', '5pWwyc', 1, '2021-07-21 15:03:08', '2021-07-21 15:03:08'),
(165, 75, '-843262087', 'https://us04web.zoom.us/s/76466149241?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiU0lzbnVmWm54Y3B0YTdaUDFkMm1pQ21nU095RkczU2l5Z1o4Y0R3WERnQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZuUE5nQUVuVUFBQUEiLCJleHAiOjE2MjY4NTg2NTgsImlhdCI6MTYyNjg1MTQ1OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.3YGRBVr6xY6RkQeuKLAF1fq-4vzndEkKt5bAWsvenJU', 'https://us04web.zoom.us/j/76466149241?pwd=Umlxd3RWTldjY09BUmsyZzUxTUp0Zz09', '3Xbkea', 1, '2021-07-21 15:10:58', '2021-07-21 15:10:58'),
(166, 75, '-187260258', 'https://us04web.zoom.us/s/77122151070?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWlNDV2R1TmhiQlJwOW9Fc0dGRjJMWGVoU3dGOGM1bmVDdkl6VXFlemZsVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2ZuUU04QUVuVUFBQUEiLCJleHAiOjE2MjY4NTg2NTksImlhdCI6MTYyNjg1MTQ1OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.HiWMpni9O2YYpT5auzwvT6fETGzQl1neqhk_09dH-1k', 'https://us04web.zoom.us/j/77122151070?pwd=ZHRiTFdrYXJ0Z3BqUGZzeWxGTnI3UT09', 'EjPw3F', 1, '2021-07-21 15:10:59', '2021-07-21 15:10:59'),
(167, 76, '-474379283', 'https://us04web.zoom.us/s/72540064749?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZkJOU043WmhsSmU4YThPb19Na0JmcC1yd21MVGNkbkZaWERvcWpEWUJyay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2Z1RF9vQUVuVUFBQUEiLCJleHAiOjE2MjY4NTkxMDUsImlhdCI6MTYyNjg1MTkwNSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xShE2n6DY9J6mFmwgfE0CA6b2MPlgPj-VlkMtJu0Gi4', 'https://us04web.zoom.us/j/72540064749?pwd=d2dwSmQyeWUvSGxRczNoL2xpaS9QQT09', 'hHgCz1', 1, '2021-07-21 15:18:25', '2021-07-21 15:18:25'),
(168, 76, '1699260485', 'https://us04web.zoom.us/s/74713704517?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNXdyR2tkcE5ZaHdfMmY2NmxjVjV3SHhWQktqOFNTUlFsbEtOa2hfdWdhay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2Z1RkFzQUVuVUFBQUEiLCJleHAiOjE2MjY4NTkxMDYsImlhdCI6MTYyNjg1MTkwNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xKccuAyWg0HtgpLhbyUBs5FsEMh1nTfObXA8AdirEhQ', 'https://us04web.zoom.us/j/74713704517?pwd=K3dDVkZMeDBIVXlGRHh5SUxveEx0dz09', 'b9n4fd', 1, '2021-07-21 15:18:26', '2021-07-21 15:18:26'),
(169, 77, '1080572023', 'https://us04web.zoom.us/s/74095016055?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUlF3M2QwVHREUGJrT2w1YkZGcDhkTzhLaG1fM3lnNmg4MTFoU3R3c1RkQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlc2pMTExFQUVuVUFBQUEiLCJleHAiOjE2MjY4NzM1OTYsImlhdCI6MTYyNjg2NjM5NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.aJru_hmSorAcyCaC_TWjfWstXGh-Wju6ImOjHpBdR_0', 'https://us04web.zoom.us/j/74095016055?pwd=WUpWK1dzVW43N1kxRldkQS9Yd2o0QT09', 'hFVC57', 1, '2021-07-21 19:19:56', '2021-07-21 19:19:56'),
(170, 78, '-610966404', 'https://us04web.zoom.us/s/76698444924?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMk9iVTB6djB5cmZVcTNwR2RBQ1BVaHVaeWc4b2lsdWoycjEtYXlDVFdyby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlczBicTFzQUVuVUFBQUEiLCJleHAiOjE2MjY5NDU5ODAsImlhdCI6MTYyNjkzODc4MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.VykrY3VsCUG_6a7e0q1MPLmtoVObLHuSjmWz-6z0ZHc', 'https://us04web.zoom.us/j/76698444924?pwd=Y0lKUEdvNmNpT0ZLNVVuRTNpM29Udz09', 'S4YD24', 1, '2021-07-22 15:26:20', '2021-07-22 15:26:20');
INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(171, 79, '-1639442344', 'https://us04web.zoom.us/s/79964936280?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiankza0xITXRsOUY1alQzeWhZOW9KdG5oams1bWhsc1BhMkNFSXg2ZmpZVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldGVTdkowQUVuVUFBQUEiLCJleHAiOjE2MjcxMjE1NTUsImlhdCI6MTYyNzExNDM1NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.yQ9Uns5VWDNog3ykRcNsQUtkC3kWfvH06-uWh5od8nU', 'https://us04web.zoom.us/j/79964936280?pwd=M0tsU2ZDbWNRNDFhaVNWT1J0Rkh5Zz09', 'CQ5dLu', 1, '2021-07-24 16:12:36', '2021-07-24 16:12:36'),
(172, 79, '-562408480', 'https://us04web.zoom.us/s/76747002848?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiY0lpMkRTcG1Hd3dkM05tZzhEYmVyYmtFNjJDc25hdlg5QTN4VDJvQ2xyRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldGVTd1hrQUVuVUFBQUEiLCJleHAiOjE2MjcxMjE1NTcsImlhdCI6MTYyNzExNDM1NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.UdXfOXqy6_nuOUVJ_dYxYaXA4bzPpYQr3aK3-fl7dzY', 'https://us04web.zoom.us/j/76747002848?pwd=S01TdWxqNEszNG0vL3liUVcvbGFzUT09', '9Jjpt8', 1, '2021-07-24 16:12:37', '2021-07-24 16:12:37'),
(173, 80, '388187457', 'https://us04web.zoom.us/s/77697598785?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSVo4SUJuN2R1cjducG42REtBRmQxcTliLXBoZ2I3X0RVbHc4TXBwVEg0US5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldUx1N0t3QUVuVUFBQUEiLCJleHAiOjE2MjczMTIxNDYsImlhdCI6MTYyNzMwNDk0NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.vtgx0_qPhngPoja8lj1oGbYAePHK-7rhr0zxKZfSGNI', 'https://us04web.zoom.us/j/77697598785?pwd=SVd1ZUJaRjVsVTRVbzBVcXhlMmF0QT09', '3q9aMM', 1, '2021-07-26 21:09:07', '2021-07-26 21:09:07'),
(174, 81, '1269606758', 'https://us04web.zoom.us/s/78579018086?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWk5SbmZFdzdfeVVCYzFEaEs1UHpFZVhydXZtMWlCY1lIbHhWZjBKdzBDQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldUx1OHZBQUVuVUFBQUEiLCJleHAiOjE2MjczMTIxNDgsImlhdCI6MTYyNzMwNDk0OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.vm7YJKqFsDOx_SujO_dyGm7ifCZ-pM-c41htK_tY2DE', 'https://us04web.zoom.us/j/78579018086?pwd=SVplaUpCa0syTUpMUDBkNll5U3EwUT09', 'VtLZc7', 1, '2021-07-26 21:09:08', '2021-07-26 21:09:08'),
(175, 82, '-2064005387', 'https://us04web.zoom.us/s/75245405941?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiR21VNWxWMW9Pd2xnb1B6Szhia3FBb0x6dlQ4djluVk41bl9zamR2XzAwOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldU5VZTZjQUVuVUFBQUEiLCJleHAiOjE2MjczMTg4MDIsImlhdCI6MTYyNzMxMTYwMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.JlO0C-p5lrBBgaLc-J3TtzUrb0e9jhjP3eTi0rgDXQE', 'https://us04web.zoom.us/j/75245405941?pwd=aVdxcCt4VGk0ZitCMURFNEdOZ2QrZz09', 'WAfe24', 1, '2021-07-26 23:00:02', '2021-07-26 23:00:02'),
(176, 82, '614408420', 'https://us04web.zoom.us/s/73628852452?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoid29SUjNFbThTcXdSVEd2WVBvUExDN3BYX1V3cWlHNjVfRjNqanNWRDFnby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldU5VZjV3QUVuVUFBQUEiLCJleHAiOjE2MjczMTg4MDMsImlhdCI6MTYyNzMxMTYwMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.GBqpJK9j9cH_9nLoOQCI9KKnIv5DJ6kknnTeLcJeGYI', 'https://us04web.zoom.us/j/73628852452?pwd=TkFHZVNGd2VSOG4rZExjNVA4b3VvQT09', '61iujU', 1, '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(177, 83, '1213299552', 'https://us04web.zoom.us/s/74227743584?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSmF0TnNPLVdaMkwycktoZEgyRnRZYTZqZ1dKbkEwN3NEanJJN2czOWRGTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldU5VaEZFQUVuVUFBQUEiLCJleHAiOjE2MjczMTg4MDQsImlhdCI6MTYyNzMxMTYwNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.didHLUXR3IM3xucSYSiiWqMo_A2ZCQjThLX_oHllY2E', 'https://us04web.zoom.us/j/74227743584?pwd=LytxSDJZWG15S0JEYmo5WHhhN2Y1UT09', '3rv54d', 1, '2021-07-26 23:00:04', '2021-07-26 23:00:04'),
(178, 83, '-250104619', 'https://us04web.zoom.us/s/72764339413?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiLXVTdkFDQWpqeFFsckJzWnJWdldPQVhJaDdBdTVfUnJMQXhWUzdlTVZvOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldU5VaUpZQUVuVUFBQUEiLCJleHAiOjE2MjczMTg4MDUsImlhdCI6MTYyNzMxMTYwNSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Edvn9Uvn9wiT-OefAcm0dl2cAczbkEAYrHSIJT5UhxA', 'https://us04web.zoom.us/j/72764339413?pwd=T2tkaldUa0VMNTNHNHN4bXhodG5SUT09', 'ALJ3v6', 1, '2021-07-26 23:00:06', '2021-07-26 23:00:06'),
(179, 84, '-8300484', 'https://us04web.zoom.us/s/77301110844?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoia0M0dTJEMUFHdEtLY1VERUJBU2NxbWhqUzRGYUl0RkYtVlVLMndoUmZQVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldU4zT0tBQUVuVUFBQUEiLCJleHAiOjE2MjczMjEwNzksImlhdCI6MTYyNzMxMzg3OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Nt-9hXlO03btLn1BdK5IDiSOqY6-vyydJf-X7DNPdTo', 'https://us04web.zoom.us/j/77301110844?pwd=U2srSzl3bWY0UUZIeVcxaFlmZitVdz09', '6K3UsM', 1, '2021-07-26 23:37:59', '2021-07-26 23:37:59'),
(180, 85, '-855593109', 'https://us04web.zoom.us/s/72158850923?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMlJFRkg0QTlELVlzclFRV1VlXzdsZnRzZHNSSnRpX1VEbmlMQWd0LVpoay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldU9keTBzQUVuVUFBQUEiLCJleHAiOjE2MjczMjM2MDcsImlhdCI6MTYyNzMxNjQwNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.LO6J85vfm_mTkK6zbkgmOekxTZyZgN7fcOSBjTimJqQ', 'https://us04web.zoom.us/j/72158850923?pwd=MVI4SnAwYndIZVlaYmpIZC9yTUdsZz09', '2u6tW3', 1, '2021-07-27 00:20:07', '2021-07-27 00:20:07'),
(181, 86, '1341660083', 'https://us04web.zoom.us/s/78651071411?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTDU0U1R1M3lrWExOVzNsVE42V1dnUHY3aHZDeW15WERPc2Jmc3lySkYtTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVMV1dFQUVuVUFBQUEiLCJleHAiOjE2MjczODk1MDcsImlhdCI6MTYyNzM4MjMwNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.V17mV0VrpCSgGf76o3paXuZ8X1MBVlkuDKpzlQAWAWI', 'https://us04web.zoom.us/j/78651071411?pwd=OHJvQnRoeG1IeFpuQnQ3a2lLMTJoZz09', 'w77Dng', 1, '2021-07-27 18:38:27', '2021-07-27 18:38:27'),
(182, 87, '-526221877', 'https://us04web.zoom.us/s/76783189451?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTDg4ZzgwZl9sZzFBV1QwMko5YnRTeUMyQUtiOVNONEtqb0Y5VjZTNURvQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVMWGpFQUVuVUFBQUEiLCJleHAiOjE2MjczODk1MDgsImlhdCI6MTYyNzM4MjMwOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.fNAWqnazsw4tNd6_NXfJ0YbIjdqvJkWRwOSjo-u5jUE', 'https://us04web.zoom.us/j/76783189451?pwd=UVNBNGQxcEFnT1IzTVA4eURYWk9pQT09', '98E2rH', 1, '2021-07-27 18:38:28', '2021-07-27 18:38:28'),
(183, 88, '129334407', 'https://us04web.zoom.us/s/73143778439?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZDJOaEllVGRMRndCb3R2TGhQczJKTjlTTV9OZ1FIOFFLMnNZTDBOS1lUUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVTQXA0QUVuVUFBQUEiLCJleHAiOjE2MjczODk5NDMsImlhdCI6MTYyNzM4Mjc0MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Sng8TujOZgSY08i1lfNHK7Rs3fRROCV8fylBrVKnoFg', 'https://us04web.zoom.us/j/73143778439?pwd=S3cySk4yclg4OS9HbG4rMFZrZlpMdz09', 'H1cNrt', 1, '2021-07-27 18:45:43', '2021-07-27 18:45:43'),
(184, 89, '1962737350', 'https://us04web.zoom.us/s/74977181382?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibE1tYkhJXzVwTm1feGl4enN0WVZ6aWtUNHdSejQ0OG5WTGdBeFU0Q3hKay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVTQmVRQUVuVUFBQUEiLCJleHAiOjE2MjczODk5NDQsImlhdCI6MTYyNzM4Mjc0NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.eRYIlDAuQWdTH_CxUfBU7b8SwQ3NZRJSspZ4V3BdH1s', 'https://us04web.zoom.us/j/74977181382?pwd=OThyRDhHVTc5emhHRXVyNFBrcUVoZz09', '7z7wV8', 1, '2021-07-27 18:45:44', '2021-07-27 18:45:44'),
(185, 90, '-866831927', 'https://us04web.zoom.us/s/72147612105?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiYkpZUk4yS2lLbldIdmhEeEF0RGg4RExYMF8zWEF2Zl9NVURoYkdrenNoMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVmVjdBQUVuVUFBQUEiLCJleHAiOjE2MjczOTA4MTcsImlhdCI6MTYyNzM4MzYxNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.eBH8rOBz2V6eUQEAiQsSijJH1Bv_1z-dXOtYCY2Sdqw', 'https://us04web.zoom.us/j/72147612105?pwd=WnUvSjltZ2V3am80bTMxOFh4RGp4QT09', 'y37Zsj', 1, '2021-07-27 19:00:17', '2021-07-27 19:00:17'),
(186, 91, '327260646', 'https://us04web.zoom.us/s/73341704678?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidTNfNk5BN1RQeElkUHFpVWM1dW5sZlk1a1BPNmJ1eFZXUHRMSDhTVzR5SS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVpNC1BQUVuVUFBQUEiLCJleHAiOjE2MjczOTEwNDksImlhdCI6MTYyNzM4Mzg0OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.p_8Z7aFYZS0jMBfeLMZKHTx44nlp08E5wlq0h90t82c', 'https://us04web.zoom.us/j/73341704678?pwd=Ny9VeTkrUElhc0JQek5hTW43WjdIdz09', 'Rgt4bE', 1, '2021-07-27 19:04:10', '2021-07-27 19:04:10'),
(187, 92, '-2106023583', 'https://us04web.zoom.us/s/75203387745?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSEw1NkVRd09TeDNRZW1qOWE4TGI4N2pIcWdOczhPb2FMLUlETF8zT2R0dy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldWVrZkFjQUVuVUFBQUEiLCJleHAiOjE2MjczOTExNTQsImlhdCI6MTYyNzM4Mzk1NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.wsRLWfQVI4-yhlyUtJBL7xbI26igd6YmJRzf2JnoFPM', 'https://us04web.zoom.us/j/75203387745?pwd=bEd2Z1Q2WFgvNk9GbDB0Tk1xQWs0UT09', '1A3K0K', 1, '2021-07-27 19:05:54', '2021-07-27 19:05:54'),
(188, 93, '23146421', 'https://us04web.zoom.us/s/73037590453?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWllQbGY0a2w0akVrak5kcE9RMUd6dUU1azNhb253aDVkUXVZbXpfMDU0dy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldXhWa3hzQUVuVUFBQUEiLCJleHAiOjE2Mjc0Njk4NjksImlhdCI6MTYyNzQ2MjY2OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.TQNKDtheffMf_AglDNfjpkVC5YKtgdZaui_eXwlRVbs', 'https://us04web.zoom.us/j/73037590453?pwd=WFBocmFyZHJieGU2WFd6ZEFGVEYwQT09', 'LTCp5b', 1, '2021-07-28 16:57:49', '2021-07-28 16:57:49'),
(189, 100, '1442155971', 'https://us04web.zoom.us/s/78751567299?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUHlFeTBpcF8xcGtBeHhzcHFCM0hEMDZYYzRleGc2dEN5ZnZfcmROM1NEdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldk5SNDRFQUVuVUFBQUEiLCJleHAiOjE2Mjc1ODcwNjgsImlhdCI6MTYyNzU3OTg2OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.og66zUPOmeVTEWpsBkeyuTyPsNvdpPuAaseixw43Tb0', 'https://us04web.zoom.us/j/78751567299?pwd=YkNCdHVYZ25uUmh6VlpxQnB1K2xUdz09', '3hsUXh', 1, '2021-07-30 01:31:08', '2021-07-30 01:31:08'),
(190, 101, '2098232632', 'https://us04web.zoom.us/s/79407643960?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMjh2RmFzN0djY29BMVJOQzZkdUlmLVRhbWNGZldhbENvVUhoOVN2LTJuNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldk5SNW5NQUVuVUFBQUEiLCJleHAiOjE2Mjc1ODcwNjgsImlhdCI6MTYyNzU3OTg2OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ewPmS2vA227qq_LknakEFmAILNAnWdgZ3ZuW4dLzgQI', 'https://us04web.zoom.us/j/79407643960?pwd=M3dIQjJ1U1BXUi9QZ01tVjF0U0JzUT09', 'WcJ90m', 1, '2021-07-30 01:31:08', '2021-07-30 01:31:08'),
(191, 100, '-226280428', 'https://us04web.zoom.us/s/72788163604?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiS1J2RWtoaHJOcXgteGpqRndiY0NMMXh2VmVzUzlQZ05ya0xOeFlLdkxsNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldk5SNTVNQUVuVUFBQUEiLCJleHAiOjE2Mjc1ODcwNjksImlhdCI6MTYyNzU3OTg2OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.PnrSugtibkvqPawREj6T54TwR8K38bsLyObeXIU1dkw', 'https://us04web.zoom.us/j/72788163604?pwd=QXBGdVl6YkRuOCtvU3l1NWhybXJiQT09', 'DUa4qS', 1, '2021-07-30 01:31:09', '2021-07-30 01:31:09'),
(192, 101, '283537644', 'https://us04web.zoom.us/s/73297981676?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiek1kLUlQWXNWUTN6SWU2ZktDUXJZNUJ1TVhxZnF1UHVSUzFNb1NENk40US5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldk5SNnJVQUVuVUFBQUEiLCJleHAiOjE2Mjc1ODcwNjksImlhdCI6MTYyNzU3OTg2OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.mj_W_Vpz38JPv4EIZ_8Kkj3YJcZxBuSstIu7TJ0wooA', 'https://us04web.zoom.us/j/73297981676?pwd=bHZnOWZOWnJhcWJhYTRqSzhZd0podz09', 'p2Hxdw', 1, '2021-07-30 01:31:09', '2021-07-30 01:31:09'),
(193, 106, '482611247', 'https://us04web.zoom.us/s/77792022575?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiT3AxTUppWjZDN3lyQlRtOGQyMDAwMmxWYmQwWmhXZzB1RjZqY1IwRm5PTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmUUpZQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4ODYsImlhdCI6MTYyNzYyMjY4NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.gnULZbEkWkmNdDINRnIPTBk0tCgLkpclMJ6EqCNoWRw', 'https://us04web.zoom.us/j/77792022575?pwd=NVBXMkV5UjRkMVNWQjhxaExuMmdsQT09', 'E7ZtVw', 1, '2021-07-30 13:24:47', '2021-07-30 13:24:47'),
(194, 106, '-914663919', 'https://us04web.zoom.us/s/72099780113?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZ3ZNMzFBb1BhX2p6am1zN3UtZ3ZUbzBOTmpJNEZ1dGpHTHVCcWtVTW4xSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmUk9ZQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4ODcsImlhdCI6MTYyNzYyMjY4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.sNdORzAG1iN4JhwU_Olajw53zX1aXwRMIpDjJIlEqYA', 'https://us04web.zoom.us/j/72099780113?pwd=RUw0OE1ZNkVyeWdTV3N3cGs1ZGZvQT09', 'Ngu1Z6', 1, '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(195, 107, '1804307291', 'https://us04web.zoom.us/s/74818751323?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRjlCWGdMeGlTSmVGSmI5YkxMR2JlM1pjWVlyN3hHY09CM1Z0ZU9ObWd5US5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmU1dnQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4ODksImlhdCI6MTYyNzYyMjY4OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.WUHmkzHLtV5G-rL7fIZtUwFNgRjc0Rruy-LKJ4eBbmA', 'https://us04web.zoom.us/j/74818751323?pwd=Q2hVTVZnTHNDelFhK1JidEl1K2hIQT09', 'Af4S8N', 1, '2021-07-30 13:24:49', '2021-07-30 13:24:49'),
(196, 109, '-371580958', 'https://us04web.zoom.us/s/72642863074?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiM1RDNVhmbjBDSDBwTXhsa1hDcUVkSENPeGsyTURDMk5jcmtPOE1wLUVNay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmU1dvQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4ODksImlhdCI6MTYyNzYyMjY4OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.9beq6aScWvRkops-kpkHKH_gIvsVDDRGn31kSvOQI4k', 'https://us04web.zoom.us/j/72642863074?pwd=MWhnVlk1bE9wb3M2eGVsMjBrZ2hwZz09', 'Gj8UGn', 1, '2021-07-30 13:24:49', '2021-07-30 13:24:49'),
(197, 108, '127072778', 'https://us04web.zoom.us/s/77436484106?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoic2k0Y3hObGV1ZkJQbDVBYnFDNm52UXJfRS00QjRYR3FZMkUta290NHVISS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmU1hVQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4ODksImlhdCI6MTYyNzYyMjY4OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.1MghkBWnflJwE_ML3W3-zK3pFgaqhtleIrDKUVT8H0A', 'https://us04web.zoom.us/j/77436484106?pwd=K092bkt5WERnSTZjS3JjTWhmeW8vZz09', 'UrzK2h', 1, '2021-07-30 13:24:49', '2021-07-30 13:24:49'),
(198, 107, '-849282561', 'https://us04web.zoom.us/s/72165161471?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiOG0tc19CUzBOQmtRX2RQczN4bUxEb3haYU1ncGFJWlU4V3ZweG9ncGhSSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmVFk0QUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4OTAsImlhdCI6MTYyNzYyMjY5MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.MuHP86cYxg2PSxyuej_hLD9Tfza4LJcmZa6xNcINKR4', 'https://us04web.zoom.us/j/72165161471?pwd=WitKeDBCUnlCaExMNHV2bWY0am1jZz09', 'xFYkN1', 1, '2021-07-30 13:24:50', '2021-07-30 13:24:50'),
(199, 109, '254942221', 'https://us04web.zoom.us/s/73269386253?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQnNWcUtna01INDVOdEpUWlVUeE9qTEN2czZZQnoyODBSYTFYbHdmRDNEcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmVGNjQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4OTAsImlhdCI6MTYyNzYyMjY5MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.FnElIRPaSRS6w43-AhPYOUbfGpKm-D_K9HNyE6TrZAI', 'https://us04web.zoom.us/j/73269386253?pwd=ZiszRlV1NjNCVDA0WlRCMllyVHg3QT09', 'gmPJB7', 1, '2021-07-30 13:24:50', '2021-07-30 13:24:50'),
(200, 108, '-1594438361', 'https://us04web.zoom.us/s/71420005671?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQVZHTkZ1SlRVS3h5QWN0V0Z4T1NjZ1MyYklucW5VUUxnRWRYWDk3OFBiNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlhmVGRrQUVuVUFBQUEiLCJleHAiOjE2Mjc2Mjk4OTAsImlhdCI6MTYyNzYyMjY5MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Ul8yevKeitw0Xzd9wdOFqHTBpHsX9Uw3QF57WN-CKI4', 'https://us04web.zoom.us/j/71420005671?pwd=WVQ2eW9WL2wxSjA4VUxDK2FwbnV1UT09', '8n98b6', 1, '2021-07-30 13:24:50', '2021-07-30 13:24:50'),
(201, 112, '1871543498', 'https://us04web.zoom.us/s/74885987530?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiU0JrejNkZk14bWxfZkxBeC1PT2thOThfNEMtb1NlY0VPOF9FTmtuTFBfMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlh1UWNJQUVuVUFBQUEiLCJleHAiOjE2Mjc2MzA4NzAsImlhdCI6MTYyNzYyMzY3MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.e1CgfEGEcldLMRv2dNwLFqmEHEfNsqfMT6SmfH4_uvg', 'https://us04web.zoom.us/j/74885987530?pwd=MVBqNmJJN1lsSWZuTkp5YjJXMWJSdz09', 'nz9XST', 1, '2021-07-30 13:41:10', '2021-07-30 13:41:10'),
(202, 112, '-1067991765', 'https://us04web.zoom.us/s/71946452267?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSkxidEhJSE8zc3RIQzM5QnhKY05pQVg0ancyMjVIdm5WT0hqSEl1c21qMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldlh1U0NBQUVuVUFBQUEiLCJleHAiOjE2Mjc2MzA4NzEsImlhdCI6MTYyNzYyMzY3MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.dxHJm4FAX3-xIYu8W5yGP-Y9YUtevrEyscRg-ruVTO0', 'https://us04web.zoom.us/j/71946452267?pwd=SkxscFh1MitYT2M1RkNjMXhpbllQZz09', '9ACs6e', 1, '2021-07-30 13:41:11', '2021-07-30 13:41:11'),
(203, 113, '-1423944498', 'https://us04web.zoom.us/s/71590499534?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiT0JpM3BGbllQalAtMlBTUnVDWDREbVREX0RIdzdSSUt0QUgwd2JyR21EOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmdyUC1ZQUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg0MjEsImlhdCI6MTYyNzY2MTIyMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.cqaxJ8r9TN8ufEGf-uhUy-BR2BeSJpy6OBGqo7mZUsY', 'https://us04web.zoom.us/j/71590499534?pwd=Ky9Rdk96aVBWSC92anpoeGZnc0QzUT09', '5mL095', 1, '2021-07-31 00:07:02', '2021-07-31 00:07:02'),
(204, 114, '1986926872', 'https://us04web.zoom.us/s/79296338200?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoia2hWRFFLZ09COE50TmNvdHZmVjc1b3dIcXYwMXlSUUM2QXV6NlUyNEtxVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd0REk0QUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg1MzksImlhdCI6MTYyNzY2MTMzOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.wat2e0GtEOfANgzDX3szyAk1p6Ibe00Hm-l241zMNBE', 'https://us04web.zoom.us/j/79296338200?pwd=clBKTTVwMU1HaXZaMFZidGVBbDR3Zz09', 'giey85', 1, '2021-07-31 00:08:59', '2021-07-31 00:08:59'),
(205, 115, '1738317672', 'https://us04web.zoom.us/s/79047729000?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUzdjazkzVlNzZUdTYmRLdktadDJrZmN5R2plOGhneUFOaFZ5V1lzQWpsOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd0V3E0QUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg1NTksImlhdCI6MTYyNzY2MTM1OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.iWTaBdRcms-FHjQPJ6BIfwCuqTgTkPsEPn3v0k9xU-M', 'https://us04web.zoom.us/j/79047729000?pwd=T1d6WWZzdTlZTG81MVZIRFl6YmErQT09', '3Pp4Ce', 1, '2021-07-31 00:09:19', '2021-07-31 00:09:19'),
(206, 116, '1182356081', 'https://us04web.zoom.us/s/78491767409?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRTF6U1VSSnBKRmdQWm9OR0stZ3BmeV9BMlBTSmhvaTZfTnFEZUdqUFJIRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd1SEc0QUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg2MDksImlhdCI6MTYyNzY2MTQwOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.71b1GFlAWs_8-K2Y-yRiG6a3Dy5pybudS3It4BrXfw0', 'https://us04web.zoom.us/j/78491767409?pwd=UXBKdmhkQ0hlM0VXWE1kOG9hMXpNdz09', 'ueEqD8', 1, '2021-07-31 00:10:09', '2021-07-31 00:10:09'),
(207, 117, '981024471', 'https://us04web.zoom.us/s/78290435799?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMkVneHNjdEV0cVNBc1FSeXp3SVowUHFpMXdkWjZiaUZDcFc3U19XVHBOdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd1enZZQUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg2NTUsImlhdCI6MTYyNzY2MTQ1NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.mfkmYLDUw0D9LclKBprFLUldAtqqBUohhZ-wkBImrbc', 'https://us04web.zoom.us/j/78290435799?pwd=TlpFenVoUldtbk9LVlovOHBVeVpRQT09', 'Hq7r1X', 1, '2021-07-31 00:10:55', '2021-07-31 00:10:55'),
(208, 118, '-1649035230', 'https://us04web.zoom.us/s/75660376098?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWUhSOWJ1TFhsQWtkSXVUSzdUUWxCeXNLbHJOVGFaMlYtRkpLRWpWTjVUcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd3RzZjQUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg3NDAsImlhdCI6MTYyNzY2MTU0MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.96m2Qv3mJgz3sPNOKikKWQdBSpWYvPa4d6EnU5QjE70', 'https://us04web.zoom.us/j/75660376098?pwd=Vk9ZemxuWDRGU3J6UGxjL1BGekxPdz09', '7rx9XG', 1, '2021-07-31 00:12:20', '2021-07-31 00:12:20'),
(209, 119, '-1170355593', 'https://us04web.zoom.us/s/71844088439?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidHVib0xDQ1VWdmNKWlh1TVNSdEY3TTN1UGdveUUybWcxTW9RYUdFS25Zay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd5UW1BQUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg4ODEsImlhdCI6MTYyNzY2MTY4MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.EJICeC_zauQ4PmCZNmxsmby-ocrkKsLlNi77DtPCTvk', 'https://us04web.zoom.us/j/71844088439?pwd=OUxjSjB2WW95ZHoxVWFZVUplNFA0QT09', '6r3iyX', 1, '2021-07-31 00:14:41', '2021-07-31 00:14:41'),
(210, 120, '-1797364591', 'https://us04web.zoom.us/s/75512046737?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQVdXQTJocS1VdGRXbTlFc2JXdzNpNHI1amNkcGJQNXNYN29VVlkwal9xUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd5UkpvQUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg4ODEsImlhdCI6MTYyNzY2MTY4MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.15KA6b6vlXdYXf8fCishPTDpBTpB8yJl5i6PS0AF6LQ', 'https://us04web.zoom.us/j/75512046737?pwd=cHFQSlZOS2pHTjMwSkVLVjhQdjJQdz09', 'mcSJm8', 1, '2021-07-31 00:14:41', '2021-07-31 00:14:41'),
(211, 121, '690421915', 'https://us04web.zoom.us/s/73704865947?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUS1XcE5DYmZQNF9tWlN1RXhvdTN1V3NIRzJ3VGMzdHo5UUs4TVItMHVOby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmd5cnFJQUVuVUFBQUEiLCJleHAiOjE2Mjc2Njg5MDgsImlhdCI6MTYyNzY2MTcwOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.m6PmDorzULeraatPI1lrRUprxyE-sTqeYhka-tDFZto', 'https://us04web.zoom.us/j/73704865947?pwd=UFJwaVRVTVBGUEdZa2d0VnRrdkpNdz09', 't4MwB0', 1, '2021-07-31 00:15:09', '2021-07-31 00:15:09'),
(212, 122, '-1943146266', 'https://us04web.zoom.us/s/71071297766?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicnV5dVlkOGxKblBfZ0VRTTJEaFNRMlllWnRhSnktRWNBNGdVaWc1WVhzay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldmcwSWJFQUVuVUFBQUEiLCJleHAiOjE2Mjc2NjkwMDMsImlhdCI6MTYyNzY2MTgwMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.vzuebtmNFZoZ4pK91GUZ6uttY74Ay3VlzqqWRkz-6MQ', 'https://us04web.zoom.us/j/71071297766?pwd=emNRQ2FZQ0FqZUU1REpCRkU1TVhGdz09', '8rmw4e', 1, '2021-07-31 00:16:44', '2021-07-31 00:16:44'),
(213, 123, '-2025113248', 'https://us04web.zoom.us/s/79579265376?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTENBV2lUamRrNGdZNmhoY0hVYkhJV09JcXBDdTV6dWdNOU11VktuZWRudy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldm5CS1BRQUVuVUFBQUEiLCJleHAiOjE2Mjc2OTUwMjMsImlhdCI6MTYyNzY4NzgyMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.KbX1C4rtQVnv42j30JTg5AeNGewvEN_tB5x8SaYHjp0', 'https://us04web.zoom.us/j/79579265376?pwd=Nys2anNpOFgzZkxGQUJhdHVFbzdRQT09', 'JJ6SQm', 1, '2021-07-31 07:30:23', '2021-07-31 07:30:23'),
(214, 123, '388877508', 'https://us04web.zoom.us/s/73403321540?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUDRMSGZqT3pjaWM0OWx4cGZwWDV4M1J1WGhJTXNSUUp0RkNnd3ZtNUNYcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldm5CTFc4QUVuVUFBQUEiLCJleHAiOjE2Mjc2OTUwMjQsImlhdCI6MTYyNzY4NzgyNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.UytflD6mm103zndhrB_SmVjiZBUobm6D_ohg_hXm3Ts', 'https://us04web.zoom.us/j/73403321540?pwd=WFJhVW5zOGRQNERmWENYOVBhYTFIUT09', '9uu8rz', 1, '2021-07-31 07:30:24', '2021-07-31 07:30:24'),
(215, 124, '1198770312', 'https://us04web.zoom.us/s/74213214344?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQVZpTGFfbzJ4TFlmYVNoRWJOcFlSM1dMbWJWSVJEVUZ4RHVIR0Q4UlpDSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldm5GQjhZQUVuVUFBQUEiLCJleHAiOjE2Mjc2OTUyNzcsImlhdCI6MTYyNzY4ODA3NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.gtHL2FVQp7NUHVzIWdIKltXuHZG6GJavXJeY0LTD2Tw', 'https://us04web.zoom.us/j/74213214344?pwd=NmNlUWVQUFpQN3hmbnd6bXg2NEM2Zz09', 'WHYcv6', 1, '2021-07-31 07:34:37', '2021-07-31 07:34:37'),
(216, 124, '-1064565740', 'https://us04web.zoom.us/s/76244845588?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZmZ2d1pfTEtTN1hHTjNwZko5VXdaaUc3Zkd3UnBTU25WcG8xX1NBd3Jhay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldm5GQ184QUVuVUFBQUEiLCJleHAiOjE2Mjc2OTUyNzgsImlhdCI6MTYyNzY4ODA3OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.vBk9PTyZ2ZRYu8ecTOD2DZMnfyJwtBCW2BuD6G2o8oA', 'https://us04web.zoom.us/j/76244845588?pwd=ZEcvQTk2S2xheXMrNmZ4bmwrRER4UT09', 'YwG9n9', 1, '2021-07-31 07:34:38', '2021-07-31 07:34:38'),
(217, 125, '1426442271', 'https://us04web.zoom.us/s/74440886303?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUlc0b2plclN5ZG9WREZjNVpJZHlZVlZ4LUdBLW5lQm5iME45bzJjQUxkcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldzlmVFdjQUVuVUFBQUEiLCJleHAiOjE2MjgwNTc3MDksImlhdCI6MTYyODA1MDUwOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.gRe2d_zvUMZ8s1FQ7bxN4Nz82IWVzpcOpeCx5zlJzxU', 'https://us04web.zoom.us/j/74440886303?pwd=cjFteU9BZHpudm1VOVphTmU1SFB1dz09', 'B6wWNb', 1, '2021-08-04 12:15:09', '2021-08-04 12:15:09'),
(218, 125, '-1012932165', 'https://us04web.zoom.us/s/72001511867?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZHJCdUpKUnJNUHdEc3VpRWxIdnFZNXNrYXJ1SldpNm4tbUhGUmZfSmpWYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldzlmVWZrQUVuVUFBQUEiLCJleHAiOjE2MjgwNTc3MTAsImlhdCI6MTYyODA1MDUxMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5MYDUa4EhmKQ0MKG6amf3CTnDvxEbfQXCl_9Jl4j5lI', 'https://us04web.zoom.us/j/72001511867?pwd=THRJdCtLRmpYWTRSRDFLaGFScFYzUT09', '1GPqyJ', 1, '2021-08-04 12:15:10', '2021-08-04 12:15:10'),
(219, 125, '184135845', 'https://us04web.zoom.us/s/77493547173?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiY1F5NHJCVEs5aHQ2MzZxTHNJUUc2dmRvbEFqbzItUENBMl8wVUVnNGtiTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldzlmVmpzQUVuVUFBQUEiLCJleHAiOjE2MjgwNTc3MTEsImlhdCI6MTYyODA1MDUxMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.OEoWxLsl_PdONDjvgI_NzXxYOVb4zSZXa-RshsBjPrc', 'https://us04web.zoom.us/j/77493547173?pwd=YWRheStja0s3ZnBnb2o5MlFiMFNsQT09', 'ceZ1rE', 1, '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(220, 126, '-553863447', 'https://us04web.zoom.us/s/76755547881?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiLWprQkwwelpJdFlRSDJxb21jRTlKOE1rbGJSLVBpelVTM19OcDJOMzJnQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldzlmV25ZQUVuVUFBQUEiLCJleHAiOjE2MjgwNTc3MTIsImlhdCI6MTYyODA1MDUxMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.1T99EbuEAEYfgSytecJxkNKC3QShUA2YlOyO0Y_2W-I', 'https://us04web.zoom.us/j/76755547881?pwd=WTZ4QnlrZ0VKN0FxLzlkWWE1MUNlZz09', '9XbKug', 1, '2021-08-04 12:15:12', '2021-08-04 12:15:12'),
(221, 126, '-764859021', 'https://us04web.zoom.us/s/76544552307?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoib0RhZFhqY0tLMEttUHE3dXRRNG9zaWpNWkZsOC1RR3pxeHAxSFpkcEVJOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldzlmWHA4QUVuVUFBQUEiLCJleHAiOjE2MjgwNTc3MTMsImlhdCI6MTYyODA1MDUxMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.l8vzLItueipF8Qc_at5Um_67L7mjHbsYao8Re5YeRkE', 'https://us04web.zoom.us/j/76544552307?pwd=K3Y0bGxtK0pDak5VZDNsWHF2eWN2Zz09', 'rzbN99', 1, '2021-08-04 12:15:13', '2021-08-04 12:15:13'),
(222, 126, '-264457858', 'https://us04web.zoom.us/s/77044953470?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQ0FMWlQ0NWdfdWFkTVQtUlJRUFluSUpsbGl3bTlDekl4YkxoZThWSFE0RS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJldzlmWXRRQUVuVUFBQUEiLCJleHAiOjE2MjgwNTc3MTQsImlhdCI6MTYyODA1MDUxNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.qSLWaA0RKlKEo9omvjq4XzT-3N0Aans3DS0_hCVWcAM', 'https://us04web.zoom.us/j/77044953470?pwd=akp5ckYrN1hTQ3lFbjdKanQrMmVydz09', 'QJu1zE', 1, '2021-08-04 12:15:14', '2021-08-04 12:15:14'),
(223, 127, '-1844442307', 'https://us04web.zoom.us/s/71170001725?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidzIzMXRwb2pVbEg0MGIwSFhkcS1pbnlUd2hTVXFKUGg4VEI4Z3pwQmhMTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEFWaHhFQUVuVUFBQUEiLCJleHAiOjE2MjgwNjk2NTEsImlhdCI6MTYyODA2MjQ1MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5TYzS4X1ga9QFsYR_bjjgRHRKVeFAOcU5osoPMZW7iI', 'https://us04web.zoom.us/j/71170001725?pwd=Nk1ia3l0VmFpWDQ3VldreTZrKzQxUT09', 'kMZB2k', 1, '2021-08-04 15:34:11', '2021-08-04 15:34:11'),
(224, 127, '127569097', 'https://us04web.zoom.us/s/77436980425?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVGF6QjZJMThYSXVzNnBEUHVWaWlEeGJXSk1KbDYtQzBRQVl4UWtXN0doWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEFWaTNvQUVuVUFBQUEiLCJleHAiOjE2MjgwNjk2NTIsImlhdCI6MTYyODA2MjQ1MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.2sJPdqaIbUNI51lWwUyA_aDxR5L-g6-6ahynjIbVcvo', 'https://us04web.zoom.us/j/77436980425?pwd=c25mbXg3ZElJUWJMa3N5cjVDZVd2Zz09', 'MAW8D2', 1, '2021-08-04 15:34:12', '2021-08-04 15:34:12'),
(225, 127, '-172162636', 'https://us04web.zoom.us/s/72842281396?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSXAxUURGWUFDUXBDSTZDbzZ5bzV6NkJwX3B2YlJMR1JLV3gyNW8tRWRyMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEFWajdVQUVuVUFBQUEiLCJleHAiOjE2MjgwNjk2NTMsImlhdCI6MTYyODA2MjQ1MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.joL7vbtC9V--P7TANtoYS4IJZiRuhHzZgsilkN23Ky4', 'https://us04web.zoom.us/j/72842281396?pwd=bkJGa1ZaNU9za0x4NkY3UFRFNmVtZz09', '2M2nNa', 1, '2021-08-04 15:34:13', '2021-08-04 15:34:13'),
(226, 127, '599294229', 'https://us04web.zoom.us/s/77908705557?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiYmw4TEQtV3lEYzhObTVuVGJ2U2hUWFl4UGlJeWx5ZUlfdWJENENCUlBOdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEFWay00QUVuVUFBQUEiLCJleHAiOjE2MjgwNjk2NTQsImlhdCI6MTYyODA2MjQ1NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.FbvWfqe1RY1yIZUi7SIt2qLePIc7elfJ8H3-Drfqaog', 'https://us04web.zoom.us/j/77908705557?pwd=RjA2R2VjcHlqUU11dGZ5N2VTckg1UT09', '3dc76T', 1, '2021-08-04 15:34:14', '2021-08-04 15:34:14');
INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(227, 128, '669573864', 'https://us04web.zoom.us/s/73684017896?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZUd2WGRCb281LTd3Q2RXSEllLUpBczFBMEEteldMMXJWc2Vac2Z4RDNxUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleERJbnNrQUVuVUFBQUEiLCJleHAiOjE2MjgwODEzODgsImlhdCI6MTYyODA3NDE4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.MhzK38gxl-plQAaUiNFGRP91ow8NgRSbv9H44s5Pl3A', 'https://us04web.zoom.us/j/73684017896?pwd=R2pabjJvcy9rZEZMZk40cUxqSGRUZz09', 'qq1jjP', 1, '2021-08-04 18:49:48', '2021-08-04 18:49:48'),
(228, 129, '994416536', 'https://us04web.zoom.us/s/74008860568?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiOGVfZ003b1hjblg2MllkcndiZTJqNUpuWGxuQWxSVE9xanlGbWdCbG5qby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleERQNkhBQUVuVUFBQUEiLCJleHAiOjE2MjgwODE4NjYsImlhdCI6MTYyODA3NDY2NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.3QoEon9XEy6YcbMGhG6ZvTbulptcThc7X0x3pR8KRKU', 'https://us04web.zoom.us/j/74008860568?pwd=d3FpUlF4UE1NVjVLekxKT3lnUVQ2UT09', '2j92rL', 1, '2021-08-04 18:57:46', '2021-08-04 18:57:46'),
(229, 129, '-256255764', 'https://us04web.zoom.us/s/77053155564?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidzdTOU9XTzdVaVZzbUZ2ZmdlbEtGNkJhRGNzdUhhTUZTSVNGWENvS09mOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleERQN0o4QUVuVUFBQUEiLCJleHAiOjE2MjgwODE4NjcsImlhdCI6MTYyODA3NDY2NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xBhxEiILFXvBLYqnyTp7743sQOIdYec2Hd9WTfKI2z0', 'https://us04web.zoom.us/j/77053155564?pwd=SU1Vd3YzcjBqZGlUTGhRY2NZQ2FpZz09', 'p1PQdb', 1, '2021-08-04 18:57:47', '2021-08-04 18:57:47'),
(230, 129, '667247963', 'https://us04web.zoom.us/s/77976659291?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicktVa3dvNURPTHVCMWpBY3lNNmo0enJLOWNTMzFGTFREN0k1UnVBdUVwQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleERQOExrQUVuVUFBQUEiLCJleHAiOjE2MjgwODE4NjgsImlhdCI6MTYyODA3NDY2OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.VOjUagQIR8Z-1TQxw7NHslTpIiMxtO-gEKmrI45R_W4', 'https://us04web.zoom.us/j/77976659291?pwd=VzJsR1luTVZaRlRTMXZPRmYxTVhkdz09', 'X98GLM', 1, '2021-08-04 18:57:48', '2021-08-04 18:57:48'),
(231, 129, '-1900501514', 'https://us04web.zoom.us/s/71113942518?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiel8zOEFPelowbm9ONHBuMm16ZDNkaGVHeGVpMlQ2bFVqSFlCcl9xdGNtRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleERQOU53QUVuVUFBQUEiLCJleHAiOjE2MjgwODE4NjksImlhdCI6MTYyODA3NDY2OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.2U_k2GHy2ZrgG7pnCxpDWnh8aKKYuXkSj14InDcC0cM', 'https://us04web.zoom.us/j/71113942518?pwd=TFlYcXgrV2Z0MUVvbk04Qzg2NkRWQT09', '6uiB2z', 1, '2021-08-04 18:57:49', '2021-08-04 18:57:49'),
(232, 141, '-1094287311', 'https://us04web.zoom.us/s/71920156721?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVDFlX09MV0pJV0xsYThPbDh3anIwdVY5SmdESGxNVWFobndRaG83anJBZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEZma0RZQUVuVUFBQUEiLCJleHAiOjE2MjgwOTEyODAsImlhdCI6MTYyODA4NDA4MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.TN_IBYiqz74Hf7n7bPneEpKlPDcjHAcn5AlayKaSg7s', 'https://us04web.zoom.us/j/71920156721?pwd=QlNPbkZOcEg3SXlZTzlTT2txTE5pQT09', 'W9ymMz', 1, '2021-08-04 21:34:40', '2021-08-04 21:34:40'),
(233, 142, '-247510578', 'https://us04web.zoom.us/s/72766933454?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSTNqY3lvQjM3Tk5BZjZPUDZybzd2ZXZIQmlMUDhISUg2cERJY3ZBaldPYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEZqVlQ0QUVuVUFBQUEiLCJleHAiOjE2MjgwOTE1MjcsImlhdCI6MTYyODA4NDMyNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.9dA0cHH8gKP1hjc711cSW6TYsv600j2XZ6zFmp0aQuU', 'https://us04web.zoom.us/j/72766933454?pwd=dTZKRXlFdXZZY0pvbUFhdStoaS9IUT09', 'r7kMNW', 1, '2021-08-04 21:38:47', '2021-08-04 21:38:47'),
(234, 142, '1908325436', 'https://us04web.zoom.us/s/79217736764?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNXFOX1pIVDJyamdjZG90MnhXTzdXQUFZaE9ySnlSUVRVTU5JaW1Rb0owYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEZqV2JvQUVuVUFBQUEiLCJleHAiOjE2MjgwOTE1MjgsImlhdCI6MTYyODA4NDMyOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.VdBbTV7HUNVkRDbO_Plg3cac919tNnVQ4dvCWfVgjIQ', 'https://us04web.zoom.us/j/79217736764?pwd=NG9ld2d6Mi9pdzJjRHAzKzZkL2V0UT09', '4i9Ry2', 1, '2021-08-04 21:38:49', '2021-08-04 21:38:49'),
(235, 143, '-21378020', 'https://us04web.zoom.us/s/72993066012?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVHlZbmM0U0txLV82N1lXY2h1SFRXaU9UNGdTZEE1ekw1LUZsRU9ZbnNMNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleEtoY1dFQUVuVUFBQUEiLCJleHAiOjE2MjgxMTIzNzUsImlhdCI6MTYyODEwNTE3NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.wCbkQMXs5G-mz7Q1_KfE7owwSgJNcYgVnBOATj5vrOg', 'https://us04web.zoom.us/j/72993066012?pwd=aEgrY3F4TXJKZDdpS0YzdmpJTnpvdz09', 'Q9ZBLg', 1, '2021-08-05 03:26:15', '2021-08-05 03:26:15'),
(236, 144, '140494043', 'https://us04web.zoom.us/s/77449905371?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicXRLV0I5MW5pN3J3TC1Ncm9lV0g4MzRRU25mNGY4NnZqaXk4bG02VENfMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleFhGbUo0QUVuVUFBQUEiLCJleHAiOjE2MjgxNjUwNzYsImlhdCI6MTYyODE1Nzg3NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.HzeKnMVUqCa4hmQsyfHmZ8gdtSp39XD8dK3jqH0ilcs', 'https://us04web.zoom.us/j/77449905371?pwd=RmtVM1ViVGZzVVF1NDFCSUxHRkhxdz09', '8iZXXH', 1, '2021-08-05 18:04:36', '2021-08-05 18:04:36'),
(237, 144, '-1757614283', 'https://us04web.zoom.us/s/75551797045?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUV9yQkNfZllZVDItNjBEdGE0RGY0dkFvdTc3U01veHI2TXhQMnVBMmdLZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleFhGblJVQUVuVUFBQUEiLCJleHAiOjE2MjgxNjUwNzcsImlhdCI6MTYyODE1Nzg3NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ZkYkTJbsEZ_4CWHrXlLyu-ERUYozjHeo1ma3LDG0RuE', 'https://us04web.zoom.us/j/75551797045?pwd=VXpIbU9kTFI5VThHeExvOUdSQVVJdz09', 'ZM05Kq', 1, '2021-08-05 18:04:37', '2021-08-05 18:04:37'),
(238, 144, '1932438631', 'https://us04web.zoom.us/s/79241849959?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQnIyVGM4NEp3blRpTkxwM3ZaTW9WM0UxWWdvWmI1NWNvel9hTjdqV3FwVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleFhGb1RRQUVuVUFBQUEiLCJleHAiOjE2MjgxNjUwNzgsImlhdCI6MTYyODE1Nzg3OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.HBUCwJ6uJXs-P9aYjUroluymzoQMakYndWld-u226jM', 'https://us04web.zoom.us/j/79241849959?pwd=R2lvampRdVVFNk9hMWpuLzlTcDYxUT09', 'R6pLCv', 1, '2021-08-05 18:04:38', '2021-08-05 18:04:38'),
(239, 144, '492709661', 'https://us04web.zoom.us/s/73507153693?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTkdtaXpwSmhRcXR5bGtkZW1JZFVJQjVxaVNNZHhRRjctMzdLcE5zcVJFYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleFhGcFdZQUVuVUFBQUEiLCJleHAiOjE2MjgxNjUwNzksImlhdCI6MTYyODE1Nzg3OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.WXIxDwsM3R4F7ry6GHKsqHhAoh0vbvYqvBJYrKK7Nf4', 'https://us04web.zoom.us/j/73507153693?pwd=SXJUS0Q5V2twQ2svbVQ3RFdzdmVXUT09', '2ZJjaA', 1, '2021-08-05 18:04:39', '2021-08-05 18:04:39'),
(240, 145, '-461790620', 'https://us04web.zoom.us/s/76847620708?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiejhVeUtyMGZPVGV3Y0lhaVNHeGRrZ0IySmZhREJadmdsZzFTaDg3cmJlTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleFhkVVJrQUVuVUFBQUEiLCJleHAiOjE2MjgxNjY2MzAsImlhdCI6MTYyODE1OTQzMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.NUbpEEvDnir_i5TPBff56JhEJICGDMZQ-sNOQLGm21A', 'https://us04web.zoom.us/j/76847620708?pwd=eGU0SUVOV284bkZOc0JYc29kZFlDdz09', 'FjY0E4', 1, '2021-08-05 18:30:31', '2021-08-05 18:30:31'),
(241, 146, '-158511663', 'https://us04web.zoom.us/s/77150899665?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSmZaSm1Udm5UUW5udmhVLTZoNnJjaGQyNF9yanlOeGRaNXlZdTBDQkx3TS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleGJRUGRNQUVuVUFBQUEiLCJleHAiOjE2MjgxODI1NTEsImlhdCI6MTYyODE3NTM1MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.BOsqPgU4aOYpfmeuRFe2ORF3AhtrXCW5aAuluaMun6w', 'https://us04web.zoom.us/j/77150899665?pwd=RzhXOGVHa2xJb3BDYWcrcldaM1p3Zz09', 'EEPAv5', 1, '2021-08-05 22:55:51', '2021-08-05 22:55:51'),
(242, 146, '2097246607', 'https://us04web.zoom.us/s/79406657935?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoianNqeHpWYnpBTFFTUnlRcUZzdWp1cU5MY3VLaEE1TnZwOTNMQXgyQlR0QS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleGJRUWtJQUVuVUFBQUEiLCJleHAiOjE2MjgxODI1NTIsImlhdCI6MTYyODE3NTM1MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ln6Z-8r_hMEU21Wh6ePBwKPt3PMan76KOoNPozNvMcI', 'https://us04web.zoom.us/j/79406657935?pwd=dXBwbVlHZnFQbDJDN09FNEd4SStXZz09', 'MSpWA6', 1, '2021-08-05 22:55:52', '2021-08-05 22:55:52'),
(243, 147, '1417729054', 'https://us04web.zoom.us/s/74432173086?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiS1VwZkhTSFZ1Rjl3RzBRY2pWSXh3dUZYSkY4Y2NMLV92VEhfcEhlYmhBay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleDBiUlpVQUVuVUFBQUEiLCJleHAiOjE2MjgyODgxMzEsImlhdCI6MTYyODI4MDkzMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Vtc76vvjn3GKOcd-3QrEXfrr-IcYsqogS7KFrQEp1ck', 'https://us04web.zoom.us/j/74432173086?pwd=OGg5SWxWbnNxejNIZCtiZ2pZRlZrUT09', 'DRs6iL', 1, '2021-08-07 08:45:31', '2021-08-07 08:45:31'),
(244, 147, '146126204', 'https://us04web.zoom.us/s/73160570236?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiR1cwUTRmUVJ4YXRtOGJHWUxGRVg2THUtM0U0cVhRSTFmLUVkU2FQbHh3VS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleDBiU2c4QUVuVUFBQUEiLCJleHAiOjE2MjgyODgxMzIsImlhdCI6MTYyODI4MDkzMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.R5-eTLAgifwwbYObfVYb-g6KNY1J5SXfEcPaZISBgGU', 'https://us04web.zoom.us/j/73160570236?pwd=UFpKY1V4WXRpclNjRWNha1R5U0xvQT09', '2Df4JP', 1, '2021-08-07 08:45:32', '2021-08-07 08:45:32'),
(245, 148, '-320204029', 'https://us04web.zoom.us/s/72694240003?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicXVzdTB4cFduOWJkVEs2UThiV25fVk5SanJseFF5c3p2T1p0dlhmWFBMUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJSUFFBQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIwMDAsImlhdCI6MTYyODMzNDgwMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.owZtxr76p8JZNqxLY3aBEQKijXL9VWI12CODGRNIVtA', 'https://us04web.zoom.us/j/72694240003?pwd=aVo2a0FCNG1UVzluM1hpY1pvVnhzQT09', 'CMsWc8', 1, '2021-08-07 23:43:20', '2021-08-07 23:43:20'),
(246, 148, '-1255666226', 'https://us04web.zoom.us/s/71758777806?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMFJGRlJHLUNicWhHdnBIekJEV0RvVnVDaE9WR19vNmhrR09FNkVSQUJYQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJSUVlVQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIwMDEsImlhdCI6MTYyODMzNDgwMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.77qoHikk8-1GGQ70gAms0WkYzRHiwS256TsipkIC7ag', 'https://us04web.zoom.us/j/71758777806?pwd=b3YrK09HUEdVdGxTa1JSNWZvZitTQT09', 'dQziq2', 1, '2021-08-07 23:43:21', '2021-08-07 23:43:21'),
(247, 148, '888596389', 'https://us04web.zoom.us/s/78198007717?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicndtaHZncFFEcUp4MWhRaTFvRlU2ekZwdkNYYnpucFlpM05lUE5xcXluay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJSUlpvQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIwMDIsImlhdCI6MTYyODMzNDgwMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.KDH8pz7bJAkAk27mNWSleqkiAdkCAiq8I6H-Tkr4n2I', 'https://us04web.zoom.us/j/78198007717?pwd=MnV6czFSUlY4MHdqODlPV2ZiNjdYdz09', '4iu9E0', 1, '2021-08-07 23:43:22', '2021-08-07 23:43:22'),
(248, 148, '1243123827', 'https://us04web.zoom.us/s/78552535155?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZHg3VWc0ajJTazA4SEpnNUtpYjlOSXBIenkybVV0NnhMdUZLUGFUM2pMay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJSU1pvQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIwMDMsImlhdCI6MTYyODMzNDgwMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.cSRy41ilTJvvsvUVKmVm_iEf_Ghyli-H85_qmSKHfuU', 'https://us04web.zoom.us/j/78552535155?pwd=S0NPKzdCZXhsd0x3N1hyY3E3MnFZUT09', 'jX5u4G', 1, '2021-08-07 23:43:23', '2021-08-07 23:43:23'),
(249, 149, '-1951723032', 'https://us04web.zoom.us/s/71062721000?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQUxBOGdzNUVYNGo5Q09XcnNxMmFydm9zVVptaTZmS2pqY2R0RWVWSkcyZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJTWHVnQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIwNzQsImlhdCI6MTYyODMzNDg3NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.GI7r-8SU1D_d0PuOBz5FKT-ZpLXuJ5T4KFMJxgyrxKo', 'https://us04web.zoom.us/j/71062721000?pwd=ZzZ1RGVwdjcvRTVpeEtkOXJ3WTRpZz09', 'YG6BNe', 1, '2021-08-07 23:44:34', '2021-08-07 23:44:34'),
(250, 150, '-1648522697', 'https://us04web.zoom.us/s/71365921335?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNzlaTWFyd1Zvb2wzazJFOVNkenpINmx6MENnc1lmWUhrMVltWlcwV3o5dy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJWdm4wQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIyOTUsImlhdCI6MTYyODMzNTA5NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.a2lwPRINv9c89mRyHh71bMnIu15_3GBo2LRxV9DfSg8', 'https://us04web.zoom.us/j/71365921335?pwd=NkY3a0VYSDRrU0Z4S3FKLzhjck1rQT09', 'Mt9BJ2', 1, '2021-08-07 23:48:15', '2021-08-07 23:48:15'),
(251, 150, '1947907897', 'https://us04web.zoom.us/s/74962351929?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVzBVZ1kwb2FDT1VqenZGRTVBbS1lUmQ3QTJFNnpZM3RHUGhLQ1NCZm1oZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJWd25nQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIyOTYsImlhdCI6MTYyODMzNTA5NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.6Cdf4HP-21-JMyvCFEv7tbsiczZ5WlOELd6z5KJJcNc', 'https://us04web.zoom.us/j/74962351929?pwd=WnZGU3IzU2J1MytGdVBQLzl6VjRaQT09', 'xUZ80d', 1, '2021-08-07 23:48:16', '2021-08-07 23:48:16'),
(252, 150, '-1551678109', 'https://us04web.zoom.us/s/71462765923?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiLUkybDlfZlcyV2Y5MzJYNngyX0h1WlVQbVg2QWM5WkhsbWpZeFBNc2JtZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJWeHBBQUVuVUFBQUEiLCJleHAiOjE2MjgzNDIyOTcsImlhdCI6MTYyODMzNTA5NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.aBuJbXFyFZ5UAPw2rM_MLV43VDtSiP0z7p-RqvIU0os', 'https://us04web.zoom.us/j/71462765923?pwd=SzNFWVAzeW1ZY1ZxSm5ZYy9CVTVTZz09', 'J8b0aE', 1, '2021-08-07 23:48:17', '2021-08-07 23:48:17'),
(253, 151, '-1634040304', 'https://us04web.zoom.us/s/79970338320?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoia1B5bjhPM29HbjRQNXVnR3dNbnZvT29JamptQVg1aGZGMzA2QXRzcTdaOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJxYmxrQUVuVUFBQUEiLCJleHAiOjE2MjgzNDM2NTEsImlhdCI6MTYyODMzNjQ1MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.VMHzAe650SlkhMOU5VAd8UEd2oNcDfOXV5pI8Qv8ZCw', 'https://us04web.zoom.us/j/79970338320?pwd=RE5hV3BLUjM4RnJROU1Zc2tHYnBRQT09', '19Xv4G', 1, '2021-08-08 00:10:51', '2021-08-08 00:10:51'),
(254, 152, '1088555900', 'https://us04web.zoom.us/s/78397967228?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidzlMZzltb2lQMEM3OVVCbkJIazBlTjc4bjVJYk1FdWQwZVlkRkRxVVZxTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleUJ2MzM4QUVuVUFBQUEiLCJleHAiOjE2MjgzNDQwMDcsImlhdCI6MTYyODMzNjgwNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.iMzfVvwjcolrV5kzmnLdYU1GLxze4eFluCdH91ytwUo', 'https://us04web.zoom.us/j/78397967228?pwd=NnVJa2lwM2g3YklYUERud28xSy96UT09', 'GrLw6T', 1, '2021-08-08 00:16:47', '2021-08-08 00:16:47'),
(255, 153, '98809727', 'https://us04web.zoom.us/s/77408221055?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiclpCQmNwYnZwRTVkSFNGRmJ0dGVMbUdPRk5BV2JMeVE2MWE1X3ZIZ3piby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW5BUzZjQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDAyNzMsImlhdCI6MTYyODQ5MzA3MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.RfmjpebAoIPyP-5hml2bFVWc-sFN5mBcT73fKcWxrUI', 'https://us04web.zoom.us/j/77408221055?pwd=akdvTURHZHdTM2hOLzVCdDBDaW5oQT09', 'wxta19', 1, '2021-08-09 19:41:13', '2021-08-09 19:41:13'),
(256, 154, '-1069257681', 'https://us04web.zoom.us/s/76240153647?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiS2JkU1F4YVpiYkpTX3ZsX19veXpTQWxCM08wNVBJdGwyd0tNY1FpMXBpNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW5UY2RJQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDE1MjgsImlhdCI6MTYyODQ5NDMyOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.lLC7Nfcf6KteemLZZY6yaQWuAz5nfj8Z-Dxe8Hq8dMw', 'https://us04web.zoom.us/j/76240153647?pwd=dHNuZjdOQWxOQWVlQWQxdFFvRnZNUT09', 'k4J6Ax', 1, '2021-08-09 20:02:08', '2021-08-09 20:02:08'),
(257, 155, '785362578', 'https://us04web.zoom.us/s/78094773906?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiM012ZWNxQ1h1LUtwdUo4QzFnLU82R2xfaFhZNnJsOVdqSkMxSU1hbW9lWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW5iQVJZQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDIwMjMsImlhdCI6MTYyODQ5NDgyMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.wl3c7p_aAKnDT7e_uwb0ehsp6zELefBhLbYY-Fm1ii8', 'https://us04web.zoom.us/j/78094773906?pwd=MjBubVVnUEhJK2VYS2RsQkF1UWJqdz09', '98DLWt', 1, '2021-08-09 20:10:23', '2021-08-09 20:10:23'),
(258, 156, '-1607244422', 'https://us04web.zoom.us/s/71407199610?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiU3RldFlqV3ZOOW8tM1VSb1N3cmVIdVpWclNRNGY4WDY0Zmpabm9GTk9FMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW5zdUVFQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDMxODQsImlhdCI6MTYyODQ5NTk4NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.HxlQPGXXBpTFbvDVaG4lVcraTgyS4gOEvCzDd_zqZ18', 'https://us04web.zoom.us/j/71407199610?pwd=QnJNT04zelVjUGhzaWZCeTFOZUhVQT09', '00MGkb', 1, '2021-08-09 20:29:44', '2021-08-09 20:29:44'),
(259, 157, '2020315917', 'https://us04web.zoom.us/s/79329727245?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidUJFcW15YnMtbk9ubURyeXluZ1Z3dFdacWI5WGtDcEVaRTV1V1hCdWRNWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW55RWNRQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDM1MzUsImlhdCI6MTYyODQ5NjMzNSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.y3mZ6e8W8JsdrhVo0qpFtpe0iCWKKkHYaXbSbyhY03s', 'https://us04web.zoom.us/j/79329727245?pwd=cjZaQWU3QjQ1K2pFQ1JsMnNmNTkvZz09', 'W2mz9i', 1, '2021-08-09 20:35:35', '2021-08-09 20:35:35'),
(260, 157, '1268461859', 'https://us04web.zoom.us/s/74282905891?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVUJlWHJ5bUsyNDd1NWlWbkRBdm1FR2FTdllrS1Y0NmZRNnU2OTBiVFJNSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW55RmVRQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDM1MzYsImlhdCI6MTYyODQ5NjMzNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.G_hh41uSvEMUOfhHy5R-lzcsUyi9Qv4um50hWVd82jA', 'https://us04web.zoom.us/j/74282905891?pwd=SGlSbEQzakwxTHFXZDQyNVBlb08vZz09', '7qQce8', 1, '2021-08-09 20:35:36', '2021-08-09 20:35:36'),
(261, 158, '1003575711', 'https://us04web.zoom.us/s/74018019743?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMk44VERlcGlVZFZva3gtalI3ckJSQVZQMmFOQUJPOTNYWTR5QVQtbDNuYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW9jOURFQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDYzNDUsImlhdCI6MTYyODQ5OTE0NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.s7PGbX9DxHKyo0V7eeOJprpvnVzZQYLhUK1jefNZvug', 'https://us04web.zoom.us/j/74018019743?pwd=UG1YQWg3MW11U2h0Yk9vSFFTUHF1Zz09', '1jLsS3', 1, '2021-08-09 21:22:25', '2021-08-09 21:22:25'),
(262, 158, '156585206', 'https://us04web.zoom.us/s/77465996534?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibnJ2NFdNcjRuMlk1SlhyNWV6M25paU4xQTZSNjhhOHRwZ1gzQ05pWjBqay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW9jLUtZQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDYzNDYsImlhdCI6MTYyODQ5OTE0NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.efIPZJshaGl0QcoCqs2sFJvCTOE9GkHlpDIhpylPbaI', 'https://us04web.zoom.us/j/77465996534?pwd=RHBDOThzdFRiUWJhYXNTa3JhQldEZz09', 'C6QQH5', 1, '2021-08-09 21:22:27', '2021-08-09 21:22:27'),
(263, 158, '-403290398', 'https://us04web.zoom.us/s/76906120930?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidlU0SmJ3NmNHN3ZJRTdmVmNGVTVZdHc3Sm84YXZ0WHhEaUdZOENsNnBrby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW9jX093QUVuVUFBQUEiLCJleHAiOjE2Mjg1MDYzNDgsImlhdCI6MTYyODQ5OTE0OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.5Yxq2sRNaNGzGmIThN3xYF_CChffFeMgJgaCRRGXP78', 'https://us04web.zoom.us/j/76906120930?pwd=MDlhQkVwdXFDQXc1UGk5ckJDWmlrUT09', 'Xjx3yb', 1, '2021-08-09 21:22:28', '2021-08-09 21:22:28'),
(264, 159, '-1899554495', 'https://us04web.zoom.us/s/71114889537?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTWRFRXUtRVpMV3FFVzdqdE8ta3RmTFQtU0dqQ0E0QTBaR3ZEZlROR1Ayay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW9uYnlJQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDcwMzIsImlhdCI6MTYyODQ5OTgzMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.EI-wVQ1kQVN_OryQAE16-YWc2FHzNLexvrrD6Vd-3mg', 'https://us04web.zoom.us/j/71114889537?pwd=WTBtclp0VFFQL21VdEZLTkNGeUg2dz09', 'TSv2x7', 1, '2021-08-09 21:33:52', '2021-08-09 21:33:52'),
(265, 159, '-838571940', 'https://us04web.zoom.us/s/76470839388?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSDBQcERCSEtrR3BWd0tDSzJic29BSHdkRW5ib0hWakd0aG1xQmluQkxIWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW9uYzBVQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDcwMzMsImlhdCI6MTYyODQ5OTgzMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.fOZUH0zE1REeCzp6HF4gCCGmnvf4xMnCQdv_7imFXs4', 'https://us04web.zoom.us/j/76470839388?pwd=dHgzamRMU0grRUZrTTd1R1g1OEdEZz09', '8XeNZS', 1, '2021-08-09 21:33:53', '2021-08-09 21:33:53'),
(266, 159, '674375101', 'https://us04web.zoom.us/s/77983786429?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQlNTNzlaZkZGZnlNd0tWUU5NNnY2emhlUE8xNnJvYmVGWFIxS21XTUgxTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleW9uZDRNQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDcwMzQsImlhdCI6MTYyODQ5OTgzNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.SmaqFc0WIOcK2DkGDl8-oDlCPkkG48eESeOU9htlulY', 'https://us04web.zoom.us/j/77983786429?pwd=TjltSVc0YkVvand0VmludXhOK29RZz09', 'C1bW0n', 1, '2021-08-09 21:33:54', '2021-08-09 21:33:54'),
(267, 160, '508906699', 'https://us04web.zoom.us/s/73523350731?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiOThYM2YtRDljSTNPZHFKcmdqUWtuU1M1SExseVF4OS1DaWdPaTlqRFlpSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXBQZktFQUVuVUFBQUEiLCJleHAiOjE2Mjg1MDk2NTcsImlhdCI6MTYyODUwMjQ1NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.sZeZvcYt2hQvZH1aHK13Byx4FwR_C6LImLv8eaiwKvQ', 'https://us04web.zoom.us/j/73523350731?pwd=b3NyVWF0aTdMK0k5Y1NUNUNWL1BYZz09', 'cuGHv4', 1, '2021-08-09 22:17:37', '2021-08-09 22:17:37'),
(268, 161, '-1702515265', 'https://us04web.zoom.us/s/71311928767?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVF9uS1ZVQW5jdXZ2ZjBwVXlzX1U3ZENRd2ZKQ1RTRnVKTE1od0JHYlV4MC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXB1bXpBQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTE2OTYsImlhdCI6MTYyODUwNDQ5NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.7jESzY5ZDxTMgcpqApOE3h6vB4dmJT-uErYTo90p-Vo', 'https://us04web.zoom.us/j/71311928767?pwd=UG5tbzR5NnlIenRJM1lhOG4wSXVjdz09', 'CGn1hN', 1, '2021-08-09 22:51:37', '2021-08-09 22:51:37'),
(269, 161, '-1650146693', 'https://us04web.zoom.us/s/75659264635?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiaHRWODk0YUFxN1RGbFdFbW85UmpZLUN2ODhCeEZ6ZE4wYU51ZDNCeFRoNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXB1bjFRQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTE2OTgsImlhdCI6MTYyODUwNDQ5OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.SZP4kOm3NAqOdwpQSa9C44DmVgYV1-QmxdKaUGFf1r0', 'https://us04web.zoom.us/j/75659264635?pwd=anVXL2YrUDZSWnhGK0FlQUV4SEc3dz09', 'e4wj59', 1, '2021-08-09 22:51:38', '2021-08-09 22:51:38'),
(270, 161, '659606466', 'https://us04web.zoom.us/s/77969017794?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTndDNThqRUNLVEFxdzUxSDdlNFNLZWlRMnhQcTBrYkd6SDRJNVB1Um1aTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXB1bzFnQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTE2OTksImlhdCI6MTYyODUwNDQ5OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.fQ3E5owbmYx0u7QM-WABmbs4noQJINNudQlANQjqmq4', 'https://us04web.zoom.us/j/77969017794?pwd=WEdwS3RIWWdSdE5kK2RTbHRDdGZKZz09', '6uPW1X', 1, '2021-08-09 22:51:39', '2021-08-09 22:51:39'),
(271, 162, '835695283', 'https://us04web.zoom.us/s/78145106611?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSkx1RzRYNUtRSjlvNThZV0pQQ3RBVDF3R25GaHhON2p1OWI0OElHUXNiSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXB6WE1RQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTIwMDgsImlhdCI6MTYyODUwNDgwOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ueB2-rk2V1n4GUCuF1vQPH1sHZqekpDKDfP6fzUYElg', 'https://us04web.zoom.us/j/78145106611?pwd=UjRJVjdWYzJUdFBTWU4xVXJHcjIrUT09', 'c4Z8XP', 1, '2021-08-09 22:56:48', '2021-08-09 22:56:48'),
(272, 163, '287637130', 'https://us04web.zoom.us/s/73302081162?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiY0g5a0hyNWVNd2pjN0VINmNaaS14b1dGWHdNcFZXQjZXSXBNQ1cwU1E3NC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXFLZ2o0QUVuVUFBQUEiLCJleHAiOjE2Mjg1MTM1MjUsImlhdCI6MTYyODUwNjMyNSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.XmIji06XPR-sJjbxQqVsKcZ2GtBVM-hklKmw8A7AqyQ', 'https://us04web.zoom.us/j/73302081162?pwd=aG1hTHUzdkx2V0hxRnp6bDZCVnFkZz09', '8DQ6qe', 1, '2021-08-09 23:22:05', '2021-08-09 23:22:05'),
(273, 163, '-974998878', 'https://us04web.zoom.us/s/72039445154?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTmZMd0VKTkd5N0c3dTZLbDQ3U2UzWjZ6cFJjZzhvUDRFSkh1eFFYS212TS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXFLaGlvQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTM1MjYsImlhdCI6MTYyODUwNjMyNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.9wZGgKy_Pp_6xoEmiMww9tIzerULSlQ2F-QGTnEz2Sc', 'https://us04web.zoom.us/j/72039445154?pwd=TldGWkU3VWFVNUNVMEUxYUJqa1FzZz09', '3T5g7C', 1, '2021-08-09 23:22:06', '2021-08-09 23:22:06'),
(274, 164, '1666571962', 'https://us04web.zoom.us/s/78975983290?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicDdsOWVaNXo2YXE5V1NRSmdOeFZNOFg3OVZfNEZ1aTVfQXc4Nlg2NkxFcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXFXWDlZQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTQzMDMsImlhdCI6MTYyODUwNzEwMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.yMj_Zq3-02mEwGW_YZ0PCLxcJYJE7PDSyfwnPAUFHnE', 'https://us04web.zoom.us/j/78975983290?pwd=b1VUeVJTbkJjOHphdEV6TXVkbi9kUT09', 'b4fbbN', 1, '2021-08-09 23:35:03', '2021-08-09 23:35:03'),
(275, 164, '442097684', 'https://us04web.zoom.us/s/73456541716?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidk5YekxWcnk3YWVmakRUdHEwZEdTd2lBeDNtMzRBZkxjS2NCTVJlVTZ2by5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXFXWV9zQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTQzMDQsImlhdCI6MTYyODUwNzEwNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.fqm8En9v0vNrNfsL4i7bj98IYTLKubyZA3CMiGEuaok', 'https://us04web.zoom.us/j/73456541716?pwd=OUxDUk94aFY1emd5UVdZcE5PR2lwdz09', 'Lz7xJr', 1, '2021-08-09 23:35:04', '2021-08-09 23:35:04'),
(276, 165, '-1613823571', 'https://us04web.zoom.us/s/79990555053?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiS0dfZVFud3h2aW5yV2FpRHNsdkJ0am4zQXUyVVBxaHpFcS15dEdwNjV1NC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXJSS1lzQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTgxNTUsImlhdCI6MTYyODUxMDk1NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.SRAocLZbKNQ8ErU6zbAw7fLn_YtwdraekV2Yg9Ly9WM', 'https://us04web.zoom.us/j/79990555053?pwd=aFpsRldsSnB5ZHYyZUhjNGxkbk1oZz09', 'dxyUz2', 1, '2021-08-10 00:39:16', '2021-08-10 00:39:16'),
(277, 165, '-2096343048', 'https://us04web.zoom.us/s/75213068280?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSzExVFlxZkxtUVpQN1p3TF9ObnpPdnVjNG1MUk1mMnFTNkFkTlBnWFFwdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXJSTGNNQUVuVUFBQUEiLCJleHAiOjE2Mjg1MTgxNTYsImlhdCI6MTYyODUxMDk1NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Vo13Y7aUxsRykd1_h3a0roKN5V9UEoxCVJnqui93FbM', 'https://us04web.zoom.us/j/75213068280?pwd=dUZpckdyejNXNllTTytVUnpiblAydz09', '1F30Tu', 1, '2021-08-10 00:39:17', '2021-08-10 00:39:17'),
(278, 166, '-987032937', 'https://us04web.zoom.us/s/72027411095?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMXJKMDU1U0JwZ1hXNDd1T1NoYnRLeFpSVnJrU2hMbUR3VjFGbG8zcWpYQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXI2cDM0QUVuVUFBQUEiLCJleHAiOjE2Mjg1MjA4NzUsImlhdCI6MTYyODUxMzY3NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.T_QT467pXnLQQv4ruptN5ZPIgj1C5tWkshPeF3VA800', 'https://us04web.zoom.us/j/72027411095?pwd=NEZJcnFzYnEvZVBQYUEzOGM3NnpsQT09', 'QEg9wG', 1, '2021-08-10 01:24:35', '2021-08-10 01:24:35'),
(279, 167, '603112574', 'https://us04web.zoom.us/s/77912523902?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidXVFTl9zZnRsRmRxMDNIOXpsQ1FiR0NXclRodWl0TVdoSmRuWTk1SGM0ay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXNBNDNJQUVuVUFBQUEiLCJleHAiOjE2Mjg1MjEyODMsImlhdCI6MTYyODUxNDA4MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xg4YTroyNrZ5jXff1hNL9rW6laggET_qTh9CS6e9daY', 'https://us04web.zoom.us/j/77912523902?pwd=NCtZVzcxL09BbjJEc0RkS3FDZU5iUT09', 'vPtnG0', 1, '2021-08-10 01:31:23', '2021-08-10 01:31:23'),
(280, 168, '1928234868', 'https://us04web.zoom.us/s/74942678900?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoia05YUUMxN0RwQXBoQlhJV0h6bzc5NDhRaHFQMmYwVlkwd2tqN1RzMnpJcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXM3WFhNQUVuVUFBQUEiLCJleHAiOjE2Mjg1MjUxMTYsImlhdCI6MTYyODUxNzkxNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.TJzlOf85B52e3OlboHXYeutijqSpqGEZkviE8V2tVzw', 'https://us04web.zoom.us/j/74942678900?pwd=TmtTQUVkbkJIdDV5YzdUenV1cEJTQT09', 'Wsv6t3', 1, '2021-08-10 02:35:16', '2021-08-10 02:35:16'),
(281, 168, '-1878175524', 'https://us04web.zoom.us/s/71136268508?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiR0UzUWo1dWZzN2NiZmQ2SHpBelJpa0xXTDZYcHhDRE5LRG9jeEMtdU1ray5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXM3WVpvQUVuVUFBQUEiLCJleHAiOjE2Mjg1MjUxMTcsImlhdCI6MTYyODUxNzkxNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.9MZeSpkHCIUiePkcQwfHZRPKUhOYpawxrgihCDvuVP0', 'https://us04web.zoom.us/j/71136268508?pwd=a1VTWnFQN3lmQnVmREJ4V3ZaNVJkQT09', '8yaF6X', 1, '2021-08-10 02:35:17', '2021-08-10 02:35:17'),
(282, 168, '-1629954194', 'https://us04web.zoom.us/s/71384489838?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMzdmRVBaS0NfU0kydFdub1VOd1h2WV9lUzVkOEhJRV8wVkV5X19VNF9GWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXM3WmZFQUVuVUFBQUEiLCJleHAiOjE2Mjg1MjUxMTgsImlhdCI6MTYyODUxNzkxOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.K_9h1cxE646QUi07Um_kwrQQHFcI5lHAqoiGa9UUYuA', 'https://us04web.zoom.us/j/71384489838?pwd=U2tmWW5IREJScTNsR05GRm5GQ3NnUT09', '16sv0y', 1, '2021-08-10 02:35:18', '2021-08-10 02:35:18');
INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(283, 169, '276373073', 'https://us04web.zoom.us/s/73290817105?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiazJ4WWtxa0xNU1ZmV2Y5VmphNVdnSlFBeG56djJORDBQdUd0X3NiemdKTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXdEbWxVQUVuVUFBQUEiLCJleHAiOjE2Mjg1MzgyMzgsImlhdCI6MTYyODUzMTAzOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.dJg9iuobeWG7NRNvq32Y5Zg-BL3P8PoY6d6FRfJiUkc', 'https://us04web.zoom.us/j/73290817105?pwd=a084VFZzM1gzZjM5TkY1VERzaWpWZz09', 'pj56We', 1, '2021-08-10 06:13:58', '2021-08-10 06:13:58'),
(284, 170, '-50067758', 'https://us04web.zoom.us/s/72964376274?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQTR2WEtlZGNueTFzVlFLeE5ZeWc4UWJsdFpsNkhqaG5ROTBfY1hwYUY3Zy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJleXdId2VFQUVuVUFBQUEiLCJleHAiOjE2Mjg1Mzg1MTEsImlhdCI6MTYyODUzMTMxMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.h0flnR8EJGgCGNB_fucH0Vr8yAPXM2XhfWRELdQxAdc', 'https://us04web.zoom.us/j/72964376274?pwd=Mm81UTVEWW9GTkRBQUIwQWFnSzRIUT09', 'D9QAp0', 1, '2021-08-10 06:18:31', '2021-08-10 06:18:31'),
(285, 171, '-861016536', 'https://us04web.zoom.us/s/76448394792?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidzN3alp1cGc1VTRTSUp0WFlOVnNvTXVzMkRTTUpkYy1TemFFQlpxUHFmWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekNmdnRVQUVuVUFBQUEiLCJleHAiOjE2Mjg2MTU1ODAsImlhdCI6MTYyODYwODM4MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.A2cI4Fq-bZGu_Bzqu_vkaf73aIAOerI72ZrA_Z1i7l8', 'https://us04web.zoom.us/j/76448394792?pwd=b0E5YWMvUWtqTkhhK3IwTlpJVW9RUT09', 'qUZE0G', 1, '2021-08-11 03:43:00', '2021-08-11 03:43:00'),
(286, 171, '1766137684', 'https://us04web.zoom.us/s/74780581716?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiUUpJdXozQkVVclNITlk0U05DWkliNHFUOFctVTY5ckNaSkFxWWlhaFVRZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekNmd3o0QUVuVUFBQUEiLCJleHAiOjE2Mjg2MTU1ODEsImlhdCI6MTYyODYwODM4MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.19KzGEuKDJ0s7dj-v2f2ri-f75Ec5HXbe15PrX4rPOs', 'https://us04web.zoom.us/j/74780581716?pwd=Yjg1cXdmaVl3dHBpdXZGdzczUk5Vdz09', 'zMia2G', 1, '2021-08-11 03:43:01', '2021-08-11 03:43:01'),
(287, 171, '-1061519170', 'https://us04web.zoom.us/s/76247892158?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWFBib1dfbGFQb1FxOW5HR2Y2a1MzZHpjRW9TRFcxVXpacWxlVW91dEFBMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekNmeDFjQUVuVUFBQUEiLCJleHAiOjE2Mjg2MTU1ODIsImlhdCI6MTYyODYwODM4MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.1sRC3p-GhEPoDbln7S-1BkTD8prXF3TIs2heMd_K3oM', 'https://us04web.zoom.us/j/76247892158?pwd=bjk4SW0zS0FEbkxzYjhtZ2IzY0tqQT09', '6MQ8Cu', 1, '2021-08-11 03:43:02', '2021-08-11 03:43:02'),
(288, 172, '-781628167', 'https://us04web.zoom.us/s/76527783161?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMkFnQlRsMlJsOHozRXllSUhoclp1M3ludEZTOVNSYXpSak5acDNFWS05OC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekR1dURRQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjA3NTYsImlhdCI6MTYyODYxMzU1NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.sDadxP-j15Lj1HrSM5ianWjtC_KyWCgsrPOLXhTFKM0', 'https://us04web.zoom.us/j/76527783161?pwd=d1VFdkFqVzBhOG9scGk0TDBSdWppdz09', 'tYqt09', 1, '2021-08-11 05:09:16', '2021-08-11 05:09:16'),
(289, 173, '-1960116183', 'https://us04web.zoom.us/s/75349295145?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiRk05cWdJWldOb1pYd1JqSmxxeG9Wa1Y5ZFRKVWl3Vmp4aGJmeTdHbFRiay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekU0RU9rQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjU1NjMsImlhdCI6MTYyODYxODM2MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.l2yK0HRmG5E-A61OdgyEu9-1aXD2rmNrNQYyoeXdBPo', 'https://us04web.zoom.us/j/75349295145?pwd=VEl6Q012QXBiWHJwMm9uQ3VIb3ZXUT09', 'nAa3Hy', 1, '2021-08-11 06:29:23', '2021-08-11 06:29:23'),
(290, 173, '1941821806', 'https://us04web.zoom.us/s/74956265838?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieXUxNHJiR0FJR2x5X0FJR3NsakFIY3dYcjRXZDFtYnFuSlFpWWN4T0hTby5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekU0RlRzQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjU1NjQsImlhdCI6MTYyODYxODM2NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.drNFmbkTMAWnneMpNiwNoBLrvOQm1lBn-BJma-1uKLA', 'https://us04web.zoom.us/j/74956265838?pwd=ODIrV2VUUEkzb0JDWVhncHpLUTZYQT09', '1NAC6G', 1, '2021-08-11 06:29:24', '2021-08-11 06:29:24'),
(291, 173, '-1651110743', 'https://us04web.zoom.us/s/79953267881?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoib1YtenJ3QlU1UDlOOGRqcF9Uc2licENGSXVOTUptbDZ5YXR0YUw2WENnYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekU0R1kwQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjU1NjUsImlhdCI6MTYyODYxODM2NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.WYLwLPt3Eu89cH_aU9ir9JsaabEaoOfGDTvDrUiiNFA', 'https://us04web.zoom.us/j/79953267881?pwd=TkhiRG9SZVVwU21ncXdDUmYxTXNUdz09', 'r02P4b', 1, '2021-08-11 06:29:25', '2021-08-11 06:29:25'),
(292, 173, '50229254', 'https://us04web.zoom.us/s/73064673286?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoic0pzWGxfUC1kcllKakNtS3BVdVRsUlNJb3JaakMtY1ZOLUlFMml4bnR1US5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekU0SGFjQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjU1NjYsImlhdCI6MTYyODYxODM2NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.u2kgzgF3hPSDD7K4dp_NRIOdBYfXewGZm4KNZkLQf0g', 'https://us04web.zoom.us/j/73064673286?pwd=NVFyNUUwdEozWHdxZ2dzaE5lRnltZz09', '7U9Pjj', 1, '2021-08-11 06:29:26', '2021-08-11 06:29:26'),
(293, 174, '297913739', 'https://us04web.zoom.us/s/73312357771?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWVhuaHpsRm9LWWxoM2E3VzlrUHZmMXZZYVFSNHNVdWg3TXFQUWwtOHhsZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekU4N1dNQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjU4ODEsImlhdCI6MTYyODYxODY4MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.8GLIcSZyET4gPBhDf3Kx7-9aKwGm1Xv5rYqv4xkcDAc', 'https://us04web.zoom.us/j/73312357771?pwd=M1hleGYrZksxREJDd1BoZGFzVUUrdz09', '7A0Q1v', 1, '2021-08-11 06:34:41', '2021-08-11 06:34:41'),
(294, 174, '-139728476', 'https://us04web.zoom.us/s/77169682852?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNHlMa0hFLWdYQWEtWWRBVGU0d1c1ODY5aDZvUVE2c2dWZ0xWNTNwYVFmTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekU4OFlzQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjU4ODIsImlhdCI6MTYyODYxODY4MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.msT2EUdMZd2MNIn1dxQ9hUohj4EZ51djA2RULYHjvKM', 'https://us04web.zoom.us/j/77169682852?pwd=b203UThrcnJ3eVkzRHdocE5RaDZoQT09', '9tYJU0', 1, '2021-08-11 06:34:42', '2021-08-11 06:34:42'),
(295, 175, '455279282', 'https://us04web.zoom.us/s/73469723314?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidm9mYk1nY2xqR29ZS05SRkJTaHd5cUlPTjlpMlpEOHBhTFAyNGpIaEdRVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlekZBRTZvQUVuVUFBQUEiLCJleHAiOjE2Mjg2MjYwODgsImlhdCI6MTYyODYxODg4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.rEwNp8M2II432DKPteSbkzps9NWDqxynzlRhouc3P6k', 'https://us04web.zoom.us/j/73469723314?pwd=S0JxeHpKRTRGNzhsNURpZzFpRHErdz09', 'Wg9CvC', 1, '2021-08-11 06:38:08', '2021-08-11 06:38:08'),
(296, 176, '-1495282834', 'https://us04web.zoom.us/s/71519161198?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibEdTeUx0SVN3Q0lqRVNneno4SEc1X3Fibjh2aVZfY2V4elpjM3V3OWNxWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlek5pVllJQUVuVUFBQUEiLCJleHAiOjE2Mjg2NjE4ODcsImlhdCI6MTYyODY1NDY4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.aPyDKZmfjL7qz9VasgkUCYSsJJH9Tts6kcKou3VqogI', 'https://us04web.zoom.us/j/71519161198?pwd=dHVEVzRqOUlUQ0toTXlOY3VJa0dBQT09', 'zCtRG5', 1, '2021-08-11 16:34:47', '2021-08-11 16:34:47'),
(297, 176, '1108493990', 'https://us04web.zoom.us/s/78417905318?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNHBvVk9NWWVDN3N5M2FSRlkxYzlTako2cnZXVVVrY1NzaE9hbWt6aVRoTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlek5pV2ZrQUVuVUFBQUEiLCJleHAiOjE2Mjg2NjE4ODgsImlhdCI6MTYyODY1NDY4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.IBzG5wC_O1-tfg-C0rd9bAlw7a2uLEl-05WWih0-yIo', 'https://us04web.zoom.us/j/78417905318?pwd=N1BhYmh6TkE4ZEhqUE5xeWdLN0NsZz09', 'K16vxm', 1, '2021-08-11 16:34:48', '2021-08-11 16:34:48'),
(298, 177, '-108464163', 'https://us04web.zoom.us/s/72905979869?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVzdGUlFzMTh2Uk80UXpUanBnRnNvM3oxSUZsVmtsQ1RSZ0NvcklqMDRvWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlek4zcklrQUVuVUFBQUEiLCJleHAiOjE2Mjg2NjMyODYsImlhdCI6MTYyODY1NjA4NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.mA3jQvl1Gq7AHoOqLMQvbTup_XQRtcZEHEK1j3l3xPE', 'https://us04web.zoom.us/j/72905979869?pwd=dkIwOUxXOHNNbnRCb1crcEV5RWlrZz09', 'cJyQe6', 1, '2021-08-11 16:58:06', '2021-08-11 16:58:06'),
(299, 177, '1192534011', 'https://us04web.zoom.us/s/78501945339?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWjR1MGhtbUdMSUE0RWNJWUc3elVycWxXaUZDbVl6N29JT1IwRVV5SE9QMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlek4zc0pjQUVuVUFBQUEiLCJleHAiOjE2Mjg2NjMyODcsImlhdCI6MTYyODY1NjA4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.MYLd8dWIFeeC1f8tr8Fjqa15UQgExlODYNuuTwddHuo', 'https://us04web.zoom.us/j/78501945339?pwd=RUwwd2hyb1NkUU9rNWp0c0pVeHhGdz09', 'JZXeJ1', 1, '2021-08-11 16:58:07', '2021-08-11 16:58:07'),
(300, 177, '-700905209', 'https://us04web.zoom.us/s/72313538823?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiY0h1WGYtRlkwNXl2N2pWSXQ2QXpwT0xjYl83VEFEMVZrNVJ2T2ViMnppcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlek4zdEowQUVuVUFBQUEiLCJleHAiOjE2Mjg2NjMyODgsImlhdCI6MTYyODY1NjA4OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Vw8IIw23aOuV9nYBFfLn28xHUxc4ejZn-G_oBxc46F4', 'https://us04web.zoom.us/j/72313538823?pwd=SXVvbHJLbDNHcTc0VDJtbkIvYVlBUT09', 'yCr5NB', 1, '2021-08-11 16:58:08', '2021-08-11 16:58:08'),
(301, 177, '1065786553', 'https://us04web.zoom.us/s/78375197881?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidVdnZXF1MW01bjRuQmdjRE1RdEJpQ1kyWWlaYldJbThrZHlkdlU3ZWhoRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlek4zdU5JQUVuVUFBQUEiLCJleHAiOjE2Mjg2NjMyODksImlhdCI6MTYyODY1NjA4OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.OGBXACwmwXr2-nL9qoKKCZD2VKN6OOotgQ8DXVpPPbU', 'https://us04web.zoom.us/j/78375197881?pwd=ZmVSSE5lQ3Fkb2VHSnhUSVZEU1Mxdz09', 'D35Qba', 1, '2021-08-11 16:58:09', '2021-08-11 16:58:09'),
(302, 178, '27901728', 'https://us04web.zoom.us/s/77337313056?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWlFxNW9QZEpnSDNKdktUWi1YZC0waTI1dFJ2dElELTJHQ1BjeGVVMFJsRS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlelc0T2tJQUVuVUFBQUEiLCJleHAiOjE2Mjg3MDEwNzEsImlhdCI6MTYyODY5Mzg3MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.M8Kdqkr7DOgPkDavZOmc3P7KJkaNFawdmVjDfqUGkFs', 'https://us04web.zoom.us/j/77337313056?pwd=eWI1SHE2RGRRTDkyZElyNk0rdkhOQT09', 'MhAxL1', 1, '2021-08-12 03:27:51', '2021-08-12 03:27:51'),
(303, 178, '-416461576', 'https://us04web.zoom.us/s/72597982456?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQng0cEdvaS1IaHhLQmlzVFk5aGtXZkN1VzBLS1VyblVPTnhBMlpVelZ0WS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlelc0UG9rQUVuVUFBQUEiLCJleHAiOjE2Mjg3MDEwNzIsImlhdCI6MTYyODY5Mzg3MiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.o14pNymsdVJdj3qquL-J4DUQmK60pOpHQ1CJgoWzkd0', 'https://us04web.zoom.us/j/72597982456?pwd=blVMYVorVThhbEN2ZEFVaFhVcVZDUT09', 'x2trYN', 1, '2021-08-12 03:27:52', '2021-08-12 03:27:52'),
(304, 179, '178930090', 'https://us04web.zoom.us/s/73193374122?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVFMwak9IbFhZRUhjaVd2ZTVaQU5xNkJjXzQ5aHZvajJlYlBFVEtKc2FSTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlelc4V0NnQUVuVUFBQUEiLCJleHAiOjE2Mjg3MDEzNDAsImlhdCI6MTYyODY5NDE0MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.xfNuDDyA63-MXFAY6UdPHBQ9ifP-fjcGdIOL2YrWNHw', 'https://us04web.zoom.us/j/73193374122?pwd=TXpYWkVZdWxNSU0rWUI5TUJFUXNCZz09', 'SSqZW6', 1, '2021-08-12 03:32:21', '2021-08-12 03:32:21'),
(305, 179, '-1863643780', 'https://us04web.zoom.us/s/75445767548?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMHR1X3lMdi1EVXE1T3M0Z0RlTWxUWDZtWS1oXy1vNW5oSGcxZk1HNTd6WS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlelc4WENrQUVuVUFBQUEiLCJleHAiOjE2Mjg3MDEzNDEsImlhdCI6MTYyODY5NDE0MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.4BUvTNGZYB2xSrGEKEJXL7kzuJl3iKpVMturcF4bEnQ', 'https://us04web.zoom.us/j/75445767548?pwd=all3a2lUdVIzS21sd043TW03TDBOdz09', 'MqPMQ0', 1, '2021-08-12 03:32:22', '2021-08-12 03:32:22'),
(306, 180, '-391058985', 'https://us04web.zoom.us/s/76918352343?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiakxQLUlFMFFqN2prWURDUEdQaTA1VnpwLS1kNlp5YlRKNlRIcUNiYlc1RS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMDhPZ1Q0QUVuVUFBQUEiLCJleHAiOjE2MjkxMjYxNTUsImlhdCI6MTYyOTExODk1NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.rzxPl5fGBqJZOH54iCXbPIsVu4Shcr0Vc7CNJCAXQlo', 'https://us04web.zoom.us/j/76918352343?pwd=TWxqVXNRV2xySFgxQ0gwZU1OQ0lNZz09', 'zAQAD1', 1, '2021-08-17 01:32:36', '2021-08-17 01:32:36'),
(307, 180, '-1327750410', 'https://us04web.zoom.us/s/75981660918?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiWjE2MkRETTF1SzJaZUNaeUZXLUdhMTc2cmtjUzFjLW91Y013Yll5dzh1RS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMDhPaFpNQUVuVUFBQUEiLCJleHAiOjE2MjkxMjYxNTYsImlhdCI6MTYyOTExODk1NiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.sVdWt4KVyrMt7qHlBKx3bqGHmsB6tG3HAChiRrCe9_Q', 'https://us04web.zoom.us/j/75981660918?pwd=cHY5Qjk0T2t0V0IxMlN6QUdLdVBaUT09', '5u33rJ', 1, '2021-08-17 01:32:37', '2021-08-17 01:32:37'),
(308, 180, '1262494474', 'https://us04web.zoom.us/s/74276938506?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibFVRZjJmY1Y1QTFLNTR0UXNVUVVnd1BFTHVpMGkxN0VPQl9mVGhEd0tZVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMDhPaWNjQUVuVUFBQUEiLCJleHAiOjE2MjkxMjYxNTgsImlhdCI6MTYyOTExODk1OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.UO6_8hh_hAvtgLPfvfaCFU5NVBC30HHNJtog3L05dwY', 'https://us04web.zoom.us/j/74276938506?pwd=eEZkbS93NlJ0ZmNyS1NaNDk4YVoxUT09', 'Q35JJy', 1, '2021-08-17 01:32:38', '2021-08-17 01:32:38'),
(309, 180, '-23561615', 'https://us04web.zoom.us/s/77285849713?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTUs3YUxkRi1LbE5Pc1A3dnhUX0FGaVBBWjBuWlN6azRKOWVYRm1NZHloOC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMDhPamR3QUVuVUFBQUEiLCJleHAiOjE2MjkxMjYxNTksImlhdCI6MTYyOTExODk1OSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.OkR-g_S2l_6Svi2woYjaAfRKaUYwoWTjfaWUduxqs78', 'https://us04web.zoom.us/j/77285849713?pwd=OUdmUmJHV0NFQUMrNTV0ZlJGOWgxUT09', 'seA47T', 1, '2021-08-17 01:32:39', '2021-08-17 01:32:39'),
(310, 181, '-610709214', 'https://us04web.zoom.us/s/72403734818?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTDFoYWs5WnBfdWtGMGpEamNFSzNlZ0xnbTJ2LXcweGt1b1kxMGhqQm44ay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMDgzdnhNQUVuVUFBQUEiLCJleHAiOjE2MjkxMjg4NTgsImlhdCI6MTYyOTEyMTY1OCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.nVcCS1kXsIVY1sjCR0efiDX8IAqFwcTVFJKkkcKec8g', 'https://us04web.zoom.us/j/72403734818?pwd=TjcrbGQrUGZtM2ZSU0xaRmM4U21QQT09', 'FB4njN', 1, '2021-08-17 02:17:38', '2021-08-17 02:17:38'),
(311, 182, '-1673858581', 'https://us04web.zoom.us/s/75635552747?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiQXdiOFpnYkgycDlSYUZkU0I1YW15YjFoYm80c1liWXF5VEg4V2l3ZWdjcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMDg1dGU0QUVuVUFBQUEiLCJleHAiOjE2MjkxMjg5ODcsImlhdCI6MTYyOTEyMTc4NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.gzh_kxeMNhu0JQWIHmkOOG7bUtAH46lvxUiarQjk2Qk', 'https://us04web.zoom.us/j/75635552747?pwd=UU5oZWQ2R3k5WVJPcnFlTG5jT1RPUT09', 'DZJG3j', 1, '2021-08-17 02:19:47', '2021-08-17 02:19:47'),
(312, 183, '-1816362494', 'https://us04web.zoom.us/s/79788016130?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNVV5anlERW9BczA5VEFjUS0xNkpKd3ZXRUdnbENUMl9oZVZhc1lvam0wdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMUFlX19ZQUVuVUFBQUEiLCJleHAiOjE2MjkxNDQwMTQsImlhdCI6MTYyOTEzNjgxNCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.DbqtjQOxtfaNb48N9YCpfnkZ5wrR-Fm5GpaRqk9pmfM', 'https://us04web.zoom.us/j/79788016130?pwd=WWFvczBkS3FPcFIwNkg2R1dwSkd0UT09', '6v02yE', 1, '2021-08-17 06:30:14', '2021-08-17 06:30:14'),
(313, 184, '-806833010', 'https://us04web.zoom.us/s/76502578318?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieWNHcWFjbmJOdDh4ODhycnNwOWpsU0dDTkVxY3VaSkJqbTBPZExfYkRudy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMUJ3b2tVQUVuVUFBQUEiLCJleHAiOjE2MjkxNDkzNjQsImlhdCI6MTYyOTE0MjE2NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Cr182UQ5UPWy6b06g5f2e8j1x1o9h26lBHUv4UozA1A', 'https://us04web.zoom.us/j/76502578318?pwd=TEVkUnpwaVNrZ2x3TlpLWWR1V1hWQT09', '5BUYTX', 1, '2021-08-17 07:59:24', '2021-08-17 07:59:24'),
(314, 185, '-27857174', 'https://us04web.zoom.us/s/72986586858?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibHZoNVFHV0JkYVROUE9mRy0wSFdoUldSUlBTdUIxVVZxLU1WUUprcXNyVS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMUhfTnhZQUVuVUFBQUEiLCJleHAiOjE2MjkxNzU0ODUsImlhdCI6MTYyOTE2ODI4NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.MxWEiVcxo75F-ZQFBnq1CfDq3F9a3UktVYv7cC-bn8A', 'https://us04web.zoom.us/j/72986586858?pwd=RHhJbUZmNVZSRnBPQzJlK05FL21oQT09', 'vu1FYN', 1, '2021-08-17 15:14:45', '2021-08-17 15:14:45'),
(315, 186, '-734019728', 'https://us04web.zoom.us/s/76575391600?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMHdBLUQtWHdUNkZSTkdMeWU0RGM2X0pVV3hQWERlQ01MWEtSM1RQY1pVay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMUxYQURNQUVuVUFBQUEiLCJleHAiOjE2MjkxODk2MjcsImlhdCI6MTYyOTE4MjQyNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.qAY7LWO6rWgxMqZHLypDY5MUCEVlOOhyDuA6sUEyMbk', 'https://us04web.zoom.us/j/76575391600?pwd=RGlwNnltcDlBUTRiWHdlZ3dET1NPUT09', 'Q2bkeH', 1, '2021-08-17 19:10:27', '2021-08-17 19:10:27'),
(316, 186, '1117633017', 'https://us04web.zoom.us/s/74132077049?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiY2p0cTVlRDJ2bFJxWnVWTUVnVEdLdEZweWRJNnpTM0U1TUxvcjJfaUxnSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMUxYQlNjQUVuVUFBQUEiLCJleHAiOjE2MjkxODk2MjgsImlhdCI6MTYyOTE4MjQyOCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.ZGUiSLpd3ngv2u7rkS-Prvh93wQAUymgur-pQVKg5Mo', 'https://us04web.zoom.us/j/74132077049?pwd=T2VieEdibWZHY0hxMWNpNVo2ODhnQT09', '7c5PXt', 1, '2021-08-17 19:10:28', '2021-08-17 19:10:28'),
(317, 187, '2141953817', 'https://us04web.zoom.us/s/79451365145?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicFBMelZpMkhYc1JOZEdLUXNwWEVfeEhkVmZ3TDBodmtTYWxrclQtZlhGdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMUx2b253QUVuVUFBQUEiLCJleHAiOjE2MjkxOTEyNDEsImlhdCI6MTYyOTE4NDA0MSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.u4IyzI0slipijb2eXGgGCBWe4yc9s5wYOKfpmJ-B7Xk', 'https://us04web.zoom.us/j/79451365145?pwd=VThDOFNIRm5GemtYZzliQ0xydnV3UT09', 'PaV8c7', 1, '2021-08-17 19:37:21', '2021-08-17 19:37:21'),
(318, 188, '-1865793309', 'https://us04web.zoom.us/s/79738585315?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiV1VtQW1yOWw5WEs1aFk0dVpuYVc3M29jcEg1Uk9nR08tZHFRYk9wT3JPYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU00aTRRQUVuVUFBQUEiLCJleHAiOjE2MjkxOTYwMTksImlhdCI6MTYyOTE4ODgxOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.2PKeBxkGnj9xvQb37B44MrR6PWB6y_KsEsTDnKt7qQc', 'https://us04web.zoom.us/j/79738585315?pwd=SVE2dS9DNTZqb2VQOUVQaWlTdFR1QT09', 'd174R4', 1, '2021-08-17 20:56:59', '2021-08-17 20:56:59'),
(319, 188, '-2131732937', 'https://us04web.zoom.us/s/79472645687?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieHgyY1F1Q0ZQUnNsaENvQU5vSmNJUVM1cGx6M01RUUR6UzVFUThrSjYxMC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU00ai1FQUVuVUFBQUEiLCJleHAiOjE2MjkxOTYwMjAsImlhdCI6MTYyOTE4ODgyMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.__GVZJbfcOSREVEHDqoa9MyFGU5hQLHmWTQfhO9egGw', 'https://us04web.zoom.us/j/79472645687?pwd=NlBya1MzVUZZZjZyMGdRKzNNK09yQT09', 'LUbq4G', 1, '2021-08-17 20:57:01', '2021-08-17 20:57:01'),
(320, 189, '479027589', 'https://us04web.zoom.us/s/73493471621?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoieEpVWVVJSjhEdTd0Mi11RlEydmpSMWJfeVh6OXFuLWEzaDgwaXFFRHZkdy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU5QUzI4QUVuVUFBQUEiLCJleHAiOjE2MjkxOTc1MTAsImlhdCI6MTYyOTE5MDMxMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.aja03y1tWQyP1fEMVwhoHfBovQrqAGXBjDwDeYo9UNY', 'https://us04web.zoom.us/j/73493471621?pwd=OUwzU1VFK2FDKzhabE9iN3R2b2h5QT09', 'c62f1U', 1, '2021-08-17 21:21:50', '2021-08-17 21:21:50'),
(321, 189, '-282119284', 'https://us04web.zoom.us/s/77027292044?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTWJpTzNwRVJjelJlNHdNOWF3aXEtcXlLYnlZbWxoc0RHUjFKbmQ5dnpFTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU5QVDhNQUVuVUFBQUEiLCJleHAiOjE2MjkxOTc1MTEsImlhdCI6MTYyOTE5MDMxMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.TNQAKOYB75x1P8BSBwLSbFYv1nRO72azpTtjvsRryfE', 'https://us04web.zoom.us/j/77027292044?pwd=OUFIVXZlSXFxQ25BWU16NWI2QXpaQT09', 'VrnE9v', 1, '2021-08-17 21:21:51', '2021-08-17 21:21:51'),
(322, 189, '1509315223', 'https://us04web.zoom.us/s/78818726551?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiX2ZhT2lQOGtadTNORll2SjZQck9Jd0liSHhOcFA5T2lWQkdCREtrNFFxNC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU5QVTlRQUVuVUFBQUEiLCJleHAiOjE2MjkxOTc1MTIsImlhdCI6MTYyOTE5MDMxMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.12FLzziVdK5lr09kWoollfZZyh0T4m6T3aPCT6r_WQU', 'https://us04web.zoom.us/j/78818726551?pwd=akJEV3hoN0JaYThHTEhKRWNtVWs5dz09', 'KC7Cb5', 1, '2021-08-17 21:21:53', '2021-08-17 21:21:53'),
(323, 190, '470888824', 'https://us04web.zoom.us/s/77780300152?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMHBpRlJiN0Zxa0ZTSjl3QV8ybVdvQy1qb05kNDBUTi1YeS1TZXFrM0JCSS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU43SW1BQUVuVUFBQUEiLCJleHAiOjE2MjkyMDAzODMsImlhdCI6MTYyOTE5MzE4MywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.telJU-_0i9DOSfTez-jqODk2WV8vbxCey8Qi_X50pWk', 'https://us04web.zoom.us/j/77780300152?pwd=djdFOWw4S1lhbm1ndGt0RGtCTHN6dz09', 'U7uSj9', 1, '2021-08-17 22:09:43', '2021-08-17 22:09:43'),
(324, 191, '421109292', 'https://us04web.zoom.us/s/73435553324?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoib1E1ZVctNjZHcHc2czNFR0pxMEhtWXJPOGRzMzR2SkFLTEtTenlXSDN0Zy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU9EV0ZFQUVuVUFBQUEiLCJleHAiOjE2MjkyMDA5MjEsImlhdCI6MTYyOTE5MzcyMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.tcFejVc5v2TGysBS-RVEikqdil3o4C8z29MDAMxbsf8', 'https://us04web.zoom.us/j/73435553324?pwd=Qnp5N2JMTlZYVFFBZkVCVUlkcXRxQT09', 'iRuMH4', 1, '2021-08-17 22:18:42', '2021-08-17 22:18:42'),
(325, 191, '2087022104', 'https://us04web.zoom.us/s/75101466136?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiY0Z5d0QxN2ZtRU5MLU1oNjlKXzlqYTF6VlE1VUFtQVYtLW1iaUdDSGs1OC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMU9EWEhrQUVuVUFBQUEiLCJleHAiOjE2MjkyMDA5MjMsImlhdCI6MTYyOTE5MzcyMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.zqjGoxZoLyWtPEX6Cah2pz1eAsjIokfETOZ43sp2YMQ', 'https://us04web.zoom.us/j/75101466136?pwd=RzJqVVNPaGV6TmVqbXMxQjZpdHc2dz09', 'LMC0SC', 1, '2021-08-17 22:18:43', '2021-08-17 22:18:43'),
(326, 192, '1569431817', 'https://us04web.zoom.us/s/74583875849?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiNVhBNGU5OElyQ1BnMTNfcTh3aUVqcTNqSUczNlFWc2NqLXZJelNhcjBxcy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMVBFbGJZQUVuVUFBQUEiLCJleHAiOjE2MjkyMDUxOTcsImlhdCI6MTYyOTE5Nzk5NywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.Y4juQuWb6Totyamk9RwadobzXWIFgciSvKQQFZ8bFKk', 'https://us04web.zoom.us/j/74583875849?pwd=b1hUNG96UGwvU2cxUUtXNTdtQU1tQT09', 'hgx0g1', 1, '2021-08-17 23:29:57', '2021-08-17 23:29:57'),
(327, 193, '-1894578194', 'https://us04web.zoom.us/s/71119865838?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoibjhLQ1Q1a2FiY3hXWUdmc19KWE8yRTNVRkwzNUk2OHdwZ0FycVpUVHpmZy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMVBHUG9rQUVuVUFBQUEiLCJleHAiOjE2MjkyMDUzMDYsImlhdCI6MTYyOTE5ODEwNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.JYwewfb4ZaEctu3oiXwdgJrdGPqqdRHPL_IyTzmHWmE', 'https://us04web.zoom.us/j/71119865838?pwd=dXJveFR4Tkc3UWM3RlZhSVEzTHZFdz09', 'pAzzB7', 1, '2021-08-17 23:31:46', '2021-08-17 23:31:46'),
(328, 193, '600320662', 'https://us04web.zoom.us/s/77909731990?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoia3RTNW1iTHBYNW9VQ0ZiSkRVWUxKOXQ0NjRDV1ZJQUlyOXcwVzBHSVgzay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMVBHUW8wQUVuVUFBQUEiLCJleHAiOjE2MjkyMDUzMDcsImlhdCI6MTYyOTE5ODEwNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.K4b4wGY5QtEAlfYtdiosP__2JAvV_hy0pS3FpuroBR0', 'https://us04web.zoom.us/j/77909731990?pwd=SHhZajhlVjd2VnNLVUpwZjc0TDhoQT09', 'XG4FWH', 1, '2021-08-17 23:31:47', '2021-08-17 23:31:47'),
(329, 194, '-126841355', 'https://us04web.zoom.us/s/72887602677?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTC0zWlRhNmVxaWpWdmRob1d6dEFBU3BuUHpTLUtqdkJwSldBN3ZqcVB6NC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMVA5TDN3QUVuVUFBQUEiLCJleHAiOjE2MjkyMDg5MDYsImlhdCI6MTYyOTIwMTcwNiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.WJYjoiKYCS1234VjWPj1AKJ1_LMZCWISr1PXSOuNaGA', 'https://us04web.zoom.us/j/72887602677?pwd=bUFKei9LWi91SHE0Q3NTQ0hjcGhkUT09', 'x17AG1', 1, '2021-08-18 00:31:47', '2021-08-18 00:31:47'),
(330, 194, '-1783348650', 'https://us04web.zoom.us/s/79821029974?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiZ3c2YnJLZUFCWEdtX2NERkdfOEpwT2o5bV8zc29OVjV0XzFnVmJFa2p2Zy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMVA5TTVvQUVuVUFBQUEiLCJleHAiOjE2MjkyMDg5MDcsImlhdCI6MTYyOTIwMTcwNywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.BVtgCtkd7PwWdnovNh6SsGZI3rECVHF_ExzNC6uwyKg', 'https://us04web.zoom.us/j/79821029974?pwd=VE1GUVVtQmZON0swUzFkVFp4aDBSdz09', '5aP5Gk', 1, '2021-08-18 00:31:48', '2021-08-18 00:31:48'),
(331, 195, '-1915712625', 'https://us04web.zoom.us/s/71098731407?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoicFJHbXBXaTBPcEl2ZnZ4NllyLVQxSnRvelBwblYwWk9YMFh5bFZaUkZTUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThPWlBnQUVuVUFBQUEiLCJleHAiOjE2MjkzOTQ1ODQsImlhdCI6MTYyOTM4NzM4NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.pnTfi59NM2uTVbg1q0rLa_w13bWFCPFmWo8a4EHK6Ig', 'https://us04web.zoom.us/j/71098731407?pwd=UEhrWEc4VDYxWXZDR0E0QzBTMkhCZz09', 'ChXv54', 1, '2021-08-20 04:06:24', '2021-08-20 04:06:24'),
(332, 195, '35352235', 'https://us04web.zoom.us/s/77344763563?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiellLMktBcksySWxTQVBaWXVWLWdkdjhxTGd2ZFBvd29DWll6Nl9pcHo1OC5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThPYVlRQUVuVUFBQUEiLCJleHAiOjE2MjkzOTQ1ODUsImlhdCI6MTYyOTM4NzM4NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.YivzPlcw_4nEQEkVIYqVnZ1PZDqUW-x85-Q5-sb5xCo', 'https://us04web.zoom.us/j/77344763563?pwd=Y3RtMG94RkdQaWh2elkrNVcxSnJwZz09', 'y0fhy5', 1, '2021-08-20 04:06:25', '2021-08-20 04:06:25'),
(333, 196, '376591311', 'https://us04web.zoom.us/s/73391035343?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiT09VSlpFYjM0Ym0tSkYta1YybjhGVE5PdGFBVU1pWEpYcm5pb2Z1bllZay5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThYQ2pVQUVuVUFBQUEiLCJleHAiOjE2MjkzOTUxNTAsImlhdCI6MTYyOTM4Nzk1MCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.EgVMpVE1meoyuuNbOEpTQedPNL-jqBEIR81WY7UMfqs', 'https://us04web.zoom.us/j/73391035343?pwd=b0FPUENCNWtKbzYwN09yeVJ6VXlmUT09', 'TSG82G', 1, '2021-08-20 04:15:50', '2021-08-20 04:15:50'),
(334, 197, '733740144', 'https://us04web.zoom.us/s/78043151472?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiSk9nc2IxQkN6ZE95YXpueG1ySjZJS1FMVVdmVWNpMHlsYjJMaWYzZDluYy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThZU2ZRQUVuVUFBQUEiLCJleHAiOjE2MjkzOTUyMzIsImlhdCI6MTYyOTM4ODAzMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.3q0KKgGsqQ68HFI10mHiHRdTIeXYRCVmc6OZFnQNe8E', 'https://us04web.zoom.us/j/78043151472?pwd=ZW5XZTJka3pFQnRFRHByc2FHcWxFUT09', 'qtzA6v', 1, '2021-08-20 04:17:12', '2021-08-20 04:17:12'),
(335, 197, '1525792617', 'https://us04web.zoom.us/s/74540236649?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiTEZ0cDROYTltaXdFWGNjUGpOTGhHQmNyUmNscm1DVUV3NlpXWmM3bTJYWS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThZVGhvQUVuVUFBQUEiLCJleHAiOjE2MjkzOTUyMzMsImlhdCI6MTYyOTM4ODAzMywiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.b43O4Ekl6riJVw5p2WjNZwMKnxtY5WBOWTAsGVhjf08', 'https://us04web.zoom.us/j/74540236649?pwd=NHRkRmQ4OGtRa3pvM0ZHWStXMUpTZz09', 'VJ4Z0E', 1, '2021-08-20 04:17:13', '2021-08-20 04:17:13'),
(336, 198, '-1624482880', 'https://us04web.zoom.us/s/79979895744?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiVm1ReEdDbjFMWTNJY2N4aHh0YXlhRjVzMDVBV01TcnM5MDk4ODJHS0J2by5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThqZG13QUVuVUFBQUEiLCJleHAiOjE2MjkzOTU5NjQsImlhdCI6MTYyOTM4ODc2NCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.jowdttqUWypvMIgdADIqn68mtFMUbQvrB-ddcld8wxc', 'https://us04web.zoom.us/j/79979895744?pwd=dVlNZ1E3bStKWEQrN3ZUQjJrK01sdz09', 'XXA8hg', 1, '2021-08-20 04:29:24', '2021-08-20 04:29:24'),
(337, 198, '200493615', 'https://us04web.zoom.us/s/77509904943?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoianBkRnVWUTdVeEtkbzdMWnVJTGg1QjNVN3p1c05NWExNT1JsaE9MSXFVUS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMThqZW9ZQUVuVUFBQUEiLCJleHAiOjE2MjkzOTU5NjUsImlhdCI6MTYyOTM4ODc2NSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.4-o21a0kvalm9_bQKOnn-jyE2vSxEkEKFPE9AJY87Bs', 'https://us04web.zoom.us/j/77509904943?pwd=bXVvRVFUT3hFR0JSR0JXa2owYUlSUT09', 'Z40B3a', 1, '2021-08-20 04:29:25', '2021-08-20 04:29:25'),
(338, 199, '-1688842354', 'https://us04web.zoom.us/s/71325601678?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMTNkZnlrMlNiS3diODY1NTc0SFZjWFE0eGYxQ2FPT0pYeXBLNjlIRFdjQS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMmRkM0c0QUVuVUFBQUEiLCJleHAiOjE2Mjk1MzQwMDksImlhdCI6MTYyOTUyNjgwOSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.0off02xA7P-4MgjChrEYxMircb71MsarnqEQzadfPPI', 'https://us04web.zoom.us/j/71325601678?pwd=MlRQZFg3WmxhMzUxb2N3Z2VtQXNaQT09', 'i9wdW2', 1, '2021-08-21 18:50:09', '2021-08-21 18:50:09');
INSERT INTO `created_sessions` (`id`, `session_id`, `meeting_id`, `meeting_start_url`, `meeting_join_url`, `password`, `class_type`, `created_at`, `updated_at`) VALUES
(339, 199, '-1954754134', 'https://us04web.zoom.us/s/71059689898?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoidnpZczAxVER3X3NKcHJkT3NjdzI0RmZfTkJhZWJuSl9RTGtGZ3hKMWI4cy5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMmRkNEg4QUVuVUFBQUEiLCJleHAiOjE2Mjk1MzQwMTAsImlhdCI6MTYyOTUyNjgxMCwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.CY8wQ8SEvAs7Br-5QZgClI7wA5Hr45f3qaj4zI7Lzso', 'https://us04web.zoom.us/j/71059689898?pwd=TUVxZDU2alFmOWUvbE9lazVOSTVldz09', 'Bc1KQ7', 1, '2021-08-21 18:50:10', '2021-08-21 18:50:10'),
(340, 199, '1789104065', 'https://us04web.zoom.us/s/79098515393?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiaHIyaDREOTlnZ1o5cmwxT0RsM2tkMHhIbkIwVkFzSTdNTTV4R2JuTm41SS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMmRkNUpVQUVuVUFBQUEiLCJleHAiOjE2Mjk1MzQwMTEsImlhdCI6MTYyOTUyNjgxMSwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.PYGmnV0iQdagdo-0htF_xO0Xz6Ja8Zgvo4WHa-FGr6Y', 'https://us04web.zoom.us/j/79098515393?pwd=cE8ybmdldmwycEsvVVJ4K2h0QnJQUT09', 'pYf755', 1, '2021-08-21 18:50:11', '2021-08-21 18:50:11'),
(341, 199, '1618102860', 'https://us04web.zoom.us/s/74632546892?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IlNHQ2p6cDdrUnVpVUNCM0xKdmxKbWciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEwMCwid2NkIjoidXMwNCIsImNsdCI6MCwic3RrIjoiMWhiRVJxa2pJVzhkbktqZy0yRkRabnhqd2dNcGU1U0R4bFlQYWI0TXRQTS5CZ1lzTHpsNVZsZFplbVZHSzJsWVdqSkJPWG93V0VwYWJrRndObUpHVDBWdlEyd3dTRUZWYkVnclRUQnliejFBWm1WbFpHTm1aakZrTlRSalkyVmlNMkV3WlRabVpqZGpZV1ZsTUdGak5XVmhaV0V5TmpSaE1HWmxPV0U0Wm1FME9UaGpPV1ZoWlROak1ETXpaVFkwWmdBTU0wTkNRWFZ2YVZsVE0zTTlBQVIxY3pBMEFBQUJlMmRkNko4QUVuVUFBQUEiLCJleHAiOjE2Mjk1MzQwMTIsImlhdCI6MTYyOTUyNjgxMiwiYWlkIjoibVV6ZXJ2TFZUTzZWMWtSMVM2UDdLdyIsImNpZCI6IiJ9.KIgF6szOx4UklW_XiwnlfkmHo_wx64wc9KgBnlxaACg', 'https://us04web.zoom.us/j/74632546892?pwd=V253a1ZtL0dPRXAzaEp3cGRZVSs2QT09', 'DcVLE5', 1, '2021-08-21 18:50:12', '2021-08-21 18:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `duration_per_sessions`
--

CREATE TABLE `duration_per_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duration_per_sessions`
--

INSERT INTO `duration_per_sessions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '30', NULL, NULL),
(2, '60', NULL, NULL),
(3, '90', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `batch_id`, `title`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 1, '2021/05/26 22:19Prabhat Morning Math Class Session-1 Numbers', '2021-05-26', '2021-05-26', '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(2, 1, '2021/05/27 22:20Prabhat Morning Math Class Session-2 Numbers', '2021-05-27', '2021-05-27', '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(3, 1, '2021/05/28 18:00Prabhat Morning Math Class Session-3 Numbers', '2021-05-28', '2021-05-28', '2021-05-25 05:23:04', '2021-05-25 05:23:04'),
(4, 2, '2021/05/26 22:19Prabhat Morning Math Class Session-1 Numbers', '2021-05-26', '2021-05-26', '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(5, 2, '2021/05/27 22:20Prabhat Morning Math Class Session-2 Numbers', '2021-05-27', '2021-05-27', '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(6, 2, '2021/05/28 18:00Prabhat Morning Math Class Session-3 Numbers', '2021-05-28', '2021-05-28', '2021-05-25 05:23:07', '2021-05-25 05:23:07'),
(7, 3, '2021/05/26 22:19Prabhat Morning Math Class Session-1 Numbers', '2021-05-26', '2021-05-26', '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(8, 3, '2021/05/27 22:20Prabhat Morning Math Class Session-2 Numbers', '2021-05-27', '2021-05-27', '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(9, 3, '2021/05/28 18:00Prabhat Morning Math Class Session-3 Numbers', '2021-05-28', '2021-05-28', '2021-05-25 05:23:11', '2021-05-25 05:23:11'),
(10, 4, '2021/05/26 22:19Prabhat Morning Math Class Session-1 Numbers', '2021-05-26', '2021-05-26', '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(11, 4, '2021/05/27 22:20Prabhat Morning Math Class Session-2 Numbers', '2021-05-27', '2021-05-27', '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(12, 4, '2021/05/28 18:00Prabhat Morning Math Class Session-3 Numbers', '2021-05-28', '2021-05-28', '2021-05-25 05:23:15', '2021-05-25 05:23:15'),
(13, 5, '2021/05/24 22:33test by ramu class Session-1 Tense', '2021-05-24', '2021-05-24', '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(14, 5, '2021/05/26 22:33test by ramu class Session-2 Tense', '2021-05-26', '2021-05-26', '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(15, 5, '2021/05/29 22:33test by ramu class Session-3 Tense', '2021-05-29', '2021-05-29', '2021-05-25 05:34:57', '2021-05-25 05:34:57'),
(16, 6, '2021/05/26 08:03test for homework Session-1 Counting', '2021-05-26', '2021-05-26', '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(17, 6, '2021/05/28 08:03test for homework Session-2 Numbers', '2021-05-28', '2021-05-28', '2021-05-26 15:04:08', '2021-05-26 15:04:08'),
(18, 7, '2021/05/26 08:03test for homework Session-1 Counting', '2021-05-26', '2021-05-26', '2021-05-26 15:04:09', '2021-05-26 15:04:09'),
(19, 7, '2021/05/28 08:03test for homework Session-2 Numbers', '2021-05-28', '2021-05-28', '2021-05-26 15:04:09', '2021-05-26 15:04:09'),
(20, 8, '2025/05/26 08:40test  by raju Session-1 Numbers', '2025-05-26', '2025-05-26', '2021-05-26 15:40:57', '2021-05-26 15:40:57'),
(21, 9, '2021/05/26 09:49priyanka by english class Session-1 Tense', '2021-05-26', '2021-05-26', '2021-05-26 16:49:31', '2021-05-26 16:49:31'),
(22, 10, '2021/05/26 10:21ragni by english class Session-1 Tense', '2021-05-26', '2021-05-26', '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(23, 10, '2021/05/28 10:22ragni by english class Session-2 Voice', '2021-05-28', '2021-05-28', '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(24, 10, '2021/05/30 10:22ragni by english class Session-3 Voice', '2021-05-30', '2021-05-30', '2021-05-26 17:22:19', '2021-05-26 17:22:19'),
(25, 11, '2021/05/29 11:00Physics Evening Class Session-1 Introduction', '2021-05-29', '2021-05-29', '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(26, 11, '2021/05/30 12:00Physics Evening Class Session-2 Introduction', '2021-05-30', '2021-05-30', '2021-05-28 17:17:51', '2021-05-28 17:17:51'),
(27, 12, '2021/05/31 10:18Maths Morning Class Session-1 Numbers', '2021-05-31', '2021-05-31', '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(28, 12, '2021/06/02 10:18Maths Morning Class Session-2 Counting', '2021-06-02', '2021-06-02', '2021-05-28 17:19:02', '2021-05-28 17:19:02'),
(29, 13, '2021/05/28 16:00Homework Test Class Types of Tense Tense', '2021-05-28', '2021-05-28', '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(30, 13, '2021/05/29 16:00Homework Test Class Tense Axulary Verb Tense', '2021-05-29', '2021-05-29', '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(31, 13, '2021/05/30 14:00Homework Test Class Tense Main Verb and Sytax Tense', '2021-05-30', '2021-05-30', '2021-05-28 22:02:07', '2021-05-28 22:02:07'),
(32, 14, '2021/05/28 22:00Homework Testing Class Session-1 Tense', '2021-05-28', '2021-05-28', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(33, 14, '2021/05/29 21:00Homework Testing Class Session-2 Voice', '2021-05-29', '2021-05-29', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(34, 14, '2021/05/30 20:00Homework Testing Class Session-3 Tense', '2021-05-30', '2021-05-30', '2021-05-29 04:33:30', '2021-05-29 04:33:30'),
(35, 15, '2021/05/29 10:06Test for teacher 1 Session-1 Tense', '2021-05-29', '2021-05-29', '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(36, 15, '2021/05/31 10:07Test for teacher 1 Session-2 Voice', '2021-05-31', '2021-05-31', '2021-05-29 17:07:17', '2021-05-29 17:07:17'),
(37, 16, '2021/05/30 19:05test add question Session-1 Numbers', '2021-05-30', '2021-05-30', '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(38, 16, '2021/05/31 19:05test add question Session-2 Numbers', '2021-05-31', '2021-05-31', '2021-05-30 02:05:32', '2021-05-30 02:05:32'),
(39, 17, '2021/05/29 19:06test by upload pdf Session-1 Tense', '2021-05-29', '2021-05-29', '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(40, 17, '2021/05/31 19:06test by upload pdf Session-2 Tense', '2021-05-31', '2021-05-31', '2021-05-30 02:06:19', '2021-05-30 02:06:19'),
(41, 18, '2021/05/30 19:33Ravi Evening Computer Class Session-1 Tense', '2021-05-30', '2021-05-30', '2021-05-30 02:34:03', '2021-05-30 02:34:03'),
(42, 19, '2021/06/01 19:05alka by test Session-1 Tense', '2021-06-01', '2021-06-01', '2021-06-02 02:05:47', '2021-06-02 02:05:47'),
(43, 20, '2021/06/01 23:00Homework Test Class Session-1 Organic Chemistry', '2021-06-01', '2021-06-01', '2021-06-02 05:56:42', '2021-06-02 05:56:42'),
(44, 20, '2021/06/02 20:00Homework Test Class Session-2 In Organic Checmistry', '2021-06-02', '2021-06-02', '2021-06-02 05:56:42', '2021-06-02 05:56:42'),
(45, 21, '2021/06/03 17:59test by alka for archieve Session-1 Tense', '2021-06-03', '2021-06-03', '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(46, 21, '2021/06/24 17:59test by alka for archieve Session-2 Tense', '2021-06-24', '2021-06-24', '2021-06-04 00:59:34', '2021-06-04 00:59:34'),
(47, 22, '2021/06/04 09:34alka by php class for today test Session-1 Tense', '2021-06-04', '2021-06-04', '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(48, 22, '2021/06/05 12:00alka by php class for today test Session-2 Tense', '2021-06-05', '2021-06-05', '2021-06-04 16:35:37', '2021-06-04 16:35:37'),
(49, 23, '2021/06/05 10:30test homework by alka Session-1 Tense', '2021-06-05', '2021-06-05', '2021-06-05 17:31:19', '2021-06-05 17:31:19'),
(50, 24, '2021/06/05 14:00Maths For Class 6th Morning Batch Session-1 Tense', '2021-06-05', '2021-06-05', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(51, 24, '2021/06/06 14:00Maths For Class 6th Morning Batch Session-2 Voice', '2021-06-06', '2021-06-06', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(52, 24, '2021/06/07 14:00Maths For Class 6th Morning Batch Session-3 Tense', '2021-06-07', '2021-06-07', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(53, 24, '2021/06/08 14:00Maths For Class 6th Morning Batch Session-4 Tense', '2021-06-08', '2021-06-08', '2021-06-05 20:45:20', '2021-06-05 20:45:20'),
(54, 25, '2021/06/05 18:00math class by amit Session-1 Tense', '2021-06-05', '2021-06-05', '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(55, 25, '2021/06/05 19:00math class by amit Session-2 Tense', '2021-06-05', '2021-06-05', '2021-06-06 00:49:04', '2021-06-06 00:49:04'),
(56, 26, '2021/06/05 19:00Home English Demo Class Session-1 Tense', '2021-06-05', '2021-06-05', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(57, 26, '2021/06/06 19:00Home English Demo Class Session-2 Voice', '2021-06-06', '2021-06-06', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(58, 26, '2021/06/07 19:00Home English Demo Class Session-3 Tense', '2021-06-07', '2021-06-07', '2021-06-06 02:14:47', '2021-06-06 02:14:47'),
(59, 27, '2021/06/07 16:00Home English Demo Class Session-1 Tense', '2021-06-07', '2021-06-07', '2021-06-07 23:29:40', '2021-06-07 23:29:40'),
(60, 27, '2021/06/17 16:29Home English Demo Class Session-2 Tense', '2021-06-17', '2021-06-17', '2021-06-07 23:29:40', '2021-06-07 23:29:40'),
(61, 28, '2021/06/07 19:00Test by today for demo Session-1 Tense', '2021-06-07', '2021-06-07', '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(62, 28, '2021/06/10 19:00Test by today for demo Session-2 Tense', '2021-06-10', '2021-06-10', '2021-06-08 01:49:18', '2021-06-08 01:49:18'),
(63, 29, '2021/06/07 20:00test for demo Session-1 Tense', '2021-06-07', '2021-06-07', '2021-06-08 02:17:44', '2021-06-08 02:17:44'),
(64, 30, '2021/06/19 19:34String Theory Session-1 Numbers', '2021-06-19', '2021-06-19', '2021-06-08 02:35:24', '2021-06-08 02:35:24'),
(65, 31, '2021/06/07 20:12last test for  demo Session-1 Tense', '2021-06-07', '2021-06-07', '2021-06-08 03:12:52', '2021-06-08 03:12:52'),
(66, 32, '2021/06/09 19:00demo home work Session-1 Tense', '2021-06-09', '2021-06-09', '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(67, 32, '2021/06/11 19:00demo home work Session-2 Tense', '2021-06-11', '2021-06-11', '2021-06-10 01:41:14', '2021-06-10 01:41:14'),
(68, 33, '2021/06/11 12:00ritu by php class Session-1 Tense', '2021-06-11', '2021-06-11', '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(69, 33, '2021/06/26 12:00ritu by php class Session-2 Tense', '2021-06-26', '2021-06-26', '2021-06-11 17:13:55', '2021-06-11 17:13:55'),
(70, 34, '2021/06/14 19:45Rishu Demo Test Session-1 Numbers', '2021-06-14', '2021-06-14', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(71, 34, '2021/06/15 19:45Rishu Demo Test Session-2 Numbers', '2021-06-15', '2021-06-15', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(72, 34, '2021/06/16 19:45Rishu Demo Test Session-3 Numbers', '2021-06-16', '2021-06-16', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(73, 34, '2021/06/17 19:46Rishu Demo Test Session-4 Numbers', '2021-06-17', '2021-06-17', '2021-06-12 02:46:56', '2021-06-12 02:46:56'),
(74, 35, '2021/06/11 21:00Ravi Evening Computer Class Session-1 Tense', '2021-06-11', '2021-06-11', '2021-06-12 03:03:02', '2021-06-12 03:03:02'),
(75, 35, '2021/06/12 19:00Ravi Evening Computer Class Session-2 Voice', '2021-06-12', '2021-06-12', '2021-06-12 03:03:02', '2021-06-12 03:03:02'),
(76, 36, '2021/06/12 07:00sunday class by alka Session-1 Tense', '2021-06-12', '2021-06-12', '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(77, 36, '2021/06/18 07:00sunday class by alka Session-2 Tense', '2021-06-18', '2021-06-18', '2021-06-12 14:26:58', '2021-06-12 14:26:58'),
(78, 37, '2021/06/12 10:00Demo for testing by today Session-1 Tense', '2021-06-12', '2021-06-12', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(79, 37, '2021/06/13 10:00Demo for testing by today Session-2 Tense', '2021-06-13', '2021-06-13', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(80, 37, '2021/06/14 10:00Demo for testing by today Session-3 Tense', '2021-06-14', '2021-06-14', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(81, 37, '2021/06/15 10:00Demo for testing by today Session-4 Tense', '2021-06-15', '2021-06-15', '2021-06-12 17:16:01', '2021-06-12 17:16:01'),
(82, 38, '2021/06/12 02:00cheack by me Session-1 Tense', '2021-06-12', '2021-06-12', '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(83, 38, '2021/06/13 02:00cheack by me Session-2 Tense', '2021-06-13', '2021-06-13', '2021-06-12 22:40:09', '2021-06-12 22:40:09'),
(84, 39, '2021/06/12 05:00demo class of nodejs Session-1 Tense', '2021-06-12', '2021-06-12', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(85, 39, '2021/06/13 05:00demo class of nodejs Session-2 Tense', '2021-06-13', '2021-06-13', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(86, 39, '2021/06/14 05:00demo class of nodejs Session-3 Tense', '2021-06-14', '2021-06-14', '2021-06-12 23:41:12', '2021-06-12 23:41:12'),
(87, 40, '2021/06/16 18:15Demo On Testing For Php Class Session-1 Tense', '2021-06-16', '2021-06-16', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(88, 40, '2021/06/17 18:15Demo On Testing For Php Class Session-2 Tense', '2021-06-17', '2021-06-17', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(89, 40, '2021/06/18 18:15Demo On Testing For Php Class Session-3 Tense', '2021-06-18', '2021-06-18', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(90, 40, '2021/06/19 18:15Demo On Testing For Php Class Session-4 Tense', '2021-06-19', '2021-06-19', '2021-06-17 01:15:35', '2021-06-17 01:15:35'),
(91, 41, '2021/07/21 10:0040 day program Session-1 Tense', '2021-07-21', '2021-07-21', '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(92, 41, '2021/07/22 14:0540 day program Session-2 Tense', '2021-07-22', '2021-07-22', '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(93, 41, '2021/07/23 14:0540 day program Session-3 Tense', '2021-07-23', '2021-07-23', '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(94, 41, '2021/07/24 14:0540 day program Session-4 Tense', '2021-07-24', '2021-07-24', '2021-06-22 01:35:39', '2021-06-22 01:35:39'),
(95, 42, '2021/07/21 14:10Summer Session-1 Numbers', '2021-07-21', '2021-07-21', '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(96, 42, '2021/07/22 14:11Summer Session-2 Numbers', '2021-07-22', '2021-07-22', '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(97, 42, '2021/07/24 14:11Summer Session-3 Numbers', '2021-07-24', '2021-07-24', '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(98, 42, '2021/07/25 14:11Summer Session-4 Numbers', '2021-07-25', '2021-07-25', '2021-06-22 01:41:33', '2021-06-22 01:41:33'),
(99, 43, '2021/06/23 02:00Physics Evening Class Session-1 Tense', '2021-06-23', '2021-06-23', '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(100, 43, '2021/06/23 03:00Physics Evening Class Session-2 Tense', '2021-06-23', '2021-06-23', '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(101, 43, '2021/06/23 05:00Physics Evening Class Session-3 Tense', '2021-06-23', '2021-06-23', '2021-06-22 08:28:26', '2021-06-22 08:28:26'),
(102, 44, '2021/06/29 20:00test  by raju Session-1 Tense', '2021-06-29', '2021-06-29', '2021-06-30 02:28:09', '2021-06-30 02:28:09'),
(103, 44, '2021/06/30 20:00test  by raju Session-2 Voice', '2021-06-30', '2021-06-30', '2021-06-30 02:28:09', '2021-06-30 02:28:09'),
(104, 45, '2021/06/30 14:00test add question Session-1 Tense', '2021-06-30', '2021-06-30', '2021-06-30 07:37:53', '2021-06-30 07:37:53'),
(105, 46, '2021/07/01 09:00test add question Session-1 Tense', '2021-07-01', '2021-07-01', '2021-06-30 07:56:03', '2021-06-30 07:56:03'),
(106, 47, '2021/06/30 10:00alka by last test for demo class Session-1 Tense', '2021-06-30', '2021-06-30', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(107, 47, '2021/07/01 10:00alka by last test for demo class Session-2 Tense', '2021-07-01', '2021-07-01', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(108, 47, '2021/07/02 10:00alka by last test for demo class Session-3 Tense', '2021-07-02', '2021-07-02', '2021-06-30 16:08:12', '2021-06-30 16:08:12'),
(109, 48, '2021/06/30 10:00alka last test for demo class Session-1 Tense', '2021-06-30', '2021-06-30', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(110, 48, '2021/06/30 12:00alka last test for demo class Session-2 Tense', '2021-06-30', '2021-06-30', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(111, 48, '2021/06/30 11:00alka last test for demo class Session-3 Tense', '2021-06-30', '2021-06-30', '2021-06-30 16:13:06', '2021-06-30 16:13:06'),
(112, 49, '2021/07/01 10:00final demo by alka Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(113, 49, '2020/01/01 11:00final demo by alka Session-2 Tense', '2020-01-01', '2020-01-01', '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(114, 49, '2021/07/01 12:00final demo by alka Session-3 Tense', '2021-07-01', '2021-07-01', '2021-07-01 16:31:15', '2021-07-01 16:31:15'),
(115, 50, '2021/07/01 13:00operation by demo class Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-01 18:40:38', '2021-07-01 18:40:38'),
(116, 50, '2021/07/01 14:00operation by demo class Session-2 Tense', '2021-07-01', '2021-07-01', '2021-07-01 18:40:39', '2021-07-01 18:40:39'),
(117, 51, '2021/07/01 13:00operation by demo Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(118, 51, '2021/07/01 14:00operation by demo Session-2 Tense', '2021-07-01', '2021-07-01', '2021-07-01 18:50:19', '2021-07-01 18:50:19'),
(119, 52, '2021/07/01 13:00Sam Wallington Math Summer Booster Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(120, 52, '2021/07/02 14:00Sam Wallington Math Summer Booster Session-2 Tense', '2021-07-02', '2021-07-02', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(121, 52, '2021/07/03 14:00Sam Wallington Math Summer Booster Session-3 Tense', '2021-07-03', '2021-07-03', '2021-07-01 19:39:31', '2021-07-01 19:39:31'),
(122, 53, '2021/07/01 23:00Test 6Clock by Alka Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-02 01:27:34', '2021-07-02 01:27:34'),
(123, 54, '2021/07/02 12:00Amit Evening Php Class Session-1 Tense', '2021-07-02', '2021-07-02', '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(124, 54, '2021/07/03 13:00Amit Evening Php Class Session-2 Tense', '2021-07-03', '2021-07-03', '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(125, 54, '2021/07/04 14:00Amit Evening Php Class Session-3 Tense', '2021-07-04', '2021-07-04', '2021-07-02 18:10:28', '2021-07-02 18:10:28'),
(126, 55, '2021/07/02 21:00New Operation class Session-1 Numbers', '2021-07-02', '2021-07-02', '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(127, 55, '2021/07/03 01:00New Operation class Session-2 Numbers', '2021-07-03', '2021-07-03', '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(128, 55, '2021/07/04 19:00New Operation class Session-3 Numbers', '2021-07-04', '2021-07-04', '2021-07-03 03:12:19', '2021-07-03 03:12:19'),
(129, 56, '2021/07/07 20:00test by ramu class Session-1 Tense', '2021-07-07', '2021-07-07', '2021-07-07 23:35:10', '2021-07-07 23:35:10'),
(130, 57, '2021/07/14 16:35Amit Evening Php Class Session-1 Tense', '2021-07-14', '2021-07-14', '2021-07-07 23:35:54', '2021-07-07 23:35:54'),
(131, 57, '2021/07/16 19:00Amit Evening Php Class Session-2 Tense', '2021-07-16', '2021-07-16', '2021-07-07 23:35:54', '2021-07-07 23:35:54'),
(132, 58, '2021/07/10 17:00Alka by Manage Class Session-1 Tense', '2021-07-10', '2021-07-10', '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(133, 58, '2021/07/11 18:00Alka by Manage Class Session-2 Voice', '2021-07-11', '2021-07-11', '2021-07-10 21:49:06', '2021-07-10 21:49:06'),
(134, 50, '2021-07-01 13:00:00operation by demo class Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-10 21:58:23', '2021-07-10 21:58:23'),
(135, 59, '2021/07/10 18:00Manage Class By Alka Session-1 Tense', '2021-07-10', '2021-07-10', '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(136, 59, '2021/07/11 20:00Manage Class By Alka Session-2 Tense', '2021-07-11', '2021-07-11', '2021-07-10 22:14:53', '2021-07-10 22:14:53'),
(138, 49, '2021-07-01 10:00:00final demo by alka Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-10 22:36:14', '2021-07-10 22:36:14'),
(139, 49, '2021-07-01 10:00:00final demo by alka Session-1 Tense', '2021-07-01', '2021-07-01', '2021-07-10 22:37:49', '2021-07-10 22:37:49'),
(140, 60, '2021/07/10 20:00priyanka by english class Session-1 Tense', '2021-07-10', '2021-07-10', '2021-07-10 23:57:42', '2021-07-10 23:57:42'),
(141, 61, '2021/07/11 20:00Manage Class By Alka Session-1 Tense', '2021-07-11', '2021-07-11', '2021-07-11 01:24:02', '2021-07-11 01:24:02'),
(142, 61, '2021-07-11 20:00:00Manage Class By Alka Session-1 Tense', '2021-07-11', '2021-07-11', '2021-07-11 01:27:48', '2021-07-11 01:27:48'),
(143, 62, '2021/07/13 22:00alka by test Session-1 Tense', '2021-07-13', '2021-07-13', '2021-07-13 02:01:06', '2021-07-13 02:01:06'),
(144, 63, '2021/07/14 17:00Rishu Demo 14 Session-1 Tense', '2021-07-14', '2021-07-14', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(145, 63, '2021/07/15 17:00Rishu Demo 14 Session-2 Tense', '2021-07-15', '2021-07-15', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(146, 63, '2021/07/16 17:00Rishu Demo 14 Session-3 Tense', '2021-07-16', '2021-07-16', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(147, 63, '2021/07/17 17:00Rishu Demo 14 Session-4 Tense', '2021-07-17', '2021-07-17', '2021-07-15 00:11:23', '2021-07-15 00:11:23'),
(148, 64, '2021/07/15 19:00Prabhat Morning Math Class Session-1 Tense', '2021-07-15', '2021-07-15', '2021-07-15 03:55:12', '2021-07-15 03:55:12'),
(149, 64, '2021/07/16 19:00Prabhat Morning Math Class Session-2 Voice', '2021-07-16', '2021-07-16', '2021-07-15 03:55:12', '2021-07-15 03:55:12'),
(150, 65, '2021/07/19 18:00MarkSheet for test Session-1 Tense', '2021-07-19', '2021-07-19', '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(151, 65, '2021/07/20 19:00MarkSheet for test Session-2 Voice', '2021-07-20', '2021-07-20', '2021-07-18 16:37:16', '2021-07-18 16:37:16'),
(152, 66, '2021/07/20 12:00Ragni Php Class Session-1 Numbers', '2021-07-20', '2021-07-20', '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(153, 66, '2021/07/21 12:00Ragni Php Class Session-2 Counting', '2021-07-21', '2021-07-21', '2021-07-20 11:43:08', '2021-07-20 11:43:08'),
(154, 67, '2021/07/21 12:00Riya Java Class Session-1 Tense', '2021-07-21', '2021-07-21', '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(155, 67, '2021/07/22 12:00Riya Java Class Session-2 Voice', '2021-07-22', '2021-07-22', '2021-07-20 11:44:38', '2021-07-20 11:44:38'),
(156, 68, '2021/07/23 12:00Suraj C Class Session-1 Organic Chemistry', '2021-07-23', '2021-07-23', '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(157, 68, '2021/07/24 12:00Suraj C Class Session-2 In Organic Checmistry', '2021-07-24', '2021-07-24', '2021-07-20 11:46:37', '2021-07-20 11:46:37'),
(158, 69, '2021/07/20 11:00New Anand\'s Class Session-1 Tense', '2021-07-20', '2021-07-20', '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(159, 69, '2021/07/21 12:00New Anand\'s Class New Session Voice', '2021-07-21', '2021-07-21', '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(160, 69, '2021/07/22 12:00New Anand\'s Class Third Session Tense', '2021-07-22', '2021-07-22', '2021-07-20 12:52:39', '2021-07-20 12:52:39'),
(161, 70, '2021/07/20 12:00New class for Marksheet test Session-1 Tense', '2021-07-20', '2021-07-20', '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(162, 70, '2021/07/21 13:00New class for Marksheet test Session-2 Voice', '2021-07-21', '2021-07-21', '2021-07-20 13:11:50', '2021-07-20 13:11:50'),
(163, 71, '2021/07/21 15:00Ravi Evening Computer Class Session-1 Numbers', '2021-07-21', '2021-07-21', '2021-07-21 14:50:40', '2021-07-21 14:50:40'),
(164, 72, '2021/07/21 15:00test for homework Session-1 Numbers', '2021-07-21', '2021-07-21', '2021-07-21 15:03:02', '2021-07-21 15:03:02'),
(165, 72, '2021/07/20 12:32test for homework Session-2 Numbers', '2021-07-20', '2021-07-20', '2021-07-21 15:03:02', '2021-07-21 15:03:02'),
(166, 73, '2021/07/21 15:00test for homework Session-1 Numbers', '2021-07-21', '2021-07-21', '2021-07-21 15:03:05', '2021-07-21 15:03:05'),
(167, 73, '2021/07/20 12:32test for homework Session-2 Numbers', '2021-07-20', '2021-07-20', '2021-07-21 15:03:05', '2021-07-21 15:03:05'),
(168, 74, '2021/07/21 15:00test for homework Session-1 Numbers', '2021-07-21', '2021-07-21', '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(169, 74, '2021/07/20 12:32test for homework Session-2 Numbers', '2021-07-20', '2021-07-20', '2021-07-21 15:03:06', '2021-07-21 15:03:06'),
(170, 75, '2021/07/21 15:00Ankit Morning English Class Session-1 Tense', '2021-07-21', '2021-07-21', '2021-07-21 15:10:57', '2021-07-21 15:10:57'),
(171, 75, '2021/07/22 17:00Ankit Morning English Class Session-2 Voice', '2021-07-22', '2021-07-22', '2021-07-21 15:10:57', '2021-07-21 15:10:57'),
(172, 76, '2021/07/21 13:00Testing by Admin Session-1 Tense', '2021-07-21', '2021-07-21', '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(173, 76, '2021/07/22 16:00Testing by Admin Session-2 Voice', '2021-07-22', '2021-07-22', '2021-07-21 15:18:24', '2021-07-21 15:18:24'),
(174, 77, '2021/07/21 18:00Alka Session-1 Tense', '2021-07-21', '2021-07-21', '2021-07-21 19:19:54', '2021-07-21 19:19:54'),
(175, 78, '2021/07/22 17:00radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha radha Session-1 Numbers', '2021-07-22', '2021-07-22', '2021-07-22 15:26:18', '2021-07-22 15:26:18'),
(176, 79, '2021/07/24 15:00ScoreSheet CLass Present Indefinite Tense', '2021-07-24', '2021-07-24', '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(177, 79, '2021/07/25 15:00ScoreSheet CLass Present Continuous Tense', '2021-07-25', '2021-07-25', '2021-07-24 16:12:33', '2021-07-24 16:12:33'),
(178, 80, '2021/07/29 17:35Demo Session-1 Numbers', '2021-07-29', '2021-07-29', '2021-07-26 21:09:05', '2021-07-26 21:09:05'),
(179, 81, '2021/07/29 17:35Demo Session-1 Numbers', '2021-07-29', '2021-07-29', '2021-07-26 21:09:07', '2021-07-26 21:09:07'),
(180, 82, '2021/07/26 21:00Sam Wallington Math Summer Booster Session-1 Tense', '2021-07-26', '2021-07-26', '2021-07-26 23:00:01', '2021-07-26 23:00:01'),
(181, 82, '2021/07/28 22:00Sam Wallington Math Summer Booster Session-1 Tense', '2021-07-28', '2021-07-28', '2021-07-26 23:00:01', '2021-07-26 23:00:01'),
(182, 83, '2021/07/26 21:00Sam Wallington Math Summer Booster Session-1 Tense', '2021-07-26', '2021-07-26', '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(183, 83, '2021/07/28 22:00Sam Wallington Math Summer Booster Session-1 Tense', '2021-07-28', '2021-07-28', '2021-07-26 23:00:03', '2021-07-26 23:00:03'),
(184, 84, '2021/07/26 22:00Rina BY Eng Class Session-1 Tense', '2021-07-26', '2021-07-26', '2021-07-26 23:37:58', '2021-07-26 23:37:58'),
(185, 85, '2021/07/27 17:00New Scoresheet Class 11+ Test 1 Tense', '2021-07-27', '2021-07-27', '2021-07-27 00:20:06', '2021-07-27 00:20:06'),
(186, 86, '2022/04/27 21:00ScoreSheets Demo Final Session-1 Tense', '2022-04-27', '2022-04-27', '2021-07-27 18:38:25', '2021-07-27 18:38:25'),
(187, 87, '2022/04/27 21:00ScoreSheets Demo Final Session-1 Tense', '2022-04-27', '2022-04-27', '2021-07-27 18:38:27', '2021-07-27 18:38:27'),
(188, 88, '2021/07/27 21:00Ravi by eng class Session-1 Numbers', '2021-07-27', '2021-07-27', '2021-07-27 18:45:42', '2021-07-27 18:45:42'),
(189, 89, '2021/07/27 21:00Ravi by eng class Session-1 Numbers', '2021-07-27', '2021-07-27', '2021-07-27 18:45:43', '2021-07-27 18:45:43'),
(190, 90, '2021/07/27 23:00Ravi by eng class Session-1 Numbers', '2021-07-27', '2021-07-27', '2021-07-27 19:00:16', '2021-07-27 19:00:16'),
(191, 91, '2021/07/27 21:00Ravi by eng class Session-1 Tense', '2021-07-27', '2021-07-27', '2021-07-27 19:04:08', '2021-07-27 19:04:08'),
(192, 92, '2021/07/27 23:00Ravi by essay class Session-1 Organic Chemistry', '2021-07-27', '2021-07-27', '2021-07-27 19:05:53', '2021-07-27 19:05:53'),
(193, 93, '2021/07/28 15:00Homework Test Class Session-1 Numbers', '2021-07-28', '2021-07-28', '2021-07-28 16:57:47', '2021-07-28 16:57:47'),
(194, 94, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(195, 94, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:30:32', '2021-07-30 01:30:32'),
(196, 95, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(197, 95, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:30:47', '2021-07-30 01:30:47'),
(198, 96, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(199, 96, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:30:48', '2021-07-30 01:30:48'),
(200, 98, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(201, 97, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(202, 98, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(203, 97, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:31:00', '2021-07-30 01:31:00'),
(204, 99, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(205, 99, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:31:04', '2021-07-30 01:31:04'),
(206, 100, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:31:06', '2021-07-30 01:31:06'),
(207, 100, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:31:06', '2021-07-30 01:31:06'),
(208, 101, '2021/08/02 16:00Monday Maths Session-1 Numbers', '2021-08-02', '2021-08-02', '2021-07-30 01:31:07', '2021-07-30 01:31:07'),
(209, 101, '2021/08/09 18:29Monday Maths Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-07-30 01:31:07', '2021-07-30 01:31:07'),
(210, 102, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(211, 102, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:31', '2021-07-30 13:24:31'),
(212, 103, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(213, 103, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:32', '2021-07-30 13:24:32'),
(214, 104, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(215, 104, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(216, 105, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(217, 105, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:35', '2021-07-30 13:24:35'),
(218, 106, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:44', '2021-07-30 13:24:44'),
(219, 106, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:44', '2021-07-30 13:24:44'),
(220, 107, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(221, 108, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(222, 107, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(223, 108, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(224, 109, '2021/07/30 10:50Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-30', '2021-07-30', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(225, 109, '2021/07/31 13:00Rishu_Ayon_Demo_Maths Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-30 13:24:48', '2021-07-30 13:24:48'),
(226, 110, '2021/07/30 11:09Rishu_Ayon Demo1 Session-1 Tense', '2021-07-30', '2021-07-30', '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(227, 110, '2021/07/31 11:09Rishu_Ayon Demo1 Session-1 Tense', '2021-07-31', '2021-07-31', '2021-07-30 13:40:07', '2021-07-30 13:40:07'),
(228, 111, '2021/07/30 11:09Rishu_Ayon Demo1 Session-1 Tense', '2021-07-30', '2021-07-30', '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(229, 111, '2021/07/31 11:09Rishu_Ayon Demo1 Session-1 Tense', '2021-07-31', '2021-07-31', '2021-07-30 13:41:01', '2021-07-30 13:41:01'),
(230, 112, '2021/07/30 11:09Rishu_Ayon Demo1 Session-1 Tense', '2021-07-30', '2021-07-30', '2021-07-30 13:41:09', '2021-07-30 13:41:09'),
(231, 112, '2021/07/31 11:09Rishu_Ayon Demo1 Session-1 Tense', '2021-07-31', '2021-07-31', '2021-07-30 13:41:09', '2021-07-30 13:41:09'),
(232, 113, '2021/07/30 23:00Ravi Evening Computer Class Session-1 Tense', '2021-07-30', '2021-07-30', '2021-07-31 00:06:59', '2021-07-31 00:06:59'),
(233, 114, '2025/07/30 22:00Home English Demo Class Session-1 Tense', '2025-07-30', '2025-07-30', '2021-07-31 00:08:58', '2021-07-31 00:08:58'),
(234, 115, '2025/07/30 22:00String Theory Session-1 Tense', '2025-07-30', '2025-07-30', '2021-07-31 00:09:18', '2021-07-31 00:09:18'),
(235, 116, '2025/07/30 22:00Riya Java Class Session-1 Organic Chemistry', '2025-07-30', '2025-07-30', '2021-07-31 00:10:08', '2021-07-31 00:10:08'),
(236, 117, '2025/07/25 23:00Demo On Testing For Php Class Session-1 In Organic Checmistry', '2025-07-25', '2025-07-25', '2021-07-31 00:10:54', '2021-07-31 00:10:54'),
(237, 118, '2022/09/30 23:00Ankit Morning English Class Session-1 Numbers', '2022-09-30', '2022-09-30', '2021-07-31 00:12:19', '2021-07-31 00:12:19'),
(238, 119, '2023/12/23 21:00priyanka by english class Session-11 Tense', '2023-12-23', '2023-12-23', '2021-07-31 00:14:40', '2021-07-31 00:14:40'),
(239, 120, '2023/12/23 21:00priyanka by english class Session-11 Tense', '2023-12-23', '2023-12-23', '2021-07-31 00:14:40', '2021-07-31 00:14:40'),
(240, 121, '2023/12/23 21:00Maths Morning Class Session-1 Tense', '2023-12-23', '2023-12-23', '2021-07-31 00:15:07', '2021-07-31 00:15:07'),
(241, 122, '2021/07/30 23:00Physics Evening Class Session-11 Tense', '2021-07-30', '2021-07-30', '2021-07-31 00:16:42', '2021-07-31 00:16:42'),
(242, 123, '2021/07/31 07:00Test for teacher 1 Session-1 Tense', '2021-07-31', '2021-07-31', '2021-07-31 07:30:21', '2021-07-31 07:30:21'),
(243, 123, '2021/07/31 07:00Test for teacher 1 Session-2 Tense', '2021-07-31', '2021-07-31', '2021-07-31 07:30:21', '2021-07-31 07:30:21'),
(244, 124, '2021/07/31 06:00Ankit Morning English Class Session-1 Numbers', '2021-07-31', '2021-07-31', '2021-07-31 07:34:36', '2021-07-31 07:34:36'),
(245, 124, '2021/07/31 07:00Ankit Morning English Class Session-2 Numbers', '2021-07-31', '2021-07-31', '2021-07-31 07:34:36', '2021-07-31 07:34:36'),
(246, 125, '2021/08/04 14:00Prabhat Morning Math Class Session-1 Tense', '2021-08-04', '2021-08-04', '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(247, 125, '2021/08/05 14:00Prabhat Morning Math Class Session-2 Voice', '2021-08-05', '2021-08-05', '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(248, 125, '2022/09/16 14:00Prabhat Morning Math Class Session-3 Tense', '2022-09-16', '2022-09-16', '2021-08-04 12:15:06', '2021-08-04 12:15:06'),
(249, 126, '2021/08/04 14:00Prabhat Morning Math Class Session-1 Tense', '2021-08-04', '2021-08-04', '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(250, 126, '2021/08/05 14:00Prabhat Morning Math Class Session-2 Voice', '2021-08-05', '2021-08-05', '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(251, 126, '2022/09/16 14:00Prabhat Morning Math Class Session-3 Tense', '2022-09-16', '2022-09-16', '2021-08-04 12:15:11', '2021-08-04 12:15:11'),
(252, 127, '2021/08/04 14:00New Class TrigonoMetry Counting', '2021-08-04', '2021-08-04', '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(253, 127, '2021/08/05 11:00New Class Algebra Numbers', '2021-08-05', '2021-08-05', '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(254, 127, '2021/08/06 15:00New Class Session-3 Numbers', '2021-08-06', '2021-08-06', '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(255, 127, '2021/08/07 15:00New Class Session-4 Numbers', '2021-08-07', '2021-08-07', '2021-08-04 15:34:09', '2021-08-04 15:34:09'),
(256, 128, '2021/08/05 20:00New Class English Booster Tense', '2021-08-05', '2021-08-05', '2021-08-04 18:49:46', '2021-08-04 18:49:46'),
(257, 129, '2021/08/05 17:00New Class Math Booster Numbers', '2021-08-05', '2021-08-05', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(258, 129, '2021/08/06 18:00New Class Math Booster 1 Counting', '2021-08-06', '2021-08-06', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(259, 129, '2021/08/06 18:00New Class Math Booster 2 Counting', '2021-08-06', '2021-08-06', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(260, 129, '2021/08/06 18:00New Class Math Booster 3 Counting', '2021-08-06', '2021-08-06', '2021-08-04 18:57:45', '2021-08-04 18:57:45'),
(261, 130, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:16', '2021-08-04 21:31:16'),
(262, 131, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(263, 132, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(264, 133, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(265, 134, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:18', '2021-08-04 21:31:18'),
(266, 135, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(267, 136, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(268, 137, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:19', '2021-08-04 21:31:19'),
(269, 138, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:30', '2021-08-04 21:31:30'),
(270, 139, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:30', '2021-08-04 21:31:30'),
(271, 140, '2021/08/11 20:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-04 21:31:31', '2021-08-04 21:31:31'),
(272, 141, '2021/08/05 19:03test by ramu class Session-1 Numbers', '2021-08-05', '2021-08-05', '2021-08-04 21:34:38', '2021-08-04 21:34:38'),
(273, 142, '2021/08/05 20:00priyanka by english class Session-1 Voice', '2021-08-05', '2021-08-05', '2021-08-04 21:38:46', '2021-08-04 21:38:46'),
(274, 142, '2021/08/20 22:00priyanka by english class Session-2 Tense', '2021-08-20', '2021-08-20', '2021-08-04 21:38:46', '2021-08-04 21:38:46'),
(275, 143, '2021/08/06 02:00Ankit Morning English Class Session-1 Tense', '2021-08-06', '2021-08-06', '2021-08-05 03:26:13', '2021-08-05 03:26:13'),
(276, 144, '2021/08/07 19:00New Class English CC Tense', '2021-08-07', '2021-08-07', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(277, 144, '2021/08/08 20:00New Class ENGLISH CC1 Tense', '2021-08-08', '2021-08-08', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(278, 144, '2021/08/08 20:00New Class Session-ENGLISH CC3 Tense', '2021-08-08', '2021-08-08', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(279, 144, '2021/08/08 20:00New Class English CC4 Tense', '2021-08-08', '2021-08-08', '2021-08-05 18:04:34', '2021-08-05 18:04:34'),
(280, 145, '2021/08/07 19:00New Class Test Session Counting', '2021-08-07', '2021-08-07', '2021-08-05 18:30:28', '2021-08-05 18:30:28'),
(281, 146, '2021/08/05 01:00New Class Session-1 Introduction', '2021-08-05', '2021-08-05', '2021-08-05 22:55:49', '2021-08-05 22:55:49'),
(282, 146, '2021/08/05 02:00New Class Session-2 Introduction', '2021-08-05', '2021-08-05', '2021-08-05 22:55:49', '2021-08-05 22:55:49'),
(283, 147, '2021/08/07 02:00Operation Class Session-1 Numbers', '2021-08-07', '2021-08-07', '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(284, 147, '2021/08/08 03:00Operation Class Session-2 Counting', '2021-08-08', '2021-08-08', '2021-08-07 08:45:30', '2021-08-07 08:45:30'),
(285, 148, '2021/08/07 21:00New Class BASIC Introduction', '2021-08-07', '2021-08-07', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(286, 148, '2021/08/07 00:00New Class BASIC 2 Gravity', '2021-08-07', '2021-08-07', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(287, 148, '2021/09/07 00:00New Class BASIC 3 Gravity', '2021-09-07', '2021-09-07', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(288, 148, '2021/08/07 00:00New Class BASIC 4 Gravity', '2021-08-07', '2021-08-07', '2021-08-07 23:43:18', '2021-08-07 23:43:18'),
(289, 149, '2021/08/07 18:00Prabhat Morning Math Class Session-1 Tense', '2021-08-07', '2021-08-07', '2021-08-07 23:44:33', '2021-08-07 23:44:33'),
(290, 150, '2021/08/07 01:00New Class BASIC 1 Introduction', '2021-08-07', '2021-08-07', '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(291, 150, '2021/08/07 01:00New Class BASIC 2 Introduction', '2021-08-07', '2021-08-07', '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(292, 150, '2021/08/07 01:00New Class BASIC 3 Introduction', '2021-08-07', '2021-08-07', '2021-08-07 23:48:14', '2021-08-07 23:48:14'),
(293, 151, '2021/08/07 22:00New Class BASIC I Introduction', '2021-08-07', '2021-08-07', '2021-08-08 00:10:50', '2021-08-08 00:10:50'),
(294, 152, '2021/08/07 23:00New Class Negative class Introduction', '2021-08-07', '2021-08-07', '2021-08-08 00:16:46', '2021-08-08 00:16:46'),
(295, 153, '2021/08/10 14:00Amit Evening Php Class Session-11 Tense', '2021-08-10', '2021-08-10', '2021-08-09 19:41:11', '2021-08-09 19:41:11'),
(296, 154, '2021/08/09 14:00Ravi Evening Computer Class Session-1 Tense', '2021-08-09', '2021-08-09', '2021-08-09 20:02:07', '2021-08-09 20:02:07'),
(297, 155, '2021/08/09 15:00Amit Evening Php Class Session-1 Numbers', '2021-08-09', '2021-08-09', '2021-08-09 20:10:22', '2021-08-09 20:10:22'),
(298, 156, '2021/08/09 14:00Prabhat Morning Math Class Session-1 Tense', '2021-08-09', '2021-08-09', '2021-08-09 20:29:43', '2021-08-09 20:29:43'),
(299, 157, '2021/08/09 14:00Prabhat Morning Math Class Session-1 Tense', '2021-08-09', '2021-08-09', '2021-08-09 20:35:34', '2021-08-09 20:35:34'),
(300, 157, '2021/08/09 14:00Prabhat Morning Math Class Session-2 Tense', '2021-08-09', '2021-08-09', '2021-08-09 20:35:34', '2021-08-09 20:35:34'),
(301, 158, '2021/08/09 09:00New Class Phy MON 1 Gravity', '2021-08-09', '2021-08-09', '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(302, 158, '2021/08/09 09:00New Class Phy MON 2 Gravity', '2021-08-09', '2021-08-09', '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(303, 158, '2021/08/09 09:00New Class Phy MON 3 Gravity', '2021-08-09', '2021-08-09', '2021-08-09 21:22:23', '2021-08-09 21:22:23'),
(304, 159, '2021/08/09 21:00New Class Phy Mon 1 Introduction', '2021-08-09', '2021-08-09', '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(305, 159, '2021/08/09 21:00New Class Phy Mon 2 Introduction', '2021-08-09', '2021-08-09', '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(306, 159, '2021/08/09 21:00New Class Phy Mon 2 Introduction', '2021-08-09', '2021-08-09', '2021-08-09 21:33:51', '2021-08-09 21:33:51'),
(307, 160, '2021/08/10 15:17Prabhat Morning Math Class Session-1 Tense', '2021-08-10', '2021-08-10', '2021-08-09 22:17:36', '2021-08-09 22:17:36'),
(308, 161, '2021/08/09 17:00New Class New 1 Introduction', '2021-08-09', '2021-08-09', '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(309, 161, '2021/08/09 18:00New Class New 2 Introduction', '2021-08-09', '2021-08-09', '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(310, 161, '2021/08/09 19:00New Class New 2 Gravity', '2021-08-09', '2021-08-09', '2021-08-09 22:51:35', '2021-08-09 22:51:35'),
(311, 162, '2021/08/09 23:00New Class Fractional seats Introduction', '2021-08-09', '2021-08-09', '2021-08-09 22:56:47', '2021-08-09 22:56:47'),
(312, 163, '2021/08/10 10:00New Class Session-1 Introduction', '2021-08-10', '2021-08-10', '2021-08-09 23:22:04', '2021-08-09 23:22:04'),
(313, 163, '2021/08/10 10:00New Class Session-2 Introduction', '2021-08-10', '2021-08-10', '2021-08-09 23:22:04', '2021-08-09 23:22:04'),
(314, 164, '2021/08/09 19:00Prabhat Morning Math Class Session-1 Counting', '2021-08-09', '2021-08-09', '2021-08-09 23:35:02', '2021-08-09 23:35:02'),
(315, 164, '2021/08/09 20:00Prabhat Morning Math Class Session-2 Numbers', '2021-08-09', '2021-08-09', '2021-08-09 23:35:02', '2021-08-09 23:35:02'),
(316, 165, '2021/08/10 22:00New Class Session-1 Introduction', '2021-08-10', '2021-08-10', '2021-08-10 00:39:14', '2021-08-10 00:39:14'),
(317, 165, '2021/08/10 18:00New Class Session-2 Gravity', '2021-08-10', '2021-08-10', '2021-08-10 00:39:14', '2021-08-10 00:39:14'),
(318, 166, '2021/08/09 19:00Prabhat Morning Math Class Session-1 Tense', '2021-08-09', '2021-08-09', '2021-08-10 01:24:34', '2021-08-10 01:24:34'),
(319, 167, '2021/08/09 19:00Prabhat Morning Math Class Session-1 Tense', '2021-08-09', '2021-08-09', '2021-08-10 01:31:22', '2021-08-10 01:31:22'),
(320, 168, '2021/08/15 16:00Monday Maths 11+ week 1 Numbers', '2021-08-15', '2021-08-15', '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(321, 168, '2021/08/22 16:00Monday Maths 11+ week 2 Numbers', '2021-08-22', '2021-08-22', '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(322, 168, '2021/08/29 16:00Monday Maths 11+ Week 3 Numbers', '2021-08-29', '2021-08-29', '2021-08-10 02:35:15', '2021-08-10 02:35:15'),
(323, 169, '2021/08/12 20:00Ankit Morning English Class Session-1 Tense', '2021-08-12', '2021-08-12', '2021-08-10 06:13:57', '2021-08-10 06:13:57'),
(324, 170, '2021/08/12 21:00Prabhat Morning Math Class Session-1 Tense', '2021-08-12', '2021-08-12', '2021-08-10 06:18:30', '2021-08-10 06:18:30'),
(325, 171, '2021/08/11 13:00New Class Session-1 Introduction', '2021-08-11', '2021-08-11', '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(326, 171, '2021/08/11 13:00New Class Session-2 Gravity', '2021-08-11', '2021-08-11', '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(327, 171, '2021/08/11 13:00New Class Session-3 Gravity', '2021-08-11', '2021-08-11', '2021-08-11 03:42:58', '2021-08-11 03:42:58'),
(328, 172, '2021/08/11 01:00Prabhat Morning Math Class Session-1 Organic Chemistry', '2021-08-11', '2021-08-11', '2021-08-11 05:09:14', '2021-08-11 05:09:14'),
(329, 173, '2021/08/11 01:00Amit Evening Php Class Session-1 Numbers', '2021-08-11', '2021-08-11', '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(330, 173, '2021/08/11 01:00Amit Evening Php Class Session-2 Numbers', '2021-08-11', '2021-08-11', '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(331, 173, '2021/08/12 19:00Amit Evening Php Class Session-3 Numbers', '2021-08-12', '2021-08-12', '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(332, 173, '2021/08/12 19:00Amit Evening Php Class Session-4 Numbers', '2021-08-12', '2021-08-12', '2021-08-11 06:29:22', '2021-08-11 06:29:22'),
(333, 174, '2021/08/11 13:00Prabhat Morning Math Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-11 06:34:40', '2021-08-11 06:34:40'),
(334, 174, '2021/08/11 13:00Prabhat Morning Math Class Session-2 Tense', '2021-08-11', '2021-08-11', '2021-08-11 06:34:40', '2021-08-11 06:34:40'),
(335, 175, '2021/08/11 13:00Ankit Morning English Class Session-1 Numbers', '2021-08-11', '2021-08-11', '2021-08-11 06:38:07', '2021-08-11 06:38:07'),
(336, 176, '2021/08/11 12:00New Class Session-1 Introduction', '2021-08-11', '2021-08-11', '2021-08-11 16:34:45', '2021-08-11 16:34:45'),
(337, 176, '2021/08/11 12:00New Class Session-2 Introduction', '2021-08-11', '2021-08-11', '2021-08-11 16:34:45', '2021-08-11 16:34:45'),
(338, 177, '2021/08/11 09:30Ankit Morning English Class Session-1 Tense', '2021-08-11', '2021-08-11', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(339, 177, '2021/08/11 09:30Ankit Morning English Class Session-2 Tense', '2021-08-11', '2021-08-11', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(340, 177, '2021/08/11 09:30Ankit Morning English Class Session-3 Tense', '2021-08-11', '2021-08-11', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(341, 177, '2021/08/12 11:00Ankit Morning English Class Session-4 Tense', '2021-08-12', '2021-08-12', '2021-08-11 16:58:05', '2021-08-11 16:58:05'),
(342, 178, '2021/08/15 20:00New Class Session-1 Introduction', '2021-08-15', '2021-08-15', '2021-08-12 03:27:49', '2021-08-12 03:27:49'),
(343, 178, '2021/08/11 21:00New Class Session-2 Introduction', '2021-08-11', '2021-08-11', '2021-08-12 03:27:49', '2021-08-12 03:27:49'),
(344, 179, '2021/08/11 21:00New Class Session-1 Introduction', '2021-08-11', '2021-08-11', '2021-08-12 03:32:20', '2021-08-12 03:32:20'),
(345, 179, '2021/08/11 22:00New Class Session-2 Introduction', '2021-08-11', '2021-08-11', '2021-08-12 03:32:20', '2021-08-12 03:32:20'),
(346, 180, '2021/08/16 19:00Rishu Demo 11+ Mock Session-1 Counting', '2021-08-16', '2021-08-16', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(347, 180, '2021/08/17 18:30Rishu Demo 11+ Mock Session-2 Numbers', '2021-08-17', '2021-08-17', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(348, 180, '2021/08/18 18:30Rishu Demo 11+ Mock Session-3 Numbers', '2021-08-18', '2021-08-18', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(349, 180, '2021/08/19 18:30Rishu Demo 11+ Mock Session-4 Numbers', '2021-08-19', '2021-08-19', '2021-08-17 01:32:33', '2021-08-17 01:32:33'),
(350, 181, '2021/08/16 21:00Prabhat Morning Math Class Session-1 Tense', '2021-08-16', '2021-08-16', '2021-08-17 02:17:37', '2021-08-17 02:17:37'),
(351, 182, '2021/08/16 22:00Prabhat Morning Math Class Session-1 Tense', '2021-08-16', '2021-08-16', '2021-08-17 02:19:46', '2021-08-17 02:19:46'),
(352, 183, '2021/08/18 22:00Ankit Morning English Class Session-1 Introduction', '2021-08-18', '2021-08-18', '2021-08-17 06:30:11', '2021-08-17 06:30:11'),
(353, 184, '2021/08/17 03:00Ankit Morning English Class Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 07:59:23', '2021-08-17 07:59:23'),
(354, 185, '2021/08/17 11:00Maths Morning Class Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 15:14:44', '2021-08-17 15:14:44'),
(355, 186, '2021/08/17 14:00Anand Scoresheet clas Session-1 Introduction', '2021-08-17', '2021-08-17', '2021-08-17 19:10:25', '2021-08-17 19:10:25'),
(356, 186, '2021/08/18 14:00Anand Scoresheet clas Session-2 Gravity', '2021-08-18', '2021-08-18', '2021-08-17 19:10:25', '2021-08-17 19:10:25');
INSERT INTO `events` (`id`, `batch_id`, `title`, `start`, `end`, `created_at`, `updated_at`) VALUES
(357, 187, '2021/08/19 22:00Alka Score Sheets New Session-1 Tense', '2021-08-19', '2021-08-19', '2021-08-17 19:37:20', '2021-08-17 19:37:20'),
(358, 188, '2021/08/17 16:00New Homework Class Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(359, 188, '2021/08/18 16:00New Homework Class Session-2 Tense', '2021-08-18', '2021-08-18', '2021-08-17 20:56:58', '2021-08-17 20:56:58'),
(360, 189, '2021/08/17 23:00Prabhat Morning Math Class Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(361, 189, '2021/08/18 22:00Prabhat Morning Math Class Session-2 Voice', '2021-08-18', '2021-08-18', '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(362, 189, '2021/08/21 18:00Prabhat Morning Math Class Session-3 Tense', '2021-08-21', '2021-08-21', '2021-08-17 21:21:49', '2021-08-17 21:21:49'),
(363, 190, '2021/08/19 15:08test mks Maths Session Numbers', '2021-08-19', '2021-08-19', '2021-08-17 22:09:42', '2021-08-17 22:09:42'),
(364, 191, '2021/08/17 17:00Score Sheet Homework Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(365, 191, '2021/08/18 21:00Score Sheet Homework Session-2 Tense', '2021-08-18', '2021-08-18', '2021-08-17 22:18:40', '2021-08-17 22:18:40'),
(366, 192, '2021/08/17 22:00Today Score Sheet Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 23:29:55', '2021-08-17 23:29:55'),
(367, 193, '2021/08/17 20:00Test Today Score Sheet Session-1 Tense', '2021-08-17', '2021-08-17', '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(368, 193, '2021/08/18 23:00Test Today Score Sheet Session-2 Tense', '2021-08-18', '2021-08-18', '2021-08-17 23:31:45', '2021-08-17 23:31:45'),
(369, 194, '2021/08/17 21:00Test Today Score Sheet Session-1 Numbers', '2021-08-17', '2021-08-17', '2021-08-18 00:31:45', '2021-08-18 00:31:45'),
(370, 194, '2021/08/18 20:00Test Today Score Sheet Session-2 Counting', '2021-08-18', '2021-08-18', '2021-08-18 00:31:45', '2021-08-18 00:31:45'),
(371, 195, '2021/08/20 15:00Prabhat Morning Math Class Session-1 Numbers', '2021-08-20', '2021-08-20', '2021-08-20 04:06:22', '2021-08-20 04:06:22'),
(372, 195, '2021/08/21 19:00Prabhat Morning Math Class Session-2 Numbers', '2021-08-21', '2021-08-21', '2021-08-20 04:06:22', '2021-08-20 04:06:22'),
(373, 196, '2021/08/19 22:00Ankit Morning English Class Session-1 Tense', '2021-08-19', '2021-08-19', '2021-08-20 04:15:49', '2021-08-20 04:15:49'),
(374, 197, '2021/08/19 22:00Amit Evening Php Class Session-1 Introduction', '2021-08-19', '2021-08-19', '2021-08-20 04:17:11', '2021-08-20 04:17:11'),
(375, 197, '2021/08/20 21:00Amit Evening Php Class Session-2 Introduction', '2021-08-20', '2021-08-20', '2021-08-20 04:17:11', '2021-08-20 04:17:11'),
(376, 198, '2021/08/19 22:00Ravi Evening Computer Class Session-1 Organic Chemistry', '2021-08-19', '2021-08-19', '2021-08-20 04:29:23', '2021-08-20 04:29:23'),
(377, 198, '2021/08/21 20:00Ravi Evening Computer Class Session-2 Organic Chemistry', '2021-08-21', '2021-08-21', '2021-08-20 04:29:23', '2021-08-20 04:29:23'),
(378, 199, '2021/08/21 12:00Rishu Demo 11+ August 21 Session-1 Numbers', '2021-08-21', '2021-08-21', '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(379, 199, '2021/08/22 12:00Rishu Demo 11+ August 21 Session-2 Numbers', '2021-08-22', '2021-08-22', '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(380, 199, '2021/08/23 12:00Rishu Demo 11+ August 21 Session-3 Numbers', '2021-08-23', '2021-08-23', '2021-08-21 18:50:08', '2021-08-21 18:50:08'),
(381, 199, '2021/08/24 12:00Rishu Demo 11+ August 21 Session-4 Numbers', '2021-08-24', '2021-08-24', '2021-08-21 18:50:08', '2021-08-21 18:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_masers`
--

CREATE TABLE `language_masers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2021_01_18_080829_create_weekly_offs_table', 1),
(5, '2021_01_18_080946_create_subjects_table', 1),
(6, '2021_01_18_081052_create_class_masters_table', 1),
(7, '2021_01_18_084147_create_teachers_table', 1),
(8, '2021_01_26_134354_create_batch_live_table', 1),
(9, '2021_01_26_142651_create_batch_session_table', 1),
(10, '2021_01_29_154938_create_class_settings_table', 1),
(11, '2021_01_30_105950_create_duration_per_sessions_table', 1),
(12, '2021_02_01_103520_create_batch_topics_table', 1),
(13, '2021_02_15_005859_add_column_to_teachers_table', 1),
(14, '2021_02_23_162758_create_orders_table', 1),
(15, '2021_03_17_184055_create_students_table', 1),
(16, '2021_04_03_163644_create_order_items_table', 1),
(17, '2021_04_05_154525_create_transactions_table', 1),
(18, '2021_04_05_155851_create_order_payments_table', 1),
(19, '2021_04_19_180236_create_created_sessions_table', 1),
(20, '2021_04_30_194337_create_events_table', 1),
(21, '2021_05_07_205230_teachers_profiles', 1),
(22, '2021_05_12_140441_create_teacher_experiences_table', 1),
(23, '2021_05_13_144555_create_order_sessions_table', 1),
(24, '2021_05_15_142138_create_teacher_subjects_table', 1),
(25, '2021_05_15_201516_create_teacher_expertises_table', 1),
(26, '2021_05_15_202021_create_language_masers_table', 1),
(27, '2021_05_15_202435_add_column_to_language_masers', 1),
(28, '2021_05_15_210748_add_coloumn_to_teacher_expertises', 1),
(29, '2021_05_17_062732_create_batches_table', 1),
(30, '2021_05_18_143216_create_topics_table', 1),
(31, '2021_05_22_105559_create_teacher_pricings_table', 1),
(32, '2021_05_24_090020_create_resource_masters_table', 1),
(33, '2021_05_24_141427_create_order_session_maps_table', 1),
(34, '2021_05_24_214836_create_assigned_home_works_table', 1),
(35, '2021_05_24_215744_create_assigned_home_work_students_table', 1),
(36, '2021_05_24_220147_create_sub_topics_table', 1),
(37, '2021_05_24_221810_add_missing_columns', 1),
(38, '2021_05_24_062732_create_batches_table', 2),
(39, '2021_05_25_173510_add_column_pdf_name_to_resource_masters_table', 3),
(40, '2021_05_26_183217_create_new_subtopic_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_payment_id` int(11) NOT NULL,
  `no_of_items` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_payment_id`, `no_of_items`, `batch_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-05-25 20:23:43', '2021-05-25 20:23:43'),
(2, 2, 1, 1, '2021-05-25 20:36:42', '2021-05-25 20:36:42'),
(3, 3, 1, 1, '2021-05-25 20:40:58', '2021-05-25 20:40:58'),
(4, 13, 1, 5, '2021-05-25 21:57:45', '2021-05-25 21:57:45'),
(5, 14, 1, 5, '2021-05-26 01:07:07', '2021-05-26 01:07:07'),
(6, 15, 1, 7, '2021-05-26 15:05:42', '2021-05-26 15:05:42'),
(7, 16, 1, 7, '2021-05-26 15:35:58', '2021-05-26 15:35:58'),
(8, 17, 1, 8, '2021-05-26 15:42:35', '2021-05-26 15:42:35'),
(9, 18, 1, 9, '2021-05-26 16:59:30', '2021-05-26 16:59:30'),
(10, 19, 1, 10, '2021-05-26 17:39:33', '2021-05-26 17:39:33'),
(11, 20, 1, 11, '2021-05-28 17:23:47', '2021-05-28 17:23:47'),
(12, 21, 1, 12, '2021-05-28 17:24:21', '2021-05-28 17:24:21'),
(13, 22, 1, 11, '2021-05-28 17:25:20', '2021-05-28 17:25:20'),
(14, 23, 1, 12, '2021-05-28 17:25:36', '2021-05-28 17:25:36'),
(15, 24, 1, 13, '2021-05-28 22:09:19', '2021-05-28 22:09:19'),
(16, 25, 1, 12, '2021-05-29 01:10:27', '2021-05-29 01:10:27'),
(17, 26, 1, 14, '2021-05-29 04:56:49', '2021-05-29 04:56:49'),
(18, 27, 1, 14, '2021-05-29 04:57:50', '2021-05-29 04:57:50'),
(19, 28, 1, 15, '2021-05-29 17:07:52', '2021-05-29 17:07:52'),
(20, 29, 1, 15, '2021-05-29 17:13:16', '2021-05-29 17:13:16'),
(21, 30, 1, 8, '2021-05-30 02:01:21', '2021-05-30 02:01:21'),
(22, 31, 1, 16, '2021-05-30 02:07:22', '2021-05-30 02:07:22'),
(23, 32, 1, 17, '2021-05-30 02:19:27', '2021-05-30 02:19:27'),
(24, 33, 1, 18, '2021-05-30 02:34:53', '2021-05-30 02:34:53'),
(25, 34, 1, 17, '2021-06-01 03:10:10', '2021-06-01 03:10:10'),
(26, 35, 1, 20, '2021-06-02 06:40:53', '2021-06-02 06:40:53'),
(27, 36, 1, 20, '2021-06-02 07:00:21', '2021-06-02 07:00:21'),
(28, 37, 1, 20, '2021-06-03 01:58:54', '2021-06-03 01:58:54'),
(29, 38, 1, 8, '2021-06-03 07:21:43', '2021-06-03 07:21:43'),
(30, 39, 1, 21, '2021-06-04 01:01:06', '2021-06-04 01:01:06'),
(31, 40, 1, 22, '2021-06-04 16:37:50', '2021-06-04 16:37:50'),
(32, 41, 1, 22, '2021-06-04 16:54:43', '2021-06-04 16:54:43'),
(33, 42, 1, 22, '2021-06-04 17:41:27', '2021-06-04 17:41:27'),
(34, 43, 1, 22, '2021-06-04 18:19:41', '2021-06-04 18:19:41'),
(35, 44, 1, 23, '2021-06-05 17:33:09', '2021-06-05 17:33:09'),
(36, 45, 1, 23, '2021-06-05 19:31:50', '2021-06-05 19:31:50'),
(37, 46, 1, 24, '2021-06-05 21:31:46', '2021-06-05 21:31:46'),
(38, 47, 1, 24, '2021-06-05 21:45:38', '2021-06-05 21:45:38'),
(39, 48, 1, 24, '2021-06-05 21:47:37', '2021-06-05 21:47:37'),
(40, 49, 1, 25, '2021-06-06 00:50:01', '2021-06-06 00:50:01'),
(41, 50, 1, 25, '2021-06-06 02:01:21', '2021-06-06 02:01:21'),
(42, 51, 1, 26, '2021-06-06 02:22:00', '2021-06-06 02:22:00'),
(43, 52, 1, 26, '2021-06-06 02:27:12', '2021-06-06 02:27:12'),
(44, 53, 1, 27, '2021-06-08 00:16:37', '2021-06-08 00:16:37'),
(45, 54, 1, 21, '2021-06-08 00:18:43', '2021-06-08 00:18:43'),
(46, 55, 1, 28, '2021-06-08 01:50:02', '2021-06-08 01:50:02'),
(47, 56, 1, 29, '2021-06-08 02:18:25', '2021-06-08 02:18:25'),
(48, 57, 1, 30, '2021-06-08 02:35:58', '2021-06-08 02:35:58'),
(49, 58, 1, 31, '2021-06-08 03:13:33', '2021-06-08 03:13:33'),
(50, 59, 1, 32, '2021-06-10 01:41:58', '2021-06-10 01:41:58'),
(51, 60, 1, 33, '2021-06-11 17:14:51', '2021-06-11 17:14:51'),
(52, 61, 1, 33, '2021-06-11 17:15:05', '2021-06-11 17:15:05'),
(53, 62, 1, 34, '2021-06-12 02:49:22', '2021-06-12 02:49:22'),
(54, 63, 1, 35, '2021-06-12 03:25:56', '2021-06-12 03:25:56'),
(55, 64, 1, 35, '2021-06-12 03:26:59', '2021-06-12 03:26:59'),
(56, 65, 1, 36, '2021-06-12 14:27:47', '2021-06-12 14:27:47'),
(57, 66, 1, 36, '2021-06-12 14:30:13', '2021-06-12 14:30:13'),
(58, 67, 1, 37, '2021-06-12 17:19:20', '2021-06-12 17:19:20'),
(59, 68, 1, 37, '2021-06-12 17:19:46', '2021-06-12 17:19:46'),
(60, 69, 1, 37, '2021-06-12 17:19:57', '2021-06-12 17:19:57'),
(61, 70, 1, 38, '2021-06-12 22:41:43', '2021-06-12 22:41:43'),
(62, 71, 1, 39, '2021-06-12 23:41:51', '2021-06-12 23:41:51'),
(63, 72, 1, 39, '2021-06-12 23:42:29', '2021-06-12 23:42:29'),
(64, 73, 1, 39, '2021-06-12 23:48:15', '2021-06-12 23:48:15'),
(65, 74, 1, 40, '2021-06-17 01:17:04', '2021-06-17 01:17:04'),
(66, 75, 1, 40, '2021-06-17 01:18:18', '2021-06-17 01:18:18'),
(67, 76, 1, 33, '2021-06-20 11:38:45', '2021-06-20 11:38:45'),
(68, 77, 1, 44, '2021-06-30 06:56:32', '2021-06-30 06:56:32'),
(69, 78, 1, 44, '2021-06-30 06:56:46', '2021-06-30 06:56:46'),
(70, 79, 1, 45, '2021-06-30 09:09:58', '2021-06-30 09:09:58'),
(71, 80, 1, 45, '2021-06-30 09:10:44', '2021-06-30 09:10:44'),
(72, 81, 1, 45, '2021-06-30 09:11:31', '2021-06-30 09:11:31'),
(73, 82, 1, 44, '2021-06-30 16:01:27', '2021-06-30 16:01:27'),
(74, 83, 1, 44, '2021-06-30 16:02:35', '2021-06-30 16:02:35'),
(75, 84, 1, 48, '2021-06-30 16:15:15', '2021-06-30 16:15:15'),
(77, 86, 1, 48, '2021-06-30 16:27:16', '2021-06-30 16:27:16'),
(78, 87, 1, 48, '2021-06-30 16:40:11', '2021-06-30 16:40:11'),
(79, 88, 1, 45, '2021-06-30 16:57:10', '2021-06-30 16:57:10'),
(80, 89, 1, 46, '2021-07-01 15:35:16', '2021-07-01 15:35:16'),
(81, 90, 1, 46, '2021-07-01 16:26:25', '2021-07-01 16:26:25'),
(82, 91, 1, 49, '2021-07-01 18:22:35', '2021-07-01 18:22:35'),
(83, 92, 1, 51, '2021-07-01 19:00:23', '2021-07-01 19:00:23'),
(84, 93, 1, 51, '2021-07-01 19:17:25', '2021-07-01 19:17:25'),
(85, 94, 1, 52, '2021-07-01 19:44:19', '2021-07-01 19:44:19'),
(86, 95, 1, 52, '2021-07-01 19:46:14', '2021-07-01 19:46:14'),
(87, 96, 1, 53, '2021-07-02 01:33:21', '2021-07-02 01:33:21'),
(88, 97, 1, 54, '2021-07-03 01:22:54', '2021-07-03 01:22:54'),
(89, 99, 1, 54, '2021-07-03 02:12:45', '2021-07-03 02:12:45'),
(90, 100, 1, 54, '2021-07-03 02:14:55', '2021-07-03 02:14:55'),
(91, 101, 1, 52, '2021-07-03 03:10:07', '2021-07-03 03:10:07'),
(92, 102, 1, 55, '2021-07-03 03:16:59', '2021-07-03 03:16:59'),
(93, 103, 1, 55, '2021-07-03 03:26:18', '2021-07-03 03:26:18'),
(94, 104, 1, 54, '2021-07-03 03:30:26', '2021-07-03 03:30:26'),
(95, 105, 1, 54, '2021-07-03 03:49:13', '2021-07-03 03:49:13'),
(96, 106, 1, 52, '2021-07-03 03:50:13', '2021-07-03 03:50:13'),
(97, 107, 1, 59, '2021-07-11 01:15:48', '2021-07-11 01:15:48'),
(98, 108, 1, 59, '2021-07-11 01:17:12', '2021-07-11 01:17:12'),
(99, 109, 1, 59, '2021-07-11 01:18:40', '2021-07-11 01:18:40'),
(100, 110, 1, 59, '2021-07-11 01:19:18', '2021-07-11 01:19:18'),
(101, 111, 1, 57, '2021-07-14 22:16:26', '2021-07-14 22:16:26'),
(102, 112, 1, 42, '2021-07-14 23:02:50', '2021-07-14 23:02:50'),
(103, 113, 1, 57, '2021-07-14 23:41:31', '2021-07-14 23:41:31'),
(104, 114, 1, 63, '2021-07-15 00:12:40', '2021-07-15 00:12:40'),
(105, 115, 1, 63, '2021-07-15 00:16:10', '2021-07-15 00:16:10'),
(106, 116, 1, 63, '2021-07-15 00:16:58', '2021-07-15 00:16:58'),
(107, 117, 1, 63, '2021-07-15 00:55:17', '2021-07-15 00:55:17'),
(108, 118, 1, 42, '2021-07-15 01:31:22', '2021-07-15 01:31:22'),
(109, 119, 1, 64, '2021-07-15 04:00:59', '2021-07-15 04:00:59'),
(110, 120, 1, 65, '2021-07-18 16:38:11', '2021-07-18 16:38:11'),
(111, 121, 1, 68, '2021-07-20 11:50:19', '2021-07-20 11:50:19'),
(112, 122, 1, 67, '2021-07-20 11:52:23', '2021-07-20 11:52:23'),
(113, 123, 1, 66, '2021-07-20 11:54:42', '2021-07-20 11:54:42'),
(114, 124, 1, 69, '2021-07-20 12:54:00', '2021-07-20 12:54:00'),
(115, 125, 1, 69, '2021-07-20 13:16:38', '2021-07-20 13:16:38'),
(116, 126, 1, 68, '2021-07-20 13:21:58', '2021-07-20 13:21:58'),
(117, 127, 1, 65, '2021-07-20 13:53:11', '2021-07-20 13:53:11'),
(118, 128, 1, 66, '2021-07-20 14:12:46', '2021-07-20 14:12:46'),
(119, 129, 1, 79, '2021-07-24 16:13:18', '2021-07-24 16:13:18'),
(120, 130, 1, 85, '2021-07-27 00:21:50', '2021-07-27 00:21:50'),
(121, 131, 1, 85, '2021-07-27 00:36:42', '2021-07-27 00:36:42'),
(122, 132, 1, 85, '2021-07-27 00:38:34', '2021-07-27 00:38:34'),
(123, 133, 1, 85, '2021-07-27 00:39:23', '2021-07-27 00:39:23'),
(124, 134, 1, 85, '2021-07-27 00:40:28', '2021-07-27 00:40:28'),
(125, 135, 1, 87, '2021-07-27 18:40:15', '2021-07-27 18:40:15'),
(126, 136, 1, 87, '2021-07-27 18:42:22', '2021-07-27 18:42:22'),
(127, 137, 1, 89, '2021-07-27 18:46:43', '2021-07-27 18:46:43'),
(128, 138, 1, 89, '2021-07-27 18:48:57', '2021-07-27 18:48:57'),
(129, 139, 1, 91, '2021-07-27 19:05:36', '2021-07-27 19:05:36'),
(130, 140, 1, 91, '2021-07-27 19:07:20', '2021-07-27 19:07:20'),
(131, 141, 1, 92, '2021-07-27 19:09:17', '2021-07-27 19:09:17'),
(132, 142, 1, 92, '2021-07-27 19:11:16', '2021-07-27 19:11:16'),
(133, 143, 1, 8, '2021-07-30 02:26:51', '2021-07-30 02:26:51'),
(134, 144, 1, 102, '2021-07-30 13:31:29', '2021-07-30 13:31:29'),
(135, 145, 1, 112, '2021-07-30 13:42:35', '2021-07-30 13:42:35'),
(136, 146, 1, 126, '2021-08-04 12:21:54', '2021-08-04 12:21:54'),
(137, 147, 1, 121, '2021-08-04 15:23:34', '2021-08-04 15:23:34'),
(138, 148, 1, 144, '2021-08-05 18:10:14', '2021-08-05 18:10:14'),
(139, 149, 1, 145, '2021-08-05 18:44:24', '2021-08-05 18:44:24'),
(140, 150, 1, 129, '2021-08-05 19:02:24', '2021-08-05 19:02:24'),
(141, 151, 1, 129, '2021-08-05 20:13:11', '2021-08-05 20:13:11'),
(142, 152, 1, 129, '2021-08-05 20:16:36', '2021-08-05 20:16:36'),
(143, 153, 1, 129, '2021-08-05 20:17:34', '2021-08-05 20:17:34'),
(144, 154, 1, 129, '2021-08-05 20:18:04', '2021-08-05 20:18:04'),
(145, 155, 1, 129, '2021-08-05 20:19:27', '2021-08-05 20:19:27'),
(146, 156, 1, 129, '2021-08-05 20:26:59', '2021-08-05 20:26:59'),
(147, 157, 1, 129, '2021-08-05 20:44:37', '2021-08-05 20:44:37'),
(148, 158, 1, 129, '2021-08-05 20:53:11', '2021-08-05 20:53:11'),
(149, 159, 1, 129, '2021-08-05 22:47:23', '2021-08-05 22:47:23'),
(150, 160, 1, 127, '2021-08-07 08:15:49', '2021-08-07 08:15:49'),
(151, 161, 1, 127, '2021-08-07 08:17:01', '2021-08-07 08:17:01'),
(152, 162, 1, 127, '2021-08-07 08:20:50', '2021-08-07 08:20:50'),
(153, 163, 1, 145, '2021-08-07 08:39:23', '2021-08-07 08:39:23'),
(154, 164, 1, 147, '2021-08-07 09:21:33', '2021-08-07 09:21:33'),
(155, 165, 1, 144, '2021-08-07 16:59:39', '2021-08-07 16:59:39'),
(156, 166, 1, 144, '2021-08-07 17:00:44', '2021-08-07 17:00:44'),
(157, 167, 1, 144, '2021-08-07 23:19:02', '2021-08-07 23:19:02'),
(158, 168, 1, 144, '2021-08-07 23:21:58', '2021-08-07 23:21:58'),
(159, 169, 1, 149, '2021-08-08 01:01:14', '2021-08-08 01:01:14'),
(160, 170, 1, 147, '2021-08-08 03:05:30', '2021-08-08 03:05:30'),
(161, 171, 1, 147, '2021-08-09 02:41:29', '2021-08-09 02:41:29'),
(162, 172, 1, 147, '2021-08-09 02:51:33', '2021-08-09 02:51:33'),
(163, 173, 1, 140, '2021-08-09 02:52:59', '2021-08-09 02:52:59'),
(164, 174, 1, 144, '2021-08-09 02:58:14', '2021-08-09 02:58:14'),
(165, 175, 1, 144, '2021-08-09 03:35:45', '2021-08-09 03:35:45'),
(166, 176, 1, 165, '2021-08-10 00:53:14', '2021-08-10 00:53:14'),
(167, 177, 1, 165, '2021-08-10 00:53:38', '2021-08-10 00:53:38'),
(168, 178, 1, 165, '2021-08-10 00:54:23', '2021-08-10 00:54:23'),
(169, 179, 1, 165, '2021-08-10 00:55:02', '2021-08-10 00:55:02'),
(170, 180, 1, 165, '2021-08-10 01:53:38', '2021-08-10 01:53:38'),
(171, 181, 1, 168, '2021-08-10 02:36:36', '2021-08-10 02:36:36'),
(172, 182, 1, 168, '2021-08-10 02:44:14', '2021-08-10 02:44:14'),
(173, 183, 1, 170, '2021-08-10 06:36:12', '2021-08-10 06:36:12'),
(174, 184, 1, 170, '2021-08-10 06:37:08', '2021-08-10 06:37:08'),
(175, 185, 1, 170, '2021-08-10 06:42:35', '2021-08-10 06:42:35'),
(176, 186, 1, 170, '2021-08-10 06:45:47', '2021-08-10 06:45:47'),
(177, 187, 1, 179, '2021-08-12 03:46:18', '2021-08-12 03:46:18'),
(178, 188, 1, 179, '2021-08-12 03:48:09', '2021-08-12 03:48:09'),
(179, 189, 1, 179, '2021-08-12 03:55:43', '2021-08-12 03:55:43'),
(180, 190, 1, 168, '2021-08-13 16:45:05', '2021-08-13 16:45:05'),
(181, 191, 1, 168, '2021-08-13 16:51:58', '2021-08-13 16:51:58'),
(183, 193, 1, 168, '2021-08-13 17:44:55', '2021-08-13 17:44:55'),
(184, 193, 1, 142, '2021-08-13 17:44:55', '2021-08-13 17:44:55'),
(185, 194, 1, 120, '2021-08-16 06:53:05', '2021-08-16 06:53:05'),
(186, 195, 1, 120, '2021-08-16 06:53:07', '2021-08-16 06:53:07'),
(187, 196, 1, 168, '2021-08-16 20:29:20', '2021-08-16 20:29:20'),
(188, 197, 1, 180, '2021-08-17 01:33:21', '2021-08-17 01:33:21'),
(189, 198, 1, 168, '2021-08-17 01:33:45', '2021-08-17 01:33:45'),
(190, 199, 1, 180, '2021-08-17 01:34:05', '2021-08-17 01:34:05'),
(191, 200, 1, 180, '2021-08-17 02:40:36', '2021-08-17 02:40:36'),
(192, 201, 1, 180, '2021-08-17 02:41:24', '2021-08-17 02:41:24'),
(193, 202, 1, 180, '2021-08-17 03:08:53', '2021-08-17 03:08:53'),
(194, 203, 1, 186, '2021-08-17 19:11:52', '2021-08-17 19:11:52'),
(195, 204, 1, 186, '2021-08-17 19:12:15', '2021-08-17 19:12:15'),
(196, 205, 1, 187, '2021-08-17 19:38:32', '2021-08-17 19:38:32'),
(197, 206, 1, 188, '2021-08-17 20:57:45', '2021-08-17 20:57:45'),
(198, 207, 1, 189, '2021-08-17 21:22:48', '2021-08-17 21:22:48'),
(199, 208, 1, 189, '2021-08-17 21:24:22', '2021-08-17 21:24:22'),
(200, 209, 1, 190, '2021-08-17 22:15:46', '2021-08-17 22:15:46'),
(201, 210, 1, 190, '2021-08-17 22:18:32', '2021-08-17 22:18:32'),
(202, 211, 1, 191, '2021-08-17 22:19:26', '2021-08-17 22:19:26'),
(203, 212, 1, 193, '2021-08-17 23:32:04', '2021-08-17 23:32:04'),
(204, 213, 1, 193, '2021-08-17 23:33:03', '2021-08-17 23:33:03'),
(205, 214, 1, 194, '2021-08-18 00:32:08', '2021-08-18 00:32:08'),
(206, 215, 1, 194, '2021-08-18 00:33:23', '2021-08-18 00:33:23'),
(207, 216, 1, 195, '2021-08-20 04:11:54', '2021-08-20 04:11:54'),
(208, 217, 1, 195, '2021-08-20 04:40:45', '2021-08-20 04:40:45'),
(209, 218, 1, 195, '2021-08-20 04:45:56', '2021-08-20 04:45:56'),
(210, 219, 1, 195, '2021-08-20 04:46:28', '2021-08-20 04:46:28'),
(211, 220, 1, 195, '2021-08-20 04:47:44', '2021-08-20 04:47:44'),
(212, 221, 1, 168, '2021-08-21 16:51:53', '2021-08-21 16:51:53'),
(213, 222, 1, 198, '2021-08-21 18:20:26', '2021-08-21 18:20:26'),
(214, 223, 1, 199, '2021-08-21 18:51:02', '2021-08-21 18:51:02'),
(215, 224, 1, 199, '2021-08-21 19:11:45', '2021-08-21 19:11:45'),
(216, 225, 1, 198, '2021-08-21 19:13:20', '2021-08-21 19:13:20'),
(217, 226, 1, 199, '2021-08-21 19:15:13', '2021-08-21 19:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL,
  `applied_coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `student_id`, `order_amount`, `applied_coupon_code`, `created_at`, `updated_at`, `paid_amount`) VALUES
(1, 6, 9.00, NULL, '2021-05-25 20:23:43', '2021-05-25 20:23:43', NULL),
(2, 7, 9.00, NULL, '2021-05-25 20:36:42', '2021-05-25 20:36:42', NULL),
(3, 8, 9.00, NULL, '2021-05-25 20:40:58', '2021-05-25 20:40:58', NULL),
(4, 9, 9.00, NULL, '2021-05-25 21:46:57', '2021-05-25 21:46:57', NULL),
(5, 9, 8.00, NULL, '2021-05-25 21:47:40', '2021-05-25 21:47:40', NULL),
(6, 9, 8.00, NULL, '2021-05-25 21:48:55', '2021-05-25 21:48:55', NULL),
(7, 9, 8.00, NULL, '2021-05-25 21:51:06', '2021-05-25 21:51:06', NULL),
(8, 9, 9.00, NULL, '2021-05-25 21:51:28', '2021-05-25 21:51:28', NULL),
(9, 9, 8.00, NULL, '2021-05-25 21:51:44', '2021-05-25 21:51:44', NULL),
(10, 9, 8.00, NULL, '2021-05-25 21:52:54', '2021-05-25 21:52:54', NULL),
(11, 9, 8.00, NULL, '2021-05-25 21:57:33', '2021-05-25 21:57:33', NULL),
(12, 9, 8.00, NULL, '2021-05-25 21:57:40', '2021-05-25 21:57:40', NULL),
(13, 9, 8.00, NULL, '2021-05-25 21:57:45', '2021-05-25 21:57:45', NULL),
(14, 10, 8.00, NULL, '2021-05-26 01:07:07', '2021-05-26 01:07:07', NULL),
(15, 7, 7.00, NULL, '2021-05-26 15:05:42', '2021-05-26 15:05:42', NULL),
(16, 7, 7.00, NULL, '2021-05-26 15:35:58', '2021-05-26 15:35:58', NULL),
(17, 7, 7.00, NULL, '2021-05-26 15:42:35', '2021-05-26 15:42:35', NULL),
(18, 7, 7.00, NULL, '2021-05-26 16:59:30', '2021-05-26 16:59:30', NULL),
(19, 7, 7.00, NULL, '2021-05-26 17:39:33', '2021-05-26 17:39:33', NULL),
(20, 6, 10.00, NULL, '2021-05-28 17:23:47', '2021-05-28 17:23:47', NULL),
(21, 6, 10.00, NULL, '2021-05-28 17:24:21', '2021-05-28 17:24:21', NULL),
(22, 7, 10.00, NULL, '2021-05-28 17:25:20', '2021-05-28 17:25:20', NULL),
(23, 7, 10.00, NULL, '2021-05-28 17:25:36', '2021-05-28 17:25:36', NULL),
(24, 12, 5.00, NULL, '2021-05-28 22:09:19', '2021-05-28 22:09:19', NULL),
(25, 12, 10.00, NULL, '2021-05-29 01:10:27', '2021-05-29 01:10:27', NULL),
(26, 14, 5.00, NULL, '2021-05-29 04:56:49', '2021-05-29 04:56:49', NULL),
(27, 15, 5.00, NULL, '2021-05-29 04:57:50', '2021-05-29 04:57:50', NULL),
(28, 2, 8.00, NULL, '2021-05-29 17:07:52', '2021-05-29 17:07:52', NULL),
(29, 14, 8.00, NULL, '2021-05-29 17:13:16', '2021-05-29 17:13:16', NULL),
(30, 2, 7.00, NULL, '2021-05-30 02:01:21', '2021-05-30 02:01:21', NULL),
(31, 7, 9.00, NULL, '2021-05-30 02:07:22', '2021-05-30 02:07:22', NULL),
(32, 2, 8.00, NULL, '2021-05-30 02:19:27', '2021-05-30 02:19:27', NULL),
(33, 7, 111.00, NULL, '2021-05-30 02:34:53', '2021-05-30 02:34:53', NULL),
(34, 16, 8.00, NULL, '2021-06-01 03:10:10', '2021-06-01 03:10:10', NULL),
(35, 14, 5.00, NULL, '2021-06-02 06:40:53', '2021-06-02 06:40:53', NULL),
(36, 12, 5.00, NULL, '2021-06-02 07:00:21', '2021-06-02 07:00:21', NULL),
(37, 4, 5.00, NULL, '2021-06-03 01:58:54', '2021-06-03 01:58:54', NULL),
(38, 19, 7.00, NULL, '2021-06-03 07:21:43', '2021-06-03 07:21:43', NULL),
(39, 9, 3.00, NULL, '2021-06-04 01:01:06', '2021-06-04 01:01:06', NULL),
(40, 9, 4.00, NULL, '2021-06-04 16:37:50', '2021-06-04 16:37:50', NULL),
(41, 7, 4.00, NULL, '2021-06-04 16:54:43', '2021-06-04 16:54:43', NULL),
(42, 7, 4.00, NULL, '2021-06-04 17:41:27', '2021-06-04 17:41:27', NULL),
(43, 9, 4.00, NULL, '2021-06-04 18:19:41', '2021-06-04 18:19:41', NULL),
(44, 7, 4.00, NULL, '2021-06-05 17:33:09', '2021-06-05 17:33:09', NULL),
(45, 9, 4.00, NULL, '2021-06-05 19:31:50', '2021-06-05 19:31:50', NULL),
(46, 9, 10.00, NULL, '2021-06-05 21:31:46', '2021-06-05 21:31:46', NULL),
(47, 2, 10.00, NULL, '2021-06-05 21:45:38', '2021-06-05 21:45:38', NULL),
(48, 2, 10.00, NULL, '2021-06-05 21:47:37', '2021-06-05 21:47:37', NULL),
(49, 9, 3.00, NULL, '2021-06-06 00:50:01', '2021-06-06 00:50:01', NULL),
(50, 2, 3.00, NULL, '2021-06-06 02:01:21', '2021-06-06 02:01:21', NULL),
(51, 24, 10.00, NULL, '2021-06-06 02:22:00', '2021-06-06 02:22:00', NULL),
(52, 25, 10.00, NULL, '2021-06-06 02:27:12', '2021-06-06 02:27:12', NULL),
(53, 2, 2.00, NULL, '2021-06-08 00:16:37', '2021-06-08 00:16:37', NULL),
(54, 9, 3.00, NULL, '2021-06-08 00:18:43', '2021-06-08 00:18:43', NULL),
(55, 9, 3.00, NULL, '2021-06-08 01:50:02', '2021-06-08 01:50:02', NULL),
(56, 9, 4.00, NULL, '2021-06-08 02:18:25', '2021-06-08 02:18:25', NULL),
(57, 9, 9.00, NULL, '2021-06-08 02:35:58', '2021-06-08 02:35:58', NULL),
(58, 9, 6.00, NULL, '2021-06-08 03:13:33', '2021-06-08 03:13:33', NULL),
(59, 9, 9.00, NULL, '2021-06-10 01:41:58', '2021-06-10 01:41:58', NULL),
(60, 28, 9.00, NULL, '2021-06-11 17:14:51', '2021-06-11 17:14:51', NULL),
(61, 29, 9.00, NULL, '2021-06-11 17:15:05', '2021-06-11 17:15:05', NULL),
(62, 4, 18.00, NULL, '2021-06-12 02:49:22', '2021-06-12 02:49:22', NULL),
(63, 31, 5.00, NULL, '2021-06-12 03:25:56', '2021-06-12 03:25:56', NULL),
(64, 32, 5.00, NULL, '2021-06-12 03:26:59', '2021-06-12 03:26:59', NULL),
(65, 9, 9.00, NULL, '2021-06-12 14:27:47', '2021-06-12 14:27:47', NULL),
(66, 7, 9.00, NULL, '2021-06-12 14:30:13', '2021-06-12 14:30:13', NULL),
(67, 31, 10.00, NULL, '2021-06-12 17:19:20', '2021-06-12 17:19:20', NULL),
(68, 32, 10.00, NULL, '2021-06-12 17:19:46', '2021-06-12 17:19:46', NULL),
(69, 4, 10.00, NULL, '2021-06-12 17:19:57', '2021-06-12 17:19:57', 71),
(70, 9, 4.00, NULL, '2021-06-12 22:41:43', '2021-06-12 22:41:43', NULL),
(71, 33, 10.00, NULL, '2021-06-12 23:41:51', '2021-06-12 23:41:51', NULL),
(72, 32, 10.00, NULL, '2021-06-12 23:42:29', '2021-06-12 23:42:29', NULL),
(73, 31, 10.00, NULL, '2021-06-12 23:48:15', '2021-06-12 23:48:15', NULL),
(74, 9, 10.00, NULL, '2021-06-17 01:17:04', '2021-06-17 01:17:04', NULL),
(75, 4, 10.00, NULL, '2021-06-17 01:18:18', '2021-06-17 01:18:18', NULL),
(76, 4, 9.00, NULL, '2021-06-20 11:38:45', '2021-06-20 11:38:45', NULL),
(77, 4, 3.00, NULL, '2021-06-30 06:56:32', '2021-06-30 06:56:32', 5),
(78, 4, 3.00, NULL, '2021-06-30 06:56:46', '2021-06-30 06:56:46', 5),
(79, 3, 5.00, NULL, '2021-06-30 09:09:58', '2021-06-30 09:09:58', 76),
(80, 8, 5.00, NULL, '2021-06-30 09:10:44', '2021-06-30 09:10:44', 5),
(81, 7, 5.00, NULL, '2021-06-30 09:11:31', '2021-06-30 09:11:31', 5),
(82, 4, 3.00, NULL, '2021-06-30 16:01:27', '2021-06-30 16:01:27', 6),
(83, 4, 3.00, NULL, '2021-06-30 16:02:35', '2021-06-30 16:02:35', 2),
(84, 4, 10.00, NULL, '2021-06-30 16:15:15', '2021-06-30 16:15:15', 15),
(86, 9, 20.00, NULL, '2021-06-30 16:27:16', '2021-06-30 16:27:16', 12),
(87, 4, 30.00, NULL, '2021-06-30 16:40:11', '2021-06-30 16:40:11', 20),
(88, 4, 5.00, NULL, '2021-06-30 16:57:10', '2021-06-30 16:57:10', 3),
(89, 4, 2.00, NULL, '2021-07-01 15:35:16', '2021-07-01 15:35:16', 1),
(90, 4, 2.00, NULL, '2021-07-01 16:26:25', '2021-07-01 16:26:25', 1),
(91, 3, 90.00, NULL, '2021-07-01 18:22:35', '2021-07-01 18:22:35', 10),
(92, 9, 20.00, NULL, '2021-07-01 19:00:23', '2021-07-01 19:00:23', 1),
(93, 4, 10.00, NULL, '2021-07-01 19:17:25', '2021-07-01 19:17:25', 8),
(94, 9, 28.00, NULL, '2021-07-01 19:44:19', '2021-07-01 19:44:19', 20),
(95, 4, 14.00, NULL, '2021-07-01 19:46:14', '2021-07-01 19:46:14', NULL),
(96, 9, 10.00, NULL, '2021-07-02 01:33:21', '2021-07-02 01:33:21', 8),
(97, 9, 5.00, NULL, '2021-07-03 01:22:54', '2021-07-03 01:22:54', NULL),
(98, 9, 0.00, NULL, '2021-07-03 01:24:40', '2021-07-03 01:24:40', NULL),
(99, 37, 5.00, NULL, '2021-07-03 02:12:45', '2021-07-03 02:12:45', 5),
(100, 37, 10.00, NULL, '2021-07-03 02:14:55', '2021-07-03 02:14:55', 8),
(101, 24, 14.00, NULL, '2021-07-03 03:10:07', '2021-07-03 03:10:07', 6),
(102, 38, 5.00, NULL, '2021-07-03 03:16:59', '2021-07-03 03:16:59', 5),
(103, 39, 5.00, NULL, '2021-07-03 03:26:18', '2021-07-03 03:26:18', 5),
(104, 39, 5.00, NULL, '2021-07-03 03:30:26', '2021-07-03 03:30:26', 3),
(105, 38, 5.00, NULL, '2021-07-03 03:49:13', '2021-07-03 03:49:13', 2),
(106, 38, 14.00, NULL, '2021-07-03 03:50:13', '2021-07-03 03:50:13', 10),
(107, 9, 10.00, NULL, '2021-07-11 01:15:48', '2021-07-11 01:15:48', 10),
(108, 9, 10.00, NULL, '2021-07-11 01:17:12', '2021-07-11 01:17:12', 10),
(109, 9, 10.00, NULL, '2021-07-11 01:18:40', '2021-07-11 01:18:40', 10),
(110, 9, 10.00, NULL, '2021-07-11 01:19:18', '2021-07-11 01:19:18', 10),
(111, 4, 90.00, NULL, '2021-07-14 22:16:26', '2021-07-14 22:16:26', 90),
(112, 2, 60.00, NULL, '2021-07-14 23:02:50', '2021-07-14 23:02:50', 60),
(113, 31, 90.00, NULL, '2021-07-14 23:41:31', '2021-07-14 23:41:31', 90),
(114, 4, 10.00, NULL, '2021-07-15 00:12:40', '2021-07-15 00:12:40', 10),
(115, 14, 30.00, NULL, '2021-07-15 00:16:10', '2021-07-15 00:16:10', 10),
(116, 24, 30.00, NULL, '2021-07-15 00:16:58', '2021-07-15 00:16:58', 20),
(117, 10, 20.00, NULL, '2021-07-15 00:55:17', '2021-07-15 00:55:17', 10),
(118, 4, 60.00, NULL, '2021-07-15 01:31:22', '2021-07-15 01:31:22', 60),
(119, 9, 3.00, NULL, '2021-07-15 04:00:59', '2021-07-15 04:00:59', 3),
(120, 9, 20.00, NULL, '2021-07-18 16:38:11', '2021-07-18 16:38:11', 20),
(121, 7, 15.00, NULL, '2021-07-20 11:50:19', '2021-07-20 11:50:19', 15),
(122, 9, 10.00, NULL, '2021-07-20 11:52:23', '2021-07-20 11:52:23', 10),
(123, 45, 20.00, NULL, '2021-07-20 11:54:42', '2021-07-20 11:54:42', 20),
(124, 31, 3.00, NULL, '2021-07-20 12:54:00', '2021-07-20 12:54:00', 3),
(125, 9, 3.00, NULL, '2021-07-20 13:16:38', '2021-07-20 13:16:38', 3),
(126, 9, 15.00, NULL, '2021-07-20 13:21:58', '2021-07-20 13:21:58', 15),
(127, 9, 20.00, NULL, '2021-07-20 13:53:11', '2021-07-20 13:53:11', 20),
(128, 9, 20.00, NULL, '2021-07-20 14:12:46', '2021-07-20 14:12:46', 20),
(129, 31, 5.00, NULL, '2021-07-24 16:13:18', '2021-07-24 16:13:18', 5),
(130, 4, 5.00, NULL, '2021-07-27 00:21:50', '2021-07-27 00:21:50', 5),
(131, 40, 5.00, NULL, '2021-07-27 00:36:42', '2021-07-27 00:36:42', 5),
(132, 4, 5.00, NULL, '2021-07-27 00:38:34', '2021-07-27 00:38:34', 5),
(133, 9, 5.00, NULL, '2021-07-27 00:39:23', '2021-07-28 18:02:42', 5),
(134, 9, 5.00, NULL, '2021-07-27 00:40:28', '2021-07-28 18:02:50', 5),
(135, 9, 10.00, NULL, '2021-07-27 18:40:15', '2021-07-27 18:40:15', 10),
(136, 40, 10.00, NULL, '2021-07-27 18:42:22', '2021-07-27 18:42:22', 10),
(137, 31, 2.00, NULL, '2021-07-27 18:46:43', '2021-07-27 18:46:43', 2),
(138, 40, 2.00, NULL, '2021-07-27 18:48:57', '2021-07-27 18:48:57', 2),
(139, 31, 10.00, NULL, '2021-07-27 19:05:36', '2021-07-27 19:05:36', 10),
(140, 40, 10.00, NULL, '2021-07-27 19:07:20', '2021-07-27 19:07:20', 10),
(141, 40, 10.00, NULL, '2021-07-27 19:09:17', '2021-07-27 19:09:17', 10),
(142, 31, 10.00, NULL, '2021-07-27 19:11:16', '2021-07-27 19:11:16', 10),
(143, 4, 7.00, NULL, '2021-07-30 02:26:51', '2021-07-30 02:26:51', 7),
(144, 4, 15.00, NULL, '2021-07-30 13:31:29', '2021-07-30 13:31:29', 15),
(145, 4, 15.00, NULL, '2021-07-30 13:42:35', '2021-07-30 13:42:35', 15),
(146, 9, 10.00, NULL, '2021-08-04 12:21:54', '2021-08-04 12:21:54', 10),
(147, 4, 21.00, NULL, '2021-08-04 15:23:34', '2021-08-04 15:23:34', 21),
(148, 4, 5.00, NULL, '2021-08-05 18:10:14', '2021-08-05 18:10:14', 5),
(149, 4, 4.00, NULL, '2021-08-05 18:44:24', '2021-08-05 18:44:24', 4),
(150, 27, 80.00, NULL, '2021-08-05 19:02:24', '2021-08-05 22:45:32', 65),
(151, 39, 20.00, NULL, '2021-08-05 20:13:11', '2021-08-05 20:13:11', NULL),
(152, 6, 80.00, NULL, '2021-08-05 20:16:36', '2021-08-05 20:16:36', NULL),
(153, 41, 20.00, NULL, '2021-08-05 20:17:34', '2021-08-05 20:17:34', NULL),
(154, 17, 20.00, NULL, '2021-08-05 20:18:04', '2021-08-05 20:18:04', NULL),
(155, 24, 40.00, NULL, '2021-08-05 20:19:27', '2021-08-05 20:19:27', NULL),
(156, 8, 60.00, NULL, '2021-08-05 20:26:59', '2021-08-05 20:26:59', NULL),
(157, 19, 20.00, NULL, '2021-08-05 20:44:37', '2021-08-05 20:44:37', NULL),
(158, 4, 20.00, NULL, '2021-08-05 20:53:11', '2021-08-05 20:53:11', NULL),
(159, 45, 20.00, NULL, '2021-08-05 22:47:23', '2021-08-05 22:47:23', NULL),
(160, 1, 2.00, NULL, '2021-08-07 08:15:49', '2021-08-07 08:15:49', 2),
(161, 27, 2.00, NULL, '2021-08-07 08:17:01', '2021-08-07 08:17:01', 2),
(162, 15, 2.00, NULL, '2021-08-07 08:20:50', '2021-08-07 08:20:50', 1),
(163, 40, 4.00, NULL, '2021-08-07 08:39:23', '2021-08-07 08:39:23', 4),
(164, 40, 5.00, NULL, '2021-08-07 09:21:33', '2021-08-07 09:21:33', 5),
(165, 6, 5.00, NULL, '2021-08-07 16:59:39', '2021-08-07 16:59:39', 5),
(166, 17, 5.00, NULL, '2021-08-07 17:00:44', '2021-08-07 17:00:44', 3),
(167, 41, 5.00, NULL, '2021-08-07 23:19:02', '2021-08-07 23:19:02', NULL),
(168, 40, 5.00, NULL, '2021-08-07 23:21:58', '2021-08-07 23:21:58', NULL),
(169, 31, 2.00, NULL, '2021-08-08 01:01:14', '2021-08-08 01:01:14', 2),
(170, 24, 5.00, NULL, '2021-08-08 03:05:30', '2021-08-08 03:05:30', NULL),
(171, 9, 5.00, NULL, '2021-08-09 02:41:29', '2021-08-09 02:41:29', 5),
(172, 9, 5.00, NULL, '2021-08-09 02:51:33', '2021-08-09 02:51:33', 5),
(173, 9, 3.00, NULL, '2021-08-09 02:52:59', '2021-08-09 02:52:59', 3),
(174, 9, 5.00, NULL, '2021-08-09 02:58:14', '2021-08-09 02:58:14', 5),
(175, 9, 5.00, NULL, '2021-08-09 03:35:45', '2021-08-09 03:35:45', 5),
(176, 4, 1.11, NULL, '2021-08-10 00:53:14', '2021-08-10 00:53:14', 1),
(177, 4, 1.11, NULL, '2021-08-10 00:53:38', '2021-08-10 00:53:38', 1),
(178, 4, 1.11, NULL, '2021-08-10 00:54:23', '2021-08-10 00:54:23', 1),
(179, 4, 1.11, NULL, '2021-08-10 00:55:02', '2021-08-10 00:55:02', 1),
(180, 4, 1.11, NULL, '2021-08-10 01:53:38', '2021-08-10 01:53:38', 1),
(181, 1, 25.00, NULL, '2021-08-10 02:36:36', '2021-08-10 02:36:36', 25),
(182, 1, 25.00, NULL, '2021-08-10 02:44:14', '2021-08-10 02:44:14', 25),
(183, 9, 9.00, NULL, '2021-08-10 06:36:12', '2021-08-10 06:36:12', 9),
(184, 9, 9.00, NULL, '2021-08-10 06:37:08', '2021-08-10 06:37:08', 9),
(185, 9, 9.00, NULL, '2021-08-10 06:42:35', '2021-08-10 06:42:35', 9),
(186, 9, 9.00, NULL, '2021-08-10 06:45:47', '2021-08-10 06:45:47', 9),
(187, 4, 20.00, NULL, '2021-08-12 03:46:18', '2021-08-12 03:46:18', 20),
(188, 4, 20.00, NULL, '2021-08-12 03:48:09', '2021-08-12 03:48:09', 20),
(189, 4, 20.00, NULL, '2021-08-12 03:55:43', '2021-08-12 03:55:43', 20),
(190, 9, 25.00, NULL, '2021-08-13 16:45:05', '2021-08-13 16:45:05', 25),
(191, 9, 25.00, NULL, '2021-08-13 16:51:58', '2021-08-13 16:51:58', 25),
(193, 9, 35.00, NULL, '2021-08-13 17:44:55', '2021-08-13 17:44:55', 35),
(194, 9, 1.00, NULL, '2021-08-16 06:53:05', '2021-08-16 06:53:05', 1),
(195, 9, 1.00, NULL, '2021-08-16 06:53:07', '2021-08-16 06:53:07', 1),
(196, 4, 25.00, NULL, '2021-08-16 20:29:20', '2021-08-16 20:29:20', 25),
(197, 4, 18.00, NULL, '2021-08-17 01:33:21', '2021-08-17 01:33:21', 18),
(198, 9, 25.00, NULL, '2021-08-17 01:33:45', '2021-08-17 01:33:45', 25),
(199, 40, 18.00, NULL, '2021-08-17 01:34:05', '2021-08-17 01:34:05', 18),
(200, 9, 18.00, NULL, '2021-08-17 02:40:36', '2021-08-17 02:40:36', 18),
(201, 9, 18.00, NULL, '2021-08-17 02:41:24', '2021-08-17 02:41:24', 18),
(202, 28, 18.00, NULL, '2021-08-17 03:08:53', '2021-08-17 03:08:53', 18),
(203, 9, 6.00, NULL, '2021-08-17 19:11:52', '2021-08-17 19:11:52', 6),
(204, 40, 6.00, NULL, '2021-08-17 19:12:15', '2021-08-17 19:12:15', 6),
(205, 9, 8.00, NULL, '2021-08-17 19:38:32', '2021-08-17 19:38:32', 8),
(206, 40, 2.00, NULL, '2021-08-17 20:57:45', '2021-08-17 20:57:45', 2),
(207, 40, 7.00, NULL, '2021-08-17 21:22:48', '2021-08-17 21:22:48', 7),
(208, 31, 7.00, NULL, '2021-08-17 21:24:22', '2021-08-17 21:24:22', 7),
(209, 40, 10.00, NULL, '2021-08-17 22:15:46', '2021-08-17 22:15:46', 10),
(210, 1, 10.00, NULL, '2021-08-17 22:18:32', '2021-08-17 22:18:32', 10),
(211, 40, 3.00, NULL, '2021-08-17 22:19:26', '2021-08-17 22:19:26', 3),
(212, 40, 4.00, NULL, '2021-08-17 23:32:04', '2021-08-17 23:32:04', 4),
(213, 31, 4.00, NULL, '2021-08-17 23:33:03', '2021-08-17 23:33:03', 4),
(214, 40, 6.00, NULL, '2021-08-18 00:32:08', '2021-08-18 00:32:08', 6),
(215, 31, 6.00, NULL, '2021-08-18 00:33:23', '2021-08-18 00:33:23', 6),
(216, 4, 3.00, NULL, '2021-08-20 04:11:54', '2021-08-20 04:11:54', 3),
(217, 40, 3.00, NULL, '2021-08-20 04:40:45', '2021-08-20 04:40:45', 3),
(218, 9, 6.00, NULL, '2021-08-20 04:45:56', '2021-08-20 04:45:56', 6),
(219, 21, 3.00, NULL, '2021-08-20 04:46:28', '2021-08-20 04:46:28', 3),
(220, 19, 3.00, NULL, '2021-08-20 04:47:44', '2021-08-20 04:47:44', 3),
(221, 3, 25.00, NULL, '2021-08-21 16:51:53', '2021-08-21 16:51:53', 25),
(222, 4, 8.00, NULL, '2021-08-21 18:20:26', '2021-08-21 18:20:26', 8),
(223, 4, 15.00, NULL, '2021-08-21 18:51:02', '2021-08-21 18:51:02', 15),
(224, 40, 15.00, NULL, '2021-08-21 19:11:45', '2021-08-21 19:11:45', 15),
(225, 9, 8.00, NULL, '2021-08-21 19:13:20', '2021-08-21 19:13:20', 8),
(226, 9, 15.00, NULL, '2021-08-21 19:15:13', '2021-08-21 19:15:13', 15);

-- --------------------------------------------------------

--
-- Table structure for table `order_sessions`
--

CREATE TABLE `order_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_item_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_session_maps`
--

CREATE TABLE `order_session_maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_session_maps`
--

INSERT INTO `order_session_maps` (`id`, `order_id`, `batch_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 13, 5, 14, '2021-05-25 21:57:45', '2021-05-25 21:57:45'),
(2, 13, 5, 15, '2021-05-25 21:57:45', '2021-05-25 21:57:45'),
(3, 14, 5, 14, '2021-05-26 01:07:07', '2021-05-26 01:07:07'),
(4, 14, 5, 15, '2021-05-26 01:07:07', '2021-05-26 01:07:07'),
(5, 15, 7, 18, '2021-05-26 15:05:42', '2021-05-26 15:05:42'),
(6, 15, 7, 19, '2021-05-26 15:05:42', '2021-05-26 15:05:42'),
(7, 16, 7, 19, '2021-05-26 15:35:58', '2021-05-26 15:35:58'),
(8, 17, 8, 20, '2021-05-26 15:42:35', '2021-05-26 15:42:35'),
(9, 18, 9, 21, '2021-05-26 16:59:30', '2021-05-26 16:59:30'),
(10, 19, 10, 22, '2021-05-26 17:39:33', '2021-05-26 17:39:33'),
(11, 19, 10, 23, '2021-05-26 17:39:33', '2021-05-26 17:39:33'),
(12, 20, 11, 25, '2021-05-28 17:23:47', '2021-05-28 17:23:47'),
(13, 20, 11, 26, '2021-05-28 17:23:47', '2021-05-28 17:23:47'),
(14, 21, 12, 27, '2021-05-28 17:24:21', '2021-05-28 17:24:21'),
(15, 21, 12, 28, '2021-05-28 17:24:21', '2021-05-28 17:24:21'),
(16, 22, 11, 25, '2021-05-28 17:25:20', '2021-05-28 17:25:20'),
(17, 22, 11, 26, '2021-05-28 17:25:20', '2021-05-28 17:25:20'),
(18, 23, 12, 27, '2021-05-28 17:25:36', '2021-05-28 17:25:36'),
(19, 23, 12, 28, '2021-05-28 17:25:36', '2021-05-28 17:25:36'),
(20, 24, 13, 29, '2021-05-28 22:09:19', '2021-05-28 22:09:19'),
(21, 25, 12, 27, '2021-05-29 01:10:27', '2021-05-29 01:10:27'),
(22, 25, 12, 28, '2021-05-29 01:10:27', '2021-05-29 01:10:27'),
(23, 26, 14, 32, '2021-05-29 04:56:49', '2021-05-29 04:56:49'),
(24, 26, 14, 33, '2021-05-29 04:56:49', '2021-05-29 04:56:49'),
(25, 26, 14, 34, '2021-05-29 04:56:49', '2021-05-29 04:56:49'),
(26, 27, 14, 32, '2021-05-29 04:57:50', '2021-05-29 04:57:50'),
(27, 27, 14, 33, '2021-05-29 04:57:50', '2021-05-29 04:57:50'),
(28, 27, 14, 34, '2021-05-29 04:57:50', '2021-05-29 04:57:50'),
(29, 28, 15, 35, '2021-05-29 17:07:52', '2021-05-29 17:07:52'),
(30, 28, 15, 36, '2021-05-29 17:07:52', '2021-05-29 17:07:52'),
(31, 29, 15, 35, '2021-05-29 17:13:16', '2021-05-29 17:13:16'),
(32, 29, 15, 36, '2021-05-29 17:13:16', '2021-05-29 17:13:16'),
(33, 30, 8, 20, '2021-05-30 02:01:21', '2021-05-30 02:01:21'),
(34, 31, 16, 37, '2021-05-30 02:07:22', '2021-05-30 02:07:22'),
(35, 32, 17, 39, '2021-05-30 02:19:27', '2021-05-30 02:19:27'),
(36, 33, 18, 41, '2021-05-30 02:34:53', '2021-05-30 02:34:53'),
(37, 34, 17, 40, '2021-06-01 03:10:10', '2021-06-01 03:10:10'),
(38, 35, 20, 43, '2021-06-02 06:40:53', '2021-06-02 06:40:53'),
(39, 35, 20, 44, '2021-06-02 06:40:53', '2021-06-02 06:40:53'),
(40, 36, 20, 43, '2021-06-02 07:00:21', '2021-06-02 07:00:21'),
(41, 37, 20, 44, '2021-06-03 01:58:54', '2021-06-03 01:58:54'),
(42, 38, 8, 20, '2021-06-03 07:21:43', '2021-06-03 07:21:43'),
(43, 39, 21, 45, '2021-06-04 01:01:06', '2021-06-04 01:01:06'),
(44, 39, 21, 46, '2021-06-04 01:01:06', '2021-06-04 01:01:06'),
(45, 40, 22, 47, '2021-06-04 16:37:50', '2021-06-04 16:37:50'),
(46, 40, 22, 48, '2021-06-04 16:37:50', '2021-06-04 16:37:50'),
(47, 41, 22, 47, '2021-06-04 16:54:43', '2021-06-04 16:54:43'),
(48, 41, 22, 48, '2021-06-04 16:54:43', '2021-06-04 16:54:43'),
(49, 42, 22, 47, '2021-06-04 17:41:27', '2021-06-04 17:41:27'),
(50, 42, 22, 48, '2021-06-04 17:41:27', '2021-06-04 17:41:27'),
(51, 43, 22, 47, '2021-06-04 18:19:41', '2021-06-04 18:19:41'),
(52, 43, 22, 48, '2021-06-04 18:19:41', '2021-06-04 18:19:41'),
(53, 44, 23, 49, '2021-06-05 17:33:09', '2021-06-05 17:33:09'),
(54, 45, 23, 49, '2021-06-05 19:31:50', '2021-06-05 19:31:50'),
(55, 46, 24, 50, '2021-06-05 21:31:46', '2021-06-05 21:31:46'),
(56, 46, 24, 51, '2021-06-05 21:31:46', '2021-06-05 21:31:46'),
(57, 46, 24, 52, '2021-06-05 21:31:46', '2021-06-05 21:31:46'),
(58, 47, 24, 50, '2021-06-05 21:45:38', '2021-06-05 21:45:38'),
(59, 47, 24, 51, '2021-06-05 21:45:38', '2021-06-05 21:45:38'),
(60, 47, 24, 52, '2021-06-05 21:45:38', '2021-06-05 21:45:38'),
(61, 48, 24, 50, '2021-06-05 21:47:37', '2021-06-05 21:47:37'),
(62, 48, 24, 51, '2021-06-05 21:47:37', '2021-06-05 21:47:37'),
(63, 48, 24, 52, '2021-06-05 21:47:37', '2021-06-05 21:47:37'),
(64, 49, 25, 54, '2021-06-06 00:50:01', '2021-06-06 00:50:01'),
(65, 50, 25, 54, '2021-06-06 02:01:21', '2021-06-06 02:01:21'),
(66, 51, 26, 56, '2021-06-06 02:22:00', '2021-06-06 02:22:00'),
(67, 51, 26, 57, '2021-06-06 02:22:00', '2021-06-06 02:22:00'),
(68, 51, 26, 58, '2021-06-06 02:22:00', '2021-06-06 02:22:00'),
(69, 52, 26, 56, '2021-06-06 02:27:12', '2021-06-06 02:27:12'),
(70, 52, 26, 57, '2021-06-06 02:27:12', '2021-06-06 02:27:12'),
(71, 52, 26, 58, '2021-06-06 02:27:12', '2021-06-06 02:27:12'),
(72, 53, 27, 59, '2021-06-08 00:16:37', '2021-06-08 00:16:37'),
(73, 54, 21, 46, '2021-06-08 00:18:43', '2021-06-08 00:18:43'),
(74, 55, 28, 61, '2021-06-08 01:50:02', '2021-06-08 01:50:02'),
(75, 55, 28, 62, '2021-06-08 01:50:02', '2021-06-08 01:50:02'),
(76, 56, 29, 63, '2021-06-08 02:18:25', '2021-06-08 02:18:25'),
(77, 57, 30, 64, '2021-06-08 02:35:58', '2021-06-08 02:35:58'),
(78, 58, 31, 65, '2021-06-08 03:13:33', '2021-06-08 03:13:33'),
(79, 59, 32, 66, '2021-06-10 01:41:58', '2021-06-10 01:41:58'),
(80, 59, 32, 67, '2021-06-10 01:41:58', '2021-06-10 01:41:58'),
(81, 60, 33, 68, '2021-06-11 17:14:51', '2021-06-11 17:14:51'),
(82, 60, 33, 69, '2021-06-11 17:14:51', '2021-06-11 17:14:51'),
(83, 61, 33, 68, '2021-06-11 17:15:05', '2021-06-11 17:15:05'),
(84, 61, 33, 69, '2021-06-11 17:15:05', '2021-06-11 17:15:05'),
(85, 62, 34, 70, '2021-06-12 02:49:22', '2021-06-12 02:49:22'),
(86, 62, 34, 71, '2021-06-12 02:49:22', '2021-06-12 02:49:22'),
(87, 62, 34, 72, '2021-06-12 02:49:22', '2021-06-12 02:49:22'),
(88, 63, 35, 74, '2021-06-12 03:25:56', '2021-06-12 03:25:56'),
(89, 63, 35, 75, '2021-06-12 03:25:56', '2021-06-12 03:25:56'),
(90, 64, 35, 74, '2021-06-12 03:26:59', '2021-06-12 03:26:59'),
(91, 64, 35, 75, '2021-06-12 03:26:59', '2021-06-12 03:26:59'),
(92, 65, 36, 76, '2021-06-12 14:27:48', '2021-06-12 14:27:48'),
(93, 66, 36, 76, '2021-06-12 14:30:13', '2021-06-12 14:30:13'),
(94, 66, 36, 77, '2021-06-12 14:30:13', '2021-06-12 14:30:13'),
(95, 67, 37, 78, '2021-06-12 17:19:20', '2021-06-12 17:19:20'),
(96, 67, 37, 79, '2021-06-12 17:19:20', '2021-06-12 17:19:20'),
(97, 67, 37, 80, '2021-06-12 17:19:20', '2021-06-12 17:19:20'),
(98, 67, 37, 81, '2021-06-12 17:19:20', '2021-06-12 17:19:20'),
(99, 68, 37, 78, '2021-06-12 17:19:46', '2021-06-12 17:19:46'),
(100, 68, 37, 79, '2021-06-12 17:19:46', '2021-06-12 17:19:46'),
(101, 68, 37, 80, '2021-06-12 17:19:46', '2021-06-12 17:19:46'),
(102, 68, 37, 81, '2021-06-12 17:19:46', '2021-06-12 17:19:46'),
(103, 69, 37, 78, '2021-06-12 17:19:57', '2021-06-12 17:19:57'),
(104, 69, 37, 79, '2021-06-12 17:19:57', '2021-06-12 17:19:57'),
(105, 69, 37, 80, '2021-06-12 17:19:57', '2021-06-12 17:19:57'),
(106, 70, 38, 82, '2021-06-12 22:41:43', '2021-06-12 22:41:43'),
(107, 70, 38, 83, '2021-06-12 22:41:43', '2021-06-12 22:41:43'),
(108, 71, 39, 84, '2021-06-12 23:41:51', '2021-06-12 23:41:51'),
(109, 71, 39, 85, '2021-06-12 23:41:51', '2021-06-12 23:41:51'),
(110, 71, 39, 86, '2021-06-12 23:41:51', '2021-06-12 23:41:51'),
(111, 72, 39, 84, '2021-06-12 23:42:29', '2021-06-12 23:42:29'),
(112, 72, 39, 85, '2021-06-12 23:42:29', '2021-06-12 23:42:29'),
(113, 72, 39, 86, '2021-06-12 23:42:29', '2021-06-12 23:42:29'),
(114, 73, 39, 84, '2021-06-12 23:48:15', '2021-06-12 23:48:15'),
(115, 73, 39, 85, '2021-06-12 23:48:15', '2021-06-12 23:48:15'),
(116, 73, 39, 86, '2021-06-12 23:48:15', '2021-06-12 23:48:15'),
(117, 74, 40, 87, '2021-06-17 01:17:04', '2021-06-17 01:17:04'),
(118, 74, 40, 88, '2021-06-17 01:17:04', '2021-06-17 01:17:04'),
(119, 74, 40, 89, '2021-06-17 01:17:04', '2021-06-17 01:17:04'),
(120, 75, 40, 87, '2021-06-17 01:18:18', '2021-06-17 01:18:18'),
(121, 75, 40, 88, '2021-06-17 01:18:18', '2021-06-17 01:18:18'),
(122, 75, 40, 89, '2021-06-17 01:18:18', '2021-06-17 01:18:18'),
(123, 76, 33, 69, '2021-06-20 11:38:45', '2021-06-20 11:38:45'),
(124, 77, 44, 102, '2021-06-30 06:56:32', '2021-06-30 06:56:32'),
(125, 77, 44, 103, '2021-06-30 06:56:32', '2021-06-30 06:56:32'),
(126, 78, 44, 102, '2021-06-30 06:56:46', '2021-06-30 06:56:46'),
(127, 78, 44, 103, '2021-06-30 06:56:46', '2021-06-30 06:56:46'),
(128, 79, 45, 104, '2021-06-30 09:09:58', '2021-06-30 09:09:58'),
(129, 80, 45, 104, '2021-06-30 09:10:44', '2021-06-30 09:10:44'),
(130, 81, 45, 104, '2021-06-30 09:11:31', '2021-06-30 09:11:31'),
(131, 82, 44, 103, '2021-06-30 16:01:27', '2021-06-30 16:01:27'),
(132, 83, 44, 103, '2021-06-30 16:02:35', '2021-06-30 16:02:35'),
(133, 84, 48, 109, '2021-06-30 16:15:15', '2021-06-30 16:15:15'),
(134, 84, 48, 110, '2021-06-30 16:15:15', '2021-06-30 16:15:15'),
(135, 84, 48, 111, '2021-06-30 16:15:15', '2021-06-30 16:15:15'),
(136, 85, 48, 109, '2021-06-30 16:22:45', '2021-06-30 16:22:45'),
(137, 85, 48, 110, '2021-06-30 16:22:45', '2021-06-30 16:22:45'),
(138, 85, 48, 111, '2021-06-30 16:22:45', '2021-06-30 16:22:45'),
(139, 86, 48, 109, '2021-06-30 16:27:16', '2021-06-30 16:27:16'),
(140, 86, 48, 110, '2021-06-30 16:27:16', '2021-06-30 16:27:16'),
(141, 87, 48, 109, '2021-06-30 16:40:11', '2021-06-30 16:40:11'),
(142, 87, 48, 110, '2021-06-30 16:40:11', '2021-06-30 16:40:11'),
(143, 87, 48, 111, '2021-06-30 16:40:11', '2021-06-30 16:40:11'),
(144, 88, 45, 104, '2021-06-30 16:57:10', '2021-06-30 16:57:10'),
(145, 89, 46, 105, '2021-07-01 15:35:16', '2021-07-01 15:35:16'),
(146, 90, 46, 105, '2021-07-01 16:26:25', '2021-07-01 16:26:25'),
(147, 91, 49, 114, '2021-07-01 18:22:35', '2021-07-01 18:22:35'),
(148, 92, 51, 117, '2021-07-01 19:00:23', '2021-07-01 19:00:23'),
(149, 92, 51, 118, '2021-07-01 19:00:23', '2021-07-01 19:00:23'),
(150, 93, 51, 117, '2021-07-01 19:17:25', '2021-07-01 19:17:25'),
(151, 94, 52, 119, '2021-07-01 19:44:19', '2021-07-01 19:44:19'),
(152, 94, 52, 120, '2021-07-01 19:44:19', '2021-07-01 19:44:19'),
(153, 95, 52, 120, '2021-07-01 19:46:14', '2021-07-01 19:46:14'),
(154, 95, 52, 121, '2021-07-01 19:46:14', '2021-07-01 19:46:14'),
(155, 96, 53, 122, '2021-07-02 01:33:21', '2021-07-02 01:33:21'),
(156, 97, 54, 123, '2021-07-03 01:22:54', '2021-07-03 01:22:54'),
(157, 97, 54, 124, '2021-07-03 01:22:54', '2021-07-03 01:22:54'),
(158, 99, 54, 123, '2021-07-03 02:12:45', '2021-07-03 02:12:45'),
(159, 99, 54, 124, '2021-07-03 02:12:45', '2021-07-03 02:12:45'),
(160, 99, 54, 125, '2021-07-03 02:12:45', '2021-07-03 02:12:45'),
(161, 100, 54, 124, '2021-07-03 02:14:55', '2021-07-03 02:14:55'),
(162, 100, 54, 125, '2021-07-03 02:14:55', '2021-07-03 02:14:55'),
(163, 101, 52, 121, '2021-07-03 03:10:07', '2021-07-03 03:10:07'),
(164, 102, 55, 126, '2021-07-03 03:16:59', '2021-07-03 03:16:59'),
(165, 103, 55, 126, '2021-07-03 03:26:18', '2021-07-03 03:26:18'),
(166, 104, 54, 124, '2021-07-03 03:30:26', '2021-07-03 03:30:26'),
(167, 105, 54, 124, '2021-07-03 03:49:13', '2021-07-03 03:49:13'),
(168, 106, 52, 121, '2021-07-03 03:50:13', '2021-07-03 03:50:13'),
(169, 107, 59, 135, '2021-07-11 01:15:48', '2021-07-11 01:15:48'),
(170, 107, 59, 136, '2021-07-11 01:15:48', '2021-07-11 01:15:48'),
(171, 108, 59, 135, '2021-07-11 01:17:12', '2021-07-11 01:17:12'),
(172, 108, 59, 136, '2021-07-11 01:17:12', '2021-07-11 01:17:12'),
(173, 109, 59, 135, '2021-07-11 01:18:40', '2021-07-11 01:18:40'),
(174, 109, 59, 136, '2021-07-11 01:18:40', '2021-07-11 01:18:40'),
(175, 110, 59, 135, '2021-07-11 01:19:18', '2021-07-11 01:19:18'),
(176, 110, 59, 136, '2021-07-11 01:19:18', '2021-07-11 01:19:18'),
(177, 111, 57, 130, '2021-07-14 22:16:26', '2021-07-14 22:16:26'),
(178, 111, 57, 131, '2021-07-14 22:16:26', '2021-07-14 22:16:26'),
(179, 112, 42, 95, '2021-07-14 23:02:50', '2021-07-14 23:02:50'),
(180, 112, 42, 96, '2021-07-14 23:02:50', '2021-07-14 23:02:50'),
(181, 113, 57, 130, '2021-07-14 23:41:31', '2021-07-14 23:41:31'),
(182, 114, 63, 144, '2021-07-15 00:12:40', '2021-07-15 00:12:40'),
(183, 114, 63, 145, '2021-07-15 00:12:40', '2021-07-15 00:12:40'),
(184, 114, 63, 146, '2021-07-15 00:12:40', '2021-07-15 00:12:40'),
(185, 114, 63, 147, '2021-07-15 00:12:40', '2021-07-15 00:12:40'),
(186, 115, 63, 145, '2021-07-15 00:16:10', '2021-07-15 00:16:10'),
(187, 115, 63, 146, '2021-07-15 00:16:10', '2021-07-15 00:16:10'),
(188, 115, 63, 147, '2021-07-15 00:16:10', '2021-07-15 00:16:10'),
(189, 116, 63, 145, '2021-07-15 00:16:58', '2021-07-15 00:16:58'),
(190, 116, 63, 146, '2021-07-15 00:16:58', '2021-07-15 00:16:58'),
(191, 116, 63, 147, '2021-07-15 00:16:58', '2021-07-15 00:16:58'),
(192, 117, 63, 145, '2021-07-15 00:55:17', '2021-07-15 00:55:17'),
(193, 117, 63, 146, '2021-07-15 00:55:17', '2021-07-15 00:55:17'),
(194, 118, 42, 95, '2021-07-15 01:31:22', '2021-07-15 01:31:22'),
(195, 118, 42, 96, '2021-07-15 01:31:22', '2021-07-15 01:31:22'),
(196, 118, 42, 97, '2021-07-15 01:31:22', '2021-07-15 01:31:22'),
(197, 119, 64, 148, '2021-07-15 04:00:59', '2021-07-15 04:00:59'),
(198, 119, 64, 149, '2021-07-15 04:00:59', '2021-07-15 04:00:59'),
(199, 120, 65, 150, '2021-07-18 16:38:11', '2021-07-18 16:38:11'),
(200, 120, 65, 151, '2021-07-18 16:38:11', '2021-07-18 16:38:11'),
(201, 121, 68, 156, '2021-07-20 11:50:19', '2021-07-20 11:50:19'),
(202, 121, 68, 157, '2021-07-20 11:50:19', '2021-07-20 11:50:19'),
(203, 122, 67, 154, '2021-07-20 11:52:23', '2021-07-20 11:52:23'),
(204, 122, 67, 155, '2021-07-20 11:52:23', '2021-07-20 11:52:23'),
(205, 123, 66, 152, '2021-07-20 11:54:42', '2021-07-20 11:54:42'),
(206, 123, 66, 153, '2021-07-20 11:54:42', '2021-07-20 11:54:42'),
(207, 124, 69, 158, '2021-07-20 12:54:00', '2021-07-20 12:54:00'),
(208, 124, 69, 159, '2021-07-20 12:54:00', '2021-07-20 12:54:00'),
(209, 124, 69, 160, '2021-07-20 12:54:00', '2021-07-20 12:54:00'),
(210, 125, 69, 158, '2021-07-20 13:16:38', '2021-07-20 13:16:38'),
(211, 125, 69, 159, '2021-07-20 13:16:38', '2021-07-20 13:16:38'),
(212, 125, 69, 160, '2021-07-20 13:16:38', '2021-07-20 13:16:38'),
(213, 126, 68, 156, '2021-07-20 13:21:58', '2021-07-20 13:21:58'),
(214, 126, 68, 157, '2021-07-20 13:21:58', '2021-07-20 13:21:58'),
(215, 127, 65, 151, '2021-07-20 13:53:11', '2021-07-20 13:53:11'),
(216, 128, 66, 152, '2021-07-20 14:12:46', '2021-07-20 14:12:46'),
(217, 128, 66, 153, '2021-07-20 14:12:46', '2021-07-20 14:12:46'),
(218, 129, 79, 176, '2021-07-24 16:13:18', '2021-07-24 16:13:18'),
(219, 129, 79, 177, '2021-07-24 16:13:18', '2021-07-24 16:13:18'),
(220, 130, 85, 185, '2021-07-27 00:21:50', '2021-07-27 00:21:50'),
(221, 131, 85, 185, '2021-07-27 00:36:42', '2021-07-27 00:36:42'),
(222, 132, 85, 185, '2021-07-27 00:38:34', '2021-07-27 00:38:34'),
(223, 133, 85, 185, '2021-07-27 00:39:23', '2021-07-27 00:39:23'),
(224, 134, 85, 185, '2021-07-27 00:40:28', '2021-07-27 00:40:28'),
(225, 135, 87, 187, '2021-07-27 18:40:15', '2021-07-27 18:40:15'),
(226, 136, 87, 187, '2021-07-27 18:42:22', '2021-07-27 18:42:22'),
(227, 137, 89, 189, '2021-07-27 18:46:43', '2021-07-27 18:46:43'),
(228, 138, 89, 189, '2021-07-27 18:48:57', '2021-07-27 18:48:57'),
(229, 139, 91, 191, '2021-07-27 19:05:36', '2021-07-27 19:05:36'),
(230, 140, 91, 191, '2021-07-27 19:07:20', '2021-07-27 19:07:20'),
(231, 141, 92, 192, '2021-07-27 19:09:17', '2021-07-27 19:09:17'),
(232, 142, 92, 192, '2021-07-27 19:11:16', '2021-07-27 19:11:16'),
(233, 143, 8, 20, '2021-07-30 02:26:51', '2021-07-30 02:26:51'),
(234, 144, 102, 216, '2021-07-30 13:31:29', '2021-07-30 13:31:29'),
(235, 144, 102, 217, '2021-07-30 13:31:29', '2021-07-30 13:31:29'),
(236, 145, 112, 241, '2021-07-30 13:42:35', '2021-07-30 13:42:35'),
(237, 145, 112, 242, '2021-07-30 13:42:35', '2021-07-30 13:42:35'),
(238, 146, 126, 260, '2021-08-04 12:21:54', '2021-08-04 12:21:54'),
(239, 146, 126, 261, '2021-08-04 12:21:54', '2021-08-04 12:21:54'),
(240, 147, 121, 251, '2021-08-04 15:23:34', '2021-08-04 15:23:34'),
(241, 148, 144, 287, '2021-08-05 18:10:14', '2021-08-05 18:10:14'),
(242, 148, 144, 288, '2021-08-05 18:10:14', '2021-08-05 18:10:14'),
(243, 148, 144, 289, '2021-08-05 18:10:14', '2021-08-05 18:10:14'),
(244, 148, 144, 290, '2021-08-05 18:10:14', '2021-08-05 18:10:14'),
(245, 149, 145, 291, '2021-08-05 18:44:24', '2021-08-05 18:44:24'),
(246, 150, 129, 268, '2021-08-05 19:02:24', '2021-08-05 19:02:24'),
(247, 150, 129, 269, '2021-08-05 19:02:24', '2021-08-05 19:02:24'),
(248, 150, 129, 270, '2021-08-05 19:02:24', '2021-08-05 19:02:24'),
(249, 150, 129, 271, '2021-08-05 19:02:24', '2021-08-05 19:02:24'),
(250, 151, 129, 268, '2021-08-05 20:13:11', '2021-08-05 20:13:11'),
(251, 152, 129, 268, '2021-08-05 20:16:36', '2021-08-05 20:16:36'),
(252, 152, 129, 269, '2021-08-05 20:16:36', '2021-08-05 20:16:36'),
(253, 152, 129, 270, '2021-08-05 20:16:36', '2021-08-05 20:16:36'),
(254, 152, 129, 271, '2021-08-05 20:16:36', '2021-08-05 20:16:36'),
(255, 153, 129, 268, '2021-08-05 20:17:34', '2021-08-05 20:17:34'),
(256, 154, 129, 268, '2021-08-05 20:18:04', '2021-08-05 20:18:04'),
(257, 155, 129, 268, '2021-08-05 20:19:27', '2021-08-05 20:19:27'),
(258, 155, 129, 270, '2021-08-05 20:19:27', '2021-08-05 20:19:27'),
(259, 156, 129, 268, '2021-08-05 20:26:59', '2021-08-05 20:26:59'),
(260, 156, 129, 269, '2021-08-05 20:26:59', '2021-08-05 20:26:59'),
(261, 156, 129, 271, '2021-08-05 20:26:59', '2021-08-05 20:26:59'),
(262, 157, 129, 268, '2021-08-05 20:44:37', '2021-08-05 20:44:37'),
(263, 158, 129, 271, '2021-08-05 20:53:11', '2021-08-05 20:53:11'),
(264, 159, 129, 271, '2021-08-05 22:47:23', '2021-08-05 22:47:23'),
(265, 160, 127, 266, '2021-08-07 08:15:49', '2021-08-07 08:15:49'),
(266, 161, 127, 266, '2021-08-07 08:17:01', '2021-08-07 08:17:01'),
(267, 162, 127, 266, '2021-08-07 08:20:50', '2021-08-07 08:20:50'),
(268, 163, 145, 291, '2021-08-07 08:39:23', '2021-08-07 08:39:23'),
(269, 164, 147, 295, '2021-08-07 09:21:33', '2021-08-07 09:21:33'),
(270, 165, 144, 287, '2021-08-07 16:59:39', '2021-08-07 16:59:39'),
(271, 166, 144, 287, '2021-08-07 17:00:44', '2021-08-07 17:00:44'),
(272, 167, 144, 288, '2021-08-07 23:19:02', '2021-08-07 23:19:02'),
(273, 168, 144, 288, '2021-08-07 23:21:58', '2021-08-07 23:21:58'),
(274, 169, 149, 300, '2021-08-08 01:01:14', '2021-08-08 01:01:14'),
(275, 170, 147, 295, '2021-08-08 03:05:30', '2021-08-08 03:05:30'),
(276, 171, 147, 295, '2021-08-09 02:41:29', '2021-08-09 02:41:29'),
(277, 172, 147, 295, '2021-08-09 02:51:33', '2021-08-09 02:51:33'),
(278, 173, 140, 282, '2021-08-09 02:52:59', '2021-08-09 02:52:59'),
(279, 174, 144, 288, '2021-08-09 02:58:14', '2021-08-09 02:58:14'),
(280, 175, 144, 288, '2021-08-09 03:35:45', '2021-08-09 03:35:45'),
(281, 176, 165, 327, '2021-08-10 00:53:14', '2021-08-10 00:53:14'),
(282, 176, 165, 328, '2021-08-10 00:53:14', '2021-08-10 00:53:14'),
(283, 177, 165, 327, '2021-08-10 00:53:38', '2021-08-10 00:53:38'),
(284, 177, 165, 328, '2021-08-10 00:53:38', '2021-08-10 00:53:38'),
(285, 178, 165, 327, '2021-08-10 00:54:23', '2021-08-10 00:54:23'),
(286, 178, 165, 328, '2021-08-10 00:54:23', '2021-08-10 00:54:23'),
(287, 179, 165, 327, '2021-08-10 00:55:02', '2021-08-10 00:55:02'),
(288, 179, 165, 328, '2021-08-10 00:55:02', '2021-08-10 00:55:02'),
(289, 180, 165, 327, '2021-08-10 01:53:38', '2021-08-10 01:53:38'),
(290, 180, 165, 328, '2021-08-10 01:53:38', '2021-08-10 01:53:38'),
(291, 181, 168, 331, '2021-08-10 02:36:36', '2021-08-10 02:36:36'),
(292, 181, 168, 333, '2021-08-10 02:36:36', '2021-08-10 02:36:36'),
(293, 182, 168, 331, '2021-08-10 02:44:14', '2021-08-10 02:44:14'),
(294, 182, 168, 333, '2021-08-10 02:44:14', '2021-08-10 02:44:14'),
(295, 183, 170, 335, '2021-08-10 06:36:12', '2021-08-10 06:36:12'),
(296, 184, 170, 335, '2021-08-10 06:37:08', '2021-08-10 06:37:08'),
(297, 185, 170, 335, '2021-08-10 06:42:35', '2021-08-10 06:42:35'),
(298, 186, 170, 335, '2021-08-10 06:45:47', '2021-08-10 06:45:47'),
(299, 187, 179, 355, '2021-08-12 03:46:18', '2021-08-12 03:46:18'),
(300, 187, 179, 356, '2021-08-12 03:46:18', '2021-08-12 03:46:18'),
(301, 188, 179, 355, '2021-08-12 03:48:09', '2021-08-12 03:48:09'),
(302, 188, 179, 356, '2021-08-12 03:48:09', '2021-08-12 03:48:09'),
(303, 189, 179, 355, '2021-08-12 03:55:43', '2021-08-12 03:55:43'),
(304, 189, 179, 356, '2021-08-12 03:55:43', '2021-08-12 03:55:43'),
(305, 190, 168, 331, '2021-08-13 16:45:05', '2021-08-13 16:45:05'),
(306, 190, 168, 332, '2021-08-13 16:45:05', '2021-08-13 16:45:05'),
(307, 191, 168, 331, '2021-08-13 16:51:58', '2021-08-13 16:51:58'),
(308, 191, 168, 332, '2021-08-13 16:51:58', '2021-08-13 16:51:58'),
(311, 193, 168, 331, '2021-08-13 17:44:55', '2021-08-13 17:44:55'),
(312, 193, 168, 332, '2021-08-13 17:44:55', '2021-08-13 17:44:55'),
(313, 193, 142, 285, '2021-08-13 17:44:55', '2021-08-13 17:44:55'),
(314, 194, 120, 250, '2021-08-16 06:53:05', '2021-08-16 06:53:05'),
(315, 195, 120, 250, '2021-08-16 06:53:07', '2021-08-16 06:53:07'),
(316, 196, 168, 332, '2021-08-16 20:29:20', '2021-08-16 20:29:20'),
(317, 196, 168, 333, '2021-08-16 20:29:20', '2021-08-16 20:29:20'),
(318, 197, 180, 357, '2021-08-17 01:33:21', '2021-08-17 01:33:21'),
(319, 197, 180, 358, '2021-08-17 01:33:21', '2021-08-17 01:33:21'),
(320, 197, 180, 359, '2021-08-17 01:33:21', '2021-08-17 01:33:21'),
(321, 197, 180, 360, '2021-08-17 01:33:21', '2021-08-17 01:33:21'),
(322, 198, 168, 332, '2021-08-17 01:33:45', '2021-08-17 01:33:45'),
(323, 198, 168, 333, '2021-08-17 01:33:45', '2021-08-17 01:33:45'),
(324, 199, 180, 357, '2021-08-17 01:34:05', '2021-08-17 01:34:05'),
(325, 199, 180, 358, '2021-08-17 01:34:05', '2021-08-17 01:34:05'),
(326, 199, 180, 359, '2021-08-17 01:34:05', '2021-08-17 01:34:05'),
(327, 199, 180, 360, '2021-08-17 01:34:05', '2021-08-17 01:34:05'),
(328, 200, 180, 357, '2021-08-17 02:40:36', '2021-08-17 02:40:36'),
(329, 200, 180, 358, '2021-08-17 02:40:36', '2021-08-17 02:40:36'),
(330, 200, 180, 359, '2021-08-17 02:40:36', '2021-08-17 02:40:36'),
(331, 200, 180, 360, '2021-08-17 02:40:36', '2021-08-17 02:40:36'),
(332, 201, 180, 357, '2021-08-17 02:41:24', '2021-08-17 02:41:24'),
(333, 201, 180, 358, '2021-08-17 02:41:24', '2021-08-17 02:41:24'),
(334, 201, 180, 359, '2021-08-17 02:41:24', '2021-08-17 02:41:24'),
(335, 201, 180, 360, '2021-08-17 02:41:24', '2021-08-17 02:41:24'),
(336, 202, 180, 357, '2021-08-17 03:08:53', '2021-08-17 03:08:53'),
(337, 202, 180, 358, '2021-08-17 03:08:53', '2021-08-17 03:08:53'),
(338, 202, 180, 359, '2021-08-17 03:08:53', '2021-08-17 03:08:53'),
(339, 202, 180, 360, '2021-08-17 03:08:53', '2021-08-17 03:08:53'),
(340, 203, 186, 366, '2021-08-17 19:11:52', '2021-08-17 19:11:52'),
(341, 203, 186, 367, '2021-08-17 19:11:52', '2021-08-17 19:11:52'),
(342, 204, 186, 366, '2021-08-17 19:12:15', '2021-08-17 19:12:15'),
(343, 204, 186, 367, '2021-08-17 19:12:15', '2021-08-17 19:12:15'),
(344, 205, 187, 368, '2021-08-17 19:38:32', '2021-08-17 19:38:32'),
(345, 206, 188, 369, '2021-08-17 20:57:45', '2021-08-17 20:57:45'),
(346, 206, 188, 370, '2021-08-17 20:57:45', '2021-08-17 20:57:45'),
(347, 207, 189, 371, '2021-08-17 21:22:48', '2021-08-17 21:22:48'),
(348, 207, 189, 372, '2021-08-17 21:22:48', '2021-08-17 21:22:48'),
(349, 207, 189, 373, '2021-08-17 21:22:48', '2021-08-17 21:22:48'),
(350, 208, 189, 371, '2021-08-17 21:24:22', '2021-08-17 21:24:22'),
(351, 208, 189, 372, '2021-08-17 21:24:22', '2021-08-17 21:24:22'),
(352, 208, 189, 373, '2021-08-17 21:24:22', '2021-08-17 21:24:22'),
(353, 209, 190, 374, '2021-08-17 22:15:46', '2021-08-17 22:15:46'),
(354, 210, 190, 374, '2021-08-17 22:18:32', '2021-08-17 22:18:32'),
(355, 211, 191, 375, '2021-08-17 22:19:26', '2021-08-17 22:19:26'),
(356, 211, 191, 376, '2021-08-17 22:19:26', '2021-08-17 22:19:26'),
(357, 212, 193, 378, '2021-08-17 23:32:04', '2021-08-17 23:32:04'),
(358, 212, 193, 379, '2021-08-17 23:32:04', '2021-08-17 23:32:04'),
(359, 213, 193, 378, '2021-08-17 23:33:03', '2021-08-17 23:33:03'),
(360, 213, 193, 379, '2021-08-17 23:33:03', '2021-08-17 23:33:03'),
(361, 214, 194, 380, '2021-08-18 00:32:08', '2021-08-18 00:32:08'),
(362, 214, 194, 381, '2021-08-18 00:32:08', '2021-08-18 00:32:08'),
(363, 215, 194, 380, '2021-08-18 00:33:23', '2021-08-18 00:33:23'),
(364, 215, 194, 381, '2021-08-18 00:33:23', '2021-08-18 00:33:23'),
(365, 216, 195, 382, '2021-08-20 04:11:54', '2021-08-20 04:11:54'),
(366, 216, 195, 383, '2021-08-20 04:11:54', '2021-08-20 04:11:54'),
(367, 217, 195, 382, '2021-08-20 04:40:45', '2021-08-20 04:40:45'),
(368, 218, 195, 382, '2021-08-20 04:45:56', '2021-08-20 04:45:56'),
(369, 218, 195, 383, '2021-08-20 04:45:56', '2021-08-20 04:45:56'),
(370, 219, 195, 382, '2021-08-20 04:46:28', '2021-08-20 04:46:28'),
(371, 220, 195, 382, '2021-08-20 04:47:44', '2021-08-20 04:47:44'),
(372, 221, 168, 332, '2021-08-21 16:51:53', '2021-08-21 16:51:53'),
(373, 221, 168, 333, '2021-08-21 16:51:53', '2021-08-21 16:51:53'),
(374, 222, 198, 388, '2021-08-21 18:20:26', '2021-08-21 18:20:26'),
(375, 223, 199, 389, '2021-08-21 18:51:02', '2021-08-21 18:51:02'),
(376, 223, 199, 390, '2021-08-21 18:51:02', '2021-08-21 18:51:02'),
(377, 223, 199, 391, '2021-08-21 18:51:02', '2021-08-21 18:51:02'),
(378, 223, 199, 392, '2021-08-21 18:51:02', '2021-08-21 18:51:02'),
(379, 224, 199, 389, '2021-08-21 19:11:45', '2021-08-21 19:11:45'),
(380, 224, 199, 390, '2021-08-21 19:11:45', '2021-08-21 19:11:45'),
(381, 224, 199, 391, '2021-08-21 19:11:45', '2021-08-21 19:11:45'),
(382, 224, 199, 392, '2021-08-21 19:11:45', '2021-08-21 19:11:45'),
(383, 225, 198, 388, '2021-08-21 19:13:20', '2021-08-21 19:13:20'),
(384, 226, 199, 389, '2021-08-21 19:15:13', '2021-08-21 19:15:13'),
(385, 226, 199, 390, '2021-08-21 19:15:13', '2021-08-21 19:15:13'),
(386, 226, 199, 391, '2021-08-21 19:15:13', '2021-08-21 19:15:13'),
(387, 226, 199, 392, '2021-08-21 19:15:13', '2021-08-21 19:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resource_masters`
--

CREATE TABLE `resource_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdf_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_topic_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pdf_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_masters`
--

INSERT INTO `resource_masters` (`id`, `pdf_path`, `sub_topic_id`, `created_at`, `updated_at`, `pdf_name`, `is_active`) VALUES
(73, 'public/pdfs/TVSInBkFewEROXxELLYSxaA0qsBOBfFSYZxSOXHs.pdf', 1, '2021-05-30 18:06:48', '2021-05-30 18:06:48', 'Tenses.pdf', 1),
(74, 'public/pdfs/HeMbwlqSf4YZXT40RlZ3TDVXIVVcR3VKlZnwOuLR.pdf', 2, '2021-05-30 18:06:54', '2021-05-30 18:06:54', 'Introduction Physics.pdf', 1),
(75, 'public/pdfs/yr3fbuIJn5wOKoHeSahTThlr8Tx8yMsDOUCZ7AeA.pdf', 3, '2021-05-30 18:06:59', '2021-05-30 18:06:59', 'Tenses.pdf', 1),
(76, 'public/pdfs/orKGREqtkoPmoyTlCvfOHDTEhdjGO3Ug8J67QF5X.pdf', 4, '2021-05-30 18:07:04', '2021-05-30 18:07:04', 'Introduction Physics.pdf', 1),
(77, 'public/pdfs/Mw5RyqndTrfWSlYHdLPlBMUZS1mIqYRqwXlzlZEL.pdf', 5, '2021-05-30 18:07:08', '2021-05-30 18:07:08', 'Introduction Physics.pdf', 1),
(78, 'public/pdfs/Iz00yogzqQtuPkoDhA7HGrMNRUPFGRTqqgGeMGxS.pdf', 6, '2021-05-30 18:07:14', '2021-05-30 18:07:14', 'Introduction Physics.pdf', 1),
(79, 'public/pdfs/eJoV2l9gH0pcZPLXC7hrOiHshN1hmSw7I05Uq95S.pdf', 7, '2021-05-30 18:07:18', '2021-05-30 18:07:18', 'Tenses.pdf', 1),
(80, 'public/pdfs/xtYpYPFTZTJV1gbLZ76Ul32GhIGlkGU1htAIWW5g.pdf', 8, '2021-05-30 18:07:23', '2021-05-30 18:07:23', 'Introduction Physics.pdf', 1),
(81, 'public/pdfs/eEovpugSDVVcfSMszEtvgfYeBc6PnH2fo2rAN9wc.pdf', 9, '2021-05-30 18:07:27', '2021-05-30 18:07:27', 'Tenses.pdf', 1),
(82, 'public/pdfs/IpHtDo9UcwVA6O73LeIvBYcnyPNbL9HNCxNQnK5x.pdf', 10, '2021-05-30 18:14:27', '2021-05-30 18:14:27', 'Introduction Physics.pdf', 1),
(83, 'public/pdfs/bXcExNjlJqa8svgJpWREVs1uHCzUKaMjt5DgKxdD.pdf', 11, '2021-05-30 18:14:30', '2021-05-30 18:14:30', 'Tenses.pdf', 1),
(84, 'public/pdfs/ksreReOM63Omflbu1KhbtfKcF2lrkSrCAaHOvHvn.pdf', 1, '2021-05-30 18:22:46', '2021-05-30 18:22:46', 'Tenses.pdf', 0),
(85, 'public/pdfs/xg1hru1u62N6yc9AcBBkGWWoOWKBlmex6Ubvvi8O.pdf', 1, '2021-05-30 18:22:57', '2021-05-30 18:22:57', 'Introduction Physics.pdf', 0),
(86, 'public/pdfs/BDFRBFdYWDMdywEREtB1QtEsCmKbsPPjy6eRlOVQ.pdf', 3, '2021-05-30 19:50:28', '2021-05-30 19:50:28', 'Introduction Physics.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_master_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `class_master_id`, `created_at`, `updated_at`) VALUES
(1, 6, '1', '2021-05-25 20:23:13', '2021-05-25 20:23:13'),
(2, 7, '1', '2021-05-25 20:29:23', '2021-05-25 20:29:23'),
(3, 8, '1', '2021-05-25 20:40:04', '2021-05-25 20:40:04'),
(4, 9, '1', '2021-05-25 21:45:39', '2021-05-25 21:45:39'),
(5, 10, '1', '2021-05-26 01:06:53', '2021-05-26 01:06:53'),
(6, 12, '1', '2021-05-28 22:08:41', '2021-05-28 22:08:41'),
(7, 14, '1', '2021-05-29 04:55:56', '2021-05-29 04:55:56'),
(8, 15, '1', '2021-05-29 04:57:32', '2021-05-29 04:57:32'),
(9, 16, '1', '2021-06-01 03:05:26', '2021-06-01 03:05:26'),
(10, 4, '1', '2021-06-01 03:05:26', '2021-06-01 03:05:26'),
(11, 17, '1', '2021-06-02 02:16:34', '2021-06-02 02:16:34'),
(12, 18, '1', '2021-06-02 16:49:10', '2021-06-02 16:49:10'),
(13, 19, '2', '2021-06-03 07:20:21', '2021-06-03 07:20:21'),
(14, 20, '1', '2021-06-04 00:53:16', '2021-06-04 00:53:16'),
(15, 21, '1', '2021-06-04 06:01:41', '2021-06-04 06:01:41'),
(16, 24, '2', '2021-06-06 02:20:20', '2021-06-06 02:20:20'),
(17, 25, '2', '2021-06-06 02:26:52', '2021-06-06 02:26:52'),
(18, 26, '1', '2021-06-07 03:12:20', '2021-06-07 03:12:20'),
(19, 28, '1', '2021-06-11 17:11:04', '2021-06-11 17:11:04'),
(20, 29, '1', '2021-06-11 17:12:44', '2021-06-11 17:12:44'),
(21, 31, '1', '2021-06-12 03:24:18', '2021-06-12 03:24:18'),
(22, 32, '1', '2021-06-12 03:26:47', '2021-06-12 03:26:47'),
(23, 33, '1', '2021-06-12 23:37:03', '2021-06-12 23:37:03'),
(24, 37, '1', '2021-07-03 02:12:21', '2021-07-03 02:12:21'),
(25, 38, '1', '2021-07-03 03:16:10', '2021-07-03 03:16:10'),
(26, 39, '1', '2021-07-03 03:25:57', '2021-07-03 03:25:57'),
(27, 40, '1', '2021-07-03 03:35:55', '2021-07-03 03:35:55'),
(28, 41, '2', '2021-07-03 03:54:56', '2021-07-03 03:54:56'),
(29, 45, '1', '2021-07-20 11:54:25', '2021-07-20 11:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_master_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_master_id`, `created_at`, `updated_at`) VALUES
(1, 'English', 1, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(2, 'Maths', 1, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(3, 'Comprehension', 2, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(4, 'Creative Writing', 2, '2021-05-25 05:23:02', '2021-05-25 05:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `sub_topics`
--

CREATE TABLE `sub_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `sub_topic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_topics`
--

INSERT INTO `sub_topics` (`id`, `topic_id`, `sub_topic_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Types Of Tenses', 1, NULL, NULL),
(2, 1, 'Tense Usages', 1, NULL, NULL),
(3, 1, 'Tenses', 1, NULL, NULL),
(4, 2, 'Active Voice', 1, NULL, NULL),
(5, 2, 'Passive Voice', 1, NULL, NULL),
(6, 7, 'Physics Introduction', 1, NULL, NULL),
(7, 8, 'Law of graviry', 1, NULL, NULL),
(8, 3, 'Even numbers', 1, NULL, NULL),
(9, 4, 'Prime Numbers', 1, NULL, NULL),
(10, 5, 'Benzene Structure', 1, NULL, NULL),
(11, 6, 'Chemical Reactions', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_master_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `about` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_type`, `class_master_id`, `user_id`, `created_at`, `updated_at`, `image_file`, `video`, `about`) VALUES
(1, 'teacher', 1, 43, '2021-07-17 18:49:14', '2021-07-17 18:49:14', NULL, NULL, NULL),
(2, 'operation', 1, 44, '2021-07-17 18:49:58', '2021-07-17 18:49:58', NULL, NULL, NULL),
(3, 'teacher', 1, 46, '2021-07-24 17:08:33', '2021-07-24 17:08:33', NULL, NULL, NULL),
(4, 'teacher', 1, 47, '2021-07-26 23:36:21', '2021-07-26 23:36:21', NULL, NULL, NULL),
(5, 'teacher', 1, 48, '2021-07-27 18:36:42', '2021-07-27 18:36:42', NULL, NULL, NULL),
(6, 'teacher', 3, 49, '2021-07-30 13:12:42', '2021-07-30 13:12:42', NULL, NULL, NULL),
(7, 'teacher', 4, 50, '2021-07-31 06:39:57', '2021-07-31 06:39:57', NULL, NULL, NULL),
(8, 'teacher', 4, 51, '2021-07-31 06:49:09', '2021-07-31 06:49:09', NULL, NULL, NULL),
(9, 'teacher', 4, 52, '2021-07-31 06:54:04', '2021-07-31 06:54:04', NULL, NULL, NULL),
(12, 'teacher', 1, 57, '2021-08-02 21:11:22', '2021-08-02 21:11:22', NULL, NULL, NULL),
(13, 'teacher', 2, 58, '2021-08-04 15:30:29', '2021-08-04 15:30:29', NULL, NULL, NULL),
(14, 'teacher', 4, 59, '2021-08-04 17:30:20', '2021-08-04 17:30:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_experiences`
--

CREATE TABLE `teacher_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `experience_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_org` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_startendyear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_certification` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_experiences`
--

INSERT INTO `teacher_experiences` (`id`, `user_id`, `experience_type`, `experience_title`, `experience_org`, `experience_location`, `experience_startendyear`, `experience_certification`, `created_at`, `updated_at`) VALUES
(1, 2, 'New Experience', 'Mr.', 'asf', 'adf', '2011', 2011, '2021-07-15 03:51:58', '2021-07-15 03:51:58'),
(2, 58, 'New Experience', 'Mr.', 'asf', 'adf', '45', 54, '2021-08-04 15:39:46', '2021-08-04 15:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_expertises`
--

CREATE TABLE `teacher_expertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_proficiency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_pricings`
--

CREATE TABLE `teacher_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_for_one_student` int(11) NOT NULL,
  `price_for_two_student` int(11) NOT NULL,
  `price_for_class` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_profile_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id_proof_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `teacher_profile_photo`, `user_id`, `gender`, `about`, `address`, `city`, `zip_code`, `country`, `timezone`, `teacher_id_proof_image`, `created_at`, `updated_at`) VALUES
(1, 'bpi4.jpg', 2, 'male', 'Teaching is my hobby.', NULL, NULL, NULL, NULL, NULL, 'pexels-andrea-piacquadio-974911.jpg', '2021-05-26 23:43:10', '2021-08-05 04:28:05'),
(2, 'Convergys (@convergys) _ Twitter.jpg', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-28 22:03:55', '2021-05-28 22:03:55'),
(3, '1.jpg', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-04 15:38:41', '2021-08-04 15:38:41'),
(4, 'bpi4.jpg', 59, 'male', '222', '65th Avenue', 'VNS', 220022, 'India', NULL, 'bpi5.jpeg', '2021-08-04 19:10:00', '2021-08-04 19:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_age_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_class_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 'Tense', 1, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(2, 'Voice', 1, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(3, 'Numbers', 2, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(4, 'Counting', 2, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(5, 'Organic Chemistry', 3, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(6, 'In Organic Checmistry', 3, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(7, 'Introduction', 4, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(8, 'Gravity', 4, '2021-05-25 05:23:02', '2021-05-25 05:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `status` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'yes', NULL, '2021-05-25 20:23:43', '2021-05-25 20:23:43'),
(2, 2, 'yes', NULL, '2021-05-25 20:36:42', '2021-05-25 20:36:42'),
(3, 3, 'yes', NULL, '2021-05-25 20:40:58', '2021-05-25 20:40:58'),
(4, 13, 'yes', NULL, '2021-05-25 21:57:45', '2021-05-25 21:57:45'),
(5, 14, 'yes', NULL, '2021-05-26 01:07:07', '2021-05-26 01:07:07'),
(6, 15, 'yes', NULL, '2021-05-26 15:05:42', '2021-05-26 15:05:42'),
(7, 16, 'yes', NULL, '2021-05-26 15:35:58', '2021-05-26 15:35:58'),
(8, 17, 'yes', NULL, '2021-05-26 15:42:35', '2021-05-26 15:42:35'),
(9, 18, 'yes', NULL, '2021-05-26 16:59:30', '2021-05-26 16:59:30'),
(10, 19, 'yes', NULL, '2021-05-26 17:39:33', '2021-05-26 17:39:33'),
(11, 20, 'yes', NULL, '2021-05-28 17:23:47', '2021-05-28 17:23:47'),
(12, 21, 'yes', NULL, '2021-05-28 17:24:21', '2021-05-28 17:24:21'),
(13, 22, 'yes', NULL, '2021-05-28 17:25:20', '2021-05-28 17:25:20'),
(14, 23, 'yes', NULL, '2021-05-28 17:25:36', '2021-05-28 17:25:36'),
(15, 24, 'yes', NULL, '2021-05-28 22:09:19', '2021-05-28 22:09:19'),
(16, 25, 'yes', NULL, '2021-05-29 01:10:27', '2021-05-29 01:10:27'),
(17, 26, 'yes', NULL, '2021-05-29 04:56:49', '2021-05-29 04:56:49'),
(18, 27, 'yes', NULL, '2021-05-29 04:57:50', '2021-05-29 04:57:50'),
(19, 28, 'yes', NULL, '2021-05-29 17:07:52', '2021-05-29 17:07:52'),
(20, 29, 'yes', NULL, '2021-05-29 17:13:16', '2021-05-29 17:13:16'),
(21, 30, 'yes', NULL, '2021-05-30 02:01:21', '2021-05-30 02:01:21'),
(22, 31, 'yes', NULL, '2021-05-30 02:07:22', '2021-05-30 02:07:22'),
(23, 32, 'yes', NULL, '2021-05-30 02:19:27', '2021-05-30 02:19:27'),
(24, 33, 'yes', NULL, '2021-05-30 02:34:53', '2021-05-30 02:34:53'),
(25, 34, 'yes', NULL, '2021-06-01 03:10:10', '2021-06-01 03:10:10'),
(26, 35, 'yes', NULL, '2021-06-02 06:40:53', '2021-06-02 06:40:53'),
(27, 36, 'yes', NULL, '2021-06-02 07:00:21', '2021-06-02 07:00:21'),
(28, 37, 'yes', NULL, '2021-06-03 01:58:54', '2021-06-03 01:58:54'),
(29, 38, 'yes', NULL, '2021-06-03 07:21:43', '2021-06-03 07:21:43'),
(30, 39, 'yes', NULL, '2021-06-04 01:01:06', '2021-06-04 01:01:06'),
(31, 40, 'yes', NULL, '2021-06-04 16:37:50', '2021-06-04 16:37:50'),
(32, 41, 'yes', NULL, '2021-06-04 16:54:43', '2021-06-04 16:54:43'),
(33, 42, 'yes', NULL, '2021-06-04 17:41:27', '2021-06-04 17:41:27'),
(34, 43, 'yes', NULL, '2021-06-04 18:19:41', '2021-06-04 18:19:41'),
(35, 44, 'yes', NULL, '2021-06-05 17:33:09', '2021-06-05 17:33:09'),
(36, 45, 'yes', NULL, '2021-06-05 19:31:50', '2021-06-05 19:31:50'),
(37, 46, 'yes', NULL, '2021-06-05 21:31:46', '2021-06-05 21:31:46'),
(38, 47, 'yes', NULL, '2021-06-05 21:45:38', '2021-06-05 21:45:38'),
(39, 48, 'yes', NULL, '2021-06-05 21:47:37', '2021-06-05 21:47:37'),
(40, 49, 'yes', NULL, '2021-06-06 00:50:01', '2021-06-06 00:50:01'),
(41, 50, 'yes', NULL, '2021-06-06 02:01:21', '2021-06-06 02:01:21'),
(42, 51, 'yes', NULL, '2021-06-06 02:22:00', '2021-06-06 02:22:00'),
(43, 52, 'yes', NULL, '2021-06-06 02:27:12', '2021-06-06 02:27:12'),
(44, 53, 'yes', NULL, '2021-06-08 00:16:37', '2021-06-08 00:16:37'),
(45, 54, 'yes', NULL, '2021-06-08 00:18:43', '2021-06-08 00:18:43'),
(46, 55, 'yes', NULL, '2021-06-08 01:50:02', '2021-06-08 01:50:02'),
(47, 56, 'yes', NULL, '2021-06-08 02:18:25', '2021-06-08 02:18:25'),
(48, 57, 'yes', NULL, '2021-06-08 02:35:58', '2021-06-08 02:35:58'),
(49, 58, 'yes', NULL, '2021-06-08 03:13:33', '2021-06-08 03:13:33'),
(50, 59, 'yes', NULL, '2021-06-10 01:41:58', '2021-06-10 01:41:58'),
(51, 60, 'yes', NULL, '2021-06-11 17:14:51', '2021-06-11 17:14:51'),
(52, 61, 'yes', NULL, '2021-06-11 17:15:05', '2021-06-11 17:15:05'),
(53, 62, 'yes', NULL, '2021-06-12 02:49:22', '2021-06-12 02:49:22'),
(54, 63, 'yes', NULL, '2021-06-12 03:25:56', '2021-06-12 03:25:56'),
(55, 64, 'yes', NULL, '2021-06-12 03:26:59', '2021-06-12 03:26:59'),
(56, 65, 'yes', NULL, '2021-06-12 14:27:48', '2021-06-12 14:27:48'),
(57, 66, 'yes', NULL, '2021-06-12 14:30:13', '2021-06-12 14:30:13'),
(58, 67, 'yes', NULL, '2021-06-12 17:19:20', '2021-06-12 17:19:20'),
(59, 68, 'yes', NULL, '2021-06-12 17:19:46', '2021-06-12 17:19:46'),
(60, 69, 'yes', NULL, '2021-06-12 17:19:57', '2021-06-12 17:19:57'),
(61, 70, 'yes', NULL, '2021-06-12 22:41:43', '2021-06-12 22:41:43'),
(62, 71, 'yes', NULL, '2021-06-12 23:41:51', '2021-06-12 23:41:51'),
(63, 72, 'yes', NULL, '2021-06-12 23:42:29', '2021-06-12 23:42:29'),
(64, 73, 'yes', NULL, '2021-06-12 23:48:15', '2021-06-12 23:48:15'),
(65, 74, 'yes', NULL, '2021-06-17 01:17:04', '2021-06-17 01:17:04'),
(66, 75, 'yes', NULL, '2021-06-17 01:18:18', '2021-06-17 01:18:18'),
(67, 76, 'yes', NULL, '2021-06-20 11:38:45', '2021-06-20 11:38:45'),
(68, 77, 'yes', NULL, '2021-06-30 06:56:32', '2021-06-30 06:56:32'),
(69, 78, 'yes', NULL, '2021-06-30 06:56:46', '2021-06-30 06:56:46'),
(70, 79, 'yes', NULL, '2021-06-30 09:09:58', '2021-06-30 09:09:58'),
(71, 80, 'yes', NULL, '2021-06-30 09:10:44', '2021-06-30 09:10:44'),
(72, 81, 'yes', NULL, '2021-06-30 09:11:31', '2021-06-30 09:11:31'),
(73, 82, 'yes', NULL, '2021-06-30 16:01:27', '2021-06-30 16:01:27'),
(74, 83, 'yes', NULL, '2021-06-30 16:02:35', '2021-06-30 16:02:35'),
(75, 84, 'yes', NULL, '2021-06-30 16:15:15', '2021-06-30 16:15:15'),
(76, 85, 'yes', NULL, '2021-06-30 16:22:45', '2021-06-30 16:22:45'),
(77, 86, 'yes', NULL, '2021-06-30 16:27:16', '2021-06-30 16:27:16'),
(78, 87, 'yes', NULL, '2021-06-30 16:40:11', '2021-06-30 16:40:11'),
(79, 88, 'yes', NULL, '2021-06-30 16:57:10', '2021-06-30 16:57:10'),
(80, 89, 'yes', NULL, '2021-07-01 15:35:16', '2021-07-01 15:35:16'),
(81, 90, 'yes', NULL, '2021-07-01 16:26:25', '2021-07-01 16:26:25'),
(82, 91, 'yes', NULL, '2021-07-01 18:22:35', '2021-07-01 18:22:35'),
(83, 92, 'yes', NULL, '2021-07-01 19:00:23', '2021-07-01 19:00:23'),
(84, 93, 'yes', NULL, '2021-07-01 19:17:25', '2021-07-01 19:17:25'),
(85, 94, 'yes', NULL, '2021-07-01 19:44:19', '2021-07-01 19:44:19'),
(86, 95, 'yes', NULL, '2021-07-01 19:46:14', '2021-07-01 19:46:14'),
(87, 96, 'yes', NULL, '2021-07-02 01:33:21', '2021-07-02 01:33:21'),
(88, 97, 'yes', NULL, '2021-07-03 01:22:54', '2021-07-03 01:22:54'),
(89, 98, 'yes', NULL, '2021-07-03 01:24:40', '2021-07-03 01:24:40'),
(90, 99, 'yes', NULL, '2021-07-03 02:12:45', '2021-07-03 02:12:45'),
(91, 100, 'yes', NULL, '2021-07-03 02:14:55', '2021-07-03 02:14:55'),
(92, 101, 'yes', NULL, '2021-07-03 03:10:07', '2021-07-03 03:10:07'),
(93, 102, 'yes', NULL, '2021-07-03 03:16:59', '2021-07-03 03:16:59'),
(94, 103, 'yes', NULL, '2021-07-03 03:26:18', '2021-07-03 03:26:18'),
(95, 104, 'yes', NULL, '2021-07-03 03:30:26', '2021-07-03 03:30:26'),
(96, 105, 'yes', NULL, '2021-07-03 03:49:13', '2021-07-03 03:49:13'),
(97, 106, 'yes', NULL, '2021-07-03 03:50:13', '2021-07-03 03:50:13'),
(98, 107, 'yes', NULL, '2021-07-11 01:15:48', '2021-07-11 01:15:48'),
(99, 108, 'yes', NULL, '2021-07-11 01:17:12', '2021-07-11 01:17:12'),
(100, 109, 'yes', NULL, '2021-07-11 01:18:40', '2021-07-11 01:18:40'),
(101, 110, 'yes', NULL, '2021-07-11 01:19:18', '2021-07-11 01:19:18'),
(102, 111, 'yes', NULL, '2021-07-14 22:16:26', '2021-07-14 22:16:26'),
(103, 112, 'yes', NULL, '2021-07-14 23:02:50', '2021-07-14 23:02:50'),
(104, 113, 'yes', NULL, '2021-07-14 23:41:31', '2021-07-14 23:41:31'),
(105, 114, 'yes', NULL, '2021-07-15 00:12:40', '2021-07-15 00:12:40'),
(106, 115, 'yes', NULL, '2021-07-15 00:16:10', '2021-07-15 00:16:10'),
(107, 116, 'yes', NULL, '2021-07-15 00:16:58', '2021-07-15 00:16:58'),
(108, 117, 'yes', NULL, '2021-07-15 00:55:17', '2021-07-15 00:55:17'),
(109, 118, 'yes', NULL, '2021-07-15 01:31:22', '2021-07-15 01:31:22'),
(110, 119, 'yes', NULL, '2021-07-15 04:00:59', '2021-07-15 04:00:59'),
(111, 120, 'yes', NULL, '2021-07-18 16:38:11', '2021-07-18 16:38:11'),
(112, 121, 'yes', NULL, '2021-07-20 11:50:19', '2021-07-20 11:50:19'),
(113, 122, 'yes', NULL, '2021-07-20 11:52:23', '2021-07-20 11:52:23'),
(114, 123, 'yes', NULL, '2021-07-20 11:54:42', '2021-07-20 11:54:42'),
(115, 124, 'yes', NULL, '2021-07-20 12:54:00', '2021-07-20 12:54:00'),
(116, 125, 'yes', NULL, '2021-07-20 13:16:38', '2021-07-20 13:16:38'),
(117, 126, 'yes', NULL, '2021-07-20 13:21:58', '2021-07-20 13:21:58'),
(118, 127, 'yes', NULL, '2021-07-20 13:53:11', '2021-07-20 13:53:11'),
(119, 128, 'yes', NULL, '2021-07-20 14:12:46', '2021-07-20 14:12:46'),
(120, 129, 'yes', NULL, '2021-07-24 16:13:18', '2021-07-24 16:13:18'),
(121, 130, 'yes', NULL, '2021-07-27 00:21:50', '2021-07-27 00:21:50'),
(122, 131, 'yes', NULL, '2021-07-27 00:36:42', '2021-07-27 00:36:42'),
(123, 132, 'yes', NULL, '2021-07-27 00:38:34', '2021-07-27 00:38:34'),
(124, 133, 'yes', NULL, '2021-07-27 00:39:23', '2021-07-27 00:39:23'),
(125, 134, 'yes', NULL, '2021-07-27 00:40:28', '2021-07-27 00:40:28'),
(126, 135, 'yes', NULL, '2021-07-27 18:40:16', '2021-07-27 18:40:16'),
(127, 136, 'yes', NULL, '2021-07-27 18:42:22', '2021-07-27 18:42:22'),
(128, 137, 'yes', NULL, '2021-07-27 18:46:43', '2021-07-27 18:46:43'),
(129, 138, 'yes', NULL, '2021-07-27 18:48:57', '2021-07-27 18:48:57'),
(130, 139, 'yes', NULL, '2021-07-27 19:05:36', '2021-07-27 19:05:36'),
(131, 140, 'yes', NULL, '2021-07-27 19:07:20', '2021-07-27 19:07:20'),
(132, 141, 'yes', NULL, '2021-07-27 19:09:17', '2021-07-27 19:09:17'),
(133, 142, 'yes', NULL, '2021-07-27 19:11:16', '2021-07-27 19:11:16'),
(134, 143, 'yes', NULL, '2021-07-30 02:26:51', '2021-07-30 02:26:51'),
(135, 144, 'yes', NULL, '2021-07-30 13:31:29', '2021-07-30 13:31:29'),
(136, 145, 'yes', NULL, '2021-07-30 13:42:35', '2021-07-30 13:42:35'),
(137, 146, 'yes', NULL, '2021-08-04 12:21:54', '2021-08-04 12:21:54'),
(138, 147, 'yes', NULL, '2021-08-04 15:23:34', '2021-08-04 15:23:34'),
(139, 148, 'yes', NULL, '2021-08-05 18:10:14', '2021-08-05 18:10:14'),
(140, 149, 'yes', NULL, '2021-08-05 18:44:24', '2021-08-05 18:44:24'),
(141, 150, 'yes', NULL, '2021-08-05 19:02:24', '2021-08-05 19:02:24'),
(142, 151, 'yes', NULL, '2021-08-05 20:13:11', '2021-08-05 20:13:11'),
(143, 152, 'yes', NULL, '2021-08-05 20:16:36', '2021-08-05 20:16:36'),
(144, 153, 'yes', NULL, '2021-08-05 20:17:34', '2021-08-05 20:17:34'),
(145, 154, 'yes', NULL, '2021-08-05 20:18:04', '2021-08-05 20:18:04'),
(146, 155, 'yes', NULL, '2021-08-05 20:19:27', '2021-08-05 20:19:27'),
(147, 156, 'yes', NULL, '2021-08-05 20:26:59', '2021-08-05 20:26:59'),
(148, 157, 'yes', NULL, '2021-08-05 20:44:37', '2021-08-05 20:44:37'),
(149, 158, 'yes', NULL, '2021-08-05 20:53:11', '2021-08-05 20:53:11'),
(150, 159, 'yes', NULL, '2021-08-05 22:47:23', '2021-08-05 22:47:23'),
(151, 160, 'yes', NULL, '2021-08-07 08:15:49', '2021-08-07 08:15:49'),
(152, 161, 'yes', NULL, '2021-08-07 08:17:01', '2021-08-07 08:17:01'),
(153, 162, 'yes', NULL, '2021-08-07 08:20:50', '2021-08-07 08:20:50'),
(154, 163, 'yes', NULL, '2021-08-07 08:39:23', '2021-08-07 08:39:23'),
(155, 164, 'yes', NULL, '2021-08-07 09:21:33', '2021-08-07 09:21:33'),
(156, 165, 'yes', NULL, '2021-08-07 16:59:39', '2021-08-07 16:59:39'),
(157, 166, 'yes', NULL, '2021-08-07 17:00:44', '2021-08-07 17:00:44'),
(158, 167, 'yes', NULL, '2021-08-07 23:19:02', '2021-08-07 23:19:02'),
(159, 168, 'yes', NULL, '2021-08-07 23:21:58', '2021-08-07 23:21:58'),
(160, 169, 'yes', NULL, '2021-08-08 01:01:14', '2021-08-08 01:01:14'),
(161, 170, 'yes', NULL, '2021-08-08 03:05:30', '2021-08-08 03:05:30'),
(162, 171, 'yes', NULL, '2021-08-09 02:41:29', '2021-08-09 02:41:29'),
(163, 172, 'yes', NULL, '2021-08-09 02:51:33', '2021-08-09 02:51:33'),
(164, 173, 'yes', NULL, '2021-08-09 02:52:59', '2021-08-09 02:52:59'),
(165, 174, 'yes', NULL, '2021-08-09 02:58:14', '2021-08-09 02:58:14'),
(166, 175, 'yes', NULL, '2021-08-09 03:35:45', '2021-08-09 03:35:45'),
(167, 176, 'yes', NULL, '2021-08-10 00:53:14', '2021-08-10 00:53:14'),
(168, 177, 'yes', NULL, '2021-08-10 00:53:38', '2021-08-10 00:53:38'),
(169, 178, 'yes', NULL, '2021-08-10 00:54:23', '2021-08-10 00:54:23'),
(170, 179, 'yes', NULL, '2021-08-10 00:55:02', '2021-08-10 00:55:02'),
(171, 180, 'yes', NULL, '2021-08-10 01:53:38', '2021-08-10 01:53:38'),
(172, 181, 'yes', NULL, '2021-08-10 02:36:36', '2021-08-10 02:36:36'),
(173, 182, 'yes', NULL, '2021-08-10 02:44:14', '2021-08-10 02:44:14'),
(174, 183, 'yes', NULL, '2021-08-10 06:36:12', '2021-08-10 06:36:12'),
(175, 184, 'yes', NULL, '2021-08-10 06:37:08', '2021-08-10 06:37:08'),
(176, 185, 'yes', NULL, '2021-08-10 06:42:35', '2021-08-10 06:42:35'),
(177, 186, 'yes', NULL, '2021-08-10 06:45:47', '2021-08-10 06:45:47'),
(178, 187, 'no', NULL, '2021-08-12 03:46:18', '2021-08-12 03:46:18'),
(179, 188, 'no', NULL, '2021-08-12 03:48:09', '2021-08-12 03:48:09'),
(180, 189, 'no', NULL, '2021-08-12 03:55:43', '2021-08-12 03:55:43'),
(181, 190, 'no', NULL, '2021-08-13 16:45:05', '2021-08-13 16:45:05'),
(182, 191, 'no', NULL, '2021-08-13 16:51:58', '2021-08-13 16:51:58'),
(184, 193, 'no', NULL, '2021-08-13 17:44:55', '2021-08-13 17:44:55'),
(185, 194, 'no', NULL, '2021-08-16 06:53:05', '2021-08-16 06:53:05'),
(186, 195, 'no', 'yes', '2021-08-16 06:53:07', '2021-08-16 06:53:42'),
(187, 196, 'no', NULL, '2021-08-16 20:29:20', '2021-08-16 20:29:20'),
(188, 197, 'no', 'yes', '2021-08-17 01:33:21', '2021-08-17 01:33:21'),
(189, 198, 'no', 'yes', '2021-08-17 01:33:45', '2021-08-17 01:34:29'),
(190, 199, 'no', 'yes', '2021-08-17 01:34:05', '2021-08-17 01:34:52'),
(191, 200, 'no', NULL, '2021-08-17 02:40:36', '2021-08-17 02:40:36'),
(192, 201, 'no', NULL, '2021-08-17 02:41:24', '2021-08-17 02:41:24'),
(193, 202, 'no', NULL, '2021-08-17 03:08:53', '2021-08-17 03:08:53'),
(194, 203, 'yes', NULL, '2021-08-17 19:11:52', '2021-08-17 19:11:52'),
(195, 204, 'yes', NULL, '2021-08-17 19:12:15', '2021-08-17 19:12:15'),
(196, 205, 'no', 'yes', '2021-08-17 19:38:32', '2021-08-17 19:39:12'),
(197, 206, 'no', 'yes', '2021-08-17 20:57:45', '2021-08-17 20:58:30'),
(198, 207, 'no', 'yes', '2021-08-17 21:22:48', '2021-08-17 21:23:37'),
(199, 208, 'no', 'yes', '2021-08-17 21:24:22', '2021-08-17 21:25:08'),
(200, 209, 'no', 'yes', '2021-08-17 22:15:46', '2021-08-17 22:16:28'),
(201, 210, 'no', 'yes', '2021-08-17 22:18:32', '2021-08-17 22:19:09'),
(202, 211, 'no', 'yes', '2021-08-17 22:19:26', '2021-08-17 22:19:59'),
(203, 212, 'no', 'yes', '2021-08-17 23:32:04', '2021-08-17 23:32:40'),
(204, 213, 'no', 'yes', '2021-08-17 23:33:03', '2021-08-17 23:33:51'),
(205, 214, 'no', 'yes', '2021-08-18 00:32:08', '2021-08-18 00:32:44'),
(206, 215, 'no', 'yes', '2021-08-18 00:33:23', '2021-08-18 00:34:00'),
(207, 216, 'no', 'yes', '2021-08-20 04:11:54', '2021-08-20 04:12:34'),
(208, 217, 'no', 'yes', '2021-08-20 04:40:45', '2021-08-20 04:41:27'),
(209, 218, 'yes', NULL, '2021-08-20 04:45:56', '2021-08-20 04:45:56'),
(210, 219, 'yes', NULL, '2021-08-20 04:46:28', '2021-08-20 04:46:28'),
(211, 220, 'yes', NULL, '2021-08-20 04:47:44', '2021-08-20 04:47:44'),
(212, 221, 'no', 'yes', '2021-08-21 16:51:53', '2021-08-21 16:52:33'),
(213, 222, 'no', NULL, '2021-08-21 18:20:26', '2021-08-21 18:20:26'),
(214, 223, 'no', NULL, '2021-08-21 18:51:02', '2021-08-21 18:51:02'),
(215, 224, 'no', 'yes', '2021-08-21 19:11:45', '2021-08-21 19:12:48'),
(216, 225, 'no', 'yes', '2021-08-21 19:13:20', '2021-08-21 19:13:58'),
(217, 226, 'no', NULL, '2021-08-21 19:15:13', '2021-08-21 19:15:13');

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
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `contact_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andrew Smith', 'admin@wallingtonacademy.co.uk', '2021-05-25 05:23:02', '$2y$10$5OYUXHST5h4pVjfz1ulNROh02fNLIag.yR.pHWw3w5miqtNfde3Hm', 'admin', NULL, NULL, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(2, 'Mike Teacher', 'teacher@wallingtonacademy.co.uk', '2021-05-25 05:23:02', '$2y$10$C/3gWMUH5sIIjLQ9VhpmI.VQ7SxHA6PALaKu7.HG939cC/JsWN7Vm', 'teacher', '7894587452', NULL, '2021-05-25 05:23:02', '2021-07-15 03:50:26'),
(3, 'Chuck Larabee', 'operation@wallingtonacademy.co.uk', '2021-05-25 05:23:02', '$2y$10$wuvqDq1OKyjt2ARwg2WhruMYm3W1pwcZPAkOq2drCkeHFLY4nySQS', 'operation', NULL, 'BqGhfPX9783yk32ulf461CMrnaBrQ670QauSrhiAuEDfH7dxrNBLsgJUxXs0', '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(4, 'Rishu', 'student@wallingtonacademy.co.uk', '2021-05-25 05:23:02', '$2y$10$0IF3fXimTQaR3DejSGvYle7Nntr/UOqv04Q6Tmnn0AxEkZFCdjcY6', 'student', NULL, NULL, '2021-05-25 05:23:02', '2021-05-25 05:23:02'),
(6, 'Ami', 'ami@gmail.com', NULL, '$2y$10$s1q9i1czcLe/8A9DByZ8EeLYM2nkKQ6heFpcvf5xtX8HEHs6ph3aG', 'student', NULL, NULL, '2021-05-25 20:23:13', '2021-05-25 20:23:13'),
(7, 'Ishani', 'ishani@gmail.com', NULL, '$2y$10$0IF3fXimTQaR3DejSGvYle7Nntr/UOqv04Q6Tmnn0AxEkZFCdjcY6', 'teacher', NULL, NULL, '2021-05-25 20:29:23', '2021-05-25 20:29:23'),
(8, 'Malhar', 'malhar@gmail.com', NULL, '$2y$10$YYF2hiSTSbZE01zjmDddCOAU/q3l/SY.86MQXeV4hbygFTGO2T4Xq', 'student', NULL, NULL, '2021-05-25 20:40:04', '2021-05-25 20:40:04'),
(9, 'Moni', 'moni@gmail.com', NULL, '$2y$10$DURNB8IkRz8tdawtm7xNyOiqX4g5P4bGrdIUHeksTvN.GhL//iTXy', 'student', NULL, NULL, '2021-05-25 21:45:39', '2021-05-25 21:45:39'),
(10, 'Rashmi', 'rashmi@gmail.com', NULL, '$2y$10$Tf7F1DZSEbCLFaAZ8KPVLOB3AVEtWe0woxG1lDREuL7vcx/T03RUS', 'student', NULL, NULL, '2021-05-26 01:06:53', '2021-05-26 01:06:53'),
(11, 'Homework teacher', 'homework@teacher.com', NULL, '$2y$10$a2qo7rE4WfroXF1dNfZS7.6DSfnObNasTmkGU.fYy2xaQA8dz7MOq', 'teacher', '8527419635', NULL, '2021-05-28 21:59:59', '2021-05-28 21:59:59'),
(12, 'Homework', 'homework@student.com', NULL, '$2y$10$s4Q4HI0JxIDhMY3dB8cRNeQLC71Ns9xaYwpstxriacgie2fGbkeTy', 'student', NULL, NULL, '2021-05-28 22:08:41', '2021-05-28 22:08:41'),
(13, 'Homework Teacher', 'teacher@homework.com', NULL, '$2y$10$wdL1uNK1qEnHslb2KM8Lfe.4YbVEn2mdidnlNhY8JqmqmnkRIpTNi', 'teacher', '1234567890', NULL, '2021-05-29 04:30:41', '2021-05-29 04:30:41'),
(14, 'Student 1', 'student1@homework.com', NULL, '$2y$10$sTrh8FIFCBfTIhf5jqMccO4k0SyiQzkRAYC5pmKFLLdzTBJ0MCJ7G', 'student', NULL, NULL, '2021-05-29 04:55:56', '2021-05-29 04:55:56'),
(15, 'Student 2', 'student2@homework.com', NULL, '$2y$10$0O5uj64ZqrbhYLIMvOYooudmhFdq8jlWrs7m7P.EHNTFt.kDTXjn.', 'student', NULL, NULL, '2021-05-29 04:57:32', '2021-05-29 04:57:32'),
(16, 'New', 'student@test.com', NULL, '$2y$10$Gv6y5qCuS.Aq2Q8c4CC1DegFPC2e7TS0IKJaQMS4OBJR7hUBhBD9G', 'student', NULL, NULL, '2021-06-01 03:05:26', '2021-06-01 03:05:26'),
(17, 'ankit', 'ankit@gmail.com', NULL, '$2y$10$M.Pqp5DNHXwxIIMwdUZVD.cvdzj78Llz39rorzYnhxA134BDEkKC6', 'student', NULL, NULL, '2021-06-02 02:16:34', '2021-06-02 02:16:34'),
(18, 'alkatest', 'alkatest@gmail.com', NULL, '$2y$10$IqqOWI6hPMKzBIiSaYnGIuaX2P0VPBeoh11hyvPEp.Z/zYKyvXtw.', 'student', NULL, NULL, '2021-06-02 16:49:10', '2021-06-02 16:49:10'),
(19, 'Prabhat', 'prabhatyadavjss@gmail.com', NULL, '$2y$10$4tfv/da3Ivw2ktxTHhf8BOxINqJcdTJQW7b6i4rbGZ6qtosbWtnW.', 'student', NULL, NULL, '2021-06-03 07:20:21', '2021-06-03 07:20:21'),
(20, 'moniraj', 'moniraj@gmail.com', NULL, '$2y$10$r7rz.0CFEfceHaCNJPqC9u5cqIMlukn2BARqbOPgdVupcnXX7rTum', 'student', NULL, NULL, '2021-06-04 00:53:16', '2021-06-04 00:53:16'),
(21, 'anu', 'anu@gmail.com', NULL, '$2y$10$AmNdzjpEJ.S0OAHiXJXZ5edPqkPx52HmT44bclG0b5p8XvXECFRxS', 'student', NULL, NULL, '2021-06-04 06:01:41', '2021-06-04 06:01:41'),
(23, 'alka singh', 'alkasinghdev@test.com', NULL, '$2y$10$0Pq1NL8vY02f0DBZCAJVr.SaZ0MTxrpvmlsQGTyCJFiCrr7czDJjC', 'teacher', '9876567898', NULL, '2021-06-05 20:39:56', '2021-06-05 20:39:56'),
(24, 'James Clarke', 'Jamesclarke@gmail.com', NULL, '$2y$10$mCDtO6FxKSrsplnF.WWD9euSwdw9SVUGZ10.nXd4HLi5CdsnIBiwq', 'student', NULL, NULL, '2021-06-06 02:20:20', '2021-06-06 02:20:20'),
(25, 'prabhat', 'prabhatyadavdev2@test.com', NULL, '$2y$10$SprS2JpO9iP1lZSD0uShQuDFbB.RBJbtxMKAna4q35YTjjCJhwGlS', 'student', NULL, NULL, '2021-06-06 02:26:52', '2021-06-06 02:26:52'),
(26, 'Student', 'student@final.com', NULL, '$2y$10$08ivyxgLpWcImkyL/2q3duFLMAoCDKxJeulgpJAVNJG58V9N/58ym', 'student', NULL, NULL, '2021-06-07 03:12:20', '2021-06-07 03:12:20'),
(27, 'ritu', 'ritusingh@gmail.com', NULL, '$2y$10$1Eek5r75ScG3BHldpcNfHeseFHwT6VVvQXiAg.mWZz2o8qm.i5eAG', 'teacher', '8765432134', NULL, '2021-06-11 17:08:54', '2021-06-11 17:08:54'),
(28, 'student', 'student1@student.com', NULL, '$2y$10$fpgR45pDEDKF2fPLmdfBKeTBlFEoPHXvS2xV6Cez7d8R07aoudPYG', 'student', NULL, NULL, '2021-06-11 17:11:04', '2021-06-11 17:11:04'),
(29, 'student1', 'student2@student.com', NULL, '$2y$10$9enyQ26L3JmuAfRgxC7Eq.YVGePL7xB6On1KkpueJg3YIEwe2hfx2', 'student', NULL, NULL, '2021-06-11 17:12:44', '2021-06-11 17:12:44'),
(30, 'Uday Singh', 'uday.singh@gmail.com', NULL, '$2y$10$fshpylfD0mH7lWUNMA50GO.KDPvx4jRbL0gYv0cL.XsoLEJOYpEde', 'teacher', '1234567890', NULL, '2021-06-12 02:42:11', '2021-06-12 02:42:11'),
(31, 'student1', 's1@s.com', NULL, '$2y$10$AS0zwHsSzLYs4oJyk5ceeucpeevUqyk7bMLv5Fh5CDn9hKSYZD4au', 'student', NULL, NULL, '2021-06-12 03:24:18', '2021-06-12 03:24:18'),
(32, 'student2', 's2@s.com', NULL, '$2y$10$s3cC2INAb.kDmTkl1F1GguczkSU3ylwBULcV.gBW7IF13X8u.dCzq', 'student', NULL, NULL, '2021-06-12 03:26:47', '2021-06-12 03:26:47'),
(33, 'Student 3', 's3@s.com', NULL, '$2y$10$EiV1EoVc6HH0h4zbwOa2wOWYqPBd7Ak6inFDq./nSkaBKLTQ4.1Ki', 'student', NULL, NULL, '2021-06-12 23:37:03', '2021-06-12 23:37:03'),
(34, 'tanupriya', 'tanupriya@gmail.com', NULL, '$2y$10$XYLhXPXh8AZp96HiQ4R2KebJChOFSHOYVxDgdLb83TXPESpMF5JOu', 'teacher', '8790987654', NULL, '2021-06-12 23:38:21', '2021-06-12 23:38:21'),
(35, 'OfflineTeacher', 'offlineteacher@gmail.com', NULL, '$2y$10$.w9/OTfaSvg1Zkea52bO8.GCL1AdYxeDRGyzFhUsTp5OwN.D/LcV.', 'teacher', '9878987656', NULL, '2021-07-01 18:38:08', '2021-07-01 18:38:08'),
(36, 'Sam Wallington', 'samwallington@gmail.com', NULL, '$2y$10$WHlHPzEhSgMuw7NiOcLjYevGUaFSujQef0Vl2T2uvFXrRswZF3VPC', 'teacher', '1234567891', NULL, '2021-07-01 19:34:23', '2021-07-01 19:34:23'),
(37, 'New Student', 'new@new.com', NULL, '$2y$10$pq46wyeZjw9uh/IAM8vryufMEhQ7yG271yNBKmratnzoT/KVw7Md.', 'student', NULL, NULL, '2021-07-03 02:12:21', '2021-07-03 02:12:21'),
(38, 'Scott', 'scott@gmail.com', NULL, '$2y$10$Al6ry98kg5s.24TBkx/7T.Fjqf3oOEct/I6t.RBIz0cUzj3awk4ym', 'student', NULL, NULL, '2021-07-03 03:16:10', '2021-07-03 03:16:10'),
(39, 'Johnson', 'lee@gmail.com', NULL, '$2y$10$XPW.g0q02KV5DUXnKE9V2u4xhmmDcjEdkkvmBKug3tRb/TqCurp9q', 'student', NULL, NULL, '2021-07-03 03:25:57', '2021-07-03 03:25:57'),
(40, 'Brad', 'brad@gmail.com', NULL, '$2y$10$X3Wk1.j1vbp9.R52TtgI.Om//rhzE2D4GCTDPz17h.zMT.bdDvyDa', 'student', NULL, NULL, '2021-07-03 03:35:55', '2021-07-03 03:35:55'),
(41, 'Andrea', 'andrea@gmail.com', NULL, '$2y$10$0F.17QkfZ7XeCzTEqcFAe.zRD6JYbqMUTpGOUS/CO2n2pYw7GqAvy', 'student', NULL, NULL, '2021-07-03 03:54:56', '2021-07-03 03:54:56'),
(42, 'Alka', 'alkawa@gmail.com', NULL, '$2y$10$xdYi6kSsQPBbm.YH6Hs0t.uqTMbT9Dtsp1JSAbdLRHmBrtZABLtqm', 'teacher', '8292966972', NULL, '2021-07-10 21:57:07', '2021-07-10 21:57:07'),
(43, 'alka@gmail.com', 'alka1222@gmail.com', NULL, '$2y$10$VShGFMpiynh1FfXLFkW1BeJOYz3p/8xGlJX6W6dZFl1gMqevjwLe6', 'teacher', '9990911212', NULL, '2021-07-17 18:49:14', '2021-07-17 18:49:14'),
(44, 'amit', 'amit122@gmail.com', NULL, '$2y$10$MLRaG9qZ5DUGBG36xt6a4uayJMxU6NDivA4oUur87.MPJd0ujo.2W', 'operation', '8787654543', NULL, '2021-07-17 18:49:58', '2021-07-17 18:49:58'),
(45, 'ragni', 'ragni@gmail.com', NULL, '$2y$10$yB0CQO/W.bEPzw/SX4ZsSe1eLFF/t8bD9CtE4at4dRUOd/xs4wkvy', 'student', NULL, NULL, '2021-07-20 11:54:25', '2021-07-20 11:54:25'),
(46, 'Scoresheet Teacher', 'scoresheet@teacher.com', NULL, '$2y$10$YEwqotdXGp.KiLcjaIsmTuLWprbAg9ofCWlUVjB1TmQyJ4prCMB6.', 'teacher', '1234567890', NULL, '2021-07-24 17:08:33', '2021-07-24 17:08:33'),
(47, 'Sima', 'simasingh@gmail.com', NULL, '$2y$10$KETlHrue7UepWLjs5DeJKew5kgqkuNXc4fv5LvZdjLEG6SbR3wAqW', 'teacher', '8786865678', NULL, '2021-07-26 23:36:21', '2021-07-26 23:36:21'),
(48, 'choti', 'choti@gmail.com', NULL, '$2y$10$BbLMLXA2zrbFudVlcvcLWu1p1wiePe4q4FjxjszOgFbjaztMTcvMi', 'teacher', '8790876545', NULL, '2021-07-27 18:36:42', '2021-07-27 18:36:42'),
(49, 'Ayon', 'Ayon@gmail.com', NULL, '$2y$10$GJSmoi2d09bwSpPuTdR6M.e54/PS2oa1f8vVrV9O7HuXNb3sjTwxm', 'teacher', '2345678910', NULL, '2021-07-30 13:12:42', '2021-07-30 13:12:42'),
(50, 'Good Teacher', 'goodteacher@gmail.com', NULL, '$2y$10$xgPfH4gVkF82yUjUIZFxO.4cSt7xari1tyzjGaJAiobsUF3fiBF6m', 'teacher', '1234567890', NULL, '2021-07-31 06:39:57', '2021-07-31 06:39:57'),
(51, 'New Teacher', 'newteacher@gmail.com', NULL, '$2y$10$WS7u6PWnhRjghYyxaOJfKeTTAspbb/xi6dm4TbhtPHa39p3OoO2SK', 'teacher', '1234567890', NULL, '2021-07-31 06:49:09', '2021-07-31 06:49:09'),
(52, 'New Teacher', 'newt@gmail.com', NULL, '$2y$10$Xh/5dZ/EF5PU78VgViaZquEPR0LXargtHyvoX5kbiaCNyWhhwezIe', 'teacher', '1234567890', NULL, '2021-07-31 06:54:04', '2021-07-31 06:54:04'),
(53, 'anandkshuklap', 'anandkshuklap@gmail.com', NULL, '$2y$10$LJrUdCr2baGgbCtXH3G3RueR7sTLBPpXFnS6Uy0ZWBQdPEWqvT8Xq', 'operation', '34567890', NULL, '2021-08-02 21:02:12', '2021-08-02 21:02:12'),
(55, 'anandkshukla singh', 'anandkshuklap123@gmail.com', NULL, '$2y$10$kvdgkuHfHwGQMpNXT3ZShOsVRO8J5VIvg1eYQFv/yvIcfjlqCA.9q', 'teacher', '2345890998', NULL, '2021-08-02 21:08:20', '2021-08-02 21:08:20'),
(57, 'secretpandaintown', 'secretpandaintown@gmail.com', NULL, '$2y$10$YApQKwam42hH4mdX0dbn8uzzIwly8G3ngu8i8R3mGJd0lzYg9/J.O', 'teacher', '4567876545', NULL, '2021-08-02 21:11:22', '2021-08-02 21:11:22'),
(58, 'New Teacher', 'tea@t.com', NULL, '$2y$10$YLR.T04YYxAsQVAGFoMDYOMo9jLv6BX4G9hRKKXbxsfM9B4sMv7jy', 'teacher', '1234567890', NULL, '2021-08-04 15:30:29', '2021-08-04 15:30:29'),
(59, 'Walter Lewin', 'ayonk007@gmail.com', NULL, '$2y$10$2QeghT5P0BiLYEOOwPKjFu6kW5KTmGv/haC7G4/SxNrjIQkiyxGo.', 'teacher', '8076810251', 'SYDgpwOmxO9ms8GJWv4JnT9mAyhs1b5amo3N9bdcVQ9ffPN6J9V8eJMlKAtZ', '2021-08-04 17:30:20', '2021-08-04 17:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_offs`
--

CREATE TABLE `weekly_offs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_homework_students`
--
ALTER TABLE `assigned_homework_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_home_works`
--
ALTER TABLE `assigned_home_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_home_work_answers`
--
ALTER TABLE `assigned_home_work_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_home_work_answers_assigned_home_work_id_foreign` (`assigned_home_work_id`),
  ADD KEY `assigned_home_work_answers_student_id_foreign` (`student_id`);

--
-- Indexes for table `assigned_home_work_answer_maps`
--
ALTER TABLE `assigned_home_work_answer_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_home_work_answer_maps_assigned_home_work_id_foreign` (`assigned_home_work_id`);

--
-- Indexes for table `assigned_home_work_students`
--
ALTER TABLE `assigned_home_work_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_live`
--
ALTER TABLE `batch_live`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_session`
--
ALTER TABLE `batch_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_topics`
--
ALTER TABLE `batch_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_masters`
--
ALTER TABLE `class_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_settings`
--
ALTER TABLE `class_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_mails`
--
ALTER TABLE `contact_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `created_sessions`
--
ALTER TABLE `created_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duration_per_sessions`
--
ALTER TABLE `duration_per_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `language_masers`
--
ALTER TABLE `language_masers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_sessions`
--
ALTER TABLE `order_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_session_maps`
--
ALTER TABLE `order_session_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `resource_masters`
--
ALTER TABLE `resource_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_topics`
--
ALTER TABLE `sub_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_experiences`
--
ALTER TABLE `teacher_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_experiences_user_id_foreign` (`user_id`);

--
-- Indexes for table `teacher_expertises`
--
ALTER TABLE `teacher_expertises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teacher_expertises_user_id_unique` (`user_id`);

--
-- Indexes for table `teacher_pricings`
--
ALTER TABLE `teacher_pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_pricings_user_id_foreign` (`user_id`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teacher_profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subjects_user_id_foreign` (`user_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weekly_offs`
--
ALTER TABLE `weekly_offs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_homework_students`
--
ALTER TABLE `assigned_homework_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `assigned_home_works`
--
ALTER TABLE `assigned_home_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `assigned_home_work_answers`
--
ALTER TABLE `assigned_home_work_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `assigned_home_work_answer_maps`
--
ALTER TABLE `assigned_home_work_answer_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `assigned_home_work_students`
--
ALTER TABLE `assigned_home_work_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `batch_live`
--
ALTER TABLE `batch_live`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batch_session`
--
ALTER TABLE `batch_session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `batch_topics`
--
ALTER TABLE `batch_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `class_masters`
--
ALTER TABLE `class_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_settings`
--
ALTER TABLE `class_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `contact_mails`
--
ALTER TABLE `contact_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `created_sessions`
--
ALTER TABLE `created_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `duration_per_sessions`
--
ALTER TABLE `duration_per_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_masers`
--
ALTER TABLE `language_masers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `order_sessions`
--
ALTER TABLE `order_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_session_maps`
--
ALTER TABLE `order_session_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `resource_masters`
--
ALTER TABLE `resource_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_topics`
--
ALTER TABLE `sub_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher_experiences`
--
ALTER TABLE `teacher_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_expertises`
--
ALTER TABLE `teacher_expertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_pricings`
--
ALTER TABLE `teacher_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `weekly_offs`
--
ALTER TABLE `weekly_offs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_home_work_answers`
--
ALTER TABLE `assigned_home_work_answers`
  ADD CONSTRAINT `assigned_home_work_answers_assigned_home_work_id_foreign` FOREIGN KEY (`assigned_home_work_id`) REFERENCES `assigned_home_works` (`id`),
  ADD CONSTRAINT `assigned_home_work_answers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assigned_home_work_answer_maps`
--
ALTER TABLE `assigned_home_work_answer_maps`
  ADD CONSTRAINT `assigned_home_work_answer_maps_assigned_home_work_id_foreign` FOREIGN KEY (`assigned_home_work_id`) REFERENCES `assigned_home_works` (`id`);

--
-- Constraints for table `teacher_experiences`
--
ALTER TABLE `teacher_experiences`
  ADD CONSTRAINT `teacher_experiences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teacher_expertises`
--
ALTER TABLE `teacher_expertises`
  ADD CONSTRAINT `teacher_expertises_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teacher_pricings`
--
ALTER TABLE `teacher_pricings`
  ADD CONSTRAINT `teacher_pricings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD CONSTRAINT `teacher_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD CONSTRAINT `teacher_subjects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
