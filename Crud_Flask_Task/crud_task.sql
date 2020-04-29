-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2020 a las 06:26:31
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
  `Nro_Documento` bigint(11) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Ciudad` varchar(20) COLLATE utf8_bin NOT NULL,
  `Barrio` varchar(20) COLLATE utf8_bin NOT NULL,
  `Celular` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cita_usr`
--

INSERT INTO `cita_usr` (`Id`, `Nombre`, `Apellido`, `Nro_Documento`, `Fecha_Nac`, `Ciudad`, `Barrio`, `Celular`) VALUES
(37, 'nfgf', 'rgsdf', 33333333333333333, '2222-12-12', 'gblsf', 'fs541', 2222222222),
(38, 'dfgsf', 'fghsgf', 1335250048, '2220-02-02', 'sdfdg', 'fdgsdg', 3128254722),
(40, 'gffs', 'ghsfg', 161611, '2000-02-12', 'da', 'aga', 3333333333);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
