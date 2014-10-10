-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-08-2014 a las 07:57:36
-- Versión del servidor: 5.5.37
-- Versión de PHP: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `casafitn_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio`
--

CREATE TABLE IF NOT EXISTS `accesorio` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(40) NOT NULL,
  `peso` varchar(200) NOT NULL,
  `unidad` varchar(200) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accesorio_id` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `accesorio`
--

INSERT INTO `accesorio` (`id`, `producto_id`, `codigo`, `peso`, `unidad`, `tipo_ejercicio`) VALUES
(6, 779, 'Acc. Fit 001', '111', '1', 'Residencial'),
(7, 780, 'Acc. Fit 007', '111', '1', 'Residencial'),
(8, 781, 'Acc. Fit 011', '111', '1', 'Residencial'),
(9, 782, 'Acc. Fit 012', '111', '1', 'Residencial'),
(10, 783, 'Acc. Fit 015', '111', '1', 'Residencial'),
(11, 784, 'Acc. Fit 019', '111', '1', 'Residencial'),
(12, 785, 'Acc. Fit 022', '111', '1', 'Residencial'),
(13, 786, 'Acc. Fit 027', '111', '1', 'Residencial'),
(14, 787, 'Acc. Fit 029', '111', '1', 'Residencial'),
(15, 788, 'Acc. Fit 031', '111', '1', 'Residencial'),
(16, 789, 'Acc. Fit 037', '111', '1', 'Residencial'),
(17, 790, 'Acc. Fit 038', '111', '1', 'Residencial'),
(18, 791, 'Acc. Fit 045', '111', '1', 'Residencial'),
(19, 792, 'Acc. Fit 048', '111', '1', 'Residencial'),
(20, 793, 'Acc. Fit 051', '111', '1', 'Residencial'),
(21, 794, 'Acc. Fit 057', '111', '1', 'Residencial'),
(22, 795, 'Acc. Fit 062', '111', '1', 'Residencial'),
(23, 796, 'Acc. Fit 065', '111', '1', 'Residencial'),
(24, 797, 'Acc. Fit 073', '111', '1', 'Residencial'),
(25, 798, 'Acc. Fit 077', '111', '1', 'Residencial'),
(26, 799, 'Acc. Fit 084', '111', '1', 'Residencial'),
(27, 800, 'Acc. Fit 086', '111', '1', 'Residencial'),
(28, 801, 'Acc. Fit 094', '111', '1', 'Residencial'),
(29, 802, 'Acc. Fit silicona liquida', '111', '1', 'Residencial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bicicleta`
--

CREATE TABLE IF NOT EXISTS `bicicleta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(50) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  `peso` smallint(4) NOT NULL,
  `resistencia` enum('Mecánico','Magnético','Electromagnético') NOT NULL,
  `tipo_bici` enum('fija','indoor') NOT NULL,
  `asientoRegulable` enum('Si','No') NOT NULL,
  `ruedaInercia` tinyint(2) NOT NULL,
  `monitor_electronico` enum('Si','No') NOT NULL,
  `manubrio_regulable` enum('Si','No') NOT NULL,
  `freno_emergencia` enum('Si','No') NOT NULL,
  `plegable` enum('Si','No') NOT NULL,
  `niveles_esfuerzo` int(11) NOT NULL,
  `control_pulso` enum('Si','No') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Volcado de datos para la tabla `bicicleta`
--

INSERT INTO `bicicleta` (`id`, `producto_id`, `codigo`, `tipo_ejercicio`, `peso`, `resistencia`, `tipo_bici`, `asientoRegulable`, `ruedaInercia`, `monitor_electronico`, `manubrio_regulable`, `freno_emergencia`, `plegable`, `niveles_esfuerzo`, `control_pulso`) VALUES
(2, 103, 'Olmo 21', 'Residencial', 100, 'Mecánico', 'fija', 'Si', 0, 'Si', '', 'No', 'No', 0, ''),
(3, 104, 'Olmo 70', 'Profesional', 120, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 16, 'Si'),
(4, 105, 'Olmo 21s', 'Residencial', 100, 'Mecánico', 'fija', 'Si', 0, 'Si', '', 'No', 'No', 0, ''),
(5, 106, 'Olmo 27', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(6, 107, 'Olmo 29', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, ''),
(7, 108, 'Olmo 28', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(8, 109, 'Olmo 23', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', '', 'No', 'No', 0, ''),
(9, 110, 'Olmo 24', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(10, 111, 'Olmo 41', 'Residencial', 100, 'Magnético', 'fija', '', 0, 'Si', '', 'No', 'No', 8, 'Si'),
(11, 114, 'Randers 2560', '', 0, '', 'fija', '', 0, '', '', 'No', 'No', 0, ''),
(12, 115, 'Olmo 51', 'Residencial', 100, 'Magnético', 'fija', '', 0, 'Si', '', 'No', 'No', 8, ''),
(13, 116, 'Olmo 60', 'Residencial', 150, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 35, 'Si'),
(14, 117, 'Randers 350', 'Residencial', 0, '', 'fija', '', 0, '', '', 'No', 'No', 0, ''),
(15, 118, 'Olmo 62', 'Residencial', 100, 'Electromagnético', 'fija', 'Si', 0, 'Si', '', 'No', 'No', 24, 'Si'),
(16, 119, 'Randers 2700', 'Residencial', 120, 'Magnético', 'fija', '', 0, 'Si', '', 'No', 'No', 8, 'Si'),
(17, 120, 'Fitage ge 701', 'Residencial', 120, 'Magnético', 'fija', 'Si', 5, 'Si', '', 'No', 'No', 8, 'Si'),
(18, 121, 'Olmo 72', 'Profesional', 120, '', 'fija', '', 0, 'Si', '', 'No', 'No', 14, 'Si'),
(19, 122, 'Mottion 1300', 'Residencial', 110, 'Magnético', 'fija', 'Si', 0, '', '', 'No', 'No', 8, ''),
(20, 125, 'Fitage ge 104', 'Residencial', 120, '', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(21, 126, 'Fitage ge 703', 'Residencial', 100, 'Magnético', 'fija', '', 5, 'Si', '', 'No', 'No', 8, 'Si'),
(22, 127, 'Fitage ge 103', 'Residencial', 120, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 16, 'Si'),
(23, 128, 'Randers 2570hp', 'Residencial', 0, '', 'fija', 'Si', 0, '', '', 'No', 'No', 12, 'Si'),
(24, 129, 'Randers 145', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, '', '', 'No', 'No', 8, 'Si'),
(25, 131, 'Mottion 1200', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', '', 'No', 'No', 8, 'Si'),
(26, 134, 'Fitage ge 110', 'Residencial', 120, 'Electromagnético', 'fija', 'Si', 11, 'Si', '', 'No', 'No', 0, 'Si'),
(27, 135, 'Fitage ge 710', 'Residencial', 120, 'Electromagnético', 'fija', 'Si', 9, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(28, 136, 'Mottion 1100', 'Residencial', 150, 'Electromagnético', 'fija', '', 9, 'Si', '', 'No', 'No', 0, 'Si'),
(29, 137, 'Olmo 82', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(30, 138, 'Randers 2800hp', 'Residencial', 120, '', 'fija', 'Si', 0, '', '', 'No', 'No', 8, 'Si'),
(31, 139, 'Randers H4915', 'Residencial', 120, '', 'fija', '', 0, 'Si', '', 'No', 'No', 10, 'Si'),
(32, 809, 'Fitage ge 101', 'Residencial', 100, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(33, 810, 'Mottion 1400', 'Residencial', 0, '', 'fija', 'Si', 0, '', 'Si', 'No', 'No', 8, ''),
(34, 811, 'Randers 359', 'Profesional', 120, 'Magnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(35, 812, 'Randers 370', 'Profesional', 100, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(36, 813, 'Randers 380', 'Profesional', 115, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(37, 814, 'Randers 401hp', 'Residencial', 115, '', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 8, 'Si'),
(38, 815, 'Randers 455hp', 'Residencial', 110, 'Magnético', 'fija', '', 0, '', '', 'No', 'No', 8, 'Si'),
(39, 817, 'Randers 850', 'Semiprofesional', 150, '', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 16, 'Si'),
(40, 818, 'Randers 9000', 'Profesional', 150, '', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(41, 819, 'Randers 9900', 'Profesional', 190, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(42, 820, 'Randers C842IR', 'Profesional', 160, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(43, 821, 'Randers C842IU', 'Profesional', 160, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(44, 822, 'Randers FC 7000', 'Profesional', 150, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(45, 823, 'Randers FC 7500', 'Profesional', 150, 'Electromagnético', 'fija', 'Si', 0, 'Si', 'Si', 'No', 'No', 0, 'Si'),
(46, 825, 'Reebok B5_1', 'Residencial', 150, '', 'fija', 'Si', 0, 'Si', '', 'No', 'No', 16, 'Si'),
(47, 826, 'Reebok edge DB3', 'Residencial', 120, 'Magnético', 'fija', 'Si', 6, 'Si', '', 'No', 'No', 8, 'Si'),
(48, 827, 'Zellens ZL 3120', 'Profesional', 100, '', 'fija', 'Si', 0, '', '', 'No', 'No', 8, ''),
(49, 828, 'Zellens ZL 3440', 'Profesional', 120, 'Electromagnético', 'fija', '', 11, 'Si', '', 'No', 'No', 16, 'Si'),
(50, 0, '', '', 0, '', '', '', 0, '', '', '', '', 0, ''),
(51, 90, 'Olmo 64', 'Profesional', 100, '', 'indoor', 'Si', 13, 'Si', 'Si', 'Si', 'No', 0, 'No'),
(52, 91, 'Olmo 22', 'Residencial', 100, '', 'indoor', 'Si', 14, 'Si', 'Si', 'No', 'No', 0, 'No'),
(53, 92, 'Randers 889 sp', 'Profesional', 120, '', 'indoor', 'Si', 18, 'Si', 'Si', 'Si', 'Si', 0, 'No'),
(54, 94, 'Randers 340', 'Residencial', 160, '', 'indoor', 'Si', 22, 'No', 'Si', 'Si', 'Si', 0, 'No'),
(55, 95, 'Olmo 25', 'Profesional', 120, '', 'indoor', 'Si', 17, 'Si', 'Si', 'No', 'No', 0, 'No'),
(56, 0, 'Fiage ge 601', 'Profesional', 100, '', 'indoor', 'Si', 20, 'Si', 'Si', 'No', 'No', 0, 'No'),
(57, 0, 'Fiage ge 601F', 'Residencial', 0, '', 'indoor', 'Si', 20, 'Si', 'Si', 'No', 'Si', 0, 'No'),
(58, 98, 'Randers FC58H', 'Profesional', 140, '', 'indoor', 'Si', 18, 'No', 'Si', 'No', 'Si', 0, 'No'),
(59, 99, 'Mottion 9100', 'Residencial', 120, '', 'indoor', 'Si', 20, 'No', 'Si', 'No', 'No', 0, 'No'),
(60, 100, 'Fitage ge 602', 'Profesional', 120, '', 'indoor', 'Si', 20, 'No', 'Si', 'Si', 'No', 0, 'No'),
(61, 101, 'Olmo 73', 'Profesional', 130, '', 'indoor', 'Si', 18, 'No', 'Si', 'No', 'Si', 0, 'No'),
(62, 831, 'Randers SB1', 'Profesional', 120, '', 'indoor', 'Si', 20, 'Si', 'Si', 'Si', 'No', 0, 'No'),
(63, 830, 'Randers FC68h', 'Profesional', 150, '', 'indoor', 'Si', 20, 'No', 'Si', 'Si', 'No', 0, 'No'),
(64, 920, 'Mottion 7100', 'Residencial', 100, 'Magnético', 'fija', '', 0, 'Si', '', 'No', 'No', 8, ''),
(65, 921, 'Reebok BZ7', 'Residencial', 0, 'Mecánico', 'fija', '', 0, '', '', '', '', 0, ''),
(68, 925, 'REEBOK BZ9', 'Semiprofesional', 150, 'Electromagnético', 'fija', 'No', 9, 'Si', 'Si', 'Si', 'No', 32, 'Si'),
(69, 926, 'RANDERS 900SP1', 'Residencial', 0, 'Magnético', '', 'Si', 18, 'No', 'Si', 'No', 'No', 0, 'No'),
(70, 927, 'ZELLENS ZL 8080', 'Profesional', 125, 'Mecánico', 'indoor', 'Si', 18, 'Si', 'Si', 'Si', 'No', 0, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caminador`
--

CREATE TABLE IF NOT EXISTS `caminador` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(40) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  `mecanica` enum('Mecánico','Magnético','ElectroMagnético','') NOT NULL,
  `asientoRegulable` enum('Si','No') NOT NULL,
  `peso` tinyint(3) DEFAULT NULL,
  `ruedaInercia` tinyint(2) NOT NULL,
  `nivelResistencia` tinyint(2) NOT NULL,
  `monitor_electronico` enum('Si','No') NOT NULL,
  `comb_ejer` enum('Si','No') NOT NULL,
  `sensor_pulso` enum('Si','No') NOT NULL,
  `ruedas` enum('Si','No') NOT NULL,
  `plegable` enum('Si','No') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `caminador_id` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcado de datos para la tabla `caminador`
--

