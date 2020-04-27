-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2020 a las 23:21:17
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_task`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita_usr`
--

CREATE TABLE `cita_usr` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `Apellido` varchar(20) COLLATE utf8_bin NOT NULL,
  `Nro_Documento` int(30) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Ciudad` varchar(20) COLLATE utf8_bin NOT NULL,
  `Barrio` varchar(20) COLLATE utf8_bin NOT NULL,
  `Celular` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cita_usr`
--

INSERT INTO `cita_usr` (`Id`, `Nombre`, `Apellido`, `Nro_Documento`, `Fecha_Nac`, `Ciudad`, `Barrio`, `Celular`) VALUES
(21, 'pedro', 'dsfm', 152152152, '1220-02-15', 'dfsdfasd', 'dfadfa', 1416513216),
(22, 'pedro', 'gomez', 15215211, '2222-02-12', 'sdfkpkñ,', 'dsfsdf', 1000),
(23, 'vbnvx', 'hadfhadfa', 3665313, '1311-03-31', 'fdgsdds', 'fdhsdhds', 2147483647),
(25, 'sdada', 'dsagadgfa', 2154151, '2000-05-05', 'sdfdaga', 'adgaga', 1521523);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita_usr`
--
ALTER TABLE `cita_usr`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita_usr`
--
ALTER TABLE `cita_usr`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
