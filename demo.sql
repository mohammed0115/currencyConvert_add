-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2021 at 05:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency_list`
--

CREATE TABLE `currency_list` (
  `id` int(11) NOT NULL,
  `currency_id` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_list`
--

INSERT INTO `currency_list` (`id`, `currency_id`, `currency_name`, `currency_symbol`) VALUES
(1, 'ALL', 'Albanian Lek', 'Lek'),
(2, 'XCD', 'East Caribbean Dollar', '$'),
(3, 'EUR', 'Euro', 'â‚¬'),
(4, 'BBD', 'Barbadian Dollar', '$'),
(5, 'BTN', 'Bhutanese Ngultrum', ''),
(6, 'BND', 'Brunei Dollar', '$'),
(7, 'XAF', 'Central African CFA Franc', ''),
(8, 'CUP', 'Cuban Peso', '$'),
(9, 'USD', 'United States Dollar', '$'),
(10, 'FKP', 'Falkland Islands Pound', 'Â£'),
(11, 'GIP', 'Gibraltar Pound', 'Â£'),
(12, 'HUF', 'Hungarian Forint', 'Ft'),
(13, 'IRR', 'Iranian Rial', 'ï·¼'),
(14, 'JMD', 'Jamaican Dollar', 'J$'),
(15, 'AUD', 'Australian Dollar', '$'),
(16, 'LAK', 'Lao Kip', 'â‚­'),
(17, 'LYD', 'Libyan Dinar', ''),
(18, 'MKD', 'Macedonian Denar', 'Ð´ÐµÐ½'),
(19, 'XOF', 'West African CFA Franc', ''),
(20, 'NZD', 'New Zealand Dollar', '$'),
(21, 'OMR', 'Omani Rial', 'ï·¼'),
(22, 'PGK', 'Papua New Guinean Kina', ''),
(23, 'RWF', 'Rwandan Franc', ''),
(24, 'WST', 'Samoan Tala', ''),
(25, 'RSD', 'Serbian Dinar', 'Ð”Ð¸Ð½.'),
(26, 'SEK', 'Swedish Krona', 'kr'),
(27, 'TZS', 'Tanzanian Shilling', 'TSh'),
(28, 'AMD', 'Armenian Dram', ''),
(29, 'BSD', 'Bahamian Dollar', '$'),
(30, 'BAM', 'Bosnia And Herzegovina Konvertibilna Marka', 'KM'),
(31, 'CVE', 'Cape Verdean Escudo', ''),
(32, 'CNY', 'Chinese Yuan', 'Â¥'),
(33, 'CRC', 'Costa Rican Colon', 'â‚¡'),
(34, 'CZK', 'Czech Koruna', 'KÄ'),
(35, 'ERN', 'Eritrean Nakfa', ''),
(36, 'GEL', 'Georgian Lari', ''),
(37, 'HTG', 'Haitian Gourde', ''),
(38, 'INR', 'Indian Rupee', 'â‚¹'),
(39, 'JOD', 'Jordanian Dinar', ''),
(40, 'KRW', 'South Korean Won', 'â‚©'),
(41, 'LBP', 'Lebanese Lira', 'Â£'),
(42, 'MWK', 'Malawian Kwacha', ''),
(43, 'MRO', 'Mauritanian Ouguiya', ''),
(44, 'MZN', 'Mozambican Metical', ''),
(45, 'ANG', 'Netherlands Antillean Gulden', 'Æ’'),
(46, 'PEN', 'Peruvian Nuevo Sol', 'S/.'),
(47, 'QAR', 'Qatari Riyal', 'ï·¼'),
(48, 'STD', 'Sao Tome And Principe Dobra', ''),
(49, 'SLL', 'Sierra Leonean Leone', ''),
(50, 'SOS', 'Somali Shilling', 'S'),
(51, 'SDG', 'Sudanese Pound', ''),
(52, 'SYP', 'Syrian Pound', 'Â£'),
(53, 'AOA', 'Angolan Kwanza', ''),
(54, 'AWG', 'Aruban Florin', 'Æ’'),
(55, 'BHD', 'Bahraini Dinar', ''),
(56, 'BZD', 'Belize Dollar', 'BZ$'),
(57, 'BWP', 'Botswana Pula', 'P'),
(58, 'BIF', 'Burundi Franc', ''),
(59, 'KYD', 'Cayman Islands Dollar', '$'),
(60, 'COP', 'Colombian Peso', '$'),
(61, 'DKK', 'Danish Krone', 'kr'),
(62, 'GTQ', 'Guatemalan Quetzal', 'Q'),
(63, 'HNL', 'Honduran Lempira', 'L'),
(64, 'IDR', 'Indonesian Rupiah', 'Rp'),
(65, 'ILS', 'Israeli New Sheqel', 'â‚ª'),
(66, 'KZT', 'Kazakhstani Tenge', 'Ð»Ð²'),
(67, 'KWD', 'Kuwaiti Dinar', ''),
(68, 'LSL', 'Lesotho Loti', ''),
(69, 'MYR', 'Malaysian Ringgit', 'RM'),
(70, 'MUR', 'Mauritian Rupee', 'â‚¨'),
(71, 'MNT', 'Mongolian Tugrik', 'â‚®'),
(72, 'MMK', 'Myanma Kyat', ''),
(73, 'NGN', 'Nigerian Naira', 'â‚¦'),
(74, 'PAB', 'Panamanian Balboa', 'B/.'),
(75, 'PHP', 'Philippine Peso', 'â‚±'),
(76, 'RON', 'Romanian Leu', 'lei'),
(77, 'SAR', 'Saudi Riyal', 'ï·¼'),
(78, 'SGD', 'Singapore Dollar', '$'),
(79, 'ZAR', 'South African Rand', 'R'),
(80, 'SRD', 'Surinamese Dollar', '$'),
(81, 'TWD', 'New Taiwan Dollar', 'NT$'),
(82, 'TOP', 'Paanga', ''),
(83, 'VEF', 'Venezuelan Bolivar', ''),
(84, 'DZD', 'Algerian Dinar', ''),
(85, 'ARS', 'Argentine Peso', '$'),
(86, 'AZN', 'Azerbaijani Manat', 'Ð¼Ð°Ð½'),
(87, 'BYR', 'Belarusian Ruble', 'p.'),
(88, 'BOB', 'Bolivian Boliviano', '$b'),
(89, 'BGN', 'Bulgarian Lev', 'Ð»Ð²'),
(90, 'CAD', 'Canadian Dollar', '$'),
(91, 'CLP', 'Chilean Peso', '$'),
(92, 'CDF', 'Congolese Franc', ''),
(93, 'DOP', 'Dominican Peso', 'RD$'),
(94, 'FJD', 'Fijian Dollar', '$'),
(95, 'GMD', 'Gambian Dalasi', ''),
(96, 'GYD', 'Guyanese Dollar', '$'),
(97, 'ISK', 'Icelandic KrÃ³na', 'kr'),
(98, 'IQD', 'Iraqi Dinar', ''),
(99, 'JPY', 'Japanese Yen', 'Â¥'),
(100, 'KPW', 'North Korean Won', 'â‚©'),
(101, 'LVL', 'Latvian Lats', 'Ls'),
(102, 'CHF', 'Swiss Franc', 'Fr.'),
(103, 'MGA', 'Malagasy Ariary', ''),
(104, 'MDL', 'Moldovan Leu', ''),
(105, 'MAD', 'Moroccan Dirham', ''),
(106, 'NPR', 'Nepalese Rupee', 'â‚¨'),
(107, 'NIO', 'Nicaraguan Cordoba', 'C$'),
(108, 'PKR', 'Pakistani Rupee', 'â‚¨'),
(109, 'PYG', 'Paraguayan Guarani', 'Gs'),
(110, 'SHP', 'Saint Helena Pound', 'Â£'),
(111, 'SCR', 'Seychellois Rupee', 'â‚¨'),
(112, 'SBD', 'Solomon Islands Dollar', '$'),
(113, 'LKR', 'Sri Lankan Rupee', 'â‚¨'),
(114, 'THB', 'Thai Baht', 'à¸¿'),
(115, 'TRY', 'Turkish New Lira', ''),
(116, 'AED', 'UAE Dirham', ''),
(117, 'VUV', 'Vanuatu Vatu', ''),
(118, 'YER', 'Yemeni Rial', 'ï·¼'),
(119, 'AFN', 'Afghan Afghani', 'Ø‹'),
(120, 'BDT', 'Bangladeshi Taka', ''),
(121, 'BRL', 'Brazilian Real', 'R$'),
(122, 'KHR', 'Cambodian Riel', 'áŸ›'),
(123, 'KMF', 'Comorian Franc', ''),
(124, 'HRK', 'Croatian Kuna', 'kn'),
(125, 'DJF', 'Djiboutian Franc', ''),
(126, 'EGP', 'Egyptian Pound', 'Â£'),
(127, 'ETB', 'Ethiopian Birr', ''),
(128, 'XPF', 'CFP Franc', ''),
(129, 'GHS', 'Ghanaian Cedi', ''),
(130, 'GNF', 'Guinean Franc', ''),
(131, 'HKD', 'Hong Kong Dollar', '$'),
(132, 'XDR', 'Special Drawing Rights', ''),
(133, 'KES', 'Kenyan Shilling', 'KSh'),
(134, 'KGS', 'Kyrgyzstani Som', 'Ð»Ð²'),
(135, 'LRD', 'Liberian Dollar', '$'),
(136, 'MOP', 'Macanese Pataca', ''),
(137, 'MVR', 'Maldivian Rufiyaa', ''),
(138, 'MXN', 'Mexican Peso', '$'),
(139, 'NAD', 'Namibian Dollar', '$'),
(140, 'NOK', 'Norwegian Krone', 'kr'),
(141, 'PLN', 'Polish Zloty', 'zÅ‚'),
(142, 'RUB', 'Russian Ruble', 'Ñ€ÑƒÐ±'),
(143, 'SZL', 'Swazi Lilangeni', ''),
(144, 'TJS', 'Tajikistani Somoni', ''),
(145, 'TTD', 'Trinidad and Tobago Dollar', 'TT$'),
(146, 'UGX', 'Ugandan Shilling', 'USh'),
(147, 'UYU', 'Uruguayan Peso', '$U'),
(148, 'VND', 'Vietnamese Dong', 'â‚«'),
(149, 'TND', 'Tunisian Dinar', ''),
(150, 'UAH', 'Ukrainian Hryvnia', 'â‚´'),
(151, 'UZS', 'Uzbekistani Som', 'Ð»Ð²'),
(152, 'TMT', 'Turkmenistan Manat', ''),
(153, 'GBP', 'British Pound', 'Â£'),
(154, 'ZMW', 'Zambian Kwacha', ''),
(155, 'BTC', 'Bitcoin', 'BTC'),
(156, 'BYN', 'New Belarusian Ruble', 'p.');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rate`
--

CREATE TABLE `exchange_rate` (
  `rate` double(20,2) NOT NULL,
  `cuId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `exchange_rate`
--

INSERT INTO `exchange_rate` (`rate`, `cuId`) VALUES
(400.00, 1),
(200.00, 2),
(3.22, 3),
(1.00, 10),
(420.00, 51),
(0.05, 74);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency_list`
--
ALTER TABLE `currency_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exchange_rate`
--
ALTER TABLE `exchange_rate`
  ADD PRIMARY KEY (`cuId`),
  ADD KEY `cuId` (`cuId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currency_list`
--
ALTER TABLE `currency_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exchange_rate`
--
ALTER TABLE `exchange_rate`
  ADD CONSTRAINT `exchange_rate_ibfk_1` FOREIGN KEY (`cuId`) REFERENCES `currency_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
