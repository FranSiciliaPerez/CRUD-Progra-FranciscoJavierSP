-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2022 a las 10:46:36
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marvel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `Apellidos` varchar(30) COLLATE utf8_bin NOT NULL,
  `Edad` int(11) NOT NULL,
  `Superheroe` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`Codigo`, `Nombre`, `Apellidos`, `Edad`, `Superheroe`) VALUES
(NULL, 'Jaky', 'Lee', 89, 'Hulk'),
(NULL, 'Jack', 'Kirbi', 58, 'Los Vengadores'),
(NULL, 'George', 'Tuska', 93, 'Luke Cage');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superheroes`
--

CREATE TABLE `superheroes` (
  `Nombre` varchar(40) COLLATE utf8_bin NOT NULL AUTO_INCREMENT,
  `Apellidos` varchar(40) COLLATE utf8_bin NOT NULL,
  `Edad` int(3) DEFAULT NULL,
  `Alias` varchar(40) COLLATE utf8_bin NOT NULL,
  `Superpoder` text COLLATE utf8_bin NOT NULL,
  `Codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `superheroes`
--

INSERT INTO `superheroes` (`Nombre`, `Apellidos`, `Edad`, `Alias`, `Superpoder`, `Codigo`) VALUES
('Natasho', 'Romanoff', 87, 'Viuda negra', 'Suero super-soldado', NULL),
('Steve', 'Rogers', 87, 'Capitan America', 'Suero super-soldado', NULL),
('Bruce', 'Banner', 40, 'Hulk', 'Invulnersvilidad y regeneración celular', NULL),
('Peter', 'Parker', 25, 'Spiderman', 'sentido aracnido, super fuerza y adesividad', NULL),
('James ', 'Howlett', 100, 'Wolverine o Lobezno', 'Regeneración y huesos de adamantium', NULL),
('Luke', 'kage', 34, 'ff', 'cf', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `nomUsuario` varchar(20) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `nomUsuario`, `contrasena`) VALUES
(1, 'FranJ', 'FrankyJSP');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `superheroes`
--
ALTER TABLE `superheroes`
  ADD PRIMARY KEY (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
