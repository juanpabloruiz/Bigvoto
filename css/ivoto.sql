-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-09-2016 a las 05:35:56
-- Versión del servidor: 5.7.12-0ubuntu1.1
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ivoto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(133) NOT NULL,
  `articulo` int(133) NOT NULL,
  `expte_id` int(133) NOT NULL,
  `SI` text NOT NULL,
  `NO` text NOT NULL,
  `ABS` text NOT NULL,
  `power` varchar(255) NOT NULL,
  `tablero` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `articulo`, `expte_id`, `SI`, `NO`, `ABS`, `power`, `tablero`, `fecha`) VALUES
(21, 1, 11453, '', '', '', 'off', 'apagado', '2016-09-26 14:42:46'),
(22, 2, 11453, '', '', '', 'off', 'apagado', '2016-09-26 14:42:49'),
(23, 3, 11453, '', '', '', 'off', 'apagado', '2016-09-26 14:42:52'),
(24, 4, 11453, '', '', '', 'off', 'apagado', '2016-09-26 14:42:55'),
(25, 5, 11453, '', '', '', 'off', 'apagado', '2016-09-26 14:42:58'),
(26, 1, 11558, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(27, 2, 11558, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(28, 3, 11558, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(29, 4, 11558, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(30, 5, 11558, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(31, 6, 11558, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(32, 1, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(33, 2, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(34, 3, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(35, 4, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(36, 5, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(37, 6, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(38, 7, 11579, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(39, 1, 11559, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(40, 2, 11559, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(41, 3, 11559, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(42, 4, 11559, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(43, 1, 11573, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(44, 2, 11573, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(45, 3, 11573, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(46, 1, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(47, 2, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(48, 3, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(49, 4, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(50, 5, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(51, 6, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(52, 7, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(53, 8, 11574, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(54, 1, 11575, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(55, 2, 11575, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(56, 3, 11575, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(57, 4, 11575, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(58, 5, 11575, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(73, 1, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(74, 2, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(75, 3, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(76, 4, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(77, 5, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(78, 6, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(79, 7, 11560, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(80, 1, 11561, '', '', '', 'off', 'apagado', '2016-09-27 07:27:33'),
(81, 2, 11561, '', '', '', 'off', 'apagado', '2016-09-27 07:27:33'),
(82, 3, 11561, '', '', '', 'off', 'apagado', '2016-09-27 07:27:33'),
(83, 4, 11561, '', '', ' molina', 'off', 'apagado', '2016-09-27 07:27:33'),
(84, 5, 11561, '', '', '', 'off', 'apagado', '2016-09-27 07:27:33'),
(85, 1, 11562, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(86, 2, 11562, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(87, 3, 11562, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(88, 4, 11562, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(89, 1, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(90, 2, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(91, 3, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(92, 4, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(93, 5, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(94, 6, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(95, 7, 11578, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(96, 1, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(97, 2, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(98, 3, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(99, 4, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(100, 5, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(101, 6, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(102, 7, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(103, 8, 11580, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(104, 1, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(105, 2, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(106, 3, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(107, 4, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(108, 5, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(109, 6, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(110, 7, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(111, 8, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(112, 9, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(113, 10, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(114, 11, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(115, 12, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(116, 13, 11563, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(120, 1, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(121, 2, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(122, 3, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(123, 4, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(124, 5, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(125, 6, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(126, 7, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(127, 8, 11571, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(128, 1, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(129, 2, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(130, 3, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(131, 4, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(132, 5, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(133, 6, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(134, 7, 11568, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(135, 1, 11570, ' calvi', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(136, 2, 11570, ' calvi', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(137, 3, 11570, '', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(138, 4, 11570, '', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(139, 5, 11570, '', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(140, 6, 11570, '', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(141, 7, 11570, '', '', '', 'off', 'apagado', '2016-09-27 05:23:44'),
(142, 1, 11572, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(143, 2, 11572, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(144, 3, 11572, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(145, 4, 11572, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(146, 5, 11572, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(147, 1, 11576, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(148, 2, 11576, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(149, 3, 11576, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(150, 4, 11576, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(151, 5, 11576, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(152, 1, 11577, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(153, 2, 11577, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(154, 3, 11577, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(155, 4, 11577, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(156, 5, 11577, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(157, 1, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(158, 2, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(159, 3, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(160, 4, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(161, 5, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(162, 6, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(163, 7, 11581, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(164, 1, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(165, 2, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(166, 3, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(167, 4, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(168, 5, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(169, 6, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(170, 7, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(171, 8, 11316, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(172, 1, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(173, 2, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(174, 3, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(175, 4, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(176, 5, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(177, 6, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(178, 7, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(179, 8, 11268, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(180, 1, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(181, 2, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(182, 3, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(183, 4, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(184, 5, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(185, 6, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(186, 7, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(187, 8, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(188, 9, 11383, '', '', '', 'off', 'apagado', '2016-09-26 13:05:23'),
(189, 1, 11440, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(190, 2, 11440, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(191, 3, 11440, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(192, 4, 11440, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(193, 1, 11466, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(194, 2, 11466, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(195, 3, 11466, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(196, 4, 11466, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(197, 1, 11567, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(198, 2, 11567, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(199, 3, 11567, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(200, 1, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(201, 2, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(202, 3, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(203, 4, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(204, 5, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(205, 6, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(206, 7, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(207, 8, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(208, 9, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(209, 10, 11004, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(210, 1, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(211, 2, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(212, 3, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(213, 4, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(214, 5, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(215, 6, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(216, 7, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(217, 8, 11552, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(218, 1, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(219, 2, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(220, 3, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(221, 4, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(222, 5, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(223, 6, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(224, 7, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(225, 8, 11362, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(226, 1, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(227, 2, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(228, 3, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(229, 4, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(230, 5, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(231, 6, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(232, 7, 11006, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(233, 1, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(234, 2, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(235, 3, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(236, 4, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(237, 5, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(238, 6, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(239, 7, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(240, 8, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(241, 9, 11072, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(242, 1, 11456, '', '', '', 'off', 'apagado', '2016-09-26 12:56:17'),
(243, 2, 11456, '', '', '', 'off', 'apagado', '2016-09-26 12:56:17'),
(244, 3, 11456, '', '', '', 'off', 'apagado', '2016-09-26 12:56:17'),
(245, 1, 11483, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(246, 2, 11483, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11'),
(247, 3, 11483, '', '', '', 'off', 'apagado', '2016-09-26 12:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(133) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_cat`, `categoria`) VALUES
(1, 'PODER EJECUTIVO:'),
(2, 'COMUNICACIONES OFICIALES:'),
(3, 'PROYECTOS PRESENTADOS POR LOS SE&Ntilde;ORES DIPUTADOS:'),
(4, 'EXPTES. CON DESPACHO DE COMISI&Oacute;N QUE VAN A PRENSA:'),
(5, 'EXPEDIENTES A TRATAR:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exptes`
--

CREATE TABLE `exptes` (
  `id_expte` int(133) NOT NULL,
  `item` varchar(255) NOT NULL,
  `expte` varchar(255) NOT NULL,
  `despacho` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extracto` text NOT NULL,
  `SI` text NOT NULL,
  `NO` text NOT NULL,
  `ABS` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `tablero` varchar(255) NOT NULL,
  `articulos` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `subcategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `exptes`
--

INSERT INTO `exptes` (`id_expte`, `item`, `expte`, `despacho`, `fecha`, `extracto`, `SI`, `NO`, `ABS`, `estado`, `tablero`, `articulos`, `categoria`, `subcategoria`) VALUES
(1, '3.01', '11558', '', '2016-09-27 07:38:14', 'Crea el CÃ³digo Procesal de Familia de la provincia de Corrientes.\r\nDips. Vischi y Salvarredy', '', '', '', 'inactivo', 'apagado', '6', '3', '1'),
(2, '3.02', '11579', '', '2016-09-27 08:06:54', 'Crea un Juzgado de Paz en la localidad de Colonia Carlos Pellegrini.\r\nDip. Giraud Cabral', ' gaya', '', '', 'activo', 'apagado', '7', '3', '1'),
(3, '3.03', '11559', '', '2016-09-26 12:37:10', 'Solicita a las autoridades del Banco de Corrientes S.A. un cajero\r\nautomÃ¡tico en el Hospital San JosÃ© de la ciudad de Paso de los Libres.\r\nDip. Vischi', '', '', '', 'inactivo', 'apagado', '4', '3', '2'),
(4, '3.04', '11573', '', '2016-09-26 13:00:23', 'Solicita al Ministerio de Obras y Servicios PÃºblicos y a la DirecciÃ³n\r\nProvincial de Vialidad, el enripiado del camino en Ruta Provincial No 10 en el tramo\r\nentre la Escuela No 449 en el Paraje Lomas de Empedrado hasta el Paraje San Juancito,\r\nen la 4ta. SecciÃ³n del departamento de Empedrado.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '3', '3', '2'),
(5, '3.05', '11574', '', '2016-09-27 07:38:49', 'Solicita a la empresa Caminos del ParanÃ¡ instale contenedores de\r\nbasura y cartelerÃ­a de preservaciÃ³n del medio ambiente en los tramos donde presta\r\nservicio.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '8', '3', '2'),
(6, '3.06', '11575', '', '2016-09-27 07:38:14', 'Solicita a los Ministerios de EducaciÃ³n y al de Obras y Servicios\r\nPÃºblicos la refacciÃ³n total de la Escuela â€œJuan de la Rosa Ledesmaâ€ de la localidad de\r\nPedro R. FernÃ¡ndez, departamento de San Roque.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '5', '3', '2'),
(7, '3.07', '11560', '', '2016-09-27 07:38:14', 'De interÃ©s el â€œDÃ­a del Profesorâ€.\r\nDip. Yung', '', '', '', 'inactivo', 'apagado', '7', '3', '3'),
(8, '3.08', '11561', '', '2016-09-27 07:39:34', 'De interÃ©s el â€œDÃ­a del Psicopedagogoâ€.\r\nDip. Yung', ' alfonzo', '', '', 'inactivo', 'apagado', '5', '3', '3'),
(9, '3.09', '11562', '', '2016-09-27 07:39:50', '', '', ' alfonzo', '', 'inactivo', 'apagado', '4', '3', '3'),
(10, '3.10', '11578', '', '2016-09-27 06:28:46', 'De beneplÃ¡cito y adhesiÃ³n a los actos por el â€œDÃ­a del Maestroâ€.\r\nDip. Locatelli', ' acevedo affur', '', '', 'inactivo', 'apagado', '7', '3', '3'),
(11, '3.11', '11580', '', '2016-09-26 12:38:00', 'De interÃ©s los actos conmemorativos por el â€œDÃ­a del Maestroâ€.\r\nDip. Saez', '', '', '', 'inactivo', 'apagado', '8', '3', '3'),
(12, '3.12', '11563', '', '2016-09-26 12:38:05', 'De salutaciÃ³n al Pueblo y Gobierno de San Carlos, al conmemorarse\r\nun aÃ±o mÃ¡s de su fundaciÃ³n.\r\nDip. Yung', '', '', '', 'inactivo', 'apagado', '13', '3', '3'),
(13, '3.13', '11564', '', '2016-09-22 12:44:17', 'De interÃ©s la presentaciÃ³n del Libro â€œAnita desde las ligas agrarias.\r\nTierra, trabajo y dignidadâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(14, '3.14', '11566', '', '2016-09-22 12:49:37', 'De interÃ©s la conmemoraciÃ³n del 44 Aniversario de LT 42 Radio del\r\nIberÃ¡, de la ciudad de Mercedes.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(15, '3.15', '11567', '', '2016-09-26 12:38:41', 'De interÃ©s el 13 Congreso Nacional de Derecho â€œNuevo marco jurÃ­dico\r\ny polÃ­tico nacionalâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '3', '3', '3'),
(16, '3.16', '11571', '', '2016-09-26 12:38:48', 'De interÃ©s el 13 Congreso Nacional de Derecho â€œNuevo marco jurÃ­dico\r\ny polÃ­tico nacionalâ€.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '8', '3', '3'),
(17, '3.17', '11568', '', '2016-09-26 12:38:58', 'De interÃ©s el â€œDÃ­a de la Agricultura y del Productor Agropecuarioâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '7', '3', '3'),
(18, '3.18', '11570', '', '2016-09-27 05:23:44', 'De interÃ©s la conmemoraciÃ³n del 40 Aniversario del Instituto â€œValentÃ­n\r\nHaÃ¼yâ€.\r\nDip. FernÃ¡ndez Affur', ' affur calvi', ' meixner', '', 'inactivo', 'apagado', '7', '3', '3'),
(19, '3.19', '11572', '', '2016-09-26 12:39:21', 'De interÃ©s la propuesta de desarrollo profesional denominada: â€œCiclo\r\nde Congresos para la formaciÃ³n permanente y situadaâ€.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '5', '3', '3'),
(20, '3.20', '11576', '', '2016-09-26 12:39:27', 'De interÃ©s los actos conmemorativos del Aniversario de la fundaciÃ³n\r\nde la localidad de ConcepciÃ³n del YaguaretÃ© CorÃ¡.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '5', '3', '3'),
(21, '3.21', '11577', '', '2016-09-26 12:39:33', 'De beneplÃ¡cito el XII Encuentro de Educadores CatÃ³licos.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '5', '3', '3'),
(22, '3.22', '11581', '', '2016-09-26 12:39:39', 'De interÃ©s la conmemoraciÃ³n las Fiestas Patronales de la localidad de\r\nColonia Pando.\r\nDip. Saez', '', '', '', 'inactivo', 'apagado', '7', '3', '3'),
(23, '4.01', '11316', '2458', '2016-09-26 12:39:46', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de ley que declara de interÃ©s provincial, cultural y artesanal a las actividades que\r\ndesarrolla la fundaciÃ³n â€œManos Correntinasâ€.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '8', '4', 'Sin asignar'),
(24, '4.02', '11268', '2457', '2016-09-26 14:45:49', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Instituto de Cultura de Corrientes arbitre los medios\r\na fin de colocar una placa conmemorativa en el inmueble ubicado en calle Dr. Mariano I.\r\nLoza No 851 de la ciudad de Goya, que fuera residencia del distinguido escritor y poeta\r\nDon Saturnino Muniagurria.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '8', '4', 'Sin asignar'),
(25, '4.03', '11383', '2454', '2016-09-26 14:51:20', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo la construcciÃ³n e instalaciÃ³n de\r\nuna sala de primeros auxilios en la Colonia El Ciervo, departamento de San Miguel.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '9', '4', 'Sin asignar'),
(26, '4.04', '11440', '2456', '2016-09-26 15:07:22', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Ministerio de EducaciÃ³n implemente los quioscos\r\nsaludables en las escuelas de la Provincia.\r\nDip. Gaya', ' alfonzo moray', ' cordero meza calvi mancini', '', 'inactivo', 'apagado', '4', '4', 'Sin asignar'),
(27, '4.05', '11453', '2459', '2016-09-27 04:11:59', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo provea de un grupo electrÃ³geno\r\ndiÃ©sel de 40 Kw. trifÃ¡sico, a la Escuela de la Familia AgrÃ­cola Ã‘ande Roga I-36 de la\r\nlocalidad de San Miguel.\r\nDip. Meza', ' alfonzo', '', '', 'inactivo', 'apagado', '5', '4', 'Sin asignar'),
(28, '4.06', '11466', '2455', '2016-09-26 12:40:17', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIO-\r\nNES al proyecto de resoluciÃ³n que solicita al Poder Ejecutivo la construcciÃ³n de un\r\ntinglado en la Escuela No 553 â€œSan Cayetanoâ€.\r\nDip. Romero', '', '', '', 'inactivo', 'apagado', '4', '4', 'Sin asignar'),
(29, '5.01', '11004', '2451', '2016-09-27 07:46:19', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de ley de adhesiÃ³n a la Ley Nacional No 26.334 â€“RÃ©gimen de\r\npromociÃ³n nacional de producciÃ³n bioetanol caÃ±a de azÃºcar-.\r\nDip. Locatelli', ' yung', '', '', 'inactivo', 'apagado', '10', '5', '4'),
(30, '1.01', '11552', '', '2016-09-27 08:06:42', 'Mensaje y proyecto de ley del Poder Ejecutivo que declara la\r\nnecesidad de la reforma parcial de la ConstituciÃ³n de la provincia de Corrientes.', ' cordero lopez gaya', ' saez', '', 'inactivo', 'apagado', '8', '1', 'Sin asignar'),
(31, '5.02', '11362', '2450', '2016-09-27 07:48:02', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de ley de adhesiÃ³n a la Ley Nacional No 24.333 â€“DÃ­a nacional del\r\ncooperativismo-.\r\nDip. Saez', '', ' yung', '', 'inactivo', 'apagado', '8', '5', '4'),
(32, '5.03', '11006', '2453', '2016-09-26 12:40:48', 'de la ComisiÃ³n de NiÃ±ez, Adolescencia y Familia\r\nque aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al proyecto de\r\nresoluciÃ³n que solicita al Poder Ejecutivo la creaciÃ³n en la ciudad de Paso de los Libres,\r\nde una delegaciÃ³n con carÃ¡cter permanente del Consejo Provincial de NiÃ±ez y\r\nAdolescencia (COPNAF).\r\nDips. MÃ³rtola y YardÃ­n', '', '', '', 'inactivo', 'apagado', '7', '5', '4'),
(33, '5.04', '11072', '2452', '2016-09-26 12:40:57', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de resoluciÃ³n que solicita al Banco de Corrientes S.A. dÃ© amplia\r\ndifusiÃ³n al Programa FODIN.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '9', '5', '4'),
(34, '5.05', '11456', '2446', '2016-09-27 07:48:36', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo proceda a la reapertura y refacciÃ³n\r\ndel Destacamento Policial en el Paraje GÃ³mez, departamento de Santo TomÃ©.\r\nDips. Yung y Giraud Cabral', ' yung', '', '', 'inactivo', 'apagado', '3', '5', '4'),
(35, '5.06', '11456', '2447', '2016-09-27 07:51:57', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo proceda a la reapertura y refacciÃ³n\r\ndel Destacamento Policial en el Paraje GÃ³mez, departamento de Santo TomÃ©.\r\nDips. Yung y Giraud Cabral', ' yung', '', '', 'inactivo', 'apagado', '3', '5', '4'),
(36, '5.07', '11190', '2448', '2016-09-27 08:01:23', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja el PASE AL ARCHIVO del proyecto de resoluciÃ³n que\r\nsolicita al Poder Ejecutivo informe sobre la construcciÃ³n de la nueva comisarÃ­a y\r\ndestacamentos en Paso de la Patria, ResoluciÃ³n H.C.D. 50/16 con informe del\r\nMinisterio de Seguridad.', ' yung', '', '', 'inactivo', 'apagado', '', '5', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(133) NOT NULL,
  `nota` int(133) NOT NULL,
  `extracto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(133) NOT NULL,
  `proyecto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `proyecto`) VALUES
(1, 'LEYES'),
(2, 'RESOLUCIONES'),
(3, 'DECLARACIONES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id_subcat` int(133) NOT NULL,
  `subcategoria` varchar(255) NOT NULL,
  `categoria_id` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id_subcat`, `subcategoria`, `categoria_id`) VALUES
(1, 'LEYES', 3),
(2, 'RESOLUCIONES', 3),
(3, 'DECLARACIONES', 3),
(4, 'EXPEDIENTES CON DESPACHO DE COMISI&Oacute;N', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablas`
--

CREATE TABLE `tablas` (
  `id_tabla` int(133) NOT NULL,
  `item` varchar(255) NOT NULL,
  `expte` varchar(255) NOT NULL,
  `despacho` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extracto` text NOT NULL,
  `SI` text NOT NULL,
  `NO` text NOT NULL,
  `ABS` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `tablero` varchar(255) NOT NULL,
  `articulos` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `subcategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tablas`
--

INSERT INTO `tablas` (`id_tabla`, `item`, `expte`, `despacho`, `fecha`, `extracto`, `SI`, `NO`, `ABS`, `estado`, `tablero`, `articulos`, `categoria`, `subcategoria`) VALUES
(1, '3.01', '11558', '', '2016-09-23 17:59:45', 'Crea el CÃ³digo Procesal de Familia de la provincia de Corrientes.\r\nDips. Vischi y Salvarredy', '', '', '', 'inactivo', 'apagado', '', '3', '1'),
(2, '3.02', '11579', '', '2016-09-27 08:06:56', 'Crea un Juzgado de Paz en la localidad de Colonia Carlos Pellegrini.\r\nDip. Giraud Cabral', ' gaya', '', '', 'inactivo', 'encendido', '', '3', '1'),
(3, '3.03', '11559', '', '2016-09-26 12:21:06', 'Solicita a las autoridades del Banco de Corrientes S.A. un cajero\r\nautomÃ¡tico en el Hospital San JosÃ© de la ciudad de Paso de los Libres.\r\nDip. Vischi', '', '', '', 'inactivo', 'apagado', '', '3', '2'),
(4, '3.04', '11573', '', '2016-09-22 14:38:35', 'Solicita al Ministerio de Obras y Servicios PÃºblicos y a la DirecciÃ³n\r\nProvincial de Vialidad, el enripiado del camino en Ruta Provincial No 10 en el tramo\r\nentre la Escuela No 449 en el Paraje Lomas de Empedrado hasta el Paraje San Juancito,\r\nen la 4ta. SecciÃ³n del departamento de Empedrado.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '', '3', '2'),
(5, '3.05', '11574', '', '2016-09-22 14:38:35', 'Solicita a la empresa Caminos del ParanÃ¡ instale contenedores de\r\nbasura y cartelerÃ­a de preservaciÃ³n del medio ambiente en los tramos donde presta\r\nservicio.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '', '3', '2'),
(6, '3.06', '11575', '', '2016-09-22 14:38:35', 'Solicita a los Ministerios de EducaciÃ³n y al de Obras y Servicios\r\nPÃºblicos la refacciÃ³n total de la Escuela â€œJuan de la Rosa Ledesmaâ€ de la localidad de\r\nPedro R. FernÃ¡ndez, departamento de San Roque.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '', '3', '2'),
(7, '3.07', '11560', '', '2016-09-22 14:38:35', 'De interÃ©s el â€œDÃ­a del Profesorâ€.\r\nDip. Yung', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(8, '3.08', '11561', '', '2016-09-27 07:18:45', 'De interÃ©s el â€œDÃ­a del Psicopedagogoâ€.\r\nDip. Yung', '', ' molina', '', 'inactivo', 'apagado', '', '3', '3'),
(9, '3.09', '11562', '', '2016-09-22 14:38:35', '', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(10, '3.10', '11578', '', '2016-09-22 14:38:35', 'De beneplÃ¡cito y adhesiÃ³n a los actos por el â€œDÃ­a del Maestroâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(11, '3.11', '11580', '', '2016-09-22 14:38:35', 'De interÃ©s los actos conmemorativos por el â€œDÃ­a del Maestroâ€.\r\nDip. Saez', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(12, '3.12', '11563', '', '2016-09-22 14:38:35', 'De salutaciÃ³n al Pueblo y Gobierno de San Carlos, al conmemorarse\r\nun aÃ±o mÃ¡s de su fundaciÃ³n.\r\nDip. Yung', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(13, '3.13', '11564', '', '2016-09-22 14:38:35', 'De interÃ©s la presentaciÃ³n del Libro â€œAnita desde las ligas agrarias.\r\nTierra, trabajo y dignidadâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(14, '3.14', '11566', '', '2016-09-22 14:38:35', 'De interÃ©s la conmemoraciÃ³n del 44 Aniversario de LT 42 Radio del\r\nIberÃ¡, de la ciudad de Mercedes.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(15, '3.15', '11567', '', '2016-09-22 14:38:35', 'De interÃ©s el 13 Congreso Nacional de Derecho â€œNuevo marco jurÃ­dico\r\ny polÃ­tico nacionalâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(16, '3.16', '11571', '', '2016-09-22 14:38:35', 'De interÃ©s el 13 Congreso Nacional de Derecho â€œNuevo marco jurÃ­dico\r\ny polÃ­tico nacionalâ€.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(17, '3.17', '11568', '', '2016-09-22 14:38:35', 'De interÃ©s el â€œDÃ­a de la Agricultura y del Productor Agropecuarioâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(18, '3.18', '11570', '', '2016-09-27 05:15:00', 'De interÃ©s la conmemoraciÃ³n del 40 Aniversario del Instituto â€œValentÃ­n\r\nHaÃ¼yâ€.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(19, '3.19', '11572', '', '2016-09-22 14:38:35', 'De interÃ©s la propuesta de desarrollo profesional denominada: â€œCiclo\r\nde Congresos para la formaciÃ³n permanente y situadaâ€.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(20, '3.20', '11576', '', '2016-09-22 14:38:35', 'De interÃ©s los actos conmemorativos del Aniversario de la fundaciÃ³n\r\nde la localidad de ConcepciÃ³n del YaguaretÃ© CorÃ¡.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(21, '3.21', '11577', '', '2016-09-22 14:38:35', 'De beneplÃ¡cito el XII Encuentro de Educadores CatÃ³licos.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(22, '3.22', '11581', '', '2016-09-22 14:38:35', 'De interÃ©s la conmemoraciÃ³n las Fiestas Patronales de la localidad de\r\nColonia Pando.\r\nDip. Saez', '', '', '', 'inactivo', 'apagado', '', '3', '3'),
(23, '4.01', '11316', '2458', '2016-09-22 14:38:35', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de ley que declara de interÃ©s provincial, cultural y artesanal a las actividades que\r\ndesarrolla la fundaciÃ³n â€œManos Correntinasâ€.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar'),
(24, '4.02', '11268', '2457', '2016-09-22 14:38:35', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Instituto de Cultura de Corrientes arbitre los medios\r\na fin de colocar una placa conmemorativa en el inmueble ubicado en calle Dr. Mariano I.\r\nLoza No 851 de la ciudad de Goya, que fuera residencia del distinguido escritor y poeta\r\nDon Saturnino Muniagurria.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar'),
(25, '4.03', '11383', '2454', '2016-09-26 13:06:38', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo la construcciÃ³n e instalaciÃ³n de\r\nuna sala de primeros auxilios en la Colonia El Ciervo, departamento de San Miguel.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar'),
(26, '4.04', '11440', '2456', '2016-09-23 17:59:20', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Ministerio de EducaciÃ³n implemente los quioscos\r\nsaludables en las escuelas de la Provincia.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar'),
(27, '4.05', '11453', '2459', '2016-09-23 17:49:23', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo provea de un grupo electrÃ³geno\r\ndiÃ©sel de 40 Kw. trifÃ¡sico, a la Escuela de la Familia AgrÃ­cola Ã‘ande Roga I-36 de la\r\nlocalidad de San Miguel.\r\nDip. Meza', ' alfonzo', '', '', 'activo', 'apagado', '', '4', 'Sin asignar'),
(28, '4.06', '11466', '2455', '2016-09-23 17:47:19', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIO-\r\nNES al proyecto de resoluciÃ³n que solicita al Poder Ejecutivo la construcciÃ³n de un\r\ntinglado en la Escuela No 553 â€œSan Cayetanoâ€.\r\nDip. Romero', '', ' alfonzo', '', 'inactivo', 'apagado', '', '4', 'Sin asignar'),
(29, '5.01', '11004', '2451', '2016-09-27 07:46:21', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de ley de adhesiÃ³n a la Ley Nacional No 26.334 â€“RÃ©gimen de\r\npromociÃ³n nacional de producciÃ³n bioetanol caÃ±a de azÃºcar-.\r\nDip. Locatelli', ' yung', '', '', 'inactivo', 'apagado', '10', '5', '4'),
(30, '1.01', '11552', '', '2016-09-27 06:53:58', 'Mensaje y proyecto de ley del Poder Ejecutivo que declara la\r\nnecesidad de la reforma parcial de la ConstituciÃ³n de la provincia de Corrientes.', ' lopez', '', '', 'inactivo', 'apagado', '', '1', 'Sin asignar'),
(31, '5.02', '11362', '2450', '2016-09-22 14:38:35', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de ley de adhesiÃ³n a la Ley Nacional No 24.333 â€“DÃ­a nacional del\r\ncooperativismo-.\r\nDip. Saez', '', '', '', 'inactivo', 'apagado', '', '5', '4'),
(32, '5.03', '11006', '2453', '2016-09-22 14:38:35', 'de la ComisiÃ³n de NiÃ±ez, Adolescencia y Familia\r\nque aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al proyecto de\r\nresoluciÃ³n que solicita al Poder Ejecutivo la creaciÃ³n en la ciudad de Paso de los Libres,\r\nde una delegaciÃ³n con carÃ¡cter permanente del Consejo Provincial de NiÃ±ez y\r\nAdolescencia (COPNAF).\r\nDips. MÃ³rtola y YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '5', '4'),
(33, '5.04', '11072', '2452', '2016-09-22 14:38:35', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de resoluciÃ³n que solicita al Banco de Corrientes S.A. dÃ© amplia\r\ndifusiÃ³n al Programa FODIN.\r\nDip. Parodi', '', '', '', 'inactivo', 'apagado', '', '5', '4'),
(34, '5.05', '11456', '2446', '2016-09-22 14:38:35', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo proceda a la reapertura y refacciÃ³n\r\ndel Destacamento Policial en el Paraje GÃ³mez, departamento de Santo TomÃ©.\r\nDips. Yung y Giraud Cabral', '', '', '', 'inactivo', 'apagado', '', '5', '4'),
(35, '5.06', '11456', '2447', '2016-09-27 07:51:53', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo la creaciÃ³n de una nueva\r\ndelegaciÃ³n de la PolicÃ­a Rural e Islas y Ambiente Rural (PRIAR) en inmediaciones de la\r\nlocalidad de Bonpland.\r\nDip. Vischi', '', '', '', 'inactivo', 'apagado', '', '5', '4'),
(36, '5.07', '11190', '2448', '2016-09-27 08:01:31', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja el PASE AL ARCHIVO del proyecto de resoluciÃ³n que\r\nsolicita al Poder Ejecutivo informe sobre la construcciÃ³n de la nueva comisarÃ­a y\r\ndestacamentos en Paso de la Patria, ResoluciÃ³n H.C.D. 50/16 con informe del\r\nMinisterio de Seguridad.', '', '', '', 'inactivo', 'apagado', '', '5', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(2) UNSIGNED ZEROFILL NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `rango` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `abstencion` varchar(255) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `clave`, `nombre`, `apellido`, `correo`, `foto`, `file`, `rango`, `estado`, `abstencion`, `registro`) VALUES
(01, 'pabloruiz1980', 'soledad', 'Pablo', 'Ruiz', 'pabloruiz1980@outlook.com', '', '', 'operador', 'presente', 'inactivo', '2016-09-27 07:58:14'),
(04, 'miguelito', 'diputados', 'Miguel', 'Vidal', 'miguelvidal@hotmail.com', '', '', 'editor', 'ausente', 'inactivo', '2016-09-06 10:22:32'),
(05, 'meixner', 'meixner', 'Ernesto', 'Meixner', 'ernestomeixner@hotmail.com', 'meixner.jpg', '', 'diputado', 'desconectado', 'inactivo', '2016-09-27 05:11:32'),
(06, 'alfonzo', 'alfonzo', '', '', '', 'alfonzo.jpg', '', 'diputado', 'desconectado', 'inactivo', '2016-09-27 05:31:21'),
(07, 'acevedo', 'acevedo', '', '', '', 'acevedo.jpg', '', 'diputado', 'desconectado', 'inactivo', '2016-09-27 05:33:14'),
(08, 'bestard', 'bestard', '', '', '', 'bestard.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-26 14:05:53'),
(09, 'cassani', 'cassani', '', '', '', 'cassani.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-26 14:40:39'),
(10, 'cordero', 'cordero', '', '', '', 'cordero.jpg', '', 'diputado', 'desconectado', 'inactivo', '2016-09-27 06:33:31'),
(11, 'chain', 'chain', '', '', '', 'chain.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-26 15:45:43'),
(12, 'barrionuevo', 'barrionuevo', '', '', '', 'barrionuevo.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-12 15:11:31'),
(13, 'affur', 'affur', '', '', '', 'affur.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 05:33:21'),
(14, 'gaya', 'gaya', '', '', '', 'gaya.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 08:01:57'),
(15, 'garcia', 'garcia', '', '', '', 'garcia.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-12 15:11:31'),
(16, 'giraud', 'giraud', '', '', '', 'giraud.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-12 15:11:31'),
(17, 'locatelli', 'locatelli', '', '', '', 'locatelli.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-16 14:09:19'),
(18, 'lopez', 'lopez', '', '', '', 'lopez.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 06:53:41'),
(19, 'mancini', 'mancini', '', '', '', 'mancini.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-26 15:45:43'),
(20, 'meza', 'meza', '', '', '', 'meza.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-26 15:45:43'),
(21, 'molina', 'molina', '', '', '', 'molina.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 07:25:09'),
(22, 'moray', 'moray', '', '', '', 'moray.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-26 15:45:43'),
(23, 'mortola', 'mortola', '', '', '', 'mortola.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-16 14:09:19'),
(24, 'parodi', 'parodi', '', '', '', 'parodi.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-16 14:09:19'),
(25, 'calvi', 'calvi', '', '', '', 'calvi.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 05:11:44'),
(26, 'romero', 'romero', '', '', '', 'romero.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-06 10:23:16'),
(27, 'salvarredy', 'salvarredy', '', '', '', 'salvarredy.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-06 10:23:19'),
(28, 'saez', 'saez', '', '', '', 'saez.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 06:33:41'),
(29, 'tassano', 'tassano', '', '', '', 'tassano.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-06 10:23:36'),
(30, 'yardin', 'yardin', '', '', '', 'yardin.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-12 15:11:31'),
(31, 'vassel', 'vassel', '', '', '', 'vassel.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-06 10:23:39'),
(32, 'vischi', 'vischi', '', '', '', 'vischi.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-06 10:23:43'),
(33, 'yagueddu', 'yagueddu', '', '', '', 'yagueddu.jpg', '', 'diputado', 'ausente', 'inactivo', '2016-09-06 10:23:45'),
(34, 'yung', 'yung', '', '', '', 'yung.jpg', '', 'diputado', 'presente', 'inactivo', '2016-09-27 07:39:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `exptes`
--
ALTER TABLE `exptes`
  ADD PRIMARY KEY (`id_expte`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id_subcat`);

--
-- Indices de la tabla `tablas`
--
ALTER TABLE `tablas`
  ADD PRIMARY KEY (`id_tabla`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `exptes`
--
ALTER TABLE `exptes`
  MODIFY `id_expte` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id_nota` int(133) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_subcat` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tablas`
--
ALTER TABLE `tablas`
  MODIFY `id_tabla` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