INSERT INTO `caminador` (`id`, `producto_id`, `codigo`, `tipo_ejercicio`, `mecanica`, `asientoRegulable`, `peso`, `ruedaInercia`, `nivelResistencia`, `monitor_electronico`, `comb_ejer`, `sensor_pulso`, `ruedas`, `plegable`) VALUES
(3, 51, 'Olmo 61', 'Residencial', '', 'No', 100, 0, 16, 'Si', 'No', 'Si', 'No', 'No'),
(4, 52, 'Olmo 20', 'Residencial', '', 'No', 100, 0, 0, 'Si', 'Si', 'No', 'Si', 'No'),
(5, 53, 'Olmo 40', 'Residencial', 'Magnético', 'No', 100, 0, 8, 'Si', 'No', 'Si', 'No', 'Si'),
(6, 54, 'Olmo 42', 'Residencial', 'Magnético', 'Si', 100, 0, 8, 'Si', 'Si', 'Si', 'No', 'No'),
(7, 55, 'Olmo 47', 'Residencial', 'Magnético', 'No', 100, 0, 8, 'Si', 'Si', 'Si', 'No', 'No'),
(8, 57, 'Randers G239', 'Residencial', '', 'No', 110, 0, 12, 'Si', 'Si', 'Si', 'No', 'Si'),
(9, 58, 'Fitage ge 404', 'Residencial', '', 'No', 100, 6, 0, 'No', 'No', 'Si', 'Si', 'Si'),
(10, 59, 'Fitage ge 403', 'Residencial', 'Magnético', 'No', 110, 6, 10, 'Si', 'Si', 'Si', 'Si', 'Si'),
(11, 60, 'Olmo 50', 'Residencial', '', 'No', 100, 0, 8, 'Si', 'No', 'Si', 'No', 'Si'),
(12, 61, 'Olmo 46', 'Residencial', '', 'Si', 100, 0, 0, 'Si', 'Si', 'No', 'Si', 'No'),
(13, 62, 'Randers 1943', 'Residencial', 'Magnético', 'No', 0, 0, 8, 'Si', '', 'Si', 'Si', 'No'),
(14, 63, 'Randers 210', 'Profesional', '', 'No', 127, 0, 6, 'Si', 'Si', 'Si', 'No', 'Si'),
(15, 64, 'Fitage ge 401', 'Residencial', 'Magnético', 'No', 100, 0, 8, 'No', 'No', 'No', 'No', 'No'),
(16, 65, 'Randers 204', 'Profesional', '', 'No', 127, 0, 11, 'Si', 'Si', 'Si', 'Si', 'Si'),
(17, 67, 'Randers 206', 'Profesional', '', 'No', 127, 0, 11, 'Si', 'Si', 'Si', 'No', 'Si'),
(18, 70, 'Randers 1932', 'Residencial', 'Magnético', 'Si', 100, 0, 8, 'Si', 'Si', 'Si', 'Si', 'No'),
(19, 0, 'Randers 1929HP', 'Residencial', 'Magnético', 'No', 100, 5, 8, 'Si', 'No', 'No', 'Si', 'No'),
(20, 71, 'Reebok EDGE DX3', 'Residencial', '', 'No', 120, 6, 8, 'Si', 'No', 'Si', 'Si', 'No'),
(21, 0, 'Reebok C5.1', 'Residencial', '', 'No', 127, 0, 16, 'Si', 'Si', 'Si', 'No', 'No'),
(22, 73, 'Fitage ge 405', 'Residencial', '', 'No', 110, 6, 0, 'Si', 'No', 'Si', 'No', 'Si'),
(23, 74, 'Fitage ge 400', 'Residencial', 'Magnético', 'Si', 100, 0, 8, 'Si', 'Si', 'No', 'No', 'No'),
(24, 0, 'Zellens ZN-5150', 'Profesional', '', 'No', 127, 0, 0, 'Si', 'No', 'Si', 'No', 'Si'),
(25, 78, 'Randers 1950HP', 'Residencial', '', 'No', 110, 0, 0, 'No', 'Si', 'Si', 'No', 'Si'),
(26, 80, 'Olmo 83', 'Residencial', '', 'No', 100, 0, 8, 'Si', 'Si', 'Si', 'No', 'No'),
(27, 77, 'Mottion 4100', 'Residencial', '', 'No', 100, 0, 8, 'No', 'No', 'Si', 'No', 'No'),
(28, 79, 'Randers C776i', 'Profesional', '', 'No', 127, 0, 31, 'Si', 'No', 'Si', 'No', 'No'),
(29, 860, 'Randers EFX 576i', 'Profesional', '', 'No', 127, 0, 20, 'Si', 'Si', 'Si', 'No', 'No'),
(30, 862, 'Randers SK9100', 'Profesional', '', 'No', 127, 0, 40, 'Si', 'No', 'Si', 'No', 'No'),
(31, 861, 'Randers FC249', 'Profesional', '', 'No', 127, 0, 16, 'Si', 'No', 'Si', 'No', 'No'),
(32, 66, 'Randers AMT100i', 'Profesional', '', 'No', 127, 0, 20, 'Si', 'Si', 'Si', 'No', 'No'),
(33, 56, 'Randers EFX 534i', 'Profesional', '', 'No', 127, 0, 20, 'Si', 'Si', 'Si', 'No', 'No'),
(34, 68, 'Randers EFX 532i', 'Profesional', '', 'No', 127, 0, 20, 'Si', 'Si', 'Si', 'No', 'No'),
(35, 929, 'RANDERS 1929', 'Residencial', '', 'Si', 100, 5, 8, 'No', 'No', 'No', 'Si', 'No'),
(36, 930, 'REEBOK C5_1', 'Semiprofesional', 'ElectroMagnético', 'Si', 127, 0, 0, 'No', 'No', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinta`
--

CREATE TABLE IF NOT EXISTS `cinta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  `tipo_uso` enum('Caminar','Caminar y Trotar','Correr') NOT NULL,
  `peso` tinyint(3) NOT NULL,
  `motor` enum('Con motor','Sin motor') NOT NULL,
  `ancho_banda` varchar(50) NOT NULL,
  `velocidad` varchar(50) NOT NULL,
  `plegable` enum('Si','No') NOT NULL,
  `inclinacion` enum('Si','No') NOT NULL,
  `programas` varchar(50) NOT NULL,
  `monitor_electronico` enum('Si','No') NOT NULL,
  `potencia` varchar(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Volcado de datos para la tabla `cinta`
--

INSERT INTO `cinta` (`id`, `codigo`, `tipo_ejercicio`, `tipo_uso`, `peso`, `motor`, `ancho_banda`, `velocidad`, `plegable`, `inclinacion`, `programas`, `monitor_electronico`, `potencia`, `producto_id`) VALUES
(9, 'Olmo 31', 'Residencial', 'Caminar', 80, 'Sin motor', '33', '0', 'Si', 'No', '-', 'Si', '-', 3),
(10, 'Olmo 33', 'Residencial', 'Correr', 90, 'Con motor', '40', '10.0', 'Si', 'Si', '5', 'Si', '1.25  hp', 4),
(11, 'Olmo 36', 'Residencial', 'Correr', 120, 'Con motor', '46', '16.0', 'Si', 'Si', '5', 'Si', '1.75 hp', 5),
(12, 'Randers 338', 'Residencial', 'Caminar', 90, 'Con motor', '-', '8.0 ', 'Si', 'No', '-', 'No', '1.0  hp', 6),
(13, 'Randers 490', 'Residencial', 'Correr', 100, 'Con motor', '40', '12.0', 'Si', 'Si', '-', 'No', '1.0  hp', 7),
(14, 'Olmo 37', 'Residencial', 'Correr', 127, 'Con motor', '51', '16.0', 'Si', 'Si', '15', 'Si', '2.0 hp', 8),
(15, 'Olmo 34', 'Residencial', 'Correr', 120, 'Con motor', '40', '13.0', 'Si', 'Si', '5', 'Si', '1.5 hp', 9),
(16, 'Olmo 32', 'Residencial', 'Caminar', 80, 'Con motor', '33', '6', 'Si', 'No', '-', 'Si', '1.  hp', 10),
(17, 'Olmo 38', 'Residencial', 'Correr', 127, 'Con motor', '51', '16', 'Si', 'Si', '-', 'Si', '2.5 hp', 11),
(18, 'Randers G6110', 'Residencial', 'Correr', 127, 'Con motor', '45', '18.0', 'Si', 'Si', '9', 'Si', '2.75 hp', 12),
(19, 'Randers G6442', 'Residencial', 'Correr', 120, 'Con motor', '44', '14', 'Si', 'Si', '9', 'Si', '2.25  hp', 13),
(20, 'Olmo 39', 'Profesional', 'Correr', 127, 'Con motor', '56', '20', 'No', 'Si', '-', 'Si', '3.00  hp', 14),
(21, 'Randers 550EX0', 'Profesional', 'Correr', 127, 'Con motor', '43', '16.0', 'No', 'No', '-', 'Si', '2 hp', 15),
(22, 'Randers 550EX1', 'Profesional', 'Correr', 127, 'Con motor', '13', '16.0', 'No', 'Si', '-', 'No', '2.0 hp', 16),
(23, 'Randers 570L', 'Profesional', 'Correr', 127, 'Con motor', '54', '18.0', 'No', 'No', '10', 'No', '3.0 hp', 17),
(24, 'Randers 570S', 'Profesional', 'Correr', 127, 'Con motor', '54', '18', 'No', 'Si', '10', 'No', '-', 18),
(25, 'Randers 050hp', 'Residencial', 'Caminar', 100, 'Sin motor', '36', '0', 'Si', 'No', '-', 'Si', '-', 19),
(26, 'Randers 563R2', 'Profesional', 'Correr', 127, 'Con motor', '48', '16', 'No', 'Si', '-', 'Si', '2 hp', 20),
(27, 'Fitage ge 203', 'Residencial', 'Caminar y Trotar', 127, 'Con motor', '-', '18.00', 'Si', 'Si', '15', 'No', '2.00 hp', 838),
(28, 'Fitage ge 202', 'Residencial', 'Caminar y Trotar', 120, 'Con motor', '-', '16.00', 'Si', 'Si', '12', 'No', '1.5 hp', 839),
(29, 'Fitage ge 201', 'Residencial', 'Caminar y Trotar', 100, 'Con motor', '-', '12.00', 'Si', 'Si', '12', 'No', '1.25 hp', 841),
(30, 'Randers 620', 'Residencial', 'Caminar y Trotar', 120, 'Con motor', '-', '16.0', 'Si', 'Si', '5', 'Si', '2.5  hp', 24),
(31, 'Reebok I run', 'Residencial', 'Caminar y Trotar', 100, 'Con motor', '40', '14.0', 'Si', 'Si', '6', 'No', '1.75 hp', 855),
(32, 'Reebok T200L', 'Residencial', 'Caminar y Trotar', 120, 'Con motor', '44', '16.0', 'No', 'Si', '8', 'No', '1.75 hp', 856),
(33, 'Fitage ge 204', 'Residencial', 'Caminar y Trotar', 127, 'Con motor', '-', '18.00', 'Si', 'Si', '15', 'No', '1.75 hp', 837),
(34, 'Fitage ge 221', 'Semiprofesional', 'Caminar y Trotar', 127, 'Con motor', '51', '18', 'No', 'Si', '12', 'No', '3.00 hp', 834),
(35, 'Fitage ge 224', 'Profesional', 'Correr', 127, 'Con motor', '51', '20.0', 'No', 'No', '15', 'Si', '3.00  hp', 833),
(36, 'Fitage ge 208', 'Residencial', 'Correr', 120, 'Con motor', '-', '16.00', 'Si', 'Si', '12', 'No', '1.5 hp', NULL),
(37, 'Zellens ZS 1180', 'Profesional', 'Caminar y Trotar', 127, 'Con motor', '50', '20.0', 'Si', 'Si', '8', 'No', '2.0 hp', NULL),
(38, 'Olmo 35', 'Residencial', 'Caminar y Trotar', 100, 'Con motor', '-', '16.00', 'Si', 'Si', '13', 'Si', '1.5 hp', 34),
(39, 'Fitage ge 200', 'Residencial', 'Caminar', 100, 'Con motor', '37', '12.0 ', 'Si', 'Si', '-', 'No', '1.0  hp', 857),
(40, 'Fitage ge 250', 'Profesional', 'Correr', 127, 'Con motor', '51', '22.0 ', 'Si', 'Si', '21', 'Si', '3.0  hp', 832),
(41, 'Randers 320', 'Residencial', 'Caminar', 127, 'Con motor', '51', '8', 'Si', 'Si', '-', 'Si', '3,5  hp', 37),
(42, 'Randers 310', 'Residencial', 'Caminar', 100, 'Con motor', '36', '10', 'Si', 'No', '-', 'No', '1.5  hp', 38),
(43, 'Randers 770', 'Residencial', 'Caminar y Trotar', 120, 'Con motor', '-', '16', 'Si', 'Si', '25', 'No', '2.5  hp', 39),
(44, 'Randers 770-SI', 'Residencial', 'Correr', 120, 'Con motor', '43', '16', 'No', 'Si', '15', 'Si', '2.5  hp', NULL),
(45, 'Randers 780', 'Residencial', 'Caminar y Trotar', 120, 'Con motor', '-', '18', 'No', 'Si', '25', 'No', '3.0  hp', 41),
(46, 'Randers 6950tv', 'Profesional', 'Correr', 127, 'Con motor', '59', '25', 'Si', 'Si', '-', 'Si', '5.0 hp', 848),
(47, 'Randers 850rx1', 'Profesional', 'Correr', 127, 'Con motor', '54', '18', 'Si', 'Si', '23', 'Si', '3.0 hp', 849),
(48, 'Randers 850rx0', 'Profesional', 'Correr', 127, 'Con motor', '54', '18', 'Si', 'Si', '23', 'Si', '3.0 hp', 850),
(49, 'Randers C932i', 'Profesional', 'Correr', 127, 'Con motor', '56', '19', 'Si', 'Si', '7', 'Si', '4.0 hp', 851),
(50, 'Randers C956i', 'Profesional', 'Correr', 127, 'Con motor', '51', '25.5', 'Si', 'Si', '-', 'Si', '4.0 hp', 852),
(51, 'Randers FC 5900', 'Profesional', 'Correr', 127, 'Con motor', '55', '22', 'Si', 'Si', '28', 'Si', '3.0 hp', 853),
(52, 'Randers G6134', 'Residencial', 'Correr', 127, 'Con motor', '0', '0', 'Si', 'No', '9', 'Si', '3.5 hp', 854),
(53, 'Randers 555ex1', 'Profesional', 'Correr', 127, 'Con motor', '50', '18', 'Si', 'Si', '15', 'Si', '3.0 hp', 858),
(54, 'Randers 563r1', 'Profesional', 'Correr', 127, 'Con motor', '48', '18', 'Si', 'No', '-', 'Si', '3.0 hp', 22),
(55, 'Reebok T7_1', 'Profesional', 'Correr', 127, 'Con motor', '50', '18', 'Si', 'Si', '6', 'Si', '2.0 hp', 27),
(56, 'Fitage ge 209', 'Residencial', 'Correr', 120, 'Con motor', '-', '16', 'No', 'No', '12', 'Si', '1.5 hp', 835),
(57, 'Fitage ge 205', 'Residencial', 'Caminar', 100, 'Con motor', '37', '12', 'Si', 'Si', '12', 'Si', '1.0 hp', 836),
(58, 'Randers 562', 'Profesional', '', 127, 'Con motor', '48', '16', 'Si', 'No', '-', 'Si', '3.0 hp', 843),
(59, 'Randers 575tx1', 'Profesional', 'Correr', 127, 'Con motor', '50', '18', 'Si', 'Si', '9', 'Si', '3.0 hp', 844),
(60, 'Randers 575txo', 'Profesional', 'Correr', 127, 'Con motor', '50', '18', 'Si', 'No', '9', 'Si', '3.0 hp', 845),
(61, 'Randers 580', 'Profesional', '', 127, 'Con motor', '57', '18', 'Si', 'No', '-', 'Si', '3.0 hp', 846),
(62, 'Randers 6950bh', 'Profesional', 'Correr', 127, 'Con motor', '55', '25', 'Si', 'Si', '-', 'Si', '5.0 hp', 847),
(63, 'Randers 770 s.i.', 'Residencial', 'Caminar', 80, 'Sin motor', '33', '0', 'Si', 'No', '-', 'Si', '-', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE IF NOT EXISTS `consulta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `localidad` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `mensaje` mediumtext NOT NULL,
  `fechayhora` datetime NOT NULL,
  `local` varchar(100) NOT NULL,
  `producto` varchar(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo_envio`
--

CREATE TABLE IF NOT EXISTS `costo_envio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` int(10) DEFAULT NULL,
  `destino` int(10) DEFAULT NULL,
  `precio` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=287 ;

--
-- Volcado de datos para la tabla `costo_envio`
--

INSERT INTO `costo_envio` (`id`, `seccion`, `destino`, `precio`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 75),
(3, 1, 3, 110),
(4, 1, 4, 175),
(5, 1, 5, 80),
(6, 1, 6, 90),
(7, 1, 7, 90),
(8, 1, 8, 110),
(9, 1, 9, 70),
(10, 1, 0, 80),
(11, 1, 11, 70),
(12, 1, 12, 85),
(13, 1, 13, 80),
(14, 1, 14, 70),
(15, 1, 15, 70),
(16, 1, 16, 70),
(17, 1, 17, 89),
(18, 1, 18, 95),
(19, 1, 19, 100),
(20, 1, 20, 80),
(21, 1, 21, 80),
(22, 1, 22, 80),
(23, 1, 23, 100),
(24, 1, 24, 90),
(25, 1, 25, 85),
(26, 1, 26, 110),
(27, 1, 27, 80),
(28, 2, 1, 0),
(29, 2, 2, 75),
(30, 2, 3, 110),
(31, 2, 4, 175),
(32, 2, 5, 130),
(33, 2, 6, 150),
(34, 2, 7, 150),
(35, 2, 8, 180),
(36, 2, 9, 130),
(37, 2, 0, 160),
(38, 2, 11, 130),
(39, 2, 12, 160),
(40, 2, 13, 160),
(41, 2, 14, 150),
(42, 2, 15, 150),
(43, 2, 16, 150),
(44, 2, 17, 160),
(45, 2, 18, 170),
(46, 2, 19, 185),
(47, 2, 20, 150),
(48, 2, 21, 150),
(49, 2, 22, 150),
(50, 2, 23, 200),
(51, 2, 24, 160),
(52, 2, 25, 150),
(53, 2, 26, 210),
(54, 2, 27, 170),
(55, 3, 1, 0),
(56, 3, 2, 75),
(57, 3, 3, 110),
(58, 3, 4, 175),
(59, 3, 5, 100),
(60, 3, 6, 120),
(61, 3, 7, 120),
(62, 3, 8, 140),
(63, 3, 9, 100),
(64, 3, 0, 120),
(65, 3, 11, 105),
(66, 3, 12, 120),
(67, 3, 13, 120),
(68, 3, 14, 110),
(69, 3, 15, 100),
(70, 3, 16, 100),
(71, 3, 17, 110),
(72, 3, 18, 125),
(73, 3, 19, 130),
(74, 3, 20, 110),
(75, 3, 21, 110),
(76, 3, 22, 110),
(77, 3, 23, 130),
(78, 3, 24, 120),
(79, 3, 25, 130),
(80, 3, 26, 140),
(81, 3, 27, 110),
(82, 4, 1, 0),
(83, 4, 2, 75),
(84, 4, 3, 110),
(85, 4, 4, 175),
(86, 4, 5, 110),
(87, 4, 6, 130),
(88, 4, 7, 130),
(89, 4, 8, 170),
(90, 4, 9, 120),
(91, 4, 0, 150),
(92, 4, 11, 120),
(93, 4, 12, 140),
(94, 4, 13, 150),
(95, 4, 14, 140),
(96, 4, 15, 130),
(97, 4, 16, 130),
(98, 4, 17, 140),
(99, 4, 18, 160),
(100, 4, 19, 170),
(101, 4, 20, 140),
(102, 4, 21, 130),
(103, 4, 22, 130),
(104, 4, 23, 180),
(105, 4, 24, 140),
(106, 4, 25, 140),
(107, 4, 26, 190),
(108, 4, 27, 160),
(109, 5, 1, 0),
(110, 5, 2, 75),
(111, 5, 3, 110),
(112, 5, 4, 175),
(113, 5, 5, 100),
(114, 5, 6, 110),
(115, 5, 7, 110),
(116, 5, 8, 130),
(117, 5, 9, 110),
(118, 5, 0, 120),
(119, 5, 11, 105),
(120, 5, 12, 120),
(121, 5, 13, 120),
(122, 5, 14, 120),
(123, 5, 15, 100),
(124, 5, 16, 110),
(125, 5, 17, 120),
(126, 5, 18, 130),
(127, 5, 19, 150),
(128, 5, 20, 110),
(129, 5, 21, 105),
(130, 5, 22, 105),
(131, 5, 23, 140),
(132, 5, 24, 120),
(133, 5, 25, 130),
(134, 5, 26, 160),
(135, 5, 27, 120),
(136, 8, 1, 0),
(137, 8, 2, 150),
(138, 8, 3, 220),
(139, 8, 4, 350),
(140, 8, 5, 170),
(141, 8, 6, 210),
(142, 8, 7, 210),
(143, 8, 8, 250),
(144, 8, 9, 170),
(145, 8, 0, 210),
(146, 8, 11, 180),
(147, 8, 12, 210),
(148, 8, 13, 210),
(149, 8, 14, 190),
(150, 8, 15, 170),
(151, 8, 16, 170),
(152, 8, 17, 190),
(153, 8, 18, 220),
(154, 8, 19, 230),
(155, 8, 20, 190),
(156, 8, 21, 190),
(157, 8, 22, 190),
(158, 8, 23, 230),
(159, 8, 24, 210),
(160, 8, 25, 230),
(161, 8, 26, 250),
(162, 8, 27, 190),
(163, 9, 1, 0),
(164, 9, 2, 75),
(165, 9, 3, 110),
(166, 9, 4, 175),
(167, 9, 5, 80),
(168, 9, 6, 90),
(169, 9, 7, 90),
(170, 9, 8, 110),
(171, 9, 9, 70),
(172, 9, 10, 80),
(173, 9, 11, 70),
(174, 9, 12, 85),
(175, 9, 13, 80),
(176, 9, 14, 70),
(177, 9, 15, 70),
(178, 9, 16, 70),
(179, 9, 17, 89),
(180, 9, 18, 95),
(181, 9, 19, 100),
(182, 9, 20, 80),
(183, 9, 21, 80),
(184, 9, 22, 80),
(185, 9, 23, 100),
(186, 9, 24, 90),
(187, 9, 25, 85),
(188, 9, 26, 110),
(189, 9, 27, 80),
(190, 6, 1, 0),
(191, 6, 2, 75),
(192, 6, 3, 110),
(193, 6, 4, 175),
(194, 6, 5, 100),
(195, 6, 6, 110),
(196, 6, 7, 110),
(197, 6, 8, 130),
(198, 6, 9, 110),
(199, 6, 10, 120),
(200, 6, 11, 105),
(201, 6, 12, 120),
(202, 6, 13, 120),
(203, 6, 14, 190),
(204, 6, 15, 170),
(205, 6, 16, 170),
(206, 6, 17, 190),
(207, 6, 18, 220),
(208, 6, 19, 230),
(209, 6, 20, 190),
(210, 6, 21, 190),
(211, 6, 22, 190),
(212, 6, 23, 230),
(213, 6, 24, 210),
(214, 6, 25, 230),
(215, 6, 26, 250),
(216, 6, 27, 190),
(217, 6, 28, 30),
(218, 1, 28, 30),
(219, 2, 28, 30),
(220, 3, 28, 30),
(221, 4, 28, 30),
(222, 5, 28, 30),
(264, 11, 6, 105),
(224, 7, 28, 30),
(225, 8, 28, 30),
(226, 9, 28, 30),
(263, 11, 5, 100),
(229, 10, 1, 0),
(230, 10, 2, 75),
(231, 10, 3, 110),
(232, 10, 4, 175),
(233, 10, 5, 100),
(235, 10, 7, 110),
(236, 10, 8, 130),
(237, 10, 9, 110),
(238, 10, 10, 120),
(239, 10, 11, 105),
(240, 10, 12, 140),
(241, 10, 13, 120),
(242, 10, 14, 120),
(243, 10, 15, 100),
(244, 10, 16, 110),
(245, 10, 17, 120),
(246, 10, 18, 130),
(247, 10, 19, 150),
(248, 10, 20, 110),
(249, 10, 21, 105),
(250, 10, 22, 105),
(251, 10, 23, 140),
(252, 10, 24, 120),
(253, 10, 25, 130),
(254, 10, 26, 160),
(257, 10, 27, 80),
(258, 10, 28, 30),
(259, 11, 1, 0),
(260, 11, 2, 75),
(261, 11, 3, 110),
(262, 11, 4, 175),
(265, 11, 7, 110),
(266, 11, 8, 130),
(268, 11, 9, 110),
(269, 11, 11, 105),
(270, 11, 12, 120),
(271, 11, 13, 120),
(272, 11, 14, 120),
(273, 11, 15, 100),
(274, 11, 16, 110),
(275, 11, 17, 120),
(276, 11, 18, 130),
(277, 11, 19, 150),
(278, 11, 20, 110),
(279, 11, 21, 105),
(280, 11, 22, 105),
(281, 11, 23, 140),
(282, 11, 24, 120),
(283, 11, 25, 130),
(284, 11, 26, 160),
(285, 11, 27, 120),
(286, 11, 28, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE IF NOT EXISTS `destinos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `destino` varchar(30) NOT NULL DEFAULT '',
  `vaenformconsulta` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `destino`, `vaenformconsulta`) VALUES
(1, 'Capital Federal', 1),
(2, 'GBA (hasta 15km)', 1),
(3, 'GBA (hasta 25km)', 1),
(4, 'GBA (hasta 35km)', 1),
(5, 'Buenos Aires', 1),
(6, 'Catamarca', 1),
(7, 'Chaco', 1),
(8, 'Chubut', 1),
(9, 'Córdoba', 1),
(10, 'Corrientes', 1),
(11, 'Entre Ríos', 1),
(12, 'Formosa', 1),
(13, 'Jujuy', 1),
(14, 'La Pampa', 1),
(15, 'La Rioja', 1),
(17, 'Misiones', 1),
(18, 'Neuquén', 0),
(19, 'Río Negro', 1),
(20, 'Salta', 1),
(23, 'Santa Cruz', 1),
(24, 'Santa Fe', 1),
(25, 'Santiago del Estero', 1),
(26, 'Tierra del Fuego', 1),
(27, 'Tucumán', 1),
(28, 'Bahia Blanca', 0),
(22, 'San Luis', 1),
(29, 'San Juan', 0),
(30, 'Mendoza', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE IF NOT EXISTS `entrenador` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(50) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Profesional') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entrenador` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`id`, `producto_id`, `codigo`, `tipo_ejercicio`) VALUES
(5, 803, 'Fitage ge 801', 'Residencial'),
(6, 804, 'Olmo 45', 'Residencial'),
(7, 805, 'Olmo 48', 'Residencial'),
(8, 806, 'Olmo 50', 'Residencial'),
(10, 807, 'Olmo 52', 'Residencial'),
(11, 808, 'Olmo 76', 'Residencial'),
(13, 928, 'RANDERS 200', 'Residencial'),
(14, 931, 'RANDERS 060', 'Residencial'),
(15, 932, 'RANDERS 130', 'Residencial'),
(16, 933, 'RANDERS 140', 'Residencial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multigym`
--

CREATE TABLE IF NOT EXISTS `multigym` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(50) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  `peso` tinyint(3) NOT NULL,
  `multiEjercicios` enum('Si','No') NOT NULL,
  `carga` tinyint(3) NOT NULL,
  `banco_abdominal` enum('Si','No') NOT NULL,
  `clavijas` enum('Si','No') NOT NULL,
  `pesas_recubiertas` enum('Si','No') NOT NULL,
  `plegable` enum('Si','No') NOT NULL,
  `medidas` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `multigym_id` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `multigym`
--

INSERT INTO `multigym` (`id`, `producto_id`, `codigo`, `tipo_ejercicio`, `peso`, `multiEjercicios`, `carga`, `banco_abdominal`, `clavijas`, `pesas_recubiertas`, `plegable`, `medidas`) VALUES
(18, 42, 'Olmo 44', 'Residencial', 100, 'Si', 45, 'No', 'Si', 'Si', 'Si', '127 cm. x 73 cm. x 203 cm'),
(19, 43, 'Olmo 54', 'Residencial', 100, 'Si', 45, 'No', 'Si', 'No', 'Si', '127 cm. x 73 cm. x 203 cm'),
(20, 44, 'Randers 1205d', 'Residencial', 100, 'Si', 50, 'No', 'No', 'No', 'Si', '140cm. x 122cm. x 205cm'),
(21, 45, 'Fitage ge 502', 'Residencial', 0, 'Si', 66, 'No', 'No', 'No', 'Si', ''),
(22, 46, 'Randers G119xa', 'Profesional', 0, 'Si', 127, 'No', 'No', 'No', 'Si', ''),
(23, 47, 'Randers G152x', 'Profesional', 100, '', 127, 'No', '', '', 'Si', '174cm. X 200cm. X 212cm'),
(24, 48, 'Mottion 5100', 'Residencial', 100, 'Si', 45, 'No', 'Si', 'No', 'Si', ''),
(25, 49, 'Olmo 80 ', 'Residencial', 0, 'Si', 75, '', 'Si', 'No', 'No', '2m (alto) x 1m (ancho) x 1,7m'),
(26, 50, 'Olmo 74', 'Residencial', 0, 'Si', 45, 'No', 'Si', 'No', 'No', '2m  x 1m x 2,5m .');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(9, 'fitness@anicon.com.ar'),
(8, 'daiana.vec@gmail.com'),
(7, 'carolinajimenez19@hotmail.com'),
(10, 'test@abmo'),
(11, 'carolina@abmo.com.ar'),
(12, 'horacio@abmo.com.ar'),
(13, 'davidomiranda88@hotmail.com'),
(14, 'aleiram.esmeralda@gmail.com'),
(15, 'silmarro76@hotmail.com'),
(16, 'noeliavanina28@gmail.com'),
(17, 'cvm73@hotmail.com'),
(18, 'cristinagalante@hotmail.com'),
(19, 'esteban_dvt@hotmail.com'),
(20, 'mariaelenastrina@hotmail.com'),
(21, 'suda_deportes_2013@hotmail.com'),
(22, 'lemos.pablo@hotmail.com'),
(23, 'butterflie_65@hotmail.com'),
(24, 'mij_manu@yahoo.com.ar'),
(25, 'estudiomdserafini@yahoo.com.ar'),
(26, 'alejandrakm3@hotmail.com'),
(27, 'blanca_guzman@hotmail.com.ar'),
(28, 'jecdte_er@yahoo.com.ar'),
(29, '4958247@speedy.com.ar'),
(30, 'itati_rivero@hotmail.com'),
(31, 'HERNANFREDES@YAHOO.COM.AR'),
(32, 'matiasramos782@gmail.com'),
(33, 'paulyambros@yahoo.com.ar'),
(34, 'ciguinis@live.com.ar'),
(35, 'monetfree@outlook.com'),
(36, 'matias_andress@hotmail.com'),
(37, 'gerinloger2008@gmail.com'),
(38, 'belenporcara@hotmail.com'),
(39, 'aclaudi21@hotmail.com'),
(40, 'rosbetty134@hotmail.com'),
(41, 'alumguerrero@gmail.com'),
(42, 'cuadriceps'),
(43, 'jesusricardovazquez@gmail.com'),
(44, 'miriamguidek@hotmail.com'),
(45, 'taniaburkova@gmail.com'),
(46, 'daianasuhurt@gmail.com'),
(47, 'jjm.sofi@hotmail.com'),
(48, 'mflaviaduran@hotmail.com'),
(49, 'ayarraelena@hotmail.com'),
(50, 's.ale-79@hotmail.com'),
(51, 'monicapleno@hotmail.com'),
(52, 'rouxru@yandex.ru'),
(53, 'tami.b2812@gmail.com'),
(54, 'balbi.baldo@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `localidad` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `formaPago` varchar(200) NOT NULL,
  `mensaje` varchar(200) NOT NULL,
  `fechayhora` datetime NOT NULL,
  `local` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE IF NOT EXISTS `plataforma` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(50) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  `frecuencia` varchar(255) NOT NULL,
  `peso` tinyint(3) unsigned NOT NULL,
  `potencia` int(11) NOT NULL,
  `motor` int(11) NOT NULL,
  `velocidades` int(11) NOT NULL,
  `amplitud` int(11) NOT NULL,
  `motor_electronico` enum('si','no') NOT NULL,
  `programas` enum('si','no') NOT NULL,
  `dimensiones` int(11) NOT NULL,
  `vibracion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id`, `producto_id`, `codigo`, `tipo_ejercicio`, `frecuencia`, `peso`, `potencia`, `motor`, `velocidades`, `amplitud`, `motor_electronico`, `programas`, `dimensiones`, `vibracion`) VALUES
(93, 859, 'Randers yv-30', 'Profesional', '30,35,40,45Hz', 180, 2, 0, 0, 0, 'si', 'no', 70, ''),
(94, 83, 'Randers 1100', 'Residencial', 'movimiento oscilante', 120, 500, 2, 1, 1, 'si', 'no', 0, ''),
(95, 84, 'Fitage ge 301', 'Residencial', '50-60 Hz', 150, 1000, 2, 1, 0, 'si', 'si', 0, ''),
(96, 85, 'Randers yv-30r', 'Profesional', '30,35,40,45Hz', 180, 2, 0, 0, 0, 'si', 'si', 70, ''),
(97, 87, 'Fitage ge 302', 'Residencial', 'movimiento oscilante', 150, 1000, 2, 1, 0, 'si', 'si', 75, ''),
(98, 88, 'Zellens ZE 2320', 'Residencial', 'AC110-220V 50/60hz', 0, 200, 0, 0, 16, 'si', 'si', 75, ''),
(99, 89, 'Zellens ZE 2280', 'Profesional', '20 a 60Hz', 150, 350, 0, 0, 0, 'si', 'si', 100, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `seccion_id` tinyint(3) DEFAULT NULL,
  `marca` varchar(50) DEFAULT '-',
  `display` tinyint(1) DEFAULT '1',
  `precio` int(8) DEFAULT NULL,
  `precio_prov` int(11) NOT NULL,
  `precio_mza_sj` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `zzzdescripcion` text,
  `descripcion` text,
  `htmlFicha` text NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `promocion` enum('si','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `id_sec` (`seccion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=934 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `seccion_id`, `marca`, `display`, `precio`, `precio_prov`, `precio_mza_sj`, `nombre`, `zzzdescripcion`, `descripcion`, `htmlFicha`, `url_video`, `promocion`) VALUES
(3, '-Olmo 31', -1, 'Olmo', 1, 2318, 2480, 2550, 'Cinta para caminar', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 80 Kg. //\r\n\r\nCinta sin motor. //\r\n\r\n33 cm de ancho. //', '', '', '', 'no'),
(4, 'Olmo 33', 1, 'Olmo', 1, 6951, 7437, 7646, 'Cinta para caminar y correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100Kg. //\r\n\r\nMotor de 1.25HP. //\r\n\r\n5 programas. //', 'Olmo 33\r\nMotor eléctrico de 1.25 HP real.\r\nVelocidad 0.8 a 10 Km/H\r\n5 programas.\r\n3 niveles de inclinación.\r\nBanda de movimientos de 120 x 40 cm.\r\nMonitor electrónico: velocidad, distancia, tiempo, calorías, pulso cardíaco con sensor al tacto en el equipo.\r\nPlegable.\r\nRuedas de traslado.\r\nPeso máximo admitido: 100 kg.', '', '', 'no'),
(5, 'Olmo 36', 1, 'Olmo', 1, 10965, 11732, 12061, 'Cinta para Correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMotor: 1.75 HP. //\r\n\r\nVel.: 0.8-16Km/h. //\r\n\r\nAncho: 46cm. //\r\n\r\nMotor eléctrico. //', 'Olmo 36\r\nMotor eléctrico de 1.75 HP real.\r\nVelocidad 0.8 a 16 Km/H\r\n10 niveles de inclinación motorizada.\r\nBanda de movimientos de 130 x 46 cm\r\n5 programas.\r\nMonitor electrónico: velocidad, distancia, tiempo, calorías, pulso cardíaco con sensor al tacto en el equipo.\r\nPlegable.\r\nRuedas de traslado.\r\nPeso máximo admitido: 120 kg.\r\n', '', '', 'no'),
(6, 'Randers 338', 1, 'Randers', 1, 4829, 5167, 5311, 'Cinta para Caminar', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 90 Kg. //\r\n\r\nMotor de 1.5 HP. //\r\n\r\nVel.: 1-8km/h. //', 'Randers 338\r\nCinta motorizada para caminar.\r\nVelocidad: 1km/h a 8km/h.\r\nPeso máximo admitido: 90 Kg.\r\nDiseño compacto plegable. \r\nMotor de corriente alterna de 1.5HPP\r\nConsolaelectrónica indicadora de velocidad, distancia, tiempo y calorías consumidas.\r\nLlave de Stop.\r\nRuedas que facilitan el traslado.\r\nProducto preparado para uso residencial.', '', '', 'no'),
(7, 'Randers 490', 1, 'Randers', 1, 8134, 8703, 8947, 'Cinta de caminar y correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 115 kg. //\r\n\r\nMotor 1 HP. //\r\n\r\nVel.: 1 a 12 km/h. //', 'Randers 490\r\nCinta motorizada para caminar y correr.\r\n2 posiciones de inclinación.\r\nVelocidad de 1 hasta 12km/h.\r\nMotor de 2HPP.\r\nMonitor controlador de calorías consumidas, tiempo, velocidad y distancia y pulso cardíaco con sensor al tacto en el equipo.\r\nAmplia estructura y superficie útil: 107cm x 40cm (largo, ancho).\r\nPeso máximo admitido: 115 kg.\r\nProducto preparado para uso residencial.', '', '', 'no'),
(8, 'Olmo 37', 1, 'Olmo', 1, 13958, 14935, 15353, 'Cinta para Correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 135 Kg. //\r\n\r\nMotor: 2HP. //\r\n\r\nVel.: 0.8-16 Hm/h. //\r\n\r\nAncho: 51 cm. //\r\n\r\n15 niveles. //', 'Olmo 37\r\nCinta residencial para correr.\r\nMotor eléctrico de 2.00 HP real.\r\nVelocidad de 0.8 a 16 Km/H.\r\n15 niveles de inclinación motorizada.\r\n15 Programas.\r\nBanda de movimientos de 140 x 51 cm.\r\nMonitor electrónico: velocidad, distancia, tiempo, calorías, pulso cardíaco con sensor al tacto en el equipo, soporte para lectura y bebidas.\r\nPeso máximo admitido: 135 kg.', '', '', 'no'),
(9, 'Olmo 34', 1, 'Olmo', 1, 7701, 8240, 8471, 'Cinta para Correr', '//\r\nUso residencial . //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMotor 1.50 HP. //\r\n\r\nVel.: 0.8-13 km/h. //', 'Olmo 34\r\nCinta motorizada para Correr.\r\nMotor eléctrico de 1.50 HP real.\r\nVelocidad 0.8 a 13 Km/H.\r\n5 programas.\r\n3 niveles de inclinación.\r\nPeso máximo admitido: 100 kilos.\r\nBanda de movimientos de 120 x 40 cm.\r\nMonitor electrónico (velocidad-distancia-tiempo-calorías-pulso cardíaco con sensor al tacto en el equipo).', '', '', 'no'),
(10, 'Olmo 32', 1, 'Olmo', 1, 5719, 6120, 6291, 'Cinta para caminar', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 80 Kg. //\r\n\r\nMotor de 1HP. //\r\n\r\nVel.: 6 km/h. // \r\n\r\n33 cm de ancho. //\r\n\r\nPlegable. //', 'Olmo 32\r\nCinta para Caminar con motor.\r\nTransmisión: Motor eléctrico de 1.00 HP real.\r\nVelocidad 1 a 6 Km/H.\r\nPeso máximo admitido: 80 kilos.\r\nBanda de movimientos de 102 x 33 cm\r\nMonitor electrónico (velocidad-distancia-tiempo-calorías)\r\nPlegable.\r\nSistema de amortiguadores para evitar lesiones en las rodillas y tobillos.', '', '', 'no'),
(11, 'Olmo 38', 1, 'Olmo', 1, 16146, 17276, 17761, 'Cinta para Correr', '//\r\n\r\nUso Residencial. //\r\n\r\nPeso máx.: 130 Kg. //\r\n\r\nMotor de 2.50 HP. //\r\n\r\nAncho: 51 cm. //\r\n\r\nVel.: 1-16Km/h. //\r\n\r\nMonitor electrónico. //', 'Olmo 38\r\nMotor eléctrico de 2.50 HP real. \r\nVelocidad 1 a 16 Km/H. \r\nProgramas predeterminados y definibles por el usuario. \r\n15 niveles de inclinación motorizada. \r\nPlegable. \r\nMonitor electrónico: velocidad, distancia, tiempo, calorías, pulso cardíaco con sensor al tacto en el equipo, soporte para lectura y bebidas. \r\nBanda de movimientos: 140 x 51 cm. \r\nPeso máximo admitido: 130 kg.', '', '', 'no'),
(12, 'Randers G6110', 1, 'Randers', 1, 15814, 16921, 17395, 'Cinta para Correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 135 Kg. //\r\n\r\nMotor de 2.75 HP. //\r\n\r\nVel.: 18km/h. //', 'Randers G6110\r\nMotor 2.75HPP.\r\nVelocidad entre 1 y 18km/h.\r\nInclinación electrónica hasta 12%.\r\n9 Programas predefinidos.\r\nPeso máximo admitido: 135 kilos.\r\nSuperficie de la banda: 128cm x 45cm\r\nMonitor LCD con Backlight con 3 ventanas. \r\nRegulación de velocidad e inclinación desde los manillares.\r\nControlador de: calorías consumidas, pulso, tiempo, velocidad y distancia.\r\nControl de pulso por contacto.\r\nPlegable con sistema hidráulico.\r\nLlave de seguridad. \r\nSistema de amortiguación.\r\nMedidas 187cm x 78cm x 133cm (alto, ancho. largo).\r\n', '', '', 'no'),
(13, 'Randers G6442', 1, 'Randers', 1, 10191, 10904, 11210, 'Cinta para Correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 115 Kg. //\r\n\r\nMotor: 2.25HPP. //\r\n\r\nVel.: 1-14 km/h. //\r\n\r\nAncho: 44cm. //\r\n\r\nAmortiguación. //', 'Randers G6442\r\nLa cinta G6442 cuenta con una amplia superficie.\r\nUn sistema hidráulico para que no tengas la necesidad de hacer esfuerzo para abrir o cerrar el equipo.\r\nEs plegable y contiene ruedas de transporte para que la puedas guardar fácilmente. \r\nLas dimensiones son de 175x76x140cm.\r\nSuperficie útil de 125x44cm. \r\nMotor: de 2.25HPP.\r\nVelocidad de entre 1 y 14Km/h.\r\n9 programas predefinidos controlados por un monitor con 3 ventanas que te informan las calorías consumidas, el pulso, el tiempo, la velocidad y distancia que llevás.\r\nPodrás inclinar manualmente 2 posiciones.\r\nPulso por contacto. \r\nMuy buena amortiguación de impacto.\r\nPeso máximo: 115 Kg.\r\n', '', '', 'no'),
(14, 'Olmo 39', 1, 'Olmo', 1, 30602, 32744, 33662, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx..: 130 Kg. //\r\n\r\nMotor de 3HP. //\r\n\r\nVel.: 20Km/h. //\r\n\r\nInclinación. //\r\n\r\nBanda de 56 cm. //\r\n', 'Olmo 39\r\nCinta profesional para correr.\r\nMotor eléctrico de 3.00 HP.\r\nVelocidad de 1 a 20 Km/H.\r\nProgramas predeterminados y definibles por el usuario.\r\n15 niveles de inclinación motorizada.\r\nMonitor electrónico (velocidad-distancia-tiempo-calorías-pulso cardíaco con sensor al tacto en el equipo)con backlight, soporte para lectura y bebidas.\r\nDos ventiladores refrigerantes.\r\nBanda de movimientos de 150 x 56 cm.\r\nPeso máximo admitido: 130 kg.', '', '', 'no'),
(15, 'Randers 550ex0', 1, 'Randers', 1, 14765, 15798, 16241, 'Cinta Para Correr ', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150Kg. //\r\n\r\nAncho: 43 cm. //\r\n\r\nMotor de 2HP. //\r\n\r\nCorriente alterna. //\r\n\r\nVel. de 1.6 a 16km/h. // ', 'Randers 550ex0\r\nBanda de movimientos de 135 x 43 cm.\r\nMotor 2HP. de corriente alterna de libre mantenimiento.\r\nVelocidad: 1.6 a 16Km/H. \r\nPeso máximo admitido: 150Kg.\r\nHandle Pulse: sistema de alta tecnología en control de pulsaciones por contacto.\r\nConsola electrónica de 5 ventanas controladora de: velocidad, tiempo, distancia y calorías consumidas.\r\nLlave de seguridad.', '', '', 'no'),
(16, 'Randers 550ex1', 1, 'Randers', 1, 16779, 17954, 18457, 'Cinta para Correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máximo: 150 Kg. //\r\n\r\nMotor de 2HP. //\r\n\r\nCorriente alterna. //\r\n\r\nAncho:43 cm. //', 'Randers 550ex1\r\nElevación electrónica de 0 a 8%.\r\nVelocidad: 1.6 a 16 KM/Hs.\r\nCarga Máxima: 150 Kg.\r\nSuperficie Útil (tamaño de la banda): 1.35 largo x 0.43 ancho.\r\nTamaño Producto: 189x70x145cm.\r\nPeso del Producto: 118Kg.\r\nMotor: 2 HP. Corriente Alterna.\r\nNo necesita Mantenimiento.\r\nPanel con llave de seguridad:\r\n5 ventanas: Velocidad (KM/H o MP/H) + Tiempo + Distancia + Calorías Consumidas + Pulso.\r\nSistema de control de pulso.', '', '', 'no'),
(17, 'Randers 570l', 1, 'Randers', 1, 29790, 31875, 32769, 'Cinta Para Correr ', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 180 Kg. //\r\n\r\nMotor: 3 HP. //\r\n\r\nCorriente alterna. //\r\n\r\nAncho: 54 cm. // \r\n\r\nVel.: 1.5-18km/h. //', 'Randers 570l\r\nCinta para correr motorizada con programas. \r\nMotor de 3 HP. Corriente Alterna. No necesita Mantenimiento.\r\nVelocidad: 1.5 a 18 KM/Hs.\r\nBanda de movimientos de 1.42 largo x 0.54 ancho.\r\n10 programas pre-establecidos.\r\nPanel con llave de seguridad: 3 ventanas.\r\nFunciones: Velocidad, Tiempo, Distancia y Calorías consumidas.\r\nControl de pulso por contacto.\r\nSistema de lubricación automática.\r\nProducto preparado para uso intensivo. \r\nPeso máximo admitido: 180 kilos.\r\n', '', '', 'no'),
(18, 'Randers 570s', 1, 'Randers', 1, 31587, 33798, 34746, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 200 Kg. //\r\n\r\nMotor: 3 HP. //\r\n\r\nCorriente alterna. // \r\n\r\nBanda de 54 cm. //\r\n\r\nVel.: 0-18 km/h. //', 'Randers 570s\r\nBanda de movimientos de 1.40 largo x 0.54 ancho.\r\nMotor de corriente alterna de libre mantenimiento de 3 HP.\r\nVelocidad: 0 a 18 KM/Hs.\r\nPeso máximo admitido: 200 kilos.\r\n10 programas pre-establecidos.\r\nInclinación electrónica de 2º a 16º.\r\nPanel con llave de seguridad: 3 ventanas.\r\nFunciones: Velocidad, Tiempo, Distancia, Calorías consumidas.\r\nControl de pulso por contacto.\r\nAmortiguadores de impacto.\r\nProducto preparado para uso intensivo.', '', '', 'no'),
(19, 'Randers 050hp', 1, 'Randers', 1, 3844, 4113, 4228, 'Cinta Magnética', '//\r\nUso residencial. //\r\n\r\nPeso máx: 100kg. kg. //\r\n\r\nCinta sin motor. //\r\n\r\n36 cm de ancho //', 'Randers 050hp\r\nCinta magnética con 8 niveles de carga (se puede regular en 8 puntos diferentes la tensión).\r\nConsola con control de tiempo, velocidad, distancia, calorías y pulso.\r\nPlegable. Amplia superficie de la banda. \r\nPeso máximo permitido: 100 kg.\r\nCinta desplegada 150x63 cm.\r\nBanda de movimiento. 120x36 cm\r\nSuperficie de corrida (largo x ancho): 120x36cm.', '', '', 'no'),
(20, 'Randers 563r2', 1, 'Randers', 1, 45729, 48930, 50302, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nMotor: 2HP. //\r\n\r\nCorriente libre. // \r\n\r\nAncho: 48 cm. //\r\n\r\nHandle Pulse. //', 'Randers 563r2\r\nPara correr profesional con elevación electrónica.\r\nBanda de movimientos de 140 x 48 cm.\r\n24 niveles de elevación electrónica.\r\nPeso máximo admitido: 140 kilos.\r\nVelocidad: 1.8 a 16Km/H.\r\nMotor de corriente alterna de libre mantenimiento. \r\nAmortiguadores de impacto. \r\nHandle Pulse Sistema de alta tecnología en control de pulsaciones por contacto.\r\nConsola electrónica: de 5 ventanas controladora de velocidad, tiempo, distancia, calorías consumidas. \r\n', '', '', 'no'),
(22, 'Randers 563r1', 1, 'Randers', 1, 37595, 40227, 41355, 'Cinta para Correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. // \r\n\r\nMotor: AC 2HP. //\r\n\r\nCorriente alterna. //\r\n\r\nVel.: 0-16km/h. //\r\n\r\nHandle Pulse. //', 'Randers 563r1\r\nBanda de movimientos de 140x48 cm.\r\nMotor AC 2HP. de corriente alterna de libre mantenimiento.\r\nVelocidad: 1.8 a 16Km/H. \r\nSistema de variación de velocidad electrónico.\r\nPeso máximo admitido: 150Kg. \r\nAmortiguadores de impacto.\r\nHandle Pulse: sistema de alta tecnología en control de pulsaciones por contacto.\r\nConsola electrónica de 5 ventanas indicadora de: velocidad, tiempo, distancia, calorías consumidas.\r\nProducto preparado para uso intensivo.\r\nPintura electrostática en polvo.\r\nDimensiones: 183x88x161cm.\r\nPeso: 84Kg.\r\nVoltaje: 220V (no necesita transformador).\r\nFácil mantenimiento: lubricación por tubo conductor.\r\nRuedas para su fácil traslado.\r\nLlave de seguridad.\r\n', '', '', 'no'),
(24, 'Randers 620', 1, 'Randers', 1, 9090, 9726, 9999, 'Cinta de caminar y correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMotor: 2.5 HP. //\r\n\r\nVel.: 0-16 km/h. //\r\n\r\nAncho: 43cm. //\r\n\r\nBacklight. //', 'Randers 620\r\nCinta motorizada para caminar y correr.\r\nMotor de 2.5HPP.\r\nVelocidad: 0 a 16 Km/H.\r\nConsola con Backlight, Parlantes y Plug para MP3.\r\nDisplay con controlador de tiempo, velocidad, distancia, calorías y pulso.\r\nInclinación manual en 2 niveles.\r\n5 Programas predeterminados\r\nRuedas de traslado.\r\nPlegable.\r\nPeso máximo admitido: 120 kg.\r\nMuy buena amortiguación.\r\nBotones de velocidad en el manubrio.\r\nLlave de seguridad.', '', '', 'no'),
(27, 'Reebok T7_1', 1, 'Randers', 1, 15047, 16100, 16551, 'Cinta para Correr', '//\r\nUso semi profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nMotor de 2.5HP. //\r\n\r\nVel.: 0,8 a 18 Km/h. //', 'Reebok T7_1\r\nMotor de 2.5HP.\r\nExcelente sistema de amortiguación(IntelligentCushionSystem). \r\nTeclas de acceso rápido de velocidad e inclinación (15 niveles). \r\nVelocidad: 0,8 a 18Km/h. \r\n6 programas + 1 manual. \r\nConsola con Back Light.\r\nHand Pulse y receptor compatible Polar.\r\nProducto preparado para uso intensivo.\r\nPeso máximo admitido: 150 Kg.\r\n', '', '', 'no'),
(33, 'Zellens ZS 1180', 1, 'Randers', 1, 22224, 23780, 24447, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx: 170 kg. //\r\n\r\nMotor 2.00 HP (AC). //\r\n\r\n12% de inclinación. //\r\n\r\nComputadora. //\r\n\r\nVel. hasta 20 km/h. //', NULL, '', '', 'no'),
(34, 'Olmo 35', 1, 'Randers', 1, 9264, 9913, 10191, 'Cinta de Caminar y Correr', '//\r\nUso residencial. // \r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMotor: 1.50HP. //\r\n\r\n10 niv. de inclinación //\r\n\r\nVel.: 0.8 a 16 km/h. //\r\n\r\nMonitor electrónico.', 'Olmo 35\r\nCinta Residencial para Caminar y Correr\r\nMotor eléctrico de 1.50 HP real\r\nVelocidad 0.8 a 16 Km/H \r\n13 programas\r\n10 niveles de inclinación motorizada\r\nPlegable\r\nMonitor electrónico (velocidad-distancia-tiempo-calorías-pulso cardíaco con sensor al tacto en el equipo) con portaobjetos y bebidas\r\nBanda de movimientos de 120 x 40 cm \r\nPeso máx. admitido 100 kg.', '', '', 'no'),
(37, 'Randers 320', 1, 'Randers', 1, 9565, 10234, 10521, 'Cinta para Caminar ', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 180 Kg. //\r\n\r\nMotor: 3.5 HP. //\r\n\r\nVel.: 0 - 8Km/h. //\r\n\r\nPlegable. //\r\n\r\nInclinación: 2 niveles. //', 'Randers 320\r\nMotor 3,5HPP. Velocidad entre 1 y 8Km/h. Monitor controlador de calorías consumidas, tiempo, velocidad y distancia (funciona como reloj y muestra la temperatura ambiente). Botones de velocidad en manubrio. Control de Pulso por contacto. Plegable con sistema hidráulico. Inclinación manual en 2 niveles. Ruedas para fácil traslado. Superficie útil: 107x51cm. Peso máximo de usuario: 180kg.\r\n', '', '', 'no'),
(38, 'Randers 310', 1, 'Randers', 1, 6889, 7371, 7578, 'Cinta para Caminar ', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMotor: 1.5 HP. //\r\n\r\nVel.: 0 - 10Km/h. //\r\n\r\nPlegable. //\r\n\r\nLlave de Stop. //', 'Randers 310\r\nMotor de 1.5HPP.\r\nVelocidad: 0 a 10 Km/H.\r\nConsola controladora de velocidad, tiempo y distancia.\r\nPlegable.\r\nLlave de Stop.\r\nRuedas para fácil traslado.\r\nSuperficie Útil: 110 x 36cm.\r\nCarga Máxima 100Kg.\r\n', '', '', 'no'),
(40, 'Randers 770 s.i.', 1, 'Randers', 1, 9231, 9878, 10155, 'Cinta para Correr', '//\r\nCon inclinación manual. //\r\n\r\n15 programas. //\r\n\r\nManubrios regulables. //\r\n\r\nMonitor electrónico. //\r\n\r\nUso residencial. //\r\n\r\nSup: 153 x 43 cm. //\r\n\r\n', 'Randers 770 s.i.\r\nPlegable con amortiguadores. \r\nMotor de 2.5HPP. \r\nControl de pulso por contacto. \r\nConsola con Backlight, controladora de tiempo, velocidad, distancia, calorías, pulso. \r\nBotones de velocidad en manubrios. \r\n15 programas preestablecidos. \r\nRuedas para fácil traslado. \r\nLlave de seguridad. \r\nAmplia superficie útil: 120x43cm. \r\nVelocidad: 1,0 a 16 Km/H. \r\nPeso máximo de usuario recomendado: 120Kg.', '', '', 'no'),
(41, 'Randers 780', 1, 'Randers', 1, 14155, 15146, 15571, 'Cinta para caminar y correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 kg. //\r\n\r\nMotor: 3.0HPP. //\r\n\r\nVel.: 0 a 18 Km/h. //\r\n\r\nLlave de seguridad. //\r\n\r\nRuedas para traslado. //', 'Randers 780\r\nCinta para caminar y correr de amplia superficie útil. \r\nMotor de 3.0HPP. \r\nVelocidad de 0 a 18 Km/h y 20 niveles de inclinación electrónica. \r\n25 programas preestablecidos. \r\nConsola con Backlight, controladora de tiempo, velocidad, distancia, calorías, pulso e inclinación. \r\nParlantes incluidos (Plug para MP3).\r\nBotones de velocidad e inclinación en manubrios.\r\nRuedas para fácil traslado. \r\nLlave de seguridad.\r\nSuperficie útil: 140x50cm. \r\nPeso máximo admitido: 120Kg.', '', '', 'no'),
(42, 'Olmo 44', 5, 'Olmo', 1, 3602, 3854, 3962, 'Multigimnasio', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMás de 15 ejercicios. //\r\n\r\n45,4 kg. de pesas. //', 'Olmo 44\r\n45,4 kg. de pesas de hierro.\r\nPeso máximo admitido: 100 kilos.\r\nSólida construcción en caño de perfil cuadrado. \r\nEsfuerzo graduable.\r\nPesas recubiertas en material plástico. de alta resistencia. \r\nMedidas: 127 cm x 73 cm x 203 cm (largo, ancho, alto).', '', '', 'no'),
(43, 'Olmo 54', 5, 'Olmo', 1, 4902, 5245, 5392, 'Multigimnasio', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nEsfuerzo graduable. //\r\n\r\n15 ejercicios. //', 'Olmo 54\r\n45,4 kg. de pesas de hierro\r\nAsiento y respaldo muy confortables\r\nPermite realizar más de 15 ejercicios.\r\nPermite ejercitar tren superior e inferior.\r\nEsfuerzo graduable. \r\nSólida construcción en caño de perfil cuadrado.\r\nPeso máximo admitido: 100 kilos\r\n', '', '', 'no'),
(44, 'Randers 1205d', 5, 'Randers', 1, 4711, 5040, 5182, 'Multigimnasio', '//\r\nUso residencial. //\r\n\r\nPeso máx: 100 kg. //\r\n\r\nEntren.completo. //\r\n\r\nEjercicio aeróbico. //\r\n\r\nSist. pesas múltiples. //\r\n\r\nCarga de hasta 50Kg. //', 'Randers 1205d\r\nExclusivo diseño para ejercitación muscular múltiple.\r\nSistema de pesas múltiples para carga de hasta 50Kg.\r\nLadrillos especialmente diseñados\r\npara ser utilizados como mancuernas.\r\nEquipo preparado para el agregado de peso hasta 72Kg. \r\nAdmite un peso máximo de: 100 Kg.', '', '', 'no'),
(45, 'Fitage ge 502', 5, 'Fitage', 1, 4357, 4662, 4793, 'Multigym', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nEjercitación muscular. // \r\n\r\nMalla protectora . //', 'Fitage ge 502\r\nMalla protectora de pesas.\r\nEstructura de caño perfil de hierro galvanizado.\r\nSistema de pesas para carga de hasta 66kg.\r\nPintura esmaltada de excelente terminación color gris mercurio.\r\nMarca: FITAGE', '', '', 'no'),
(46, 'Randers G119xa', 5, 'Randers', 1, 11651, 12467, 12816, 'Multigimansio', '//\r\nUso semi profesional. //\r\n\r\nPeso máx: 150 kg. //\r\n\r\nEjercicio guiado. //\r\n\r\nPolea alta y baja. //', 'Randers G119xa\r\nSistema de tracción kevlar sin sensación de distensión.\r\nAmplia gama de pesas con una tensión máxima de 100kgs. \r\nPolea alta y polea baja.\r\nCarga máxima de 100 kgs para polea alta y 100 kgs para polea baja en opción lo que permite varias posibilidades de peso para un entrenamiento progresivo.\r\nCuerda de tracción kevlar que permite el ejercicio directo. \r\nLongitud: 160cm. \r\nAnchura: 95cm. \r\nAltura: 230cm. \r\nPeso: 149kg.', '', '', 'no'),
(47, 'Randers G152x', 5, 'Randers', 1, 19116, 20454, 21028, 'Multigimnasio', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 180 kg. //\r\n\r\nSistema de poleas. //\r\n\r\nDiseño compacto. //', 'Randers G152x\r\nControl del ejercicio con una tensión máxima de 100Kg.\r\nAmplias posibilidades de peso para un entrenamiento progresivo.\r\nPrensa de piernas ajustable con manillar de agarre.\r\nMáximo confort durante el ejercicio.\r\nDiseño muy compacto y asiento plegable. \r\nEmpleo de CAMS, estos perfiles ayudan a un ejercicio ergonómico asistido. Sistema de poleas con rodamientos.\r\nCarcasas metálicas de protección especial.\r\n', '', '', 'no'),
(48, 'Mottion 5100', 5, 'Mottion', 1, 4262, 4561, 4688, 'Multigimnasio', '//\r\nUso residencial. //\r\nPeso máx.: 100 kg. //\r\nCarga de hasta 45 kg. //\r\nEstructura de hierro. //', 'Mottion 5100\r\nEstructura de caño perfil de hierro galvanizado.\r\nSistema de pesas para carga de hasta 45kg.\r\nPintura esmaltada de excelente terminación color gris mercurio.', '', '', 'no'),
(49, 'Olmo 80', 5, 'Olmo', 1, 4279, 4579, 4707, 'Multigimnasio', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nCarga máx.: 70 Kg. //\r\n\r\nMás de 11 ejercicios. //', 'Olmo 80\r\nPermite realizar más de 11 ejercicios distintos en un solo equipo. Sus pesas de hierro permiten manejar una carga máxima de 70 kg. Asiento y respaldos muy confortables. El peso máximo admitido para los usuarios es de 100 Kg.	\r\n', '', '', 'no'),
(50, 'Olmo 74', 5, 'Olmo', 1, 4547, 4866, 5002, 'Multigimnasio', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nApoyo confortable. //\r\n\r\n45,4 kg. de pesas. //', 'Olmo 74\r\nPermite ejercitar los principales grupos musculares de todo el cuerpo. La carga máxima es de 45,4 Kg con las pesas de hierro. El asiento y el respaldo son muy confortables, y su diseño es en dos colores. El peso máximo admitido para los usuarios es de 100 Kg.', '', '', 'no'),
(51, 'Olmo 61', 4, 'Olmo', 1, 5745, 6147, 6319, 'Caminador elíptico electro-magnético', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\n2 ejercicios en 1. // \r\n\r\n16 niveles. //\r\n\r\nMonitor electrónico. //\r\n\r\n24 programas. //', 'Olmo 61\r\nRegulador de 16 niveles de esfuerzo.\r\nPeso máximo admitido 100 kg. \r\nComputadora: Monitor electrónico con backlight (velocidad - tiempo - distancia - rpm - calorías - recuperación - grasa corporal - pulso cardíaco con sensor al tacto en el equipo).\r\n24 programas.', '', '', 'no'),
(52, 'Olmo 20', 4, 'Olmo', 1, 1859, 1989, 2045, 'Caminador elíptico mecánico', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nCombina 2 ejercicios. //\r\n\r\nRegulador de esfuerzo. //\r\n\r\nDirección dual. //\r\n\r\nRuedas. //', 'Olmo 20\r\nPreparado para uso residencial.\r\nPeso máximo admitido: 100 kg.\r\nMedidas: 90 cm x 52 cm x 150 cm \r\nRuedas para traslado.\r\n', '', '', 'no'),
(53, 'Olmo 40', 4, 'Olmo', 1, 3249, 3477, 3574, 'Caminador elíptico mecánico', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.:100 kg. //\r\n\r\nCombina dos ejercicios. // \r\n\r\n8 niveles de esfuerzo. //\r\n\r\nMonitor electrónico. //\r\n\r\nIndicador de pulso. //', 'Olmo 40\r\nMonitor electrónico.\r\n8 niveles de esfuerzo.\r\nSensor al tacto.\r\nIndicador del Pulso cardíaco.\r\nPeso máximo admitido: 100 kilos.', '', '', 'no'),
(54, 'Olmo 42', 4, 'Olmo', 1, 3758, 4021, 4134, 'Caminador elíptico magnético', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nCombina 2 ejercicios. //\r\n \r\n8 niveles. //\r\n\r\nMonitor electrónico. //\r\n\r\nAsiento regulable. //', 'Olmo 42\r\nCombina escalador y simulador de ski.\r\nRegulador de 8 niveles de esfuerzo.\r\nMonitor electrónico: tiempo, distancia, calorías, velocidad, pulso cardíaco con sensor al tacto).\r\nPeso máximo admitido: 100 kilos.\r\nMedidas: 120cm x 62 cm x 150 cm.\r\nAsiento de gel regulable en altura\r\n', '', '', 'no'),
(55, 'Olmo 47', 4, 'Olmo', 1, 4540, 4858, 4994, 'Caminador elíptico mecánico', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\n2 ejercicios en 1. // \r\n\r\nRegulador de 8 niveles. //\r\n\r\nMonitor electrónico. //\r\n\r\nPulso cardíaco. //', 'Olmo 47\r\nCombina escalador y simulador de ski.\r\nRegulador de 8 niveles de esfuerzo.\r\nComputadora: Monitor electrónico (tiempo-distancia-calorías-velocidad-\r\npulso cardíaco con sensor al tacto).\r\nPeso máximo admitido: 100 kilos.\r\n', '', '', 'no'),
(56, 'Randers EFX 534i', 4, 'Randers', 1, 81680, 87397, 89848, 'Caminador elíptico electro-magnético', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 160 kg. //\r\n\r\nPulso por contacto. //\r\n\r\nResistencia: 1-20. //', 'Randers EFX 534i\r\nCrossRamp fija en 20 grados.\r\nBrazos móviles.\r\nFunciona con auto-generador.\r\nControl de pulso por contacto.\r\nApto para control de pulso con banda.\r\n6 programas. \r\nTamaño: 213x79x168cm. \r\nPeso: 121Kg. \r\nPeso máximo del usuario: 160Kg. \r\nNiveles de Resistencia: 1-20', '', '', 'no'),
(57, 'Randers G239', 4, 'Randers', 1, 8999, 9629, 9899, 'Caminador elíptico electro-magnético', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 110 Kg. //\r\n\r\nCombina 3 ejercicios. //\r\n\r\nMonitor táctil. //', 'Randers G239\r\nDiseño ergonómico para maximizar el rendimiento. \r\nMonitor Táctil retroiluminado.\r\n12 programas predefinidos.\r\nControl de pulso en el manillar. \r\nProgramas de control del ritmo cardíaco que permite seleccionar las zonas a trabajar durante el ejercicio.\r\nPeso máximo admitido: 110 Kg.\r\n', '', '', 'no'),
(58, 'Fitage ge 404', 4, 'Fitage', 1, 5399, 5777, 5939, 'Caminador elíptico electro-magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 110 Kg. //\r\n\r\nRuedas. //\r\n\r\nDisco de 6 Kg. //', 'Fitage ge 404\r\nRegulador de resistencia electrónico.\r\n\r\nSistema magnético con rueda de inercia de 6 Kg.\r\n\r\nRuedas para fácil traslado.\r\n\r\nPosapies seguros y antideslizantes.\r\n\r\nPeso máximo: 110 Kg.\r\n\r\nMedidas: 126 x 76 x 170 cm.', '', '', 'no'),
(59, 'Fitage ge 403', 4, 'Fitage', 1, 4758, 5091, 5234, 'Caminador elíptico magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 110 Kg. //\r\n\r\n10 niveles. //\r\n\r\nCombina 2 ejercicios. //\r\n\r\nTransmisión suave. //', 'Fitage ge 403\r\nComputadora con pulso manual, tiempo,\r\nvelocidad, distancia y calorías.\r\nRegulador con 10 niveles de esfuerzo.\r\nSistema magnético con rueda de inercia de 6 Kg.\r\nCorrea de transmisión suave y silenciosa.\r\nRuedas para fácil traslado.\r\nApoya pies seguros y antideslizantes.\r\nPeso máximo: 110 Kg.\r\nMedidas: 140 x 63 x 160 cm.', '', '', 'no'),
(60, 'Olmo 50', 7, 'Olmo', 1, 3373, 3609, 3710, 'Simulador de Remo', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\n8 niveles. // \r\n\r\nMonitor electrónico. //', 'Olmo 50\r\nLos pedales son largos y tienen punteras para un mejor agarre.\r\nEl peso máximo que te sugerimos es de 100 Kg.\r\nEl caminador está disponible en color gris con detalles en Negro.Se pliega para un mejor guardado.', '', '', 'no'),
(61, 'Olmo 46', 4, 'Olmo', 1, 1922, 2057, 2114, 'Caminador elíptico mecánico', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nMonitor electrónico. //\r\n\r\nDirección dual. //', 'Olmo 46\r\nPeso máximo admitido: 100 kilos.\r\nMedidas: 90 cm x 52 cm x 150 cm \r\nAsiento muy confortable regulable en altura. \r\nRuedas para un cómodo traslado.\r\nDirección dual.\r\nMonitor electrónico (tiempo-distancia-calorías-velocidad).', '', '', 'no'),
(62, 'Randers 1943', 4, 'Randers', 1, 5053, 5407, 5558, 'Caminador elíptico magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\n8 niveles de tensión. //\r\n\r\nConsola electrónica. //', 'Randers 1943\r\n8 niveles de tensión. \r\nConsola electrónica con Backlight con 7 funciones: velocidad, distancia, tiempo, calorías consumidas, odómetro, pulso y scan.\r\nHandle Pulse: Sistema de alta tecnología en control de pulsaciones por contacto totalmente práctico y sencillo de usar.\r\nRuedas para traslado.\r\nApoya pies antideslizantes.', '', '', 'no'),
(63, 'Randers 210', 4, 'Randers', 1, 28362, 30347, 31198, 'Caminador elíptico electro-magnético', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\n6 programas. //\r\n\r\nSoportes revestidos. //', 'Randers 210\r\nSincronización perfecta de movimiento.\r\n6 programas predefinidos.\r\nPeso máximo admitido: 150 kilos.\r\nSoportes revestidos con grips de goma.\r\nPanel con luz azul de fondo (backlight) programable, controlador de: velocidad, tiempo, distancia, calorías consumidas, esfuerzo y pulso.\r\nIndica temperatura ambiente.\r\n', '', '', 'no'),
(64, 'Fitage ge 401', -4, 'Fitage', 1, 2352, 2517, 2588, 'Caminador elíptico magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\n2 ejercicios en 1. //\r\n\r\n8 niveles. //\r\n\r\nComputadora digital. //\r\n\r\nPedales reforzados. //', NULL, '', '', 'no'),
(65, 'Randers 204', 4, 'Randers', 1, 34257, 36655, 37683, 'Caminador elíptico electro-magnético', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. // \r\n\r\n11 programas. //\r\n\r\nRuedas para traslado. //', 'Randers 204\r\nPeso máximo admitido: 150 kilos.\r\n11 Programas de ejercicios pre-establecidos.\r\nConsola electrónica controladora de velocidad, tiempo, distancia, calorías consumidas y niveles de carga. \r\nRuedas para fácil traslado. \r\nPintura electroestática en polvo.\r\nDimensiones: 200x168x163cm. \r\nPeso del equipo: 98 Kg.', '', '', 'no'),
(66, 'Randers AMT100i', 4, 'Randers', 1, 133465, 142808, 146812, 'Caminador Profesional', '//\r\nUso profesional. //\r\n\r\nPeso máx: 160 kg. //\r\n\r\n20 niveles. //\r\n\r\nProgramas. //', 'Randers AMT100i\r\nLa altura del pedal en la posición más baja (intensificar): 5.5 pulgadas ? Altura de los pies en la posición más alta: 18,5 pulgadas\r\nMáximo tiempo de entrenamiento: 240 minutos.\r\nPeso máximo del usuario:160kg.\r\nNiveles de resistencia: 1 a 20\r\nLongitud mínima de paso: el movimiento Climber (0 pulgadas)\r\nPedal Dimensiones: 14.5 x 7.5 pulgadas\r\nMáxima longitud de la zancada: 27 pulgadas.\r\nMáximo tiempo de pausa: 30 segundos\r\nDimensiones: 74 x 28 x 69 pulgadas (L x W x H)\r\nPeso: 445 libras.\r\nProgramas: quema grasas, control de frecuencia cardíaca.\r\n', '', '', 'no'),
(67, 'Randers 206', 4, 'Randers', 1, 32866, 35167, 36153, 'Caminador elíptico electro-magnético', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. // \r\n\r\nFuerte estructura. // \r\n\r\n11 programas. //', 'Randers 206\r\nCaminador Elíptico profesional Electromagnético.\r\nAmplio manubrio de agarre, para diferentes posiciones.\r\nPeso máximo admitido: 150 kilos.\r\n11 Programas de ejercicios pre-establecidos.\r\nSistema electromagnético de variación de tensión. \r\nConsola electrónica controladora de velocidad, tiempo, distancia, calorías consumidas y niveles de carga. \r\nHandle Pulse: sistema de alta tecnología en control de pulsaciones por contacto.', '', '', 'no'),
(68, 'Randers EFX 532i', 4, 'Randers', 1, 81680, 87397, 89848, 'Caminador elíptico electro-magnético', '//\r\nUso profesional. //\r\n\r\nPeso máx: 160 kg. //\r\n\r\nCon CrossRamp. //\r\n\r\n6 programas. //', 'Randers EFX 532i\r\nCaminador Elíptico Precor | EFX 532i\r\nCrossRamp ajustable entre 15-40 grados. Brazos Fijos.\r\nFunciona con auto-generador.\r\nControl de pulso por contacto.\r\nApto para control de pulso con banda (no incluida).\r\n6 programas. \r\nTamaño: 213x79x168cm. \r\nPeso: 111Kg. \r\nPeso máximo del usuario: 160Kg. \r\nNiveles de Resistencia: 1-20', '', '', 'no'),
(69, 'Randers 1929', 4, 'Randers', 1, 3551, 3800, 3906, 'Caminador elíptico magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\n8 niveles de tensión. //\r\n\r\nConsola electrónica. //', 'Randers 1929\r\n8 niveles diferentes de tensión.\r\nRuedas para traslado. \r\nPosapiés antideslizantes.\r\nRueda de inercia de 5 Kg.\r\nMedidas: 110 x 51 x 144 cm.\r\nConsola electrónica con 6 funciones: velocidad, distancia, tiempo, odómetro, calorías consumidas y scan.', '', '', 'no'),
(70, 'Randers 1932', 4, 'Randers', 1, 4376, 4682, 4814, 'Caminador elíptico magnético', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\n8 niveles. //\r\n\r\nGran display. //', 'Randers 1932\r\nAsiento regulable hacia adelante y hacia atrás.\r\n8 niveles ajustables de resistencia.\r\nComputadora Digital programable de gran display. \r\nMide el tiempo recorrido, distancia realizada, calorías quemadas, velocidad de la bicicleta, pulso cardíaco con sensor al tacto por sistema hand pulse.\r\nPeso máximo admitido: 100 Kg.\r\nRuedas para el traslado.', '', '', 'no'),
(71, 'Reebok edge DX3', 4, 'Reebok', 1, 4502, 4817, 4952, 'Caminador elíptico magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nDiseño estético. //\r\n\r\nInercia de 6 kg. //\r\n\r\n8 niveles de fuerza. //\r\n\r\nRuedas. //', 'Reebok edge DX3\r\n8 niveles de resistencia.\r\nRueda de inercia de 6Kg.\r\nRuedas para transportar\r\nNiveles de ajuste para pisos irregulares. \r\nPeso máximo admitido: 120Kg.\r\nMonitor controlador de: velocidad, tiempo, distancia, calorías consumidas y pulso. \r\nControl de Pulso por Contacto (Hand Pulse).', '', '', 'no'),
(72, 'Reebok C5_1', 4, 'Reebok', 1, 7451, 7972, 8196, 'Caminador elíptico electro-magnético', '//\r\nUso semi profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nIdeal para gimnasios. // \r\n\r\n16 niveles de tensión. // \r\n\r\nHand Pulse. //\r\n\r\nReceptor Polar. //\r\n\r\n', 'Reebok C5_1\r\nSistema electrónico de control de resistencia con ajustes desde 25 hasta 400 watts. \r\n16 niveles de ajuste de tensión. \r\nHand Pulse y receptor compatible Polar. \r\n12 programas. \r\nPeso máximo admitido: 150 Kg. \r\nConsola con Back Light. \r\nPies ajustables para encontrar la mejor posición de ejercicio. Movimiento de brazos, o fijo.', '', '', 'no'),
(73, 'Fitage ge 405', 4, 'Fitage', 1, 4551, 4870, 5006, 'Caminador elíptico electro-magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx: 110 kg. //\r\n\r\nResistencia electrónica. //\r\n\r\nInercia de 6 kg.\r\n\r\n', 'Fitage ge 405\r\nRegulador de resistencia electrónico.\r\nSistema magnético con rueda de inercia de 6 kg.\r\nComputadora que indica el pulso manual, el tiempo transcurrido, la velocidad, la distancia, las calorías y posee odómetro.', '', '', 'no'),
(74, 'Fitage ge 400', 4, 'Fitage', 1, 3399, 3637, 3739, 'Caminador elíptico electro-magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx: 100kg. //\r\n\r\nAsiento. //\r\n\r\n8 niveles. //', 'Fitage ge 400\r\nCaminador Elíptico Magnético con asiento.\r\nCombina bicicleta con caminador.\r\nRegulador de 8 niveles de esfuerzo con mejor resistencia.\r\nComputadora Digital pilas AAA.\r\nMarca: tiempo, distancia, velocidad, calorías, etc.\r\nPedales reforzados y detalles de terminación.', '', '', 'no'),
(76, 'Zellens ZN 5150', -4, 'Zellens', 1, 16002, 17122, 17602, 'Caminador elíptico electro-magnético', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nManubrios c/ sensores. //\r\n\r\nDoble comando. //\r\n\r\nMonitor electrónico. //', NULL, '', '', 'no'),
(77, 'Mottion 4100', 4, 'Fitage', 1, 2652, 2837, 2917, 'Caminador Elíptico', '//\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nManubrio regulable. // \r\n\r\nScan de pulso manual. //\r\n\r\nUso residencial. //', 'Mottion 4100\r\nRegulador con 8 niveles de esfuerzo\r\nPedales con base antideslizante\r\nManubrio con goma antideslizante con opciones de mayor agarre\r\nFunciones de la consola: velocidad, tiempo, distancia, calorías consumidas y odómetro\r\nDimensiones: 117 x 54 x 140 cm', '', '', 'no'),
(78, 'Randers 1950hp', 4, 'Randers', 1, 4099, 4386, 4509, 'Caminador elíptico electro-magnético', '//\r\nUso residencial. //\r\n\r\nConsola con Backlight\r\n\r\nInercia de 6 kg. //\r\n\r\nProgramas pre-establecidos. //\r\n\r\nRuedas. //\r\n\r\n\r\nControl de pulsaciones.//\r\n\r\n', 'Randers 1950hp\r\nEjercicio cardiovascular sin impacto a más de 200 músculos. Combina ejercicios como caminar, correr, subir escaleras y cross. Diferentes niveles de tensión controlados desde el monitor. Control de pulso por contacto. Consola con Backlight. Registra tiempo, velocidad, distancia, odómetro, calorías y pulso durante el ejercicio. 6 programas pre-establecidos. \r\nPeso máximo soportado: 110 kg.', '', '', 'no'),
(79, 'Randers C776i', 4, 'Olmo', 1, 60490, 64725, 66539, 'Caminador elíptico electro-magnético', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 160 kg. //\r\n\r\n31 niveles. //\r\n\r\nCardio Theater. //', 'Randers C776i\r\nEsta unidad es extremadamente duradera y utiliza una baja fricción, sistema de auto-generador de potencia y transmisión por correa.\r\nPermite una postura correcta.\r\nNo posee cables de alimentación. \r\n31 niveles de velocidad.\r\nCardio Theater y un centro de bio-retroalimentación con SmartRate ®, que proporciona información sobre la frecuencia cardíaca y las calorías consumidas.', '', '', 'no'),
(80, 'Olmo 83', 4, 'Olmo', 1, 2249, 2406, 2474, 'Caminador elíptico', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nCombina 2 ejercicios. //\r\n \r\n8 niveles. //\r\n\r\nMonitor electrónico. //\r\n', 'Olmo 83\r\nCaminador elíptico de uso residencial. 8 niveles para regular el esfuerzo. Monitor electrónico (velocidad-tiempo-distancia y ritmo cardíaco). Sensor del pulso al tacto. Combina escalador y simulador de ski. Peso máx.: 100 Kg.\r\n', '', '', 'no'),
(83, 'Randers 1100', 9, 'Randers', 1, 3298, 3529, 3628, 'Plataforma Vibratoria', '//\r\nUso residencial. //\r\n\r\nPeso máx.:120 Kg. //\r\n\r\nVibración oscilante. //\r\n\r\nVel.: 1-20 Km/h. //\r\n\r\nAmplitud: 1-10 mm. //', 'Randers 1100\r\nMovimiento Oscilante.\r\nRango de velocidad 1-20.\r\nAmplitud: 1-10 mm.\r\nPeso máximo: 120 kg.', '', '', 'no'),
(84, 'Fitage ge 301', 9, 'Fitage', 1, 3694, 3952, 4063, 'Plataforma Vibratoria', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\n3 programas. //\r\n\r\nMotor 1.5 HP. //\r\n\r\nPotencia de 1000 W. //', 'Fitage ge 301\r\nMotor 1.5 HP\r\n220v \r\nFrecuencia 50-60Hz \r\nPotencia 1000w\r\nAmplitud 0-10 mm\r\nRango de velocidades 1-50\r\nProgramas preestablecidos 3\r\nConsola: programa, tiempo, porcentaje de grasa corporal y velocidad.\r\nPeso sugerido: 150 Kg.', '', '', 'no'),
(85, 'Randers yv-30r', 9, 'Randers', 1, 21487, 22991, 23636, 'Plataforma Vibratoria', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 180 Kg. //\r\n\r\nDisplay en mástil. //\r\n\r\nTriplanar. // \r\n\r\n5 programas. //\r\n\r\nAgarre central. //', 'Randers yv-30r\r\nEntrenamiento profesional.\r\nEequipado con un exclusivo display gráfico con tecnología GSR GRAPHICS.\r\nMonitor en el mástil.\r\nVibración Triplana triaxial. \r\n2 motores de 200W c/u.\r\nPlato de vibración de 70x70cm, para un uso más confortable.\r\n5 programas. \r\nAgarre central y reposacabezas.\r\nPeso máximo: 180Kg.', '', '', 'no'),
(87, 'Fitage ge 302', 9, 'Fitage', 1, 3757, 4020, 4133, 'Plataforma Vibratoria', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 150 kg. //\r\n\r\nOscilante. // \r\n\r\n3 Programas. //', 'Fitage ge 302\r\nMovimiento oscilante. \r\nPotencia: 1000W. \r\nMotor: 1.5 HP. \r\nRango de frecuencias: 50-60 Hz. \r\nRango de velocidades: 1-50. \r\n3 Programas preestablecidos. \r\nComputadora con programa de tiempo, \r\nporcentaje de grasa corporal y velocidad. \r\nPeso máximo: 150 kg \r\nDimensiones: 75 x 82 x 141 cm (largo ? ancho ? alto) ', '', '', 'no'),
(88, 'Zellens ZE 2320', 9, 'Zellens', 1, 4313, 4615, 4745, 'Plataforma Vibratoria', '//\r\nUso residencial. //\r\n\r\nPeso máx: 120 kg. //\r\n\r\nOscilante y Rotativo. //\r\n\r\nPosee dos motores. //\r\n\r\n8 Programas. //\r\n\r\nResistente. //', 'Zellens ZE 2320\r\nSistema Digital de Control Inteligente.\r\nPotencias:\r\nMotor de rotación: 200W\r\nMotor de oscilación: 500W\r\nRango de Voltage: AC110-220V 50/60hz\r\nDimensiones: 75 x 76 x 139,5 cm\r\nMáxima amplitud de fluctuación: 16mm\r\nDoble control de mando.\r\nPanel superior con tres ventanas LED \r\nPanel inferior con una ventana LED.\r\nRango Hz: 1-20 steps or 1-50 steps\r\n8 programas preestablecidos.\r\nCuerpo sólido y resistente.\r\nIncluye correas de mano. ', '', '', 'no'),
(89, 'Zellens ZE 2280', 9, 'Zellens', 1, 11727, 12548, 12900, 'Plataforma Vibratoria', '//\r\nUso profesional. //\r\n\r\nPeso máx: 150 kg. //\r\n\r\n11 programas. //\r\n\r\nVibración vertical. //', 'Zellens ZE 2280\r\nSistema Digital de Control Inteligente.\r\n? Vibración vertical para el cuerpo entero.\r\n? Control remoto.\r\n? Potencia de ambos motores: AC 350W\r\n? Computadora con imágenes animadas de los ejercicios y pantalla a color. \r\n? 8 PROGRAMAS PREESTABLECIDOS\r\n- P1: Estiramiento y Relajación.\r\n- P2: Ejercicio de cuerpo completo.\r\n- P3: Ejercicio de la parte superior del cuerpo.\r\n- P4: Ejercicio de la parte inferior del cuerpo.\r\n- P5-P8: Ejercicios avanzados preestablecidos.\r\n? 3 PROGRAMAS A DEFINIR POR EL USUARIO\r\n-Tiempo\r\n-HZ & H/L\r\n-Poses de ejercitación\r\n? Botón directo: 30Hz / 40Hz / 50Hz\r\n? Rango de vibración: 20 ~ 60Hz\r\n? Control de voltaje constante.\r\n? Estructura fuerte y sólida.\r\n? Robusto diseño mecánico.\r\n? Peso máximo del usuario: 150Kg\r\n? Fuerte cubierta externa de fibra de vidrio y robusto bastidor.\r\n? 6 amortiguadores de caucho.\r\n\r\nDimensiones y peso\r\nPeso Neto: 139 kg\r\nPeso Bruto: 151.5 kg\r\nPotencia: 220V 50/60Hz \r\nDimensiones (ancho x largo x alto): 100 x 102 x 171 cm\r\nTamaño de la plataforma: 99 x 64 cm', '', '', 'no'),
(90, 'Olmo 64', 2, 'Olmo', 1, 3788, 4053, 4166, 'Bicicleta Indoor', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nVolante de 13 Kg. //\r\n\r\nMonitor electrónico. //', 'Olmo 64\r\nRegulador de esfuerzo.\r\nFreno de emergencia. \r\nAsiento y Manubrio regulable en altura con desplazamiento horizontal. \r\nMonitor electrónico. \r\nEquipada con volante de acero simulador inercial de 13 kg. \r\nPedales con punteras.\r\nPeso máx.admitido 100 kg.\r\n', '', '', 'no'),
(91, 'Olmo 22', 2, 'Olmo', 1, 2920, 3124, 3212, 'Bicicleta Indoor', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 100 kg. //\r\n\r\nRegulador de esfuerzo. //\r\n\r\nVolante de 14 kg. //\r\n\r\nMonitor electrónico. //\r\n\r\nAsiento regulable. //', 'Olmo 22\r\nRegulador de esfuerzo.\r\nEquipada con volante de acero simulador inercial de 14 kilos.\r\nPiñón libre.\r\nManubrio regulable en altura.\r\nAsiento regulable en altura y desplazamiento horizontal\r\nMonitor electrónico (tiempo-distancia-calorías-velocidad)\r\nPedales con punteras.\r\nMedidas: 130 cm x 64 cm x 120 cm. \r\nPeso máximo admitido: 100 kilos.', '', '', 'no'),
(92, 'Randers 889 sp', 2, 'Randers', 1, 4961, 5308, 5457, 'Bicicleta Indoor', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 kg. // \r\n\r\nAsiento regulable. // \r\n\r\nRueda de 18 kg. //', '889sp\r\nPosee asiento regulable horizontal y verticalmente y un manubrio regulable en altura. Tiene regulación de tensión a rosca, con freno de emergencia. Los pedales poseen traba de seguridad. Para una posición más cómoda, posee apoya brazos y para su mejor traslado, posee ruedas. Incluye un protector para la transpiración, que ayude a que la misma no afecte ni a la rueda ni al freno. Tiene transmisión por cadena.\r\nDimensiones: Largo: 1210mm. Ancho: 500mm. Alto: 1150mm.\r\nPeso de la rueda de inercia: 13Kg.\r\nPeso máximo de usuario recomendado: 120Kg.', '', '', 'no'),
(94, 'Randers 340', 2, 'Randers', 1, 6537, 6994, 7191, 'Bicicleta Indoor', '//\r\nUso profesional. //\r\n\r\nPeso máximo: 160 Kg. //\r\n\r\nAsiento regulable. //\r\n\r\nFreno a rosca. //', 'Randers 340\r\nRueda de inercia cromada de 22Kg. de resistencia.\r\nManubrio revestido con grips antideslizantes.\r\nPeso máximo admitido: 160 kilos.\r\nIncluye protector de plástico para que la transpiración no afecte ni a la rueda ni al freno.\r\nAsiento anatómico regulable horizontal y verticalmente. \r\nFreno a rosca con parada de emergencia. \r\nTransmisión por cadena.\r\nSistema de freno de emergencia. \r\nPatas para nivelación de pisos irregulares.\r\n', '', '', 'no'),
(95, 'Olmo 25', 2, 'Olmo', 1, 4276, 4576, 4704, 'Bicicleta Indoor', '//\r\nUso residencial. //\r\n\r\nPeso máximo: 120Kg. //\r\n\r\nVolante de 17 Kg. //\r\n\r\n6 niveles de esfuerzo. //', 'Olmo 25\r\nVolante de acero simulador inercial de 17kg.\r\nRegulador de 6 niveles de esfuerzo.\r\nManubrio Triatlón regulable en altura.\r\nAsiento regulable en altura y desplazamiento horizontal.\r\nPiñón libre.\r\nMonitor electrónico (tiempo-distancia-velocidad-calorías-reloj-temperatura-pulso cardíaco con sensor al tacto).\r\nPalancas de 3 piezas.\r\nPedales con punteras.\r\nPeso máximo admitido: 120 kilos.\r\n', '', '', 'no'),
(96, 'Fitage ge 601', -2, 'Fitage', 1, 2734, 2925, 3008, 'Bicicleta Indoor', '//\r\nNivelador de esfuerzo. //\r\n\r\nAsiento amortiguador. //\r\n\r\nMonitor electrónico. //\r\n\r\nPedales con punteras. //\r\n\r\nPeso máximo:100 Kg. //', NULL, '', '', 'no'),
(97, 'Fitage ge 601f', -2, 'Fitage', 1, 3055, 3269, 3361, 'Bicicleta Indoor', '//\r\nUso residencial. //\r\n\r\nPeso máx: 100 Kg. //\r\n\r\nBici con piñón fijo. //\r\n\r\nNivelador de esfuerzo. //\r\n\r\nAsiento amortiguador. //\r\n\r\nPedales con punteras. //\r\n', NULL, '', '', 'no'),
(98, 'Randers FC58H', 2, 'Randers', 1, 9890, 10582, 10879, 'Bicicleta Indoor', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 140 kg. //\r\n\r\nBicicleta resistente. //\r\n\r\nTransmisión en cadena. //', 'Randers FC58H\r\nEstructura construida en acero. Sistema de deslizamiento de asiento y manubrio sin puntos de referencia, lo que permite elegir la altura y distancia exacta para cada usuario.\r\nRueda de inercia de 18Kg de resistencia.\r\nCarga máxima: 140Kg.\r\nPerilla de freno para ajustar la resistencia con freno de emergencia. Bajo mantenimiento. \r\nCaracterísticas: Estructura: nuevo chasis de acero sobredimensionado.\r\nVolante de inercia: 18Kg.\r\nSistema de transmisión: por cadena.\r\nProtección: tratamiento completo anti-corrosión.\r\nAcero inoxidable.\r\nPintura: recubierta por 2 capas de pintura en polvo.\r\nPedales con trabas de seguridad.\r\nManillar ajustable: tanto vertical como horizontalmente.\r\nAsiento ajustable: tanto vertical como horizontalmente. Sillón de gel.\r\nResistencia: regulación de la intensidad de frenada con sistema de fricción y bloqueo de emergencia.\r\nPedalier: Extra-resistente, sellado en acero.\r\nRuedas: para un cómodo transporte.\r\nPatas ajustables: para garantizar la máxima estabilidad.', '', '', 'no'),
(99, 'Mottion 9100', 2, 'Randers', 1, 3789, 4054, 4167, 'Bicicleta Indoor', '//\r\n\r\nRegulador de 8 niveles. //\r\n\r\nAsiento confortable. //\r\n\r\nDisplay dos funciones. //\r\n\r\nManubrio regulable. //\r\n\r\nPeso máx.: 120 kg. //', 'Mottion 9100\r\nEl asiento se regula en altura y distancia\r\nEl display tiene dos funciones simultaneas.\r\nDisco de inercia de 18 Kg.\r\nDisplay con seguimiento de calorías, distancia y tiempo\r\nPedales con trabas de seguridad\r\nÚnica con manubrio antitranspirante\r\nPeso máximo recomendado: 120 Kg\r\nIdeal para un entrenamiento intensivo', '', '', 'no'),
(100, 'Fitage ge 602', 2, 'Fitage', 1, 4789, 5124, 5268, 'Bicicleta Indoor', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nDisplay con calorías. //', 'Fitage ge 602\r\nMuy reforzada.\r\nDisco de 20kg.\r\nFreno de emergencia.\r\nDisplay con velocidad, distancia, calorías.\r\nPeso máximo admitido: 120 Kg.', '', '', 'no'),
(101, 'Olmo 73', 2, 'Olmo', 1, 5618, 6011, 6180, 'Bicicleta de Indoor', '//\r\nUso profesional. //\r\nPeso máx.: 130 kg. //\r\nRueda de 18 kg. //\r\nTransmisión por correa. //\r\nCon piñón fijo. //\r\nRegulador de esfuerzo. //\r\n\r\n', 'Olmo 73\r\nBicicleta indoor de uso profesional.\r\nRegulador de esfuerzo y freno de emergencia. \r\nCon piñón fijo y control de tensión.\r\nSu asiento anatómico, regulable en altura, permite un desplazamiento horizontal adaptable frente a las necesidades del usuario.\r\nEquipada con volante de acero y manubrio cromado, cubierto en PVC, regulable en altura.\r\nSimulador inercial de 18 kg.\r\nPedales de aluminio con punteras.\r\nMedidas: 120 x 50.5 x 108.5 cm.\r\nRuedas para un fácil traslado.\r\nPeso máx. admitido 130 kg.', '', '', 'no'),
(103, 'Olmo 21', -2, 'Olmo', 1, 1789, 1914, 1967, 'Bicicleta fija magnética', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nRegulador de esfuerzo. //\r\n\r\nMonitor electrónico. //\r\n\r\nCon amortiguación. //\r\n\r\nVolante de acero. //', NULL, '', '', 'no'),
(104, 'Olmo 70', 2, 'Olmo', 1, 6099, 6526, 6709, 'Bicicleta electromagnética', '//\r\nUso profesional. //\r\n\r\nPeso máx: 120 Kg. //\r\n\r\n16 niveles de esfuerzo. //\r\n\r\nMonitor electrónico. //', 'Olmo 70\r\nBicicleta Profesional para Gimnasios.\r\nRegulador de 16 niveles de esfuerzo (10 a 300 watts). \r\nPeso máximo admitido: 120 kg.\r\nAsiento y manubrio regulables. \r\nMonitor electrónico (velocidad-tiempo-distancia-odómetro-RMP-calorías-recuperación-pulso cardíaco con sensor al tacto en el equipo). \r\nPedales con punteras.', '', '', 'no');
INSERT INTO `producto` (`id`, `codigo`, `seccion_id`, `marca`, `display`, `precio`, `precio_prov`, `precio_mza_sj`, `nombre`, `zzzdescripcion`, `descripcion`, `htmlFicha`, `url_video`, `promocion`) VALUES
(105, 'Olmo 21s', -2, 'Olmo', 1, 1425, 1525, 1567, 'Bicicleta fija mecánica', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nVolante de acero. //\r\n\r\nAsiento regulable. // \r\n\r\nMonitor electrónico. // \r\n\r\nPedales con punteras. //', NULL, '', '', 'no'),
(106, 'Olmo 27', 2, 'Olmo', 1, 2911, 3115, 3202, 'Bicicleta magnética', '//\r\nPeso máx.: 100 Kg. //\r\n\r\nUso residencial. //\r\n\r\nPosee 8 niveles. //\r\n\r\nAsiento acolchado. //', 'Olmo 27\r\nRegulador de 8 niveles de esfuerzo.\r\nManubrio regulable en altura.\r\nAsiento regulable en altura y desplazamiento horizontal.\r\nMonitor electrónico: velocidad, tiempo, distancia, calorías, pulso cardíaco con sensor al tacto en el equipo.\r\nPedales con punteras.\r\nPeso máximo admitido: 100 kg.', '', '', 'no'),
(107, 'Olmo 29', 2, 'Olmo', 1, 2820, 3018, 3102, 'Bicicleta magnética', '//\r\nUso residencial. //\r\n\r\nPeso máximo: 100 kg. //\r\n\r\nRegulador de 8 niveles. //\r\n\r\nManubrio regulable. //\r\n\r\nMonitor electrónico. //\r\n\r\nPedales con punteras. //\r\n', 'Olmo 29\r\nRegulador de 8 niveles de esfuerzo\r\nManubrio regulable en altura\r\nAsiento regulable en altura.\r\nMonitor electrónico (velocidad-tiempo-distancia-calorías-revoluciones-pulso-scan)\r\nPedales con punteras.\r\nMedidas: 100 cm x 53 cm x 135 cm.\r\nPeso máximo admitido: 100 kilos\r\n', '', '', 'no'),
(108, 'Olmo 28', 2, 'Olmo', 1, 3390, 3627, 3729, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.:100 Kg. //\r\n\r\nEjercicio intenso. //\r\n\r\nAsiento en gel. //\r\n\r\nMonitor electrónico. //\r\n\r\nPedales con punteras. //', 'Olmo 28\r\nRegulador de 8 niveles de esfuerzo. \r\nAsiento de gel y manubrio regulable.\r\nMonitor electrónico: velocidad, tiempo, distancia, calorías, recuperación,\r\npulso cardíaco con sensor al tacto\r\nen el equipo. \r\nPedales con punteras.\r\nPeso máximo admitido: 100 Kg.', '', '', 'no'),
(109, 'Olmo 23', 2, 'Olmo', 1, 1569, 1679, 1726, 'BICICLETA MAGNÉTICA', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nAmortiguación. //\r\n\r\nVolante de acero. // \r\n\r\nAsiento regulable. //\r\n\r\nMonitor electrónico. //', 'Olmo 23\r\nRegulador de esfuerzo.\r\nEquipada con volante de acero simulador inercial.\r\nAsiento regulable en altura.\r\nMonitor electrónico (tiempo-distancia-calorías-velocidad-scan-reset).\r\nPedales con punteras.\r\nMedidas: 90 cm x 61 cm x 123 cm (largo, ancho, alto).\r\nPeso máximo admitido: 100 kg.', '', '', 'no'),
(110, 'Olmo 24', 2, 'Olmo', 1, 2531, 2709, 2785, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.:100 Kg. //\r\n\r\nBicicleta magnética. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nAsiento regulable. //\r\n\r\nMonitor electrónico. //\r\n', 'Olmo 24\r\nRegulador de 8 niveles de esfuerzo.\r\nManubrio regulable en altura.\r\nAsiento regulable en altura.\r\nMonitor electrónico: velocidad, tiempo, distancia, calorías, pulso cardíaco.\r\nPedales con punteras.\r\nMedidas: 85 cm x 52 cm x 108 cm.\r\nPeso máximo admitido: 100 kg.', '', '', 'no'),
(111, 'Olmo 41', 2, 'Olmo', 1, 2790, 2985, 3069, 'Recumbent MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMonitor electrónico. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nSensor al tacto. //', 'Olmo 41\r\nRegulador de 8 niveles de esfuerzo.\r\nMonitor electrónico: tiempo, distancia, calorías, velocidad, pulso cardíaco con sensor al tacto.\r\nPedales con punteras.\r\nMedidas: 145 cm x 53 cm x 85 cm.\r\nPeso máximo admitido: 100 kg.\r\n', '', '', 'no'),
(114, 'Randers 2560', 2, 'Randers', 1, 2875, 3077, 3163, 'Recumbent Magnético', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nMonitor electrónico. //', 'Randers 2560\r\nRegulador de 8 niveles de esfuerzo.\r\nAsiento con respaldo muy confortable. \r\nMonitor electrónico digital: tiempo recorrido, distancia realizada, calorías quemadas, velocidad de la bicicleta).\r\nPulso cardíaco con sensor al tacto por sistema Hand Pulse.\r\nPedales con punteras.\r\nPeso máximo sugerido 100 Kg.', '', '', 'no'),
(115, 'Olmo 51', 2, 'Olmo', 1, 3470, 3713, 3817, 'Recumbent MAGNÉTICA', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nAsiento confortable. //\r\n\r\nRecumbent reforzado. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nMonitor electrónico. //', 'Olmo 51\r\nRegulador de 8 niveles de esfuerzo.\r\nMonitor electrónico: tiempo, distancia, calorías, velocidad, scan, pulso cardíaco con sensor al tacto en el equipo con display independiente en el manillar.\r\nSuper resistente.\r\nPedales largos con punteras.\r\nPeso máximo admitido: 100 kg.', '', '', 'no'),
(116, 'Olmo 60', 2, 'Olmo', 1, 4911, 5255, 5402, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.:150 Kg. //\r\n\r\n35 niveles de esfuerzo. //\r\n\r\nAsiento regulable. //\r\n\r\nMonitor electrónico. //\r\n\r\n12 programas. //', 'Olmo 60\r\nRegulador de 35 niveles de esfuerzo (10 a 350 watts).\r\nAsiento y Manubrio regulables.\r\nMonitor electrónico (velocidad-tiempo-distancia-calorías-recuperación-pulso cardíaco con sensor al tacto en el equipo).\r\n12 programas.\r\nModo entrenamiento "pulso máximo".\r\nPedales con punteras.\r\nPeso máximo admitido: 150 Kg.', '', '', 'no'),
(117, 'Randers 350', 2, 'Randers', 1, 3258, 3486, 3584, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nEjercicio intenso. //\r\n\r\n10 niveles. //\r\n\r\nAmplio asiento. //\r\n\r\nRuedas de traslado. //', 'Randers 350\r\nControl de resistencia de 10 niveles de esfuerzo.\r\nManubrio regulable.\r\nAmplio asiento.\r\nMonitor electrónico digital: tiempo recorrido, distancia realizada, calorías quemadas, velocidad, pulso cardíaco con sensor al tacto.\r\nPedales amplios con punteras.\r\nRuedas de traslado.', '', '', 'no'),
(118, 'Olmo 62', 2, 'Olmo', 1, 6183, 6616, 6802, 'Recumbent ELECTRO MAGNÉTICA', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 120 Kg. //\r\n\r\nAsiento confortable. // \r\n\r\n24 niveles de esfuerzo. //', 'Olmo 62\r\nAmplio asiento. \r\nRegulador de 24 niveles de esfuerzo.\r\nMonitor electrónico (tiempo-distancia-cadencia-calorías-velocidad-recuperación-grasa corporal-pulso cardíaco con sensor al tacto en el equipo).\r\nPedales con punteras.\r\nEl peso máximo sugerido es de 120 Kg.\r\n\r\n', '', '', 'no'),
(119, 'Randers 2700', 2, 'Randers', 1, 5511, 5897, 6062, 'Recumbent MAGNÉTICO', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nDisplay luminoso. //', 'Randers 2700\r\nDisplay luminoso con números grandes. \r\nAsiento amplio y confortable. \r\nDoble agarradera.\r\nRegulador de 8 niveles de esfuerzo. \r\nComputadora: Monitor electrónico: tiempo, distancia, calorías, velocidad, pulso cardíaco con sensor al tacto.\r\nPedales con punteras. \r\nPeso máximo sugerido: 120 Kg. ', '', '', 'no'),
(120, 'Fitage ge 701', 2, 'Fitage', 1, 3846, 4115, 4231, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nComputadora. //\r\n\r\n8 niveles de esfuerzo. //', 'Fitage ge 701\r\nComputadora con pulso manual, tiempo,\r\nvelocidad, distancia y calorías.\r\nRegulador con 8 niveles de esfuerzo.\r\nSistema de ajuste horizontal del asiento.\r\nRueda de inercia de 4.5 kg.\r\nCorrea de transmisión suave y silenciosa\r\nMonitor LCD.\r\nPeso máximo admitido: 120 kg. \r\nMedidas: 160 x 63 x 95 cm.', '', '', 'no'),
(121, 'Olmo 72', 2, 'Olmo', 1, 8781, 9396, 9659, 'Recumbent ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx: 120 Kg. //\r\n\r\nCon pulso. //\r\n\r\nPedales con punteras. // \r\n\r\n14 niveles de esfuerzo. //\r\n\r\nMonitor electrónico. //', 'Olmo 72\r\nRegulador de 14 niveles de esfuerzo (10 a 300 watts). \r\nMonitor electrónico (tiempo-distancia-odómetro-RPM-calorías-velocidad-recuperación-pulso cardíaco con sensor al tacto en el equipo) \r\nPedales con punteras.\r\nPeso máximo admitido: 120 kilos.', '', '', 'no'),
(122, 'Mottion 1300', 2, 'Mottion', 1, 2577, 2757, 2835, 'BICICLETA MAGNÉTICA', '//\r\n\r\nRegulador de 8 niveles. //\r\n\r\nAsiento confortable. //\r\n\r\n4 pies de apoyo. //\r\n\r\nIdeal para tonificar. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nCaramañola de regalo. //', 'Mottion 1300\r\nBicicleta fija magnética Modelo 2012 de estructura firme y resistente.\r\nRegulador de 8 niveles de intensidad.\r\n4 pies de apoyo regulable para una mejor adaptación al piso\r\nAsiento regulable en altura y desplazamiento horizontal\r\nIdeal para tonificar y quemar calorías\r\nPeso máximo admitido: 110 kg\r\nCaramañola de regalo.', '', '', 'no'),
(125, 'Fitage ge 104', 2, 'Fitage', 1, 3299, 3530, 3629, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. // \r\n\r\nPeso máx: 120 kg. //\r\n\r\n10 niveles de esfuerzo. //\r\n\r\nMonitor electrónico. //', 'Fitage ge 104\r\nRegulación del asiento vertical y horizontal.\r\n10 niveles de esfuerzo. Manubrio regulable.\r\nMonitor electrónico digital: tiempo recorrido, distancia, calorías, velocidad, pulso cardíaco.\r\nPedales amplios con punteras.\r\nRuedas de traslado.\r\nPeso máximo 120 Kg', '', '', 'no'),
(126, 'Fitage ge 703', 2, 'Fitage', 1, 2745, 2937, 3019, 'Recumbent MAGNÉTICA', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nSistema magnético. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nAsiento con respaldo. //\r\n\r\nSistema magnético. //', 'Fitage ge 703\r\nInnovador sistema magnético.\r\nRegulador de 8 niveles de esfuerzo. Asiento con confortable respaldo.\r\nMonitor electrónico digital (tiempo recorrido, distancia realizada, calorías quemadas, velocidad de la bicicleta). Pulso cardíaco con sensor al tacto por sistema Hand Pulse. \r\nPedales con punteras. \r\nPeso máximo sugerido: 100 Kg.', '', '', 'no'),
(127, 'Fitage ge 103', 2, 'Fitage', 1, 2862, 3062, 3148, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx: 120 Kg. //\r\n\r\nElectromagnética. // \r\n\r\n16 niveles. //', 'Fitage ge 103\r\n16 niveles de fuerza\r\nComputadora: Mediciones en watts, Revoluciones, distancia , calorías, Tiempo de pulso cardíaco, velocidad, Test de grasa, medicion de grasa corporal\r\n16 programas\r\nManubrio regulable adelante y atrás.\r\nAsiento regulable horizontal y verticalmente.\r\nRuedas de traslado.\r\nRuedas de atrás hexagonales niveladoras.\r\n', '', '', 'no'),
(128, 'Randers 2570hp', 2, 'Randers', 1, 2951, 3158, 3246, 'Recumbent Magnético', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 110 Kg. //\r\n\r\nAsiento ajustable. //\r\n\r\nControl de pulso. //\r\n\r\n8 niveles de tensión. //\r\n\r\nMonitor electrónico. //', 'Randers 2570hp\r\nIdeal para personas mayores o para aquellos que están realizando rehabilitaciones musculares. Consola controladora de tiempo, velocidad, distancia, odómetro, calorías y pulso. 8 niveles de tensión. Amplio asiento ajustable con respaldo regulable en distancia. Control de pulso por contacto. Peso máximo: 110 kg.', '', '', 'no'),
(129, 'Randers 145', 2, 'Randers', 1, 2434, 2604, 2677, 'BICICLETA MAGNÉTICA', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 100 kg. //\r\n\r\nAsiento regulable. //\r\n\r\nConsola digital. //', 'Randers 145\r\nAmplio asiento regulable en altura. Control de pulso por contacto. Manubrio revestido en grips antideslizantes regulable para posibilitar mayores opciones de agarre.\r\nConsola digital de una ventana, controladora de: Velocidad, Tiempo, Calorías Consumidas, Distancia, Odómetro y Scan.\r\nRecomendada para personas de hasta 1,70m de altura.\r\nIdeal para mujeres o personas mayores que buscan un ejercicio aeróbico liviano.\r\nDimensiones Producto: 80 cm largo x 50 cm ancho x 115 cm alto.', '', '', 'no'),
(131, 'Mottion 1200', -2, 'Mottion', 1, 1699, 1818, 1868, 'BICICLETA MAGNÉTICA', '//\r\n\r\nRegulador de 8 niveles. //\r\n\r\nAsiento confortable. //\r\n\r\nFácil traslado. //\r\n\r\nDisplay digital. //\r\n\r\nPeso máx.: 100 kg. //', NULL, '', '', 'no'),
(134, 'Fitage ge 110', 2, 'Fitage', 1, 5368, 5744, 5905, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\n\r\nUso semiprofesional. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nSensores de pulso. //\r\n\r\nInercia de 9 kgs. //', 'Fitage ge 110\r\nRueda de inercia de 9 kgs.\r\nAsiento y manubrio regulables.\r\nPeso máximo admitido por usuario: 120 kg.\r\nMonitor electrónico con velocidad, tiempo, distancia, odómetro, RMP, calorías, recuperación y pulso cardíaco con sensor al tacto en el equipo.\r\nSensores de pulso en ambos manubrios.\r\nPedales reforzados con punteras.\r\nDiseño moderno.\r\nExcelentes detalles de terminación.\r\nEstructura sólida y resistente.', '', '', 'no'),
(135, 'Fitage ge 710', 2, 'Fitage', 1, 7516, 8043, 8268, 'Recumbent ELECTRO MAGNÉTICA', '//\r\n\r\nUso semiprofesional. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nAsiento ergonómico. //\r\n\r\nManubrio con sensores.  //', 'Fitage ge 710\r\nBicicleta horizontal electromagnética semiprofesional.\r\nRueda de inercia de 9 kgs.\r\nAsiento amplio ergonómico para un ejercicio más cómodo.\r\nRespaldo de malla para un mejor descanso de la zona lumbar.\r\nSincronización perfecta de movimiento.\r\nPeso máximo admitido por usuario: 120 kg.\r\nManubrio con sensores de pulso.\r\nMonitor electrónico con velocidad, tiempo, distancia, odómetro, RMP, calorías, recuperación y pulso cardíaco con sensor al tacto en el equipo.', '', '', 'no'),
(136, 'Mottion 1100', -2, 'Mottion', 1, 1372, 1468, 1509, 'BICICLETA MAGNÉTICA', '//\r\n\r\nRegulador de 8 niveles. //\r\n\r\nAsiento confortable. //\r\n\r\nRecumbent reforzado. //\r\n\r\nPedales ajustables. //\r\n\r\nDisplay digital. //', NULL, '', '', 'no'),
(137, 'Olmo 82', 2, 'Olmo', 1, 1856, 1986, 2041, 'BICICLETA MAGNÉTICA', '// Peso máx.: 100kg//\r\nPedales con punteras//\r\n8 niveles de esfuerzo//\r\nAsiento regulable//\r\nMonitor electrónico//\r\nUso residencial//', 'Olmo 82\r\nBicicleta Fija Magnética de uso residencial.\r\nRegulador de 8 niveles de esfuerzo. Asiento de gel y manubrio regulables. Monitor electrónico (velocidad, tiempo, distancia, calorías, recuperación y pulso cardiaco) con sensor al tacto. Volante inercial de acero de 6kg. Pedales con punteras. Dimensiones: 740 mm. (Largo) x 430 mm. (Ancho) x 1200 mm. (Alto) Peso máximo admitido: 100kg', '', '', 'no'),
(138, 'Randers 2800hp', 2, 'Randers', 1, 3399, 3637, 3739, 'BICICLETA ELECTROMAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 kg. //\r\n\r\n8 niveles de tensión. //\r\n\r\nControl de pulso. //\r\n\r\nProgramas pre-establecidos.//\r\n\r\nConsola plegable.//\r\n', 'Randers 2800hp\r\nIdeal para personas mayores o para aquellos en rehabilitación muscular. Amplio asiento con respaldo regulable en distancia. 8 niveles de tensión controlados desde el monitor. Control de pulso por contacto. Consola (plegable) con Backlight. Registra tiempo, velocidad, distancia, calorías y pulso. 6 programas pre-establecidos. \r\nPeso máximo soportado: 120 kg.\r\n', '', '', 'no'),
(139, 'Randers H4915', 2, 'Randers', 1, 2999, 3209, 3299, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nFreno magnético. //\r\n\r\nMonitor LCD. //\r\n\r\nControl de pulsaciones. //\r\n\r\nRuedas de transporte. //\r\n', 'Randers H4915 RHYNO MAX\r\nMonitor intuitivo con dígitos muy grandes. Ideal para personas con dificultades de visión. Diseñada para uso doméstico regular.\r\nSistema de freno magnético, sin mantenimiento. Pedaleo suave y silencioso con diferentes tensiones. Equipada con 10 puntos precisos de regulación de carga (manual)\r\nMonitor LCD, Uso muy sencillo. Mide: tiempo, distancia, velocidad, calorías, RPM, ritmo cardíaco y temperatura. Test de recuperación (RT), ayuda a controlar la forma física con una recuperación controlada. Sistema de medición del pulso por contacto. Proporciona objetivos para entrenamientos avanzados. Ajuste vertical y horizontal del asiento, ayuda a encontrar la posición de pedaleo correcta. Ruedas de transporte, para moverlo con facilidad en su hogar.\r\nLargo: 85cm.\r\nAncho: 52cm.\r\nAlto: 130cm.\r\nPeso: 29Kg.\r\nPeso máximo de usuario recomendado: 120Kg.\r\nPeso del volante de inercia: 6.5Kg.', '', '', 'no'),
(141, 'Randers h4935', -2, 'Randers', 1, 3587, 3838, 3945, 'BICICLETA MAGNÉTICA', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 120 kg. //\r\n\r\nFreno magnético. //\r\n\r\nPerfiles predefinidos. //\r\n\r\n', NULL, '', '', 'no'),
(142, 'Randers 6390', -2, 'Randers', 1, 3855, 4125, 4241, 'Bicicleta horizontal', '//\r\n8 niveles de tensión. //\r\n\r\nConsola con Scan. //\r\n\r\nAsiento regulable. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMonitor electrónico. //\r\n\r\nUso semi-profesional. //\r\n', NULL, '', '', 'no'),
(779, 'Acc. Fit 001', 6, '-', 1, 232, 0, 0, 'Barra Cromada', '//\r\nBarra cromada.//\r\n1.1m. c/TOPES.//\r\nIncluye 2 topes.//\r\nGrip antideslizante.//\r\nMedidas: 1,10 m.		', 'Acc. Fit 001\r\nBarra de caño cromada pintada con Epoxi. \r\nIncluye 2 topes. Medidas: 1,10 m.\r\nCon grip antideslizante. \r\nActividades para su uso: Ejercicios de musculación, Dominadas, Abdominales, Elevación de Piernas entre otros.', '', '', 'no'),
(780, 'Acc. Fit 007', 6, '-', 1, 303, 0, 0, 'Barra Cromada', '//\r\nBarra cromada. //\r\n1.5 m. C/ TOPES.//\r\nIncluye 2 topes.//\r\nGrip antideslizante.//\r\nMedidas: 1,50 m.	', 'Acc. Fit 007\r\nBarra de caño cromada pintada con Epoxi.\r\nIncluye 2 topes. \r\nMedidas: 1,50 m.\r\nCon grip antideslizante.\r\nUtilización: uso intensivo. Ejercicios de musculación, dominadas, abdominales, elevación de piernas entre otros.', '', '', 'no'),
(781, 'Acc. Fit 011', 6, '-', 1, 218, 0, 0, 'Barra para Puerta', '//\r\nBarra p/puerta.//\r\nCromada.//\r\nExtensible.//\r\nGrip antideslizante.			\r\n', 'Acc. Fit 011\r\nBarra cromada extensible para puerta. Con grip antideslizante.\r\nActividades para su uso: ejercicios de musculación, dominadas, abdominales, elevación de piernas entre otros.', '', '', 'no'),
(782, 'Acc. Fit 012', 6, '-', 1, 207, 0, 0, 'Bolsa de Box', '//\r\nBolsa de box.//\r\nMedidas: 1,10 m.\r\n	', 'Acc. Fit 012\r\nBolsa sin relleno de disferentes medidas para golpear. Resistente para un entrenamiento intenso. Medidas: 110 cm.\r\nMateriales de fabricación: Tela cobertura o tela cordura, cinta PP. \r\nActividades para su uso: Para Boxeo.', '', '', 'no'),
(783, 'Acc. Fit 015', 6, '-', 1, 155, 0, 0, 'Colchoneta', '//\r\nColchoneta.//\r\nMed: 1 x 0,50 x 0,03 m.//\r\nTela de alta resistencia.//\r\nP/todo tipo de ejercicio.\r\n', 'Acc. Fit 015\r\nColchoneta lavable. Confeccionada en tela de alta resistencia. Con doble costura y cierre.\r\nMedidas (largo x ancho x alto): 100 x 50 x 0,3 cm.\r\nPara todo tipo de ejericio, desde elongación hasta entrenamiento funcional y pilates.', '', '', 'no'),
(784, 'Acc. Fit 019', 6, '-', 1, 90, 0, 0, 'Colchoneta Yoga', '//\r\nColchoneta yoga.//\r\nGrosor: 0.3 cm.//\r\nGoma tramada.//\r\nPara Yoga y Pilates.//\r\nAltamente resistente.\r\n', 'Acc. Fit 019\r\nMat para entrenamiento de yoga y pilates. \r\nGrosor: 0,3 cm.\r\nMateriales de fabricación: Goma tramada altamente resistente. ', '', '', 'no'),
(785, 'Acc. Fit 022', 6, '-', 1, 39, 0, 0, 'Discos Fundición', '//\r\nDiscos fundición.//\r\n1 u. de 1,25KG.//\r\nFundición metálica.//\r\nAltamente resistente.//\r\nIdeal p/musculación.\r\n', 'Acc. Fit 022\r\nDisco de fundición altamente resistente. De 1,25 Kg.\r\nMateriales de fabricación: Fundición metálica.\r\nActividades para su uso: Ejercicios de musculación y fuerza.', '', '', 'no'),
(786, 'Acc. Fit 027', 6, '-', 1, 315, 0, 0, 'Discos Fundición', '//\r\nDiscos fundición. //\r\nDe 10KG.//\r\nFundición metálica.//\r\nAltamente resistente.//\r\nIdeal p/musculación.//\r\nFuerza y Resistencia.\r\n', 'Acc. Fit 027\r\nDisco de fundición altamente resistente. De 10 Kg.\r\nMateriales de fabricación: Fundición metálica.\r\nActividades para su uso: Ejercicios de musculación y fuerza.', '', '', 'no'),
(787, 'Acc. Fit 029', 6, '-', 1, 79, 0, 0, 'Discos Fundición', '//\r\nDiscos fundición.//\r\n1 u. de 2,5KG.//\r\nFundición metálica.//\r\nAltamente resistente.//\r\nIdeal p/musculación.	\r\n', 'Acc. Fit 029\r\nDisco de fundición altamente resistente. De 2,5 Kg.\r\nMateriales de fabricación: Fundición metálica.\r\nActividades para su uso: Ejercicios de musculación y fuerza.', '', '', 'no'),
(788, 'Acc. Fit 031', 6, '-', 1, 157, 0, 0, 'Discos Fundición', '//\r\nDiscos fundición.//\r\n1 u. de 5KG.//\r\nFundición metálica.//\r\nAltamente resistente.//\r\nEjercicios de fuerza.', 'Acc. Fit 031\r\nDisco de fundición altamente resistente. 5 Kg.\r\nMateriales de fabricación: Fundición metálica.\r\nActividades para su uso: Ejercicios de musculación y fuerza.', '', '', 'no'),
(789, 'Acc. Fit 037', 6, '-', 1, 91, 0, 0, 'Extensores Largos', '//\r\nExten. largos//\r\nLargo: 130 cm.//\r\nDiámetro: 0,10 cm.//\r\nFoam Antideslizante.//\r\nTrabajo muscular.//\r\nLocalizado en piernas.\r\n', 'Acc. Fit 037\r\nExtensor largo, con agarre y velcro para los tobillos. Largo 130 cm. - Diámetro 10 mm.\r\nMateriales de fabricación: Tubo de látex reforzado y mango de goma con foam antideslizante. \r\nPara todo tipo de trabajo muscular localizado en piernas.', '', '', 'no'),
(790, 'Acc. Fit 038', 6, '-', 1, 25, 0, 0, 'Hand grip', '//\r\nHand grip.//\r\nMetal, plástico.//\r\nIdeal p/musculación.//\r\n2 unidades.//', 'Acc. Fit 038\r\nHand grip plástico. 2 unidades. Aro metálico con manijas de plástico.\r\nActividades para su uso: Trabajos de musculación, rehabilitación.', '', '', 'no'),
(791, 'Acc. Fit 045', 6, '-', 1, 31, 0, 0, 'Mancuernas Fundición', '//\r\nMancuernas fundición.//\r\n1 u. de 1KG.//\r\nFundición metálica.//\r\nEjercicios de brazos.\r\n', 'Acc. Fit 045\r\nMancuernas de fundición. 1kg. Fundición metálica negra.\r\nPara ejercicios de brazos.', '', '', 'no'),
(792, 'Acc. Fit 048', 6, '-', 1, 94, 0, 0, 'Mancuernas Fundición', '//\r\nMancuernas fundición.//\r\n1 u. de 3KG.//\r\nFundición metálica.//\r\nEjercicios de brazos.', 'Acc. Fit 048\r\nMancuernas de fundición. 3kg. Fundición metálica negra.\r\nPara ejercicios de brazos.', '', '', 'no'),
(793, 'Acc. Fit 051', 6, '-', 1, 157, 0, 0, 'Mancuernas Fundición', '//\r\nMancuernas fundición.//\r\n1 u. de 5KG.//\r\nFundición metálica.//\r\nEjercicios de brazos.//', 'Acc. Fit 051\r\nMancuernas de fundición. 5kg. Fundición metálica negra.\r\nPara ejercicios de brazos.', '', '', 'no'),
(794, 'Acc. Fit 057', 6, '-', 1, 90, 0, 0, 'Guantes de Cuero', '//\r\nGuantes de cuero.//\r\nTalle L.//\r\n2 unidades.//\r\nP/entren. con barras.//\r\nEvapora la transp.		', 'Acc. Fit 057\r\nGuantes de cuero, descarne y dedos cortados. Permiten la evaporación de la transpiración. El par. Talle L. Con acolchado en la palma de la mano. \r\nActividades para su uso: Trabajos con barras, boxeo. ', '', '', 'no'),
(795, 'Acc. Fit 062', 6, '-', 1, 90, 0, 0, 'Guantes de Cuero', '//\r\nGuantes de cuero.//\r\nTalle M.//\r\n2 unidades.//\r\nP/entren. con barras.//\r\nEvapora la transp.', 'Acc. Fit 062\r\nGuantes de cuero, descarne y dedos cortados. Permiten la evaporación de la transpiración. El par. Talle M. Con acolchado en la palma de la mano. \r\nActividades para su uso: Trabajos con barras, boxeo. ', '', '', 'no'),
(796, 'Acc. Fit 065', 6, '-', 1, 352, 0, 0, 'Step', '//\r\nPlat. p/step.//\r\nDe alta resistencia.//\r\nAltura regulable.//\r\nEntrenam. rítmicos.//\r\nCon Módulos.	\r\n', 'Acc. Fit 065\r\nPlataforma plástica de alta resistencia con canales para bandas elásticas. Altura regulable con módulos. Medidas: 100 x 37 x 10 cm.\r\nMateriales de fabricación: Plástico inyectado, goma.\r\nPara entrenamientos rítmicos.', '', '', 'no'),
(797, 'Acc. Fit 073', 6, '-', 1, 269, 0, 0, 'Set de vinilo de 17 kg.', '//\r\nSet vinilo 17kg.//\r\n2 discos de 1 KG.c/u.//\r\n2 discos de 2,5 KG.c/u.//\r\n2 discos de 5 KG.c/u//\r\nBarra con topes.//\r\nEntrenam. localizado.\r\n', 'Acc. Fit 073\r\nEquipo completo de 17 kg. Barra con topes y discos de 1 kg (2), 2.5 kg (2), 5 kg (2).\r\nMateriales de fabricación: Plástico inyectado, metal, acero cincado, arena, cal, cemento, arandelas, chatarra troquelín.\r\nPara todo tipo de entrenamiento, localizado y de fuerza.', '', '', 'no'),
(798, 'Acc. Fit 077', 6, '-', 1, 73, 0, 0, 'Tobillera 1kg.', '//\r\nTobillera.//\r\n2 unidades de 1KG.//\r\nTela de alta resistencia.//\r\nP/todo entranamiento.//\r\nCon velcro y cierre.//\r\nLocalizado y de fuerza.', 'Acc. Fit 077\r\nTobilleras de 1kg. con cierre.\r\nMateriales de fabricación: Tela de alta resistencia con ribete, velcro y cierre.\r\nPara todo tipo de entranamiento, localizado y de fuerza.', '', '', 'no'),
(799, 'Acc. Fit 084', 6, '-', 1, 87, 0, 0, 'Tobillera 2kg.', '//\r\nTobillera.//\r\n2 unidades de 2KG.//\r\nTela de alta resistencia.//\r\nIdeal entren.localizado.//\r\nCon velcro y cierre.\r\n', 'Acc. Fit 084\r\nTobilleras de 2kg. con cierre.\r\nMateriales de fabricación: Tela de alta resistencia con ribete, velcro y cierre.\r\nPara todo tipo de entranamiento, localizado y de fuerza.', '', '', 'no'),
(800, 'Acc. Fit 086', 6, '-', 1, 102, 0, 0, 'Tobillera', '//\r\nTobillera.//\r\n2 unidades de 3KG.//\r\nTela de alta resistencia.//\r\nIdeal p/ entren. fuerza.//\r\nCon velcro y cierre.\r\n', 'Acc. Fit 086\r\nTobilleras de 3kg. con cierre.\r\nMateriales de fabricación: Tela de alta resistencia con ribete, velcro y cierre.\r\nPara todo tipo de entranamiento, localizado y de fuerza.', '', '', 'no'),
(801, 'Acc. Fit 094', 6, '-', 1, 733, 0, 0, 'Mini Tramp', '//\r\nMini Tramp.//\r\nDiámetro: 100 cm.//\r\nSup. de salto: 80 cm.//\r\nPara trabajos rítmicos.//', 'Acc. Fit 094\r\nMini trampolín, con funda. Estructura de caño hueco, con patas encastrables. Base en forma circular con enganches para resortes y lona de superficie de salto.\r\nMateriales de fabricación: Tela phermatron 10 micrones, cinta PP, caño hueco, resortes, soportes.\r\nPara trabajos rítmicos y rehabilitación.', '', '', 'no'),
(802, 'Acc. Fit silicona liquida', 6, '-', 1, 99, 110, 110, 'Lubricante para cintas', '//\r\nA base de silicona. //\r\n\r\nEnvase: 250cm3. //\r\n\r\nDisminuye la fricción. //\r\n\r\nFácil aplicación. //', 'Acc. Fit silicona liquida\r\nProducto de fácil aplicación a base de silicona, para cintas mecánicas o con motor. Prolonga la vida útil de los rodillos y el motor, también aumenta su rendimiento. Sirve para disminuir la fricción entre los componentes de la cinta. El líquido se distribuye por sí solo cuando la cinta está en funcionamiento. Envase: 250cm3.', '', '', 'no'),
(803, 'Fitage ge 801', 7, '-', 1, 450, 482, 495, 'Ejercitador de abdominales', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 130 kg. //\r\n\r\nPlegable. //\r\n\r\nAsiento y respaldo. //', 'Fitage ge 801\r\nSólida estructura de acero plegable. Reduce y tonifica cintura y abdomen. Actúa en 360 grados. Asiento y respaldo acolchado. Estructura de acero. Soporta hasta 130 Kg.\r\nPlegable. Para todo tipo de superficies.\r\n', '', '', 'no'),
(804, 'Olmo 45', 7, 'Olmo', 1, 848, 907, 933, 'Entrenador de abdominales', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx: 100 kg. //\r\n\r\nVarias posiciones. //\r\n\r\nPlegable. //', 'Olmo 45\r\nAdmite varias posiciones. \r\nPlegable\r\nPeso máximo admitido: 100 kg.', '', '', 'no'),
(805, 'Olmo 48', 7, 'Olmo', 1, 693, 741, 762, 'Swing Stepper', '//\r\nUso residencial. //\r\n\r\nPeso máx:100 Kg. //\r\n\r\nRegulación por manillar. //\r\n\r\nMonitor electrónico. //', 'Olmo 48\r\nComputadora con monitor electrónico\r\nMedidas: 80 cm largo x 47 cm de ancho x 108 cm de alto.\r\nRegulación de intensidad con manillar.\r\nPeso sugerido 100 Kg.', 'Olmo 48\r\nComputadora con monitor electrónico\r\nMedidas: 80 cm largo x 47 cm de ancho x 108 cm de alto.\r\nRegulación de intensidad con manillar.\r\nPeso sugerido 100 Kg.', '', 'no'),
(806, 'Olmo 50', -7, '-', 1, 2631, 2760, 2915, 'Simulador de Remo', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\n8 niveles. // \r\n\r\nMonitor electrónico. //', NULL, '', '', 'no'),
(807, 'Olmo 52', 7, '-', 1, 686, 734, 754, 'Entrenador de Piernas ', '//\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nUso residencial. //\r\n\r\nPlegable. //\r\n\r\nAlta resistencia. //', 'Olmo 52\r\nPlegable.\r\nPlataformas grandes y antideslizantes, para mayor comodidad.\r\nElaborado en hierro de alta resistencia.\r\n', '', '', 'no'),
(808, 'Olmo 76', 7, '-', 1, 615, 658, 676, 'Ejercitador de Abdominales', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 130 Kg. //\r\n\r\nActúa en 360 grados. //\r\n\r\nAsiento acolchado. //', 'Olmo 76\r\nSólida estructura de acero.\r\nPlegable.\r\nPara todo tipo de superficies.\r\nRuedas con rulemanes.\r\n', '', '', 'no'),
(809, 'Fitage ge 101', -2, 'Fitage', 1, 2010, 2151, 2211, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\n8 niveles. //\r\n\r\nMonitor electrónico. //', NULL, '', '', 'no'),
(810, 'Mottion 1400', 2, 'Randers', 1, 2146, 2296, 2361, 'Bicicleta Fija', '//\r\n8 niveles de esfuerzo. //\r\n\r\nAsiento regulable. //\r\n\r\nScan de pulso manual. //\r\n\r\nUso residencial. //', 'Mottion 1400\r\nRegulador con 8 niveles de esfuerzo\r\nPedales ajustables con base antideslizante\r\nAsiento amplio y confortable con altura regulable\r\nManubrio de altura regulable con goma antideslizante\r\nFunciones de la consola: velocidad, tiempo, distancia, calorías consumidas y odómetro\r\nDimensiones: 79 x 53 x 112 cm', '', '', 'no'),
(811, 'Randers 359', 2, 'Randers', 1, 15698, 16797, 17268, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso profesional. //\r\n\r\nPeso máx: 120 kg. //\r\n\r\nEstructura fuerte. //\r\n\r\nUso intensivo. //', 'Randers 359\r\nAsiento de gran tamaño regulable en altura. \r\nCómodos y amplios pedales con trabas de seguridad. \r\nManubrio diseñado para distintas posiciones. \r\nSistema magnético con palanca de 6 puntos. \r\nRuedas para fácil traslado. Pintura electrostática en polvo. \r\nTransmisión por correa.\r\nHandle Pulse Sistema de alta tecnología en control de pulsaciones por contacto.\r\nConsola electrónica: de 5 ventanas, controladora de velocidad, tiempo, distancia, calorías consumidas y pulso cardíaco. \r\nSe pueden programas mínimo y máximo de pulso, tiempo del ejercicio, calorías a consumir o distancia a \r\nrecorrer.\r\nDimensiones: 1300x490x1100mm\r\nPeso máximo de carga: 120Kg.', '', '', 'no'),
(812, 'Randers 370', 2, 'Randers', 1, 21557, 23066, 23713, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nModerno diseño. //\r\n\r\nGran estabilidad. //\r\n\r\n8 niveles de carga. //', 'Randers 370\r\nAsiento amplio con gel para total confort. Regulación hacia arriba y abajo por sistema con motor mediante tecla electrónica, posibilitando fijarlo en la posición más cómoda para el usuario.\r\n8 niveles de carga controladas electrónicamente.\r\nPintura electrostática en polvo.\r\nPatas regulables para adaptación a pisos irregulares.\r\nRuedas para su fácil traslado.\r\nPorta objetos y porta vaso.\r\nDimensiones: 1440x530x1340mm.\r\nPeso: 95Kg.\r\nVoltaje: 220V (no necesita transformador).\r\nPanel Electrónico: Con animación gráfica por LED. 9 programas pre-establecidos. Funciones simultaneas de: Velocidad + Tiempo + Distancia + Calorías consumidas + Pulso. Opción de visualización en Km/h y Calorías o RPM y Watts.\r\nHandle Pulse Sistema de alta tecnología en control de pulsaciones por contacto.', '', '', 'no'),
(813, 'Randers 380', -2, 'Randers', 1, 21557, 23066, 23713, 'Recumbent ELECTRO MAGNÉTICA', '//\r\nUso profesional. //\r\n\r\nPeso máx: 115 kg. //\r\n\r\nAsiento amplio. //\r\n\r\n8 niveles. //', NULL, '', '', 'no'),
(814, 'Randers 401hp', 2, 'Randers', 1, 2566, 2746, 2823, 'BICICLETA FIJA MAGNÉTICA', '//\r\nUso Residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nMonitor digital. //\r\n\r\nMedidor del pulso. //\r\n', 'Randers 401hp\r\nPara uso residencial. 8 niveles regulables de tensión magnética. Volante de Inercia de 5kg. Los manubrios están revestidos con grips antideslizantes. Control de pulso por contacto Hand Grip Pulse. Asiento ajustable en altura y manubrio ajustable en todas las posiciones. Monitor digital controlador de: tiempo, velocidad, distancia recorrida, calorías consumidas y pulso. \r\nPeso máximo soportado: 100 kg.\r\n', '', '', 'no'),
(815, 'Randers 455hp', 2, 'Randers', 1, 2886, 3088, 3174, 'BICICLETA FIJA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.:110 Kg. //\r\n\r\n8 niveles de esfuerzo. //\r\n\r\nAsiento en gel. //\r\n\r\nMonitor Digital. //\r\n\r\nRuedas para traslado. //\r\n\r\n', 'Randers 455hp\r\nEstructura diseñada para gente mayor o en rehabilitación muscular. Regulación de tensión magnética de 8 niveles. Carga máxima de 6Kg. Control de pulso por contacto (Hand Pulse). El Monitor Digital registra: Tiempo, Velocidad, Distancia Recorrida, Calorías Consumidas, Pulso, Odómetro y Scan.\r\nAmplio asiento regulable vertical y horizontalmente para lograr la mejor posición. Manubrio regulable que permite diferentes posibilidades de ejercicios (brazos extendidos o recogidos). Ruedas para fácil traslado. \r\nPeso máximo soportado: 110 kg.', '', '', 'no'),
(817, 'Randers 850', 2, 'Randers', 1, 4799, 5135, 5279, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso semi profesional. //\r\n\r\nPeso máx.: 150 kg. //\r\n\r\n16 niveles de tensión. //\r\n\r\nManubrio regulable. //', 'Randers 850\r\nAsiento regulable vertical y horizontalmente.\r\n16 niveles de tensión.\r\nAmplios pedales. \r\nManubrio regulable.\r\nControl de pulsaciones por contacto.\r\nMonitor Electrónico LCD con programas: Controlador de pulso, velocidad, tiempo, RPM, WATT, distancia y calorías.\r\n21 perfiles de programas\r\npre-establecidos.\r\n', '', '', 'no'),
(818, 'Randers 9000', 2, 'Randers', 1, 28202, 30176, 31022, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso profesional. //\r\n\r\nPeso máx: 150 kg. //\r\n\r\nBicicleta isotónica. //\r\n\r\nMejora Cardiovascular. //', 'Randers 9000\r\nBicicleta cardiovascular e isotónica profesional.\r\nDiseñadas para el equipamiento de gimnasios, forma parte de una familia de productos fabricados por empresas del grupo BH siguiendo los más altos estándares de calidad.\r\nConsumo Calórico: 250Kcal/h.\r\nMejora Cardiovascular.', '', '', 'no'),
(819, 'Randers 9900', 2, 'Randers', 1, 33813, 36180, 37194, 'Recumbent ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx: 190 kg. //\r\n\r\nPrecisión y fiabilidad. //\r\n\r\nConsumo de 100watts. //', 'Randers 9900\r\nLongitud: 154cm.\r\nAnchura: 56cm.\r\nAltura: 142cm.\r\nPotencia: 500 watts.\r\nRelación de transmisión: 1 /7.\r\nConsumo eléctrico: 100watts.\r\nAltura máxima del usuario: 2,10m.\r\nPeso máximo de usuario: 190 Kg.\r\nPeso de la máquina: 80 Kg.', '', '', 'no'),
(820, 'Randers C842IR', 2, 'Randers', 1, 45478, 48661, 50026, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 160 kg. //\r\n\r\n6 programas. //\r\n\r\nAuto-generador. //', 'Randers C842IR\r\nFunciona con auto-generador.\r\n6 Programas.\r\nApto para control de pulso con banda.\r\nSistema de transmisión: Correa Poli-V libre de mantenimiento\r\nTamaño: 145 x 61 x 152 cm\r\nPeso máximo de usuario: 160 Kg', '', '', 'no'),
(821, 'Randers C842IU', 2, 'Randers', 1, 38981, 41709, 42879, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 160 kg. //\r\n\r\nAuto-generador. //\r\n\r\n6 Programas. // \r\n\r\nControl de pulso. //', 'Randers C842IU\r\nFunciona con auto-generador. 6 Programas.\r\nApto para control de pulso con banda (no incluida).\r\nSistema de transmisión: Correa Poli-V libre de mantenimiento.\r\nTamaño: 127x61x152m.\r\nPeso: 59Kg.\r\nPeso máximo de usuario: 160Kg', '', '', 'no'),
(822, 'Randers FC 7000', 2, 'Randers', 1, 21434, 22934, 23577, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nFreno electromag. // \r\n\r\nEstructura de acero. //\r\n\r\nAlta resistencia. //', 'Randers FC 7000\r\nSistema de freno electromagnético.\r\nTrasmisión mediante correa Poly V.\r\nEstructura de acero de alta resistencia. \r\nMonitor: la pantalla matriz de LEDs superior muestra gráficamente la evolución del ejercicio.\r\nControl de pulso tanto por contacto en el manillar como de manera telemétrica (receptor compatible POLAR, banda para el pecho opcional).\r\nProgramas: Manual, 8 programas con perfiles predefinidos y 4 niveles de dificultad cada uno, \r\nComfort: ajuste horizontal y vertical del asiento, Ventilador Integrado en la consola, Ruedas de Transporte.\r\nEspecificaciones:\r\nLargo: 120cm\r\nAncho: 57cm\r\nAlto: 148cm\r\nPeso: 53Kg.\r\nPeso máximo de usuario: 150Kg.\r\nPotencia: 400 watts', '', '', 'no'),
(823, 'Randers FC 7500', 2, 'Randers', 1, 27170, 29072, 29887, 'Recumbent ELECTRO MAGNÉTICA', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150 kg. //\r\n\r\nAsiento con apoyo. //\r\n\r\nVentilador integrado. //', 'Randers FC 7500\r\nSistema Electromagnético y Autogenerado.\r\nTransmisión por correa V.\r\nAsiento con apoyo lumbar.\r\nVentilador potente integrado.\r\nMonitor de Led´s que indica la evolución del ejercicio y la velocidad, RPM, tiempo, distancia, calorías, watts y pulso.\r\nControl de pulso por contacto y telemétrico (receptor compatible Polar).\r\n8 programas pre-establecidos. Carga Peso admitido 150Kg.', '', '', 'no'),
(825, 'Reebok B5_1', 2, 'Reebok', 1, 5787, 6192, 6366, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nIdeal para Gimnasios. // \r\n\r\n16 niveles de tensión. // \r\n\r\n12 programas. //\r\n\r\nAsiento regulable. //', 'Reebok B5_1\r\nCuenta con un sistema electrónico de control de resistencia con ajustes desde 25 hasta 400 watts.\r\n16 niveles de ajuste de tensión. \r\nHand Pulse y receptor compatible Polar.\r\n12 programas.\r\nCarga Máxima: 150 Kg.\r\nTransmisión por polea Poly-V. \r\nConsola con Back Light. \r\nAsiento regulable vertical y horizontalmente.', '', '', 'no'),
(826, 'Reebok edge DB3', 2, 'Reebok', 1, 2699, 2888, 2969, 'BICICLETA MAGNÉTICA', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nAsiento regulable. //\r\n\r\n8 niveles. //\r\n\r\nInercia de 6 Kg. //\r\n\r\nNiveles de ajuste. //', 'Reebok edge DB3\r\nAsiento regulable en altura. \r\n8 niveles de resistencia\r\nRueda de inercia de 6Kg.\r\nRuedas para transportar\r\nNiveles de ajuste para pisos irregulares. \r\nPeso máximo admitido: 120 kilos.\r\nMonitor controlador de: velocidad, tiempo, distancia, calorías consumidas y pulso. \r\nControl de Pulso por Contacto (Hand Pulse).\r\n', '', '', 'no'),
(827, 'Zellens ZL 3120', 2, 'Zellens', 1, 10001, 10701, 11002, 'BICICLETA ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nInercia de 11 kgs. //\r\n\r\n16 niveles de esfuerzo. //', 'Zellens ZL 3120\r\nRegulador de 16 niveles de esfuerzo (10 a 300 watts)\r\nRueda de inercia de 11 kgs. \r\nPeso máximo admitido por usuario: 120 kg.\r\nMonitor electrónico con velocidad, tiempo, distancia, odómetro, RMP, calorías, recuperación y pulso cardíaco con sensor al tacto en el equipo.\r\nPedales reforzados con punteras.\r\nDiseño moderno.\r\nExcelentes detalles de terminación.\r\nEstructura sólida y resistente.', '', '', 'no'),
(828, 'Zellens ZL 3440', 2, 'Zellens', 1, 14643, 15668, 16107, 'Recumbent ELECTRO MAGNÉTICA', '//\r\n\r\nUso profesional . //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nAsiento confortable. //\r\n\r\nElectromagnético. //\r\n\r\nInercia de 11 kgs. //', 'Zellens ZL 3440\r\nAsiento y respaldo amplio, cómodo y con diseño ergonómico para un seguro reposo de la parte lumbar.\r\nSistema electromagnético.\r\nRueda de inercia de 11 kgs.\r\nMonitor electrónico con velocidad, tiempo, distancia, odómetro, RMP, calorías, recuperación y pulso cardíaco con sensor al tacto en el equipo.\r\nPedales reforzados con punteras.\r\nDiseño moderno.\r\nExcelentes detalles de terminación.\r\nEstructura sólida y resistente.', '', '', 'no'),
(830, 'Randers FC68h', 2, 'Randers', 1, 12136, 12985, 13349, 'Bicicleta Indoor', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 kg. //\r\n\r\nResistente. //\r\n\r\nInercia: 20 Kg. //', 'Randers FC68h\r\nEstructura construida en acero reforzado.\r\nSoporta usuarios de hasta 150 kg. Sistema de deslizamiento de asiento y manubrio sin puntos de referencia, lo que permite elegir la altura y distancia exacta para cada usuario. Rueda de inercia de 20Kg de resistencia.\r\nPerilla de freno para ajustar la resistencia con freno de emergencia. Bajo mantenimiento.\r\nTratamiento completo anti-corrosión. Acero inoxidable en todas las partes móviles.\r\nPintura recubierta por 2 capas de pintura en polvo. Pedales mixtos SPD-trekking adaptables. Manillar ajustable (vertical-horizontalmente).\r\nAsiento ajustable tanto vertical como horizontalmente.\r\nRegulación de la intensidad de frenada con sistema de fricción y bloqueo de emergencia. \r\nPedalera Extra-resistente, sellado en acero. \r\nRuedas para transporte.\r\nDimensiones: 1040mm largo x 630mm ancho x 1170 mm alto.\r\nPeso del equipo: 53 kg.', '', '', 'no'),
(831, 'Randers SB1', 2, 'Randers', 1, 5684, 6082, 6253, 'Bicicleta Indoor', '//\r\n\r\nRigidez y estabilidad. //\r\n\r\nManillar ergonómico. //\r\n\r\nAsiento regulable. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMonitor electrónico. //\r\n\r\nUso profesional. //', 'Randers SB1\r\nLas dimensiones son similares a las de una bicicleta de carrera, lo que permite una experiencia de ejercicio más real. Regulación de la intensidad de freno con sistema de fricción y bloqueo de emergencia para una mayor seguridad. Práctico monitor electrónico: muestra velocidad, tiempo, distancia y consumo de calorías. Manillar ergonómico de competición: diseñado para evitar problemas musculares. Microajuste de posición del asiento: facilita una cómoda posición a todo tipo de usuario. Conjunto de pedaleo para sesiones de entrenamiento intensivo. Ruedas para fácil transporte. Dimensiones: Largo: 104cm. Ancho: 55cm. Alto: 120cm.\r\nPeso del volante de inercia: 18Kg.\r\nPeso máximo de usuario recomendado: 120Kg. \r\n', '', '', 'no'),
(832, 'Fitage ge 250', 1, 'Fitage', 1, 25558, 27347, 28114, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 135 kg. //\r\n\r\nReproductor de MP3. //\r\n\r\nVel. max. 22.0 km/h. //\r\n\r\nBanda ortopédica. //\r\n\r\n21 programas. //', 'Fitage ge 250\r\nCinta motorizada para caminar y correr\r\nMotor AC de 3.0 HP\r\nInclinación automática 18%\r\nVelocidad: 1.0 a 22.0 km/h\r\nDisplay: 7? TFT a todo color\r\nReceptor de tarjeta SD y USB\r\nFunciones de entretenimiento: video música y fotos \r\nFunciones de consola: pulso manual, tiempo, velocidad, inclinación, distancia y calorías.\r\nSistema de reproducción de MP3\r\n18 programas preestablecidos.\r\nBanda ortopédica\r\nSuperficie de banda 152 x 51cm\r\nPlaca de apoyo en material MDF de alta densidad\r\nRuedas para su fácil traslado\r\nPeso máximo: 135kgs', '', '', 'no'),
(833, 'Fitage ge 224', 1, 'Fitage', 1, 24839, 26577, 27323, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx: 140 kg. //\r\n\r\n15 programas. //\r\n\r\nMotor de 3.00 HP. //', 'Fitage ge 224\r\n? Motor de 3.00 HP (AC).\r\n? Inclinación automática.\r\n? Velocidad: 1.0 a 20.0 km/h.\r\n? Amplio display LCD.\r\n? Computadora con programa de pulso cardíaco, tiempo, velocidad, distancia y calorías.\r\n? 8 amortiguadores para reducir el impacto.\r\n? Base realizada con material MDF de alta densidad.\r\n? Sensores de pulso en ambas barandas.\r\n? 15 programas preseteados.\r\n? Sistema de seguridad con llave de bloqueo automático.\r\n? Peso máximo del usuario: 140 kg.\r\n? Superficie de banda: 152 x 51 cm.\r\n? Grosor de banda: 2,8 mm.\r\n? Reproductor de MP3.\r\n? Sistema de seguridad con llave de bloqueo automático.\r\n? Visualización del programa por Matiix.', '', '', 'no'),
(834, 'Fitage ge 221', 1, 'Fitage', 1, 16459, 17541, 17999, 'Cinta para Correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 135 Kg. //\r\n\r\nMotor: 3.00HP. //\r\n\r\n12 programas. //\r\nVel.: 0 a 18Km/h. //\r\n', 'Fitage ge 221\r\nMotor de 3.00HP.\r\nVelocidad: de 1 a 18Km/h.\r\nAmplio monitor electrónico con registro de tiempo, velocidad, distancia, calorías y programa de pulso de cardíaco.\r\n12 Programas predefinidos.\r\n20 niveles de elevación.\r\nSensores de pulso por contacto en ambas empuñaduras.\r\nBase compuesta de material de alta densidad (MDF).\r\nSistema de seguridad contra la aceleración involuntaria.\r\nProtector de sobrecarga 15A.\r\nSuperficie útil: 152x51cm.\r\nGrosor de banda: 2,8mm.\r\nLlave de bloqueo automático. \r\nUso continuo recomendado: 1 hora.\r\nPeso máximo: 135Kg.', '', '', 'no'),
(835, 'Fitage ge 209', 1, 'Fitage', 1, 10420, 11150, 11462, 'Cinta para Correr', '//\r\nUso residencial. // \r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMotor: 1.5HP. //\r\n\r\nElevación. //\r\n\r\nVel.: 1-16 km/h. //\r\n\r\nComputadora 3 Leds. //', 'Fitage ge 209\r\nComputadora con 3 Leds.\r\nCuenta con 12 niveles de inclinación motorizada.\r\nFunciones: Pulso cardíaco, tiempo, velocidad, distancia y calorías\r\n12 Programas preseteados.\r\n', '', '', 'no'),
(836, 'Fitage ge 205', 1, 'Fitage', 1, 7699, 8238, 8469, 'Cinta para Caminar', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMotor de 1.0HP. //\r\n\r\n12 programas. //\r\n\r\nVel.: 0.8 a 12.0 Km/h. //\r\n', 'Fitage ge 205\r\nMotor continuo de 1.0 HP\r\n3 posiciones de inclinación (manuales)\r\nVelocidad: de 0.8 a 12.0 Km/h.\r\nDisplay con 3 Leds.\r\nComputadora con registro de tiempo, velocidad, distancia, calorías y programa de pulso cardíaco.\r\nSensores de pulso al tacto en las barandas.\r\n12 programas predefinidos.\r\nPeso máximo: 100 Kg.\r\nSuperficie útil: 105 x 37cm.\r\nSistema hidráulico para un plegado seguro.\r\nBase de material de alta densidad (MDF)\r\nRuedas para traslado.\r\nLlave de bloqueo automático. ', '', '', 'no'),
(837, 'Fitage ge 204', 1, 'Fitage', 1, 14999, 16049, 16499, 'Cinta para Correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máximo: 135 Kg. //\r\n\r\nMotor: 2HP. //\r\n\r\nVel.: 1 -18 km/h. //\r\n\r\n6 pesas de regalo! //', 'Fitage ge 204\r\nInclinación automática ajustable de 15º.\r\nMotor de 2.00HP (continuo)\r\nVelocidad: 1.0-18.00km/h\r\nCon gran display LCD con fondo azul.\r\nFunciones: Pulso cardíaco, Tiempo, Velocidad, Distancia y Calorías\r\n15 Programas preseteados\r\nPeso máximo admitido: 135 Kg..\r\n6 pesas de ejercitación de regalo (2 de 1 kilo - 2 de 1 1/2kilo - 2 de 2 kilos).\r\n', '', '', 'no'),
(838, 'Fitage ge 203', 1, 'Fitage', 1, 11999, 12839, 13199, 'Cinta de caminar y correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 130 Kg. //\r\n\r\nMotor: 2 HP. // \r\n\r\nVel.: 18 km/h. //\r\n\r\nComputadora. //\r\n\r\nInclinación. //\r\n\r\n', 'Fitage ge 203\r\nInclinación automática ajustable de 12º.\r\nMotor de 2.00HP (continuo)\r\nVelocidad: 1.0-18.00km/h\r\nGran display LCD con fondo azul.\r\nFunciones: Pulso cardíaco, Tiempo, Velocidad, Distancia y Calorías\r\n15 Programas pre-definidos.\r\nPeso máximo admitido: 130 Kg.', '', '', 'no'),
(839, 'Fitage ge 202', 1, 'Fitage', 1, 9799, 10485, 10779, 'Cinta motorizada', '//\r\n\r\nUso residencial. // \r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMotor 1.5HP. //\r\n\r\nVel.: 1-16km/h. //\r\n\r\nComputadora 3 Leds. //\r\n\r\n12 Programas. //', 'Fitage ge 202\r\nInclinación manual ajustable de 3 posiciones.\r\nMotor de 1.5HP (continuo.)\r\nVelocidad: 1.0-16.00km/h.\r\nComputadora Con 3 Leds.\r\nFunciones: Pulso cardíaco, Tiempo, Velocidad, Distancia y Calorías\r\n12 Programas preseteados.\r\nPeso máximo admitido: 120Kg.\r\n', '', '', 'no'),
(841, 'Fitage ge 201', 1, 'Fitage', 1, 7989, 8548, 8788, 'Cinta para caminar y correr', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 kg. //\r\n\r\nMotor: 1.25HP. //\r\n\r\nVel.: 0.8-12.00km/h. //', 'Fitage ge 201\r\nInclinación manual ajustable de 3 posiciones.\r\nMotor de 1.25HP (continuo).\r\nVelocidad: 0.8-12.00km/h.\r\nComputadora con 3 Leds.\r\nFunciones: Pulso cardíaco, Tiempo, Velocidad, Distancia y Calorías.\r\n12 Programas preseteados.\r\nFácil plegado con sistema neumático.\r\nPeso máximo admitido: 100Kg.\r\n', '', '', 'no'),
(842, 'Randers 555ex0', 1, 'Fitage', 1, 44709, 47839, 49180, 'Cinta de caminar y correr.', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150kg. //\r\n\r\nCinta motorizada. //\r\n\r\nMotor de 2 HP. //\r\n\r\nVel.: 1.6 a 16 km/h. //\r\n\r\n50 cm de ancho. //', NULL, '', '', 'no'),
(843, 'Randers 562', 1, 'Randers', 1, 31528, 33735, 34681, 'Cinta de caminar y correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 130 kg. //\r\n\r\nMotor de 2 HP. //\r\n\r\nCorriente alterna. //\r\n\r\nVel.: 1.6-16 km/h. //\r\n\r\nInclinación. //', 'Randers 562\r\nMotor: 3HP. \r\nVelocidad: 1,2 a 18Km/h\r\nConsola electrónica: 5 ventanas. Registra: velocidad, tiempo, distancia, calorías quemadas y pulso cardíaco. \r\nHand Grip Pulse (control de pulsaciones por contacto). \r\nSistema de Amortiguación.\r\nFácil mantenimiento: Lubricación por tubo conductor. \r\nSuperficie de banda: 140x48cm. \r\nDimensiones producto: 183x88x161cm. \r\nPeso producto: 96 kg. \r\nPeso máximo de usuario: 150kg.\r\nMotor: 3HP\r\nVel.: 1,2 a 18 Km/h\r\nMonitor electronic\r\nSistema de amortiguación\r\nPeso Máx.: 150kg\r\nUso Profesional', '', '', 'no');
INSERT INTO `producto` (`id`, `codigo`, `seccion_id`, `marca`, `display`, `precio`, `precio_prov`, `precio_mza_sj`, `nombre`, `zzzdescripcion`, `descripcion`, `htmlFicha`, `url_video`, `promocion`) VALUES
(844, 'Randers 575tx1', 1, 'Randers', 1, 55108, 58966, 60619, 'Cinta para Correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 kg. //\r\n\r\nMotor: 3 HP. //\r\n\r\nVel.: 1.6- 18 km/h. //', 'Randers 575tx1\r\nDimensiones: 190x94x160cm.\r\nSuperficie banda: 142x50cm.\r\nElevación Electrónica: 1 a 15%.\r\nPeso: 116Kg.\r\nVoltaje: 220V.\r\nPeso máximo de usuario: 150Kg. Velocidad: de 1.6 a 18Km/H.\r\nMotor de corriente de alterna de 3 HP de libre mantenimiento.\r\nFácil mantenimiento: Lubricación por tubo conductor.\r\nAmortiguadores de impacto.\r\nControl de pulsaciones por contacto.\r\nMonitor con Backlight y Programas.\r\nPantalla de LCD (NO TV) con: Hora (TIME), distancia (DIST), calorías (CAL), frecuencia cardíaca (pulso), velocidad en km / h (pantalla más grande) y programa seleccionado (que aparece sólo en el momento de la selección).\r\nOpcional: Lubricación Automática.\r\nLlave de seguridad.', '', '', 'no'),
(845, 'Randers 575txo', 1, 'Randers', 1, 48789, 52204, 53668, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nMotor de 3HP. //\r\n\r\nVel.: 1.6-18Km/H. //\r\n\r\nBanda: 142x50cm. //\r\n\r\nFácil mantenimiento. //', 'Randers 575txo\r\nDimensiones: 190x94x160cm.\r\nSuperficie banda: 142x50cm.\r\nPeso: 116Kg.\r\nVoltaje: 220V.\r\nPeso máximo de usuario: 150Kg. Velocidad: de 1.6 a 18Km/H.\r\nMotor de corriente de alterna de 3 HP de libre mantenimiento.\r\nFácil mantenimiento: Lubricación por tubo conductor.\r\nAmortiguadores de impacto.\r\nControl de pulsaciones por contacto.\r\nMonitor con Backlight y Programas.\r\nPantalla de LCD.\r\nOpcional: Lubricación Automática.\r\nLlave de seguridad.', '', '', 'no'),
(846, 'Randers 580', 1, 'Randers', 1, 49828, 53316, 54811, 'Cinta de caminar y correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 200 Kg. //\r\n\r\nMotor: 3 HP. //\r\n\r\nCorriente alterna. //\r\n\r\nAncho: 57 cm. //\r\n\r\nVel.: 1.4-18Km/H. //', 'Randers 580\r\nSistema no touch: No es necesario apretar los botones para bajar o subir la velocidad, simplemente se resuelve con un movimiento de manos sobre los sensores ubicados a los laterales del panel.\r\nInclinación electrónica de 2º a 10º regulable desde el panel.\r\nSistema de variación de velocidad electrónico.\r\nDimensiones: 2230x920x1400mm.\r\nSuperficie banda: 1570x570mm.\r\nVoltaje: 220V.\r\nPeso máximo de usuario: 200Kg\r\nVelocidad: de 1.4 a 18Km/H.\r\nMotor de corriente alterna de libre mantenimiento.\r\nPintura electrostática en polvo.\r\nPatas regulables para adaptación a pisos irregulares.\r\nFácil mantenimiento: Lubricación por tubo conductor.\r\nAmortiguadores de impacto que evitan lesiones en pies, piernas y columna.\r\nConsola electrónica.\r\n16 programas pre-establecidos con 30 niveles de intensidad (8 de velocidad + 8 de inclinación).', '', '', 'no'),
(847, 'Randers 6950bh', 1, 'Randers', 1, 64966, 69514, 71463, 'Cinta para Correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 195 Kg. //\r\n\r\nMotor de 5.0 HP. //\r\n\r\nCorriente alterna.  // \r\n\r\nVel.:0.8 a 25km/h! // \r\n\r\nEstructura reforzada. //', 'Randers 6950bh\r\nDimensiones de banda: 160x55Cm. Velocidad: 0,8-25Km/h.\r\nInclinación 0% a 15%.\r\nRodillos: 8x59cm.\r\nAmortiguación: Pro Tonic.\r\nDos ventiladores en el monitor.\r\nPeso de la máquina: 215Kgs.\r\nControl de pulso por contacto: Apto para control de pulso con banda.\r\nAltura Máxima de Usuario: 2,3m.\r\nPeso Máximo: 195 Kg.\r\nMonitor electrónico: tiempo, distancia, calorías y medición de pulso.', '', '', 'no'),
(848, 'Randers 6950tv', 1, 'Randers', 1, 85395, 91372, 93934, 'Cinta para Correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 200 Kg. //\r\n\r\nMotor: 5.0 HP. // \r\n\r\nVel:0.8-25km/h! // \r\n\r\nEstructura reforzada. //\r\n\r\nCorriente alterna. //', 'Randers 6950tv\r\nDimensiones de banda: 160x55Cm. Velocidad: 0,8-25Km/h.\r\nInclinación 0% a 15%.\r\nRodillos: 8x59cm.\r\nAmortiguación: Pro Tonic.\r\nDos ventiladores en el monitor.\r\nPeso de la máquina: 215Kgs.\r\nControl de pulso por contacto: Apto para control de pulso con banda.\r\nAltura Máxima de Usuario: 2,3m.\r\nPeso Máximo: 200 Kg.\r\nMonitor electrónico: tiempo, distancia, calorías y medición de pulso.', '', '', 'no'),
(849, 'Randers 850rx1', 1, 'Randers', 1, 75522, 80809, 83074, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 200 Kg. //\r\n\r\nMotor: 3 HP. //\r\n\r\nVel.: 1.5 a 18Km/H. //\r\n\r\nAncho: 54 cm. //', 'Randers 850rx1\r\nDimensiones: 205x93x139cm.\r\nSuperficie banda: 157x54cm.\r\nVoltaje: 220V.\r\nPeso máximo de usuario: 200 Kg. Velocidad: de 1,5 a 18Km/H.\r\nElevación eléctrica de 1 a 12%.\r\nMotor de corriente de alterna de 3 HP de libre mantenimiento.\r\nFácil mantenimiento: Lubricación por tubo conductor.\r\nSistema de amortiguamiento de impacto por deck en suspensión.\r\nControl de pulsaciones por contacto.\r\n23 programas de ejercicios.\r\nBotón de emergencia.\r\nConsola electrónica.\r\nOpcional: Lubricación Automática.\r\nPorta botella y porta celular.\r\n2 salidas de aire en el panel.', '', '', 'no'),
(850, 'Randers 850rx0', 1, 'Randers', 1, 71389, 76386, 78528, 'Cinta para Correr', '--', 'Randers 850rxo\r\nDimensiones: 205x93x139cm.\r\nSuperficie banda: 157x54cm.\r\nVoltaje: 220V.\r\nPeso máximo de usuario: 200Kg. Velocidad: de 1,5 a 18Km/H.\r\nMotor de corriente de alterna de 3 HP de libre mantenimiento.\r\nFácil mantenimiento: Lubricación por tubo conductor.\r\nSistema de amortiguamiento de impacto por deck en suspensión.\r\nControl de pulsaciones por contacto.\r\n23 programas de ejercicios.\r\nBotón de emergencia.\r\nConsola electrónica: Panel computadorizado con display en LED(velocidad, tiempo, distancia, calorías, pulsación, inclinación y scan).\r\nOpcional: Lubricación Automática.\r\nPorta botella y porta celular.\r\n2 salidas de aire en el panel', '', '', 'no'),
(851, 'Randers C932i', 1, 'Randers', 1, 84609, 90532, 93070, 'Cinta para Correr', '//\r\n\r\nUso profesional. //\r\n\r\nPeso máx.: 150 kg. //\r\n\r\nMotor AC 4 HP. //\r\n\r\nVel.: 19.03 Km/h. //\r\n\r\nAncho 56 cm. //\r\n\r\n7 programas. //', 'Randers C932i\r\nVelocidad: hasta 19,3Km/h. \r\nInclinación: 15%.\r\n7 programas. \r\nTamaño: 204x86x150cm. \r\nSuperficie Útil: 142x56cm. \r\nMotor AC 4,0HP. \r\nNo es necesario lubricar la tabla.\r\nTabla reversible (se utiliza de ambos lados brindándole una doble vida útil). Control de pulso por contacto.\r\nPeso máximo sugerido: 160 Kg.', '', '', 'no'),
(852, 'Randers C956i', 1, 'Randers', 1, 122245, 130802, 134469, 'Cinta para correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 160 kg. //\r\n\r\nMotor AC 4 HP. //\r\n\r\nVelocidad 25.5 km/h. //\r\n\r\nPulso p/ contacto. //\r\n\r\nSup: 153 x 51cm. //', 'Randers C956i\r\nVelocidad: hasta 25,5Km/h.\r\nInclinación: 15%. \r\n30 programas. \r\nTamaño: 224x89x163cm.\r\nSuperficie útil: 153x51cm. \r\nMotor AC 4,0HP. \r\nNo es necesario lubricar la tabla.\r\nTabla reversible (se utiliza de ambos lados brindándole una doble vida útil).\r\nControl de pulso por contacto. \r\nPeso máximo del usuario: 160 Kg.', '', '', 'no'),
(853, 'Randers FC 5900', 1, 'Randers', 1, 69560, 74429, 76516, 'Cinta para Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150 Kg. //\r\n\r\nMotor: AC 3 HP. //\r\n\r\nInclinación de 15%. //\r\n\r\nVel.: 0.8-22 km/h. //\r\n\r\n8 programas. //', 'Randers FC 5900\r\nMotor AC de 3HP. \r\nInclinación eléctrica hasta un 15%. \r\nVentilador potente que proporciona sensación de frescura durante el ejercicio. \r\nMonitor de LED?s superior que muestra la evolución del ejercicio e inferior con 4 ventanas que indican simultáneamente velocidad, tiempo/distancia, calorías/inclinación y pulso. \r\nControl de pulso tanto por contacto como de manera telemétrica (receptor compatible POLAR). \r\n8 programas pre-establecidos con 4 niveles de dificultad para cada uno \r\nAncho: 84 cm \r\nAlto: 200 cm \r\nPeso: 125 Kg \r\nSuperficie útil: 152 x 55 cm \r\nVelocidad: 0.8 a 22 Km/h \r\nCarga Máxima: 150 Kg \r\n', '', '', 'no'),
(854, 'Randers G6134', 1, 'Randers', 1, 16999, 18189, 18699, 'Cinta para Correr.', '//\r\nUso residencial . //\r\n\r\nPeso máx.: 135 Kg. //\r\n\r\nMotor 3.50 HP. //\r\n\r\nPlegable. //\r\n\r\n9 programas//\r\n\r\n', 'Randers G6134\r\nMotor 3.5HPP. Velocidad entre 1 y 20Km/h. Inclinación Electrónica hasta un 12%. Plegable. Monitor LCD con Backlight. 9 programas predefinidos. Botones para controlar la velocidad y la inclinación en las manijas. Control de pulso por contacto. Llave de seguridad. Sistema de amortiguación. Dimensiones:188x86x137cm. \r\nSuperficie útil: 126x51cm. \r\nPeso máximo de usuario:135kg.', '', '', 'no'),
(855, 'Reebok I run', 1, 'Reebok', 1, 8499, 9094, 9349, 'Cinta de caminar y correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nMotor: 1.75 HP. //\r\n\r\nVel.: 0.8-14km/h. //\r\n\r\n6 programas. //\r\n\r\n2 niveles. //', 'Reebok I run\r\nCinta motorizada para caminar y correr.\r\nMotor: 1.75HP. \r\nVelocidad: 0,8 a 14Km/h. \r\nSuperficie útil: 40x120cm. \r\nPeso máximo admitido: 100 Kg.\r\n6 programas (3 de objetivo + 3 pre-establecidos). \r\n2 niveles de inclinación.\r\nHand Pulse. \r\nConsola con Back Light ajustable a la altura del usuario.', '', '', 'no'),
(856, 'Reebok T200l', 1, 'Reebok', 1, 10999, 11769, 12099, 'Cinta de caminar y correr', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nMotor: 1.75 HP. //\r\n\r\nVel.: 0.8-16km/h. //', 'Reebok T200l\r\nMotor: 1.75HP. \r\nVelocidad: 0,8 a 16Km/h. \r\n7 programas + 1 manual. \r\nConsola con Back Light.\r\nHand Pulse. \r\nPeso máximo admitido: 120Kg. \r\nInclinación Electrónica en 12 niveles\r\nSistema de amortiguación Swing Arm\r\nSuperficie útil: 44x130cm.', '', '', 'no'),
(857, 'Fitage ge 200', 1, 'Fitage', 1, 5229, 5595, 5751, 'Cinta para Caminar', '//\r\nUso: residencial. //\r\n\r\nVel. max. 12.0 km/h. //\r\n\r\nDisplay: LCD. //\r\n\r\nPeso máximo: 100kgs. //', 'Fitage ge 200\r\nCinta motorizada para caminar\r\nMotor DC de 1.0 HP\r\nVelocidad: 1.0 a 12.0 km/h\r\nDisplay: LCD\r\nFunciones de consola: pulso manual, tiempo, velocidad, inclinación, distancia y calorías.\r\n12 programas preestablecidos.\r\nSuperficie de banda 107,40 x 37cm\r\nLlave de seguridad\r\nRuedas para su fácil traslado\r\nPlegable para su fácil guardado\r\nPeso máximo: 100kgs', '', '', 'no'),
(858, 'Randers 555ex1', 1, 'Randers', 1, 51438, 55039, 56582, 'Cinta de Correr', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 150 kg. //\r\n\r\nInclinación. //\r\n\r\nVel.: 1.6-16 km/h. //\r\n\r\nMotor: 2 HP. // \r\n\r\nCorriente Alterna. //', 'Randers 555ex1\r\nInclinación electrónica de 0 a 15 niveles (16,6%). Velocidad: 1.6 a 16 KM/Hs.\r\nCarga Máxima: 150 Kg.\r\nSuperficie Útil (tamaño de la banda): 142 cm largo x 50 cm ancho.\r\nTamaño Producto: 183x86x136cm.\r\nPeso del Producto: 108Kg.\r\nMotor: 2 HP. Corriente Alterna.\r\nNo necesita Mantenimiento.\r\nMonitor con Backlight y Programas.Pantalla de LCD con: Hora (TIME), distancia (DIST), calorías (CAL), frecuencia cardíaca (pulso), velocidad en km/h y programa seleccionado.\r\nSistema de control de Pulso: Por Contacto I(Hand Pulse).', '', '', 'no'),
(859, 'Randers yv-30', 9, 'Randers', 1, 20056, 21460, 22062, 'Plataforma Vibratoria', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 180kg. //\r\n\r\nUso intenso. //\r\n\r\nDos motores. //\r\n\r\n5 programas. //\r\n\r\nTriplanar. //', 'Randers yv-30\r\nDos motores de 200 W\r\nGran estabilidad.\r\n5 programas.\r\nMonitor ?Dot Matrix?. \r\nFrecuencia de la vibración: 30, 35, 40 y 45 Hz.\r\nAgarre central (hipoalergénico) para una mayor comodidad.', '', '', 'no'),
(860, 'Randers EFX 576i', 4, 'Randers', 1, 111870, 119701, 123057, 'CAMINADOR ELÍPTICO ELECTRO-MAGNÉTICO', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 160 kg. //\r\n\r\n15-40 grados. //\r\n\r\n20 niveles. //', 'Randers EFX 576i\r\nBrazos móviles. Funciona con auto-generador. Control de pulso por contacto. Apto para control de pulso con banda (no incluida).\r\n14 programas.\r\nCrossRamp ajustable entre 15-40 grados. \r\nTamaño: 203x81x173. \r\nPeso: 153Kg. \r\nPeso máximo del usuario: 160Kg. \r\nNiveles de Resistencia: 1-20', '', '', 'no'),
(861, 'Randers FC249', 4, 'Randers', 1, 26441, 28292, 29085, 'CAMINADOR ELÍPTICO ELECTRO-MAGNÉTICO', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 130 kg. //\r\n\r\nElectromagnético. //\r\n\r\n16 niveles. //', 'Randers FC249\r\nSistema electromagnético y autogenerado, con lo que no es necesaria la conexión eléctrica para su uso. \r\nMovimiento de brazos. \r\nMonitor de 4 ventanas LED con 12 perfiles de ejercicio.\r\n16 niveles de intensidad cada uno, 4 programas de control del ritmo cardíaco, un test de recuperación, un programa de watts constantes y un perfil personalizable. \r\nMedición de pulso inalámbrica. \r\nPosapiés sobredimensionados y antideslizantes.\r\nEspecificaciones:\r\nLargo: 183cm.\r\nAncho: 65cm.\r\nAlto: 161cm.\r\nPeso: 74Kg.\r\nPeso máximo de usuario recomendado: 130Kg.\r\nSistema generador equivalente a una rotación de la masa de 35Kg.', '', '', 'no'),
(862, 'Randers SK9100', 4, 'Randers', 1, 44550, 47669, 49005, 'CAMINADOR ELÍPTICO ELECTRO-MAGNÉTICO', '//\r\nUso profesional. //\r\n\r\nPeso máx.: 190 kg. //\r\n\r\nPotencia: 600 Watts. //\r\n\r\nElectromagnético. //', 'Randers SK9100\r\nPotencia: 600 Watts.\r\nRelación de transmisión: 1/12. Sistema de transmisión: Correa Poli-V libre de mantenimiento.\r\nSistema de freno (tensión): Electromagnético con generador.\r\n40 Programas.\r\nInformación de pantalla: Tiempo, Distancia, Caloras y Control de pulso por contacto. \r\nApto para control de pulso con banda.\r\nAltura Máxima de Usuario: 2,3m.\r\nPeso Máximo Usuario: 190Kg.', '', '', 'no'),
(863, 'Safari 1/11', 8, 'Randers', 1, 1620, 1726, 1815, 'Safari 1', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 6. //\r\n\r\nRodado: 20''''. \r\n\r\n', NULL, '', '', 'no'),
(864, 'Safari 2/11', 8, 'Randers', 1, 1707, 1818, 1911, 'Safari 2', '//\r\n\r\nCuadro: Acero. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 18. //\r\n\r\nRodado: 24''''. \r\n\r\n', NULL, '', '', 'no'),
(865, 'Safari 3/11', 8, 'Randers', 1, 1901, 2025, 2129, 'Safari 3', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 18. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(866, 'Safari 1/12', 8, 'Randers', 1, 1864, 1985, 2088, 'Safari 1  ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 6. //\r\n\r\nCierre rápido. //\r\n\r\nRodado: 20''''. //', NULL, '', '', 'no'),
(867, 'Safari 2/12', 8, 'Randers', 1, 2027, 2159, 2271, 'Safari 2  ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 18. //\r\n\r\nCierre rápido. //\r\n\r\nRodado: 24''''. //', NULL, '', '', 'no'),
(868, 'Safari 3/12', 8, 'Randers', 1, 2184, 2326, 2446, 'Safari 3  ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 18. //\r\n\r\nCierres rápidos. ', NULL, '', '', 'no'),
(869, 'Safari 4 Dama/12', 8, 'Randers', 1, 2144, 2283, 2401, 'Safari 4 Dama  ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 18. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(870, 'All Terra 4/11', 8, 'Randers', 1, 2750, 2928, 3080, 'All Terra 4 ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(871, 'All Terra 4 Disco/11', 8, 'Randers', 1, 3079, 3279, 3448, 'All Terra 4 Disco', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: A disco. //\r\n\r\nVelocidades: 21. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(872, 'All Terra 4 Dama/11', 8, 'Randers', 1, 2750, 2928, 3080, 'All Terra 4 Dama', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(873, 'All Terra 5/11', 8, 'Randers', 1, 2853, 3039, 3196, 'All Terra 5', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(874, 'All Terra 7/11', 8, 'Randers', 1, 3172, 3378, 3552, 'All Terra 7', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 27. //\r\n\r\nCierres rápidos. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(875, 'All Terra 7.5/11', 8, 'Randers', 1, 4166, 4437, 4666, 'All Terra 7.5', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 27. //\r\n\r\nLlantas: Doble pared. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(876, 'All Terra Basic/13', 8, 'Randers', 1, 2770, 2950, 3103, 'All Terra Basic ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. ', NULL, '', '', 'no'),
(877, 'All Terra Basic Dama/13', 8, 'Randers', 1, 2770, 2950, 3103, 'All Terra Basic Dama ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. //\r\n\r\nLlantas: Aluminio. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(878, 'All Terra Attack/13', 8, 'Randers', 1, 3030, 3227, 3394, 'All Terra Attack ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. //\r\n\r\nRodado: 26''''. ', NULL, '', '', 'no'),
(879, 'All Terra Attack Disc/13', 8, 'Randers', 1, 3342, 3559, 3743, 'All Terra Attack Disc ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: A disco. //\r\n\r\nVelocidades: 21. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(880, 'All Terra Pro/13', 8, 'Randers', 1, 3274, 3487, 3667, 'All Terra Pro ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 24. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(881, 'All Terra Elite/13', 8, 'Randers', 1, 3660, 3898, 4100, 'All Terra Elite ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 27. //\r\n\r\nRodado: 26''''. //', NULL, '', '', 'no'),
(882, 'Freetime 4', 8, 'Randers', 1, 1930, 2055, 2161, 'FREETIME 4 ', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 6. //\r\n\r\nRodado: 28''''. //\r\n\r\nCierres rápidos. //', NULL, '', '', 'no'),
(883, 'Freetime 4 Dama', 8, 'Randers', 1, 1930, 2055, 2161, 'Freetime 4 Dama', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 6. //\r\n\r\nRodado: 28''''. //\r\n\r\nCierres rápidos. //', NULL, '', '', 'no'),
(884, 'Primavera 5', 8, 'Randers', 1, 1768, 1882, 1980, 'Primavera 5 Dama', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 1. //\r\n\r\nRodado: 26''''. //\r\n\r\nCierre rápido. //', NULL, '', '', 'no'),
(885, 'Primavera 8', 8, 'Randers', 1, 2017, 2148, 2259, 'Primavera 8 Dama', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 1. //\r\n\r\nRodado: 26''''. //\r\n\r\nCierre rápido. //', NULL, '', '', 'no'),
(886, 'Amelie', 8, 'Randers', 1, 2299, 2448, 2575, 'Amelie Dama', '//\r\n\r\nCuadro: Acero. //\r\n\r\nHorquilla: Rígida. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 6. //\r\n\r\nRodado: 26''''. //\r\n\r\nCierre rápido. //', NULL, '', '', 'no'),
(888, 'Randers 058', 0, 'Randers', 1, 560, 587, 620, 'Entrenador de piernas', '//\r\nUso residencial. //\r\n\r\nPeso máx.: 100 Kg. //\r\n\r\nFortalece piernas. //\r\n\r\nDeslizamiento lateral. //', NULL, '', '', 'no'),
(889, 'Randers Remo R307', 0, 'Randers', 1, 3863, 4133, 4249, 'Sistema de Remo', '//\r\n\r\nUso residencial. //\r\n\r\nPeso máx.: 110 kg. //\r\n\r\nSistema magnético. //\r\n\r\nPedaleo suave. //', NULL, '', '', 'no'),
(890, 'Randers 130', 0, 'Randers', 1, 1670, 1786, 1836, 'Banco de Pesas', '//\r\nBanco plegable. //\r\n\r\n4 niveles de inclinación. //', NULL, '', '', 'no'),
(891, 'Randers PVS', 0, 'Randers', 1, 23984, 25663, 26383, 'Sistema Personal de Visión', '//\r\nUso profesional. //\r\n\r\nTV de 12 pulgadas. //', NULL, '', '', 'no'),
(892, 'Fitage ge 410', 0, 'Fitage', 1, 8999, 9629, 9899, 'CAMINADOR ELÍPTICO ELECTRO-MAGNÉTICO', '//\r\n\r\nUso semiprofesional. //\r\n\r\nPeso máx.: 120 Kg. //\r\n\r\nAsiento ergonómico. //\r\n\r\nManubrio con sensores. //', NULL, '', '', 'no'),
(893, 'SV Ripped Max', 10, '', 1, 130, 0, 0, 'Ripped Max', '//\r\nSuplemento dietario. // \r\nSin efecto rebote. //\r\nPresentación: 60 tabs. //\r\nQuemador de grasas.', 'SV Ripped Max\r\nAYUDA AL DESCENSO DE PESO, SIN EFECTO REBOTE.\r\n? Actúa sobre las grasas (quemador de grasas). \r\n? Ayuda al descenso de peso.\r\n? Mejora la definición muscular.\r\nSuplemento dietario que ayuda a bajar peso corporal.\r\nRipped Max está formulado para que, con sólo dos tabletas completes tu dosis diaria. Ideal para deportistas.\r\nPresentación: 60 tabs.', '', '', 'no'),
(894, 'SV Fat Burner', 10, 'ENA', 1, 115, 0, 0, 'Fat Burner', '//\r\nSuplemento dietario. // \r\nActúa s/las grasas. //\r\n90 tabs. ', 'SV Fat Burner\r\nAYUDA A BAJAR PESO SIN EFECTO REBOTE\r\n? Actúa sobre las grasas. \r\n? Ayuda al descenso de peso.\r\n? Mejora la definición muscular.\r\n? Fat Burner es un suplemento dietario que te ayuda a bajar tu peso corporal.\r\nFormulado con aminoácidos, L-Carnitina, cromo y lecitina de soja, para personas dinámicas que quieren suplementar su actividad diaria para estar en forma.\r\nPresentación: 90 tabs de 800 mg c/u.', '', '', 'no'),
(895, 'SV Whey Protein', 10, '', 1, 230, 0, 0, 'Whey Protein', '//\r\nSuplemento dietario. // \r\nSabor: Vainilla. //\r\n79% de pura proteína.//\r\nMejora la definición.//\r\nCrecimiento muscular.', 'SV Whey Protein\r\nSuplemento dietario elaborado con proteína de suero de leche. Proporciona un gran apoyo en la nutrición de quienes quieren aumentar la masa muscular y mejorar la recuperación.\r\nCON 79% DE PURA PROTEINA INSTANTÁNEA.\r\nSabor: Vainilla.\r\n? Ayuda al crecimiento de masa muscular. \r\n? Ayuda al crecimiento de tejidos.\r\n? Favorece la recuperación.\r\n? Mejora la definición.\r\n? Gran apoyo en la nutrición del deportista. \r\n6,6 GR. DE AC. GLUTAMICO (X ING. DIARIA)\r\n8,5 GR. DE BCAA LEU + ILEU + VAL. (X ING. DIARIA)\r\n79,3% DE PROTEÍNAS\r\nPresentación: 1.000 gr de polvo instantáneo\r\n', '', '', 'no'),
(896, 'SV Glutamina', 10, 'ENA', 1, 130, 0, 0, 'Glutamina', '//\r\nSuplemento dietario. // \r\nRápida recuperación. //\r\nGlutamina 100% pura. //\r\n0% de azúcar. //\r\n0% de grasas.', 'SV Glutamina\r\nAYUDA A LA RÁPIDA RECUPERACIÓN EN DEPORTES DE MÁXIMO ESFUERZO.\r\n? Glutamina sin aditivos, 100% pura. \r\n? Previene pérdida de masa muscular.\r\n? Aporta rápida recuperación física.\r\n? Ayuda a la reparación de tejidos dañados.\r\n? La Glutamina es ideal para deportes que requieren de un mayor esfuerzo.\r\n5 GR. DE GLUTAMINA PURA X DOSIS\r\n0% DE AZUCAR\r\n0% DE GRASAS\r\nPresentación: 150 gr en polvo.', '', '', 'no'),
(897, 'SV Hydroxy Max', 10, 'ENA', 1, 170, 0, 0, 'Hydroxy Max', '//\r\nSuplemento dietario. // \r\nTermogénico. //\r\nPresentación: 120 tabs.', 'SV Hydroxy Max\r\nTERMOGÉNICO. \r\n? Actúa sobre las grasas transformándolas en energía (quema grasas). \r\n? Ayuda al descenso de peso.\r\n? Mejora el sistema circulatorio y la definición muscular.\r\n? Eleva los niveles de energía. \r\nHydroxy Max es termogénico: Las sustancias termogénicas generan "calor" ayudando a reducir peso y grasa corporal (termogénesis).\r\nSuplemento dietario a base de garcinia, taurina, té verde, naranjas amargas, hydroxy-max, tirosina, guaraná, ginseng siberiano y uva ursi.\r\nCon el agregado de Ginseng Siberiano mejora el rendimiento psicofísico.\r\n1000 MG. DE GARCINIA CAMBOGIA\r\n500 MG. DE TAURINA (X ING. DIARIA)\r\n160 MG. DE CARNITINA (X ING. DIARIA)\r\n60 MG. GINSENG SIBERIANO (X ING. DIARIA)\r\nPresentación: 120 tabs.', '', '', 'no'),
(898, 'SV Muscle Max', 10, 'ENA', 1, 190, 0, 0, 'Muscle Max', '//\r\nSuplemento dietario. // \r\nDetoxificante. //\r\nPresentación: 100 tabs.', 'SV Muscle Max\r\nFAVORECE EL CRECIMIENTO DE TEJIDOS Y MÚSCULOS. \r\n? Favorece el desarrollo de masa muscular y la recuperación. \r\n? Repara el sistema inmunológico. \r\n? Acelera el metabolismo del exceso de grasa.\r\n? Actúa como detoxificante.\r\nMuscle Max, es una combinación de 3 aminoácidos (L-arginina, L-lisina y L-ornitina) que son de gran importancia en la producción natural de la hormona de crecimiento y del óxido nítrico.\r\nFavorece el crecimiento de los tejidos y músculos, acelera el metabolismo del exceso de grasas, ayuda a la reparación del sistema inmunológico y actúa como detoxificante, aumentando de esta manera la vitalidad de la gente activa y el deportista.\r\n600 MG. DE L-ARGININA\r\n600 MG. DE L-LISINA\r\n600 MG. L- ORNITINA\r\nPresentación: 100 tabs.', '', '', 'no'),
(899, 'SV Creatina', 10, 'ENA', 1, 100, 0, 0, 'Creatina Monohidrato', '//\r\nSuplemento dietario. // \r\nPura creatina// \r\n150 gr. en polvo. //\r\n0% de azúcar. //\r\n0% de grasas. //\r\nSin aditivos.', 'SV Creatina\r\nPURA CREATINA SIN ADITIVOS. \r\n? Mejora la potencia muscular.\r\n? Retrasa la fatiga muscular.\r\n? Reduce la producción de radicales libres.\r\n? Mejora la recuperación muscular.\r\nSuplemento dietario para ayudarte a que rindas mucho más durante el entrenamiento y la competencia.\r\n8 GR. DE CREATINA PURA X DOSIS\r\n0% DE AZÚCAR\r\n0% DE GRASAS\r\nPresentación: 150 gr. en polvo.', '', '', 'no'),
(900, 'SV Creatina Ethyl', 10, 'ENA', 1, 170, 0, 0, 'Creatina Ethyl Ester', '//\r\nSuplemento dietario. // \r\n5 veces más efectiva. //\r\nPresentación: 120 tabs. //\r\n0% de azúcar. //\r\nPotencia muscular.', 'SV Creatina Ethyl\r\nMEJORA EL RENDIMIENTO FÍSICO.\r\n\r\n? Mejora la potencia muscular.\r\n? Retrasa la fatiga muscular.\r\n? Reduce la producción de radicales libres.\r\n? Mejora la recuperación muscular.\r\n? 5 veces más efectiva que la Creatina monohidratada.\r\n\r\nCreatina Ethyl Ester, para ayudarte a mejorar tu rendimiento físico.\r\nComparada con la Creatina Monohidrato, tiene un mejor perfil de absorción y aprovechamiento, posibilitando más beneficios con una cantidad menor de creatina.\r\n5 VECES MÁS EFECTIVA (COMO MÍNIMO)\r\n0% DE AZÚCAR\r\n120 TABLETAS\r\nPresentación: 120 tabs.', '', '', 'no'),
(901, 'SV Cell Max', 10, 'ENA', 1, 190, 0, 0, 'Cell Max', '//\r\nSuplemento dietario. // \r\nAumento de energía. //\r\nPolvo x 1.040 gr. //\r\nMejora la performance. //\r\nSabor a naranja.', 'SV Cell Max\r\nCON ACIDO LIPOICO, CREATINA Y TAURINA\r\n? Aumento de masa muscular.\r\n? Aumento de peso y de energía.\r\n? Mejora performance, fuerza e intensidad de entrenamientos.\r\n? Mejora la absorción de la creatina.\r\n? Con taurina y ácido lipoico.\r\nCell Max es un suplemento dietario para ayudar a que aumentes de volumen de tu masa muscular. Está formulado para mejorar la absorción de la creatina. Contiene taurina, ácido lipoico y creatina.\r\nEs múy rico y tiene un exquisito sabor a naranja.\r\n8 GR. DE CREATINA \r\n1 GR. DE TAURINA\r\n200 MG DE ÁCIDO LIPOICO\r\nPresentación: polvo x 1.040 gr.', '', '', 'no'),
(902, 'SV Carnitina', 10, 'ENA', 1, 103, 0, 0, 'L- Carnitina', '//\r\nSuplemento dietario. // \r\n60 cápsulas. //\r\nActúa sobre las grasas. //', 'SV Carnitina\r\nAYUDA A CONVERTIR GRASAS EN ENERGÍA.\r\nEN CÁPSULAS.\r\n? Actúa sobre las grasas transformándolas en energía (quemador de grasas).\r\n? Ayuda al descenso de peso.\r\n? Mejora el sistema circulatorio.\r\nEs un aminoácido que favorece la conversión de ácidos grasos en energía. Ayuda a mantener normales los niveles de colesterol y triglicéridos, mejorando el sistema circulatorio.\r\nIdeal para ejercicios aeróbicos de larga duración, o para el cansancio crónico.\r\n1500 MG. DE L-CARNITINA (X ING. DIARIA)\r\n500 MG. DE L-CARNITINA (X CÁPSULA)\r\nPresentación: 60 cápsulas de 500 mg c/u', '', '', 'no'),
(903, 'SV Carbo Fuel', 10, 'ENA', 1, 75, 0, 0, 'Carbo Fuel', '//\r\nSuplemento dietario. // \r\nSabor naranja. //\r\nRecupera y rehidrata. //\r\n450 gr en polvo. //', 'SV Carbo Fuel\r\nFUENTE DE ENERGÍA INSTANTÁNEA PARA TODOS LOS DEPORTES\r\n? Aporte de energía instantánea para cualquier tipo de deporte.\r\n? Recupera y rehidrata rápidamente. \r\nCarbo Fuel es fuente de energía instantánea para todos los deportes. \r\nFavorece además, la recuperación y la rehidratación rápida del cuerpo, antes o durante la actividad física. \r\nEs muy rico y tiene sabor naranja.\r\n44 GR. DE CARBOHIDR.\r\n95 MG. DE SODIO\r\n92 MG. DE POTACIO\r\n37 MG DE MAGNESIO\r\n0% DE GRASAS\r\nPresentación: 450 gr en polvo', '', '', 'no'),
(904, 'SV Bcaa2000', 10, 'ENA', 1, 130, 0, 0, 'Bcaa 2000', '//\r\nSuplemento dietario. // \r\nExcelente recuperador. //\r\nCrecimiento muscular. //\r\n120 cápsulas. //\r\nP/ejercicios intensos.', 'SV Bcaa2000\r\nRECUPERADOR MUSCULAR EN CÁPSULAS.\r\nIDEAL PARA EJERCICIOS INTENSOS.\r\n? Excelente recuperador.\r\n? Mejora el crecimiento muscular.\r\n? Proporciona energía metabólica a los músculos.\r\n? Disminuye la degradación de proteínas durante ejercicios intensos.\r\nElaborado con aminoácidos ramificados, esenciales y cristalinos en forma de "L" que mejoran el desarrollo muscular y disminuyen la degradación de proteínas durante los ejercicios intensos, siendo un excelente recuperador para deportistas. No necesita digestión previa para ser absorbido.\r\n814 MG. DE L-LEUCINA (X INGESTA DIARIA).\r\n118 MG. DE L-ISOLEUCINA (X INGESTA DIARIA).\r\n814 MG. DE L-VALINA (X INGENTA DIARIA).\r\n\r\nPresentación: 120 cápsulas de 439 mg. c/u', '', '', 'no'),
(906, 'Safari 5/12', 8, 'Olmo', 1, 2295, 2445, 2571, 'Safari 5  ', '//\r\n\r\nCuadro: Aluminio. //\r\n\r\nHorquilla: C/Suspensión. //\r\n\r\nFrenos: V-brake. //\r\n\r\nVelocidades: 21. //\r\n\r\nCierres rápidos. ', NULL, '', '', 'no'),
(907, 'Randers 200', 0, 'Randers', 1, 921, 986, 1013, 'TABLA PARA ABDOMINALES', '\r\nPlegable//\r\n5 niveles ajustables.//\r\nCon 4 rodillo Foam.\r\n\r\n\r\n', NULL, '', '', 'no'),
(908, 'Randers 140', 0, 'Randers', 1, 2407, 2575, 2648, 'BANCO DE PESAS', 'Plegable//\r\n\r\nAltura regulable//\r\n\r\n4 niveles de inclinación//\r\n\r\nClips asegura discos', NULL, '', '', 'no'),
(919, 'Zellens ZL 8080', 2, 'Zellens', 1, 6346, 6791, 6981, 'Bicicleta Indoor', NULL, 'Zellens ZL 8080\r\nDisco inercial de 18Kg. \r\nConsola con programa de tiempo, velocidad, distancia y calorías.\r\nPerilla para ajustar la resistencia con sistema de fricción.\r\nSistema de transmisión a correa.\r\nManubrio forrado en goma antideslizante ajustable en altura y distancia. \r\nAsiento ajustable en altura y distancia. \r\nSoporte para colocar caramañola.\r\nPedales de aluminio con punteras.\r\nFreno de emergencia.\r\nRuedas de transporte para su fácil traslado.\r\nPeso máximo del usuario: 125Kg.', '', '//www.youtube.com/embed/th4tFjDhT_4?rel=0', 'no'),
(920, 'Mottion 7100', 2, 'Mottion', 1, 2899, 3102, 3189, 'Bicicleta magnética', 'Uso residencial. //\r\n\r\nSistema magnético. //\r\n\r\n8 niveles de esfuerzo.//\r\n\r\nMonitor electrónico. //\r\n\r\nControl del pulso. //\r\n\r\nPeso máx.: 100Kg. //', 'Mottion 7100\r\nBicicleta horizontal magnética.\r\nRueda de inercia de 5kg.\r\n8 niveles de esfuerzo.\r\nMonitor electrónico: Tiempo, distancia, calorías, velocidad y pulso cardíaco. \r\nSensor de pulso al tacto.\r\nPedales con punteras.\r\nCorrea de transmisión suave y silenciosa.\r\nProducto preparado para uso residencial.\r\nPeso máximo admitido: 100Kg.', '', 'https://www.youtube.com/embed/FY7-PXIJErI?rel=0', 'no'),
(921, 'Reebok BZ7', 2, 'Reebok', 1, 3739, 4001, 4113, 'Bicicleta Fija', NULL, 'Reebok_bz7\r\nCuenta con una rueda de inercia de 7Kg.\r\nTiene 8 niveles de tensión regulables manualmente.\r\nPosee control de pulso por contacto (Hand Pulse).\r\nMonitor LCD controlador de: tiempo, velocidad, RPM, distancia recorrida y calorías consumidas.\r\nAsiento confortable.\r\nPeso máximo: 120 Kg.\r\nMedidas: 97x51x132cm.', '', '', 'no'),
(925, 'REEBOK BZ9', 2, 'Reebok', 1, 4534, 4851, 4987, 'Bicicleta Fija', NULL, 'Reebok_bz9\r\nPara uso Semiprofesional. 32 niveles diferentes de tensión. Rueda de inercia de 9Kg. Posee control de pulso por contacto (Hand Pulse) y un asiento muy confortable. Monitor LCD controlador de: tiempo, veloicidad, RPM, distancia recorrida y calorías consumidas.\r\nPeso máximo soportado: 150Kg. ', '', '', 'no'),
(926, 'RANDERS 900SP1', 2, 'Randers', 1, 4711, 5040, 5182, 'Bicicleta Indoor', NULL, 'Randers 900sp1\r\nPosee regulación de tensión a rosca, con freno de emergencia. Además, incluye transmisión por cadena y su asiento es regulable horizontal y verticalmente, y también su manubrio, que es regulable en altura. Los pedales incluyen trabas de seguridad y tiene apoya brazos, consiguiendo así una posición más cómoda. Dimensiones: Largo: 1210mm. Ancho: 500mm. Alto: 1150mm.\r\nPeso de la rueda de inercia: 18Kg.\r\nPeso máximo de usuario recomendado: 120Kg.', '', '', 'no'),
(928, 'RANDERS 200', 7, 'Randers', 1, 921, 986, 1013, 'Tabla para abdominales', '', 'Randers 200\r\nTabla para abdominales. Plegable. Para ejercitar abdominales y músculos del tren superior. 5 Niveles ajustables. Diseño confortable con 4 rodillos de Foam para piernas. Dimensiones: 128x36x63 cm.', '', '', 'no'),
(931, 'RANDERS 060', 7, 'Randers', 1, 1499, 1604, 1649, 'Para piernas y abdominales', '', 'Randers 060\r\nPara uso residencial. Posee monitor digital. Tiene diferentes niveles de intensidad. Realiza 3 ejercicios al mismo tiempo: quemar grasa corporal, tonificar y fortalecer la parte externa e interna de los muslos.', '', '', 'no'),
(932, 'RANDERS 130', 7, 'Randers', 1, 1670, 1786, 1836, 'Banco de pesas', NULL, 'Randers 130\r\nDiseño confortable con 4 cuatro rodillos de Foam para piernas.\r\nClips para asegurar los discos. \r\nDimensiones: 150 x 77 x 101cm', '', '', 'no'),
(933, 'RANDERS 140', 7, 'Randers', 1, 2407, 2575, 2648, 'Banco de pesas', NULL, 'Randers 140\r\nBanco de Pesas. Plegable. Altura regulable de soportes de Barra. 4 niveles de inclinación con posición recta incluida. Estación para realizar ejercicio ¨Mariposa¨. Diseño confortable con 4 rodillos de Foam para piernas. Clips para asegurar los discos. Dimensiones: 146 x 121 x 107cm', '', '', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rodado`
--

CREATE TABLE IF NOT EXISTS `rodado` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(50) NOT NULL,
  `horquilla` enum('Rigida','Con suspensión') NOT NULL,
  `rodado` enum('20','22','24','26','28') NOT NULL,
  `tipo_rodado` enum('mtb','paseo') NOT NULL,
  `velocidades` smallint(2) NOT NULL,
  `frenos` enum('a disco','V-brake') NOT NULL,
  `cuadro` enum('Acero','Aluminio') NOT NULL,
  `talle_cuadro` varchar(222) NOT NULL,
  `apta_freno` varchar(222) NOT NULL,
  `cierre_rapido` enum('si','no') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rodado_id` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `rodado`
--

INSERT INTO `rodado` (`id`, `producto_id`, `codigo`, `horquilla`, `rodado`, `tipo_rodado`, `velocidades`, `frenos`, `cuadro`, `talle_cuadro`, `apta_freno`, `cierre_rapido`) VALUES
(28, 863, 'Safari 1/11', 'Rigida', '20', 'mtb', 6, 'V-brake', 'Acero', '-', '-', 'no'),
(29, 864, 'Safari 2/11', 'Con suspensión', '24', 'mtb', 18, 'V-brake', 'Acero', '-', '-', 'no'),
(30, 865, 'Safari 3/11', 'Rigida', '26', 'mtb', 18, 'V-brake', 'Acero', '-', '-', 'no'),
(31, 866, 'Safari 1/12', 'Con suspensión', '20', 'mtb', 6, 'V-brake', 'Aluminio', '-', '-', 'si'),
(32, 867, 'Safari 2/12', 'Con suspensión', '24', 'mtb', 18, 'V-brake', 'Aluminio', '-', '-', 'si'),
(33, 868, 'Safari 3/12', 'Con suspensión', '24', 'mtb', 18, 'V-brake', 'Aluminio', '-', '-', 'si'),
(34, 869, 'Safari 4 Dama/12', 'Con suspensión', '26', 'mtb', 18, 'V-brake', 'Aluminio', '-', '-', 'si'),
(35, 870, 'All Terra 4/11', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'si'),
(36, 871, 'All Terra 4 Disco/11', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'si'),
(37, 872, 'All Terra 4 Dama/11', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'si'),
(38, 873, 'All Terra 5/11', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'si'),
(39, 874, 'All Terra 7/11', 'Con suspensión', '26', 'mtb', 27, 'V-brake', 'Aluminio', '-', '-', 'si'),
(40, 875, 'All Terra 7.5/11', 'Con suspensión', '26', 'mtb', 27, 'V-brake', 'Aluminio', '-', '-', 'no'),
(41, 876, 'All Terra Basic/13', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'no'),
(42, 877, 'All Terra Basic Dama/13', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'no'),
(43, 878, 'All Terra Attack/13', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'no'),
(44, 879, 'All Terra Attack Disc/13', 'Con suspensión', '26', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'no'),
(45, 880, 'All Terra Pro/13', 'Con suspensión', '26', 'mtb', 24, 'V-brake', 'Aluminio', '-', '-', 'no'),
(46, 881, 'All Terra Elite/13', 'Con suspensión', '26', 'mtb', 27, 'V-brake', 'Aluminio', '-', '-', 'no'),
(47, 882, 'Freetime 4', 'Rigida', '28', 'paseo', 6, 'V-brake', 'Acero', '-', '-', 'si'),
(48, 883, 'Freetime 4 Dama', 'Rigida', '28', 'paseo', 6, 'V-brake', 'Acero', '-', '-', 'si'),
(49, 884, 'Primavera 5', 'Rigida', '26', 'paseo', 1, 'V-brake', 'Acero', '-', '-', 'si'),
(50, 885, 'Primavera 8', 'Rigida', '26', 'paseo', 1, 'V-brake', 'Acero', '-', '-', 'si'),
(51, 886, 'Amelie', 'Rigida', '26', 'paseo', 0, 'V-brake', 'Acero', '-', '-', 'si'),
(52, 906, 'Safari 5/12', 'Con suspensión', '', 'mtb', 21, 'V-brake', 'Aluminio', '-', '-', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `nombre`) VALUES
(1, 'cintas-para-correr'),
(2, 'bicicletas'),
(4, 'caminadores-elipticos'),
(5, 'gimnasios'),
(6, 'accesorios'),
(7, 'entrenadores'),
(8, 'rodados'),
(9, 'plataformas-vibratorias'),
(10, 'suplementos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones_sistema`
--

CREATE TABLE IF NOT EXISTS `secciones_sistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(250) NOT NULL DEFAULT '',
  `seccion_singular` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `secciones_sistema`
--

INSERT INTO `secciones_sistema` (`id`, `seccion`, `seccion_singular`) VALUES
(1, 'Bicicletas Fijas', 'Bicicleta Fija'),
(2, 'Cintas para Correr', 'Cinta para Correr'),
(3, 'Plataformas Vibratorias', 'Plataforma Vibratoria'),
(5, 'Caminadores Elipticos', 'Caminador Eliptico'),
(9, 'Bicicletas Indoor', 'Bicicleta Indoor'),
(10, 'Multi gimnasios', 'Multigimnasio'),
(11, 'Entrenadores', 'Entrenador'),
(13, 'Suplementos Vitaminicos', 'Suplemento Vitaminico'),
(14, 'Bicicletas', 'Bicicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suplemento`
--

CREATE TABLE IF NOT EXISTS `suplemento` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) NOT NULL DEFAULT '0',
  `codigo` varchar(40) NOT NULL,
  `tipo_ejercicio` enum('Residencial','Semiprofesional','Profesional') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accesorio_id` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `suplemento`
--

INSERT INTO `suplemento` (`id`, `producto_id`, `codigo`, `tipo_ejercicio`) VALUES
(32, 888, 'Randers 058', 'Residencial'),
(33, 889, 'Randers Remo R307', 'Residencial'),
(34, 890, 'Randers 130', 'Residencial'),
(35, 891, 'Randers PVS', 'Residencial'),
(36, 892, 'Fitage ge 410', 'Residencial'),
(37, 893, 'SV Ripped Max', 'Residencial'),
(38, 894, 'SV Fat Burner', 'Residencial'),
(39, 895, 'SV Whey Protein', 'Residencial'),
(40, 896, 'SV Glutamina', 'Residencial'),
(41, 897, 'SV Hydroxy Max', 'Residencial'),
(42, 898, 'SV Muscle Max', 'Residencial'),
(43, 899, 'SV Creatina', 'Residencial'),
(44, 900, 'SV Creatina Ethyl', 'Residencial'),
(45, 901, 'SV Cell Max', 'Residencial'),
(46, 902, 'SV Carnitina', 'Residencial'),
(47, 903, 'SV Carbo Fuel', 'Residencial'),
(48, 904, 'SV Bcaa2000', 'Residencial'),
(49, 906, 'Safari 5/12', 'Residencial'),
(50, 907, 'Randers 200', 'Residencial'),
(51, 908, 'Randers 140', 'Residencial');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesorio`
--
ALTER TABLE `accesorio`
  ADD CONSTRAINT `accesorio_id` FOREIGN KEY (`producto_id`) REFERENCES `zzz-23-12-producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
