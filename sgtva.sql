-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-02-2016 a las 18:07:59
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgtva`
--

-- --------------------------------------------------------
-- USE DATABASE sgtva;

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE IF NOT EXISTS `actividades` (
  `codigo` int(11) NOT NULL,
  `nombreResponsable` varchar(100) NOT NULL,
  `cedulaResponsable` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`codigo`, `nombreResponsable`, `cedulaResponsable`, `descripcion`) VALUES
(1, 'Faber', '123456789', 'Viaje a Medellin.'),
(2, 'Faber', '123456789', 'Viaje a Medellin.'),
(3, 'Faber', '123456789', 'Viaje a Medellin.'),
(4, 'Faber', '123456789', 'Viaje a Medellin.'),
(5, 'Faber', '1234567', 'Viaje'),
(6, 'Clarena', '123', 'Oitro viaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE IF NOT EXISTS `conductores` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `numTelefono` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`codigo`, `nombre`, `numTelefono`) VALUES
(8, 'Julio', '3185522559'),
(1001, 'Cristian', '3187264731'),
(1002, 'Fabio', '3194437591');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementosgeograficos`
--

CREATE TABLE IF NOT EXISTS `elementosgeograficos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigoTipo` int(11) NOT NULL,
  `codigoElemento` int(11) DEFAULT NULL,
  `codigoUbicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `elementosgeograficos`
--

INSERT INTO `elementosgeograficos` (`codigo`, `nombre`, `codigoTipo`, `codigoElemento`, `codigoUbicacion`) VALUES
(1, 'Quindio', 1, NULL, 1),
(2, 'Armenia', 2, 1, 1),
(3, 'Calarca', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE IF NOT EXISTS `registros` (
  `codigo` int(11) NOT NULL,
  `fechaSolicitud` date NOT NULL,
  `codigoViaje` int(11) DEFAULT NULL,
  `codigoActividad` int(11) DEFAULT NULL,
  `codigoSolicitante` int(11) DEFAULT NULL,
  `codigoUnidad` int(11) DEFAULT NULL,
  `codigoConductor` int(11) DEFAULT NULL,
  `codigoVehiculo` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`codigo`, `fechaSolicitud`, `codigoViaje`, `codigoActividad`, `codigoSolicitante`, `codigoUnidad`, `codigoConductor`, `codigoVehiculo`) VALUES
(1, '2015-11-07', 2, 2, 2, 8, 1001, 4),
(2, '2015-11-07', 1, 1, 1, 15, 1002, 1),
(4, '2015-10-27', 4, 4, 4, 8, 1001, 4),
(5, '2015-11-13', 5, 5, 5, 11, 8, 4),
(6, '2015-11-13', 6, 6, 6, 1, 8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitantes`
--

CREATE TABLE IF NOT EXISTS `solicitantes` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `numTelefono` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitantes`
--

INSERT INTO `solicitantes` (`codigo`, `nombre`, `numTelefono`) VALUES
(1, 'Julio', 0),
(2, 'Julio', 0),
(3, 'Julio', 0),
(4, 'Julio', 0),
(5, 'Faber', 0),
(6, 'Clarena', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposelementos`
--

CREATE TABLE IF NOT EXISTS `tiposelementos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigoTipo` int(11) DEFAULT NULL,
  `codigoUbicacion` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiposelementos`
--

INSERT INTO `tiposelementos` (`codigo`, `nombre`, `codigoTipo`, `codigoUbicacion`) VALUES
(1, 'Departamento', NULL, 1),
(2, 'Ciudad', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacionesgeograficas`
--

CREATE TABLE IF NOT EXISTS `ubicacionesgeograficas` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ubicacionesgeograficas`
--

INSERT INTO `ubicacionesgeograficas` (`codigo`, `nombre`) VALUES
(1, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipoUnidad` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`codigo`, `nombre`, `tipoUnidad`) VALUES
(1, 'Ingenieria', 'Facultad'),
(2, 'Educacion', 'Facultad'),
(3, 'Ciencias humanas y bellas artes', 'Facultad'),
(4, 'Ciencias basicas y tecnologias', 'Facultad'),
(5, 'Ciencias economicas y administrativas', 'Facultad'),
(6, 'Ciencias de la salud', 'Facultad'),
(7, 'Ciencias agroindustriales', 'Facultad'),
(8, 'Ingenieria de sistemas y computacion', 'Programa'),
(9, 'Ingenieria civil', 'Programa'),
(10, 'Ingenieria Electronica', 'Programa'),
(11, 'Maestria en ingenieria', 'Programa '),
(12, 'Licenciatura en lenguas modernas', 'Programa'),
(13, 'Biologia', 'Programa'),
(14, 'Filosofia', 'Programa'),
(15, 'Medicina', 'Programa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cedula` varchar(100) NOT NULL,
  `contrasenia` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `nombre`, `cedula`, `contrasenia`) VALUES
