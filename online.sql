-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Bernard', '2020-05-10', 95000, 2),
(2, 'Mary', '2021-07-25', 65000, 1),
(3, 'James', '2021-07-22', 48000, 2),
(5, 'Brian Mwangi', '2021-03-15', 75000, 1),
(7, 'Kevin Otieno', '2023-01-08', 92000, 3),
(8, 'Mercy Achieng', '2021-11-19', 54000, 1),
(9, 'Dennis Kiprotich', '2022-04-25', 88000, 2),
(12, 'Lucy Atieno', '2022-12-05', 63000, 2),
(13, 'Samuel Mutua', '2024-02-17', 99000, 3),
(14, 'Grace Nyambura', '2021-05-14', 72000, 1),
(15, 'Eric Ochieng', '2023-03-21', 58000, 2),
(16, 'Jane Wambui', '2022-07-09', 81000, 3),
(17, 'Daniel Kiplagat', '2024-06-11', 120000, 1),
(18, 'Mary Waithera', '2021-10-28', 53000, 2),
(19, 'Joseph Maina', '2023-05-16', 87000, 3),
(20, 'Esther Chebet', '2022-09-03', 69000, 1),
(21, 'John Kariuki', '2024-01-20', 105000, 2),
(22, 'Cynthia Akinyi', '2021-04-18', 46000, 3),
(23, 'Paul Musyoka', '2023-08-07', 97000, 1),
(24, 'Beatrice Muthoni', '2022-02-14', 62000, 2),
(25, 'George Odhiambo', '2024-03-29', 115000, 3),
(26, 'Irene Jepkosgei', '2021-12-01', 57000, 1),
(27, 'Patrick Mwenda', '2023-10-23', 89000, 2),
(28, 'Lilian Naliaka', '2022-05-27', 73000, 3),
(29, 'Victor Ombati', '2024-07-04', 108000, 1),
(101, 'Ann Njeri', '2023-09-12', 47000, 3),
(102, 'Jessica', '2026-02-01', 185000, 2),
(103, 'Milka Mwende', '2020-07-08', 55000, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
