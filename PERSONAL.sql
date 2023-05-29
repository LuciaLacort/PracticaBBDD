-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-05-2023 a las 21:56:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PERSONAL`
--

CREATE TABLE `PERSONAL` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `PERSONAL`
--

INSERT INTO `PERSONAL` (`ID`, `NOMBRE`, `APELLIDO`, `EMAIL`) VALUES
(1, 'LUCÍA ', 'LACORT ', 'LOZANO@GMAIL.COM'),
(2, 'CLARA', 'LACORT', 'LACORT@GMAIL.COM'),
(3, 'María', 'García', 'garcia@gmail.com'),
(6, 'Jose', 'Perez', 'perez@gmail.com'),
(7, 'Claudia', 'Martinez', 'claudia@gmail.com'),
(8, 'Arturo', 'Soria', 'soria@gmail.com'),
(9, 'Carlos', 'Gomez', 'gomez@gmail.com'),
(10, 'Paula', 'Garrido', 'garrido@gmail.com'),
(11, 'Anton', 'Alfaro', 'alfaro@gmail.com'),
(12, 'Irene', 'Rubio', 'rubio@gmail.com'),
(13, 'Pedro ', 'Gil', 'gil@gmail.com'),
(15, 'Monica', 'Cruz', 'cruz@gmail.com'),
(16, 'Blanca', 'Pérez', 'blanca@gmail.com'),
(17, 'Alex', 'perez', 'alex@gmail.com'),
(18, 'Alexia', 'Martínez', 'alexia@gmail.com'),
(19, 'Estela ', 'Lacort', 'estela@gmail.com'),
(21, 'Maria', 'Mandiles', 'mandiles@gmail.com'),
(22, 'Sofia', 'Muñoz', 'munoz@hotmail.com'),
(23, 'Macarena', 'Valdes', 'maca@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `PERSONAL`
--
ALTER TABLE `PERSONAL`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `PERSONAL`
--
ALTER TABLE `PERSONAL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