(1, 'Fabio Oquendo', '1097402312', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `codigo` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `capacidadMax` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`codigo`, `placa`, `referencia`, `capacidadMax`) VALUES
(1, 'SQC 807', 'Atos', 5),
(4, 'ARM 123', 'AVEO (family)', 5),
(5, 'KDV 524', 'Spark GT', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE IF NOT EXISTS `viajes` (
  `codigo` int(11) NOT NULL,
  `fechaSalida` datetime NOT NULL,
  `fechaLlegada` datetime NOT NULL,
  `direccionOrigen` varchar(100) NOT NULL,
  `direccionDestino` varchar(100) NOT NULL,
  `codigoOrigen` int(11) DEFAULT NULL,
  `codigoDestino` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`codigo`, `fechaSalida`, `fechaLlegada`, `direccionOrigen`, `direccionDestino`, `codigoOrigen`, `codigoDestino`) VALUES
(1, '2015-10-27 06:00:00', '2015-10-27 13:00:00', 'Armenia', 'Medellin', NULL, NULL),
(2, '2015-10-27 06:00:00', '2015-10-27 13:00:00', 'Armenia', 'Medellin', NULL, NULL),
(3, '2015-10-27 06:00:00', '2015-10-27 13:00:00', 'Armenia', 'Medellin', NULL, NULL),
(4, '2015-10-27 06:00:00', '2015-10-27 13:00:00', 'Armenia', 'Medellin', NULL, NULL),
(5, '2015-11-13 07:00:00', '2015-11-13 10:00:00', 'Armenia', 'Pereira', NULL, NULL),
(6, '2015-11-13 11:00:00', '2015-11-13 13:00:00', 'Armenia', 'Pereira', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `elementosgeograficos`
--
ALTER TABLE `elementosgeograficos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Registros_ibfk_9` (`codigoTipo`),
  ADD KEY `Registros_ibfk_11` (`codigoUbicacion`),
  ADD KEY `Registros_ibfk_10` (`codigoElemento`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `codigoViaje` (`codigoViaje`),
  ADD KEY `Registros_ibfk_2` (`codigoActividad`),
  ADD KEY `Registros_ibfk_3` (`codigoSolicitante`),
  ADD KEY `Registros_ibfk_4` (`codigoConductor`),
  ADD KEY `Registros_ibfk_5` (`codigoUnidad`),
  ADD KEY `Registros_ibfk_6` (`codigoVehiculo`);

--
-- Indices de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tiposelementos`
--
ALTER TABLE `tiposelementos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Registros_ibfk_12` (`codigoTipo`),
  ADD KEY `Registros_ibfk_13` (`codigoUbicacion`);

--
-- Indices de la tabla `ubicacionesgeograficas`
--
ALTER TABLE `ubicacionesgeograficas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Registros_ibfk_8` (`codigoDestino`),
  ADD KEY `Registros_ibfk_7` (`codigoOrigen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1003;
--
-- AUTO_INCREMENT de la tabla `elementosgeograficos`
--
ALTER TABLE `elementosgeograficos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tiposelementos`
--
ALTER TABLE `tiposelementos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ubicacionesgeograficas`
--
ALTER TABLE `ubicacionesgeograficas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `elementosgeograficos`
--
ALTER TABLE `elementosgeograficos`
  ADD CONSTRAINT `Registros_ibfk_10` FOREIGN KEY (`codigoElemento`) REFERENCES `elementosgeograficos` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_11` FOREIGN KEY (`codigoUbicacion`) REFERENCES `ubicacionesgeograficas` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_9` FOREIGN KEY (`codigoTipo`) REFERENCES `tiposelementos` (`codigo`);

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `Registros_ibfk_1` FOREIGN KEY (`codigoViaje`) REFERENCES `viajes` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_2` FOREIGN KEY (`codigoActividad`) REFERENCES `actividades` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_3` FOREIGN KEY (`codigoSolicitante`) REFERENCES `solicitantes` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_4` FOREIGN KEY (`codigoConductor`) REFERENCES `conductores` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_5` FOREIGN KEY (`codigoUnidad`) REFERENCES `unidades` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_6` FOREIGN KEY (`codigoVehiculo`) REFERENCES `vehiculos` (`codigo`);

--
-- Filtros para la tabla `tiposelementos`
--
ALTER TABLE `tiposelementos`
  ADD CONSTRAINT `Registros_ibfk_12` FOREIGN KEY (`codigoTipo`) REFERENCES `tiposelementos` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_13` FOREIGN KEY (`codigoUbicacion`) REFERENCES `ubicacionesgeograficas` (`codigo`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `Registros_ibfk_7` FOREIGN KEY (`codigoOrigen`) REFERENCES `elementosgeograficos` (`codigo`),
  ADD CONSTRAINT `Registros_ibfk_8` FOREIGN KEY (`codigoDestino`) REFERENCES `elementosgeograficos` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
