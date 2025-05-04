-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2025 at 11:42 PM
-- Server version: 8.0.39
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars_galore`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `make`, `year`, `price`, `image`) VALUES
(1, 'Corolla', 'Toyota', 2023, '48329.00', ''),
(2, 'Camry', 'Toyota', 2016, '46433.00', ''),
(3, 'Civic', 'Honda', 2020, '37503.00', ''),
(4, 'Accord', 'Honda', 2015, '45452.00', ''),
(5, 'Focus', 'Ford', 2017, '44800.00', ''),
(6, 'Fiesta', 'Ford', 2023, '12306.00', ''),
(7, '3 Series', 'BMW', 2024, '50949.00', ''),
(8, '5 Series', 'BMW', 2015, '46794.00', ''),
(9, 'A3', 'Audi', 2017, '30808.00', ''),
(10, 'A4', 'Audi', 2017, '49074.00', ''),
(11, 'C Class', 'Mercedes', 2022, '34012.00', ''),
(12, 'E Class', 'Mercedes', 2021, '24453.00', ''),
(13, 'Altima', 'Nissan', 2018, '51121.00', ''),
(14, 'Sentra', 'Nissan', 2021, '30636.00', ''),
(15, 'Golf', 'Volkswagen', 2016, '28734.00', ''),
(16, 'Passat', 'Volkswagen', 2024, '23034.00', ''),
(17, 'Elantra', 'Hyundai', 2024, '36148.00', ''),
(18, 'Sonata', 'Hyundai', 2021, '43588.00', ''),
(19, 'Optima', 'Kia', 2017, '40222.00', ''),
(20, 'Forte', 'Kia', 2024, '47656.00', ''),
(21, 'Mazda3', 'Mazda', 2021, '25037.00', ''),
(22, 'Mazda6', 'Mazda', 2021, '12089.00', ''),
(23, 'Impreza', 'Subaru', 2016, '37222.00', ''),
(24, 'Legacy', 'Subaru', 2020, '38182.00', ''),
(25, '308', 'Peugeot', 2017, '50553.00', ''),
(26, '208', 'Peugeot', 2018, '22886.00', ''),
(27, 'Clio', 'Renault', 2019, '28673.00', ''),
(28, 'Megane', 'Renault', 2024, '35531.00', ''),
(29, 'Malibu', 'Chevrolet', 2023, '49598.00', ''),
(30, 'Cruze', 'Chevrolet', 2023, '43383.00', ''),
(31, 'Model 3', 'Tesla', 2015, '43768.00', ''),
(32, 'Model S', 'Tesla', 2021, '23490.00', ''),
(33, 'S60', 'Volvo', 2017, '33372.00', ''),
(34, 'XC60', 'Volvo', 2023, '46460.00', ''),
(35, 'IS', 'Lexus', 2020, '43210.00', ''),
(36, 'ES', 'Lexus', 2021, '20184.00', ''),
(37, 'XE', 'Jaguar', 2017, '41576.00', ''),
(38, 'XF', 'Jaguar', 2019, '21658.00', ''),
(39, 'Discovery', 'Land Rover', 2024, '40135.00', ''),
(40, 'Range Rover Evoque', 'Land Rover', 2019, '12570.00', ''),
(41, 'Cherokee', 'Jeep', 2019, '50440.00', ''),
(42, 'Grand Cherokee', 'Jeep', 2016, '38142.00', ''),
(43, 'Octavia', 'Skoda', 2018, '53417.00', ''),
(44, 'Superb', 'Skoda', 2022, '52968.00', ''),
(45, 'Punto', 'Fiat', 2016, '43698.00', ''),
(46, '500', 'Fiat', 2023, '37813.00', ''),
(47, 'Cooper', 'Mini', 2024, '47943.00', ''),
(48, 'Countryman', 'Mini', 2018, '24901.00', ''),
(49, 'Swift', 'Suzuki', 2018, '54192.00', ''),
(50, 'Vitara', 'Suzuki', 2024, '15427.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'Klevis Malaj', 'klevism09@gmail.com', '0894905851', 'hello', '2025-04-28 05:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Klevis Malaj', 'klevism09@gmail.com', 'thank you', '2025-04-28 05:57:55'),
(2, 'Klevis Malaj', 'klevism09@gmail.com', 'thank you very much', '2025-04-28 09:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `finance_applications`
--

CREATE TABLE `finance_applications` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `income` decimal(10,2) NOT NULL,
  `loan_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `finance_applications`
--

INSERT INTO `finance_applications` (`id`, `name`, `income`, `loan_amount`, `created_at`) VALUES
(1, 'Klevis Malaj', '15000.00', '150000.00', '2025-04-28 05:38:04'),
(2, 'Klevis Malaj0', '20222.00', '1000.00', '2025-04-28 09:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `trade_in`
--

CREATE TABLE `trade_in` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `car_year` int NOT NULL,
  `car_condition` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trade_in`
--

INSERT INTO `trade_in` (`id`, `name`, `car_model`, `car_year`, `car_condition`, `created_at`) VALUES
(1, 'Klevis Malaj', 'Mercedes', 2011, 'mint', '2025-04-28 05:59:39'),
(2, 'Klevis Malaj', 'Mercedes', 2012, 'mint', '2025-04-28 09:24:32'),
(3, 'Klevis Malaj', 'Mercedes', 2014, 'good', '2025-04-28 09:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'klevismalaj', '1234'),
(3, 'klevismalaj2', '$2y$10$Z.n7MF0owaWJuYUxFKxBRepj1bjypneVQTmnvm9ySbVz3jeC84EpW'),
(4, 'vkas', '$2y$10$AJLsI76apfZg5EiN5g12ye4LmsiEN.V.2HnHmIL5/09D6BqrR/Z/i'),
(5, 'seanmc', '$2y$10$83mtuxR2YNF5RluKeVF23eJizVBGUCLhrJcfY07nYexdlbobJLhYe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_applications`
--
ALTER TABLE `finance_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade_in`
--
ALTER TABLE `trade_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `finance_applications`
--
ALTER TABLE `finance_applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trade_in`
--
ALTER TABLE `trade_in`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
