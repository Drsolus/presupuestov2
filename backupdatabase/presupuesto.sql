-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-12-2019 a las 03:16:22
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `presupuesto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributosadicionales`
--

CREATE TABLE `atributosadicionales` (
  `idAtributoAdicional` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreAtributoAdicional` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `valorAtributoAdicional` varchar(300) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `fkIdLineaDeDetalle` int(11) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `atributosadicionales`
--

INSERT INTO `atributosadicionales` (`idAtributoAdicional`, `nombreAtributoAdicional`, `valorAtributoAdicional`, `fkIdLineaDeDetalle`) VALUES
(7, 'Precio en UF', '121', 41),
(8, 'Objetivo', '1212', 41),
(9, 'Unidades', '12', 41),
(10, 'Costo Unitario', '12', 41),
(11, 'Observaciones', '12', 41),
(12, 'Atributotazo', '12', 41),
(13, 'Precio en UF', '111', 42),
(14, 'Objetivo', 'Ovjetivo', 42),
(15, 'Unidades', 'Uni UNi', 42),
(16, 'Costo Unitario', 'Costo Costo', 42),
(17, 'Observaciones', 'Observaciones', 42),
(18, 'Atributotazo', 'Atributonazo', 42),
(30, 'Precio en UF', 'asdasd', 45),
(31, 'Accion', 'sadasd', 45),
(32, 'Unidades', 'sdasd', 45),
(33, 'Costo Unitario', 'sadasd', 45),
(34, 'Observaciones', 'sdasd', 45),
(35, 'Atributotazo', 'asdasd', 45),
(36, 'Accion', 'Comprar', 46),
(37, 'Objetivo', 'Reponer laboratiorio', 46),
(38, 'Unidades', '20', 46),
(39, 'Atributotazo', '1', 46),
(40, 'Atributo Adicional iteracion1', 'Iteracion 1', 46),
(46, 'Accion', 'Action', 48),
(47, 'Objetivo', 'Objetivo', 48),
(48, 'Atributotazo', '1', 48),
(49, 'Atributo Adicional iteracion1', 'Iteracion 1 de envio de presupuesto', 48),
(50, 'Accion', '1', 49),
(51, 'Objetivo', '1', 49),
(52, 'Atributotazo', '1', 49),
(53, 'Atributo Adicional iteracion1', '1', 49),
(54, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(55, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(56, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(57, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(58, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(59, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(60, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(61, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(62, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(63, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 50),
(64, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(65, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(66, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(67, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(68, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(69, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(70, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(71, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(72, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(73, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 51),
(74, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(75, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(76, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(77, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(78, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(79, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(80, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(81, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(82, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(83, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 52),
(84, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(85, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(86, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(87, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(88, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(89, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(90, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(91, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(92, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(93, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 53),
(94, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(95, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(96, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(97, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(98, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(99, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(100, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(101, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(102, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(103, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 54),
(104, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(105, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(106, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(107, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(108, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(109, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(110, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(111, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(112, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(113, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 55),
(114, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(115, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(116, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(117, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(118, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(119, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(120, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(121, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(122, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(123, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 56),
(124, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(125, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(126, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(127, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(128, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(129, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(130, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(131, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(132, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(133, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 57),
(134, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(135, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(136, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(137, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(138, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(139, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(140, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(141, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(142, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(143, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 58),
(144, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(145, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(146, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(147, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(148, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(149, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(150, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(151, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(152, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(153, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 59),
(154, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(155, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(156, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(157, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(158, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(159, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(160, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(161, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(162, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(163, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 60),
(164, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(165, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(166, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(167, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(168, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(169, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(170, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(171, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(172, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(173, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 61),
(174, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(175, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(176, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(177, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(178, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(179, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(180, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(181, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(182, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(183, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 62),
(184, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(185, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(186, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(187, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(188, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(189, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(190, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(191, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(192, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(193, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(194, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(195, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(196, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(197, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 63),
(198, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(199, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(200, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64);
INSERT INTO `atributosadicionales` (`idAtributoAdicional`, `nombreAtributoAdicional`, `valorAtributoAdicional`, `fkIdLineaDeDetalle`) VALUES
(201, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(202, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(203, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 64),
(204, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(205, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(206, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(207, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(208, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(209, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(210, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(211, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(212, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(213, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 65),
(214, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(215, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(216, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(217, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(218, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(219, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(220, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(221, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(222, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(223, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 66),
(224, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(225, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(226, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(227, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(228, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(229, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(230, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(231, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(232, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(233, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 67),
(234, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(235, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(236, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(237, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(238, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(239, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(240, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(241, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(242, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(243, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 68),
(244, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(245, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(246, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(247, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(248, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(249, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(250, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(251, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(252, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(253, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 69),
(254, 'Precio en UF', '121212', 70),
(255, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(256, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(257, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(258, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(259, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(260, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(261, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(262, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(263, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 70),
(264, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(265, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(266, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(267, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(268, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(269, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(270, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(271, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(272, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(273, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 71),
(274, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(275, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(276, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(277, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(278, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(279, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(280, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(281, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(282, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(283, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 72),
(284, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(285, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(286, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(287, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(288, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(289, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(290, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(291, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(292, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(293, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 73),
(294, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(295, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(296, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(297, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(298, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(299, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(300, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(301, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(302, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(303, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 74),
(304, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(305, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(306, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(307, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(308, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(309, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(310, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(311, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(312, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(313, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 75),
(314, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(315, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(316, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(317, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(318, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(319, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(320, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(321, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(322, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(323, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 76),
(324, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(325, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(326, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(327, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(328, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(329, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(330, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(331, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(332, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(333, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 77),
(334, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(335, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(336, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(337, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(338, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(339, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(340, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(341, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(342, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(343, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 78),
(344, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(345, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(346, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(347, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(348, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(349, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(350, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(351, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79);
INSERT INTO `atributosadicionales` (`idAtributoAdicional`, `nombreAtributoAdicional`, `valorAtributoAdicional`, `fkIdLineaDeDetalle`) VALUES
(352, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(353, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 79),
(354, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 80),
(355, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(356, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(357, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(358, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(359, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(360, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(361, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(362, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(363, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 80),
(364, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(365, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(366, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(367, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(368, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(369, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(370, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(371, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(372, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(373, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81),
(374, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(375, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(376, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(377, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(378, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(379, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(380, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(381, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(382, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(383, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 82),
(384, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(385, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(386, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(387, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(388, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(389, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(390, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(391, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(392, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 83),
(393, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 83),
(394, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(395, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(396, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(397, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(398, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(399, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(400, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(401, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(402, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(403, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 84),
(404, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(405, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(406, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(407, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(408, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(409, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(410, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(411, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(412, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(413, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 85),
(414, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(415, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(416, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(417, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(418, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(419, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(420, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(421, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(422, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(423, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 86),
(424, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(425, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(426, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(427, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(428, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(429, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(430, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(431, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(432, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(433, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 87),
(434, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(435, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(436, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(437, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(438, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(439, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(440, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(441, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(442, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(443, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 88),
(444, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(445, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(446, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(447, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(448, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(449, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(450, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(451, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(452, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(453, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 89),
(454, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(455, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(456, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(457, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(458, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(459, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(460, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(461, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(462, 'Url de compra', '1121212', 90),
(463, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 90),
(464, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(465, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(466, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(467, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(468, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(469, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(470, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(471, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(472, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(473, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91),
(474, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(475, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(476, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(477, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(478, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(479, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(480, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(481, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(482, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(483, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 92),
(484, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 93),
(485, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 93),
(486, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 93),
(487, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 93),
(488, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est222', 93),
(489, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est1212', 93),
(490, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 93),
(491, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est23232', 93),
(492, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est11212', 93),
(493, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 93),
(494, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(495, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(496, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(497, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(498, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(499, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(500, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(501, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(502, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(503, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 94),
(504, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(505, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(506, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(507, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(508, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(509, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(510, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(511, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(512, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(513, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 95),
(514, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(515, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(516, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(517, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(518, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 96),
(519, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(520, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(521, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(522, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 96),
(523, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 96),
(524, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(525, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(526, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(527, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(528, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(529, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(530, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(531, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(532, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(533, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 97),
(534, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(535, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(536, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(537, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(538, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(539, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(540, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(541, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(542, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(543, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98),
(544, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(545, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(546, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(547, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(548, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(549, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(550, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(551, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(552, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(553, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99),
(554, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(555, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(556, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(557, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 100),
(558, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(559, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(560, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(561, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(562, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 100),
(563, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 100),
(564, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(565, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(566, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(567, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(568, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(569, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(570, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(571, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(572, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(573, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 101),
(574, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(575, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(576, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(577, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(578, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(579, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(580, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius estLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(581, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(582, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(583, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 102),
(584, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(585, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(586, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(587, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 103),
(588, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(589, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(590, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(591, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(592, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est sodales in. Fusce mi erat, sollicitudin nec est nec, euismod posuere ex. Donec sed leo arcu. Donec urna leo, consequat eu pulvinar sit amet, gravida a elit. Aenean viverra, massa consectetur vulputat', 103),
(593, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 103),
(594, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(595, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(596, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(597, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(598, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(599, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(600, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(601, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(602, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(603, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 104),
(604, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(605, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(606, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(607, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(608, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(609, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(610, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(611, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(612, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(613, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 105),
(614, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(615, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(616, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(617, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(618, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(619, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(620, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(621, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(622, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(623, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 106),
(624, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(625, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(626, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(627, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(628, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(629, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(630, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(631, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(632, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(633, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 107),
(634, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(635, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(636, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(637, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(638, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(639, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(640, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(641, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(642, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(643, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 108),
(644, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(645, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(646, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(647, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(648, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(649, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(650, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(651, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(652, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(653, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 109),
(654, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(655, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(656, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(657, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(658, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(659, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(660, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(661, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(662, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(663, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 110),
(664, 'Precio en UF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(665, 'Accion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(666, 'Objetivo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(667, 'Unidades', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(668, 'Costo Unitario', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(669, 'Observaciones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(670, 'Atributotazo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(671, 'Atributo Adicional iteracion1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(672, 'Url de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(673, 'Semestre de compra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111),
(674, 'Precio en UF', '1', 112),
(675, 'Accion', '1', 112),
(676, 'Objetivo', '1', 112),
(677, 'Unidades', '1', 112),
(678, 'Costo Unitario', '1', 112),
(679, 'Observaciones', '1', 112),
(680, 'Atributotazo', '1', 112),
(681, 'Atributo Adicional iteracion1', '1', 112),
(682, 'Url de compra', '1', 112),
(683, 'Semestre de compra', '1', 112);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoatributosadicionales`
--

CREATE TABLE `catalogoatributosadicionales` (
  `idCatalogoAtributoAdicional` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreCatalogoAtributoAdicional` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'TRIAL',
  `fechaCreacionAtributoAdicional` date NOT NULL COMMENT 'TRIAL',
  `estadoCatalogoAtributoadicional` int(11) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `catalogoatributosadicionales`
--

INSERT INTO `catalogoatributosadicionales` (`idCatalogoAtributoAdicional`, `nombreCatalogoAtributoAdicional`, `fechaCreacionAtributoAdicional`, `estadoCatalogoAtributoadicional`) VALUES
(1, 'Precio en UF', '2019-11-07', 1),
(2, 'Adicional2', '2019-11-07', 2),
(3, 'Accion', '2019-11-28', 1),
(4, 'Objetivo', '2019-11-28', 1),
(5, 'Unidades', '2019-11-28', 1),
(6, 'Costo Unitario', '2019-11-28', 1),
(7, 'Observaciones', '2019-11-28', 1),
(8, 'Atributotazo', '2019-12-08', 1),
(9, 'Atributo Adicional iteracion1', '2019-12-12', 1),
(10, 'Url de compra', '2019-12-12', 1),
(11, 'Semestre de compra', '2019-12-12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoestadoscatalogoatributosadicionales`
--

CREATE TABLE `catalogoestadoscatalogoatributosadicionales` (
  `idEstadoCatalogoAtributoAdicional` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreEstadoCatalogoAtributoAdicional` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoestadoslineasdedetalle`
--

CREATE TABLE `catalogoestadoslineasdedetalle` (
  `idEstadoLineaDeDetalle` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreEstadoLineaDeDetalle` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `catalogoestadoslineasdedetalle`
--

INSERT INTO `catalogoestadoslineasdedetalle` (`idEstadoLineaDeDetalle`, `nombreEstadoLineaDeDetalle`) VALUES
(1, 'Guardada'),
(2, 'Enviada'),
(3, 'En Ejecuccion'),
(4, 'Rechazada'),
(5, 'Cerrada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoestadosperiodospresupuestal`
--

CREATE TABLE `catalogoestadosperiodospresupuestal` (
  `idEstadoPeriodoPresupuestal` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreEstadoPeriodoPresupuestal` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `catalogoestadosperiodospresupuestal`
--

INSERT INTO `catalogoestadosperiodospresupuestal` (`idEstadoPeriodoPresupuestal`, `nombreEstadoPeriodoPresupuestal`) VALUES
(1, 'Activo'),
(3, 'Cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoestadospresupuestos`
--

CREATE TABLE `catalogoestadospresupuestos` (
  `idEstadoPresupuesto` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreEstadoPresupuesto` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `catalogoestadospresupuestos`
--

INSERT INTO `catalogoestadospresupuestos` (`idEstadoPresupuesto`, `nombreEstadoPresupuesto`) VALUES
(1, 'Por Activar'),
(2, 'En Solicitud'),
(3, 'Enviado'),
(4, 'Guardado'),
(5, 'Aprobado en su Totalidad'),
(6, 'Aprobado con Observaciones'),
(7, 'Rechazado'),
(8, 'En Ejecucion'),
(9, 'Cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoestadossolicitantes`
--

CREATE TABLE `catalogoestadossolicitantes` (
  `idEstadoSolicitante` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreEstadoSolicitante` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `catalogoestadossolicitantes`
--

INSERT INTO `catalogoestadossolicitantes` (`idEstadoSolicitante`, `nombreEstadoSolicitante`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credencialesusuarios`
--

CREATE TABLE `credencialesusuarios` (
  `idcredencial` int(11) NOT NULL,
  `correocredencial` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `passwordcredencial` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `fkidsolicitante` int(11) NOT NULL COMMENT 'TRIAL',
  `trial933` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreDepartamento` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `posicionDepartamento` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombreDepartamento`, `posicionDepartamento`) VALUES
(1, 'Rectoria', '1.'),
(2, 'Finanzas', '1.1.'),
(3, 'Vicerectoria', '1.2.'),
(4, 'Area Informatica', '1.2.1.'),
(5, 'Testing', '1.2.1.1.'),
(6, 'Calidad', '1.3.'),
(7, 'Departamento de prueba iteracion 1', '1.4.'),
(8, 'Departamento de Industrias', '1.2.2.'),
(9, 'Departamento de Conectividad y Redes', '1.2.3.'),
(10, 'Departamento de Gestion Academica y Analisis Institucional', '1.2.4.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasdedetalle`
--

CREATE TABLE `lineasdedetalle` (
  `idLineasDeDetalle` int(11) NOT NULL COMMENT 'TRIAL',
  `fechaHoraCreacionLineasDeDetalle` datetime(3) NOT NULL COMMENT 'TRIAL',
  `descripcionLineaDeDetalle` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `presupuestoSolicitado` int(11) NOT NULL COMMENT 'TRIAL',
  `presupuestoAprobado` int(11) NOT NULL COMMENT 'TRIAL',
  `presupuestoEjecutado` int(11) NOT NULL COMMENT 'TRIAL',
  `fkIdPresupuesto` int(11) NOT NULL COMMENT 'TRIAL',
  `fkIdEstadoLineaDeDetalle` int(11) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `lineasdedetalle`
--

INSERT INTO `lineasdedetalle` (`idLineasDeDetalle`, `fechaHoraCreacionLineasDeDetalle`, `descripcionLineaDeDetalle`, `presupuestoSolicitado`, `presupuestoAprobado`, `presupuestoEjecutado`, `fkIdPresupuesto`, `fkIdEstadoLineaDeDetalle`) VALUES
(36, '2019-12-05 00:00:00.000', 'Descripcion nuevo', 111, 0, 0, 1, 5),
(37, '2019-12-08 00:00:00.000', 'Wololo', 1212, 0, 0, 1, 5),
(38, '2019-12-09 00:00:00.000', 'Des', 111, 30, 14, 4, 5),
(39, '2019-12-09 00:00:00.000', 'Desdesdes', 1, 1, 1, 4, 5),
(41, '2019-12-10 00:00:00.000', 'des222', 112121, 112021, 12, 20, 5),
(42, '2019-12-11 00:00:00.000', 'Una descripcion', 11112, 11102, 0, 19, 5),
(45, '2019-12-11 00:00:00.000', 'Descripcio2', 1111, 1111, 111, 23, 5),
(46, '2019-12-12 00:00:00.000', '20 Toshiba Intel 20va generacion', 100000000, 0, 0, 27, 5),
(47, '2019-12-12 00:00:00.000', '1 Super lingote de oro para el grupo que desarollo este software', 1000000, 0, 0, 27, 5),
(48, '2019-12-12 00:00:00.000', 'Prueba de envio 1', 1000, 1000, 10, 32, 5),
(49, '2019-12-12 00:00:00.000', 'Reapertura de Presupuesto', 1, 0, 0, 32, 4),
(50, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1111, 0, 0, 37, 1),
(51, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 2, 0, 0, 37, 1),
(52, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1111111111, 0, 0, 37, 1),
(53, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1111111111, 0, 0, 37, 1),
(54, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1212, 0, 0, 37, 1),
(55, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 37, 1),
(56, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1010101, 0, 0, 37, 1),
(57, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 11111, 0, 0, 37, 1),
(58, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 99991, 0, 0, 37, 1),
(59, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 9991, 0, 0, 37, 1),
(60, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 11111123, 0, 0, 38, 1),
(61, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1111, 0, 0, 38, 1),
(62, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 38, 1),
(63, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 38, 1),
(64, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 38, 1),
(65, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111212, 0, 0, 38, 1),
(66, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 9999181, 0, 0, 38, 1),
(67, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1111, 0, 0, 38, 1),
(68, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 11212, 0, 0, 38, 1),
(69, '2019-12-12 00:00:00.000', '9898981', 1121212, 0, 0, 38, 1),
(70, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 42, 1),
(71, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 818181, 0, 0, 42, 1),
(72, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 42, 1),
(73, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1818181, 0, 0, 42, 1),
(74, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 9999, 0, 0, 42, 1),
(75, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 8881, 0, 0, 42, 1),
(76, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 22221, 0, 0, 42, 1),
(77, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 7171717, 0, 0, 42, 1),
(78, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 8887, 0, 0, 42, 1),
(79, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 81818181, 0, 0, 42, 1),
(80, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111, 0, 0, 43, 1),
(81, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 43, 1),
(82, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 111111, 0, 0, 43, 1),
(83, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 817817, 0, 0, 43, 1),
(84, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 14141414, 0, 0, 43, 1),
(85, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 828282, 0, 0, 43, 1),
(86, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 43, 1),
(87, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 43, 1),
(88, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 11212, 0, 0, 43, 1),
(89, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 11212, 0, 0, 43, 1),
(90, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1212, 0, 0, 44, 1),
(91, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1212, 0, 0, 44, 1),
(92, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 91919, 0, 0, 44, 1),
(93, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1111, 0, 0, 44, 1),
(94, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 98989898, 0, 0, 44, 1),
(95, '2019-12-12 00:00:00.000', '99819819880919119811', 2222, 0, 0, 44, 1),
(96, '2019-12-12 00:00:00.000', 'Des des des des lñkaskljda', 191919191, 0, 0, 44, 1),
(97, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 828282, 0, 0, 44, 1),
(98, '2019-12-12 00:00:00.000', 'des des des des des des des des des', 92929292, 0, 0, 44, 1),
(99, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 9191919, 0, 0, 44, 1),
(100, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 232323, 20202, 0, 40, 3),
(101, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 1121212, 0, 0, 40, 2),
(102, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 40, 2),
(103, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 12121212, 0, 0, 40, 2),
(104, '2019-12-12 00:00:00.000', 'desdesdesdes', 2121212, 0, 0, 40, 2),
(105, '2019-12-12 00:00:00.000', '929292', 112121, 0, 0, 40, 2),
(106, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 40, 2),
(107, '2019-12-12 00:00:00.000', 'Descripcion', 121212, 0, 0, 40, 2),
(108, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 40, 2),
(109, '2019-12-12 00:00:00.000', '2099999rLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel va', 121212, 0, 0, 40, 2),
(110, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 121212, 0, 0, 40, 2),
(111, '2019-12-12 00:00:00.000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum gravida leo, vel varius est', 3131313, 0, 0, 40, 2),
(112, '2019-12-13 00:00:00.000', 'Des2', 1, 0, 0, 36, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2014_10_12_000000_create_users_table', 2),
(11, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodospresupuestales`
--

CREATE TABLE `periodospresupuestales` (
  `idPeriodoPresupuestal` int(11) NOT NULL COMMENT 'TRIAL',
  `nombrePeriodoPresupuestal` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `fechaHoraInicioPeriodoPresupuestal` datetime(3) NOT NULL COMMENT 'TRIAL',
  `fechaHoraTerminoPeriodoPresupuestal` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'TRIAL',
  `fkIdEstadoPeriodoPresupuestal` int(11) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `periodospresupuestales`
--

INSERT INTO `periodospresupuestales` (`idPeriodoPresupuestal`, `nombrePeriodoPresupuestal`, `fechaHoraInicioPeriodoPresupuestal`, `fechaHoraTerminoPeriodoPresupuestal`, `fkIdEstadoPeriodoPresupuestal`) VALUES
(1, '', '2019-11-07 00:00:00.000', '2019-11-30 00:00:00.000', 3),
(2, 'Presupuesto 2020', '2019-12-09 00:00:00.000', '2019-12-26 00:00:00.000', 3),
(3, 'Presupuesto 2020 REAL', '2019-12-10 12:00:00.000', '2019-12-25 12:00:00.000', 3),
(7, 'Super Presupuesto Bros Galaxy 2020', '2019-12-10 12:00:00.000', '2019-12-27 00:00:00.000', 3),
(8, 'Presupuestos 2020 2', '2019-12-11 00:00:00.000', '2019-12-12 00:00:00.000', 3),
(9, 'Nuevo Periodo Presupuestal Iteracion 1', '2019-12-27 00:00:00.000', '2019-12-12 00:00:00', 3),
(10, 'Nuevo Periodo Iteracion 1', '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 3),
(11, 'Periodo Presupuesto Interacion 1 Prueba', '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 3),
(12, 'Periodo Presupuesto Interacion 1 Prueba', '2019-12-28 12:00:00.000', '2019-12-12 00:00:00', 3),
(13, 'Presupuesto 2020 Gran Carga', '2019-12-12 12:00:00.000', '00-00-00 00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestos`
--

CREATE TABLE `presupuestos` (
  `idPresupuesto` int(11) NOT NULL COMMENT 'TRIAL',
  `fechaHoraCreacionPresupuesto` datetime(3) NOT NULL COMMENT 'TRIAL',
  `fechaCierrePresupuesto` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'TRIAL',
  `nombreSolicitantePresupuesto` varchar(70) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `fkIdDepartamento` int(11) NOT NULL COMMENT 'TRIAL',
  `fkEstadoPresupuesto` int(11) NOT NULL COMMENT 'TRIAL',
  `fkPeriodoPresupuestal` int(11) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `presupuestos`
--

INSERT INTO `presupuestos` (`idPresupuesto`, `fechaHoraCreacionPresupuesto`, `fechaCierrePresupuesto`, `nombreSolicitantePresupuesto`, `fkIdDepartamento`, `fkEstadoPresupuesto`, `fkPeriodoPresupuestal`) VALUES
(1, '2019-11-07 00:00:00.000', '2019-12-12 00:00:00', 'Test', 1, 9, 1),
(2, '2019-11-14 00:00:00.000', '2019-12-12 00:00:00', 'Finanzas', 2, 9, 1),
(3, '2019-12-09 00:00:00.000', '2019-12-12 00:00:00', 'SolicitantepRueba SolicitantePatPrueba SolicitanteMatPrueba', 1, 9, 2),
(4, '2019-12-09 00:00:00.000', '2019-12-12 00:00:00', 'Admin Finanzas Fin Anzas', 2, 9, 2),
(18, '2019-12-10 12:00:00.000', '2019-12-12 00:00:00', 'Admin Finanzas Fin Anzas', 2, 9, 7),
(19, '2019-12-10 12:00:00.000', '2019-12-12 00:00:00', 'Director Vice Rectoria', 3, 9, 7),
(20, '2019-12-10 12:00:00.000', '2019-12-12 00:00:00', 'Director Area Informatica', 4, 9, 7),
(21, '2019-12-10 12:00:00.000', '2019-12-12 00:00:00', 'Testeo Test Test', 5, 9, 7),
(22, '2019-12-11 00:00:00.000', '2019-12-12 00:00:00', 'Admin Finanzas Fin Anzas', 2, 9, 8),
(23, '2019-12-11 00:00:00.000', '2019-12-12 00:00:00', 'Director Vice Rectoria', 3, 9, 8),
(24, '2019-12-11 00:00:00.000', '2019-12-12 00:00:00', 'Director Area Informatica', 4, 9, 8),
(25, '2019-12-11 00:00:00.000', '2019-12-12 00:00:00', 'Testeo Test Test', 5, 9, 8),
(26, '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 'Admin Finanzas Fin Anzas', 2, 9, 11),
(27, '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 'Director Vice Rectoria', 3, 9, 11),
(28, '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 'Director Area Informatica', 4, 9, 11),
(29, '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 'lalal lalalaskldaskl jasdlkjasdkljsda', 5, 9, 11),
(30, '2019-12-28 00:00:00.000', '2019-12-12 00:00:00', 'lalal lalalaskldaskl jasdlkjasdkljsda', 6, 9, 11),
(31, '2019-12-28 12:00:00.000', '2019-12-12 00:00:00', 'Admin Finanzas Fin Anzas', 2, 9, 12),
(32, '2019-12-28 12:00:00.000', '2019-12-12 00:00:00', 'Director Vice Rectoria', 3, 9, 12),
(33, '2019-12-28 12:00:00.000', '2019-12-12 00:00:00', 'Director Area Informatica', 4, 9, 12),
(34, '2019-12-28 12:00:00.000', '2019-12-12 00:00:00', 'lalal lalalaskldaskl jasdlkjasdkljsda', 5, 9, 12),
(35, '2019-12-28 12:00:00.000', '2019-12-12 00:00:00', 'lalal lalalaskldaskl jasdlkjasdkljsda', 6, 9, 12),
(36, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Admin Finanzas Fin Anzas', 2, 2, 13),
(37, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Director Vice Rectoria', 3, 2, 13),
(38, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Director Area Informatica', 4, 2, 13),
(39, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'lalal lalalaskldaskl jasdlkjasdkljsda', 5, 2, 13),
(40, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Area Calidad Suprema', 6, 3, 13),
(41, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Solicitante De Prueba Iteracion1', 7, 2, 13),
(42, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Director Area Industrias', 8, 2, 13),
(43, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Director Conectividad Redes', 9, 2, 13),
(44, '2019-12-12 12:00:00.000', '00-00-00 00:00', 'Director Gestion Academica Analisis Institucional', 10, 2, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacionescatalogoatributosconprocesopresupuestal`
--

CREATE TABLE `relacionescatalogoatributosconprocesopresupuestal` (
  `fkIdPeriodoPresupuestal` int(11) NOT NULL COMMENT 'TRIAL',
  `fkIdCatalogoAtributosAdicionales` int(11) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `relacionescatalogoatributosconprocesopresupuestal`
--

INSERT INTO `relacionescatalogoatributosconprocesopresupuestal` (`fkIdPeriodoPresupuestal`, `fkIdCatalogoAtributosAdicionales`) VALUES
(7, 1),
(8, 1),
(13, 1),
(1, 3),
(2, 3),
(3, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(1, 4),
(3, 4),
(7, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(1, 5),
(3, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(13, 5),
(1, 6),
(3, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(13, 6),
(1, 7),
(3, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(13, 7),
(2, 8),
(3, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(13, 9),
(13, 10),
(13, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitantes`
--

CREATE TABLE `solicitantes` (
  `idSolicitante` int(11) NOT NULL COMMENT 'TRIAL',
  `nombreSolicitante` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `apellidoPaternoSolicitante` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `apellidoMaternoSolicitante` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `fkIdEstadoSolicitante` int(11) NOT NULL COMMENT 'TRIAL',
  `fkIdDepartamento` int(11) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `solicitantes`
--

INSERT INTO `solicitantes` (`idSolicitante`, `nombreSolicitante`, `apellidoPaternoSolicitante`, `apellidoMaternoSolicitante`, `fkIdEstadoSolicitante`, `fkIdDepartamento`) VALUES
(1, 'SolicitantepRueba', 'SolicitantePatPrueba', 'SolicitanteMatPrueba', 1, 1),
(2, 'Admin Finanzas', 'Fin', 'Anzas', 1, 2),
(3, 'Director', 'Vice', 'Rectoria', 1, 3),
(4, 'Director', 'Area', 'Informatica', 1, 4),
(5, 'Testeo', 'Test', 'Test', 2, 5),
(6, 'lalal', 'lalalaskldaskl', 'jasdlkjasdkljsda', 1, 5),
(7, 'Solicitante', 'De Prueba', 'Iteracion1', 1, 7),
(8, 'Director', 'Conectividad', 'Redes', 2, 9),
(10, 'Director', 'Gestion Academica', 'Analisis Institucional', 2, 10),
(11, 'Area', 'Calidad', 'Suprema', 2, 6),
(12, 'Nuevo Director', 'Area', 'Industrial', 2, 8),
(13, 'Director', 'Area', 'Industrias', 1, 8),
(14, 'Director', 'Conectividad', 'Redes', 1, 9),
(15, 'Directora', 'Gestion Academica', 'Analisis Institucional', 1, 10),
(16, 'Director', 'Area', 'Calidad', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sysdiagrams`
--

CREATE TABLE `sysdiagrams` (
  `name` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT 'TRIAL',
  `principal_id` int(11) NOT NULL COMMENT 'TRIAL',
  `diagram_id` int(11) NOT NULL COMMENT 'TRIAL',
  `version` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `definition` longblob COMMENT 'TRIAL',
  `trial940` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `sysdiagrams`
--

INSERT INTO `sysdiagrams` (`name`, `principal_id`, `diagram_id`, `version`, `definition`, `trial940`) VALUES
('Diagrama1', 1, 1, 1, 0xd0cf11e0a1b11ae1000000000000000000000000000000003e000300feff0900060000000000000000000000010000000100000000000000001000002500000001000000feffffff0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdffffff27000000030000000400000005000000060000000700000008000000090000000a000000feffffff0c0000000d0000000e0000000f000000100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f0000002000000021000000220000002300000024000000fefffffffeffffff3d000000feffffff290000002a0000002b0000002c0000002d0000002e0000002f000000300000003100000032000000330000003400000035000000360000003700000038000000390000003a0000003b0000003c000000feffffff3e0000003f000000feffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffff0200000000000000000000000000000000000000000000000000000000000000e0e367df0694d5012600000000080000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000002000000d2100000000000006f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000b000000a233000000000000010043006f006d0070004f0062006a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000005f00000000000000000438000a1ed00d05000080490000000f00ffff550000000000000049000000007d0000e9620000433300003bd60000ff850000a95e0000ac0d0000de805b10f195d011b0a000aa00bdcb5c000008003000000000020000050000003c006b0000000900000000000000d9e6b0e91c81d011ad5100a0c90f5739f43b7f847f61c74385352986e1d552f8a0327db2d86295428d98273c25a2da2d00002800430000000000000053444dd2011fd1118e63006097d2df4834c9d2777977d811907000065b840d9c00002800430000000000000051444dd2011fd1118e63006097d2df4834c9d2777977d811907000065b840d9c0000280043000000000000003a8bd69e1bf7da4aad8bb8d82f097e7234c9d2777977d811907000065b840d9c000028004300000000000000339bf36b8b870f4cb5073983f88ec39e34c9d2777977d811907000065b840d9c2a000000800f000000aa010000003c00a50900000700008001000000ba02000000800000140000805363684772696400368d0000b23e0000417472696275746f7341646963696f6e616c657300004400a50900000700008002000000ca020000008000001c0000805363684772696400daac000068100000436174616c6f676f417472696275746f7341646963696f6e616c657300003800a50900000700008003000000ac020000008000000d00008053636847726964007a5800009e070000446570617274616d656e746f7307000000004000a50900000700008006000000be02000000800000160000805363684772696400c675000012fdffff506572696f646f7350726573757075657374616c6573000000003400a50900000700008007000000aa020000008000000c00008053636847726964006e730000e21d0000507265737570756573746f7300009400a5090000070000800a0000006a0000000180000069000080436f6e74726f6c00858700001811000052656c6174696f6e736869702027464b5f507265737570756573746f735f506572696f646f7350726573757075657374616c657327206265747765656e2027506572696f646f7350726573757075657374616c65732720616e642027507265737570756573746f732700000000002800b5010000070000800b000000310000007f00000002800000436f6e74726f6c008f710000a515000000008000a5090000070000800e000000620000000180000057000080436f6e74726f6c00916c00005614000052656c6174696f6e736869702027464b5f507265737570756573746f735f446570617274616d656e746f7327206265747765656e2027446570617274616d656e746f732720616e642027507265737570756573746f73270100002800b5010000070000800f000000310000006d00000002800000436f6e74726f6c00f8600000551c00000000b400a50900000700008010000000620000000180000089000080436f6e74726f6c00348b00008b09000052656c6174696f6e736869702027464b5f436174616c6f676f417472696275746f7341646963696f6e616c65735f506572696f646f7350726573757075657374616c657327206265747765656e2027506572696f646f7350726573757075657374616c65732720616e642027436174616c6f676f417472696275746f7341646963696f6e616c65732700610000002800b50100000700008011000000310000009f00000002800000436f6e74726f6c001d890000771a000000003400a50900000700008019000000aa020000008000000c0000805363684772696400e02e0000da160000536f6c69636974616e74657300008400a5090000070000801a0000006a000000018000005b000080436f6e74726f6c00df3a00001e14000052656c6174696f6e736869702027464b5f4a656665446570617274616d656e746f5f446570617274616d656e746f7327206265747765656e2027446570617274616d656e746f732720616e642027536f6c69636974616e746573270000002800b5010000070000801b000000310000007500000002800000436f6e74726f6c00bb340000f915000000008000a5090000070000801c0000006a0000000180000057000080436f6e74726f6c00df3a00001e14000052656c6174696f6e736869702027464b5f536f6c69636974616e7465735f446570617274616d656e746f7327206265747765656e2027446570617274616d656e746f732720616e642027536f6c69636974616e746573270100002800b5010000070000801d000000310000006d00000002800000436f6e74726f6c00b3380000f915000000005400a5090000070000801e000000e8020000008000002b000080536368477269640082aa00000a410000436174616c6f676f45737461646f73436174616c6f676f417472696275746f7341646963696f6e616c65730000003800a5090000070000802d000000b0020000008000000f0000805363684772696400c67500000a4100004c696e6561734465446574616c6c650000008400a5090000070000802e00000052000000018000005a000080436f6e74726f6c00c57400004833000052656c6174696f6e736869702027464b5f4c696e65614465446574616c6c655f507265737570756573746f7327206265747765656e2027507265737570756573746f732720616e6420274c696e6561734465446574616c6c6527270000002800b5010000070000802f000000310000006f00000002800000436f6e74726f6c00a8630000d83a000000009400a5090000070000803000000052000000018000006a000080436f6e74726f6c00c28700000940000052656c6174696f6e736869702027464b5f417472696275746f7341646963696f6e616c65735f4c696e65614465446574616c6c6527206265747765656e20274c696e6561734465446574616c6c652720616e642027417472696275746f7341646963696f6e616c657327000000002800b50100000700008031000000310000007f00000002800000436f6e74726f6c009d7c00004f42000000004800a50900000700008034000000ce020000008000001e000080536368477269640012480000b04f0000436174616c6f676f45737461646f734c696e6561734465446574616c6c6500000000a800a509000007000080350000005a000000018000007d000080436f6e74726f6c00175f00002540000052656c6174696f6e736869702027464b5f4c696e65614465446574616c6c655f436174616c6f676f45737461646f734c696e65614465446574616c6c6527206265747765656e2027436174616c6f676f45737461646f734c696e6561734465446574616c6c652720616e6420274c696e6561734465446574616c6c652700000000002800b50100000700008036000000310000009100000002800000436f6e74726f6c00d1520000993f000000004c00a50900000700008037000000d8020000008000002300008053636847726964001a9a0000bafaffff436174616c6f676f45737461646f73506572696f646f7350726573757075657374616c000000c000a50900000700008038000000520000000180000096000080436f6e74726f6c00348b000011fcffff52656c6174696f6e736869702027464b5f506572696f646f7350726573757075657374616c65735f436174616c6f676f45737461646f73506572696f646f50726573757075657374616c27206265747765656e2027436174616c6f676f45737461646f73506572696f646f7350726573757075657374616c2720616e642027506572696f646f7350726573757075657374616c657327000000002800b5010000070000803900000031000000ab00000002800000436f6e74726f6c007778000057feffff00004400a5090000070000803a000000c8020000008000001b0000805363684772696400f6540000ea240000436174616c6f676f45737461646f73507265737570756573746f736c00009c00a5090000070000803b000000520000000180000072000080436f6e74726f6c00d76c0000e923000052656c6174696f6e736869702027464b5f507265737570756573746f735f436174616c6f676f45737461646f73507265737570756573746f27206265747765656e2027436174616c6f676f45737461646f73507265737570756573746f732720616e642027507265737570756573746f7327000000002800b5010000070000803c000000310000008700000002800000436f6e74726f6c00cd6300007923000000004400a5090000070000803d000000c8020000008000001b0000805363684772696400023a000052350000436174616c6f676f45737461646f73536f6c69636974616e7465736c00009c00a5090000070000803e000000520000000180000072000080436f6e74726f6c0001390000e629000052656c6174696f6e736869702027464b5f536f6c69636974616e7465735f436174616c6f676f45737461646f73536f6c69636974616e746527206265747765656e2027436174616c6f676f45737461646f73536f6c69636974616e7465732720616e642027536f6c69636974616e74657327000000002800b5010000070000803f000000310000008700000002800000436f6e74726f6c00473b00004d30000000003c00a50900000700008041000000ba020000008000001400008053636847726964009a2900009e07000043726564656e6369616c65735573756172696f7300009000a50900000700008042000000620000000380000065000080436f6e74726f6c00652d0000d813000052656c6174696f6e736869702027464b5f43726564656e6369616c65735573756172696f735f536f6c69636974616e74657327206265747765656e2027536f6c69636974616e7465732720616e64202743726564656e6369616c65735573756172696f732700000000002800b50100000700008043000000310000007b00000004800000436f6e74726f6c008f2f0000b014000000005c00a50900000700008045000000f40200000080000031000080536368477269640044ac0000c62a000052656c6163696f6e6573436174616c6f676f417472696275746f73436f6e50726f6365736f50726573757075657374616c35242300000801a509000007000080460000005200000003800000dd000080436f6e74726f6c00d9ab00000432000052656c6174696f6e736869702027464b5f52656c6163696f6e6573436174616c6f676f417472696275746f73436f6e50726f6365736f50726573757075657374616c5f436174616c6f676f45737461646f73436174616c6f676f417472696275746f7341646963696f6e616c657327206265747765656e2027436174616c6f676f45737461646f73436174616c6f676f417472696275746f7341646963696f6e616c65732720616e64202752656c6163696f6e6573436174616c6f676f417472696275746f73436f6e50726f6365736f50726573757075657374616c2700000000002800b5010000070000804700000031000000f300000004800000436f6e74726f6c001fae0000383a00000000e800a509000007000080480000005200000003800000bf000080436f6e74726f6c00d9ab00003023000052656c6174696f6e736869702027464b5f52656c6163696f6e6573436174616c6f676f417472696275746f73436f6e50726f6365736f50726573757075657374616c5f436174616c6f676f417472696275746f7341646963696f6e616c657327206265747765656e2027436174616c6f676f417472696275746f7341646963696f6e616c65732720616e64202752656c6163696f6e6573436174616c6f676f417472696275746f73436f6e50726f6365736f50726573757075657374616c270400002800b5010000070000804900000031000000d500000004800000436f6e74726f6c00547d0000aa27000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002143341208000000981a0000c711000078563412070000001401000041007400720069006200750074006f007300410064006900630069006f006e0061006c006500730000004f3fd7d6563fe6e5653f0000803f0000803f0000803ff3f2723f9e9d1d3f0000803f0000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f0000000000000000b03b556c0000000000000000f03c556cb850556ca8b8e811a8b8e81102000000020000000000000000000000688deb1100000000020000000000000000000040000000000000a841000098c10000004000000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000002229000065150000000000002d010000070000000c000000070000001c0100000609000062070000d00200008403000076020000ec040000370500002a030000370500009f060000830400000000000001000000981a0000c711000000000000030000000300000002000000020000001c0100002f0d00000000000001000000391300007a05000000000000010000000100000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000007200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001500000041007400720069006200750074006f007300410064006900630069006f006e0061006c006500730000002143341208000000751a00007f15000078563412070000001401000043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073000000000055000000020000009000000063000000020000009a0000006900000002000000fd000000ffffffff0200000002010000ffffffff0200000008010000ffffffff0200000038010000a4000000020000003d010000a80000000200000054010000b6000000020000005e010000bc00000002000000a2010000d700000002000000e8010000ffffffff02000000ed010000ffffffff02000000f3010000ffffffff020000001102000003010000020000001602000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000002229000065150000000000002d010000070000000c000000070000001c0100000609000062070000d00200008403000076020000ec040000370500002a030000370500009f060000830400000000000001000000751a00007f15000000000000050000000500000002000000020000001c010000110d00000000000001000000391300007a05000000000000010000000100000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000008200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001d00000043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c006500730000002143341208000000761600006f0f000078563412070000001401000044006500700061007200740061006d0065006e0074006f00730000000000000000002840000000000000364000000000006061400000000000001440000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f0000000000000000b03b556c0000000000000000f03c556cb850556c60b7e81160b7e81102000000020000000000000000000000a8bcba110000000002000000000040410000b041000040410000d8410000e0400000b04100000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000002229000065150000000000002d010000070000000c000000070000001c0100000609000062070000d00200008403000076020000ec040000370500002a030000370500009f060000830400000000000001000000761600006f0f000000000000030000000300000002000000020000001c010000c80a00000000000001000000391300007a05000000000000010000000100000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000006400000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000e00000044006500700061007200740061006d0065006e0074006f007300000021433412080000009a160000bd16000078563412070000001401000050006500720069006f0064006f007300500072006500730075007000750065007300740061006c006500730000000000006061400000000000001440000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000f03f0000000000000000000000000000000000000000000000000000000000000000b03b556c0000000000000000f03c556cb850556cb0afe811b0afe8110200000002000000000000000000000038a2f81100000000020000000000404100002041000040410000a040000088410000204100000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000002229000065150000000000002d010000070000000c000000070000001c0100000609000062070000d00200008403000076020000ec040000370500002a030000370500009f0600008304000000000000010000009a160000bd16000000000000040000000400000002000000020000001c010000d70a00000000000001000000391300007a05000000000000010000000100000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000007600000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001700000050006500720069006f0064006f007300500072006500730075007000750065007300740061006c006500730000002143341208000000151900001d18000078563412070000001401000050007200650073007500700075006500730074006f0073000000723f9e9d1d3f0000803f0000803f0000803ff3f2723f9e9d1d3f0000803f00003640000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f0000000000000000b03b556c0000000000000000f03c556cb850556c68aee81168aee81102000000020000000000000000000000b8a0f81100000000020000000000803f0000803f0000803f0000b8410000a8c10000803f00000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c00000034000000000000000000000022290000ab170000000000002d010000080000000c000000070000001c0100000609000062070000d00200008403000076020000ec040000370500002a030000370500009f060000830400000000000001000000151900001d18000000000000060000000600000002000000020000001c0100005d0c00000000000001000000391300007a05000000000000010000000100000002000000020000001c010000060900000100000000000000391300003403000000000000000000000000000002000000020000001c010000060900000000000000000000d13100000923000000000000000000000d00000004000000040000001c01000006090000aa0a00009006000078563412040000006200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000d00000050007200650073007500700075006500730074006f007300000005000b001c890000cf1300001c890000b1210000138e0000b1210000138e000028230000838c0000282300000000000002000000f0f0f00000000000000000000000000000000000010000000b000000000000008f710000a5150000de1600005801000008000000010000020000de16000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61260046004b005f0050007200650073007500700075006500730074006f0073005f0050006500720069006f0064006f007300500072006500730075007000750065007300740061006c006500730004000b00286e00000d170000286e0000771a000004740000771a000004740000e21d00000000000002000000f0f0f00000000000000000000000000000000000010000000f00000000000000f8600000551c00005d12000058010000600000000100000200005d12000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611d0046004b005f0050007200650073007500700075006500730074006f0073005f0044006500700061007200740061006d0065006e0074006f00730004000b00608c0000220b0000e4a80000220b0000e4a80000c8190000daac0000c81900000000000002000000f0f0f000000000000000000000000000000000000100000011000000000000001d890000771a0000501f0000580100005c000000010000020000501f000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61360046004b005f0043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073005f0050006500720069006f0064006f007300500072006500730075007000750065007300740061006c0065007300214334120800000028130000c715000078563412070000001401000053006f006c00690063006900740061006e00740065007300000000000000000000000000000000000000000000000000006071400000000000407040000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f0000000000000000b03b636c0000000000000000f03c636cb850636c90925210909252100200000002000000000000000000000090255710000000000200000000000000000000000000000000008243000082c30000000000000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000000a200000fa170000000000002d010000080000000c000000070000001c010000cc06000091050000d00200008403000076020000b1030000370500002a030000370500009f06000083040000000000000100000028130000c715000000000000060000000600000002000000020000001c010000e80800000000000001000000660f0000db07000000000000020000000200000002000000020000001c010000cc0600000100000000000000660f00003403000000000000000000000000000002000000020000001c010000cc06000000000000000000008d2600008e23000000000000000000000d00000004000000040000001c010000cc06000007080000ec04000078563412040000006200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000000d00000053006f006c00690063006900740061006e00740065007300000005000b007a580000441600006a4a0000441600006a4a00004a1500005a3c00004a1500005a3c0000da1600000000000002000000f0f0f00000000000000000000000000000000000010000001b00000000000000bb340000f91500002d15000058010000320000000100000200002d15000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61210046004b005f004a0065006600650044006500700061007200740061006d0065006e0074006f005f0044006500700061007200740061006d0065006e0074006f00730005000b007a580000441600006a4a0000441600006a4a00004a1500005a3c00004a1500005a3c0000da1600000000000002000000f0f0f00000000000000000000000000000000000010000001d00000000000000b3380000f91500001f11000058010000320000000100000200001f11000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611d0046004b005f0053006f006c00690063006900740061006e007400650073005f0044006500700061007200740061006d0065006e0074006f0073002143341208000000e7250000c00a000078563412070000001401000043006100740061006c006f0067006f00450073007400610064006f00730043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c0065007300000000000000000000000000000054244710542447100200000002000000094ee93a000000801a00121080034a0af7cbb03a000000800200656cffffffff0000000000000000000040410000404100000000000040410000404100000000114ee93a000000802200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000000a200000b4150000000000002d010000070000000c000000070000001c010000cc06000091050000d00200008403000076020000b1030000370500002a030000370500009f060000830400000000000001000000e7250000c00a000000000000020000000200000002000000020000001c010000a11300000000000001000000660f00009505000000000000010000000100000002000000020000001c010000cc0600000100000000000000660f00003403000000000000000000000000000002000000020000001c010000cc06000000000000000000008d2600008e23000000000000000000000d00000004000000040000001c010000cc06000007080000ec0400007856341204000000a000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000002c00000043006100740061006c006f0067006f00450073007400610064006f00730043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073000000214334120800000028130000881800007856341207000000140100004c0069006e006500610073004400650044006500740061006c006c006500000000000000000000000000000000000000006071400000000000407040000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f0000000000000000b03bfb6b0000000000000000f03cfb6bb850fb6bd0264c11d0264c110200000002000000000000000000000018395611000000000200000000000000000000000000000000008243000082c30000000000000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000000a2000005b1a0000000000002d010000090000000c000000070000001c010000cc06000091050000d00200008403000076020000b1030000370500002a030000370500009f060000830400000000000001000000281300008818000000000000070000000700000002000000020000001c010000e80800000000000001000000660f0000210a000000000000030000000300000002000000020000001c010000cc0600000100000000000000660f00003403000000000000000000000000000002000000020000001c010000cc06000000000000000000008d2600008e23000000000000000000000d00000004000000040000001c010000cc06000007080000ec04000078563412040000006800000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f000000100000004c0069006e006500610073004400650044006500740061006c006c006500000002000b005c760000ff3500005c7600000a4100000000000002000000f0f0f00000000000000000000000000000000000010000002f00000000000000a8630000d83a00000512000058010000320000000100000200000512000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d611e0046004b005f004c0069006e00650061004400650044006500740061006c006c0065005f0050007200650073007500700075006500730074006f00730002000b00ee880000a0410000368d0000a04100000000000002000000f0f0f000000000000000000000000000000000000100000031000000000000009d7c00004f420000a11500005801000047000000010000020000a115000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d61260046004b005f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073005f004c0069006e00650061004400650044006500740061006c006c00650021433412080000004e1d0000f909000078563412070000001401000043006100740061006c006f0067006f00450073007400610064006f0073004c0069006e006500610073004400650044006500740061006c006c006500000000000300000004000000040000000000000000000000240000000000000000000000010000000400000000000000240000002b000000020000000000000001000000040000000000000024000000550000000100000000000000060000000400000000000000240000005600000003000000000000000700000004000000000000003b000000570000000400000000000000030000000400000000000000240000008a00000000000000030000000500000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000008e2300009a150000000000002d010000070000000c000000070000001c010000ad07000045060000d0020000840300007602000029040000370500002a030000370500009f0600008304000000000000010000004e1d0000f909000000000000020000000200000002000000020000001c010000b50e00000000000001000000f31000007a05000000000000010000000100000002000000020000001c010000ad0700000100000000000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000000000000000000ff2a00005923000000000000000000000d00000004000000040000001c010000ad070000150900009105000078563412040000008600000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001f00000043006100740061006c006f0067006f00450073007400610064006f0073004c0069006e006500610073004400650044006500740061006c006c006500000003000b00ae600000b04f0000ae600000a0410000c6750000a04100000000000002000000f0f0f00000000000000000000000000000000000010000003600000000000000d1520000993f0000d31b00005801000050000000010000020000d31b000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d612f0046004b005f004c0069006e00650061004400650044006500740061006c006c0065005f0043006100740061006c006f0067006f00450073007400610064006f0073004c0069006e00650061004400650044006500740061006c006c0065002143341208000000fb1f0000f909000078563412070000001401000043006100740061006c006f0067006f00450073007400610064006f00730050006500720069006f0064006f007300500072006500730075007000750065007300740061006c0000000000000000000000000000000c00d60f020000000200000049000000c89e8107dc9d81070000000000000000000000000c000000000000000000000049000000b89e8107e89d810700000000000000000000000008000000000000000000000049000000f49e8107f49d810700000000000000000000000008000000000000000100000049000000d09e8107009e81070000000000000000000000000800e908000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000008e2300009a150000000000002d010000070000000c000000070000001c010000ad07000045060000d0020000840300007602000029040000370500002a030000370500009f060000830400000000000001000000fb1f0000f909000000000000020000000200000002000000020000001c0100003b1000000000000001000000f31000007a05000000000000010000000100000002000000020000001c010000ad0700000100000000000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000000000000000000ff2a00005923000000000000000000000d00000004000000040000001c010000ad070000150900009105000078563412040000009000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000002400000043006100740061006c006f0067006f00450073007400610064006f00730050006500720069006f0064006f007300500072006500730075007000750065007300740061006c00000002000b001a9a0000a8fdffff608c0000a8fdffff0000000002000000f0f0f000000000000000000000000000000000000100000039000000000000007778000057feffffb52300005801000009000000010000020000b523000058010000020000000000050000800800008001000000150001000000900144420100065461686f6d613c0046004b005f0050006500720069006f0064006f007300500072006500730075007000750065007300740061006c00650073005f0043006100740061006c006f0067006f00450073007400610064006f00730050006500720069006f0064006f00500072006500730075007000750065007300740061006c0021433412080000000d190000f909000078563412070000001401000043006100740061006c006f0067006f00450073007400610064006f00730050007200650073007500700075006500730074006f00730000000000000000000000b0ad30042446963930780080fffffb6b3435fb6b7c0cd60f7c0cd60f0d0000000d0000000b00000000e0a3440000984100a0a4440000984100a0a444000080410000a544000080410000a5440000304100e0a4440000304100e0a444000070410080a444000070410080a4440000904100e0a3440000904100e0a34400009841e40cd60f02000000020000000000000000000000f80cd60f04000000140000000a00000001010101010000000900000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000008e2300009a150000000000002d010000070000000c000000070000001c010000ad07000045060000d0020000840300007602000029040000370500002a030000370500009f0600008304000000000000010000000d190000f909000000000000020000000200000002000000020000001c0100004e0c00000000000001000000f31000007a05000000000000010000000100000002000000020000001c010000ad0700000100000000000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000000000000000000ff2a00005923000000000000000000000d00000004000000040000001c010000ad070000150900009105000078563412040000008000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001c00000043006100740061006c006f0067006f00450073007400610064006f00730050007200650073007500700075006500730074006f007300000002000b00036e0000802500006e730000802500000000000002000000f0f0f00000000000000000000000000000000000010000003c00000000000000cd63000079230000e81900005801000032000000010000020000e819000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d612a0046004b005f0050007200650073007500700075006500730074006f0073005f0043006100740061006c006f0067006f00450073007400610064006f00730050007200650073007500700075006500730074006f002143341208000000a8190000f909000078563412070000001401000043006100740061006c006f0067006f00450073007400610064006f00730053006f006c00690063006900740061006e00740065007300000002000000000000000000000000000000b80dd60fb80dd60f02000000020000000000000000000000000000000000000064cb30041646963970ab00807500fb6bffffffff000000000100000000000000120000000000000000001041000040410000404101000000601fd60f841fd60f000000000000000000001041000000400000e042000050410000000000000000380ed60f380ed60f020000000200000000000000c0ec161000000000540ed60f540ed60f0200000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000008e2300009a150000000000002d010000070000000c000000070000001c010000ad07000045060000d0020000840300007602000029040000370500002a030000370500009f060000830400000000000001000000a8190000f909000000000000020000000200000002000000020000001c010000a80c00000000000001000000f31000007a05000000000000010000000100000002000000020000001c010000ad0700000100000000000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000000000000000000ff2a00005923000000000000000000000d00000004000000040000001c010000ad070000150900009105000078563412040000008000000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f0000001c00000043006100740061006c006f0067006f00450073007400610064006f00730053006f006c00690063006900740061006e00740065007300000002000b00983a000052350000983a0000a12c00000000000002000000f0f0f00000000000000000000000000000000000010000003f00000000000000473b00004d3000006e17000058010000320000000100000200006e17000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d612a0046004b005f0053006f006c00690063006900740061006e007400650073005f0043006100740061006c006f0067006f00450073007400610064006f00730053006f006c00690063006900740061006e007400650021433412080000006d140000f50e0000785634120700000014010000430072006500640065006e006300690061006c00650073005500730075006100720069006f0073000000000000000000006071400000000000407040000000000000f03f00000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f000000000000000084adf96b000000000000000008aff96b206bfa6bf0e60423f0e604230200000002000000000000000000000008da3b23000000000200000000000000000000000000000000008243000082c30000000000000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000008e2300009a150000000000002d010000070000000c000000070000001c010000ad07000045060000d0020000840300007602000029040000370500002a030000370500009f0600008304000000000000010000006d140000f50e000000000000040000000400000002000000020000001c010000ab0900000000000001000000f31000007a05000000000000010000000100000002000000020000001c010000ad0700000100000000000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000000000000000000ff2a00005923000000000000000000000d00000004000000040000001c010000ad070000150900009105000078563412040000007200000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f00000015000000430072006500640065006e006300690061006c00650073005500730075006100720069006f007300000004000b00762f0000da160000762f0000b7160000e02e0000b7160000e02e0000931600000000000002000000f0f0f000000000000000000000000000000000000100000043000000000000008f2f0000b01400004714000058010000540000000100000200004714000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61240046004b005f00430072006500640065006e006300690061006c00650073005500730075006100720069006f0073005f0053006f006c00690063006900740061006e007400650073002143341208000000812c0000f9090000785634120700000014010000520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c0000000000000000000000000000000000000000000000000000000000000000000000000000000000f03f000000000000000084adf96b000000000000000008aff96b206bfa6b507b4c23507b4c2302000000020000000000000000000000680f1023000000000200000000000000000000000000000000008243000082c30000000000000000000000000000000000000000000000000100000005000000540000002c0000002c0000002c0000003400000000000000000000008e2300009a150000000000002d010000070000000c000000070000001c010000ad07000045060000d0020000840300007602000029040000370500002a030000370500009f060000830400000000000001000000812c0000f909000000000000020000000200000002000000020000001c010000701700000000000001000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000100000000000000f31000003403000000000000000000000000000002000000020000001c010000ad0700000000000000000000ff2a00005923000000000000000000000d00000004000000040000001c010000ad07000015090000910500007856341204000000ac00000001000000010000000b000000000000000100000002000000030000000400000005000000060000000700000008000000090000000a00000004000000640062006f00000032000000520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c00000002000b0070ad00000a41000070ad0000bf3400000000000002000000f0f0f000000000000000000000000000000000000100000047000000000000001fae0000383a00008d38000058010000320000000100000200008d38000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61600046004b005f00520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c005f0043006100740061006c006f0067006f00450073007400610064006f00730043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c006500730002000b0070ad0000e725000070ad0000c62a00000000000002000000f0f0f00000000000000000000000000000000000010000004900000000000000547d0000aa2700006d2f000058010000320000000100000200006d2f000058010000020000000000ffffff000800008001000000150001000000900144420100065461686f6d61510046004b005f00520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c005f0043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000fefffffffeffffff0400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f000000100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e000000fefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0100feff030a0000ffffffff00000000000000000000000000000000170000004d6963726f736f66742044445320466f726d20322e300010000000456d626564646564204f626a6563740000000000f439b271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000c0000000b0000004e61bc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000dbe6b0e91c81d011ad5100a0c90f573900000200508466df0694d501020200001048450000000000000000000000000000000000120200004400610074006100200053006f0075007200630065003d00430048005200490053005400490041004e002d00500043005c00530051004c0045005800500052004500530053003b0049006e0069007400690061006c00200043006100740061006c006f0067003d0050007200650073007500700075006500730074006f007300430069006900730061003b005000650072007300690073007400200053006500630075007200690074007900200049006e0066006f003d0054007200750065003b0055007300650072002000490044003d00610064006d0069006e003b004d0075006c007400690070006c00650041006300740069007600650052006500730075006c00740053000300440064007300530074007200650061006d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000ffffffff00000000000000000000000000000000000000000000000000000000000000000000000028000000442800000000000053006300680065006d00610020005500440056002000440065006600610075006c0074000000000000000000000000000000000000000000000000000000000026000200ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000020000001600000000000000440053005200450046002d0053004300480045004d0041002d0043004f004e00540045004e0054005300000000000000000000000000000000000000000000002c0002010500000007000000ffffffff00000000000000000000000000000000000000000000000000000000000000000000000003000000c40600000000000053006300680065006d00610020005500440056002000440065006600610075006c007400200050006f007300740020005600360000000000000000000000000036000200ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000001f00000012000000000000000c000000a95e0000ac0d00000100260000007300630068005f006c006100620065006c0073005f00760069007300690062006c0065000000010000000b0000001e000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0033003300370035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000020000000200000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0033003300340035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000030000000300000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003700360030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000060000000600000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003700370035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c0031003600380030000000070000000700000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0032003300310030002c0031002c0031003800390030002c0035002c0031003200360030000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0033003100360035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0032003300310030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0032003300310030002c00310032002c0032003700330030002c00310031002c00310036003800300000000a0000000a000000000000005e0000000103912901000000640062006f00000046004b005f0050007200650073007500700075006500730074006f0073005f0050006500720069006f0064006f007300500072006500730075007000750065007300740061006c006500730000000000000000000000c402000000000b0000000b0000000a0000000800000001545123685451230000000000000000ad0700000000000e0000000e000000000000004c0000000100912901000000640062006f00000046004b005f0050007200650073007500700075006500730074006f0073005f0044006500700061007200740061006d0065006e0074006f00730000000000000000000000c402000000000f0000000f0000000e0000000800000001545123285451230000000000000000ad0700000000001000000010000000000000007e0000000104912901000000640062006f00000046004b005f0043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073005f0050006500720069006f0064006f007300500072006500730075007000750065007300740061006c006500730000000000000000000000c402000000001100000011000000100000000800000001535123e85351230000000000000000ad070000000000190000001900000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003800000034002c0030002c003200380034002c0030002c0031003700340030002c0031002c0031003400320035002c0035002c003900340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200380030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003700340030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003700340030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003700340030002c00310032002c0032003000350035002c00310031002c00310032003600300000001a0000001a000000000000005400000001ff690001000000640062006f00000046004b005f004a0065006600650044006500700061007200740061006d0065006e0074006f005f0044006500700061007200740061006d0065006e0074006f00730000000000000000000000c402000000001b0000001b0000001a0000000800000001535123a85351230000000000000000ad0700000000001c0000001c000000000000004c0000000100912901000000640062006f00000046004b005f0053006f006c00690063006900740061006e007400650073005f0044006500700061007200740061006d0065006e0074006f00730000000000000000000000c402000000001d0000001d0000001c0000000800000001535123685351230000000000000000ad0700000000001e0000001e00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003800000034002c0030002c003200380034002c0030002c0031003700340030002c0031002c0031003400320035002c0035002c003900340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0035003000320035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003700340030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003700340030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003700340030002c00310032002c0032003000350035002c00310031002c00310032003600300000002d0000002d00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003800000034002c0030002c003200380034002c0030002c0031003700340030002c0031002c0031003400320035002c0035002c003900340035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003200380030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003700340030000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003700340030000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003700340030002c00310032002c0032003000350035002c00310031002c00310032003600300000002e0000002e000000000000004e0000000100912901000000640062006f00000046004b005f004c0069006e00650061004400650044006500740061006c006c0065005f0050007200650073007500700075006500730074006f00730000000000000000000000c402000000002f0000002f0000002e0000000800000001535123285351230000000000000000ad0700000000003000000030000000000000005e000000010f912901000000640062006f00000046004b005f0041007400720069006200750074006f007300410064006900630069006f006e0061006c00650073005f004c0069006e00650061004400650044006500740061006c006c00650000000000000000000000c402000000003100000031000000300000000800000001525123e85251230000000000000000ad070000000000340000003400000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003900360035002c0031002c0031003600300035002c0035002c0031003000360035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0033003700360035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003900360035002c00310032002c0032003300320035002c00310031002c0031003400320035000000350000003500000000000000700000000100912901000000640062006f00000046004b005f004c0069006e00650061004400650044006500740061006c006c0065005f0043006100740061006c006f0067006f00450073007400610064006f0073004c0069006e00650061004400650044006500740061006c006c00650000000000000000000000c402000000003600000036000000350000000800000001525123a85251230000000000000000ad070000000000370000003700000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003900360035002c0031002c0031003600300035002c0035002c0031003000360035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0034003100350035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003900360035002c00310032002c0032003300320035002c00310031002c00310034003200350000003800000038000000000000008a0000000101842901000000640062006f00000046004b005f0050006500720069006f0064006f007300500072006500730075007000750065007300740061006c00650073005f0043006100740061006c006f0067006f00450073007400610064006f00730050006500720069006f0064006f00500072006500730075007000750065007300740061006c0000000000000000000000c402000000003900000039000000380000000800000001525123685251230000000000000000ad0700000000003a0000003a00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003900360035002c0031002c0031003600300035002c0035002c0031003000360035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0033003100350030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003900360035002c00310032002c0032003300320035002c00310031002c00310034003200350000003b0000003b00000000000000660000000101270001000000640062006f00000046004b005f0050007200650073007500700075006500730074006f0073005f0043006100740061006c006f0067006f00450073007400610064006f00730050007200650073007500700075006500730074006f0000000000000000000000c402000000003c0000003c0000003b0000000800000001525123285251230000000000000000ad0700000000003d0000003d00000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003900360035002c0031002c0031003600300035002c0035002c0031003000360035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0033003200340030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003900360035002c00310032002c0032003300320035002c00310031002c00310034003200350000003e0000003e00000000000000660000000103270001000000640062006f00000046004b005f0053006f006c00690063006900740061006e007400650073005f0043006100740061006c006f0067006f00450073007400610064006f00730053006f006c00690063006900740061006e007400650000000000000000000000c402000000003f0000003f0000003e0000000800000001515123e85151230000000000000000ad070000000000410000004100000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003900360035002c0031002c0031003600300035002c0035002c0031003000360035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0032003400370035000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003900360035002c00310032002c0032003300320035002c00310031002c00310034003200350000004200000042000000000000005a0000000103912901000000640062006f00000046004b005f00430072006500640065006e006300690061006c00650073005500730075006100720069006f0073005f0053006f006c00690063006900740061006e0074006500730000000000000000000000c402000000004300000043000000420000000800000001505123e85051230000000000000000ad070000000000450000004500000000000000000000000000000000000000d00200000600280000004100630074006900760065005400610062006c00650056006900650077004d006f006400650000000100000008000400000031000000200000005400610062006c00650056006900650077004d006f00640065003a00300000000100000008003a00000034002c0030002c003200380034002c0030002c0031003900360035002c0031002c0031003600300035002c0035002c0031003000360035000000200000005400610062006c00650056006900650077004d006f00640065003a00310000000100000008001e00000032002c0030002c003200380034002c0030002c0036003000300030000000200000005400610062006c00650056006900650077004d006f00640065003a00320000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00330000000100000008001e00000032002c0030002c003200380034002c0030002c0031003900360035000000200000005400610062006c00650056006900650077004d006f00640065003a00340000000100000008003e00000034002c0030002c003200380034002c0030002c0031003900360035002c00310032002c0032003300320035002c00310031002c0031003400320035000000460000004600000000000000d200000001053a0001000000640062006f00000046004b005f00520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c005f0043006100740061006c006f0067006f00450073007400610064006f00730043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c006500730000000000000000000000c402000000004700000047000000460000000800000001315123a83151230000000000000000ad0f0000010000480000004800000000000000b40000000103080001000000640062006f00000046004b005f00520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c005f0043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c006500730000000000000000000000c4020000000049000000490000004800000008000000014ea718f04ea7180000000000000000ad0f00000100004600000048000000020000004500000001000000020000001c00000003000000190000007a0000002c0000001a00000003000000190000007a0000002c0000000e0000000300000007000000490000000000000010000000060000000200000079000000760000000a000000060000000700000041000000650000002e000000070000002d00000009000000000000004200000019000000410000000000000011000000460000001e000000450000000800000003000000300000002d000000010000003f0000006000000035000000340000002d000000520000003e000000380000003700000006000000720000004b0000003b0000003a00000007000000550000006c0000003e0000003d0000001900000000000000270000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006500740073003d00460061006c00730065003b0043006f006e006e006500630074002000540069006d0065006f00750074003d00330030003b0054007200750073007400530065007200760065007200430065007200740069006600690063006100740065003d00460061006c00730065003b005000610063006b00650074002000530069007a0065003d0034003000390036003b004100700070006c00690063006100740069006f006e0020004e0061006d0065003d0022004d006900630072006f0073006f00660074002000530051004c00200053006500720076006500720020004d0061006e006100670065006d0065006e0074002000530074007500640069006f002200000000800500140000004400690061006700720061006d00610031000000000226002a000000430072006500640065006e006300690061006c00650073005500730075006100720069006f007300000008000000640062006f000000000226003800000043006100740061006c006f0067006f00450073007400610064006f00730053006f006c00690063006900740061006e00740065007300000008000000640062006f000000000226003800000043006100740061006c006f0067006f00450073007400610064006f00730050007200650073007500700075006500730074006f007300000008000000640062006f000000000226004800000043006100740061006c006f0067006f00450073007400610064006f00730050006500720069006f0064006f007300500072006500730075007000750065007300740061006c00000008000000640062006f000000000226003e00000043006100740061006c006f0067006f00450073007400610064006f0073004c0069006e006500610073004400650044006500740061006c006c006500000008000000640062006f00000000022600200000004c0069006e006500610073004400650044006500740061006c006c006500000008000000640062006f000000000226005800000043006100740061006c006f0067006f00450073007400610064006f00730043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c0065007300000008000000640062006f000000000226001a00000053006f006c00690063006900740061006e00740065007300000008000000640062006f000000000226001a00000050007200650073007500700075006500730074006f007300000008000000640062006f000000000226002e00000050006500720069006f0064006f007300500072006500730075007000750065007300740061006c0065007300000008000000640062006f000000000226001c00000044006500700061007200740061006d0065006e0074006f007300000008000000640062006f000000000226003a00000043006100740061006c006f0067006f0041007400720069006200750074006f007300410064006900630069006f006e0061006c0065007300000008000000640062006f000000000226002a00000041007400720069006200750074006f007300410064006900630069006f006e0061006c0065007300000008000000640062006f0000000002240064000000520065006c006100630069006f006e006500730043006100740061006c006f0067006f0041007400720069006200750074006f00730043006f006e00500072006f006300650073006f00500072006500730075007000750065007300740061006c00000008000000640062006f00000001000000d68509b3bb6bf2459ab8371664f0327008004e0000007b00310036003300340043004400440037002d0030003800380038002d0034003200450033002d0039004600410032002d004200360044003300320035003600330042003900310044007d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000c0000000b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214, 'T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkIdSolicitantes` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `fkIdSolicitantes`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vicerector', 'vicerectoria@ciisa.cl', 'Solicitante', 3, '$2y$10$W84aqxs7IICPl7uvO9XQfe2U4YkAC0nCwrU03tI3WAIqlhe9FEBo6', 'clJH1hCrQU6QQfMt1wb2c9Dsd7YW1FU8eIAcLZHwAIjnYmwC8zyoZLCgENGc', '2019-12-10 19:39:51', '2019-12-10 19:39:51'),
(2, 'Super Rector', 'rectoria@ciisa.cl', 'Rectoria', 1, '$2y$10$fP50jX2RrRieriELQoKEG.LQ30iA2mpJGe3O96wfZ.xpWLD.UqiW2', 'dWVVKhos95ZXaekORZbS0SiRoMBkPA3L6CJyep3RqCEjaVQz8c0KpOeGYrbs', '2019-12-10 19:42:00', '2019-12-10 19:42:00'),
(3, 'Administrador Finanzas', 'finanzas@ciisa.cl', 'Finanzas', 2, '$2y$10$7LhCXzRoIRyEfwWHyM.7o.98MH/bnQtkE4566J0QryxJwp//4ghIu', 'FjzDzwJEZ1OojgaJAm7oalCF3sM3VcPDf3GyKnazMxoYV84uhzR9XqezTkLf', '2019-12-10 19:42:31', '2019-12-10 19:42:31'),
(4, 'Director de Prueba', 'informatica@ciisa.cl', 'Solicitante', 4, '$2y$10$fYiBIdS3kKzEM5p4xFfC6Om6VNk8kxHovb3ybZScWV2uWSabkROCW', 'HwcqboQArydWQMKKlYk0sxsP5HcPJSoQI2XwrDyviJ479jPmiKAp6VilVfKl', '2019-12-10 19:43:31', '2019-12-10 19:43:31'),
(5, 'lalal lalalaskldaskl', 'test@ciisa.cl', 'Solicitante', 6, '$2y$10$bP3zIubffFtWkPhofMKQneVp3M3NwgEezFBogouRbWcXorvDVDp/e', NULL, '2019-12-12 21:34:58', '2019-12-12 21:34:58'),
(6, 'Solicitante De Prueba', 'iteracion1@ciisa.cl', 'Solicitante', 7, '$2y$10$HAHvlAil3TySs8tEYTnWeeKUvIiS0xfd7OX06YW6gsUGEsWp32pVO', NULL, '2019-12-12 23:36:50', '2019-12-12 23:36:50'),
(12, 'Director Area', 'industrias@ciisa.cl', 'Solicitante', 13, '$2y$10$SzvHa4dwkCjut0ScKEArz.hSChY1vOZ8XyMI1RE29M0MUBKTt3BIq', 'OnfvsIv822NSPNXX1lJFH1dfAJrkJVnIzi239V6fBXJ9RVCXz5CdCtDABPXa', '2019-12-13 02:12:28', '2019-12-13 02:12:28'),
(13, 'Director Conectividad', 'redes@ciisa.cl', 'Solicitante', 14, '$2y$10$vx80PFZ.xw7gY56dkHk0s.RzZdp4K5QPkZMg9G1JXPJj5ZmyG4O0u', 'nA3N3ZFcuQh5RWIFx7epROXhahSze4f6xTJLtZiJ9Hfw1d82TjZtYD2BLc7G', '2019-12-13 02:21:19', '2019-12-13 02:21:19'),
(14, 'Directora Gestion Academica', 'gestionanalisis@ciisa.cl', 'Solicitante', 15, '$2y$10$YFGLWNdtPwNnuVSThkhryuvaSdfrQWMzxxMbRp5rFw4XbM98Kf7YO', 'OKPKpUZMT16CqdHRGApoSJkqdVnPbwJpZhOwHA35T0RTkzjPVLrEUVUAu5hk', '2019-12-13 02:28:53', '2019-12-13 02:28:53'),
(15, 'Director Area', 'calidad@ciisa.cl', 'Solicitante', 16, '$2y$10$56fcqrIQIWd2pUn2pYmRleKFnRnkrLRrfvy6VKkAP27uk0fKwzEIu', 'oEu8fdeKvYMpUd47NAjkq0I0qljQkauWlSTD0nnirHAf7XSae1lVcF8eshGb', '2019-12-13 02:37:14', '2019-12-13 02:37:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atributosadicionales`
--
ALTER TABLE `atributosadicionales`
  ADD PRIMARY KEY (`idAtributoAdicional`),
  ADD KEY `fk_atributosadicionales_lineadedetalle` (`fkIdLineaDeDetalle`);

--
-- Indices de la tabla `catalogoatributosadicionales`
--
ALTER TABLE `catalogoatributosadicionales`
  ADD PRIMARY KEY (`idCatalogoAtributoAdicional`);

--
-- Indices de la tabla `catalogoestadoscatalogoatributosadicionales`
--
ALTER TABLE `catalogoestadoscatalogoatributosadicionales`
  ADD PRIMARY KEY (`idEstadoCatalogoAtributoAdicional`);

--
-- Indices de la tabla `catalogoestadoslineasdedetalle`
--
ALTER TABLE `catalogoestadoslineasdedetalle`
  ADD PRIMARY KEY (`idEstadoLineaDeDetalle`);

--
-- Indices de la tabla `catalogoestadosperiodospresupuestal`
--
ALTER TABLE `catalogoestadosperiodospresupuestal`
  ADD PRIMARY KEY (`idEstadoPeriodoPresupuestal`);

--
-- Indices de la tabla `catalogoestadospresupuestos`
--
ALTER TABLE `catalogoestadospresupuestos`
  ADD PRIMARY KEY (`idEstadoPresupuesto`);

--
-- Indices de la tabla `catalogoestadossolicitantes`
--
ALTER TABLE `catalogoestadossolicitantes`
  ADD PRIMARY KEY (`idEstadoSolicitante`);

--
-- Indices de la tabla `credencialesusuarios`
--
ALTER TABLE `credencialesusuarios`
  ADD PRIMARY KEY (`idcredencial`),
  ADD KEY `fk_credencialesusuarios_solicitantes` (`fkidsolicitante`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`),
  ADD UNIQUE KEY `posicionDepartamento` (`posicionDepartamento`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineasdedetalle`
--
ALTER TABLE `lineasdedetalle`
  ADD PRIMARY KEY (`idLineasDeDetalle`),
  ADD KEY `fk_lineadedetalle_catalogoestadoslineadedetalle` (`fkIdEstadoLineaDeDetalle`),
  ADD KEY `fk_lineadedetalle_presupuestos` (`fkIdPresupuesto`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `periodospresupuestales`
--
ALTER TABLE `periodospresupuestales`
  ADD PRIMARY KEY (`idPeriodoPresupuestal`),
  ADD KEY `fk_periodospresupuestales_catalogoestadosperiodopresupuestal` (`fkIdEstadoPeriodoPresupuestal`);

--
-- Indices de la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  ADD PRIMARY KEY (`idPresupuesto`),
  ADD KEY `fk_presupuestos_catalogoestadospresupuesto` (`fkEstadoPresupuesto`),
  ADD KEY `fk_presupuestos_departamentos` (`fkIdDepartamento`),
  ADD KEY `fk_presupuestos_periodospresupuestales` (`fkPeriodoPresupuestal`);

--
-- Indices de la tabla `relacionescatalogoatributosconprocesopresupuestal`
--
ALTER TABLE `relacionescatalogoatributosconprocesopresupuestal`
  ADD PRIMARY KEY (`fkIdPeriodoPresupuestal`,`fkIdCatalogoAtributosAdicionales`),
  ADD KEY `fk_relacionescatalogoatributosconprocesopresupuestal_catalogoest` (`fkIdCatalogoAtributosAdicionales`),
  ADD KEY `fkidprocesopresupuestal` (`fkIdPeriodoPresupuestal`);

--
-- Indices de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  ADD PRIMARY KEY (`idSolicitante`),
  ADD KEY `fk_solicitantes_catalogoestadossolicitante` (`fkIdEstadoSolicitante`),
  ADD KEY `fk_solicitantes_departamentos` (`fkIdDepartamento`);

--
-- Indices de la tabla `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
  ADD PRIMARY KEY (`diagram_id`),
  ADD UNIQUE KEY `uk_principal_name` (`principal_id`,`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atributosadicionales`
--
ALTER TABLE `atributosadicionales`
  MODIFY `idAtributoAdicional` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=684;

--
-- AUTO_INCREMENT de la tabla `catalogoatributosadicionales`
--
ALTER TABLE `catalogoatributosadicionales`
  MODIFY `idCatalogoAtributoAdicional` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `catalogoestadossolicitantes`
--
ALTER TABLE `catalogoestadossolicitantes`
  MODIFY `idEstadoSolicitante` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `credencialesusuarios`
--
ALTER TABLE `credencialesusuarios`
  MODIFY `idcredencial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineasdedetalle`
--
ALTER TABLE `lineasdedetalle`
  MODIFY `idLineasDeDetalle` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `periodospresupuestales`
--
ALTER TABLE `periodospresupuestales`
  MODIFY `idPeriodoPresupuestal` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  MODIFY `idPresupuesto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  MODIFY `idSolicitante` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
  MODIFY `diagram_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atributosadicionales`
--
ALTER TABLE `atributosadicionales`
  ADD CONSTRAINT `fk_atributosadicionales_lineadedetalle` FOREIGN KEY (`fkIdLineaDeDetalle`) REFERENCES `lineasdedetalle` (`idLineasDeDetalle`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `credencialesusuarios`
--
ALTER TABLE `credencialesusuarios`
  ADD CONSTRAINT `fk_credencialesusuarios_solicitantes` FOREIGN KEY (`fkidsolicitante`) REFERENCES `solicitantes` (`idSolicitante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lineasdedetalle`
--
ALTER TABLE `lineasdedetalle`
  ADD CONSTRAINT `fk_lineadedetalle_catalogoestadoslineadedetalle` FOREIGN KEY (`fkIdEstadoLineaDeDetalle`) REFERENCES `catalogoestadoslineasdedetalle` (`idEstadoLineaDeDetalle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lineadedetalle_presupuestos` FOREIGN KEY (`fkIdPresupuesto`) REFERENCES `presupuestos` (`idPresupuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `periodospresupuestales`
--
ALTER TABLE `periodospresupuestales`
  ADD CONSTRAINT `fk_periodospresupuestales_catalogoestadosperiodopresupuestal` FOREIGN KEY (`fkIdEstadoPeriodoPresupuestal`) REFERENCES `catalogoestadosperiodospresupuestal` (`idEstadoPeriodoPresupuestal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `presupuestos`
--
ALTER TABLE `presupuestos`
  ADD CONSTRAINT `fk_presupuestos_catalogoestadospresupuesto` FOREIGN KEY (`fkEstadoPresupuesto`) REFERENCES `catalogoestadospresupuestos` (`idEstadoPresupuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_presupuestos_departamentos` FOREIGN KEY (`fkIdDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_presupuestos_periodospresupuestales` FOREIGN KEY (`fkPeriodoPresupuestal`) REFERENCES `periodospresupuestales` (`idPeriodoPresupuestal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  ADD CONSTRAINT `fk_jefedepartamento_departamentos` FOREIGN KEY (`fkIdDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitantes_catalogoestadossolicitante` FOREIGN KEY (`fkIdEstadoSolicitante`) REFERENCES `catalogoestadossolicitantes` (`idEstadoSolicitante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitantes_departamentos` FOREIGN KEY (`fkIdDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
