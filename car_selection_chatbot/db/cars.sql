-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2025 at 06:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(20) DEFAULT NULL,
  `transmission` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `seating_capacity` int(11) DEFAULT NULL,
  `body_type` varchar(50) DEFAULT NULL,
  `mileage` decimal(4,1) DEFAULT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `safety_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `fuel_type`, `transmission`, `price`, `seating_capacity`, `body_type`, `mileage`, `engine`, `safety_rating`) VALUES
(1, 'Maruti Swift', 'Maruti', 'Petrol', 'Manual', 650000, 5, 'Hatchback', 22.0, '1.2L', 3),
(2, 'Hyundai i20', 'Hyundai', 'Petrol', 'Automatic', 900000, 5, 'Hatchback', 20.5, '1.2L', 4),
(3, 'Tata Nexon EV', 'Tata', 'Electric', 'Automatic', 1500000, 5, 'SUV', 300.0, 'EV Motor', 5),
(4, 'Mahindra XUV700', 'Mahindra', 'Diesel', 'Manual', 1800000, 7, 'SUV', 17.0, '2.2L', 5),
(5, 'Kia Seltos', 'Kia', 'Petrol', 'Automatic', 1600000, 5, 'SUV', 18.0, '1.5L', 4),
(6, 'Toyota Innova Crysta', 'Toyota', 'Diesel', 'Manual', 2400000, 7, 'MPV', 15.6, '2.4L', 5),
(7, 'Honda City', 'Honda', 'Petrol', 'Manual', 1200000, 5, 'Sedan', 18.4, '1.5L', 4),
(8, 'MG ZS EV', 'MG', 'Electric', 'Automatic', 2200000, 5, 'SUV', 419.0, 'EV Motor', 5),
(9, 'Hyundai Verna', 'Hyundai', 'Petrol', 'Automatic', 1450000, 5, 'Sedan', 19.0, '1.5L', 4),
(10, 'Renault Kwid', 'Renault', 'Petrol', 'Manual', 500000, 5, 'Hatchback', 22.3, '1.0L', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
