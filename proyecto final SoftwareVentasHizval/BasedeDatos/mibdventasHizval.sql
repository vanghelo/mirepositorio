-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2023 a las 06:05:54
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
-- Base de datos: `mibdventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `iddetalleventa` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidadproducto` int(11) NOT NULL,
  `precioventa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`iddetalleventa`, `idventa`, `idproducto`, `cantidadproducto`, `precioventa`) VALUES
(21, 7, 2, 5, 70000),
(22, 7, 1, 1, 32000),
(23, 7, 1, 1, 32000),
(24, 8, 4, 1, 32213),
(25, 8, 1, 1, 32000),
(26, 8, 2, 5, 70000),
(27, 8, 1, 1, 32000),
(28, 8, 1, 1, 32000),
(29, 9, 4, 1, 32213),
(30, 9, 1, 1, 32000),
(31, 9, 2, 5, 70000),
(32, 9, 1, 1, 32000),
(33, 9, 1, 1, 32000),
(34, 9, 3, 20, 10560000),
(35, 10, 4, 1, 32213),
(36, 10, 1, 1, 32000),
(37, 10, 2, 5, 70000),
(38, 10, 1, 1, 32000),
(39, 10, 1, 1, 32000),
(40, 10, 3, 20, 10560000),
(41, 10, 3, 4, 10560000),
(42, 11, 6, 5, 230000),
(43, 12, 6, 5, 230000),
(44, 12, 2, 1, 70000),
(45, 12, 6, 1, 230000),
(46, 13, 6, 5, 230000),
(47, 13, 2, 1, 70000),
(48, 13, 6, 1, 230000),
(49, 13, 6, 1, 230000),
(50, 14, 2, 1, 70000),
(51, 15, 6, 1, 230000),
(52, 16, 1, 1, 32000),
(53, 16, 6, 1, 230000),
(54, 17, 1, 3, 32000),
(55, 17, 6, 1, 230000),
(56, 17, 2, 1, 70000),
(57, 18, 1, 3, 32000),
(58, 18, 6, 1, 230000),
(59, 18, 2, 1, 70000),
(60, 19, 1, 4, 32000),
(61, 19, 2, 1, 70000),
(62, 20, 1, 5, 32000),
(63, 20, 6, 15, 230000),
(64, 21, 1, 5, 32000),
(65, 21, 6, 15, 230000),
(66, 22, 1, 1, 32000),
(67, 23, 4, 1, 32213),
(68, 23, 1, 2, 32000),
(69, 23, 3, 1, 10560000),
(70, 24, 4, 1, 32213),
(71, 24, 1, 2, 32000),
(72, 24, 3, 1, 10560000),
(74, 24, 1, 1, 50),
(75, 24, 2, 3, 70),
(76, 24, 3, 1, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombreproducto` varchar(200) NOT NULL,
  `descripcionproducto` varchar(500) NOT NULL,
  `unidad` varchar(10) NOT NULL,
  `precio` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombreproducto`, `descripcionproducto`, `unidad`, `precio`) VALUES
(1, 'Aranjuez Gran Vino Blanco', 'Vino de mesa elaborado principalmente con uva Moscatel de Alejandría', 'UND', 50),
(2, 'Aranjuez Gran Vino Tinto', 'Vino de mesa elaborado principalmente con cepas tintas de la región, aroma afrutado, de color rojo intenso', 'UND', 70),
(3, 'Aranjuez Terruño Blanco', 'Vino Fino Blanco de corte elaborado con cepas de nuestro TERRUÑO como lo es la Moscatel de Alejandría, de color claro y notas verdosas', 'UND', 60),
(4, 'Aranjuez Terruño Tinto', 'Vino Fino Tinto de corte elaborado con cepas finas producidas en nuestro TERRUÑO como Garnacha, Cariñena, Favorita y otras', 'UND', 100),
(5, 'Bivarietal Tannat – Merlot', 'Vino elaborado con cepas Tannat y Merlot producidas exclusivamente en nuestras viñas, de color Rojo Rubí profundo, su aroma es complejo y nos recuerda a frutos rojos', 'UND', 120),
(6, 'Bivarietal Torrontes – Moscatel', 'Vino varietal elaborado con cepas Torrontes y Moscatel de Alejandría, de intenso aroma frutado con notas a frutas verdes, de color dorado pálido, vino fresco ', 'UND', 120),
(7, 'Memoria USB 64Gb Kingston', 'Memoria marca Kingston de 64Gb con carcasa metalica', 'UND', 42000),
(8, 'Memoria USB 64Gb Kingston sds', 'Memoria marca Kingston de 64Gb con carcasa metalica', 'UND', 32000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Rol` enum('Empleado','Cliente') NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `documento`, `nombre`, `correo`, `password`, `Rol`, `estado`) VALUES
(2, 222222, 'Javier Eduardo Ticona Quispe', 'jticona@gmail.com', '12345', 'Empleado', 'Activo'),
(10, 555555, 'Juan Angel Mamani Vargas', 'Juanangel@gmail.com', '12345', 'Empleado', 'Activo'),
(11, 123456, 'Oscar Huanca', 'oscarhuanca@gmail.com', 'oscar123', 'Empleado', 'Activo'),
(12, 666666, 'Juan Camilo Gonzalez', 'am2@mail.com', '', 'Cliente', 'Inactivo'),
(13, 777777, 'César Augusto Garcia', 'cperezt@misena.edu.co', '', 'Cliente', 'Inactivo'),
(14, 888888, 'Alfonso Martinez Gomez', 'jgonz@mail.com', '', 'Cliente', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `numerofactura` varchar(20) NOT NULL,
  `idclienteventa` int(11) NOT NULL,
  `idempleadoventa` int(11) NOT NULL,
  `fechaventa` date NOT NULL,
  `totalventa` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventa`, `numerofactura`, `idclienteventa`, `idempleadoventa`, `fechaventa`, `totalventa`, `estado`) VALUES
(7, '38', 1, 1, '2020-10-21', 478213, '1'),
(8, '39', 1, 1, '2020-10-21', 478213, '1'),
(9, '40', 1, 1, '2020-10-21', 211678213, '1'),
(10, '41', 2, 1, '2020-10-21', 253918213, '1'),
(11, '42', 7, 1, '2020-10-21', 1150000, '1'),
(12, '42', 1, 1, '2020-10-21', 1450000, '1'),
(13, '43', 2, 1, '2020-10-21', 1680000, '1'),
(14, '44', 1, 1, '2020-10-21', 70000, '1'),
(15, '45', 1, 1, '2020-10-21', 230000, '1'),
(16, '46', 7, 1, '2020-10-21', 262000, '1'),
(17, '47', 2, 1, '2020-10-21', 396000, '1'),
(18, '47', 2, 1, '2020-10-21', 396000, '1'),
(19, '48', 9, 1, '2020-10-21', 198000, '1'),
(20, '49', 10, 1, '2020-10-21', 3610000, '1'),
(21, '49', 10, 1, '2020-10-21', 7220000, '1'),
(22, '50', 11, 1, '2020-10-21', 96000, '1'),
(23, '51', 11, 1, '2020-10-21', 10656213, '1'),
(24, '52', 0, 1, '2020-10-21', 21313766, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`iddetalleventa`),
  ADD KEY `venta detalle venta` (`idventa`),
  ADD KEY `detalle producto` (`idproducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `iddetalleventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalle producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta detalle venta` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
