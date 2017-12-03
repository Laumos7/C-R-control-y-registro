-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-10-2017 a las 15:14:13
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlyregistro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `idCiudad` int(3) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `Descripcion`) VALUES
(1, 'Bogotá'),
(2, 'villavicencio'),
(3, 'Barranquilla'),
(4, 'Cartagena'),
(5, 'San Andres y Providencia'),
(6, 'Atlantico'),
(7, 'Bolivar'),
(8, 'Cesar'),
(9, 'Cordoba'),
(10, 'Guiajira'),
(11, 'Magdalena'),
(12, 'Sucre '),
(13, 'Antioquia'),
(14, 'Boyacá '),
(15, 'Caldas'),
(16, 'Huila '),
(17, 'Norte de Santander'),
(18, 'Quindio'),
(19, 'Risaralda '),
(20, 'Santander'),
(21, 'Tolima '),
(22, 'Cauca '),
(23, 'chocó'),
(24, 'Nariño'),
(25, 'Valle '),
(26, 'Amazonas'),
(27, 'caquetá'),
(28, 'Guainía'),
(29, 'Putumayo'),
(30, 'Vaupés'),
(31, 'Arauca '),
(32, 'Casanare'),
(33, 'Meta'),
(34, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pasadmin` varchar(250) NOT NULL,
  `rol` int(3) NOT NULL,
  `pasguarda` varchar(50) NOT NULL DEFAULT '3c7ad64442563fefd2e951394dfd91d1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `user`, `password`, `email`, `pasadmin`, `rol`, `pasguarda`) VALUES
(1, 'Laura Daniela', 'e10adc3949ba59abbe56e057f20f883e', 'lmoscososanchez@misena.edu.co', 'a5cfec710d30ea6bd8d989c658779496', 2, '3c7ad64442563fefd2e951394dfd91d1'),
(2, 'Melanie  Patricia', 'e10adc3949ba59abbe56e057f20f883e', 'mpnieto12@misena.edu.co', 'a5cfec710d30ea6bd8d989c658779496', 2, '3c7ad64442563fefd2e951394dfd91d1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedad`
--

DROP TABLE IF EXISTS `novedad`;
CREATE TABLE IF NOT EXISTS `novedad` (
  `idnovedad` int(3) NOT NULL AUTO_INCREMENT,
  `TipoDoc` int(3) NOT NULL,
  `documento` int(10) NOT NULL,
  `novedad` varchar(500) NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idnovedad`),
  KEY `TipoDoc` (`TipoDoc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `novedad`
--

INSERT INTO `novedad` (`idnovedad`, `TipoDoc`, `documento`, `novedad`, `fecha`) VALUES
(4, 1, 1010124345, 'sdkdskl.fg', '2017-10-06 13:15:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo`
--

DROP TABLE IF EXISTS `recibo`;
CREATE TABLE IF NOT EXISTS `recibo` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `documento` int(12) NOT NULL,
  `TipoVehiculo` varchar(20) NOT NULL,
  `sede` varchar(10) NOT NULL,
  `HoraIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `HoraSalida` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Cancelado` varchar(5) NOT NULL DEFAULT 'No',
  `estado` varchar(15) NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recibo`
--

INSERT INTO `recibo` (`id`, `nombre`, `documento`, `TipoVehiculo`, `sede`, `HoraIngreso`, `HoraSalida`, `Cancelado`, `estado`) VALUES
(1, 'Laura Daniela', 1010124343, 'Moto', 'Restrepo', '2017-10-10 13:16:38', '2017-10-10 14:53:24', 'Si', 'Inactivo'),
(3, 'Diana', 1022429522, 'moto', 'Colombia', '2017-10-10 14:51:49', '2017-10-10 15:03:48', 'Si', 'Inactivo'),
(2, 'Melanie', 1015476021, 'bicicleta', 'Colombia', '2017-10-10 14:41:03', '2017-10-10 14:53:44', 'Si', 'Inactivo'),
(4, 'Juan', 1230458752, 'bicicleta', 'Colombia', '2017-10-10 14:51:49', '2017-10-10 14:53:14', 'Si', 'Inactivo'),
(5, 'Jose', 1025489632, 'moto', 'Colombia', '2017-10-10 14:51:49', '2017-10-10 14:53:19', 'Si', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodedocumento`
--

DROP TABLE IF EXISTS `tipodedocumento`;
CREATE TABLE IF NOT EXISTS `tipodedocumento` (
  `codigo` int(1) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodedocumento`
--

INSERT INTO `tipodedocumento` (`codigo`, `Descripcion`) VALUES
(1, 'Cedula de Ciudadania'),
(2, 'Tarjeta de identidad'),
(3, 'Cedula de Extranjeria'),
(4, 'Pasaporte'),
(5, 'Documento Nacional de identificacion'),
(6, 'NIT'),
(7, 'NUIP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idTipoDoc` int(1) NOT NULL,
  `documento` int(12) NOT NULL,
  `edad` varchar(12) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idciudad` int(3) NOT NULL,
  `direccion` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(40) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` int(13) NOT NULL,
  `sede` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id`),
  KEY `idTipoDoc` (`idTipoDoc`),
  KEY `idciudad` (`idciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `genero`, `idTipoDoc`, `documento`, `edad`, `idciudad`, `direccion`, `correo`, `telefono`, `sede`, `estado`) VALUES
(2, 'Laura Daniela', 'Moscoso Sanchez', 'Mujer', 1, 1010124345, '2003-12-16', 1, 'trav 68c# 44-44 sur', 'lmoscososanchez@misena.edu.co', 4802755, 'Restrepo', 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE IF NOT EXISTS `vehiculo` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `cargo` text NOT NULL,
  `vehiculo` text NOT NULL,
  `color` text NOT NULL,
  `placa` varchar(6) NOT NULL,
  `serie` varchar(10) NOT NULL,
  `marca` text NOT NULL,
  `propietario` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `propietario` (`propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `cargo`, `vehiculo`, `color`, `placa`, `serie`, `marca`, `propietario`) VALUES
(1, 'Empleado De La Entidad', 'Bicicleta', 'Azul', '4', '5', '4', 35),
(2, 'Aprendiz', 'Bicicleta', 'Amarillo', 'fff', 'f', 'f', 32),
(3, 'Aprendiz', 'Bicicleta', 'Blanco', '234', '245', 'bmx', 1010124345);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD CONSTRAINT `novedad_ibfk_1` FOREIGN KEY (`TipoDoc`) REFERENCES `tipodedocumento` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
