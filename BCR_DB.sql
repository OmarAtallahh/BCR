-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2019 at 06:41 PM
-- Server version: 8.0.15
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BCR_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$M37/5bLKR6WCwivd2pOmGOhGe6IfTG0SCH3lZBubkv9Q0Vgmodn4K', NULL, '2019-03-06 19:14:57', '2019-03-06 19:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `admin_link`
--

CREATE TABLE `admin_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps_countries`
--

CREATE TABLE `apps_countries` (
  `id` int(10) NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps_countries`
--

INSERT INTO `apps_countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', NULL, NULL),
(2, 'AL', 'Albania', NULL, NULL),
(3, 'DZ', 'Algeria', NULL, NULL),
(4, 'DS', 'American Samoa', NULL, NULL),
(5, 'AD', 'Andorra', NULL, NULL),
(6, 'AO', 'Angola', NULL, NULL),
(7, 'AI', 'Anguilla', NULL, NULL),
(8, 'AQ', 'Antarctica', NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', NULL, NULL),
(10, 'AR', 'Argentina', NULL, NULL),
(11, 'AM', 'Armenia', NULL, NULL),
(12, 'AW', 'Aruba', NULL, NULL),
(13, 'AU', 'Australia', NULL, NULL),
(14, 'AT', 'Austria', NULL, NULL),
(15, 'AZ', 'Azerbaijan', NULL, NULL),
(16, 'BS', 'Bahamas', NULL, NULL),
(17, 'BH', 'Bahrain', NULL, NULL),
(18, 'BD', 'Bangladesh', NULL, NULL),
(19, 'BB', 'Barbados', NULL, NULL),
(20, 'BY', 'Belarus', NULL, NULL),
(21, 'BE', 'Belgium', NULL, NULL),
(22, 'BZ', 'Belize', NULL, NULL),
(23, 'BJ', 'Benin', NULL, NULL),
(24, 'BM', 'Bermuda', NULL, NULL),
(25, 'BT', 'Bhutan', NULL, NULL),
(26, 'BO', 'Bolivia', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', NULL, NULL),
(28, 'BW', 'Botswana', NULL, NULL),
(29, 'BV', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'Brazil', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'Brunei Darussalam', NULL, NULL),
(33, 'BG', 'Bulgaria', NULL, NULL),
(34, 'BF', 'Burkina Faso', NULL, NULL),
(35, 'BI', 'Burundi', NULL, NULL),
(36, 'KH', 'Cambodia', NULL, NULL),
(37, 'CM', 'Cameroon', NULL, NULL),
(38, 'CA', 'Canada', NULL, NULL),
(39, 'CV', 'Cape Verde', NULL, NULL),
(40, 'KY', 'Cayman Islands', NULL, NULL),
(41, 'CF', 'Central African Republic', NULL, NULL),
(42, 'TD', 'Chad', NULL, NULL),
(43, 'CL', 'Chile', NULL, NULL),
(44, 'CN', 'China', NULL, NULL),
(45, 'CX', 'Christmas Island', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'Colombia', NULL, NULL),
(48, 'KM', 'Comoros', NULL, NULL),
(49, 'CG', 'Congo', NULL, NULL),
(50, 'CK', 'Cook Islands', NULL, NULL),
(51, 'CR', 'Costa Rica', NULL, NULL),
(52, 'HR', 'Croatia (Hrvatska)', NULL, NULL),
(53, 'CU', 'Cuba', NULL, NULL),
(54, 'CY', 'Cyprus', NULL, NULL),
(55, 'CZ', 'Czech Republic', NULL, NULL),
(56, 'DK', 'Denmark', NULL, NULL),
(57, 'DJ', 'Djibouti', NULL, NULL),
(58, 'DM', 'Dominica', NULL, NULL),
(59, 'DO', 'Dominican Republic', NULL, NULL),
(60, 'TP', 'East Timor', NULL, NULL),
(61, 'EC', 'Ecuador', NULL, NULL),
(62, 'EG', 'Egypt', NULL, NULL),
(63, 'SV', 'El Salvador', NULL, NULL),
(64, 'GQ', 'Equatorial Guinea', NULL, NULL),
(65, 'ER', 'Eritrea', NULL, NULL),
(66, 'EE', 'Estonia', NULL, NULL),
(67, 'ET', 'Ethiopia', NULL, NULL),
(68, 'FK', 'Falkland Islands (Malvinas)', NULL, NULL),
(69, 'FO', 'Faroe Islands', NULL, NULL),
(70, 'FJ', 'Fiji', NULL, NULL),
(71, 'FI', 'Finland', NULL, NULL),
(72, 'FR', 'France', NULL, NULL),
(73, 'FX', 'France, Metropolitan', NULL, NULL),
(74, 'GF', 'French Guiana', NULL, NULL),
(75, 'PF', 'French Polynesia', NULL, NULL),
(76, 'TF', 'French Southern Territories', NULL, NULL),
(77, 'GA', 'Gabon', NULL, NULL),
(78, 'GM', 'Gambia', NULL, NULL),
(79, 'GE', 'Georgia', NULL, NULL),
(80, 'DE', 'Germany', NULL, NULL),
(81, 'GH', 'Ghana', NULL, NULL),
(82, 'GI', 'Gibraltar', NULL, NULL),
(83, 'GK', 'Guernsey', NULL, NULL),
(84, 'GR', 'Greece', NULL, NULL),
(85, 'GL', 'Greenland', NULL, NULL),
(86, 'GD', 'Grenada', NULL, NULL),
(87, 'GP', 'Guadeloupe', NULL, NULL),
(88, 'GU', 'Guam', NULL, NULL),
(89, 'GT', 'Guatemala', NULL, NULL),
(90, 'GN', 'Guinea', NULL, NULL),
(91, 'GW', 'Guinea-Bissau', NULL, NULL),
(92, 'GY', 'Guyana', NULL, NULL),
(93, 'HT', 'Haiti', NULL, NULL),
(94, 'HM', 'Heard and Mc Donald Islands', NULL, NULL),
(95, 'HN', 'Honduras', NULL, NULL),
(96, 'HK', 'Hong Kong', NULL, NULL),
(97, 'HU', 'Hungary', NULL, NULL),
(98, 'IS', 'Iceland', NULL, NULL),
(99, 'IN', 'India', NULL, NULL),
(100, 'IM', 'Isle of Man', NULL, NULL),
(101, 'ID', 'Indonesia', NULL, NULL),
(102, 'IR', 'Iran (Islamic Republic of)', NULL, NULL),
(103, 'IQ', 'Iraq', NULL, NULL),
(104, 'IE', 'Ireland', NULL, NULL),
(105, 'IL', 'Israel', NULL, NULL),
(106, 'IT', 'Italy', NULL, NULL),
(107, 'CI', 'Ivory Coast', NULL, NULL),
(108, 'JE', 'Jersey', NULL, NULL),
(109, 'JM', 'Jamaica', NULL, NULL),
(110, 'JP', 'Japan', NULL, NULL),
(111, 'JO', 'Jordan', NULL, NULL),
(112, 'KZ', 'Kazakhstan', NULL, NULL),
(113, 'KE', 'Kenya', NULL, NULL),
(114, 'KI', 'Kiribati', NULL, NULL),
(115, 'KP', 'Korea, Democratic People\'s Republic of', NULL, NULL),
(116, 'KR', 'Korea, Republic of', NULL, NULL),
(117, 'XK', 'Kosovo', NULL, NULL),
(118, 'KW', 'Kuwait', NULL, NULL),
(119, 'KG', 'Kyrgyzstan', NULL, NULL),
(120, 'LA', 'Lao People\'s Democratic Republic', NULL, NULL),
(121, 'LV', 'Latvia', NULL, NULL),
(122, 'LB', 'Lebanon', NULL, NULL),
(123, 'LS', 'Lesotho', NULL, NULL),
(124, 'LR', 'Liberia', NULL, NULL),
(125, 'LY', 'Libyan Arab Jamahiriya', NULL, NULL),
(126, 'LI', 'Liechtenstein', NULL, NULL),
(127, 'LT', 'Lithuania', NULL, NULL),
(128, 'LU', 'Luxembourg', NULL, NULL),
(129, 'MO', 'Macau', NULL, NULL),
(130, 'MK', 'Macedonia', NULL, NULL),
(131, 'MG', 'Madagascar', NULL, NULL),
(132, 'MW', 'Malawi', NULL, NULL),
(133, 'MY', 'Malaysia', NULL, NULL),
(134, 'MV', 'Maldives', NULL, NULL),
(135, 'ML', 'Mali', NULL, NULL),
(136, 'MT', 'Malta', NULL, NULL),
(137, 'MH', 'Marshall Islands', NULL, NULL),
(138, 'MQ', 'Martinique', NULL, NULL),
(139, 'MR', 'Mauritania', NULL, NULL),
(140, 'MU', 'Mauritius', NULL, NULL),
(141, 'TY', 'Mayotte', NULL, NULL),
(142, 'MX', 'Mexico', NULL, NULL),
(143, 'FM', 'Micronesia, Federated States of', NULL, NULL),
(144, 'MD', 'Moldova, Republic of', NULL, NULL),
(145, 'MC', 'Monaco', NULL, NULL),
(146, 'MN', 'Mongolia', NULL, NULL),
(147, 'ME', 'Montenegro', NULL, NULL),
(148, 'MS', 'Montserrat', NULL, NULL),
(149, 'MA', 'Morocco', NULL, NULL),
(150, 'MZ', 'Mozambique', NULL, NULL),
(151, 'MM', 'Myanmar', NULL, NULL),
(152, 'NA', 'Namibia', NULL, NULL),
(153, 'NR', 'Nauru', NULL, NULL),
(154, 'NP', 'Nepal', NULL, NULL),
(155, 'NL', 'Netherlands', NULL, NULL),
(156, 'AN', 'Netherlands Antilles', NULL, NULL),
(157, 'NC', 'New Caledonia', NULL, NULL),
(158, 'NZ', 'New Zealand', NULL, NULL),
(159, 'NI', 'Nicaragua', NULL, NULL),
(160, 'NE', 'Niger', NULL, NULL),
(161, 'NG', 'Nigeria', NULL, NULL),
(162, 'NU', 'Niue', NULL, NULL),
(163, 'NF', 'Norfolk Island', NULL, NULL),
(164, 'MP', 'Northern Mariana Islands', NULL, NULL),
(165, 'NO', 'Norway', NULL, NULL),
(166, 'OM', 'Oman', NULL, NULL),
(167, 'PK', 'Pakistan', NULL, NULL),
(168, 'PW', 'Palau', NULL, NULL),
(169, 'PS', 'Palestine', NULL, NULL),
(170, 'PA', 'Panama', NULL, NULL),
(171, 'PG', 'Papua New Guinea', NULL, NULL),
(172, 'PY', 'Paraguay', NULL, NULL),
(173, 'PE', 'Peru', NULL, NULL),
(174, 'PH', 'Philippines', NULL, NULL),
(175, 'PN', 'Pitcairn', NULL, NULL),
(176, 'PL', 'Poland', NULL, NULL),
(177, 'PT', 'Portugal', NULL, NULL),
(178, 'PR', 'Puerto Rico', NULL, NULL),
(179, 'QA', 'Qatar', NULL, NULL),
(180, 'RE', 'Reunion', NULL, NULL),
(181, 'RO', 'Romania', NULL, NULL),
(182, 'RU', 'Russian Federation', NULL, NULL),
(183, 'RW', 'Rwanda', NULL, NULL),
(184, 'KN', 'Saint Kitts and Nevis', NULL, NULL),
(185, 'LC', 'Saint Lucia', NULL, NULL),
(186, 'VC', 'Saint Vincent and the Grenadines', NULL, NULL),
(187, 'WS', 'Samoa', NULL, NULL),
(188, 'SM', 'San Marino', NULL, NULL),
(189, 'ST', 'Sao Tome and Principe', NULL, NULL),
(190, 'SA', 'Saudi Arabia', NULL, NULL),
(191, 'SN', 'Senegal', NULL, NULL),
(192, 'RS', 'Serbia', NULL, NULL),
(193, 'SC', 'Seychelles', NULL, NULL),
(194, 'SL', 'Sierra Leone', NULL, NULL),
(195, 'SG', 'Singapore', NULL, NULL),
(196, 'SK', 'Slovakia', NULL, NULL),
(197, 'SI', 'Slovenia', NULL, NULL),
(198, 'SB', 'Solomon Islands', NULL, NULL),
(199, 'SO', 'Somalia', NULL, NULL),
(200, 'ZA', 'South Africa', NULL, NULL),
(201, 'GS', 'South Georgia South Sandwich Islands', NULL, NULL),
(202, 'SS', 'South Sudan', NULL, NULL),
(203, 'ES', 'Spain', NULL, NULL),
(204, 'LK', 'Sri Lanka', NULL, NULL),
(205, 'SH', 'St. Helena', NULL, NULL),
(206, 'PM', 'St. Pierre and Miquelon', NULL, NULL),
(207, 'SD', 'Sudan', NULL, NULL),
(208, 'SR', 'Suriname', NULL, NULL),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', NULL, NULL),
(210, 'SZ', 'Swaziland', NULL, NULL),
(211, 'SE', 'Sweden', NULL, NULL),
(212, 'CH', 'Switzerland', NULL, NULL),
(213, 'SY', 'Syrian Arab Republic', NULL, NULL),
(214, 'TW', 'Taiwan', NULL, NULL),
(215, 'TJ', 'Tajikistan', NULL, NULL),
(216, 'TZ', 'Tanzania, United Republic of', NULL, NULL),
(217, 'TH', 'Thailand', NULL, NULL),
(218, 'TG', 'Togo', NULL, NULL),
(219, 'TK', 'Tokelau', NULL, NULL),
(220, 'TO', 'Tonga', NULL, NULL),
(221, 'TT', 'Trinidad and Tobago', NULL, NULL),
(222, 'TN', 'Tunisia', NULL, NULL),
(223, 'TR', 'Turkey', NULL, NULL),
(224, 'TM', 'Turkmenistan', NULL, NULL),
(225, 'TC', 'Turks and Caicos Islands', NULL, NULL),
(226, 'TV', 'Tuvalu', NULL, NULL),
(227, 'UG', 'Uganda', NULL, NULL),
(228, 'UA', 'Ukraine', NULL, NULL),
(229, 'AE', 'United Arab Emirates', NULL, NULL),
(230, 'GB', 'United Kingdom', NULL, NULL),
(231, 'US', 'United States', NULL, NULL),
(232, 'UM', 'United States minor outlying islands', NULL, NULL),
(233, 'UY', 'Uruguay', NULL, NULL),
(234, 'UZ', 'Uzbekistan', NULL, NULL),
(235, 'VU', 'Vanuatu', NULL, NULL),
(236, 'VA', 'Vatican City State', NULL, NULL),
(237, 'VE', 'Venezuela', NULL, NULL),
(238, 'VN', 'Vietnam', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', NULL, NULL),
(240, 'VI', 'Virgin Islands (U.S.)', NULL, NULL),
(241, 'WF', 'Wallis and Futuna Islands', NULL, NULL),
(242, 'EH', 'Western Sahara', NULL, NULL),
(243, 'YE', 'Yemen', NULL, NULL),
(244, 'ZR', 'Zaire', NULL, NULL),
(245, 'ZM', 'Zambia', NULL, NULL),
(246, 'ZW', 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `country_id` int(10) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `hospital_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `email`, `password`, `remember_token`, `first_name`, `last_name`, `job_id`, `country_id`, `phone_number`, `hospital_name`, `isdelete`, `created_at`, `updated_at`) VALUES
(12, 'omar@omar.com', 'asdasd', NULL, 'omar', 'assads', 3, 15, 258851233, 'AWDA', 0, '2019-03-06 09:14:16', '2019-03-06 09:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_19_101023_create_admins_table', 1),
(4, '2019_02_19_101531_create_doctors_table', 1),
(5, '2019_02_19_124048_creat_link_table', 1),
(6, '2019_02_19_124103_creat_admin_link_table', 1),
(7, '2019_02_20_074304_create_patients_table', 1),
(10, '2019_03_06_101150_create_apps_countries', 2);

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `Name`, `phone_number`, `age`, `email`, `adress`, `image`, `created_at`, `updated_at`) VALUES
(1, 'asma', '97055226584', 22, 'asma@asmaa.com', 'plaestine/gaza/talElhawa/alquds streeet/114', '1.jpg', '2019-03-20 00:27:00', '2019-03-14 12:29:29'),
(2, 'Odette', '97052248966', 35, 'Suspendisse@lobortis.org', '6213 Sem Street', '2.jpg', NULL, NULL),
(3, 'Tallulah', '97022514856', 88, 'porttitor@nonummyac.net', '795-6826 Venenatis Rd.', '3.jpg', NULL, NULL),
(4, 'Ingrid', '95877885246', 83, 'diam.Pellentesque.habitant@eget.com', 'P.O. Box 176, 2170 Gravida. Av.', '4.jpg', NULL, NULL),
(5, 'Halee', '93665284587', 75, 'tincidunt@orcitincidunt.com', '3871 Pede, St.', '5.jpg', NULL, NULL),
(6, 'Judith', '97256498456', 50, 'dui@acnulla.edu', '918-572 Eget Rd.', '6.jpg', NULL, NULL),
(7, 'Minerva', '95884575858', 38, 'lectus@ipsumac.ca', '7409 Pellentesque Rd.', '7.jpg', NULL, NULL),
(8, 'Raya', '95285558455', 66, 'ornare.Fusce@malesuadafamesac.co.uk', '8016 Neque Rd.', '8.jpg', NULL, NULL),
(10, 'Fleur', '98755884756', 34, 'ultricies@diam.edu', 'P.O. Box 668, 1002 Luctus Street', '10.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) NOT NULL,
  `report` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report`, `created_at`, `updated_at`) VALUES
(1, 'there is a problem here', '2019-02-24 13:44:44', '2019-02-24 13:44:44'),
(2, 'second problem  second problem second problem second problem second problem second problem second problem second problem second problem second problem', '2019-02-24 14:22:02', '2019-02-24 14:22:02'),
(3, 'test report', '2019-02-26 13:12:34', '2019-02-26 13:12:34'),
(4, 'this is problem', '2019-02-27 12:25:12', '2019-02-27 12:25:12'),
(5, 'this is a nother problem', '2019-02-27 12:25:52', '2019-02-27 12:25:52'),
(6, 'problems in add doctors section', '2019-02-27 12:35:18', '2019-02-27 12:35:18'),
(7, 'error', '2019-02-27 12:40:11', '2019-02-27 12:40:11'),
(8, 'errors', '2019-03-03 08:34:44', '2019-03-03 08:34:44'),
(9, 'errorrs', '2019-03-03 08:39:16', '2019-03-03 08:39:16'),
(10, 'errors', '2019-03-06 11:41:05', '2019-03-06 11:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_link`
--
ALTER TABLE `admin_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_countries`
--
ALTER TABLE `apps_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`),
  ADD KEY `id_4` (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD UNIQUE KEY `country_id` (`country_id`),
  ADD KEY `country_id_2` (`country_id`),
  ADD KEY `country_id_3` (`country_id`),
  ADD KEY `country_id_4` (`country_id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
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
-- AUTO_INCREMENT for table `admin_link`
--
ALTER TABLE `admin_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps_countries`
--
ALTER TABLE `apps_countries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `country_realation` FOREIGN KEY (`country_id`) REFERENCES `apps_countries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
