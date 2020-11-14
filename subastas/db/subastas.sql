-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2020 a las 07:30:53
-- Versión del servidor: 10.1.25-MariaDB
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
-- Base de datos: `ventas1`
--
-- Estructura de tabla para la tabla `tbl_acciones`
--

CREATE TABLE `tbl_acciones` (
  `Id_Accion` int(11) NOT NULL,
  `Id_Modulos` int(11) NOT NULL,
  `NombreArchivo` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `class` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(45) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_acciones`
--

INSERT INTO `tbl_acciones` (`Id_Accion`, `Id_Modulos`, `NombreArchivo`, `class`, `Descripcion`) VALUES
(1, 1, 'Personas.php', 'fa fa-circle-o text-red', 'Clientes'),
(2, 1, 'user.php', 'fa fa-circle-o', 'Usuarios'),
(3, 1, 'Roles.php', 'fa fa-circle-o text-aqua', 'Creación de Roles'),
(4, 2, '404.php', 'fa fa-circle-o', 'Registro'),
(5, 4, '404.php', 'fa fa-circle-o', 'subasta'),
(7, 6, 'Cuenta.php', 'fa fa-circle-o', 'Información'),
(10, 4, '404.php', 'fa fa-circle-o text-aqua', 'Subasta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombres` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `Apellidos` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Cui` int(11) NOT NULL,
  `Direccion` varchar(70) COLLATE latin1_spanish_ci NOT NULL,
  `Telefono` int(11) NOT NULL,
  `TelefonoResidencial` int(11) NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`Id_Cliente`, `Nombres`, `Apellidos`, `Fecha_Nacimiento`, `Cui`, `Direccion`, `Telefono`, `TelefonoResidencial`, `Estado`) VALUES
(1, 'Edik', 'Bravo', '1990-10-06', 2147483647, 'San Marcos', 54177405, 77604819, 1),
(2, 'Gustavo', 'PEREZ  ', '1990-10-10', 1234567, 'San Marcos', 12345, 12345, 1),
(3, 'FERNANDO', 'DE LEON', '1990-10-10', 2147483647, 'SAN MARCOS', 12345678, 12345678, 1),
(4, 'Francisco', 'Ventura Velasquez ', '1988-02-09', 2147483647, 'San Marcos', 12345678, 12345678, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cuenta`
--

CREATE TABLE `tbl_cuenta` (
  `Id_Cuenta` int(11) NOT NULL,
  `Monto` int(11) NOT NULL,
  `Saldo_Actual` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Id_Tarjeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cuenta`
--

INSERT INTO `tbl_cuenta` (`Id_Cuenta`, `Monto`, `Saldo_Actual`, `Tipo`, `Id_Tarjeta`) VALUES
(1, 1000, 1000, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_vehiculo`
--

CREATE TABLE `tbl_estado_vehiculo` (
  `Id_Estado_vehiculo` int(11) NOT NULL,
  `Descripcion` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_estado_vehiculo`
--

INSERT INTO `tbl_estado_vehiculo` (`Id_Estado_vehiculo`, `Descripcion`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Subastado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fotos`
--

CREATE TABLE `tbl_fotos` (
  `Id_Foto` int(11) NOT NULL,
  `Nombre` varchar(300) COLLATE latin1_spanish_ci NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modulos`
--

CREATE TABLE `tbl_modulos` (
  `id_Modulo` int(11) NOT NULL,
  `Nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `HtmlEncabezado` text COLLATE latin1_spanish_ci NOT NULL,
  `HtmlFin` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Prioridad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_modulos`
--

INSERT INTO `tbl_modulos` (`id_Modulo`, `Nombre`, `HtmlEncabezado`, `HtmlFin`, `Estado`, `Prioridad`) VALUES
(1, 'Configuración', '        <li class=\"treeview\">           <a href=\"#\">             <i class=\"fa fa-cog fa-fw\"></i> <span>Admin Clientes</span>             <span class=\"pull-right-container\">               <i class=\"fa fa-angle-left pull-right\"></i>             </span>           </a>           <ul class=\"treeview-menu\"> ', '</ul>  </li>', 1, 5),
(2, 'Vehiculos', '        <li class=\"treeview\">           <a href=\"#\">             <i class=\"fa fa-group\"></i> <span>Vehículos</span>             <span class=\"pull-right-container\">               <i class=\"fa fa-angle-left pull-right\"></i>             </span>           </a>           <ul class=\"treeview-menu\"> ', '</ul>  </li>', 1, 1),
(4, 'Subastas', '        <li class=\"treeview\">           <a href=\"#\">             <i class=\"fa fa-group\"></i> <span>Subastas</span>             <span class=\"pull-right-container\">               <i class=\"fa fa-angle-left pull-right\"></i>             </span>           </a>           <ul class=\"treeview-menu\"> ', '</ul>  </li>', 1, 2),
(6, 'Cuenta', '        <li class=\"treeview\">           <a href=\"#\">             <i class=\"fa fa-group\"></i> <span>Cuenta</span>             <span class=\"pull-right-container\">               <i class=\"fa fa-angle-left pull-right\"></i>             </span>           </a>           <ul class=\"treeview-menu\"> ', '</ul>  </li>', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_oferta`
--

CREATE TABLE `tbl_oferta` (
  `Id_Oferta` int(11) NOT NULL,
  `Monto` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Subasta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisos`
--

CREATE TABLE `tbl_permisos` (
  `id_Permiso` int(11) NOT NULL,
  `Id_Rol` int(11) NOT NULL,
  `Id_Modulo` int(11) NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_permisos`
--

INSERT INTO `tbl_permisos` (`id_Permiso`, `Id_Rol`, `Id_Modulo`, `Estado`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 4, 2, 1),
(5, 3, 2, 1),
(7, 2, 2, 1),
(9, 1, 4, 1),
(11, 2, 1, 1),
(13, 2, 4, 1),
(14, 1, 6, 1),
(15, 3, 6, 1),
(16, 2, 6, 1),
(17, 4, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `Id_Rol` int(11) NOT NULL,
  `Nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_roles`
--

INSERT INTO `tbl_roles` (`Id_Rol`, `Nombre`, `Estado`) VALUES
(1, 'Super Administrador', 1),
(2, 'Administrador', 1),
(3, 'Cliente', 1),
(4, 'Proveedor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subasta`
--

CREATE TABLE `tbl_subasta` (
  `Id_Subasta` int(11) NOT NULL,
  `Fecha_Subasta` datetime NOT NULL,
  `Proveedor` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_subasta`
--

INSERT INTO `tbl_subasta` (`Id_Subasta`, `Fecha_Subasta`, `Proveedor`, `Estado`, `Id_Vehiculo`) VALUES
(1, '2020-11-13 00:00:00', 'Autos Locos', 1, 1),
(2, '2020-11-14 00:00:00', 'Autos', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tarjeta`
--

CREATE TABLE `tbl_tarjeta` (
  `Id_Tarjeta` int(11) NOT NULL,
  `No_Tarjeta` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha_Vencimiento` date NOT NULL,
  `CVV` int(11) NOT NULL,
  `Nombre_Banco` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `Marca_Tarjeta` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Id_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tarjeta`
--

INSERT INTO `tbl_tarjeta` (`Id_Tarjeta`, `No_Tarjeta`, `Fecha_Vencimiento`, `CVV`, `Nombre_Banco`, `Marca_Tarjeta`, `Id_Cliente`) VALUES
(1, '4551317011726422', '2021-11-13', 123, 'GyT', 'Visa', 1),
(2, '12345678901', '2020-11-11', 123, 'INDUSTRIAL', 'VISA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `Id_Usuario` int(11) NOT NULL,
  `User` text COLLATE latin1_spanish_ci NOT NULL,
  `Pasword` text COLLATE latin1_spanish_ci NOT NULL,
  `Fecha_Creacion` timestamp NULL DEFAULT NULL,
  `Estado` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Id_Rol` int(11) NOT NULL,
  `Fecha_Mdificacion` timestamp NULL DEFAULT NULL,
  `Avatar` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`Id_Usuario`, `User`, `Pasword`, `Fecha_Creacion`, `Estado`, `Id_Cliente`, `Id_Rol`, `Fecha_Mdificacion`, `Avatar`) VALUES
(1, 'admin', 'e020590f0e18cd6053d7ae0e0a507609', '2020-11-04 06:00:00', 1, 1, 1, '2020-11-04 06:00:00', 'dist/img/avatar4.png'),
(5, 'fdeleon', '4d186321c1a7f0f354b297e8914ab240', '2020-11-08 06:00:00', 1, 3, 3, NULL, 'dist/img/avatar5.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vehiculo`
--

CREATE TABLE `tbl_vehiculo` (
  `Id_Vehiculo` int(11) NOT NULL,
  `Marca` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `Linea` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `Modelo` varchar(6) COLLATE latin1_spanish_ci NOT NULL,
  `Kilometraje` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `CC` int(11) NOT NULL,
  `Monto_Base` int(11) NOT NULL,
  `Descripcion` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Id_Estado_vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_vehiculo`
--

INSERT INTO `tbl_vehiculo` (`Id_Vehiculo`, `Marca`, `Linea`, `Modelo`, `Kilometraje`, `CC`, `Monto_Base`, `Descripcion`, `Id_Estado_vehiculo`) VALUES
(1, 'Toyota', 'yaris', '2011', '52000', 2, 35000, 'En buen estado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `Id_Venta` int(11) NOT NULL,
  `Id_Oferta` int(11) NOT NULL,
  `Id_Subasta` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Tarjeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_acciones`
--
ALTER TABLE `tbl_acciones`
  ADD PRIMARY KEY (`Id_Accion`),
  ADD KEY `fk_tbl_Acciones_tbl_Modulos1_idx` (`Id_Modulos`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `tbl_cuenta`
--
ALTER TABLE `tbl_cuenta`
  ADD PRIMARY KEY (`Id_Cuenta`),
  ADD KEY `fk_Tbl_Cuenta_Tbl_Tarjeta1_idx` (`Id_Tarjeta`);

--
-- Indices de la tabla `tbl_estado_vehiculo`
--
ALTER TABLE `tbl_estado_vehiculo`
  ADD PRIMARY KEY (`Id_Estado_vehiculo`);

--
-- Indices de la tabla `tbl_fotos`
--
ALTER TABLE `tbl_fotos`
  ADD PRIMARY KEY (`Id_Foto`),
  ADD KEY `fk_Tbl_Fotos_Tbl_Vehiculo1_idx` (`Id_Vehiculo`);

--
-- Indices de la tabla `tbl_modulos`
--
ALTER TABLE `tbl_modulos`
  ADD PRIMARY KEY (`id_Modulo`);

--
-- Indices de la tabla `tbl_oferta`
--
ALTER TABLE `tbl_oferta`
  ADD PRIMARY KEY (`Id_Oferta`),
  ADD KEY `fk_Tbl_Oferta_Tbl_User1_idx` (`Id_Usuario`),
  ADD KEY `fk_Tbl_Oferta_Tbl_Subasta1_idx` (`Id_Subasta`);

--
-- Indices de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD PRIMARY KEY (`id_Permiso`),
  ADD KEY `fk_tbl_Permisos_Tbl_Roles1_idx` (`Id_Rol`),
  ADD KEY `fk_tbl_Permisos_tbl_Recurso1_idx` (`Id_Modulo`);

--
-- Indices de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indices de la tabla `tbl_subasta`
--
ALTER TABLE `tbl_subasta`
  ADD PRIMARY KEY (`Id_Subasta`),
  ADD KEY `fk_Tbl_Subasta_Tbl_Vehiculo1_idx` (`Id_Vehiculo`);

--
-- Indices de la tabla `tbl_tarjeta`
--
ALTER TABLE `tbl_tarjeta`
  ADD PRIMARY KEY (`Id_Tarjeta`),
  ADD KEY `fk_Tbl_Tarjeta_Tbl_Clientes1_idx` (`Id_Cliente`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `fk_Tbl_User_Tbl_Empleados_idx` (`Id_Cliente`),
  ADD KEY `fk_Tbl_User_Tbl_Roles1_idx` (`Id_Rol`);

--
-- Indices de la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  ADD PRIMARY KEY (`Id_Vehiculo`),
  ADD KEY `fk_Tbl_Vehiculo_Tbl_Tipo_Vehiculo1_idx` (`Id_Estado_vehiculo`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`Id_Venta`),
  ADD KEY `fk_Tbl_Ventas_Tbl_Oferta1_idx` (`Id_Oferta`),
  ADD KEY `fk_Tbl_Ventas_Tbl_Subasta1_idx` (`Id_Subasta`),
  ADD KEY `fk_Tbl_Ventas_Tbl_User1_idx` (`Id_Usuario`),
  ADD KEY `fk_Tbl_Ventas_Tbl_Tarjeta1_idx` (`Id_Tarjeta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_acciones`
--
ALTER TABLE `tbl_acciones`
  MODIFY `Id_Accion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_cuenta`
--
ALTER TABLE `tbl_cuenta`
  MODIFY `Id_Cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_estado_vehiculo`
--
ALTER TABLE `tbl_estado_vehiculo`
  MODIFY `Id_Estado_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tbl_fotos`
--
ALTER TABLE `tbl_fotos`
  MODIFY `Id_Foto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_modulos`
--
ALTER TABLE `tbl_modulos`
  MODIFY `id_Modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_oferta`
--
ALTER TABLE `tbl_oferta`
  MODIFY `Id_Oferta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  MODIFY `id_Permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `Id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_subasta`
--
ALTER TABLE `tbl_subasta`
  MODIFY `Id_Subasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_tarjeta`
--
ALTER TABLE `tbl_tarjeta`
  MODIFY `Id_Tarjeta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  MODIFY `Id_Vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `Id_Venta` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_acciones`
--
ALTER TABLE `tbl_acciones`
  ADD CONSTRAINT `fk_tbl_Acciones_tbl_Modulos1` FOREIGN KEY (`Id_Modulos`) REFERENCES `tbl_modulos` (`id_Modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_cuenta`
--
ALTER TABLE `tbl_cuenta`
  ADD CONSTRAINT `fk_Tbl_Cuenta_Tbl_Tarjeta1` FOREIGN KEY (`Id_Tarjeta`) REFERENCES `tbl_tarjeta` (`Id_Tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_fotos`
--
ALTER TABLE `tbl_fotos`
  ADD CONSTRAINT `fk_Tbl_Fotos_Tbl_Vehiculo1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `tbl_vehiculo` (`Id_Vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_oferta`
--
ALTER TABLE `tbl_oferta`
  ADD CONSTRAINT `fk_Tbl_Oferta_Tbl_Subasta1` FOREIGN KEY (`Id_Subasta`) REFERENCES `tbl_subasta` (`Id_Subasta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Oferta_Tbl_User1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_user` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD CONSTRAINT `fk_tbl_Permisos_Tbl_Roles1` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_roles` (`Id_Rol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_Permisos_tbl_Recurso1` FOREIGN KEY (`Id_Modulo`) REFERENCES `tbl_modulos` (`id_Modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_subasta`
--
ALTER TABLE `tbl_subasta`
  ADD CONSTRAINT `fk_Tbl_Subasta_Tbl_Vehiculo1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `tbl_vehiculo` (`Id_Vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_tarjeta`
--
ALTER TABLE `tbl_tarjeta`
  ADD CONSTRAINT `fk_Tbl_Tarjeta_Tbl_Clientes1` FOREIGN KEY (`Id_Cliente`) REFERENCES `tbl_cliente` (`Id_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `fk_Tbl_User_Tbl_Empleados` FOREIGN KEY (`Id_Cliente`) REFERENCES `tbl_cliente` (`Id_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_User_Tbl_Roles1` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_roles` (`Id_Rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  ADD CONSTRAINT `fk_Tbl_Vehiculo_Tbl_Tipo_Vehiculo1` FOREIGN KEY (`Id_Estado_vehiculo`) REFERENCES `tbl_estado_vehiculo` (`Id_Estado_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD CONSTRAINT `fk_Tbl_Ventas_Tbl_Oferta1` FOREIGN KEY (`Id_Oferta`) REFERENCES `tbl_oferta` (`Id_Oferta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Ventas_Tbl_Subasta1` FOREIGN KEY (`Id_Subasta`) REFERENCES `tbl_subasta` (`Id_Subasta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Ventas_Tbl_Tarjeta1` FOREIGN KEY (`Id_Tarjeta`) REFERENCES `tbl_tarjeta` (`Id_Tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tbl_Ventas_Tbl_User1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_user` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
