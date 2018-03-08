-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2018 a las 05:22:11
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metrosinu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentadora`
--

CREATE TABLE `alimentadora` (
  `id` int(11) NOT NULL,
  `matricula` varchar(42) NOT NULL,
  `modelo` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alimentadora`
--

INSERT INTO `alimentadora` (`id`, `matricula`, `modelo`) VALUES
(1, '1042DC', '2016'),
(2, '1224BZ', '2014');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductora`
--

CREATE TABLE `conductora` (
  `id` int(11) NOT NULL,
  `nombre1` varchar(32) NOT NULL,
  `nombre2` varchar(32) NOT NULL,
  `apellido1` varchar(31) NOT NULL,
  `apellido2` varchar(31) NOT NULL,
  `identificacion` int(32) NOT NULL,
  `edad` int(11) NOT NULL,
  `direccion` varchar(42) NOT NULL,
  `id_alimentadora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `conductora`
--

INSERT INTO `conductora` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `identificacion`, `edad`, `direccion`, `id_alimentadora`) VALUES
(1, 'Ruth', 'Esther', 'Cuadrado', 'Alvarez', 1074008221, 21, 'Nuevo Ceibal', 1),
(2, 'Nohemi', 'Andrea', 'Alvarez', 'Berrocal', 1066751922, 24, 'Mocarí', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `id` int(11) NOT NULL,
  `nombre1` varchar(32) NOT NULL,
  `nombre2` varchar(32) NOT NULL,
  `apellido1` varchar(32) NOT NULL,
  `apellido2` varchar(32) NOT NULL,
  `identificacion` int(32) NOT NULL,
  `edad` int(32) NOT NULL,
  `direccion` varchar(32) NOT NULL,
  `id_tike` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `identificacion`, `edad`, `direccion`, `id_tike`) VALUES
(1, 'Yan', 'Carlos', 'Barba', 'Martinez', 50950147, 23, 'Calle la cruz', 1),
(2, 'juan', ' Felipe ', 'Tuiran ', 'Jimenez', 36606047, 20, 'La Virgencita', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tike`
--

CREATE TABLE `tike` (
  `id` int(11) NOT NULL,
  `codigo` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tike`
--

INSERT INTO `tike` (`id`, `codigo`) VALUES
(1, 1148),
(2, 1232);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentadora`
--
ALTER TABLE `alimentadora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conductora`
--
ALTER TABLE `conductora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tike`
--
ALTER TABLE `tike`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimentadora`
--
ALTER TABLE `alimentadora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `conductora`
--
ALTER TABLE `conductora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tike`
--
ALTER TABLE `tike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
