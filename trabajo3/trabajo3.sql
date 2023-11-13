-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2023 at 06:47 AM
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
-- Database: `trabajo3`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `dni` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`dni`, `nombre`, `apellidos`) VALUES
('16381460', 'Stephen', 'Sharpe'),
('20552808', 'Elizabeth', 'Hubbard'),
('24909295', 'Justine', 'Bruce'),
('33265109', 'Josiah', 'Massey'),
('34173072', 'Berk', 'Ruiz'),
('36614420', 'Warren', 'Weiss'),
('40799338', 'Winifred', 'Howe'),
('41163846', 'Shana', 'Pratt'),
('46010222', 'Shoshana', 'Moon'),
('46672781', 'Oliver', 'Brady');

-- --------------------------------------------------------

--
-- Table structure for table `compras`
--

CREATE TABLE `compras` (
  `id` int UNSIGNED NOT NULL,
  `concepto` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `clientes_dni` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`id`, `concepto`, `clientes_dni`) VALUES
(1, 'Factura B', '16381460'),
(2, 'Factura A', '20552808'),
(3, 'Factura A', '24909295'),
(4, 'Factura C', '33265109'),
(5, 'Factura A', '34173072'),
(6, 'Factura B', '36614420'),
(7, 'Factura B', '40799338'),
(8, 'Factura C', '41163846'),
(9, 'Factura B', '46010222'),
(10, 'Factura B', '46672781');

-- --------------------------------------------------------

--
-- Table structure for table `lineascompra`
--

CREATE TABLE `lineascompra` (
  `numero` int UNSIGNED NOT NULL,
  `compras_id` int UNSIGNED NOT NULL,
  `producto` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `importe` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lineascompra`
--

INSERT INTO `lineascompra` (`numero`, `compras_id`, `producto`, `importe`) VALUES
(1, 1, 'Galletas Oreo', 856.45),
(2, 2, 'Mayonesa Natura', 524.34),
(3, 3, 'Raid', 1000.04),
(4, 4, 'Plancha', 5427.78),
(5, 5, 'Gaseosa Coca-Cola', 1700),
(6, 6, 'Birrita de Limón', 1500),
(7, 7, 'Zapatillas', 534000),
(8, 8, 'Zapatos', 250000),
(9, 9, 'Gaseosa Coca-Cola', 1700),
(10, 10, 'Gaseosa Coca-Cola', 1700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`dni`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_dni` (`clientes_dni`);

--
-- Indexes for table `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `compras_id` (`compras_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lineascompra`
--
ALTER TABLE `lineascompra`
  MODIFY `numero` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`clientes_dni`) REFERENCES `clientes` (`dni`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD CONSTRAINT `lineascompra_ibfk_1` FOREIGN KEY (`compras_id`) REFERENCES `compras` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
