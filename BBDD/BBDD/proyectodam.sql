-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2017 a las 20:37:59
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectodam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriasproductos`
--

CREATE TABLE `categoriasproductos` (
  `IdCategoriasProductos` int(11) NOT NULL,
  `Nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoriasproductos`
--

INSERT INTO `categoriasproductos` (`IdCategoriasProductos`, `Nombre`) VALUES
(1, 'Coche'),
(2, 'Moto'),
(3, 'Juego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdClientesNIF` varchar(10) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `FechBaj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdClientesNIF`, `Nombre`, `Apellidos`, `FechBaj`) VALUES
('00000001A', 'Pantuflo', 'Ape1 Ape2', NULL),
('00000002A', 'Progenitus', 'Ape1 Ape2', NULL),
('00000003A', 'mustafa', 'Ape1 Ape2', NULL),
('00000004A', 'Marta', 'Ape1 Ape2', NULL),
('00000005A', 'Alejandro', 'Ape1 Ape2', NULL),
('00000006A', 'eugenio', 'Ape1 Ape2', NULL),
('00000007A', 'eustaquio', 'Ape1 Ape2', NULL),
('00000008A', 'sandalio', 'Ape1 Ape2', NULL),
('00000009A', 'Maria', 'Ape1 Ape2', NULL),
('00000010A', 'Juanita', 'Ape1 Ape2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `IdDepartamentos` int(11) NOT NULL,
  `Nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleadosNIF` varchar(10) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `Apellidos` varchar(15) NOT NULL,
  `DepartamentosId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `IdPedido` int(11) NOT NULL,
  `ClienteId` varchar(10) NOT NULL,
  `PrecioTotal` int(11) NOT NULL,
  `FechaPedido` date NOT NULL,
  `FechBaj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`IdPedido`, `ClienteId`, `PrecioTotal`, `FechaPedido`, `FechBaj`) VALUES
(1, '00000004A', 50, '2017-12-05', NULL),
(2, '00000010A', 100, '2017-12-14', NULL),
(3, '00000005A', 150, '2017-12-25', NULL),
(4, '00000009A', 10, '2017-12-23', NULL),
(5, '00000010A', 100000, '2017-12-02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL,
  `Marca` varchar(15) NOT NULL,
  `Modelo` varchar(15) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `CategoriaId` int(11) NOT NULL,
  `FechBaj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `Marca`, `Modelo`, `Descripcion`, `Precio`, `Stock`, `CategoriaId`, `FechBaj`) VALUES
(1, 'Toyota', 'Auris', '4 años', 20000, 4, 1, NULL),
(2, 'Yamaha', 'Tzr', 'Antigua', 500, 2, 2, NULL),
(3, 'Sega', 'TotalWar', 'Warhammer2', 30, 80, 3, NULL),
(4, 'BMW', 'M5', 'Clasico', 50000, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productospedidos`
--

CREATE TABLE `productospedidos` (
  `IdProductosPedidos` int(11) NOT NULL,
  `productoId` int(11) NOT NULL,
  `PedidoId` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productospedidos`
--

INSERT INTO `productospedidos` (`IdProductosPedidos`, `productoId`, `PedidoId`, `Cantidad`) VALUES
(1, 2, 1, 1),
(2, 4, 1, 1),
(3, 4, 2, 1),
(4, 4, 3, 1),
(5, 3, 4, 1),
(6, 3, 5, 1),
(7, 1, 5, 0),
(8, 2, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `Nick` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `BoolTipoUserEmpleado` tinyint(1) NOT NULL,
  `UsuarioIdNIF` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriasproductos`
--
ALTER TABLE `categoriasproductos`
  ADD PRIMARY KEY (`IdCategoriasProductos`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdClientesNIF`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`IdDepartamentos`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleadosNIF`),
  ADD KEY `DepartamentosId` (`DepartamentosId`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IdPedido`),
  ADD KEY `ClienteId` (`ClienteId`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `CategoriaId` (`CategoriaId`);

--
-- Indices de la tabla `productospedidos`
--
ALTER TABLE `productospedidos`
  ADD PRIMARY KEY (`IdProductosPedidos`),
  ADD KEY `productoId` (`productoId`,`PedidoId`),
  ADD KEY `PedidoId` (`PedidoId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `UsuarioIdNIF` (`UsuarioIdNIF`),
  ADD KEY `UsuarioIdNIF_2` (`UsuarioIdNIF`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`DepartamentosId`) REFERENCES `departamentos` (`IdDepartamentos`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ClienteId`) REFERENCES `clientes` (`IdClientesNIF`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`CategoriaId`) REFERENCES `categoriasproductos` (`IdCategoriasProductos`);

--
-- Filtros para la tabla `productospedidos`
--
ALTER TABLE `productospedidos`
  ADD CONSTRAINT `productospedidos_ibfk_1` FOREIGN KEY (`PedidoId`) REFERENCES `pedido` (`IdPedido`),
  ADD CONSTRAINT `productospedidos_ibfk_2` FOREIGN KEY (`productoId`) REFERENCES `productos` (`IdProducto`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`UsuarioIdNIF`) REFERENCES `clientes` (`IdClientesNIF`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
