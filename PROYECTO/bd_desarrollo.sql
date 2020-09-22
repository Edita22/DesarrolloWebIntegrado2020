-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2020 a las 05:39:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_desarrollo`
--
CREATE DATABASE IF NOT EXISTS `bd_desarrollo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_desarrollo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `ID` varchar(8) NOT NULL,
  `NOMBRES` varchar(100) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `DOMICILIO` varchar(100) DEFAULT NULL,
  `CORREO` varchar(100) DEFAULT NULL,
  `NUMEROTEL` varchar(100) DEFAULT NULL,
  `ESTADO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID`, `NOMBRES`, `APELLIDOS`, `DOMICILIO`, `CORREO`, `NUMEROTEL`, `ESTADO`) VALUES('1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

DROP TABLE IF EXISTS `detalle`;
CREATE TABLE `detalle` (
  `ID` int(11) NOT NULL,
  `VENTAID` varchar(50) NOT NULL,
  `PRODUCTOID` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `PRECIO` decimal(12,2) NOT NULL,
  `CATEGORIA` varchar(50) NOT NULL,
  `STOCK` int(11) NOT NULL,
  `ESTADO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `ID` varchar(100) NOT NULL,
  `NOMBRES` varchar(100) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `FECH_INGRESO` date NOT NULL,
  `HORA_INGRESO` time NOT NULL,
  `USUARIO` varchar(100) NOT NULL,
  `CONTRASENA` varchar(100) NOT NULL,
  `ROL` varchar(50) NOT NULL,
  `ESTADO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `ID` varchar(50) NOT NULL,
  `CLIENTEID` varchar(8) NOT NULL,
  `USUARIOID` varchar(100) NOT NULL,
  `DESCUENTO` decimal(12,2) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL,
  `TOTAL` decimal(12,2) NOT NULL,
  `ESTADO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VENTAID` (`VENTAID`),
  ADD KEY `PRODUCTOID` (`PRODUCTOID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CLIENTEID` (`CLIENTEID`),
  ADD KEY `USUARIOID` (`USUARIOID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`VENTAID`) REFERENCES `venta` (`ID`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`CLIENTEID`) REFERENCES `cliente` (`ID`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`USUARIOID`) REFERENCES `usuario` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
