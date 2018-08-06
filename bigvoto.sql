-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2018 a las 15:54:49
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bigvoto`
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
  `fecha` date NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `sesion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `articulo`, `expte_id`, `SI`, `NO`, `ABS`, `power`, `tablero`, `fecha`, `resultado`, `nominal`, `sesion`) VALUES
(293, 1, 11317, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(294, 2, 11317, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(295, 3, 11317, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(296, 4, 11317, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(297, 5, 11317, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(298, 1, 11699, ' mortola salvarredy alfonzo vassel gaya tassano giraud romero cordero molina meza locatelli barrionuevo bestard moray vischi garcia yung yardin yagueddu acevedo meixner affur', '', '', 'off', 'apagado', '2016-11-16', 'aprobado', 'inhabilitado', 0),
(299, 2, 11699, ' yagueddu alfonzo locatelli', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(300, 1, 11700, ' acevedo tassano meixner molina cordero vischi yung gaya meza vassel yardin moray barrionuevo affur mortola yagueddu giraud salvarredy garcia romero bestard locatelli alfonzo', '', '', 'off', 'apagado', '2016-11-16', 'aprobado', 'inhabilitado', 0),
(301, 2, 11700, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(302, 1, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(303, 2, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(304, 3, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(305, 4, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(306, 5, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(307, 6, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(308, 7, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(309, 8, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(310, 9, 11690, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(311, 1, 11652, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(312, 2, 11652, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(313, 3, 11652, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(314, 1, 11729, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(315, 2, 11729, '', '', '', 'off', 'apagado', '2016-11-16', '', 'inhabilitado', 0),
(324, 1, 11847, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(325, 2, 11847, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(326, 3, 11847, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(327, 1, 11856, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(328, 2, 11856, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(329, 3, 11856, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(330, 1, 11857, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(331, 2, 11857, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(332, 3, 11857, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(333, 4, 11857, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(334, 1, 11852, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(335, 2, 11852, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(336, 3, 11852, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(337, 4, 11852, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(338, 1, 11854, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(339, 2, 11854, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(340, 1, 11855, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(341, 2, 11855, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(342, 1, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(343, 2, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(344, 3, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(345, 4, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(346, 5, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(347, 6, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(348, 7, 10512, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(349, 1, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(350, 2, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(351, 3, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(352, 4, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(353, 5, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(354, 6, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(355, 7, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(356, 8, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(357, 9, 10451, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(358, 1, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(359, 2, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(360, 3, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(361, 4, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(362, 5, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(363, 6, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(364, 7, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(365, 8, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(366, 9, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(367, 10, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(368, 11, 11291, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(369, 1, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(370, 2, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(371, 3, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(372, 4, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(373, 5, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(374, 6, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(375, 7, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(376, 8, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(377, 9, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(378, 10, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(379, 11, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(380, 12, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(381, 13, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(382, 14, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(383, 15, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(384, 16, 11735, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(385, 1, 11701, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(386, 2, 11701, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(387, 1, 11727, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(388, 2, 11727, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(404, 1, 11833, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(405, 2, 11833, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(406, 3, 11833, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(407, 4, 11833, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(408, 1, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(409, 2, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(410, 3, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(411, 4, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(412, 5, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(413, 6, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(414, 7, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(415, 8, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(416, 9, 11820, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(417, 1, 11739, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(418, 2, 11739, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(419, 3, 11739, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(420, 4, 11739, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(421, 5, 11739, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(422, 1, 11655, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(423, 2, 11655, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(424, 1, 11685, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(425, 2, 11685, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(426, 1, 11687, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(427, 2, 11687, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(428, 1, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(429, 2, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(430, 3, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(431, 4, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(432, 5, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(433, 6, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(434, 7, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(435, 8, 11497, '', '', '', 'off', 'apagado', '2016-11-23', '', 'inhabilitado', 28),
(441, 1, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(442, 2, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(443, 3, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(444, 4, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(445, 5, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(446, 6, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(447, 7, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(448, 8, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(449, 9, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(450, 10, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(451, 11, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(452, 12, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(453, 13, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(454, 14, 11877, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(455, 1, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(456, 2, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(457, 3, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(458, 4, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(459, 5, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(460, 6, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(461, 7, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(462, 8, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(463, 9, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(464, 10, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(465, 11, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(466, 12, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(467, 13, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(468, 14, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(469, 15, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(470, 16, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(471, 17, 11879, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(472, 1, 11883, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(473, 2, 11883, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(474, 3, 11883, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(475, 4, 11883, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(476, 1, 11876, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(477, 2, 11876, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(478, 1, 11880, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(479, 2, 11880, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(480, 1, 11881, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(481, 2, 11881, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(482, 1, 11884, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(483, 2, 11884, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(484, 1, 11886, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(485, 2, 11886, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(486, 1, 11867, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(487, 2, 11867, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(488, 3, 11867, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(489, 1, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(490, 2, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(491, 3, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(492, 4, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(493, 5, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(494, 6, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(495, 7, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(496, 8, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(497, 9, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(498, 10, 11868, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(499, 1, 11869, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(500, 2, 11869, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(501, 3, 11869, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(502, 1, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(503, 2, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(504, 3, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(505, 4, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(506, 5, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(507, 6, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(508, 7, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(509, 8, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(510, 9, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(511, 10, 11870, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(512, 1, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(513, 2, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(514, 3, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(515, 4, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(516, 5, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(517, 6, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(518, 7, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(519, 8, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(520, 9, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(521, 10, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(522, 11, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(523, 12, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(524, 13, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(525, 14, 11871, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(526, 1, 11872, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(527, 2, 11872, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(528, 3, 11872, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(529, 4, 11872, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(530, 1, 11873, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(531, 2, 11873, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(532, 3, 11873, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(533, 4, 11873, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(534, 1, 11874, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(535, 2, 11874, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(536, 3, 11874, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(537, 1, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(538, 2, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(539, 3, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(540, 4, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(541, 5, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(542, 6, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(543, 7, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(544, 8, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(545, 9, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(546, 10, 11875, '', '', '', 'off', 'apagado', '2017-03-01', '', 'inhabilitado', 1),
(547, 1, 11890, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(548, 2, 11890, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(549, 3, 11890, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(550, 1, 11902, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(551, 2, 11902, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(552, 1, 11912, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(553, 2, 11912, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(554, 3, 11912, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(555, 4, 11912, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(556, 5, 11912, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(557, 1, 11915, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(558, 2, 11915, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(559, 3, 11915, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(560, 4, 11915, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(561, 5, 11915, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(562, 6, 11915, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(563, 1, 11916, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(564, 2, 11916, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(565, 3, 11916, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(566, 4, 11916, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(567, 5, 11916, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(568, 1, 11913, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(569, 2, 11913, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(570, 3, 11913, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(571, 4, 11913, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(572, 5, 11913, '', '', '', 'off', 'apagado', '2017-03-08', '', 'inhabilitado', 28),
(573, 1, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(574, 2, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(575, 3, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(576, 4, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(577, 5, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(578, 6, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(579, 7, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(580, 8, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(581, 9, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(582, 10, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(583, 11, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(584, 12, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(585, 13, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(586, 14, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(587, 15, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(588, 16, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(589, 17, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(590, 18, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(591, 19, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(592, 20, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(593, 21, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(594, 22, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(595, 23, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(596, 24, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(597, 25, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(598, 26, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(599, 27, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(600, 28, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(601, 29, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(602, 30, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(603, 31, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(604, 32, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(605, 33, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(606, 34, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(607, 35, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(608, 36, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(609, 37, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(610, 38, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(611, 39, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(612, 40, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(613, 41, 11966, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(614, 1, 11954, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(615, 2, 11954, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(616, 3, 11954, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(617, 1, 11957, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(618, 2, 11957, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(619, 1, 11958, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(620, 2, 11958, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(621, 1, 11961, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(622, 2, 11961, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(623, 1, 11964, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(624, 2, 11964, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(625, 3, 11964, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(626, 1, 11965, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(627, 2, 11965, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(633, 1, 11952, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(634, 2, 11952, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(635, 3, 11952, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(636, 4, 11952, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(637, 5, 11952, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(638, 1, 11953, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(639, 2, 11953, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28),
(640, 3, 11953, '', '', '', 'off', 'apagado', '2017-03-22', '', 'inhabilitado', 28);

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
(5, 'EXPEDIENTES A TRATAR:'),
(6, 'EXPTES. VENIDOS EN REVISION DEL HONORABLE SENADO:'),
(7, 'COMUNICACIONES OFICIALES'),
(8, 'COMUNICACIONES PARTICULARES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(133) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`) VALUES
(1, 'aprobado'),
(2, 'rechazado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exptes`
--

CREATE TABLE `exptes` (
  `id_expte` int(133) NOT NULL,
  `item` varchar(255) NOT NULL,
  `expte` varchar(255) NOT NULL,
  `despacho` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `extracto` text NOT NULL,
  `SI` text NOT NULL,
  `NO` text NOT NULL,
  `ABS` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `tablero` varchar(255) NOT NULL,
  `articulos` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `subcategoria` varchar(255) NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `sesion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `exptes`
--

INSERT INTO `exptes` (`id_expte`, `item`, `expte`, `despacho`, `fecha`, `extracto`, `SI`, `NO`, `ABS`, `estado`, `tablero`, `articulos`, `categoria`, `subcategoria`, `resultado`, `nominal`, `sesion`) VALUES
(1, '6.01', '11699', '2520', '2016-11-16', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo implemente las medidas\r\nnecesarias para la construcciÃ³n del edificio propio del Cuerpo de Bomberos Voluntarios\r\nde San Luis del Palmar.\r\nDip. Romero', ' barrionuevo salvarredy mortola locatelli vischi affur bestard giraud molina meixner moray yung cordero gaya tassano meza romero garcia acevedo vassel yagueddu alfonzo yardin', '', '', 'inactivo', 'apagado', '2', '5', 'Sin asignar', 'aprobado', 'inhabilitado', 0),
(2, '6.02', '11700', '2519', '2016-11-16', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo implemente las medidas\r\nnecesarias para la construcciÃ³n de la Escuela Especial No 24.\r\nDip. Romero', ' barrionuevo acevedo mortola salvarredy giraud locatelli bestard gaya vassel yardin tassano romero vischi molina meza meixner yung cordero moray alfonzo garcia yagueddu affur', '', '', 'inactivo', 'apagado', '2', '5', 'Sin asignar', 'aprobado', 'inhabilitado', 0),
(3, '6.03', '11690', '2516', '2016-11-16', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIO-\r\nNES al proyecto de ley venido en revisiÃ³n del Honorable Senado por el que se crean\r\ndistintos juzgados y se procede a la transformaciÃ³n de competencia de otros ya existentes.\r\nSdor. MiÃ±o', ' vischi mortola cordero giraud barrionuevo acevedo gaya yung yagueddu salvarredy vassel bestard alfonzo meixner tassano affur yardin locatelli moray meza romero molina garcia', '', '', 'inactivo', 'apagado', '', '5', '4', 'aprobado', 'inhabilitado', 0),
(4, '6.04', '11317', '2518', '2016-11-16', 'de la ComisiÃ³n de LegislaciÃ³n del Trabajo,\r\nPrevisiÃ³n y Seguridad Social que aconseja SANCIÃ“N FAVORABLE CON\r\nMODIFICACIONES al proyecto de ley que modifica el sistema de la Caja de PrevisiÃ³n\r\nSocial destinada a los profesionales de la salud de la provincia de Corrientes.\r\nDips. B. Encuentro por Corrientes', ' acevedo locatelli gaya mortola barrionuevo vassel meixner bestard yung yardin meza moray giraud salvarredy cordero molina vischi tassano yagueddu romero affur alfonzo garcia', '', '', 'inactivo', 'apagado', '5', '5', '4', 'aprobado', 'inhabilitado', 0),
(5, '6.05', '11652', '2515', '2016-11-16', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo se proceda a la conversiÃ³n de la\r\nsecciÃ³n femenina de la ComisarÃ­a Departamental de Bella Vista en ComisarÃ­a de la\r\nMujer.\r\nDip. Yung', ' giraud acevedo barrionuevo vassel mortola yung bestard vischi yardin cordero gaya salvarredy meza moray romero molina tassano affur meixner garcia yagueddu locatelli alfonzo', '', '', 'inactivo', 'apagado', '', '5', '4', 'aprobado', 'inhabilitado', 0),
(6, '4.02', '10451', '2530', '2017-03-01', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de ley de creaciÃ³n en el Ã¡mbito de la PolicÃ­a de la Provincia, del gabinete de\r\nasistencia psicolÃ³gica para el personal policial.\r\nDip. Yung', ' acevedo barrionuevo cordero molina yagueddu vischi salvarredy romero gaya affur mancini giraud meixner garcia moray tassano bestard meza yung saez mortola parodi', '', '', 'inactivo', 'apagado', '9', '4', 'Sin asignar', 'aprobado', 'inhabilitado', 28),
(7, '5.01', '11497', '2525', '2016-11-23', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley venido en revisiÃ³n del Honorable Senado de acceso a la justicia -\r\nDefensa PÃºblica Gratuita.\r\nSdores. Fagetti, Breard y Flinta', ' barrionuevo acevedo salvarredy giraud tassano bestard moray chain parodi saez meza cordero yung yagueddu romero alfonzo garcia molina gaya vischi meixner mortola mancini', '', '', 'inactivo', 'apagado', '8', '5', '5', 'aprobado', 'inhabilitado', 28),
(8, '5.02', '11833', '', '2016-11-23', 'Proyecto de ley venido en revisiÃ³n del Honorable Senado que crea un\r\nJuzgado de Paz, en la localidad de Gobernador Juan E. MartÃ­nez, departamento de\r\nLavalle.\r\nSdora. Insaurralde', ' barrionuevo moray chain meza acevedo tassano affur vischi romero yagueddu gaya saez cordero yung bestard meixner mancini alfonzo molina parodi salvarredy mortola garcia giraud', '', '', 'inactivo', 'apagado', '4', '5', '5', 'aprobado', 'inhabilitado', 28),
(9, '5.03', '11820', '', '2016-11-23', 'Declara emergencia pÃºblica en materia de consumos problemÃ¡ticos y\r\nadicciones.\r\nDip. Locatelli', ' barrionuevo bestard giraud chain moray parodi acevedo mancini meza romero affur gaya yung yagueddu tassano saez cordero molina salvarredy meixner vischi garcia mortola alfonzo', '', '', 'inactivo', 'apagado', '9', '5', '5', 'aprobado', 'inhabilitado', 28),
(10, '5.04', '11739', '2524', '2016-11-23', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley venido en revisiÃ³n del Honorable Senado por el que se declara de\r\nutilidad pÃºblica y sujeto a expropiaciÃ³n un inmueble ubicado en la secciÃ³n rural de\r\nMonte Caseros con destino a la construcciÃ³n del Parque Industrial de Juan Pujol.\r\nSdor. Fick', ' acevedo yung barrionuevo gaya tassano parodi yagueddu meza cordero salvarredy bestard moray saez garcia mancini molina giraud meixner mortola alfonzo vischi romero affur', '', '', 'inactivo', 'apagado', '5', '5', '4', 'aprobado', 'inhabilitado', 28),
(11, '5.05', '11655', '2523', '2016-11-23', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo realice obras de refacciÃ³n en el\r\nsector de detenciÃ³n y de resguardo del personal policial de la ComisarÃ­a Urbana Primera\r\nde la localidad de Bella Vista.\r\nDip. Yung', ' alfonzo giraud barrionuevo yagueddu mortola moray', '', '', 'inactivo', 'apagado', '2', '5', '4', '', 'inhabilitado', 28),
(12, '5.06', '11685', '2522', '2016-11-23', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita a la DirecciÃ³n Nacional de Vialidad, iluminaciÃ³n y\r\nmodificaciÃ³n del acceso este a la ciudad de Mercedes, en el cruce de la Ruta NÂº 123 y\r\nRuta Provincial NÂº 40.\r\nDip. Molina', ' barrionuevo giraud gaya vischi acevedo bestard salvarredy parodi moray cordero garcia saez meza molina mancini meixner yagueddu yung affur tassano romero mortola alfonzo', '', '', 'inactivo', 'apagado', '2', '5', '4', 'aprobado', 'inhabilitado', 28),
(13, '5.07', '11687', '2521', '2016-11-23', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo construcciÃ³n de un tinglado en\r\nel Colegio Secundario â€œGenaro BerÃ³n de Astradaâ€ de la localidad de San Antonio de\r\nItatÃ­.\r\nDip. Yung', ' acevedo tassano saez parodi yagueddu barrionuevo moray gaya garcia mancini yung cordero bestard giraud alfonzo meza romero affur meixner vischi molina mortola salvarredy', '', '', 'inactivo', 'apagado', '2', '5', '4', 'aprobado', 'inhabilitado', 28),
(14, '6.02', '11952', '', '2017-03-22', 'Mensaje y proyecto de ley del Poder Ejecutivo que dispone la intervenciÃ³n de la Municipalidad de ItatÃ­', ' bestard calvi cassani chain cordero affur gaya lopez mancini molina romero saez salvarredy vassel vischi', ' acevedo alfonzo barrionuevo garcia giraud locatelli meixner meza moray mortola yagueddu yardin yung', '', 'inactivo', 'apagado', '', '5', '5', 'rechazado', 'inhabilitado', 3),
(15, '6.03', '11953', '', '2017-03-22', 'Dispone la intervenciÃ³n de la Municipalidad de ItatÃ­. Dip. yung.', ' bestard calvi cassani chain cordero affur gaya lopez mancini molina romero saez salvarredy vassel vischi yung calvi', ' acevedo alfonzo barrionuevo garcia giraud locatelli meixner meza moray mortola yardin yagueddu', '', 'inactivo', 'apagado', '', '5', '5', 'rechazado', 'inhabilitado', 3),
(130, '', '12687', '', '2018-04-25', 'Designa al Ministerio de Hacienda y Finanzas de la Provincia, como\r\nÃ³rgano responsable de aplicaciÃ³n de la Ley NÂº 5639 â€“AdhesiÃ³n a la Ley Nacional 25917:\r\nRÃ©gimen Federal de Responsabilidad Fiscal-.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(131, '', '12697', '', '2018-04-25', 'CreaciÃ³n de un Juzgado de Paz con asiento en la localidad de JosÃ©\r\nRafael GÃ³mez (GaravÃ­), departamento de Santo TomÃ©.\r\nDip. Giraud Cabral', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(132, '', '12700', '', '2018-04-25', 'Declara monumento histÃ³rico y religioso e integrante del patrimonio\r\ncultural y paisajÃ­stico de la Provincia de Corrientes, a la Iglesia Parroquial Nuestra\r\nSeÃ±ora de las Mercedes, de la ciudad de Mercedes.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(133, '', '12708', '', '2018-04-25', 'Asistencia Integral a la Primera Infancia basada en el fortalecimiento\r\nde la familia.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(134, '', '12709', '', '2018-04-25', 'Incorpora el artÃ­culo 48 bis a la Ley NÂº 4067 â€“Estatuto del Empleado\r\nPÃºblico-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(135, '', '12710', '', '2018-04-25', 'Modifica la Ley NÂº 3723 â€“Estatuto del Docente â€“ agrega el artÃ­culo 24\r\nbis â€œperfeccionamiento docente gratuito y obligatorioâ€-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(136, '', '12721', '', '2018-04-25', 'ExtensiÃ³n de la exenciÃ³n del impuesto sobre los ingresos brutos a todas\r\nlas empresas prestadoras del servicio de energÃ­a elÃ©ctrica, agua y cloacas.\r\nVarios SeÃ±ores Diputados', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(137, '', '12686', '', '2018-04-25', 'Solicita al Poder Ejecutivo informe condiciones, montos y entidad\r\notorgante del endeudamiento que totaliza la suma de $936,54 millones.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(138, '', '12692', '', '2018-04-25', 'Solicita al Poder Ejecutivo la creaciÃ³n de una delegaciÃ³n de la PolicÃ­a\r\nRural e Islas y Ambiente Rural (PRIAR) en inmediaciones de la localidad de Santa LucÃ­a.\r\nDip. ChaÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(139, '', '12694', '', '2018-04-25', 'Invita a la Sra. Graciela FernÃ¡ndez Meijide a fin de rendirle homenaje\r\npor su invalorable contribuciÃ³n a garantizar los derechos humanos.\r\nDip. Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(140, '', '12699', '', '2018-04-25', 'Solicita al Poder Ejecutivo la instalaciÃ³n de un puesto caminero\r\npolicial sobre Ruta Nacional NÂº 119, entre las ciudades de Mercedes y Mariano I. Loza.\r\nDip. Molina', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(141, '', '12703', '', '2018-04-25', 'Solicita al Poder Ejecutivo disponga los medios necesarios para el\r\nfuncionamiento de una sala de primeros auxilios en el paraje â€œBajo Atalayaâ€,\r\ndepartamento de Santo TomÃ©.\r\nDips. Rotela CaÃ±ete y SÃ¡ez', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(142, '', '12704', '', '2018-04-25', 'Solicita al Poder Ejecutivo arbitre los medios necesarios para poner en\r\nfuncionamiento el Ente Provincial Regulador ElÃ©ctrico, creado por Ley NÂº 6073.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(143, '', '12705', '', '2018-04-25', 'Solicita a la DirecciÃ³n Nacional de Vialidad, la iluminaciÃ³n de la\r\nintersecciÃ³n de la Ruta Nacional NÂº 123 con la Ruta Provincial NÂº 40, acceso a los\r\nEsteros del IberÃ¡ y empalme con el acceso este de la ciudad de Mercedes, provincia de\r\nCorrientes.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(144, '', '12712', '', '2018-04-25', 'Solicita al Poder Ejecutivo Nacional la exenciÃ³n del IVA a la venta y\r\nprovisiÃ³n de energÃ­a destinada al uso residencial.\r\nDip. MÃ³rtola\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(145, '', '12713', '', '2018-04-25', 'Solicita al Poder Ejecutivo Nacional la exenciÃ³n del IVA a los\r\nprestadores y consumidores del servicio de energÃ­a elÃ©ctrica de la Provincia.\r\nDip. YardÃ­n\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(146, '', '12714', '', '2018-04-25', 'Solicita a la DirecciÃ³n Nacional y Provincial de Vialidad el\r\ncumplimiento del control del transporte de carga.\r\nDip. Mancini\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(147, '', '12696', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n del â€œCongreso Regional NEA â€“ CRA â€“\r\nProtagonistas del Futuroâ€.\r\nDip. Cassani\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(148, '', '12698', '', '2018-04-25', 'De interÃ©s los actos por el 137Âº aniversario de la fundaciÃ³n de la\r\nlocalidad de Amado Bonpland.\r\nDip. Acevedo', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(149, '', '12701', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n de las â€œVII Jornadas Internacionales de\r\nOrtodoncia de Corrientesâ€.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(150, '', '12702', '', '2018-04-25', 'De interÃ©s la conmemoraciÃ³n del 100Âº aniversario de la fundaciÃ³n del\r\nâ€œClub HuracÃ¡n Corrientesâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(151, '', '12706', '', '2018-04-25', 'De adhesiÃ³n a los actos conmemorativos por el asesinato de Juan JosÃ©\r\nCabral, ocurrido durante el denominado â€œCorrentinazoâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(152, '', '12707', '', '2018-04-25', 'De interÃ©s la conmemoraciÃ³n por el â€œDÃ­a del Animalâ€.\r\nDip. Locatelli\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(153, '', '12711', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n de la 10Âº EdiciÃ³n de la Asamblea de los 30\r\nPueblos Jesuitas - GuaranÃ­es â€œEstrategias para el desarrollo rural de los pueblos Jesuitas â€“\r\nGuaranÃ­esâ€.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(154, '', '12715', '', '2018-04-25', 'De interÃ©s los actos y festejos, por un aÃ±o mÃ¡s de la fundaciÃ³n de\r\nPueblo Libertador, departamento de Esquina.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(155, '', '12716', '', '2018-04-25', 'De interÃ©s los actos y festejos con motivo de las fiestas patronales de\r\nSanta Rita de Casia, a realizarse en la ciudad de Esquina.\r\nDip. Mancini\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(156, '', '12717', '', '2018-04-25', 'De interÃ©s los actos y festejos por el 94Âº aniversario de la fundaciÃ³n de\r\nla localidad de Colonia Liebig, departamento de ItuzaingÃ³.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(157, '', '12718', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n del â€œEncuentro Nacional de MediaciÃ³n\r\nCorrientes 2018â€.\r\nDip. ChaÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(158, '', '12720', '', '2018-04-25', 'De interÃ©s las actividades del Centro de Estudios y FormaciÃ³n para el\r\nDesarrollo de PolÃ­ticas Sociales de la AsociaciÃ³n Civil â€œ8 de Octubreâ€.\r\nDip. Pereyra', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(159, '', '12216', '', '2018-04-25', 'de la ComisiÃ³n de LegislaciÃ³n del Trabajo,\r\nPrevisiÃ³n y Seguridad Social que aconseja SANCIÃ“N FAVORABLE SIN\r\nMODIFICACIONES al proyecto de ley venido en revisiÃ³n del Honorable Senado por el\r\nque se modifica el Decreto Ley NÂº 206/01 â€“RÃ©gimen para el personal aeronavegante\r\nperteneciente a la DirecciÃ³n Provincial de AeronÃ¡utica de la Provincia-.\r\nSdora. RodrÃ­guez', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(160, '', '12498', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a,\r\nTransporte, Obras y Servicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE CON\r\nMODIFICACIONES al Expte. NÂº 12498: Declara de interÃ©s provincial la utilizaciÃ³n de\r\nfuentes renovables de energÃ­a y adhesiÃ³n de la Provincia a la Ley Nacional NÂº 27191 â€“\r\nRÃ©gimen de fomento para el uso de fuentes renovables de energÃ­a, destinadas a la\r\nproducciÃ³n de energÃ­a elÃ©ctrica- y Expte. 12431: AdhesiÃ³n a la Ley Nacional NÂº 27191,\r\nmodificatoria de la Ley Nacional NÂº 26190 â€“RÃ©gimen de fomento nacional para el uso de\r\nfuentes renovables de energÃ­a-.\r\nExpte. 12498: Sdora. Sand Giorasi - Expte. 12431: Dip. Mancini ', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(161, '', '12014', '', '2018-04-25', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley que incorpora el artÃ­culo 14 bis a la Ley NÂº 4274 â€“Asociaciones\r\nde Bomberos Voluntarios-.\r\n Dip. Cassani', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(162, '', '12158', '', '2018-04-25', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de ley de creaciÃ³n de la Escuela de Gobierno de la Provincia de Corrientes.\r\nDips. LÃ³pez, Calvi, Cordero Holtz y Vassel', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(163, '', '12628', '', '2018-04-25', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley de creaciÃ³n de Juzgados de Paz en las localidades de Tres de\r\nAbril, Felipe Yofre, Mariano I. Loza y Carlos Pellegrini.\r\nDip. Cassani\r\n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(164, '', '12627', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo y a la SecretarÃ­a de Deportes, la\r\nconstrucciÃ³n de un tinglado deportivo en la Escuela NÂº 560 â€œVictoria Delgado de Sotoâ€,\r\nde la localidad de Gobernador Virasoro.\r\nDip. Pozo\r\n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(165, '', '12568', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Ministerio de EducaciÃ³n la reparaciÃ³n y\r\nampliaciÃ³n del edificio de la Escuela NÂº 875 â€œGranaderos de San MartÃ­nâ€ del paraje\r\nSanta Ana, de la localidad de Amado Bonpland, departamento de Paso de los Libres.\r\nDips. Acevedo y YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(166, '', '12626', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita a la empresa Aguas de Corrientes S.A. el\r\nemplazamiento y construcciÃ³n efectiva de la lÃ­nea cloacal en el barrio San Antonio Oeste.\r\nDip. SÃ¡ez\r\n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(167, '', '12629', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Ministerio de ProducciÃ³n el enripiado del acceso\r\nal paraje RincÃ³n de SarandÃ­, departamento de Esquina.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(168, '', '12681', '', '2018-04-25', 'Solicita a la ComisiÃ³n Nacional de RegulaciÃ³n del Transporte, un\r\ncontrol exhaustivo de los vehÃ­culos de transporte de pasajeros de media y larga distancia\r\nen el Ã¡mbito de la provincia.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '5', '6', '', '', 6),
(169, '', '12462', '', '2018-04-25', 'de la ComisiÃ³n de Salud PÃºblica que aconseja\r\nSANCIÃ“N FAVORABLE SIN MODIFICACIONES al proyecto de ley de adhesiÃ³n a\r\nla Ley Nacional NÂº 17565 â€“Regula el ejercicio de la actividad farmacÃ©utica-.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', '', 6),
(170, '', '12205', '', '2018-04-25', 'de la ComisiÃ³n de Salud PÃºblica que aconseja\r\nSANCIÃ“N FAVORABLE SIN MODIFICACIONES al proyecto de resoluciÃ³n que\r\nsolicita al Poder Ejecutivo la provisiÃ³n de un mÃ©dico obstetra, un mÃ©dico pediatra, un\r\nmÃ©dico ginecÃ³logo y un mÃ©dico clÃ­nico, para el hospital de la localidad de Colonia Carlos\r\nPellegrini.\r\nDip. Giraud Cabral', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', '', 6),
(171, '', '12752', '', '2018-05-16', 'CreaciÃ³n del Instituto TraumatolÃ³gico de Corrientes (I.T.C.).\r\nDip. ChaÃ­n\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(172, '', '12755', '', '2018-05-16', 'Digesto JurÃ­dico de la Provincia de Corrientes.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(173, '', '12758', '', '2018-05-16', 'Revoca la donaciÃ³n del inmueble ubicado en la planta urbana de la\r\nciudad de Paso de los Libres, por incumplimiento del cargo impuesto al Patronato del\r\nEnfermo de Lepra; y afecta dicho inmueble al Colegio Secundario â€œPresidente Arturo\r\nFrondiziâ€ de dicha localidad.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(174, '', '12760', '', '2018-05-16', 'Regula el ejercicio profesional del â€œAcompaÃ±ante TerapÃ©uticoâ€.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(175, '', '12762', '', '2018-05-16', 'Declara la emergencia vial y sanitaria en el Municipio San Isidro,\r\ndepartamento de Goya.\r\nVarios SeÃ±ores Diputados', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(176, '', '12767', '', '2018-05-16', 'RegulaciÃ³n de los pasivos ambientales.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(177, '', '12768', '', '2018-05-16', 'RegulaciÃ³n del empleo de drogas antineoplÃ¡sicas.\r\nDip. Locatelli\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(178, '', '12769', '', '2018-05-16', 'CreaciÃ³n del programa provincial â€œDerecho Complementario por\r\nNacimientoâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(179, '', '12770', '', '2018-05-16', 'AdhesiÃ³n a la Ley Nacional NÂº 26688 -Declara de interÃ©s nacional la\r\ninvestigaciÃ³n y producciÃ³n pÃºblica de medicamentos, materias primas para la producciÃ³n\r\nde medicamentos, vacunas y productos mÃ©dicos-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `id_funcion` int(133) NOT NULL,
  `funcion` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`id_funcion`, `funcion`, `estado`) VALUES
(1, 'bloqueo_tablets', 'inactivo'),
(2, 'bloquear_teles', 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mociones`
--

CREATE TABLE `mociones` (
  `id_mocion` int(133) NOT NULL,
  `extracto` varchar(255) NOT NULL,
  `SI` varchar(255) NOT NULL,
  `NO` varchar(255) NOT NULL,
  `ABS` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tablero` varchar(255) NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mociones`
--

INSERT INTO `mociones` (`id_mocion`, `extracto`, `SI`, `NO`, `ABS`, `fecha`, `tablero`, `resultado`, `nominal`) VALUES
(27, '', '', '', '', '2016-10-13 15:22:09', 'apagado', '', 'inhabilitado'),
(28, '', '', '', '', '2016-10-13 15:28:33', 'apagado', '', 'inhabilitado'),
(29, '', '', '', '', '2016-10-13 15:31:05', 'apagado', 'rechazado', 'inhabilitado'),
(30, '', '', '', '', '2016-10-14 10:37:05', 'apagado', '', 'inhabilitado'),
(31, '', '', '', '', '2016-10-14 13:39:21', 'apagado', '', 'inhabilitado'),
(32, '', '', '', '', '2016-10-14 13:39:25', 'apagado', '', 'inhabilitado'),
(33, '', '', '', '', '2016-10-14 14:57:02', 'apagado', '', 'inhabilitado'),
(34, '', '', '', '', '2016-10-17 11:39:21', 'apagado', '', 'inhabilitado'),
(35, '', '', '', '', '2016-10-17 12:27:57', 'apagado', '', 'inhabilitado'),
(36, '', ' calvi', '', '', '2016-10-17 13:18:33', 'apagado', '', 'inhabilitado'),
(37, '', '', '', '', '2016-10-17 13:30:55', 'apagado', '', 'inhabilitado'),
(38, '', '', '', '', '2016-10-17 13:56:22', 'apagado', '', 'inhabilitado'),
(39, '', '', '', '', '2016-10-17 13:57:19', 'apagado', '', 'inhabilitado'),
(40, '', '', '', '', '2016-10-17 14:04:02', 'apagado', '', 'inhabilitado'),
(41, '', ' calvi', '', '', '2016-10-17 14:21:31', 'apagado', 'aprobado', 'habilitado'),
(42, '', '', '', '', '2016-10-17 14:22:34', 'apagado', '', 'habilitado'),
(43, '', ' calvi', '', '', '2016-10-17 14:22:51', 'apagado', 'aprobado', 'habilitado'),
(44, '', ' calvi', '', '', '2016-10-17 14:34:11', 'apagado', '', 'inhabilitado'),
(45, '', '', ' affur saez', '', '2016-10-18 13:33:40', 'apagado', 'rechazado', 'inhabilitado'),
(46, '', '', ' alfonzo', ' ', '2016-10-18 13:45:16', 'apagado', '', 'inhabilitado'),
(47, '', '', ' parodi', '', '2016-10-18 13:55:34', 'apagado', '', 'inhabilitado'),
(48, '', '', '', '', '2016-10-18 14:01:23', 'apagado', '', 'habilitado'),
(49, '', '', '', '', '2016-10-21 12:04:00', 'apagado', 'rechazado', 'habilitado'),
(50, '', '', '', '', '2016-10-24 11:06:26', 'apagado', '', 'inhabilitado'),
(51, '', '', '', '', '2016-11-15 11:37:40', 'apagado', '', 'inhabilitado'),
(52, '', '', '', '', '2016-11-15 14:00:49', 'apagado', '', 'habilitado'),
(53, '', '', '', '', '2016-11-15 14:11:40', 'apagado', '', 'habilitado'),
(54, '', '', '', '', '2016-11-15 14:19:28', 'apagado', '', 'inhabilitado'),
(55, '', '', '', '', '2016-11-16 14:12:38', 'apagado', '', 'inhabilitado'),
(56, '', '', '', '', '2016-11-16 16:31:47', 'apagado', '', 'habilitado'),
(57, '', '', '', '', '2016-11-16 16:40:38', 'apagado', '', 'inhabilitado'),
(58, '', ' romero bestard affur', ' vischi acevedo yung', '', '2016-11-23 12:43:29', 'apagado', '', 'inhabilitado'),
(59, '', '', '', '', '2016-11-23 12:47:24', 'apagado', '', 'inhabilitado'),
(60, '', '', '', '', '2016-11-23 13:26:53', 'apagado', '', 'inhabilitado'),
(61, '', '', '', '', '2016-11-23 15:30:22', 'apagado', '', 'inhabilitado'),
(62, '', '', '', '', '2016-11-23 15:30:25', 'apagado', '', 'inhabilitado'),
(63, '', '', '', '', '2016-11-23 15:46:23', 'apagado', '', 'inhabilitado'),
(64, '', ' acevedo barrionuevo saez', '', '', '2016-11-23 16:03:22', 'apagado', '', 'inhabilitado'),
(65, '', '', ' alfonzo tassano', '', '2017-02-21 13:04:55', 'apagado', '', 'inhabilitado'),
(66, '', '', '', '', '2017-02-21 13:26:47', 'apagado', '', 'inhabilitado'),
(67, '', '', '', '', '2017-02-21 13:26:49', 'apagado', '', 'inhabilitado'),
(68, '', '', '', '', '2017-02-21 13:26:50', 'apagado', '', 'inhabilitado'),
(69, '', '', '', '', '2017-02-21 13:26:54', 'apagado', '', 'inhabilitado'),
(70, '', '', '', '', '2017-03-01 13:49:50', 'apagado', '', 'inhabilitado'),
(71, '', '', '', '', '2017-03-01 14:35:43', 'apagado', '', 'inhabilitado'),
(72, '', '', '', '', '2017-03-08 11:02:07', 'apagado', '', 'inhabilitado'),
(73, '', '', '', '', '2017-03-08 11:03:15', 'apagado', '', 'inhabilitado'),
(74, '', '', '', '', '2017-03-15 11:28:34', 'apagado', '', 'inhabilitado'),
(75, '', '', '', '', '2017-03-15 11:40:34', 'apagado', '', 'inhabilitado'),
(76, '', '', '', '', '2017-03-15 13:12:37', 'apagado', '', 'inhabilitado'),
(77, '', '', '', '', '2017-03-15 13:13:14', 'apagado', '', 'inhabilitado'),
(78, '', '', '', '', '2017-03-22 11:33:26', 'apagado', '', 'inhabilitado'),
(79, '', '', '', '', '2017-03-22 11:50:32', 'apagado', '', 'inhabilitado'),
(80, '', '', '', '', '2017-03-22 11:53:15', 'apagado', '', 'inhabilitado'),
(81, '', '', '', '', '2017-03-22 12:01:13', 'apagado', '', 'inhabilitado'),
(82, '', '', '', '', '2017-03-22 13:56:42', 'apagado', '', 'inhabilitado'),
(83, '', '', '', '', '2017-03-22 18:41:09', 'apagado', '', 'inhabilitado'),
(84, '', '', '', '', '2018-03-13 17:17:53', 'apagado', '', 'inhabilitado'),
(85, '', '', '', '', '2018-03-14 02:57:20', 'apagado', '', 'inhabilitado'),
(86, '', '', '', '', '2018-03-14 03:00:49', 'apagado', '', 'inhabilitado'),
(87, '', '', '', '', '2018-03-14 03:16:29', 'apagado', '', 'inhabilitado'),
(88, '', '', '', '', '2018-03-14 03:53:43', 'apagado', '', 'inhabilitado'),
(89, '', '', '', '', '2018-03-14 03:53:50', 'apagado', '', 'inhabilitado'),
(90, '', '', '', '', '2018-03-14 03:56:57', 'apagado', '', 'inhabilitado'),
(91, '', '', '', '', '2018-03-14 04:20:53', 'apagado', '', 'inhabilitado'),
(92, '', '', '', '', '2018-03-14 04:22:22', 'apagado', '', 'inhabilitado'),
(93, '', '', '', '', '2018-03-14 04:24:11', 'apagado', '', 'inhabilitado'),
(94, '', '', '', '', '2018-03-14 04:25:46', 'apagado', '', 'inhabilitado'),
(95, '', '', '', '', '2018-03-14 04:28:02', 'apagado', '', 'inhabilitado'),
(96, '', '', '', '', '2018-03-14 04:33:10', 'apagado', '', 'inhabilitado'),
(97, '', '', '', '', '2018-03-14 04:33:58', 'apagado', '', 'inhabilitado'),
(98, '', '', '', '', '2018-03-14 04:40:33', 'apagado', '', 'inhabilitado'),
(99, '', '', '', '', '2018-03-14 04:46:50', 'apagado', '', 'inhabilitado'),
(100, '', '', '', '', '2018-03-14 04:47:27', 'apagado', '', 'inhabilitado'),
(101, '', '', '', '', '2018-03-14 04:49:39', 'apagado', '', 'inhabilitado'),
(102, '', '', '', '', '2018-03-14 04:50:16', 'apagado', '', 'inhabilitado'),
(103, '', '', '', '', '2018-03-14 04:51:02', 'apagado', '', 'inhabilitado'),
(104, '', '', '', '', '2018-03-22 01:04:50', 'apagado', '', 'inhabilitado'),
(105, '', '', '', '', '2018-03-22 01:08:01', 'apagado', '', 'inhabilitado'),
(106, '', '', '', '', '2018-03-22 01:11:19', 'apagado', '', 'inhabilitado'),
(107, '', '', '', '', '2018-03-22 01:11:23', 'apagado', '', 'inhabilitado'),
(108, '', '', '', '', '2018-03-22 01:15:35', 'apagado', '', 'inhabilitado'),
(109, '', '', '', '', '2018-03-22 01:18:17', 'apagado', '', 'inhabilitado'),
(110, '', '', '', '', '2018-03-22 01:20:49', 'apagado', '', 'inhabilitado'),
(111, '', '', '', '', '2018-03-22 01:24:36', 'apagado', '', 'inhabilitado'),
(112, '', '', '', '', '2018-03-22 01:24:50', 'apagado', '', 'inhabilitado'),
(113, '', '', '', '', '2018-04-11 11:19:32', 'apagado', '', 'inhabilitado'),
(114, '', '', '', '', '2018-04-11 14:12:48', 'apagado', '', 'inhabilitado'),
(115, '', '', '', '', '2018-04-11 11:29:02', 'apagado', '', 'inhabilitado'),
(116, '', '', '', '', '2018-04-11 11:33:22', 'apagado', '', 'inhabilitado'),
(117, '', '', '', '', '2018-04-16 15:32:45', 'apagado', '', 'inhabilitado'),
(118, '', '', '', '', '2018-04-17 11:20:15', 'apagado', '', 'inhabilitado'),
(119, '', '', '', '', '2018-04-18 10:42:06', 'apagado', 'aprobado', 'inhabilitado'),
(120, '', '', '', '', '2018-05-02 10:50:04', 'apagado', '', 'inhabilitado'),
(121, '', '', '', '', '2018-05-02 10:50:04', 'encendido', '', 'inhabilitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(133) NOT NULL,
  `item` varchar(255) NOT NULL,
  `nota` int(133) NOT NULL,
  `extracto` text NOT NULL,
  `SI` varchar(250) NOT NULL,
  `NO` varchar(255) NOT NULL,
  `ABS` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `subcategoria` varchar(255) NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `sesion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id_nota`, `item`, `nota`, `extracto`, `SI`, `NO`, `ABS`, `fecha`, `estado`, `categoria`, `subcategoria`, `resultado`, `nominal`, `sesion`) VALUES
(2, '1.01', 2127, 'Superior Tribunal de Justicia remite Memoria Anual del Poder Judicial\r\n(formato digital) correspondiente al perÃ­odo enero â€“ diciembre/2016.', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(3, '1.02', 2128, 'Honorable Senado comunica la conformaciÃ³n de su Mesa Directiva.', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(4, '1.03', 2133, 'Colegio de Magistrados y Funcionarios del Poder Judicial remite\r\nobservaciones en referencia al proyecto de ley de CÃ³digo Procesal de Familia de la\r\nprovincia de Corrientes.\r\nA SUS ANTECEDENTES EXPTE. 11558 â€“ ASUNTOS CONSTIT. Y LEG. GRAL.', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(5, '1.04', 2134, 'Consejo de la Magistratura remite Convocatoria NÂº 3/17 para cubrir cargo\r\nen el Poder Judicial de la Provincia de Corrientes.', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(6, '1.06', 2136, 'Honorable Concejo Deliberante de Empedrado comunica la designaciÃ³n\r\nde autoridades para el perÃ­odo 2017.', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(7, '1.05', 2135, 'Ministerio de EducaciÃ³n, remite informe en respuesta a lo solicitado por\r\nla ComisiÃ³n de EducaciÃ³n de la H. CÃ¡mara de Diputados, referente al proyecto de\r\nresoluciÃ³n sobre designaciÃ³n de personal de maestranza para la Escuela NÂº 34 â€œSanto de\r\nla Espadaâ€ de la ciudad de Corrientes.\r\nA SUS ANTECEDENTES EXPTE. 10844 â€“ EDUCACIÃ“N, CULT., CIENCIA Y T', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(8, '1.07', 2138, 'Dip. Vicente Romero, remite petitorio de ciudadanos de San Cayetano en\r\napoyo al proyecto de ley de municipalizaciÃ³n de esa localidad.\r\nA SUS ANTECEDENTES EXPTE. 11763 â€“ ASUNTOS CONSTITUCIONALES Y\r\nLEGISLACIÃ“N GENERAL - ASUNTOS MUNICIPALES', '', '', '', '2017-03-15', 'inactivo', '7', 'Sin asignar', '', '', 3),
(9, '2.01', 2130, 'UniÃ³n del Personal Civil de la NaciÃ³n comunica la presentaciÃ³n ante los\r\norganismos pertinentes de las actas rectificatorias de la Junta Electoral y de la toma de\r\nposesiÃ³n de la ComisiÃ³n Directiva Provincial de Corrientes.', '', '', '', '2017-03-15', 'inactivo', '8', 'Sin asignar', '', '', 3),
(10, '1.01', 2141, 'Ministerio de ProducciÃ³n, remite informe en respuesta a lo solicitado por\r\nla ComisiÃ³n de ProducciÃ³n, Ind., Comercio y Turismo referente el proyecto de ley venido\r\nen revisiÃ³n del H. Senado que constituye el Fondo Fiduciario para el desarrollo de la\r\nProducciÃ³n HortÃ­cola de Corrientes.\r\nA SUS ANTECEDENTES EXPTE. 11220 â€“ HACIENDA, PRESUPUESTO E\r\nIMPUESTOS â€“ PRODUCCIÃ“N, INDUSTRIA, COMERCIO Y TURISMO', '', '', '', '2017-03-22', 'inactivo', '2', 'Sin asignar', '', '', 3),
(11, '2.01', 2140, 'Ciudadanos de MocoretÃ¡ solicitan a la Honorable CÃ¡mara de Diputados se\r\npromueva un proyecto para la creaciÃ³n de un Juzgado de InstrucciÃ³n con asiento en esa\r\nlocalidad.', '', '', '', '2017-03-22', 'inactivo', '8', 'Sin asignar', '', '', 3);

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
(4, 'EXPEDIENTES CON DESPACHO DE COMISI&Oacute;N', 5),
(5, 'PREFERENCIAS - LEYES', 5),
(6, 'PREFERENCIA - RESOLUCION', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablas`
--

CREATE TABLE `tablas` (
  `id_tabla` int(133) NOT NULL,
  `item` varchar(255) NOT NULL,
  `expte` varchar(255) NOT NULL,
  `despacho` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `extracto` text NOT NULL,
  `SI` text NOT NULL,
  `NO` text NOT NULL,
  `ABS` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `tablero` varchar(255) NOT NULL,
  `articulos` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `subcategoria` varchar(255) NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `sesion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tablas`
--

INSERT INTO `tablas` (`id_tabla`, `item`, `expte`, `despacho`, `fecha`, `extracto`, `SI`, `NO`, `ABS`, `estado`, `tablero`, `articulos`, `categoria`, `subcategoria`, `resultado`, `nominal`, `sesion`) VALUES
(1, '4.02', '10451', '2530', '2017-03-01', 'de la ComisiÃ³n de Seguridad y Servicios\r\nPenitenciarios que aconseja SANCIÃ“N FAVORABLE CON MODIFICACIONES al\r\nproyecto de ley de creaciÃ³n en el Ã¡mbito de la PolicÃ­a de la Provincia, del gabinete de\r\nasistencia psicolÃ³gica para el personal policial.\r\nDip. Yung', ' salvarredy tassano meixner romero alfonzo barrionuevo garcia moray gaya mancini parodi cordero yagueddu molina bestard yung cassani acevedo meza affur saez mortola vischi giraud', '', '', 'inactivo', 'apagado', '9', '4', 'Sin asignar', 'aprobado', 'inhabilitado', 28),
(2, '', '12547', '', '2018-03-14', 'AdhesiÃ³n a la Ley Nacional NÂº 27349 â€“Apoyo al Capital Emprendedor-\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 2),
(3, '', '12548', '', '2018-03-14', 'Modifica la Ley NÂº 4673 â€“Cupo Femenino- y Decreto NÂº 135/01 CÃ³digo Electoral Provincial.\r\nDip. Meixner', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 2),
(4, '', '12550', '', '2018-03-14', 'RÃ©gimen de PromociÃ³n del Turismo de Aventura en la Provincia de Corrientes.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 2),
(5, '', '12567', '', '2018-03-14', 'Declara el estado de emergencia agropecuaria, econÃ³mica y social de los departamentos de Monte Caseros, MocoretÃ¡, CuruzÃº CuatiÃ¡, Sauce, Goya y Esquina.\r\nDip. Acevedo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 2),
(6, '', '12569', '', '2018-03-14', 'Plan de Desarrollo Ferroviario Provincial.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 2),
(7, '', '12539', '', '2018-03-14', 'Solicita al Ministerio de Seguridad ordene la liquidaciÃ³n de haberes a los 63 aspirantes a cabo de la Unidad Penal NÂº 9 de Paso de los Libres.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(8, '', '12549', '', '2018-03-14', 'Solicita a la DirecciÃ³n Provincial de Vialidad la reparaciÃ³n de la Ruta Provincial NÂº 27 en la totalidad de su trazado.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(9, '', '12551', '', '2018-03-14', 'Solicita al Ministerio de Defensa de la NaciÃ³n, la factibilidad de radicaciÃ³n de la CompaÃ±Ã­a de Ingenieros de Montes NÂº 3 en el predio del Ex Regimiento de InfanterÃ­a NÂº 5 de Paso de los Libres.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(10, '', '12553', '', '2018-03-14', 'Solicita al Poder Ejecutivo y a la SecretarÃ­a de Deporte y RecreaciÃ³n, la construcciÃ³n de un tinglado deportivo en la Escuela NÂº 560 â€œVictoriana Delgado de Sotoâ€, de la localidad de Gobernador Virasoro.\r\nDip. Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(11, '', '12554', '', '2018-03-14', 'Solicita al Poder Ejecutivo y al Ministerio de EducaciÃ³n la implementaciÃ³n de la educaciÃ³n inicial a partir de los tres (3) aÃ±os en el JardÃ­n de Infantes NÂº 17 de la localidad de San Cayetano.\r\nDip. Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(12, '', '12559', '', '2018-03-14', 'Solicita al Poder Ejecutivo el control e intimaciÃ³n a los colectivos de media y larga distancia para que no arrojen basura en las rutas y espacios verdes de la Provincia de Corrientes.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(13, '', '12561', '', '2018-03-14', 'Solicita al Poder Ejecutivo la incorporaciÃ³n de la Provincia de Corrientes a la Red Federal de Control Ambiental.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(14, '', '12566', '', '2018-03-14', 'Solicita informe a la DirecciÃ³n Nacional de Vialidad â€“DelegaciÃ³n Ctes.- referente a medidas de seÃ±alizaciÃ³n de barreras de paso nivel de las vÃ­as de ferrocarril de la Ruta Nacional NÂº 119 en su intersecciÃ³n de la localidad de CuruzÃº CuatiÃ¡.\r\nDip. Acevedo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(15, '', '12568', '', '2018-03-14', 'Solicita al Ministerio de EducaciÃ³n la reparaciÃ³n y ampliaciÃ³n del Edificio Escolar NÂº 875 â€œGranaderos de San MartÃ­nâ€ del Paraje Santa Ana de la localidad de Amado Bonpland, Paso de los Libres.\r\nDips. Acevedo y YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 2),
(16, '', '12552', '', '2018-03-14', 'De interÃ©s la actividad acadÃ©mica bajo el lema: â€œReforma de la Justicia Civilâ€.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(17, '', '12555', '', '2018-03-14', 'De interÃ©s la conmemoraciÃ³n del DÃ­a Mundial del Agua.\r\nDip. Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(18, '', '12558', '', '2018-03-14', 'De interÃ©s y adhesiÃ³n a las actividades a realizarse por el DÃ­a Mundial del Agua.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(19, '', '12556', '', '2018-03-14', 'De interÃ©s y adhesiÃ³n a las actividades a realizarse por el DÃ­a Nacional de la Memoria por la Verdad y la Justicia.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(20, '', '12557', '', '2018-03-14', 'De interÃ©s la conmemoraciÃ³n por el DÃ­a de las Escuelas de Frontera.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(21, '', '12560', '', '2018-03-14', 'De interÃ©s la conmemoraciÃ³n del 206Âº Aniversario de la creaciÃ³n del Regimiento de Granaderos a Caballo.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(22, '', '12565', '', '2018-03-14', 'De interÃ©s la celebraciÃ³n por el â€œDÃ­a del Regimiento de Granaderos a Caballoâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(23, '', '12562', '', '2018-03-14', 'De interÃ©s la conmemoraciÃ³n por el â€œDÃ­a Internacional de los Bosquesâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(24, '', '12563', '', '2018-03-14', 'De interÃ©s la celebraciÃ³n por el DÃ­a del Veterano y CaÃ­dos de Malvinas, el Desfile CÃ­vico Militar en honor al 36Âº Aniversario de la gesta de Malvinas y la cena homenaje en la ciudad de CuruzÃº CuatiÃ¡.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(25, '', '12564', '', '2018-03-14', 'De interÃ©s la conmemoraciÃ³n por el â€œDÃ­a del MERCOSURâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 2),
(26, '', '12501', '', '2018-03-14', 'Mensaje y proyecto de ley del Poder Ejecutivo de adhesiÃ³n a la Ley Nacional NÂº 27328 â€“Contratos de ParticipaciÃ³n PÃºblico â€“ Privadaâ€, venido en segunda revisiÃ³n del H. Senado.\r\nPoder Ejecutivo', '', '', '', 'inactivo', 'apagado', '', '5', '5', '', 'inhabilitado', 2),
(27, '', '12514', '', '2018-03-14', 'Reconocimiento pÃºblico â€œpost mortemâ€ a Veteranos de Guerra de Malvinas.\r\nDips. Cassani, Calvi, LÃ³pez y FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '5', '5', '', 'inhabilitado', 2),
(28, '', '12538', '', '2018-03-14', 'Declara de utilidad pÃºblica y sujeto a expropiaciÃ³n un inmueble ubicado en el Municipio Capital con destino a la conservaciÃ³n del espacio fÃ­sico por parte del Club AtlÃ©tico UniÃ³n Arroyito.\r\nDips. Cassani y Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '5', '5', '', 'inhabilitado', 2),
(29, '', '12521', '', '2018-03-14', 'Solicita al Poder Ejecutivo realice las gestiones para la reactivaciÃ³n del tren, en el tramo CuruzÃº CuatiÃ¡ â€“ Yofre â€“ Corrientes.\r\nDips. Pozo y FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '5', '6', '', 'inhabilitado', 2),
(30, '', '12580', '', '2018-03-21', 'AsignaciÃ³n Retributiva Vitalicia Provincial (ARVP) para el personal que desempeÃ±a tareas de Bombero Voluntario. Dip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 3),
(31, '', '12581', '', '2018-03-21', 'PromociÃ³n a travÃ©s de la enseÃ±anza formal e informal, de la educaciÃ³n ambiental. Dip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 3),
(32, '', '12582', '', '2018-03-21', 'PromociÃ³n a travÃ©s de capacitaciones educativas, de la formaciÃ³n en la temÃ¡tica de salud vocal, destinadas a los docentes de todos los niveles. Dip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 3),
(33, '', '12587', '', '2018-03-21', 'Establece el 11 de octubre de cada aÃ±o como â€œDÃ­a de las NiÃ±asâ€. Dip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 3),
(34, '', '12588', '', '2018-03-21', 'AdhesiÃ³n a la Ley Nacional NÂº 27425, modificatoria de la Ley Nacional de TrÃ¡nsito NÂº 24449 -Incorpora el encendido automÃ¡tico de luces en automotores-.Dip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 3),
(35, '', '12591', '', '2018-03-21', 'Declara patrimonio histÃ³rico y cultural de la Provincia, a la fachada del Colegio Nuestra SeÃ±ora de ItatÃ­ IP7, de Bella Vista. Dip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 3),
(36, '', '12579', '', '2018-03-21', 'Solicita a la DirecciÃ³n Provincial de Vialidad la reparaciÃ³n de la Ruta Provincial NÂº 6 en el tramo empalme con Ruta Nacional NÂº 118 hasta ConcepciÃ³n del YaguaretÃ© CorÃ¡. Dips. RamÃ­rez y Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 3),
(37, '', '12584', '', '2018-03-21', 'Solicita informe a la DirecciÃ³n Nacional de Vialidad sobre el estado del puente sobre arroyo Santa MarÃ­a, ubicado en Ruta Nacional NÂº 12 entre el Paraje YahapÃ© y la localidad de ItÃ¡ IbatÃ©. Dip. Meixner', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 3),
(38, '', '12586', '', '2018-03-21', 'Solicita al Poder Ejecutivo se convoque al Consejo Provincial de Adicciones, creado por Ley 6407. Dip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 3),
(39, '', '12583', '', '2018-03-21', 'De interÃ©s la celebraciÃ³n del 35Âº Aniversario de la creaciÃ³n de la Reserva Provincial del IberÃ¡. Dip. Molina', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 3),
(40, '', '12585', '', '2018-03-21', 'De interÃ©s la celebraciÃ³n del 307Âº Aniversario de la fundaciÃ³n de CaÃ¡ CatÃ­. Dip. Molina', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 3),
(41, '', '12589', '', '2018-03-21', 'De interÃ©s los actos y homenajes conmemorativos al 188Âº Aniversario de la firma del Pacto de AnexiÃ³n entre la ciudad de La Cruz y la Provincia de Corrientes. Dip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 3),
(42, '', '12590', '', '2018-03-21', 'De interÃ©s la realizaciÃ³n del 3Âº Encuentro Regional de Mini BÃ¡squet â€œAntonio Antorcha Esquivelâ€. Dip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 3),
(43, '', '12592', '', '2018-03-21', 'De interÃ©s la conmemoraciÃ³n del â€œDÃ­a Mundial de la Saludâ€. Dip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 3),
(44, '', '12625', '', '2018-04-11', 'Modifica la Ley NÂº 5930 â€“Foro de Seguridad Ciudadana y del\r\nObservatorio del Delito.\r\nDips. SÃ¡ez y Rotela CaÃ±ete', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(45, '', '12628', '', '2018-04-11', 'CreaciÃ³n de Juzgados de Paz en las localidades de Tres de Abril,\r\nFelipe Yofre, Mariano I. Loza y Carlos Pellegrini.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(46, '', '1637', '', '2018-04-11', 'CreaciÃ³n del Colegio de Profesionales TÃ©cnicos de la Provincia de\r\nCorrientes.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(47, '', '12640', '', '2018-04-11', 'AdhesiÃ³n a la Ley Nacional NÂº 23.351 y creaciÃ³n del Fondo de\r\nAsistencia a Bibliotecas Populares.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(48, '', '12644', '', '2018-04-11', 'Instituye como â€œCapital del Mencho Correntinoâ€, a la localidad de\r\nPalmar Grande.\r\nDips. Rotela CaÃ±ete y SÃ¡ez', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(49, '', '12645', '', '2018-04-11', 'AdhesiÃ³n a la Ley Nacional NÂº 26.316 â€“Instituye el DÃ­a para la\r\nPrevenciÃ³n del Abuso contra NiÃ±os, NiÃ±as y Adolescentes.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(50, '', '12646', '', '2018-04-11', 'Crea el Programa de Desarrollo de la AcuaponÃ­a.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(51, '', '12647', '', '2018-04-11', 'AdhesiÃ³n a la Ley Nacional NÂº 27.372 â€“ ProtecciÃ³n de vÃ­ctimas de\r\ndelitos.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(52, '', '12656', '', '2018-04-11', 'AdhesiÃ³n al Decreto NÂº 32/18 modificatorio del Decreto NÂº 779/95,\r\nReglamentario de la Ley Nacional de TrÃ¡nsito 24.449.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 4),
(53, '', '12626', '', '2018-04-11', 'Solicita a la empresa Aguas de Corrientes S.A., el emplazamiento y\r\nconstrucciÃ³n efectiva de la lÃ­nea cloacal en el BÂº San Antonio Oeste.\r\nDip. SÃ¡ez', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(54, '', '12627', '', '2018-04-11', 'Solicita al Departamento Ejecutivo Municipal informe respecto a la\r\nsituaciÃ³n de los beneficiarios del Programa Social de FormaciÃ³n Laboral y PromociÃ³n del\r\nEmpleo Neike Chamigo.\r\nDip. Meixner', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(55, '', '12629', '', '2018-04-11', 'Solicita al Ministerio de ProducciÃ³n el enripiado del acceso al paraje\r\nRincÃ³n de SarandÃ­, departamento de Esquina.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(56, '', '12630', '', '2018-04-11', 'Solicita al Ministerio de EducaciÃ³n la refacciÃ³n total de la Escuela\r\nPrimaria Rural NÂº 638 â€œ25 de Mayoâ€, del paraje San Antonio del Malezal, 5ta. SecciÃ³n\r\nCuchilla, departamento de Esquina.\r\nDip. Mancini\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(57, '', '12631', '', '2018-04-11', ': Solicita al Ministerio de EducaciÃ³n la ampliaciÃ³n edilicia de la Escuela\r\nPrimaria NÂº 527 â€œSan JosÃ© de Calasanzâ€, paraje SarandÃ­, departamento de Esquina.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(58, '', '12683', '', '2018-04-11', 'Solicita al Poder Ejecutivo informe los motivos por los cuales aÃºn no\r\nse han iniciado las obras de refacciÃ³n y ampliaciÃ³n del edificio de la Escuela TÃ©cnica\r\nPortuaria de VÃ­as Navegables.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(59, '', '12651', '', '2018-04-11', 'Solicita al Poder Ejecutivo Nacional la reglamentaciÃ³n del artÃ­culo 10\r\nde la Ley Nacional 27264 â€“Fomento de inversiones para micro, pequeÃ±as y medianas\r\nempresas en el Programa de RecuperaciÃ³n Productivaâ€.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(60, '', '12655', '', '2018-04-11', 'Solicita al Ministerio de EducaciÃ³n informe la revisiÃ³n de las\r\nirregularidades en los exÃ¡menes psico-fÃ­sicos a docentes del nivel primario.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(61, '', '12658', '', '2018-04-11', 'Solicita al Poder Ejecutivo la apertura de un destacamento policial en\r\nel barrio â€œLa Estanciaâ€, de la localidad de Santa LucÃ­a, departamento de Lavalle.\r\nDip. ChaÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 4),
(62, '', '12632', '', '2018-04-11', 'De interÃ©s la conmemoraciÃ³n del â€œDÃ­a Internacional del Paciente\r\nCelÃ­acoâ€.\r\nDip. Mancini\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(63, '', '12639', '', '2018-04-11', 'De interÃ©s la realizaciÃ³n de la â€œ16Âº ExposiciÃ³n Nacional Brafordâ€ y â€œ7Âº\r\nExposiciÃ³n del Ternero Brafordâ€.\r\nDip. Godoy', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(64, '', '12641', '', '2018-04-11', 'De interÃ©s la conmemoraciÃ³n del â€œCentÃ©simo Aniversario del Natalicio\r\nde Mario del TrÃ¡nsito Cocomarolaâ€.\r\nDips. BÃ¡ez y Rotela CaÃ±ete', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(65, '', '12642', '', '2018-04-11', 'De interÃ©s la conmemoraciÃ³n del â€œCentÃ©simo Aniversario de la\r\nProclamaciÃ³n de Nuestra SeÃ±ora de ItatÃ­, como Patrona y Protectora de la DiÃ³cesis de\r\nCorrientesâ€.\r\nDips. BÃ¡ez y Rotela CaÃ±ete', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(66, '', '12643', '', '2018-04-11', 'De interÃ©s la realizaciÃ³n de la â€œ8Âº Fiesta Provincial del Mencho\r\nCorrentinoâ€ y â€œFiesta Patronal en honor a la Cruz de los Milagrosâ€, en la localidad de\r\nPalmar Grande.\r\nDips. SÃ¡ez y Rotela CaÃ±ete', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(67, '', '12648', '', '2018-04-11', 'De interÃ©s la realizaciÃ³n del â€œ18Âº Congreso de Historia de la Provincia\r\nde Corrientesâ€.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(68, '', '12649', '', '2018-04-11', 'De interÃ©s la publicaciÃ³n y presentaciÃ³n del libro â€œDerecho Penal Parte\r\nGeneralâ€, autorÃ­a del Dr. Luis RamÃ³n GonzÃ¡lez.\r\nDip. Barrionuevo\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(69, '', '12650', '', '2018-04-11', 'De interÃ©s la conmemoraciÃ³n del 2018, como â€œAÃ±o del ChamamÃ©â€.\r\nDip. BÃ¡ez\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(70, '', '12652', '', '2018-04-11', 'De interÃ©s la conmemoraciÃ³n por el â€œDÃ­a Mundial del Parkinsonâ€.\r\nDip. Bestard\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(71, '', '12653', '', '2018-04-11', 'De interÃ©s la celebraciÃ³n por el â€œDÃ­a Mundial del Libro y de los\r\nDerechos de Autorâ€.\r\nDip. Bestard\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(72, '', '12654', '', '2018-04-11', 'De interÃ©s la realizaciÃ³n de las I Jornadas Internacionales â€œUn joven\r\nmÃ¡s por la vidaâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(73, '', '12657', '', '2018-04-11', 'De interÃ©s la conmemoraciÃ³n del â€œCentenario de la ConsagraciÃ³n de la\r\nDiÃ³cesis a MarÃ­a de ItatÃ­â€.\r\nDip. Acevedo\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', 'inhabilitado', 4),
(74, '', '12525', '2615', '2018-04-11', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal Mensaje y proyecto de Ley del Poder Ejecutivo que declara de utilidad pÃºblica y\r\nsujeto a expropiaciÃ³n los inmuebles ubicados en el â€œBÂº La Cholaâ€, de la ciudad de\r\nCorrientes.\r\nPoder Ejecutivo', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', 'inhabilitado', 4),
(75, '', '12567', '', '2018-04-11', ' Declara el estado de emergencia agropecuaria, econÃ³mica y social de\r\nlos departamentos de Monte Caseros, MocoretÃ¡, CuruzÃº CuatiÃ¡, Sauce, Goya y Esquina.\r\nDip. Acevedo', '', '', '', 'inactivo', 'apagado', '', '5', '5', '', 'inhabilitado', 4),
(76, '', '12574', '', '2018-04-11', 'Declara la emergencia citrÃ­cola y ganadera en los departamentos de\r\nBella Vista, Lavalle, Goya, Esquina, Sauce y Monte Caseros.\r\nDip. MÃ³rtola', '', '', '', 'inactivo', 'apagado', '', '5', '5', '', 'inhabilitado', 4),
(77, '', '12455', '2614', '2018-04-11', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de ley venido en revisiÃ³n del Honorable Senado por el que se instituye el 10 de\r\nnoviembre de cada aÃ±o como â€œDÃ­a Provincial de la EducaciÃ³n Emocionalâ€.\r\nSdor. Pruyas\r\n', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(78, '', '11959', '2609', '2018-04-11', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley de regulaciÃ³n y funcionamiento de las Ferias Francas.\r\nDip. Bestard\r\n', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(79, '', '12159', '2613', '2018-04-11', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de ley que declara Monumento HistÃ³rico Provincial, la estatua del libertador\r\nGral. JosÃ© de San MartÃ­n, en la Plaza San MartÃ­n de la ciudad de Goya.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(80, '', '12388', '2610', '2018-04-11', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley que crea el Programa Provincial Sello Correntino.\r\nDips. LÃ³pez y Calvi\r\n', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(81, '', '12397', '2611', '2018-04-11', 'de la ComisiÃ³n de ProducciÃ³n, Industria,\r\nComercio y Turismo que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley de adhesiÃ³n a la Ley Nacional NÂº 27233 â€“Declara de interÃ©s\r\nnacional la sanidad de animales y vegetales.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(82, '', '12376', '2612', '2018-04-11', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de resoluciÃ³n que solicita al Poder Ejecutivo, la implementaciÃ³n de la carrera\r\nâ€œTecnicatura Superior en ProducciÃ³n ArtÃ­stica Artesanalâ€.\r\nDips. LÃ³pez y Calvi\r\n', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(83, '', '12429', '2608', '2018-04-11', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo, la colocaciÃ³n de reductores de\r\nvelocidad, carteles de seÃ±alizaciÃ³n en el paraje Paso FlorentÃ­n sobre Ruta Provincial NÂº 5.\r\nDip. Meza', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(84, '', '12476', '2606', '2018-04-11', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo, la ejecuciÃ³n de obras de\r\nenripiado en el departamento de San Cosme.\r\nDip. GarcÃ­a', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(85, '', '12257', '2607', '2018-04-11', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita a la DirecciÃ³n Nacional de Vialidad y a la\r\nDirecciÃ³n Provincial de Vialidad, un relevamiento del estado y condiciones de las\r\nalcantarillas y puentes en las rutas de la Provincia.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(86, '', '11954', '2604', '2018-04-11', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja el pase al ARCHIVO del proyecto de resoluciÃ³n que\r\nsolicita a la Junta Electoral de la Provincia de Corrientes, designe a la Escuela NÂº 320\r\nubicada en el departamento de Goya, como lugar de votaciÃ³n para las prÃ³ximas\r\nelecciones del calendario electoral 2017.', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', 'inhabilitado', 4),
(87, '', '12633', '', '2018-04-11', 'Implementa un sistema de gestiÃ³n computarizado y de aplicaciones\r\nmÃ³viles para el seguimiento y trazabilidad de los casos de violencia familiar y/o de\r\ngÃ©nero.\r\nSdora. RodrÃ­guez', '', '', '', 'inactivo', 'apagado', '', '6', 'Sin asignar', '', 'inhabilitado', 4),
(88, '', '12634', '', '2018-04-11', ': Crea el â€œPrograma de Ajedrez Educativoâ€, para el nivel secundario de\r\neducaciÃ³n obligatoria en la Provincia de Corrientes.\r\nSdora. Seward', '', '', '', 'inactivo', 'apagado', '', '6', 'Sin asignar', '', 'inhabilitado', 4),
(89, '', '12635', '', '2018-04-11', 'Mensaje y proyecto de ley del Poder Ejecutivo por el que se dona al\r\nClub AtlÃ©tico Alvear, una fracciÃ³n del inmueble de propiedad del Estado de la Provincia\r\nde Corrientes, identificado como parcela A de la Manzana NÂº 18, Lote I y 16 S/C,\r\nubicado en la planta urbana de la ciudad de Corrientes.\r\nPoder Ejecutivo', '', '', '', 'inactivo', 'apagado', '', '6', 'Sin asignar', '', 'inhabilitado', 4),
(90, '', '12636', '', '2018-04-11', 'Declara de utilidad pÃºblica y sujeto a expropiaciÃ³n fracciones de\r\ninmuebles ubicados en la localidad de Santa Ana, con el objeto de prolongar la calle\r\nReconquista.\r\nSdora. RodrÃ­guez', '', '', '', 'inactivo', 'apagado', '', '6', 'Sin asignar', '', 'inhabilitado', 4),
(91, '', '12625', '', '2018-04-11', 'Modifica la Ley NÂº 5930 â€“Foro de Seguridad Ciudadana y del\r\nObservatorio del Delito.\r\nDips. SÃ¡ez y Rotela CaÃ±ete', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 0),
(92, '', '12628', '', '2018-04-11', 'CreaciÃ³n de Juzgados de Paz en las localidades de Tres de Abril,\r\nFelipe Yofre, Mariano I. Loza y Carlos Pellegrini.\r\nDip. Cassani\r\n', '', '', '', 'inactivo', 'apagado', '', 'Sin asignar', 'Sin asignar', '', 'inhabilitado', 0),
(93, '', '12637', '', '2018-04-11', 'CreaciÃ³n del Colegio de Profesionales TÃ©cnicos de la Provincia de\r\nCorrientes.\r\nDips. LÃ³pez y Calvi', '', '', '', 'inactivo', 'apagado', '', 'Sin asignar', 'Sin asignar', '', 'inhabilitado', 0),
(94, '', '12640', '', '2018-04-11', 'AdhesiÃ³n a la Ley Nacional NÂº 23.351 y creaciÃ³n del Fondo de\r\nAsistencia a Bibliotecas Populares.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', 'Sin asignar', 'Sin asignar', '', 'inhabilitado', 0),
(95, '', '12644', '', '2018-04-11', 'Instituye como â€œCapital del Mencho Correntinoâ€, a la localidad de\r\nPalmar Grande.\r\nDips. Rotela CaÃ±ete y SÃ¡ez', '', '', '', 'inactivo', 'apagado', '0', 'Sin asignar', 'Sin asignar', '', 'inhabilitado', 0),
(96, '', '12668', '', '2018-04-18', 'CreaciÃ³n del Municipio de Cecilio EchavarrÃ­a, departamento de\r\nLavalle.\r\nDip. ChaÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(97, '', '12671', '', '2018-04-18', 'Modifica el artÃ­culo 30 de la Ley NÂº 6042 â€“OrgÃ¡nica de las\r\nMunicipalidades-.\r\nDip. Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(98, '', '12674', '', '2018-04-18', 'AdhesiÃ³n al Decreto NÂº 292/18 â€“Plan Anual de Monitoreo y\r\nEvaluaciÃ³n de PolÃ­ticas y Programas Sociales-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(99, '', '12675', '', '2018-04-18', 'Crea la libreta deportiva de prevenciÃ³n y salud.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(100, '', '12676', '', '2018-04-18', 'Regula la producciÃ³n animal intensiva y concentrada.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(101, '', '12677', '', '2018-04-18', 'AdhesiÃ³n a la Ley Nacional NÂº 27287 â€“Sistema Nacional para la\r\nGestiÃ³n Integral del Riesgo y la ProtecciÃ³n Civil-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(102, '', '12682', '', '2018-04-18', 'CreaciÃ³n del Colegio de Arquitectos de la Provincia.\r\nDips. LÃ³pez, Calvi y MÃ³rtola', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', 'inhabilitado', 5),
(103, '', '12679', '', '2018-04-18', 'Solicita al Poder Ejecutivo la creaciÃ³n de una DivisiÃ³n PRIAR en el\r\nparaje Remanso de la localidad de YapeyÃº.\r\nDip. Gaya\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 5),
(104, '', '12680', '', '2018-04-18', 'Solicita a la DirecciÃ³n Nacional de Vialidad la reparaciÃ³n de la capa\r\nasfÃ¡ltica del Puente Internacional â€œAgustÃ­n P. Justo â€“ GetÃºlio Vargasâ€.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', 'inhabilitado', 5),
(116, '', '12687', '', '2018-04-25', 'Designa al Ministerio de Hacienda y Finanzas de la Provincia, como\r\nÃ³rgano responsable de aplicaciÃ³n de la Ley NÂº 5639 â€“AdhesiÃ³n a la Ley Nacional 25917:\r\nRÃ©gimen Federal de Responsabilidad Fiscal-.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(117, '', '12697', '', '2018-04-25', 'CreaciÃ³n de un Juzgado de Paz con asiento en la localidad de JosÃ©\r\nRafael GÃ³mez (GaravÃ­), departamento de Santo TomÃ©.\r\nDip. Giraud Cabral', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(118, '', '12700', '', '2018-04-25', 'Declara monumento histÃ³rico y religioso e integrante del patrimonio\r\ncultural y paisajÃ­stico de la Provincia de Corrientes, a la Iglesia Parroquial Nuestra\r\nSeÃ±ora de las Mercedes, de la ciudad de Mercedes.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(119, '', '12708', '', '2018-04-25', 'Asistencia Integral a la Primera Infancia basada en el fortalecimiento\r\nde la familia.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(120, '', '12709', '', '2018-04-25', 'Incorpora el artÃ­culo 48 bis a la Ley NÂº 4067 â€“Estatuto del Empleado\r\nPÃºblico-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(121, '', '12710', '', '2018-04-25', 'Modifica la Ley NÂº 3723 â€“Estatuto del Docente â€“ agrega el artÃ­culo 24\r\nbis â€œperfeccionamiento docente gratuito y obligatorioâ€-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(122, '', '12721', '', '2018-04-25', 'ExtensiÃ³n de la exenciÃ³n del impuesto sobre los ingresos brutos a todas\r\nlas empresas prestadoras del servicio de energÃ­a elÃ©ctrica, agua y cloacas.\r\nVarios SeÃ±ores Diputados', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 6),
(123, '', '12686', '', '2018-04-25', 'Solicita al Poder Ejecutivo informe condiciones, montos y entidad\r\notorgante del endeudamiento que totaliza la suma de $936,54 millones.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(124, '', '12692', '', '2018-04-25', 'Solicita al Poder Ejecutivo la creaciÃ³n de una delegaciÃ³n de la PolicÃ­a\r\nRural e Islas y Ambiente Rural (PRIAR) en inmediaciones de la localidad de Santa LucÃ­a.\r\nDip. ChaÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(125, '', '12694', '', '2018-04-25', 'Invita a la Sra. Graciela FernÃ¡ndez Meijide a fin de rendirle homenaje\r\npor su invalorable contribuciÃ³n a garantizar los derechos humanos.\r\nDip. Pozo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(126, '', '12699', '', '2018-04-25', 'Solicita al Poder Ejecutivo la instalaciÃ³n de un puesto caminero\r\npolicial sobre Ruta Nacional NÂº 119, entre las ciudades de Mercedes y Mariano I. Loza.\r\nDip. Molina', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(127, '', '12703', '', '2018-04-25', 'Solicita al Poder Ejecutivo disponga los medios necesarios para el\r\nfuncionamiento de una sala de primeros auxilios en el paraje â€œBajo Atalayaâ€,\r\ndepartamento de Santo TomÃ©.\r\nDips. Rotela CaÃ±ete y SÃ¡ez', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(128, '', '12704', '', '2018-04-25', 'Solicita al Poder Ejecutivo arbitre los medios necesarios para poner en\r\nfuncionamiento el Ente Provincial Regulador ElÃ©ctrico, creado por Ley NÂº 6073.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(129, '', '12705', '', '2018-04-25', 'Solicita a la DirecciÃ³n Nacional de Vialidad, la iluminaciÃ³n de la\r\nintersecciÃ³n de la Ruta Nacional NÂº 123 con la Ruta Provincial NÂº 40, acceso a los\r\nEsteros del IberÃ¡ y empalme con el acceso este de la ciudad de Mercedes, provincia de\r\nCorrientes.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(130, '', '12712', '', '2018-04-25', 'Solicita al Poder Ejecutivo Nacional la exenciÃ³n del IVA a la venta y\r\nprovisiÃ³n de energÃ­a destinada al uso residencial.\r\nDip. MÃ³rtola\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(131, '', '12713', '', '2018-04-25', 'Solicita al Poder Ejecutivo Nacional la exenciÃ³n del IVA a los\r\nprestadores y consumidores del servicio de energÃ­a elÃ©ctrica de la Provincia.\r\nDip. YardÃ­n\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(132, '', '12714', '', '2018-04-25', 'Solicita a la DirecciÃ³n Nacional y Provincial de Vialidad el\r\ncumplimiento del control del transporte de carga.\r\nDip. Mancini\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '2', '', '', 6),
(133, '', '12696', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n del â€œCongreso Regional NEA â€“ CRA â€“\r\nProtagonistas del Futuroâ€.\r\nDip. Cassani\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(134, '', '12698', '', '2018-04-25', 'De interÃ©s los actos por el 137Âº aniversario de la fundaciÃ³n de la\r\nlocalidad de Amado Bonpland.\r\nDip. Acevedo', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(135, '', '12701', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n de las â€œVII Jornadas Internacionales de\r\nOrtodoncia de Corrientesâ€.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(136, '', '12702', '', '2018-04-25', 'De interÃ©s la conmemoraciÃ³n del 100Âº aniversario de la fundaciÃ³n del\r\nâ€œClub HuracÃ¡n Corrientesâ€.\r\nDip. Bestard', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(137, '', '12706', '', '2018-04-25', 'De adhesiÃ³n a los actos conmemorativos por el asesinato de Juan JosÃ©\r\nCabral, ocurrido durante el denominado â€œCorrentinazoâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(138, '', '12707', '', '2018-04-25', 'De interÃ©s la conmemoraciÃ³n por el â€œDÃ­a del Animalâ€.\r\nDip. Locatelli\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(139, '', '12711', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n de la 10Âº EdiciÃ³n de la Asamblea de los 30\r\nPueblos Jesuitas - GuaranÃ­es â€œEstrategias para el desarrollo rural de los pueblos Jesuitas â€“\r\nGuaranÃ­esâ€.\r\nDip. Gaya', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(140, '', '12715', '', '2018-04-25', 'De interÃ©s los actos y festejos, por un aÃ±o mÃ¡s de la fundaciÃ³n de\r\nPueblo Libertador, departamento de Esquina.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(141, '', '12716', '', '2018-04-25', 'De interÃ©s los actos y festejos con motivo de las fiestas patronales de\r\nSanta Rita de Casia, a realizarse en la ciudad de Esquina.\r\nDip. Mancini\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(142, '', '12717', '', '2018-04-25', 'De interÃ©s los actos y festejos por el 94Âº aniversario de la fundaciÃ³n de\r\nla localidad de Colonia Liebig, departamento de ItuzaingÃ³.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(143, '', '12718', '', '2018-04-25', 'De interÃ©s la realizaciÃ³n del â€œEncuentro Nacional de MediaciÃ³n\r\nCorrientes 2018â€.\r\nDip. ChaÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(144, '', '12720', '', '2018-04-25', 'De interÃ©s las actividades del Centro de Estudios y FormaciÃ³n para el\r\nDesarrollo de PolÃ­ticas Sociales de la AsociaciÃ³n Civil â€œ8 de Octubreâ€.\r\nDip. Pereyra', '', '', '', 'inactivo', 'apagado', '', '3', '3', '', '', 6),
(145, '', '12216', '', '2018-04-25', 'de la ComisiÃ³n de LegislaciÃ³n del Trabajo,\r\nPrevisiÃ³n y Seguridad Social que aconseja SANCIÃ“N FAVORABLE SIN\r\nMODIFICACIONES al proyecto de ley venido en revisiÃ³n del Honorable Senado por el\r\nque se modifica el Decreto Ley NÂº 206/01 â€“RÃ©gimen para el personal aeronavegante\r\nperteneciente a la DirecciÃ³n Provincial de AeronÃ¡utica de la Provincia-.\r\nSdora. RodrÃ­guez', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(146, '', '12498', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a,\r\nTransporte, Obras y Servicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE CON\r\nMODIFICACIONES al Expte. NÂº 12498: Declara de interÃ©s provincial la utilizaciÃ³n de\r\nfuentes renovables de energÃ­a y adhesiÃ³n de la Provincia a la Ley Nacional NÂº 27191 â€“\r\nRÃ©gimen de fomento para el uso de fuentes renovables de energÃ­a, destinadas a la\r\nproducciÃ³n de energÃ­a elÃ©ctrica- y Expte. 12431: AdhesiÃ³n a la Ley Nacional NÂº 27191,\r\nmodificatoria de la Ley Nacional NÂº 26190 â€“RÃ©gimen de fomento nacional para el uso de\r\nfuentes renovables de energÃ­a-.\r\nExpte. 12498: Sdora. Sand Giorasi - Expte. 12431: Dip. Mancini ', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(147, '', '12014', '', '2018-04-25', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley que incorpora el artÃ­culo 14 bis a la Ley NÂº 4274 â€“Asociaciones\r\nde Bomberos Voluntarios-.\r\n Dip. Cassani', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(148, '', '12158', '', '2018-04-25', 'de la ComisiÃ³n de EducaciÃ³n, Cultura, Ciencia y\r\nTecnologÃ­a que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES al\r\nproyecto de ley de creaciÃ³n de la Escuela de Gobierno de la Provincia de Corrientes.\r\nDips. LÃ³pez, Calvi, Cordero Holtz y Vassel', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(149, '', '12628', '', '2018-04-25', 'de la ComisiÃ³n de Asuntos Constitucionales y\r\nLegislaciÃ³n General que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de ley de creaciÃ³n de Juzgados de Paz en las localidades de Tres de\r\nAbril, Felipe Yofre, Mariano I. Loza y Carlos Pellegrini.\r\nDip. Cassani\r\n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(150, '', '12627', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Poder Ejecutivo y a la SecretarÃ­a de Deportes, la\r\nconstrucciÃ³n de un tinglado deportivo en la Escuela NÂº 560 â€œVictoria Delgado de Sotoâ€,\r\nde la localidad de Gobernador Virasoro.\r\nDip. Pozo\r\n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(151, '', '12568', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Ministerio de EducaciÃ³n la reparaciÃ³n y\r\nampliaciÃ³n del edificio de la Escuela NÂº 875 â€œGranaderos de San MartÃ­nâ€ del paraje\r\nSanta Ana, de la localidad de Amado Bonpland, departamento de Paso de los Libres.\r\nDips. Acevedo y YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(152, '', '12626', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita a la empresa Aguas de Corrientes S.A. el\r\nemplazamiento y construcciÃ³n efectiva de la lÃ­nea cloacal en el barrio San Antonio Oeste.\r\nDip. SÃ¡ez\r\n', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(153, '', '12629', '', '2018-04-25', 'de la ComisiÃ³n de EnergÃ­a, Transporte, Obras y\r\nServicios PÃºblicos que aconseja SANCIÃ“N FAVORABLE SIN MODIFICACIONES\r\nal proyecto de resoluciÃ³n que solicita al Ministerio de ProducciÃ³n el enripiado del acceso\r\nal paraje RincÃ³n de SarandÃ­, departamento de Esquina.\r\nDip. Mancini', '', '', '', 'inactivo', 'apagado', '', '4', 'Sin asignar', '', '', 6),
(154, '', '12681', '', '2018-04-25', 'Solicita a la ComisiÃ³n Nacional de RegulaciÃ³n del Transporte, un\r\ncontrol exhaustivo de los vehÃ­culos de transporte de pasajeros de media y larga distancia\r\nen el Ã¡mbito de la provincia.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '5', '6', '', '', 6),
(155, '', '12462', '', '2018-04-25', 'de la ComisiÃ³n de Salud PÃºblica que aconseja\r\nSANCIÃ“N FAVORABLE SIN MODIFICACIONES al proyecto de ley de adhesiÃ³n a\r\nla Ley Nacional NÂº 17565 â€“Regula el ejercicio de la actividad farmacÃ©utica-.\r\nDip. FernÃ¡ndez Affur', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', '', 6),
(156, '', '12205', '', '2018-04-25', 'de la ComisiÃ³n de Salud PÃºblica que aconseja\r\nSANCIÃ“N FAVORABLE SIN MODIFICACIONES al proyecto de resoluciÃ³n que\r\nsolicita al Poder Ejecutivo la provisiÃ³n de un mÃ©dico obstetra, un mÃ©dico pediatra, un\r\nmÃ©dico ginecÃ³logo y un mÃ©dico clÃ­nico, para el hospital de la localidad de Colonia Carlos\r\nPellegrini.\r\nDip. Giraud Cabral', '', '', '', 'inactivo', 'apagado', '', '5', '4', '', '', 6),
(157, '', '12752', '', '2018-05-16', 'CreaciÃ³n del Instituto TraumatolÃ³gico de Corrientes (I.T.C.).\r\nDip. ChaÃ­n\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(158, '', '12755', '', '2018-05-16', 'Digesto JurÃ­dico de la Provincia de Corrientes.\r\nDip. Cassani', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(159, '', '12758', '', '2018-05-16', 'Revoca la donaciÃ³n del inmueble ubicado en la planta urbana de la\r\nciudad de Paso de los Libres, por incumplimiento del cargo impuesto al Patronato del\r\nEnfermo de Lepra; y afecta dicho inmueble al Colegio Secundario â€œPresidente Arturo\r\nFrondiziâ€ de dicha localidad.\r\nDip. YardÃ­n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(160, '', '12760', '', '2018-05-16', 'Regula el ejercicio profesional del â€œAcompaÃ±ante TerapÃ©uticoâ€.\r\nDip. Barrionuevo', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(161, '', '12762', '', '2018-05-16', 'Declara la emergencia vial y sanitaria en el Municipio San Isidro,\r\ndepartamento de Goya.\r\nVarios SeÃ±ores Diputados', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(162, '', '12767', '', '2018-05-16', 'RegulaciÃ³n de los pasivos ambientales.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(163, '', '12768', '', '2018-05-16', 'RegulaciÃ³n del empleo de drogas antineoplÃ¡sicas.\r\nDip. Locatelli\r\n', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(164, '', '12769', '', '2018-05-16', 'CreaciÃ³n del programa provincial â€œDerecho Complementario por\r\nNacimientoâ€.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7),
(165, '', '12770', '', '2018-05-16', 'AdhesiÃ³n a la Ley Nacional NÂº 26688 -Declara de interÃ©s nacional la\r\ninvestigaciÃ³n y producciÃ³n pÃºblica de medicamentos, materias primas para la producciÃ³n\r\nde medicamentos, vacunas y productos mÃ©dicos-.\r\nDip. Locatelli', '', '', '', 'inactivo', 'apagado', '', '3', '1', '', '', 7);

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
(01, 'ruiz', 'ruiz', 'Pablo', 'Ruiz', 'pabloruiz1980@outlook.com', '', '', 'operador', 'presente', 'inactivo', '2018-08-06 12:12:23'),
(04, 'miguelito', 'diputados', 'Miguel', 'Vidal', 'miguelvidal@hotmail.com', '', '', 'editor', 'presente', 'inactivo', '2018-04-17 12:08:09'),
(05, 'meixner', 'meixner', 'Ernesto', 'Meixner', 'ernestomeixner@hotmail.com', 'meixner.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:14'),
(07, 'acevedo', 'acevedo', '', 'Acevedo', '', 'acevedo.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-08-06 12:16:29'),
(08, 'bestard', 'bestard', '', 'Bestard', '', 'bestard.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:09'),
(09, 'cassani', 'cassani', '', 'Cassani', '', 'cassani.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:09'),
(11, 'chain', 'chain', '', 'Chain', '', 'chain.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:10'),
(12, 'barrionuevo', 'barrionuevo', '', 'Barrionuevo', '', 'barrionuevo.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-08-06 12:16:30'),
(13, 'affur', 'affur', '', 'F. Affur', '', 'affur.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:11'),
(14, 'gaya', 'gaya', '', 'Gaya', '', 'gaya.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:11'),
(15, 'garcia', 'garcia', '', 'Garcia', '', 'garcia.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:11'),
(16, 'giraud', 'giraud', '', 'Giraud C.', '', 'giraud.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:12'),
(17, 'locatelli', 'locatelli', '', 'Locatelli', '', 'locatelli.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:12'),
(18, 'lopez', 'lopez', '', 'Lopez', '', 'lopez.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:13'),
(19, 'mancini', 'mancini', '', 'Mancini F.', '', 'mancini.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:13'),
(21, 'molina', 'molina', '', 'Molina', '', 'molina.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:14'),
(23, 'mortola', 'mortola', '', 'Mortola', '', 'mortola.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:14'),
(25, 'calvi', 'calvi', '', 'Calvi', '', 'calvi.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:09'),
(28, 'saez', 'saez', '', 'Saez', '', 'saez.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:17'),
(30, 'yardin', 'yardin', '', 'Yardin', '', 'yardin.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:18'),
(35, 'aguirre', 'aguirre', 'Manuel', 'Aguirre', '', 'aguirre.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:07'),
(36, 'baez', 'baez', 'Ariel', 'Baez', '', 'baez.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:07'),
(37, 'bassi', 'bassi', 'Marcos', 'Bassi', '', 'bassi.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:08'),
(38, 'centurion', 'centurion', 'Lucía', 'Centurion', '', 'centurion.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:10'),
(39, 'godoy', 'godoy', 'Aníbal', 'Godoy', '', 'godoy.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:12'),
(40, 'pacayut', 'pacayut', 'Felix', 'Pacayut', '', 'pacayut', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:14'),
(41, 'pellegrini', 'pellegrini', 'Diego', 'Pellegrini', '', 'pellegrini.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:15'),
(42, 'pereyra', 'pereyra', 'Ana', 'Pereyra C.', '', 'pereyra.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:15'),
(43, 'pozo', 'pozo', 'Horacio', 'Pozo', '', 'pozo.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:15'),
(44, 'ramirez', 'ramirez', 'Magno', 'Ramirez', '', 'ramirez.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:16'),
(45, 'rotela', 'rotela', 'Albana', 'Rotela C.', '', 'rotela.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:16'),
(46, 'vischi', 'vischi', 'Eduardo', 'Vischi', '', 'vischi.jpg', '', 'diputado', 'ausente', 'inactivo', '2018-05-02 10:50:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id_video` int(133) NOT NULL,
  `video` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `tablero` varchar(255) NOT NULL,
  `duracion` int(133) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id_video`, `video`, `archivo`, `tablero`, `duracion`) VALUES
(1, 'Legislatura', 'legis.mp4', 'apagado', 882),
(2, 'Stream', 'stream.mp4', 'apagado', 84),
(3, 'Voto', 'voto.mp4', 'apagado', 37);

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
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `exptes`
--
ALTER TABLE `exptes`
  ADD PRIMARY KEY (`id_expte`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`id_funcion`);

--
-- Indices de la tabla `mociones`
--
ALTER TABLE `mociones`
  ADD PRIMARY KEY (`id_mocion`);

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
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `exptes`
--
ALTER TABLE `exptes`
  MODIFY `id_expte` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de la tabla `funciones`
--
ALTER TABLE `funciones`
  MODIFY `id_funcion` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mociones`
--
ALTER TABLE `mociones`
  MODIFY `id_mocion` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id_nota` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_subcat` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tablas`
--
ALTER TABLE `tablas`
  MODIFY `id_tabla` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id_video` int(133) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
