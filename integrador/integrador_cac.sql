-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2023 at 05:36 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Table structure for table `oradores`
--

CREATE TABLE `oradores` (
  `id` int UNSIGNED NOT NULL,
  `nombre` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tema` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_alta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `email`, `tema`, `fecha_alta`) VALUES
(1, 'Ada', 'Lovelace', 'sit.amet@outlook.edu', 'Como comenzar con tu start-up', '2023-10-19 22:49:05'),
(2, 'Lisandra', 'Harmon', 'pretium.neque@outlook.org', '¿Php está muerto?', '2023-03-21 06:32:42'),
(3, 'Hyatt', 'Burke', 'nulla@hotmail.com', 'Los milagros de los lenguajes interpretados', '2023-06-22 23:05:36'),
(4, 'Steve', 'Jobs', 'eleifend.cras.sed@yahoo.edu', 'JavaScript: El lenguaje Borracho', '2023-09-27 03:09:27'),
(5, 'Bill', 'Gates', 'lorem.eu@google.org', 'REACTiona', '2023-10-10 14:54:02'),
(6, 'Shoshana', 'Moon', 'sed@google.edu', 'No fue magia, fue ciencia', '2023-03-14 00:22:45'),
(7, 'Berk', 'Ruiz', 'sagittis@hotmail.edu', 'Triple C', '2023-04-10 03:51:09'),
(8, 'Oliver', 'Brady', 'magna@outlook.org', 'Consejos para el mercado laboral', '2023-04-02 03:01:07'),
(9, 'Josiah', 'Massey', 'lacus@hotmail.edu', 'Big Data, Big searchs', '2022-12-14 19:45:40'),
(10, 'Elizabeth', 'Hubbard', 'et.ultrices@hotmail.com', 'Pienso, luego programo', '2022-12-20 14:29:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
