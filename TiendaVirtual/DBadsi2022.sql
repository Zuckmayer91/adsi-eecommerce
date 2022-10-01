-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3310
-- Tiempo de generación: 02-09-2022 a las 23:57:42
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `DBadsi2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblBitacora`
--

DROP TABLE IF EXISTS `TblBitacora`;
CREATE TABLE `TblBitacora` (
  `IdBitacora` bigint(20) NOT NULL,
  `Bit_Usuario` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Bit_Datecreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Bit_Tabla` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Bit_Accion` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Bit_Descripcion` varchar(250) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblBitacora`
--

INSERT INTO `TblBitacora` (`IdBitacora`, `Bit_Usuario`, `Bit_Datecreated`, `Bit_Tabla`, `Bit_Accion`, `Bit_Descripcion`) VALUES
(1, 'root@localhost', '2022-08-30 15:24:59', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 9 Producto ID 6 Precio 209001.00 Cantidad 1'),
(2, 'root@localhost', '2022-08-30 15:33:09', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 10 Producto ID 6 Precio 209001.00 Cantidad 1'),
(3, 'root@localhost', '2022-08-30 20:05:36', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 11 Producto ID 6 Precio 209001.00 Cantidad 1'),
(4, 'root@localhost', '2022-08-30 20:16:09', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 12 Producto ID 5 Precio 274001.00 Cantidad 1'),
(5, 'root@localhost', '2022-09-02 13:03:23', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 13 Producto ID 6 Precio 209001.00 Cantidad 1'),
(6, 'root@localhost', '2022-09-02 13:04:40', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 14 Producto ID 6 Precio 209001.00 Cantidad 1'),
(7, 'root@localhost', '2022-09-02 13:08:17', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 15 Producto ID 6 Precio 209001.00 Cantidad 1'),
(8, 'root@localhost', '2022-09-02 15:34:15', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 16 Producto ID 6 Precio 209001.00 Cantidad 1'),
(9, 'root@localhost', '2022-09-02 19:24:23', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 17 Producto ID 6 Precio 209001.00 Cantidad 1'),
(10, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 6 Precio 209001.00 Cantidad 2'),
(11, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 4 Precio 369001.00 Cantidad 1'),
(12, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 5 Precio 274001.00 Cantidad 1'),
(13, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 7 Precio 169001.00 Cantidad 1'),
(14, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 3 Precio 169001.00 Cantidad 1'),
(15, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 2 Precio 189001.00 Cantidad 1'),
(16, 'root@localhost', '2022-09-02 20:47:07', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 18 Producto ID 1 Precio 159000.00 Cantidad 1'),
(17, 'root@localhost', '2022-09-02 21:55:41', 'TblDetalle_pedido', 'Registro', 'El ID 0 pedido ID 1 Producto ID 3 Precio 169001.00 Cantidad 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblCategoria`
--

DROP TABLE IF EXISTS `TblCategoria`;
CREATE TABLE `TblCategoria` (
  `IdCategoria` bigint(20) NOT NULL,
  `Cat_Nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cat_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cat_Portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cat_Datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `Cat_Ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblCategoria`
--

INSERT INTO `TblCategoria` (`IdCategoria`, `Cat_Nombre`, `Cat_Descripcion`, `Cat_Portada`, `Cat_Datecreated`, `Cat_Ruta`, `Est_IdEstado`) VALUES
(1, 'Hombre', 'Artículos de moda', 'img_125e45445bd33723d025d7f815ca29f7.jpg', '2021-08-20 03:04:04', 'hombre', 1),
(2, 'Mujer', 'Artículos de moda', 'img_78678a3fe95890d155115d5301e0761d.jpg', '2021-08-21 00:47:10', 'mujer', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblCliente`
--

DROP TABLE IF EXISTS `TblCliente`;
CREATE TABLE `TblCliente` (
  `IdCliente` bigint(20) NOT NULL,
  `Cli_Identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Cli_Nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cli_Apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cli_Telefono` bigint(20) NOT NULL,
  `Cli_Email` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cli_Password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cli_Token` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Rol_IdRol` bigint(20) NOT NULL,
  `Cli_Datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblCliente`
--

INSERT INTO `TblCliente` (`IdCliente`, `Cli_Identificacion`, `Cli_Nombres`, `Cli_Apellidos`, `Cli_Telefono`, `Cli_Email`, `Cli_Password`, `Cli_Token`, `Rol_IdRol`, `Cli_Datecreated`, `Est_IdEstado`) VALUES
(1, '12345678', 'Ciente', 'Cliente', 4687987, 'cliente@admin.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, 4, '2021-08-20 03:41:28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblContacto`
--

DROP TABLE IF EXISTS `TblContacto`;
CREATE TABLE `TblContacto` (
  `IdContacto` bigint(20) NOT NULL,
  `Cont_Nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cont_Email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cont_Mensaje` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cont_Ip` varchar(15) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cont_Dispositivo` varchar(25) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cont_Useragent` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Cont_Datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblContacto`
--

INSERT INTO `TblContacto` (`IdContacto`, `Cont_Nombre`, `Cont_Email`, `Cont_Mensaje`, `Cont_Ip`, `Cont_Dispositivo`, `Cont_Useragent`, `Cont_Datecreated`) VALUES
(1, 'Fernando Herrera', 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-20 04:06:18'),
(2, 'Jose Her', 'webserversth@gmail.com', 'prueba de funcionalidad', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '2021-11-21 16:11:25'),
(3, 'Juannnn', 'juan@gmail.com', 'prueba de funnnnn', '::1', 'Movil', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', '2022-06-06 14:01:22'),
(4, 'Jossssssssss', 'joss@gmail.com', 'prueba pc', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-06 14:02:36'),
(5, 'Yenifer', 'he@gmail.com', 'prueba de campo', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-12 16:11:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblDepartamentos`
--

DROP TABLE IF EXISTS `TblDepartamentos`;
CREATE TABLE `TblDepartamentos` (
  `IdDepartamento` bigint(20) NOT NULL,
  `Dep_Nombre` varchar(255) NOT NULL,
  `Dep_Codigo` int(20) NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TblDepartamentos`
--

INSERT INTO `TblDepartamentos` (`IdDepartamento`, `Dep_Nombre`, `Dep_Codigo`, `Est_IdEstado`) VALUES
(1, 'Antioquia', 5, 1),
(2, 'Atlantico', 8, 1),
(3, 'D. C. Santa Fe de Bogotá', 11, 1),
(4, 'Bolivar', 13, 1),
(5, 'Boyaca', 15, 1),
(6, 'Caldas', 17, 1),
(7, 'Caqueta', 18, 1),
(8, 'Cauca', 19, 1),
(9, 'Cesar', 20, 1),
(10, 'Cordova', 23, 1),
(11, 'Cundinamarca', 25, 1),
(12, 'Choco', 27, 1),
(13, 'Huila', 41, 1),
(14, 'La Guajira', 44, 1),
(15, 'Magdalena', 47, 1),
(16, 'Meta', 50, 1),
(17, 'Nariño', 52, 1),
(18, 'Norte de Santander', 54, 1),
(19, 'Quindio', 63, 1),
(20, 'Risaralda', 66, 1),
(21, 'Santander', 68, 1),
(22, 'Sucre', 70, 1),
(23, 'Tolima', 73, 1),
(24, 'Valle', 76, 1),
(25, 'Arauca', 81, 1),
(26, 'Casanare', 85, 1),
(27, 'Putumayo', 86, 1),
(28, 'San Andres', 88, 1),
(29, 'Amazonas', 91, 1),
(30, 'Guainia', 94, 1),
(31, 'Guaviare', 95, 1),
(32, 'Vaupes', 97, 1),
(33, 'Vichada', 99, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblDetalle_pedido`
--

DROP TABLE IF EXISTS `TblDetalle_pedido`;
CREATE TABLE `TblDetalle_pedido` (
  `IdDetallePed` bigint(20) NOT NULL,
  `Ped_IdPedido` bigint(20) NOT NULL,
  `Prod_IdProducto` bigint(20) NOT NULL,
  `DetP_Precio` decimal(11,2) NOT NULL,
  `DetP_Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblDetalle_pedido`
--

INSERT INTO `TblDetalle_pedido` (`IdDetallePed`, `Ped_IdPedido`, `Prod_IdProducto`, `DetP_Precio`, `DetP_Cantidad`) VALUES
(1, 1, 3, '169001.00', 1);

--
-- Disparadores `TblDetalle_pedido`
--
DROP TRIGGER IF EXISTS `Trig_DeleteTblDetalle_pedido`;
DELIMITER $$
CREATE TRIGGER `Trig_DeleteTblDetalle_pedido` AFTER DELETE ON `TblDetalle_pedido` FOR EACH ROW begin

	call Pro_AuditoriaTblDetalle_pedido('Eliminar','TblDetalle_pedido',OLD.IdDetallePed,OLD.Ped_IdPedido ,OLD.Prod_IdProducto,OLD.DetP_Precio,OLD.DetP_Cantidad,OLD.IdDetallePed,OLD.Ped_IdPedido ,OLD.Prod_IdProducto,OLD.DetP_Precio,OLD.DetP_Cantidad);

end
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `Trig_InsertTblDetalle_pedido`;
DELIMITER $$
CREATE TRIGGER `Trig_InsertTblDetalle_pedido` BEFORE INSERT ON `TblDetalle_pedido` FOR EACH ROW begin

	call Pro_AuditoriaTblDetalle_pedido('Registro','TblDetalle_pedido',NEW.IdDetallePed,NEW.Ped_IdPedido ,NEW.Prod_IdProducto,NEW.DetP_Precio,NEW.DetP_Cantidad,NEW.IdDetallePed,NEW.Ped_IdPedido ,NEW.Prod_IdProducto,NEW.DetP_Precio,NEW.DetP_Cantidad);

end
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `Trig_UpdateTblDetalle_pedido`;
DELIMITER $$
CREATE TRIGGER `Trig_UpdateTblDetalle_pedido` BEFORE UPDATE ON `TblDetalle_pedido` FOR EACH ROW begin

	call Pro_AuditoriaTblDetalle_pedido('Actualizo','TblDetalle_pedido',NEW.IdDetallePed,NEW.Ped_IdPedido ,NEW.Prod_IdProducto,NEW.DetP_Precio,NEW.DetP_Cantidad,OLD.IdDetallePed,OLD.Ped_IdPedido ,OLD.Prod_IdProducto,OLD.DetP_Precio,OLD.DetP_Cantidad);

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblDetalle_temp`
--

DROP TABLE IF EXISTS `TblDetalle_temp`;
CREATE TABLE `TblDetalle_temp` (
  `IdDetalleTemp` bigint(20) NOT NULL,
  `Per_IdPersona` bigint(20) NOT NULL,
  `Prod_IdProducto` bigint(20) NOT NULL,
  `DetT_Precio` decimal(11,2) NOT NULL,
  `DetT_Cantidad` int(11) NOT NULL,
  `DetT_Transaccionid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblDevolucion`
--

DROP TABLE IF EXISTS `TblDevolucion`;
CREATE TABLE `TblDevolucion` (
  `IdDevolucion` bigint(20) NOT NULL,
  `Ped_IdPedido` bigint(20) NOT NULL,
  `Dev_Idtransaccion` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Dev_DetalleDevolucion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Dev_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblEstado`
--

DROP TABLE IF EXISTS `TblEstado`;
CREATE TABLE `TblEstado` (
  `IdEstado` int(11) NOT NULL,
  `Est_Nombre` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblEstado`
--

INSERT INTO `TblEstado` (`IdEstado`, `Est_Nombre`, `Est_Descripcion`) VALUES
(1, 'Activo', 'Estado activo '),
(2, 'Inactivo', 'Estado Inactivo'),
(3, 'Completo', 'Estado Completo'),
(4, 'Aprobado', 'Estado Aprobado'),
(5, 'Cancelado', 'Estado Cancelado'),
(6, 'Pendiente', 'Estado Pendiente'),
(7, 'Entregado', 'Estado Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblImagen`
--

DROP TABLE IF EXISTS `TblImagen`;
CREATE TABLE `TblImagen` (
  `IdImagen` bigint(20) NOT NULL,
  `Prod_IdProducto` bigint(20) NOT NULL,
  `Img_Imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblImagen`
--

INSERT INTO `TblImagen` (`IdImagen`, `Prod_IdProducto`, `Img_Imagen`) VALUES
(1, 1, 'pro_1018ac4efefe93878b7468ce72c630a3.jpg'),
(2, 1, 'pro_f90affec1052d2bf94047cb224d16568.jpg'),
(3, 1, 'pro_053da6d3ee7d346b6577ccfef6dac02d.jpg'),
(4, 2, 'pro_04e3bbf847b466de4aed691fca982d9d.jpg'),
(12, 2, 'pro_bb8108451aa8a21610931110c19fb369.jpg'),
(13, 3, 'pro_2b1a81cfe27f85486abbf5a7f8860cd9.jpg'),
(14, 3, 'pro_ff9d29decc4d30b32e6f54f470140448.jpg'),
(15, 3, 'pro_05785de7b5aad5b8db5d41c1408eb0cc.jpg'),
(16, 2, 'pro_12e4cd7e39f2b9dfeec0b89459e98c09.jpg'),
(17, 4, 'pro_62163894b108434c5304af28c872cf1f.jpg'),
(18, 4, 'pro_9faa1a7413fb3e41b88098ea337b0df5.jpg'),
(19, 4, 'pro_d390406e2dab2587026d06ebba8b10c8.jpg'),
(20, 5, 'pro_d8484450bbaf9a1429c7a93f9fcdc97e.jpg'),
(21, 5, 'pro_b04153c91176844c8a2f5e8c3abae31f.jpg'),
(22, 5, 'pro_055fdcd176d2eb5645cafee8c9d7e877.jpg'),
(23, 6, 'pro_f486d71ff9461be98436974e7b76711c.jpg'),
(24, 6, 'pro_5f39927a52ce6bb1152b9fb98fa756b4.jpg'),
(25, 6, 'pro_c988b62758f7b6a872f1f4f5d48a6607.jpg'),
(26, 7, 'pro_3ada7b6ebb793ef775c6f5868de7c03e.jpg'),
(27, 7, 'pro_78051abf16596b9c7427973947799bbc.jpg'),
(28, 7, 'pro_a83866122f937b88315935c0cc5d51c7.jpg'),
(29, 8, 'pro_0673baf807f145e20d57eeccbd1d8b51.jpg'),
(30, 8, 'pro_e7fcec8e8ea251459686aef85bb983e8.jpg'),
(31, 8, 'pro_3ed0bed54f0fea2df5759063c8b4ca81.jpg'),
(32, 9, 'pro_9b6b398f4cb222b62da2551393cebccc.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblModulo`
--

DROP TABLE IF EXISTS `TblModulo`;
CREATE TABLE `TblModulo` (
  `IdModulo` bigint(20) NOT NULL,
  `Mod_Titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Mod_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblModulo`
--

INSERT INTO `TblModulo` (`IdModulo`, `Mod_Titulo`, `Mod_Descripcion`, `Est_IdEstado`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1),
(10, 'Parametros', 'Configuración inicial del sistema', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblMunicipios`
--

DROP TABLE IF EXISTS `TblMunicipios`;
CREATE TABLE `TblMunicipios` (
  `IdMunicipio` bigint(20) NOT NULL,
  `Dep_IdDepartamento` bigint(20) NOT NULL,
  `Mun_Codigo` int(11) NOT NULL,
  `Mun_Nombre` varchar(255) NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TblMunicipios`
--

INSERT INTO `TblMunicipios` (`IdMunicipio`, `Dep_IdDepartamento`, `Mun_Codigo`, `Mun_Nombre`, `Est_IdEstado`) VALUES
(1, 1, 1, 'MEDELLIN', 1),
(2, 1, 2, 'ABEJORRAL', 1),
(3, 1, 4, 'ABRIAQUI', 1),
(4, 1, 21, 'ALEJANDRIA', 1),
(5, 1, 30, 'AMAGA', 1),
(6, 1, 31, 'AMALFI', 1),
(7, 1, 34, 'ANDES', 1),
(8, 1, 36, 'ANGELOPOLIS', 1),
(9, 1, 38, 'ANGOSTURA', 1),
(10, 1, 40, 'ANORI', 1),
(11, 1, 42, 'ANTIOQUIA', 1),
(12, 1, 44, 'ANZA', 1),
(13, 1, 45, 'APARTADO', 1),
(14, 1, 51, 'ARBOLETES', 1),
(15, 1, 55, 'ARGELIA', 1),
(16, 1, 59, 'ARMENIA', 1),
(17, 1, 79, 'BARBOSA', 1),
(18, 1, 86, 'BELMIRA', 1),
(19, 1, 88, 'BELLO', 1),
(20, 1, 91, 'BETANIA', 1),
(21, 1, 93, 'BETULIA', 1),
(22, 1, 101, 'BOLIVAR', 1),
(23, 1, 107, 'BRICEÑO', 1),
(24, 1, 113, 'BURITICA', 1),
(25, 1, 120, 'CACERES', 1),
(26, 1, 125, 'CAICEDO', 1),
(27, 1, 129, 'CALDAS', 1),
(28, 1, 134, 'CAMPAMENTO', 1),
(29, 1, 138, 'CAÑASGORDAS', 1),
(30, 1, 142, 'CARACOLI', 1),
(31, 1, 145, 'CARAMANTA', 1),
(32, 1, 147, 'CAREPA', 1),
(33, 1, 148, 'CARMEN DE VIBORAL', 1),
(34, 1, 150, 'CAROLINA', 1),
(35, 1, 154, 'CAUCASIA', 1),
(36, 1, 172, 'CHIGORODO', 1),
(37, 1, 190, 'CISNEROS', 1),
(38, 1, 197, 'COCORNA', 1),
(39, 1, 206, 'CONCEPCION', 1),
(40, 1, 209, 'CONCORDIA', 1),
(41, 1, 212, 'COPACABANA', 1),
(42, 1, 234, 'DABEIBA', 1),
(43, 1, 237, 'DON MATIAS', 1),
(44, 1, 240, 'EBEJICO', 1),
(45, 1, 250, 'EL BAGRE', 1),
(46, 1, 264, 'ENTRERRIOS', 1),
(47, 1, 266, 'ENVIGADO', 1),
(48, 1, 282, 'FREDONIA', 1),
(49, 1, 284, 'FRONTINO', 1),
(50, 1, 306, 'GIRALDO', 1),
(51, 1, 308, 'GIRARDOTA', 1),
(52, 1, 310, 'GOMEZ PLATA', 1),
(53, 1, 313, 'GRANADA', 1),
(54, 1, 315, 'GUADALUPE', 1),
(55, 1, 318, 'GUARNE', 1),
(56, 1, 321, 'GUATAPE', 1),
(57, 1, 347, 'HELICONIA', 1),
(58, 1, 353, 'HISPANIA', 1),
(59, 1, 360, 'ITAGUI', 1),
(60, 1, 361, 'ITUANGO', 1),
(61, 1, 364, 'JARDIN', 1),
(62, 1, 368, 'JERICO', 1),
(63, 1, 376, 'LA CEJA', 1),
(64, 1, 380, 'LA ESTRELLA', 1),
(65, 1, 390, 'LA PINTADA', 1),
(66, 1, 400, 'LA UNION', 1),
(67, 1, 411, 'LIBORINA', 1),
(68, 1, 425, 'MACEO', 1),
(69, 1, 440, 'MARINILLA', 1),
(70, 1, 467, 'MONTEBELLO', 1),
(71, 1, 475, 'MURINDO', 1),
(72, 1, 480, 'MUTATA', 1),
(73, 1, 483, 'NARIÑO', 1),
(74, 1, 490, 'NECOCLI', 1),
(75, 1, 495, 'NECHI', 1),
(76, 1, 501, 'OLAYA', 1),
(77, 1, 541, 'PEÑOL', 1),
(78, 1, 543, 'PEQUE', 1),
(79, 1, 576, 'PUEBLORRICO', 1),
(80, 1, 579, 'PUERTO BERRIO', 1),
(81, 1, 585, 'PUERTO NARE (LA MAGDALENA)', 1),
(82, 1, 591, 'PUERTO TRIUNFO', 1),
(83, 1, 604, 'REMEDIOS', 1),
(84, 1, 607, 'RETIRO', 1),
(85, 1, 615, 'RIONEGRO', 1),
(86, 1, 628, 'SABANALARGA', 1),
(87, 1, 631, 'SABANETA', 1),
(88, 1, 642, 'SALGAR', 1),
(89, 1, 647, 'SAN ANDRES', 1),
(90, 1, 649, 'SAN CARLOS', 1),
(91, 1, 652, 'SAN FRANCISCO', 1),
(92, 1, 656, 'SAN JERONIMO', 1),
(93, 1, 658, 'SAN JOSE DE LA MONTAÑA', 1),
(94, 1, 659, 'SAN JUAN DE URABA', 1),
(95, 1, 660, 'SAN LUIS', 1),
(96, 1, 664, 'SAN PEDRO', 1),
(97, 1, 665, 'SAN PEDRO DE URABA', 1),
(98, 1, 667, 'SAN RAFAEL', 1),
(99, 1, 670, 'SAN ROQUE', 1),
(100, 1, 674, 'SAN VICENTE', 1),
(101, 1, 679, 'SANTA BARBARA', 1),
(102, 1, 686, 'SANTA ROSA DE OSOS', 1),
(103, 1, 690, 'SANTO DOMINGO', 1),
(104, 1, 697, 'SANTUARIO', 1),
(105, 1, 736, 'SEGOVIA', 1),
(106, 1, 756, 'SONSON', 1),
(107, 1, 761, 'SOPETRAN', 1),
(108, 1, 789, 'TAMESIS', 1),
(109, 1, 790, 'TARAZA', 1),
(110, 1, 792, 'TARSO', 1),
(111, 1, 809, 'TITIRIBI', 1),
(112, 1, 819, 'TOLEDO', 1),
(113, 1, 837, 'TURBO', 1),
(114, 1, 842, 'URAMITA', 1),
(115, 1, 847, 'URRAO', 1),
(116, 1, 854, 'VALDIVIA', 1),
(117, 1, 856, 'VALPARAISO', 1),
(118, 1, 858, 'VEGACHI', 1),
(119, 1, 861, 'VENECIA', 1),
(120, 1, 873, 'VIGIA DEL FUERTE', 1),
(121, 1, 885, 'YALI', 1),
(122, 1, 887, 'YARUMAL', 1),
(123, 1, 890, 'YOLOMBO', 1),
(124, 1, 893, 'YONDO', 1),
(125, 1, 895, 'ZARAGOZA', 1),
(126, 2, 1, 'BARRANQUILLA (DISTRITO ESPECIAL INDUSTRIAL Y PORTUARIO DE BARRANQUILLA)', 1),
(127, 2, 78, 'BARANOA', 1),
(128, 2, 137, 'CAMPO DE LA CRUZ', 1),
(129, 2, 141, 'CANDELARIA', 1),
(130, 2, 296, 'GALAPA', 1),
(131, 2, 372, 'JUAN DE ACOSTA', 1),
(132, 2, 421, 'LURUACO', 1),
(133, 2, 433, 'MALAMBO', 1),
(134, 2, 436, 'MANATI', 1),
(135, 2, 520, 'PALMAR DE VARELA', 1),
(136, 2, 549, 'PIOJO', 1),
(137, 2, 558, 'POLO NUEVO', 1),
(138, 2, 560, 'PONEDERA', 1),
(139, 2, 573, 'PUERTO COLOMBIA', 1),
(140, 2, 606, 'REPELON', 1),
(141, 2, 634, 'SABANAGRANDE', 1),
(142, 2, 638, 'SABANALARGA', 1),
(143, 2, 675, 'SANTA LUCIA', 1),
(144, 2, 685, 'SANTO TOMAS', 1),
(145, 2, 758, 'SOLEDAD', 1),
(146, 2, 770, 'SUAN', 1),
(147, 2, 832, 'TUBARA', 1),
(148, 2, 849, 'USIACURI', 1),
(149, 3, 1, 'Santa Fe de Bogotá', 1),
(150, 3, 1, 'USAQUEN', 1),
(151, 3, 2, 'CHAPINERO', 1),
(152, 3, 3, 'SANTA FE', 1),
(153, 3, 4, 'SAN CRISTOBAL', 1),
(154, 3, 5, 'USME', 1),
(155, 3, 6, 'TUNJUELITO', 1),
(156, 3, 7, 'BOSA', 1),
(157, 3, 8, 'KENNEDY', 1),
(158, 3, 9, 'FONTIBON', 1),
(159, 3, 10, 'ENGATIVA', 1),
(160, 3, 11, 'SUBA', 1),
(161, 3, 12, 'BARRIOS UNIDOS', 1),
(162, 3, 13, 'TEUSAQUILLO', 1),
(163, 3, 14, 'MARTIRES', 1),
(164, 3, 15, 'ANTONIO NARIÑO', 1),
(165, 3, 16, 'PUENTE ARANDA', 1),
(166, 3, 17, 'CANDELARIA', 1),
(167, 3, 18, 'RAFAEL URIBE', 1),
(168, 3, 19, 'CIUDAD BOLIVAR', 1),
(169, 3, 20, 'SUMAPAZ', 1),
(170, 4, 1, 'CARTAGENA (DISTRITO TURISTICO Y CULTURAL DE CARTAGENA)', 1),
(171, 4, 6, 'ACHI', 1),
(172, 4, 30, 'ALTOS DEL ROSARIO', 1),
(173, 4, 42, 'ARENAL', 1),
(174, 4, 52, 'ARJONA', 1),
(175, 4, 62, 'ARROYOHONDO', 1),
(176, 4, 74, 'BARRANCO DE LOBA', 1),
(177, 4, 140, 'CALAMAR', 1),
(178, 4, 160, 'CANTAGALLO', 1),
(179, 4, 188, 'CICUCO', 1),
(180, 4, 212, 'CORDOBA', 1),
(181, 4, 222, 'CLEMENCIA', 1),
(182, 4, 244, 'EL CARMEN DE BOLIVAR', 1),
(183, 4, 248, 'EL GUAMO', 1),
(184, 4, 268, 'EL PEÑON', 1),
(185, 4, 300, 'HATILLO DE LOBA', 1),
(186, 4, 430, 'MAGANGUE', 1),
(187, 4, 433, 'MAHATES', 1),
(188, 4, 440, 'MARGARITA', 1),
(189, 4, 442, 'MARIA LA BAJA', 1),
(190, 4, 458, 'MONTECRISTO', 1),
(191, 4, 468, 'MOMPOS', 1),
(192, 4, 473, 'MORALES', 1),
(193, 4, 549, 'PINILLOS', 1),
(194, 4, 580, 'REGIDOR', 1),
(195, 4, 600, 'RIO VIEJO', 1),
(196, 4, 620, 'SAN CRISTOBAL', 1),
(197, 4, 647, 'SAN ESTANISLAO', 1),
(198, 4, 650, 'SAN FERNANDO', 1),
(199, 4, 654, 'SAN JACINTO', 1),
(200, 4, 655, 'SAN JACINTO DEL CAUCA', 1),
(201, 4, 657, 'SAN JUAN NEPOMUCENO', 1),
(202, 4, 667, 'SAN MARTIN DE LOBA', 1),
(203, 4, 670, 'SAN PABLO', 1),
(204, 4, 673, 'SANTA CATALINA', 1),
(205, 4, 683, 'SANTA ROSA', 1),
(206, 4, 688, 'SANTA ROSA DEL SUR', 1),
(207, 4, 744, 'SIMITI', 1),
(208, 4, 760, 'SOPLAVIENTO', 1),
(209, 4, 780, 'TALAIGUA NUEVO', 1),
(210, 4, 810, 'TIQUISIO (PUERTO RICO)', 1),
(211, 4, 836, 'TURBACO', 1),
(212, 4, 838, 'TURBANA', 1),
(213, 4, 873, 'VILLANUEVA', 1),
(214, 4, 894, 'ZAMBRANO', 1),
(215, 5, 1, 'TUNJA', 1),
(216, 5, 22, 'ALMEIDA', 1),
(217, 5, 47, 'AQUITANIA', 1),
(218, 5, 51, 'ARCABUCO', 1),
(219, 5, 87, 'BELEN', 1),
(220, 5, 90, 'BERBEO', 1),
(221, 5, 92, 'BETEITIVA', 1),
(222, 5, 97, 'BOAVITA', 1),
(223, 5, 104, 'BOYACA', 1),
(224, 5, 106, 'BRICEÑO', 1),
(225, 5, 109, 'BUENAVISTA', 1),
(226, 5, 114, 'BUSBANZA', 1),
(227, 5, 131, 'CALDAS', 1),
(228, 5, 135, 'CAMPOHERMOSO', 1),
(229, 5, 162, 'CERINZA', 1),
(230, 5, 172, 'CHINAVITA', 1),
(231, 5, 176, 'CHIQUINQUIRA', 1),
(232, 5, 180, 'CHISCAS', 1),
(233, 5, 183, 'CHITA', 1),
(234, 5, 185, 'CHITARAQUE', 1),
(235, 5, 187, 'CHIVATA', 1),
(236, 5, 189, 'CIENEGA', 1),
(237, 5, 204, 'COMBITA', 1),
(238, 5, 212, 'COPER', 1),
(239, 5, 215, 'CORRALES', 1),
(240, 5, 218, 'COVARACHIA', 1),
(241, 5, 223, 'CUBARA', 1),
(242, 5, 224, 'CUCAITA', 1),
(243, 5, 226, 'CUITIVA', 1),
(244, 5, 232, 'CHIQUIZA', 1),
(245, 5, 236, 'CHIVOR', 1),
(246, 5, 238, 'DUITAMA', 1),
(247, 5, 244, 'EL COCUY', 1),
(248, 5, 248, 'EL ESPINO', 1),
(249, 5, 272, 'FIRAVITOBA', 1),
(250, 5, 276, 'FLORESTA', 1),
(251, 5, 293, 'GACHANTIVA', 1),
(252, 5, 296, 'GAMEZA', 1),
(253, 5, 299, 'GARAGOA', 1),
(254, 5, 317, 'GUACAMAYAS', 1),
(255, 5, 322, 'GUATEQUE', 1),
(256, 5, 325, 'GUAYATA', 1),
(257, 5, 332, 'GUICAN', 1),
(258, 5, 362, 'IZA', 1),
(259, 5, 367, 'JENESANO', 1),
(260, 5, 368, 'JERICO', 1),
(261, 5, 377, 'LABRANZAGRANDE', 1),
(262, 5, 380, 'LA CAPILLA', 1),
(263, 5, 401, 'LA VICTORIA', 1),
(264, 5, 403, 'LA UVITA', 1),
(265, 5, 407, 'VILLA DE LEIVA', 1),
(266, 5, 425, 'MACANAL', 1),
(267, 5, 442, 'MARIPI', 1),
(268, 5, 455, 'MIRAFLORES', 1),
(269, 5, 464, 'MONGUA', 1),
(270, 5, 466, 'MONGUI', 1),
(271, 5, 469, 'MONIQUIRA', 1),
(272, 5, 476, 'MOTAVITA', 1),
(273, 5, 480, 'MUZO', 1),
(274, 5, 491, 'NOBSA', 1),
(275, 5, 494, 'NUEVO COLON', 1),
(276, 5, 500, 'OICATA', 1),
(277, 5, 507, 'OTANCHE', 1),
(278, 5, 511, 'PACHAVITA', 1),
(279, 5, 514, 'PAEZ', 1),
(280, 5, 516, 'PAIPA', 1),
(281, 5, 518, 'PAJARITO', 1),
(282, 5, 522, 'PANQUEBA', 1),
(283, 5, 531, 'PAUNA', 1),
(284, 5, 533, 'PAYA', 1),
(285, 5, 537, 'PAZ DEL RIO', 1),
(286, 5, 542, 'PESCA', 1),
(287, 5, 550, 'PISBA', 1),
(288, 5, 572, 'PUERTO BOYACA', 1),
(289, 5, 580, 'QUIPAMA', 1),
(290, 5, 599, 'RAMIRIQUI', 1),
(291, 5, 600, 'RAQUIRA', 1),
(292, 5, 621, 'RONDON', 1),
(293, 5, 632, 'SABOYA', 1),
(294, 5, 638, 'SACHICA', 1),
(295, 5, 646, 'SAMACA', 1),
(296, 5, 660, 'SAN EDUARDO', 1),
(297, 5, 664, 'SAN JOSE DE PARE', 1),
(298, 5, 667, 'SAN LUIS DE GACENO', 1),
(299, 5, 673, 'SAN MATEO', 1),
(300, 5, 676, 'SAN MIGUEL DE SEMA', 1),
(301, 5, 681, 'SAN PABLO DE BORBUR', 1),
(302, 5, 686, 'SANTANA', 1),
(303, 5, 690, 'SANTA MARIA', 1),
(304, 5, 693, 'SANTA ROSA DE VITERBO', 1),
(305, 5, 696, 'SANTA SOFIA', 1),
(306, 5, 720, 'SATIVANORTE', 1),
(307, 5, 723, 'SATIVASUR', 1),
(308, 5, 740, 'SIACHOQUE', 1),
(309, 5, 753, 'SOATA', 1),
(310, 5, 755, 'SOCOTA', 1),
(311, 5, 757, 'SOCHA', 1),
(312, 5, 759, 'SOGAMOSO', 1),
(313, 5, 761, 'SOMONDOCO', 1),
(314, 5, 762, 'SORA', 1),
(315, 5, 763, 'SOTAQUIRA', 1),
(316, 5, 764, 'SORACA', 1),
(317, 5, 774, 'SUSACON', 1),
(318, 5, 776, 'SUTAMARCHAN', 1),
(319, 5, 778, 'SUTATENZA', 1),
(320, 5, 790, 'TASCO', 1),
(321, 5, 798, 'TENZA', 1),
(322, 5, 804, 'TIBANA', 1),
(323, 5, 806, 'TIBASOSA', 1),
(324, 5, 808, 'TINJACA', 1),
(325, 5, 810, 'TIPACOQUE', 1),
(326, 5, 814, 'TOCA', 1),
(327, 5, 816, 'TOGUI', 1),
(328, 5, 820, 'TOPAGA', 1),
(329, 5, 822, 'TOTA', 1),
(330, 5, 832, 'TUNUNGUA', 1),
(331, 5, 835, 'TURMEQUE', 1),
(332, 5, 837, 'TUTA', 1),
(333, 5, 839, 'TUTASA', 1),
(334, 5, 842, 'UMBITA', 1),
(335, 5, 861, 'VENTAQUEMADA', 1),
(336, 5, 879, 'VIRACACHA', 1),
(337, 5, 897, 'ZETAQUIRA', 1),
(338, 6, 1, 'MANIZALES', 1),
(339, 6, 13, 'AGUADAS', 1),
(340, 6, 42, 'ANSERMA', 1),
(341, 6, 50, 'ARANZAZU', 1),
(342, 6, 88, 'BELALCAZAR', 1),
(343, 6, 174, 'CHINCHINA', 1),
(344, 6, 272, 'FILADELFIA', 1),
(345, 6, 380, 'LA DORADA', 1),
(346, 6, 388, 'LA MERCED', 1),
(347, 6, 433, 'MANZANARES', 1),
(348, 6, 442, 'MARMATO', 1),
(349, 6, 444, 'MARQUETALIA', 1),
(350, 6, 446, 'MARULANDA', 1),
(351, 6, 486, 'NEIRA', 1),
(352, 6, 495, 'NORCASIA', 1),
(353, 6, 513, 'PACORA', 1),
(354, 6, 524, 'PALESTINA', 1),
(355, 6, 541, 'PENSILVANIA', 1),
(356, 6, 614, 'RIOSUCIO', 1),
(357, 6, 616, 'RISARALDA', 1),
(358, 6, 653, 'SALAMINA', 1),
(359, 6, 662, 'SAMANA', 1),
(360, 6, 665, 'SAN JOSE', 1),
(361, 6, 777, 'SUPIA', 1),
(362, 6, 867, 'VICTORIA', 1),
(363, 6, 873, 'VILLAMARIA', 1),
(364, 6, 877, 'VITERBO', 1),
(365, 7, 1, 'FLORENCIA', 1),
(366, 7, 29, 'ALBANIA', 1),
(367, 7, 94, 'BELEN DE LOS ANDAQUIES', 1),
(368, 7, 150, 'CARTAGENA DEL CHAIRA', 1),
(369, 7, 205, 'CURILLO', 1),
(370, 7, 247, 'EL DONCELLO', 1),
(371, 7, 256, 'EL PAUJIL', 1),
(372, 7, 410, 'LA MONTAÑITA', 1),
(373, 7, 460, 'MILAN', 1),
(374, 7, 479, 'MORELIA', 1),
(375, 7, 592, 'PUERTO RICO', 1),
(376, 7, 610, 'SAN JOSE DE FRAGUA', 1),
(377, 7, 753, 'SAN VICENTE DEL CAGUAN', 1),
(378, 7, 756, 'SOLANO', 1),
(379, 7, 785, 'SOLITA', 1),
(380, 7, 860, 'VALPARAISO', 1),
(381, 8, 1, 'POPAYAN', 1),
(382, 8, 22, 'ALMAGUER', 1),
(383, 8, 50, 'ARGELIA', 1),
(384, 8, 75, 'BALBOA', 1),
(385, 8, 100, 'BOLIVAR', 1),
(386, 8, 110, 'BUENOS AIRES', 1),
(387, 8, 130, 'CAJIBIO', 1),
(388, 8, 137, 'CALDONO', 1),
(389, 8, 142, 'CALOTO', 1),
(390, 8, 212, 'CORINTO', 1),
(391, 8, 256, 'EL TAMBO', 1),
(392, 8, 290, 'FLORENCIA', 1),
(393, 8, 318, 'GUAPI', 1),
(394, 8, 355, 'INZA', 1),
(395, 8, 364, 'JAMBALO', 1),
(396, 8, 392, 'LA SIERRA', 1),
(397, 8, 397, 'LA VEGA', 1),
(398, 8, 418, 'LOPEZ (MICAY)', 1),
(399, 8, 450, 'MERCADERES', 1),
(400, 8, 455, 'MIRANDA', 1),
(401, 8, 473, 'MORALES', 1),
(402, 8, 513, 'PADILLA', 1),
(403, 8, 517, 'PAEZ (BELALCAZAR)', 1),
(404, 8, 532, 'PATIA (EL BORDO)', 1),
(405, 8, 533, 'PIAMONTE', 1),
(406, 8, 548, 'PIENDAMO', 1),
(407, 8, 573, 'PUERTO TEJADA', 1),
(408, 8, 585, 'PURACE (COCONUCO)', 1),
(409, 8, 622, 'ROSAS', 1),
(410, 8, 693, 'SAN SEBASTIAN', 1),
(411, 8, 698, 'SANTANDER DE QUILICHAO', 1),
(412, 8, 701, 'SANTA ROSA', 1),
(413, 8, 743, 'SILVIA', 1),
(414, 8, 760, 'SOTARA (PAISPAMBA)', 1),
(415, 8, 780, 'SUAREZ', 1),
(416, 8, 807, 'TIMBIO', 1),
(417, 8, 809, 'TIMBIQUI', 1),
(418, 8, 821, 'TORIBIO', 1),
(419, 8, 824, 'TOTORO', 1),
(420, 8, 845, 'VILLARICA', 1),
(421, 9, 1, 'VALLEDUPAR', 1),
(422, 9, 11, 'AGUACHICA', 1),
(423, 9, 13, 'AGUSTIN CODAZZI', 1),
(424, 9, 32, 'ASTREA', 1),
(425, 9, 45, 'BECERRIL', 1),
(426, 9, 60, 'BOSCONIA', 1),
(427, 9, 175, 'CHIMICHAGUA', 1),
(428, 9, 178, 'CHIRIGUANA', 1),
(429, 9, 228, 'CURUMANI', 1),
(430, 9, 238, 'EL COPEY', 1),
(431, 9, 250, 'EL PASO', 1),
(432, 9, 295, 'GAMARRA', 1),
(433, 9, 310, 'GONZALEZ', 1),
(434, 9, 383, 'LA GLORIA', 1),
(435, 9, 400, 'LA JAGUA IBIRICO', 1),
(436, 9, 443, 'MANAURE (BALCON DEL CESAR)', 1),
(437, 9, 517, 'PAILITAS', 1),
(438, 9, 550, 'PELAYA', 1),
(439, 9, 570, 'PUEBLO BELLO', 1),
(440, 9, 614, 'RIO DE ORO', 1),
(441, 9, 621, 'LA PAZ (ROBLES)', 1),
(442, 9, 710, 'SAN ALBERTO', 1),
(443, 9, 750, 'SAN DIEGO', 1),
(444, 9, 770, 'SAN MARTIN', 1),
(445, 9, 787, 'TAMALAMEQUE', 1),
(446, 10, 1, 'MONTERIA', 1),
(447, 10, 68, 'AYAPEL', 1),
(448, 10, 79, 'BUENAVISTA', 1),
(449, 10, 90, 'CANALETE', 1),
(450, 10, 162, 'CERETE', 1),
(451, 10, 168, 'CHIMA', 1),
(452, 10, 182, 'CHINU', 1),
(453, 10, 189, 'CIENAGA DE ORO', 1),
(454, 10, 300, 'COTORRA', 1),
(455, 10, 350, 'LA APARTADA', 1),
(456, 10, 417, 'LORICA', 1),
(457, 10, 419, 'LOS CORDOBAS', 1),
(458, 10, 464, 'MOMIL', 1),
(459, 10, 466, 'MONTELIBANO', 1),
(460, 10, 500, 'MOÑITOS', 1),
(461, 10, 555, 'PLANETA RICA', 1),
(462, 10, 570, 'PUEBLO NUEVO', 1),
(463, 10, 574, 'PUERTO ESCONDIDO', 1),
(464, 10, 580, 'PUERTO LIBERTADOR', 1),
(465, 10, 586, 'PURISIMA', 1),
(466, 10, 660, 'SAHAGUN', 1),
(467, 10, 670, 'SAN ANDRES SOTAVENTO', 1),
(468, 10, 672, 'SAN ANTERO', 1),
(469, 10, 675, 'SAN BERNARDO DEL VIENTO', 1),
(470, 10, 678, 'SAN CARLOS', 1),
(471, 10, 686, 'SAN PELAYO', 1),
(472, 10, 807, 'TIERRALTA', 1),
(473, 10, 855, 'VALENCIA', 1),
(474, 11, 1, 'AGUA DE DIOS', 1),
(475, 11, 19, 'ALBAN', 1),
(476, 11, 35, 'ANAPOIMA', 1),
(477, 11, 40, 'ANOLAIMA', 1),
(478, 11, 53, 'ARBELAEZ', 1),
(479, 11, 86, 'BELTRAN', 1),
(480, 11, 95, 'BITUIMA', 1),
(481, 11, 99, 'BOJACA', 1),
(482, 11, 120, 'CABRERA', 1),
(483, 11, 123, 'CACHIPAY', 1),
(484, 11, 126, 'CAJICA', 1),
(485, 11, 148, 'CAPARRAPI', 1),
(486, 11, 151, 'CAQUEZA', 1),
(487, 11, 154, 'CARMEN DE CARUPA', 1),
(488, 11, 168, 'CHAGUANI', 1),
(489, 11, 175, 'CHIA', 1),
(490, 11, 178, 'CHIPAQUE', 1),
(491, 11, 181, 'CHOACHI', 1),
(492, 11, 183, 'CHOCONTA', 1),
(493, 11, 200, 'COGUA', 1),
(494, 11, 214, 'COTA', 1),
(495, 11, 224, 'CUCUNUBA', 1),
(496, 11, 245, 'EL COLEGIO', 1),
(497, 11, 258, 'EL PEÑON', 1),
(498, 11, 260, 'EL ROSAL', 1),
(499, 11, 269, 'FACATATIVA', 1),
(500, 11, 279, 'FOMEQUE', 1),
(501, 11, 281, 'FOSCA', 1),
(502, 11, 286, 'FUNZA', 1),
(503, 11, 288, 'FUQUENE', 1),
(504, 11, 290, 'FUSAGASUGA', 1),
(505, 11, 293, 'GACHALA', 1),
(506, 11, 295, 'GACHANCIPA', 1),
(507, 11, 297, 'GACHETA', 1),
(508, 11, 299, 'GAMA', 1),
(509, 11, 307, 'GIRARDOT', 1),
(510, 11, 312, 'GRANADA', 1),
(511, 11, 317, 'GUACHETA', 1),
(512, 11, 320, 'GUADUAS', 1),
(513, 11, 322, 'GUASCA', 1),
(514, 11, 324, 'GUATAQUI', 1),
(515, 11, 326, 'GUATAVITA', 1),
(516, 11, 328, 'GUAYABAL DE SIQUIMA', 1),
(517, 11, 335, 'GUAYABETAL', 1),
(518, 11, 339, 'GUTIERREZ', 1),
(519, 11, 368, 'JERUSALEN', 1),
(520, 11, 372, 'JUNIN', 1),
(521, 11, 377, 'LA CALERA', 1),
(522, 11, 386, 'LA MESA', 1),
(523, 11, 394, 'LA PALMA', 1),
(524, 11, 398, 'LA PEÑA', 1),
(525, 11, 402, 'LA VEGA', 1),
(526, 11, 407, 'LENGUAZAQUE', 1),
(527, 11, 426, 'MACHETA', 1),
(528, 11, 430, 'MADRID', 1),
(529, 11, 436, 'MANTA', 1),
(530, 11, 438, 'MEDINA', 1),
(531, 11, 473, 'MOSQUERA', 1),
(532, 11, 483, 'NARIÑO', 1),
(533, 11, 486, 'NEMOCON', 1),
(534, 11, 488, 'NILO', 1),
(535, 11, 489, 'NIMAIMA', 1),
(536, 11, 491, 'NOCAIMA', 1),
(537, 11, 506, 'VENECIA (OSPINA PEREZ)', 1),
(538, 11, 513, 'PACHO', 1),
(539, 11, 518, 'PAIME', 1),
(540, 11, 524, 'PANDI', 1),
(541, 11, 530, 'PARATEBUENO', 1),
(542, 11, 535, 'PASCA', 1),
(543, 11, 572, 'PUERTO SALGAR', 1),
(544, 11, 580, 'PULI', 1),
(545, 11, 592, 'QUEBRADANEGRA', 1),
(546, 11, 594, 'QUETAME', 1),
(547, 11, 596, 'QUIPILE', 1),
(548, 11, 599, 'APULO (RAFAEL REYES)', 1),
(549, 11, 612, 'RICAURTE', 1),
(550, 11, 645, 'SAN ANTONIO DEL TEQUENDAMA', 1),
(551, 11, 649, 'SAN BERNARDO', 1),
(552, 11, 653, 'SAN CAYETANO', 1),
(553, 11, 658, 'SAN FRANCISCO', 1),
(554, 11, 662, 'SAN JUAN DE RIOSECO', 1),
(555, 11, 718, 'SASAIMA', 1),
(556, 11, 736, 'SESQUILE', 1),
(557, 11, 740, 'SIBATE', 1),
(558, 11, 743, 'SILVANIA', 1),
(559, 11, 745, 'SIMIJACA', 1),
(560, 11, 754, 'SOACHA', 1),
(561, 11, 758, 'SOPO', 1),
(562, 11, 769, 'SUBACHOQUE', 1),
(563, 11, 772, 'SUESCA', 1),
(564, 11, 777, 'SUPATA', 1),
(565, 11, 779, 'SUSA', 1),
(566, 11, 781, 'SUTATAUSA', 1),
(567, 11, 785, 'TABIO', 1),
(568, 11, 793, 'TAUSA', 1),
(569, 11, 797, 'TENA', 1),
(570, 11, 799, 'TENJO', 1),
(571, 11, 805, 'TIBACUY', 1),
(572, 11, 807, 'TIBIRITA', 1),
(573, 11, 815, 'TOCAIMA', 1),
(574, 11, 817, 'TOCANCIPA', 1),
(575, 11, 823, 'TOPAIPI', 1),
(576, 11, 839, 'UBALA', 1),
(577, 11, 841, 'UBAQUE', 1),
(578, 11, 843, 'UBATE', 1),
(579, 11, 845, 'UNE', 1),
(580, 11, 851, 'UTICA', 1),
(581, 11, 862, 'VERGARA', 1),
(582, 11, 867, 'VIANI', 1),
(583, 11, 871, 'VILLAGOMEZ', 1),
(584, 11, 873, 'VILLAPINZON', 1),
(585, 11, 875, 'VILLETA', 1),
(586, 11, 878, 'VIOTA', 1),
(587, 11, 885, 'YACOPI', 1),
(588, 11, 898, 'ZIPACON', 1),
(589, 11, 899, 'ZIPAQUIRA', 1),
(590, 12, 1, 'QUIBDO (SAN FRANCISCO DE QUIBDO)', 1),
(591, 12, 6, 'ACANDI', 1),
(592, 12, 25, 'ALTO BAUDO (PIE DE PATO)', 1),
(593, 12, 50, 'ATRATO', 1),
(594, 12, 73, 'BAGADO', 1),
(595, 12, 75, 'BAHIA SOLANO (MUTIS)', 1),
(596, 12, 77, 'BAJO BAUDO (PIZARRO)', 1),
(597, 12, 99, 'BOJAYA (BELLAVISTA)', 1),
(598, 12, 135, 'CANTON DE SAN PABLO (MANAGRU)', 1),
(599, 12, 205, 'CONDOTO', 1),
(600, 12, 245, 'EL CARMEN DE ATRATO', 1),
(601, 12, 250, 'LITORAL DEL BAJO SAN JUAN (SANTA GENOVEVA DE DOCORDO)', 1),
(602, 12, 361, 'ISTMINA', 1),
(603, 12, 372, 'JURADO', 1),
(604, 12, 413, 'LLORO', 1),
(605, 12, 425, 'MEDIO ATRATO', 1),
(606, 12, 430, 'MEDIO BAUDO', 1),
(607, 12, 491, 'NOVITA', 1),
(608, 12, 495, 'NUQUI', 1),
(609, 12, 600, 'RIOQUITO', 1),
(610, 12, 615, 'RIOSUCIO', 1),
(611, 12, 660, 'SAN JOSE DEL PALMAR', 1),
(612, 12, 745, 'SIPI', 1),
(613, 12, 787, 'TADO', 1),
(614, 12, 800, 'UNGUIA', 1),
(615, 12, 810, 'UNION PANAMERICANA', 1),
(616, 13, 1, 'NEIVA', 1),
(617, 13, 6, 'ACEVEDO', 1),
(618, 13, 13, 'AGRADO', 1),
(619, 13, 16, 'AIPE', 1),
(620, 13, 20, 'ALGECIRAS', 1),
(621, 13, 26, 'ALTAMIRA', 1),
(622, 13, 78, 'BARAYA', 1),
(623, 13, 132, 'CAMPOALEGRE', 1),
(624, 13, 206, 'COLOMBIA', 1),
(625, 13, 244, 'ELIAS', 1),
(626, 13, 298, 'GARZON', 1),
(627, 13, 306, 'GIGANTE', 1),
(628, 13, 319, 'GUADALUPE', 1),
(629, 13, 349, 'HOBO', 1),
(630, 13, 357, 'IQUIRA', 1),
(631, 13, 359, 'ISNOS (SAN JOSE DE ISNOS)', 1),
(632, 13, 378, 'LA ARGENTINA', 1),
(633, 13, 396, 'LA PLATA', 1),
(634, 13, 483, 'NATAGA', 1),
(635, 13, 503, 'OPORAPA', 1),
(636, 13, 518, 'PAICOL', 1),
(637, 13, 524, 'PALERMO', 1),
(638, 13, 530, 'PALESTINA', 1),
(639, 13, 548, 'PITAL', 1),
(640, 13, 551, 'PITALITO', 1),
(641, 13, 615, 'RIVERA', 1),
(642, 13, 660, 'SALADOBLANCO', 1),
(643, 13, 668, 'SAN AGUSTIN', 1),
(644, 13, 676, 'SANTA MARIA', 1),
(645, 13, 770, 'SUAZA', 1),
(646, 13, 791, 'TARQUI', 1),
(647, 13, 797, 'TESALIA', 1),
(648, 13, 799, 'TELLO', 1),
(649, 13, 801, 'TERUEL', 1),
(650, 13, 807, 'TIMANA', 1),
(651, 13, 872, 'VILLAVIEJA', 1),
(652, 13, 885, 'YAGUARA', 1),
(653, 14, 1, 'RIOHACHA', 1),
(654, 14, 78, 'BARRANCAS', 1),
(655, 14, 90, 'DIBULLA', 1),
(656, 14, 98, 'DISTRACCION', 1),
(657, 14, 110, 'EL MOLINO', 1),
(658, 14, 279, 'FONSECA', 1),
(659, 14, 378, 'HATONUEVO', 1),
(660, 14, 420, 'LA JAGUA DEL PILAR', 1),
(661, 14, 430, 'MAICAO', 1),
(662, 14, 560, 'MANAURE', 1),
(663, 14, 650, 'SAN JUAN DEL CESAR', 1),
(664, 14, 847, 'URIBIA', 1),
(665, 14, 855, 'URUMITA', 1),
(666, 14, 874, 'VILLANUEVA', 1),
(667, 15, 1, 'SANTA MARTA (DISTRITO TURISTICO CULTURAL E HISTORICO DE SANTA MARTA)', 1),
(668, 15, 30, 'ALGARROBO', 1),
(669, 15, 53, 'ARACATACA', 1),
(670, 15, 58, 'ARIGUANI (EL DIFICIL)', 1),
(671, 15, 161, 'CERRO SAN ANTONIO', 1),
(672, 15, 170, 'CHIVOLO', 1),
(673, 15, 189, 'CIENAGA', 1),
(674, 15, 205, 'CONCORDIA', 1),
(675, 15, 245, 'EL BANCO', 1),
(676, 15, 258, 'EL PIÑON', 1),
(677, 15, 268, 'EL RETEN', 1),
(678, 15, 288, 'FUNDACION', 1),
(679, 15, 318, 'GUAMAL', 1),
(680, 15, 541, 'PEDRAZA', 1),
(681, 15, 545, 'PIJIÑO DEL CARMEN (PIJIÑO)', 1),
(682, 15, 551, 'PIVIJAY', 1),
(683, 15, 555, 'PLATO', 1),
(684, 15, 570, 'PUEBLOVIEJO', 1),
(685, 15, 605, 'REMOLINO', 1),
(686, 15, 660, 'SABANAS DE SAN ANGEL', 1),
(687, 15, 675, 'SALAMINA', 1),
(688, 15, 692, 'SAN SEBASTIAN DE BUENAVISTA', 1),
(689, 15, 703, 'SAN ZENON', 1),
(690, 15, 707, 'SANTA ANA', 1),
(691, 15, 745, 'SITIONUEVO', 1),
(692, 15, 798, 'TENERIFE', 1),
(693, 16, 1, 'VILLAVICENCIO', 1),
(694, 16, 6, 'ACACIAS', 1),
(695, 16, 110, 'BARRANCA DE UPIA', 1),
(696, 16, 124, 'CABUYARO', 1),
(697, 16, 150, 'CASTILLA LA NUEVA', 1),
(698, 16, 223, 'SAN LUIS DE CUBARRAL', 1),
(699, 16, 226, 'CUMARAL', 1),
(700, 16, 245, 'EL CALVARIO', 1),
(701, 16, 251, 'EL CASTILLO', 1),
(702, 16, 270, 'EL DORADO', 1),
(703, 16, 287, 'FUENTE DE ORO', 1),
(704, 16, 313, 'GRANADA', 1),
(705, 16, 318, 'GUAMAL', 1),
(706, 16, 325, 'MAPIRIPAN', 1),
(707, 16, 330, 'MESETAS', 1),
(708, 16, 350, 'LA MACARENA', 1),
(709, 16, 370, 'LA URIBE', 1),
(710, 16, 400, 'LEJANIAS', 1),
(711, 16, 450, 'PUERTO CONCORDIA', 1),
(712, 16, 568, 'PUERTO GAITAN', 1),
(713, 16, 573, 'PUERTO LOPEZ', 1),
(714, 16, 577, 'PUERTO LLERAS', 1),
(715, 16, 590, 'PUERTO RICO', 1),
(716, 16, 606, 'RESTREPO', 1),
(717, 16, 680, 'SAN CARLOS DE GUAROA', 1),
(718, 16, 683, 'SAN JUAN DE ARAMA', 1),
(719, 16, 686, 'SAN JUANITO', 1),
(720, 16, 689, 'SAN MARTIN', 1),
(721, 16, 711, 'VISTAHERMOSA', 1),
(722, 17, 1, 'PASTO (SAN JUAN DE PASTO)', 1),
(723, 17, 19, 'ALBAN (SAN JOSE)', 1),
(724, 17, 22, 'ALDANA', 1),
(725, 17, 36, 'ANCUYA', 1),
(726, 17, 51, 'ARBOLEDA (BERRUECOS)', 1),
(727, 17, 79, 'BARBACOAS', 1),
(728, 17, 83, 'BELEN', 1),
(729, 17, 110, 'BUESACO', 1),
(730, 17, 203, 'COLON (GENOVA)', 1),
(731, 17, 207, 'CONSACA', 1),
(732, 17, 210, 'CONTADERO', 1),
(733, 17, 215, 'CORDOBA', 1),
(734, 17, 224, 'CUASPUD (CARLOSAMA)', 1),
(735, 17, 227, 'CUMBAL', 1),
(736, 17, 233, 'CUMBITARA', 1),
(737, 17, 240, 'CHACHAGUI', 1),
(738, 17, 250, 'EL CHARCO', 1),
(739, 17, 254, 'EL PEÑOL', 1),
(740, 17, 256, 'EL ROSARIO', 1),
(741, 17, 258, 'EL TABLON', 1),
(742, 17, 260, 'EL TAMBO', 1),
(743, 17, 287, 'FUNES', 1),
(744, 17, 317, 'GUACHUCAL', 1),
(745, 17, 320, 'GUAITARILLA', 1),
(746, 17, 323, 'GUALMATAN', 1),
(747, 17, 352, 'ILES', 1),
(748, 17, 354, 'IMUES', 1),
(749, 17, 356, 'IPIALES', 1),
(750, 17, 378, 'LA CRUZ', 1),
(751, 17, 381, 'LA FLORIDA', 1),
(752, 17, 385, 'LA LLANADA', 1),
(753, 17, 390, 'LA TOLA', 1),
(754, 17, 399, 'LA UNION', 1),
(755, 17, 405, 'LEIVA', 1),
(756, 17, 411, 'LINARES', 1),
(757, 17, 418, 'LOS ANDES (SOTOMAYOR)', 1),
(758, 17, 427, 'MAGUI (PAYAN)', 1),
(759, 17, 435, 'MALLAMA (PIEDRANCHA)', 1),
(760, 17, 473, 'MOSQUERA', 1),
(761, 17, 490, 'OLAYA HERRERA (BOCAS DE SATINGA)', 1),
(762, 17, 506, 'OSPINA', 1),
(763, 17, 520, 'FRANCISCO PIZARRO (SALAHONDA)', 1),
(764, 17, 540, 'POLICARPA', 1),
(765, 17, 560, 'POTOSI', 1),
(766, 17, 565, 'PROVIDENCIA', 1),
(767, 17, 573, 'PUERRES', 1),
(768, 17, 585, 'PUPIALES', 1),
(769, 17, 612, 'RICAURTE', 1),
(770, 17, 621, 'ROBERTO PAYAN (SAN JOSE)', 1),
(771, 17, 678, 'SAMANIEGO', 1),
(772, 17, 683, 'SANDONA', 1),
(773, 17, 685, 'SAN BERNARDO', 1),
(774, 17, 687, 'SAN LORENZO', 1),
(775, 17, 693, 'SAN PABLO', 1),
(776, 17, 694, 'SAN PEDRO DE CARTAGO', 1),
(777, 17, 696, 'SANTA BARBARA (ISCUANDE)', 1),
(778, 17, 699, 'SANTA CRUZ (GUACHAVES)', 1),
(779, 17, 720, 'SAPUYES', 1),
(780, 17, 786, 'TAMINANGO', 1),
(781, 17, 788, 'TANGUA', 1),
(782, 17, 835, 'TUMACO', 1),
(783, 17, 838, 'TUQUERRES', 1),
(784, 17, 885, 'YACUANQUER', 1),
(785, 18, 1, 'CUCUTA', 1),
(786, 18, 3, 'ABREGO', 1),
(787, 18, 51, 'ARBOLEDAS', 1),
(788, 18, 99, 'BOCHALEMA', 1),
(789, 18, 109, 'BUCARASICA', 1),
(790, 18, 125, 'CACOTA', 1),
(791, 18, 128, 'CACHIRA', 1),
(792, 18, 172, 'CHINACOTA', 1),
(793, 18, 174, 'CHITAGA', 1),
(794, 18, 206, 'CONVENCION', 1),
(795, 18, 223, 'CUCUTILLA', 1),
(796, 18, 239, 'DURANIA', 1),
(797, 18, 245, 'EL CARMEN', 1),
(798, 18, 250, 'EL TARRA', 1),
(799, 18, 261, 'EL ZULIA', 1),
(800, 18, 313, 'GRAMALOTE', 1),
(801, 18, 344, 'HACARI', 1),
(802, 18, 347, 'HERRAN', 1),
(803, 18, 377, 'LABATECA', 1),
(804, 18, 385, 'LA ESPERANZA', 1),
(805, 18, 398, 'LA PLAYA', 1),
(806, 18, 405, 'LOS PATIOS', 1),
(807, 18, 418, 'LOURDES', 1),
(808, 18, 480, 'MUTISCUA', 1),
(809, 18, 498, 'OCAÑA', 1),
(810, 18, 518, 'PAMPLONA', 1),
(811, 18, 520, 'PAMPLONITA', 1),
(812, 18, 553, 'PUERTO SANTANDER', 1),
(813, 18, 599, 'RAGONVALIA', 1),
(814, 18, 660, 'SALAZAR', 1),
(815, 18, 670, 'SAN CALIXTO', 1),
(816, 18, 673, 'SAN CAYETANO', 1),
(817, 18, 680, 'SANTIAGO', 1),
(818, 18, 720, 'SARDINATA', 1),
(819, 18, 743, 'SILOS', 1),
(820, 18, 800, 'TEORAMA', 1),
(821, 18, 810, 'TIBU', 1),
(822, 18, 820, 'TOLEDO', 1),
(823, 18, 871, 'VILLACARO', 1),
(824, 18, 874, 'VILLA DEL ROSARIO', 1),
(825, 19, 1, 'ARMENIA', 1),
(826, 19, 111, 'BUENAVISTA', 1),
(827, 19, 130, 'CALARCA', 1),
(828, 19, 190, 'CIRCASIA', 1),
(829, 19, 212, 'CORDOBA', 1),
(830, 19, 272, 'FILANDIA', 1),
(831, 19, 302, 'GENOVA', 1),
(832, 19, 401, 'LA TEBAIDA', 1),
(833, 19, 470, 'MONTENEGRO', 1),
(834, 19, 548, 'PIJAO', 1),
(835, 19, 594, 'QUIMBAYA', 1),
(836, 19, 690, 'SALENTO', 1),
(837, 20, 1, 'PEREIRA', 1),
(838, 20, 45, 'APIA', 1),
(839, 20, 75, 'BALBOA', 1),
(840, 20, 88, 'BELEN DE UMBRIA', 1),
(841, 20, 170, 'DOS QUEBRADAS', 1),
(842, 20, 318, 'GUATICA', 1),
(843, 20, 383, 'LA CELIA', 1),
(844, 20, 400, 'LA VIRGINIA', 1),
(845, 20, 440, 'MARSELLA', 1),
(846, 20, 456, 'MISTRATO', 1),
(847, 20, 572, 'PUEBLO RICO', 1),
(848, 20, 594, 'QUINCHIA', 1),
(849, 20, 682, 'SANTA ROSA DE CABAL', 1),
(850, 20, 687, 'SANTUARIO', 1),
(851, 21, 1, 'BUCARAMANGA', 1),
(852, 21, 13, 'AGUADA', 1),
(853, 21, 20, 'ALBANIA', 1),
(854, 21, 51, 'ARATOCA', 1),
(855, 21, 77, 'BARBOSA', 1),
(856, 21, 79, 'BARICHARA', 1),
(857, 21, 81, 'BARRANCABERMEJA', 1),
(858, 21, 92, 'BETULIA', 1),
(859, 21, 101, 'BOLIVAR', 1),
(860, 21, 121, 'CABRERA', 1),
(861, 21, 132, 'CALIFORNIA', 1),
(862, 21, 147, 'CAPITANEJO', 1),
(863, 21, 152, 'CARCASI', 1),
(864, 21, 160, 'CEPITA', 1),
(865, 21, 162, 'CERRITO', 1),
(866, 21, 167, 'CHARALA', 1),
(867, 21, 169, 'CHARTA', 1),
(868, 21, 176, 'CHIMA', 1),
(869, 21, 179, 'CHIPATA', 1),
(870, 21, 190, 'CIMITARRA', 1),
(871, 21, 207, 'CONCEPCION', 1),
(872, 21, 209, 'CONFINES', 1),
(873, 21, 211, 'CONTRATACION', 1),
(874, 21, 217, 'COROMORO', 1),
(875, 21, 229, 'CURITI', 1),
(876, 21, 235, 'EL CARMEN DE CHUCURY', 1),
(877, 21, 245, 'EL GUACAMAYO', 1),
(878, 21, 250, 'EL PEÑON', 1),
(879, 21, 255, 'EL PLAYON', 1),
(880, 21, 264, 'ENCINO', 1),
(881, 21, 266, 'ENCISO', 1),
(882, 21, 271, 'FLORIAN', 1),
(883, 21, 276, 'FLORIDABLANCA', 1),
(884, 21, 296, 'GALAN', 1),
(885, 21, 298, 'GAMBITA', 1),
(886, 21, 307, 'GIRON', 1),
(887, 21, 318, 'GUACA', 1),
(888, 21, 320, 'GUADALUPE', 1),
(889, 21, 322, 'GUAPOTA', 1),
(890, 21, 324, 'GUAVATA', 1),
(891, 21, 327, 'GUEPSA', 1),
(892, 21, 344, 'HATO', 1),
(893, 21, 368, 'JESUS MARIA', 1),
(894, 21, 370, 'JORDAN', 1),
(895, 21, 377, 'LA BELLEZA', 1),
(896, 21, 385, 'LANDAZURI', 1),
(897, 21, 397, 'LA PAZ', 1),
(898, 21, 406, 'LEBRIJA', 1),
(899, 21, 418, 'LOS SANTOS', 1),
(900, 21, 425, 'MACARAVITA', 1),
(901, 21, 432, 'MALAGA', 1),
(902, 21, 444, 'MATANZA', 1),
(903, 21, 464, 'MOGOTES', 1),
(904, 21, 468, 'MOLAGAVITA', 1),
(905, 21, 498, 'OCAMONTE', 1),
(906, 21, 500, 'OIBA', 1),
(907, 21, 502, 'ONZAGA', 1),
(908, 21, 522, 'PALMAR', 1),
(909, 21, 524, 'PALMAS DEL SOCORRO', 1),
(910, 21, 533, 'PARAMO', 1),
(911, 21, 547, 'PIEDECUESTA', 1),
(912, 21, 549, 'PINCHOTE', 1),
(913, 21, 572, 'PUENTE NACIONAL', 1),
(914, 21, 573, 'PUERTO PARRA', 1),
(915, 21, 575, 'PUERTO WILCHES', 1),
(916, 21, 615, 'RIONEGRO', 1),
(917, 21, 655, 'SABANA DE TORRES', 1),
(918, 21, 669, 'SAN ANDRES', 1),
(919, 21, 673, 'SAN BENITO', 1),
(920, 21, 679, 'SAN GIL', 1),
(921, 21, 682, 'SAN JOAQUIN', 1),
(922, 21, 684, 'SAN JOSE DE MIRANDA', 1),
(923, 21, 686, 'SAN MIGUEL', 1),
(924, 21, 689, 'SAN VICENTE DE CHUCURI', 1),
(925, 21, 705, 'SANTA BARBARA', 1),
(926, 21, 720, 'SANTA HELENA DEL OPON', 1),
(927, 21, 745, 'SIMACOTA', 1),
(928, 21, 755, 'SOCORRO', 1),
(929, 21, 770, 'SUAITA', 1),
(930, 21, 773, 'SUCRE', 1),
(931, 21, 780, 'SURATA', 1),
(932, 21, 820, 'TONA', 1),
(933, 21, 855, 'VALLE SAN JOSE', 1),
(934, 21, 861, 'VELEZ', 1),
(935, 21, 867, 'VETAS', 1),
(936, 21, 872, 'VILLANUEVA', 1),
(937, 21, 895, 'ZAPATOCA', 1),
(938, 22, 1, 'SINCELEJO', 1),
(939, 22, 110, 'BUENAVISTA', 1),
(940, 22, 124, 'CAIMITO', 1),
(941, 22, 204, 'COLOSO (RICAURTE)', 1),
(942, 22, 215, 'COROZAL', 1),
(943, 22, 230, 'CHALAN', 1),
(944, 22, 235, 'GALERAS (NUEVA GRANADA)', 1),
(945, 22, 265, 'GUARANDA', 1),
(946, 22, 400, 'LA UNION', 1),
(947, 22, 418, 'LOS PALMITOS', 1),
(948, 22, 429, 'MAJAGUAL', 1),
(949, 22, 473, 'MORROA', 1),
(950, 22, 508, 'OVEJAS', 1),
(951, 22, 523, 'PALMITO', 1),
(952, 22, 670, 'SAMPUES', 1),
(953, 22, 678, 'SAN BENITO ABAD', 1),
(954, 22, 702, 'SAN JUAN DE BETULIA', 1),
(955, 22, 708, 'SAN MARCOS', 1),
(956, 22, 713, 'SAN ONOFRE', 1),
(957, 22, 717, 'SAN PEDRO', 1),
(958, 22, 742, 'SINCE', 1),
(959, 22, 771, 'SUCRE', 1),
(960, 22, 820, 'TOLU', 1),
(961, 22, 823, 'TOLUVIEJO', 1),
(962, 23, 1, 'IBAGUE', 1),
(963, 23, 24, 'ALPUJARRA', 1),
(964, 23, 26, 'ALVARADO', 1),
(965, 23, 30, 'AMBALEMA', 1),
(966, 23, 43, 'ANZOATEGUI', 1),
(967, 23, 55, 'ARMERO (GUAYABAL)', 1),
(968, 23, 67, 'ATACO', 1),
(969, 23, 124, 'CAJAMARCA', 1),
(970, 23, 148, 'CARMEN APICALA', 1),
(971, 23, 152, 'CASABIANCA', 1),
(972, 23, 168, 'CHAPARRAL', 1),
(973, 23, 200, 'COELLO', 1),
(974, 23, 217, 'COYAIMA', 1),
(975, 23, 226, 'CUNDAY', 1),
(976, 23, 236, 'DOLORES', 1),
(977, 23, 268, 'ESPINAL', 1),
(978, 23, 270, 'FALAN', 1),
(979, 23, 275, 'FLANDES', 1),
(980, 23, 283, 'FRESNO', 1),
(981, 23, 319, 'GUAMO', 1),
(982, 23, 347, 'HERVEO', 1),
(983, 23, 349, 'HONDA', 1),
(984, 23, 352, 'ICONONZO', 1),
(985, 23, 408, 'LERIDA', 1),
(986, 23, 411, 'LIBANO', 1),
(987, 23, 443, 'MARIQUITA', 1),
(988, 23, 449, 'MELGAR', 1),
(989, 23, 461, 'MURILLO', 1),
(990, 23, 483, 'NATAGAIMA', 1),
(991, 23, 504, 'ORTEGA', 1),
(992, 23, 520, 'PALOCABILDO', 1),
(993, 23, 547, 'PIEDRAS', 1),
(994, 23, 555, 'PLANADAS', 1),
(995, 23, 563, 'PRADO', 1),
(996, 23, 585, 'PURIFICACION', 1),
(997, 23, 616, 'RIOBLANCO', 1),
(998, 23, 622, 'RONCESVALLES', 1),
(999, 23, 624, 'ROVIRA', 1),
(1000, 23, 671, 'SALDAÑA', 1),
(1001, 23, 675, 'SAN ANTONIO', 1),
(1002, 23, 678, 'SAN LUIS', 1),
(1003, 23, 686, 'SANTA ISABEL', 1),
(1004, 23, 770, 'SUAREZ', 1),
(1005, 23, 854, 'VALLE DE SAN JUAN', 1),
(1006, 23, 861, 'VENADILLO', 1),
(1007, 23, 870, 'VILLAHERMOSA', 1),
(1008, 23, 873, 'VILLARRICA', 1),
(1009, 24, 1, 'CALI (SANTIAGO DE CALI)', 1),
(1010, 24, 20, 'ALCALA', 1),
(1011, 24, 36, 'ANDALUCIA', 1),
(1012, 24, 41, 'ANSERMANUEVO', 1),
(1013, 24, 54, 'ARGELIA', 1),
(1014, 24, 100, 'BOLIVAR', 1),
(1015, 24, 109, 'BUENAVENTURA', 1),
(1016, 24, 111, 'BUGA', 1),
(1017, 24, 113, 'BUGALAGRANDE', 1),
(1018, 24, 122, 'CAICEDONIA', 1),
(1019, 24, 126, 'CALIMA (DARIEN)', 1),
(1020, 24, 130, 'CANDELARIA', 1),
(1021, 24, 147, 'CARTAGO', 1),
(1022, 24, 233, 'DAGUA', 1),
(1023, 24, 243, 'EL AGUILA', 1),
(1024, 24, 246, 'EL CAIRO', 1),
(1025, 24, 248, 'EL CERRITO', 1),
(1026, 24, 250, 'EL DOVIO', 1),
(1027, 24, 275, 'FLORIDA', 1),
(1028, 24, 306, 'GINEBRA', 1),
(1029, 24, 318, 'GUACARI', 1),
(1030, 24, 364, 'JAMUNDI', 1),
(1031, 24, 377, 'LA CUMBRE', 1),
(1032, 24, 400, 'LA UNION', 1),
(1033, 24, 403, 'LA VICTORIA', 1),
(1034, 24, 497, 'OBANDO', 1),
(1035, 24, 520, 'PALMIRA', 1),
(1036, 24, 563, 'PRADERA', 1),
(1037, 24, 606, 'RESTREPO', 1),
(1038, 24, 616, 'RIOFRIO', 1),
(1039, 24, 622, 'ROLDANILLO', 1),
(1040, 24, 670, 'SAN PEDRO', 1),
(1041, 24, 736, 'SEVILLA', 1),
(1042, 24, 823, 'TORO', 1),
(1043, 24, 828, 'TRUJILLO', 1),
(1044, 24, 834, 'TULUA', 1),
(1045, 24, 845, 'ULLOA', 1),
(1046, 24, 863, 'VERSALLES', 1),
(1047, 24, 869, 'VIJES', 1),
(1048, 24, 890, 'YOTOCO', 1),
(1049, 24, 892, 'YUMBO', 1),
(1050, 24, 895, 'ZARZAL', 1),
(1051, 25, 1, 'ARAUCA', 1),
(1052, 25, 65, 'ARAUQUITA', 1),
(1053, 25, 220, 'CRAVO NORTE', 1),
(1054, 25, 300, 'FORTUL', 1),
(1055, 25, 591, 'PUERTO RONDON', 1),
(1056, 25, 736, 'SARAVENA', 1),
(1057, 25, 794, 'TAME', 1),
(1058, 26, 1, 'YOPAL', 1),
(1059, 26, 10, 'AGUAZUL', 1),
(1060, 26, 15, 'CHAMEZA', 1),
(1061, 26, 125, 'HATO COROZAL', 1),
(1062, 26, 136, 'LA SALINA', 1),
(1063, 26, 139, 'MANI', 1),
(1064, 26, 162, 'MONTERREY', 1),
(1065, 26, 225, 'NUNCHIA', 1),
(1066, 26, 230, 'OROCUE', 1),
(1067, 26, 250, 'PAZ DE ARIPORO', 1),
(1068, 26, 263, 'PORE', 1),
(1069, 26, 279, 'RECETOR', 1),
(1070, 26, 300, 'SABANALARGA', 1),
(1071, 26, 315, 'SACAMA', 1),
(1072, 26, 325, 'SAN LUIS DE PALENQUE', 1),
(1073, 26, 400, 'TAMARA', 1),
(1074, 26, 410, 'TAURAMENA', 1),
(1075, 26, 430, 'TRINIDAD', 1),
(1076, 26, 440, 'VILLANUEVA', 1),
(1077, 27, 1, 'MOCOA', 1),
(1078, 27, 219, 'COLON', 1),
(1079, 27, 320, 'ORITO', 1),
(1080, 27, 568, 'PUERTO ASIS', 1),
(1081, 27, 569, 'PUERTO CAICEDO', 1),
(1082, 27, 571, 'PUERTO GUZMAN', 1),
(1083, 27, 573, 'PUERTO LEGUIZAMO', 1),
(1084, 27, 749, 'SIBUNDOY', 1),
(1085, 27, 755, 'SAN FRANCISCO', 1),
(1086, 27, 757, 'SAN MIGUEL (LA DORADA)', 1),
(1087, 27, 760, 'SANTIAGO', 1),
(1088, 27, 865, 'LA HORMIGA (VALLE DEL GUAMUEZ)', 1),
(1089, 27, 885, 'VILLAGARZON', 1),
(1090, 28, 1, 'SAN ANDRES', 1),
(1091, 28, 564, 'PROVIDENCIA', 1),
(1092, 29, 1, 'LETICIA', 1),
(1093, 29, 263, 'EL ENCANTO', 1),
(1094, 29, 405, 'LA CHORRERA', 1),
(1095, 29, 407, 'LA PEDRERA', 1),
(1096, 29, 430, 'LA VICTORIA', 1),
(1097, 29, 460, 'MIRITI-PARANA', 1),
(1098, 29, 530, 'PUERTO ALEGRIA', 1),
(1099, 29, 536, 'PUERTO ARICA', 1),
(1100, 29, 540, 'PUERTO NARIÑO', 1),
(1101, 29, 669, 'PUERTO SANTANDER', 1),
(1102, 29, 798, 'TARAPACA', 1),
(1103, 30, 1, 'PUERTO INIRIDA', 1),
(1104, 30, 343, 'BARRANCO MINAS', 1),
(1105, 30, 883, 'SAN FELIPE', 1),
(1106, 30, 884, 'PUERTO COLOMBIA', 1),
(1107, 30, 885, 'LA GUADALUPE', 1),
(1108, 30, 886, 'CACAHUAL', 1),
(1109, 30, 887, 'PANA PANA (CAMPO ALEGRE)', 1),
(1110, 30, 888, 'MORICHAL (MORICHAL NUEVO)', 1),
(1111, 31, 1, 'SAN JOSE DEL GUAVIARE', 1),
(1112, 31, 15, 'CALAMAR', 1),
(1113, 31, 25, 'EL RETORNO', 1),
(1114, 31, 200, 'MIRAFLORES', 1),
(1115, 32, 1, 'MITU', 1),
(1116, 32, 161, 'CARURU', 1),
(1117, 32, 511, 'PACOA', 1),
(1118, 32, 666, 'TARAIRA', 1),
(1119, 32, 777, 'PAPUNAUA (MORICHAL)', 1),
(1120, 32, 889, 'YAVARATE', 1),
(1121, 33, 1, 'PUERTO CARREÑO', 1),
(1122, 33, 524, 'LA PRIMAVERA', 1),
(1123, 33, 572, 'SANTA RITA', 1),
(1124, 33, 666, 'SANTA ROSALIA', 1),
(1125, 33, 760, 'SAN JOSE DE OCUNE', 1),
(1126, 33, 773, 'CUMARIBO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblPagina`
--

DROP TABLE IF EXISTS `TblPagina`;
CREATE TABLE `TblPagina` (
  `IdPagina` bigint(20) NOT NULL,
  `Pag_Titulo` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Pag_Contenido` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Pag_Portada` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Pag_Datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `Pag_Ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblPagina`
--

INSERT INTO `TblPagina` (`IdPagina`, `Pag_Titulo`, `Pag_Contenido`, `Pag_Portada`, `Pag_Datecreate`, `Pag_Ruta`, `Est_IdEstado`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas para tu mejor satifacci&oacute;n ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> <div class=\"col-md-3\">&nbsp;</div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <section class=\"py-5 text-center\"> <div class=\"container\"> <h2><span style=\"color: #236fa1;\"><img src=\"https://ipmark.com/wp-content/uploads/nuevo-modelo-de-negocio-auge-del-ecommerce-ok-800x445.jpg\" alt=\"Nuevo modelo comercial: el auge del ecommerce\" /></span></h2> <h2><span style=\"color: #236fa1;\">Nuestra Historia</span></h2> <p>&nbsp;</p> <p>Creamos&nbsp;<strong>Soluciones &amp; tecnolog&iacute;a a tu medida&nbsp; Sth </strong>en el 2020, present&aacute;ndonos como una empresa de desarrollo enfocada en sitios web y aplicaciones. El incremento del uso de Internet como medio de comunicaci&oacute;n y plataforma de negocios durante la pandemia del covid-19, hizo que nuestros clientes demandar&aacute;n de soluciones integrales para el mercado de&nbsp; E-Commerce .</p> <p>Este nuevo enfoque nos permiti&oacute; elaborar estrategias m&aacute;s completas y generar&nbsp;<strong>experiencias interactivas</strong> m&aacute;s cautivantes. Desde entonces hemos llevado a cabo el desarrollo de proyectos a la medida obteniendo grandes resultados y mejorando el posicionamiento de nuestros clientes.</p> </div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://www.aquilum.com/images/about/slide_5.jpg\" alt=\"Aquilum System - Sistemas de informaci&oacute;n y comunicaci&oacute;n. Soluciones corporativas\" width=\"442\" height=\"229\" /><br /> <div class=\"card-body\"> <h2><span style=\"color: #236fa1;\">Nuestra Visi&oacute;n</span></h2> <p>Nuestra visi&oacute;n es poder llegar a ser en el 2030 una empresa l&iacute;der e innovadora en el mercado del desarrollo web, proporcionando una alta calidad de atenci&oacute;n y satisfacci&oacute;n con nuestra calidad y buen servicio.</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://magnesioymetal.com/wp-content/uploads/2018/04/MM_mision.jpg\" alt=\"Visi&oacute;n, Misi&oacute;n y Valores - Magnesio &amp; Metal\" width=\"237\" height=\"229\" /><br /> <div class=\"card-body\"> <h2><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113\">Lograr que las peque&ntilde;as y medianas empresas tengan acceso a nuestros productos y servicios de calidad con la m&aacute;s avanzada tecnolog&iacute;a en desarrollo web, elevando continuamente el nivel de la experiencia del cliente mediante el uso de E-Commerce para ayudar a los consumidores a encontrar, descubrir y comprar los productos y servicios de una forma c&oacute;moda, f&aacute;cil y sencilla.</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://economipedia.com/wp-content/uploads/valores-sociales.jpg\" alt=\"Valores sociales - Qu&eacute; es, definici&oacute;n y concepto | Economipedia\" width=\"229\" height=\"229\" /><br /> <div class=\"card-body\"> <h2><span style=\"color: #236fa1;\">Nuestros valores&nbsp;</span></h2> <ul> <li>Rendimiento</li> <li>Pasi&oacute;n</li> <li>Integridad</li> <li>Honestidad</li> </ul> </div> </div> </div> </div> </div> </div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"> <p>&nbsp;</p> </div> </div> </div> </div> </div> </section>', 'img_39bfaeff9e797519063ccd97ec416745.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.669473297446!2d-76.49379918625903!3d3.430393497503131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e30a70596ecc481%3A0x3ab0980f36ef915c!2sCentro%20de%20Dise%C3%B1o%20Tecnol%C3%B3gico%20Industrial%20SENA!5e0!3m2!1ses!2sco!4v1654558788019!5m2!1ses!2sco\" width=\"100%\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>T&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Derechos de Autor</li></ol> <p>Todos los contenidos de Tienda Virtual Adsi 2022 (Incluyendo, pero no limitado a, texto, logotipos, contenido, fotografías, audio, botones, nombres comerciales y vídeo) están sujetos a derechos de propiedad por las leyes de Derechos de Autor y demás Leyes relativas Internacionales a GRUPO#2 ADSI2022.\r\nEn ningún caso se entenderá que se efectúa renuncia, transmisión, cesión total o parcial de dichos derechos, ni se confiere ningún derecho, y en especial, de alteración, explotación, reproducción, distribución o comunicación pública sobre dichos contenidos, sin la previa autorización expresa de, GRUPO#2 ADSI2022 o de los titulares correspondientes.\r\nEl uso de imágenes, fragmentos de videos y demás material que sea objeto de protección de los derechos de autor, será exclusivamente para fines formativos e informativos, y cualquier uso distinto como el lucro, reproducción, edición o modificación, será perseguido y sancionado por el respectivo titular de los Derechos de Autor.\r\n\r\n<ol> <li>Derechos de Uso</li></ol>\r\nSe autoriza el uso y explotación de Tienda Virtual Adsi 2022 en este proyecto.\r\nQueda prohibido copiar, reproducir, distribuir, publicar, transmitir, difundir, demostrar a terceros, o en cualquier modo explotar cualquier parte de este servicio sin la autorización previa por escrito de GRUPO#2 ADSI2022 o de los titulares correspondientes. No se debe remover o alterar de la copia ninguna leyenda de Derechos de Autor o la que manifieste la autoría del material.</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: La Apartada - C&oacute;rdoba<br />Tel&eacute;fono: 4654645 <br />Correo: info@webserversth.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Monteria - C&oacute;rdoba<br />Tel&eacute;fono: 4654645 <br />Correo: info@webserversth.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Lorica - C&oacute;rdoba<br />Tel&eacute;fono: 465464533<br />Correo: info@webserversth.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblParametro`
--

DROP TABLE IF EXISTS `TblParametro`;
CREATE TABLE `TblParametro` (
  `IdParametro` bigint(20) NOT NULL,
  `Par_Valor` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Par_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblParametro`
--

INSERT INTO `TblParametro` (`IdParametro`, `Par_Valor`, `Par_Descripcion`, `Est_IdEstado`) VALUES
(1, '1067839748', 'Numero de registro tributario NIT', 1),
(2, 'Sth Tecnologia', 'Nombre de la empresa', 1),
(3, 'Calle 21 N° 13-04 Apto 104', 'Direccion', 1),
(4, 'La Apartada', 'Municipio', 1),
(5, 'Cordoba', 'Departamento', 1),
(6, 'Colombia', 'Pais', 1),
(7, '3155660671', 'Celular de contacto', 1),
(8, '7868590', 'Telefono fijo de contacto', 1),
(9, 'infowebserversth@gmail.com', 'Email de la empresa', 1),
(10, 'infowebserversth@gmail.com', 'Email de contacto', 1),
(11, 'www.webserversth.com', 'Páginas web de la empresa', 1),
(12, 'La mejor tienda en línea con artículos de moda.', 'Descripcion de la tienda', 1),
(13, 'Solucion a tu medida', 'Slogan de la empresa', 1),
(14, 'TiendaVirtual', 'sharedhash', 1),
(15, 'Projectos/Projectos/tienda_virtual/Assets/tienda/i', 'ruta de acceso del Logo de la empresa', 1),
(16, 'Projectos/Projectos/tienda_virtual/Assets/tienda/i', 'ruta de acceso del Icono de la pagina', 1),
(17, 'Tienda Virtual', 'Nombre remitente para envio de correo', 1),
(18, 'webserversth@gmail.com', 'Email remitente para envio de correo', 1),
(19, '1', 'constante de envio de correo // Local: 0, Produccón: 1 ', 1),
(20, 'infowebserversth@gmail.com', 'Email de pedido', 1),
(21, 'infowebserversth@gmail.com', 'Email de suscripcion', 1),
(22, 'https://api-m.sandbox.paypal.com', 'Url paypal', 1),
(23, 'https://api-m.sandbox.paypal.com', 'Url pse', 1),
(24, 'https://www.facebook.com/webserversth', 'red social de facebook44', 1),
(25, 'https://www.instagram.com/webserversth/', 'red social de instagram', 1),
(26, 'https://www.instagram.com/webserversth/', 'red social de twiter', 1),
(27, '.', 'Deliminadores decimal', 1),
(28, ',', 'Deliminadores millar', 1),
(29, '$', 'Simbolo de moneda', 1),
(30, 'USD', 'Divisa', 1),
(31, 'webserversth', 'key para Encriptar / Desencriptar', 1),
(32, 'AES-128-ECB', 'Metodo para Encriptar / Desencriptar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblPedido`
--

DROP TABLE IF EXISTS `TblPedido`;
CREATE TABLE `TblPedido` (
  `IdPedido` bigint(20) NOT NULL,
  `Ped_Referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Tpay_IdTransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Ped_Datospaypal` text COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Per_IdPersona` bigint(20) NOT NULL,
  `Ped_Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Ped_Costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Ped_Monto` decimal(11,2) NOT NULL,
  `Tpag_IdTipopago` bigint(20) NOT NULL,
  `Dep_IdDepartamento` bigint(20) DEFAULT NULL,
  `Mun_IdMunicipio` bigint(20) DEFAULT NULL,
  `Ped_Direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Ped_Proceso` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblPedido`
--

INSERT INTO `TblPedido` (`IdPedido`, `Ped_Referenciacobro`, `Tpay_IdTransaccionpaypal`, `Ped_Datospaypal`, `Per_IdPersona`, `Ped_Fecha`, `Ped_Costo_envio`, `Ped_Monto`, `Tpag_IdTipopago`, `Dep_IdDepartamento`, `Mun_IdMunicipio`, `Ped_Direccion_envio`, `Ped_Proceso`) VALUES
(1, NULL, NULL, NULL, 1, '2022-09-02 16:55:41', '15000.00', '184001.00', 2, NULL, NULL, 'ggg, ggg', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblPermisos`
--

DROP TABLE IF EXISTS `TblPermisos`;
CREATE TABLE `TblPermisos` (
  `IdPermiso` bigint(20) NOT NULL,
  `Rol_IdRol` bigint(20) NOT NULL,
  `Mod_IdModulo` bigint(20) NOT NULL,
  `Perm_read` int(11) NOT NULL DEFAULT 0,
  `Perm_write` int(11) NOT NULL DEFAULT 0,
  `Perm_update` int(11) NOT NULL DEFAULT 0,
  `Perm_delete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblPermisos`
--

INSERT INTO `TblPermisos` (`IdPermiso`, `Rol_IdRol`, `Mod_IdModulo`, `Perm_read`, `Perm_write`, `Perm_update`, `Perm_delete`) VALUES
(2, 1, 1, 1, 1, 1, 1),
(3, 1, 2, 1, 1, 1, 1),
(4, 1, 3, 1, 1, 1, 1),
(5, 1, 4, 1, 1, 1, 1),
(6, 1, 5, 1, 1, 1, 1),
(7, 1, 6, 1, 1, 1, 1),
(8, 1, 7, 1, 1, 1, 1),
(9, 1, 8, 1, 1, 1, 1),
(10, 1, 9, 1, 1, 1, 1),
(11, 1, 10, 1, 1, 1, 1),
(12, 8, 1, 0, 0, 0, 0),
(13, 8, 2, 1, 1, 0, 0),
(14, 8, 3, 0, 0, 0, 0),
(15, 8, 4, 0, 0, 0, 0),
(16, 8, 5, 0, 0, 0, 0),
(17, 8, 6, 0, 0, 0, 0),
(18, 8, 7, 0, 0, 0, 0),
(19, 8, 8, 0, 0, 0, 0),
(20, 8, 9, 0, 0, 0, 0),
(21, 8, 10, 0, 0, 0, 0),
(75, 4, 1, 0, 1, 0, 0),
(76, 4, 2, 0, 0, 0, 0),
(77, 4, 3, 0, 0, 0, 0),
(78, 4, 4, 0, 0, 0, 0),
(79, 4, 5, 0, 0, 0, 0),
(80, 4, 6, 0, 0, 0, 0),
(81, 4, 7, 0, 0, 0, 0),
(82, 4, 8, 0, 0, 0, 0),
(83, 4, 9, 0, 0, 0, 0),
(84, 4, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblPersona`
--

DROP TABLE IF EXISTS `TblPersona`;
CREATE TABLE `TblPersona` (
  `IdPersona` bigint(20) NOT NULL,
  `Per_Identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Per_Nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Per_Apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Per_Telefono` bigint(20) NOT NULL,
  `Per_Email` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Per_Password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Per_Token` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Rol_IdRol` bigint(20) NOT NULL,
  `Per_Datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblPersona`
--

INSERT INTO `TblPersona` (`IdPersona`, `Per_Identificacion`, `Per_Nombres`, `Per_Apellidos`, `Per_Telefono`, `Per_Email`, `Per_Password`, `nit`, `nombrefiscal`, `direccionfiscal`, `Per_Token`, `Rol_IdRol`, `Per_Datecreated`, `Est_IdEstado`) VALUES
(1, '123456789', 'Admin', 'Admin', 3125660671, 'admin@admin.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'adsi', 'ADSI\"==', 'Ciudad', 'cad05cb963874fc579ac-3739092b384e45c33983-36585f48de90dc6d65fc-8da2dec9bd398dea8dcf', 1, '2021-08-20 01:34:15', 1),
(2, '123456780', 'Supervisor', 'Supervisor', 456878977, 'supervisor@admin.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, NULL, 2, '2021-08-20 02:58:47', 1),
(3, '12345678', 'Ciente', 'Cliente', 4687987, 'cliente@admin.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '468798', 'Ricardo HP', 'Cali', NULL, 3, '2021-08-20 03:41:28', 1),
(4, '1234567890', 'Vendedor', 'Vendedor', 468498, 'vendedor@vendedor.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 1),
(5, '123456', 'Prueba', 'Prueba', 12345678, 'cliente2@admin.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '123566', 'gggg', 'ggg', NULL, 3, '2021-12-02 20:48:54', 0);

--
-- Disparadores `TblPersona`
--
DROP TRIGGER IF EXISTS `Trig_DeleteTblPersona`;
DELIMITER $$
CREATE TRIGGER `Trig_DeleteTblPersona` AFTER DELETE ON `TblPersona` FOR EACH ROW begin

	call Pro_AuditoriaTblPersona('Eliminar','TblPersona',OLD.IdPersona,OLD.Per_Identificacion,OLD.Per_Nombres,OLD.IdPersona,OLD.Per_Identificacion,OLD.Per_Nombres);

end
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `Trig_InsertTblPersona`;
DELIMITER $$
CREATE TRIGGER `Trig_InsertTblPersona` BEFORE INSERT ON `TblPersona` FOR EACH ROW begin

	call Pro_AuditoriaTblPersona('Registro','TblPersona',NEW.IdPersona,NEW.Per_Identificacion,NEW.Per_Nombres,NEW.IdPersona,NEW.Per_Identificacion,NEW.Per_Nombres);

end
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `Trig_UpdateTblPersona`;
DELIMITER $$
CREATE TRIGGER `Trig_UpdateTblPersona` BEFORE UPDATE ON `TblPersona` FOR EACH ROW begin

	call Pro_AuditoriaTblPersona('Actualizo','TblPersona',NEW.IdPersona,NEW.Per_Nombres,NEW.Per_Identificacion,OLD.IdPersona,OLD.Per_Nombres,OLD.Per_Identificacion);

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblProducto`
--

DROP TABLE IF EXISTS `TblProducto`;
CREATE TABLE `TblProducto` (
  `IdProducto` bigint(20) NOT NULL,
  `Cat_IdCategoria` bigint(20) NOT NULL,
  `Prod_Codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Prod_Nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Prod_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Prod_Precio` decimal(11,0) NOT NULL,
  `Prod_Stock` int(11) NOT NULL,
  `Prod_Imagen` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Prod_Datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `Prod_Ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblProducto`
--

INSERT INTO `TblProducto` (`IdProducto`, `Cat_IdCategoria`, `Prod_Codigo`, `Prod_Nombre`, `Prod_Descripcion`, `Prod_Precio`, `Prod_Stock`, `Prod_Imagen`, `Prod_Datecreated`, `Prod_Ruta`, `Est_IdEstado`) VALUES
(1, 2, '103213501', 'BOLSO PARA MUJER EN SINTETICO TIPO BAGUETTE CON MONEDERO REMOVIBLE', '<p><strong>Descripci&oacute;n:</strong>Dise&ntilde;o tipo baguette con cierres metalicos y doble cargadera para darle vesatilidad a su uso. Cuenta con un mondero externo removible en sintetico tipo piton a tono con el bolso principal. Su forro es estampado con compartimentos internos para una casi&oacute;n de uso casual o formal.</p> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"820\"> <div>820</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"15,3 CM\"> <div>15,3 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"24 CM\"> <div>24 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"32 CM\"> <div>32 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Sintetico Pu | Forro: 100% Poliester\"> <div>Externo: 100% Sintetico Pu | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"China\"> <div>China</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> <p>&nbsp;</p> </div> </div> </div> </div> </section> </div>', '159000', 48, NULL, '2021-08-20 03:12:14', 'bolso-para-mujer-en-sintetico-tipo-baguette-con-monedero-removible', 1),
(2, 1, '103182719', 'BOLSO PARA HOMBRE TIPO TULA MORRAL EN LONA CON SISTEMA DE MALLA PARA CASCO', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Descripci&oacute;n:</strong>Dise&ntilde;o outdoor en lona con colores en contraste, cuenta con una malla extraible, para sostener cascos ya sea de moto o bicicleta. La marcacion es en caucho y tiene llavero removible, cuenta con cierres invertidos y jaladeras plasticas en contraste. Esta referencia cuenta con bolsillo de seguridad en espaldas, bolsillo en cargadera, y sistema de conexi&oacute;n USB,ademas cuenta con rain cover o protector para la lluvia. Cuenta con forro textil y compartimientos internos para guardar objetos de uso cotidiano tales como llaves, celular y art&iacute;culos personales, Ocasi&oacute;n de uso casual e informal.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"1100 GR\"> <div>1100 GR</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"17 CM\"> <div>17 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"33 CM\"> <div>33 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"46 CM\"> <div>46 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Nailon | Forro: 100% Poliester\"> <div>Externo: 100% Nailon | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"China\"> <div>China</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '189001', 100, NULL, '2021-08-20 03:14:10', 'bolso-para-hombre-tipo-tula-morral-en-lona-con-sistema-de-malla-para-casco', 1),
(3, 2, '103244639', 'BOLSO TIPO TULA MORRAL PARA MUJER EN LONA CON COLORES VIBRANTES Y TAPA FRONTAL', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Descripci&oacute;n:</strong> Bolso tipo tula morral en lona para mujer, Dise&ntilde;o de tama&ntilde;o mediano con compartimento para portatil de entre 10 y 12 pulgadas. Esta referencia viene en colores vibrantes de moda con jaladeras y marcaci&oacute;n en caucho. Su forro es estampado con compartimentos internos, Ocasi&oacute;n de uso casual e informal.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"650\"> <div>650</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"11\"> <div>11</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"30\"> <div>30</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"38\"> <div>38</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Nailon | Forro: 100% Poliester\"> <div>Externo: 100% Nailon | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"China\"> <div>China</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '169001', 100, NULL, '2021-08-21 00:48:21', 'bolso-tipo-tula-morral-para-mujer-en-lona-con-colores-vibrantes-y-tapa-frontal', 1),
(4, 2, '103128600', 'SHOPPING ERIE DE CUERO PARA MUJER GRABADO', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Descripci&oacute;n:</strong> La silueta de nuestros bolsos tipo shopping se adapta a tus circusntancias; dise&ntilde;os pr&aacute;cticos y c&oacute;modos que se combinan a la perfecci&oacute;n con su capacidad. &iexcl;&Uacute;salo! Las variaciones en colores y texturas de este producto son propias del proceso de elaboraci&oacute;n, con el uso y paso del tiempo tiende a presentar cambios en el acabado y p&eacute;rdida gradual del color, por lo anterior, el producto puede variar al exhibido en la foto.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\">&nbsp;</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"602\"> <div>602</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"15\"> <div>15</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"27\"> <div>27</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"30\"> <div>30</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Cuero Bovino | Forro: 10% Cuero Cerdo, 90% Sin Forro | Externo Compl: 100% Poliester | Forro Compl: 100% Poliester\"> <div>Externo: 100% Cuero Bovino | Forro: 10% Cuero Cerdo, 90% Sin Forro | Externo Compl: 100% Poliester | Forro Compl: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"ALTURA CORREA\"> <div>ALTURA CORREA</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"36 CM\"> <div>36 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Colombia\"> <div>Colombia</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Sin Forro\"> <div>Sin Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '369001', 99, NULL, '2021-12-26 10:45:24', 'shopping-erie-de-cuero-para-mujer-grabado', 1),
(5, 1, '102714701', 'MALETÍN PORTÁTIL MULTIFUNCIONAL DE CUERO PARA HOMBRE HALADERAS CONTRASTE', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\">Descripci&oacute;n: Malet&iacute;n port&aacute;til elaborado en cuero liso, de brillo sutil y acabdo natural. Este dise&ntilde;o es sobrio y funcional. Permite llevar protegidos todos sus art&iacute;culos, desde un port&aacute;til o tableta hasta gafas, tel&eacute;fono y llaves. Este morral es perfecto para aquellos que viajan con frecuencia, ya sea por ocio o trabajo.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"1,088\"> <div>1,088</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"10\"> <div>10</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"40\"> <div>40</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"29\"> <div>29</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Cuero Bovino | Forro: 100% Poliester\"> <div>Externo: 100% Cuero Bovino | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Colombia\"> <div>Colombia</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '274001', 50, NULL, '2021-12-26 10:49:42', 'maletin-portatil-multifuncional-de-cuero-para-hombre-haladeras-contraste', 1);
INSERT INTO `TblProducto` (`IdProducto`, `Cat_IdCategoria`, `Prod_Codigo`, `Prod_Nombre`, `Prod_Descripcion`, `Prod_Precio`, `Prod_Stock`, `Prod_Imagen`, `Prod_Datecreated`, `Prod_Ruta`, `Est_IdEstado`) VALUES
(6, 1, '103212600', 'BOLSO PARA HOMBRE TIPO TULA MORRAL EN LONA CON TAPA FRONTAL.', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Descripci&oacute;n:</strong> Dise&ntilde;o utilitario moda con tapa frontal y sistema de cierre por medio de broches .Cuenta con cierres invertido impermeables, marcaci&oacute;n en caucho y jaladeras metalicas, tira para trolley y covertor para lluvia. Cuenta con forro textil y compartimientos internos para guardar objetos de uso cotidiano tales como llaves, celular y art&iacute;culos personales, Ocasi&oacute;n de uso casual e informal.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"950 GR\"> <div>950 GR</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"14 CM\"> <div>14 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"31 CM\"> <div>31 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"46 CM\"> <div>46 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Nailon | Forro: 100% Poliester\"> <div>Externo: 100% Nailon | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"China\"> <div>China</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '209001', 30, NULL, '2021-12-26 10:56:13', 'bolso-para-hombre-tipo-tula-morral-en-lona-con-tapa-frontal', 1),
(7, 2, '103214232', 'BOLSO PARA MUJER EN SINTETICO TIPO SHOPPING CON MONEDERO REMOVIBLE', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Descripci&oacute;n:</strong>Dise&ntilde;o tipo shopping con cierres metalicos y doble cargadera para darle vesatilidad a su uso. Cuenta con un mondero externo removible en sintetico tipo piton a tono con el bolso principal. Su forro es estampado con compartimentos internos para una casi&oacute;n de uso casual o formal.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"870\"> <div>870</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"13,3 CM\"> <div>13,3 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"32 CM\"> <div>32 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"39 CM\"> <div>39 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Sintetico Pu | Forro: 100% Poliester\"> <div>Externo: 100% Sintetico Pu | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"China\"> <div>China</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '169001', 50, NULL, '2021-12-26 11:00:24', 'bolso-para-mujer-en-sintetico-tipo-shopping-con-monedero-removible', 1),
(8, 1, '103183201', 'BOLSO PARA HOMBRE TIPO TULA MORRAL EN LONA CON CIERRES INVERTIDOS CON LÍNEA DE COLOR .', '<div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Descripci&oacute;n: </strong>Dise&ntilde;o utilitario b&aacute;sico con cierres invertidos y l&iacute;neas en contraste con la lona, Marcaci&oacute;n estampada y jaladeras en caucho con forro en poli&eacute;ster estampado de Nappa. Ocasi&oacute;n de uso casual e informal.</div> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"> <div class=\"vtex-menu-2-x-menuItemInnerDiv vtex-menu-2-x-menuItemInnerDivmenu-item-product-description\"> <div class=\"vtex-menu-2-x-styledLinkContainer vtex-menu-2-x-styledLinkContainermenu-item-product-description mh6 pv2\"> <div class=\"vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContentmenu-item-product-description flex justify-between nowrap\"><strong>Carater&iacute;sticas:</strong></div> </div> </div> <div class=\"overflow-hidden\"> <section class=\"vtex-menu-2-x-submenuAccordion vtex-menu-2-x-submenuAccordionaccordion-product-description w-100 flex pl4 flex\"> <div class=\"vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRowproduct-politicas\"> <div class=\"flex mt0 mb0 pt0 pb0 justify-start vtex-flex-layout-0-x-flexRowContent vtex-flex-layout-0-x-flexRowContentproduct-politicas items-stretch w-100\"> <div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth flex\"> <div class=\"vtex-store-components-3-x-specificationsTableContainer vtex-store-components-3-x-specificationsTableContainerproduct-specifications mt9 mt0-l pl8-l\"> <table class=\"vtex-store-components-3-x-specificationsTable vtex-store-components-3-x-specificationsTableproduct-specifications w-100 bg-base border-collapse\"> <thead class=\"vtex-store-components-3-x-specificationsTableHead vtex-store-components-3-x-specificationsTableHeadproduct-specifications\"></thead> <tbody class=\"vtex-store-components-3-x-specificationsTableBody vtex-store-components-3-x-specificationsTableBodyproduct-specifications\"> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Peso (gr)\"> <div>Peso (Gr)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"600 GR\"> <div>600 GR</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Largo (cm)\"> <div>Largo (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"16 CM\"> <div>16 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Ancho (cm)\"> <div>Ancho (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"28 CM\"> <div>28 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Alto (cm)\"> <div>Alto (Cm)</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"46 CM\"> <div>46 CM</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Composici&oacute;n\"> <div>Composici&oacute;n</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Externo: 100% Poliester | Forro: 100% Poliester\"> <div>Externo: 100% Poliester | Forro: 100% Poliester</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Pa&iacute;s de origen\"> <div>Pa&iacute;s De Origen</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"China\"> <div>China</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Fabricante y/o importador\"> <div>Fabricante Y/O Importador</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Cueros V&eacute;lez S.A.S. | NIT 800191700-8\"> <div>Cueros V&eacute;lez S.A.S. | NIT 800191700-8</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Registro SIC\"> <div>Registro SIC</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"800191700\"> <div>800191700</div> </td> </tr> <tr class=\"vtex-store-components-3-x-specificationsTableRow vtex-store-components-3-x-specificationsTableRowproduct-specifications\"> <td class=\"vtex-store-components-3-x-specificationItemProperty vtex-store-components-3-x-specificationItemPropertyproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Forro\"> <div>Forro</div> </td> <td class=\"vtex-store-components-3-x-specificationItemSpecifications vtex-store-components-3-x-specificationItemSpecificationsproduct-specifications w-50 bmuted-4 bb pa5\" data-specification=\"Con Forro\"> <div>Con Forro</div> </td> </tr> </tbody> </table> </div> </div> </div> </div> </section> </div> </div> </div> </div>', '149001', 40, NULL, '2021-12-26 11:03:06', 'bolso-para-hombre-tipo-tula-morral-en-lona-con-cierres-invertidos-con-linea-de-color-', 2),
(9, 2, '123456789', 'prueba de funcionamiento', '<p><strong>Descripcion: </strong>Pulsera <strong>3 corazones</strong>&nbsp;rosados ba&ntilde;o de oro cadena con significado para mujer ajustable, delicada y femenina elaborada a mano.&nbsp;<strong>El dije de coraz&oacute;n es un s&iacute;mbolo de amor propio y poder personal</strong>. Nuestras pulseras est&aacute;n llenas de significado y amor para inspirar y empoderar, &uacute;sala todos los d&iacute;as.</p> <p><strong>Especificaciones:</strong></p> <ul> <li>Dije con ba&ntilde;o de oro y pintado a mano</li> <li>Herrajes con ba&ntilde;o de oro</li> <li>Cadena con ba&ntilde;o de oro</li> <li>Pulsera con broche y extensor</li> </ul>', '50000', 10, NULL, '2021-12-26 11:32:43', 'prueba-de-funcionamiento', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblProveedor`
--

DROP TABLE IF EXISTS `TblProveedor`;
CREATE TABLE `TblProveedor` (
  `IdProveedor` bigint(20) NOT NULL,
  `Prov_Identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Prov_Nombre` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Prov_Telefono` bigint(20) NOT NULL,
  `Prov_Email` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Prov_Datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblProveedor`
--

INSERT INTO `TblProveedor` (`IdProveedor`, `Prov_Identificacion`, `Prov_Nombre`, `Prov_Telefono`, `Prov_Email`, `Prov_Datecreated`, `Est_IdEstado`) VALUES
(1, '1067839749', 'Pepio Perez', 3104883788, 'pepito@pepito.com', '2022-08-15 15:51:14', 1),
(2, '874999788', 'Bol', 5678907890, 'proveedor@admin.com', '2022-08-15 15:54:52', 1),
(3, '122222222', 'Dddd', 22222, 'adminddddddd1@admin.com', '2022-09-02 11:18:48', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblRol`
--

DROP TABLE IF EXISTS `TblRol`;
CREATE TABLE `TblRol` (
  `IdRol` bigint(20) NOT NULL,
  `Rol_Nombre` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Rol_Descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblRol`
--

INSERT INTO `TblRol` (`IdRol`, `Rol_Nombre`, `Rol_Descripcion`, `Est_IdEstado`) VALUES
(1, 'Administrdor', 'Administrador del sistema', 1),
(2, 'Vendedor', 'Vendedor', 1),
(3, 'Supervisor', 'Supervisor', 1),
(4, 'Cliente', 'Cliente', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblSuscripciones`
--

DROP TABLE IF EXISTS `TblSuscripciones`;
CREATE TABLE `TblSuscripciones` (
  `IdSuscripcion` bigint(20) NOT NULL,
  `Sus_Nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Sus_Email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Sus_Datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblSuscripciones`
--

INSERT INTO `TblSuscripciones` (`IdSuscripcion`, `Sus_Nombre`, `Sus_Email`, `Sus_Datecreated`, `Est_IdEstado`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10', 1),
(2, 'Jose Hdez Cor', 'admin.cor@admin.com', '2021-11-21 16:40:42', 1),
(3, 'Juanito Perez Sanchez', 'juanto13@gmail.com', '2022-06-06 13:36:19', 1),
(4, 'Juanito Perez Sanchezs', 'juanto14@gmail.com', '2022-06-06 13:47:43', 1),
(5, 'Kamilas', 'kami@gmail.com', '2022-08-12 16:16:11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TblTipopago`
--

DROP TABLE IF EXISTS `TblTipopago`;
CREATE TABLE `TblTipopago` (
  `IdTipopago` bigint(20) NOT NULL,
  `Tpag_Tipopago` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Est_IdEstado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `TblTipopago`
--

INSERT INTO `TblTipopago` (`IdTipopago`, `Tpag_Tipopago`, `Est_IdEstado`) VALUES
(1, 'Mercado Pago', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pedidos`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `vista_pedidos`;
CREATE TABLE `vista_pedidos` (
`IdPedido` bigint(20)
,`Ped_Referenciacobro` varchar(255)
,`Tpay_IdTransaccionpaypal` varchar(255)
,`fecha` varchar(10)
,`Ped_Monto` decimal(11,2)
,`Tpag_IdTipopago` bigint(20)
,`Ped_Proceso` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_persona`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `vista_persona`;
CREATE TABLE `vista_persona` (
`IdPersona` bigint(20)
,`Per_Identificacion` varchar(30)
,`Per_Nombres` varchar(80)
,`Per_Apellidos` varchar(100)
,`Per_Telefono` bigint(20)
,`Per_Email` varchar(100)
,`Rol_Nombre` varchar(50)
,`fecha` varchar(10)
,`Est_Descripcion` text
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pedidos`
--
DROP TABLE IF EXISTS `vista_pedidos`;

DROP VIEW IF EXISTS `vista_pedidos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dbadsi2022`.`vista_pedidos`  AS SELECT `p`.`IdPedido` AS `IdPedido`, `p`.`Ped_Referenciacobro` AS `Ped_Referenciacobro`, `p`.`Tpay_IdTransaccionpaypal` AS `Tpay_IdTransaccionpaypal`, date_format(`p`.`Ped_Fecha`,'%d/%m/%Y') AS `fecha`, `p`.`Ped_Monto` AS `Ped_Monto`, `p`.`Tpag_IdTipopago` AS `Tpag_IdTipopago`, `p`.`Ped_Proceso` AS `Ped_Proceso` FROM (`dbadsi2022`.`tblpedido` `p` join `dbadsi2022`.`tbltipopago` `tp` on(`p`.`Tpag_IdTipopago` = `tp`.`IdTipopago`)) WHERE `p`.`Per_IdPersona` <> 0 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_persona`
--
DROP TABLE IF EXISTS `vista_persona`;

DROP VIEW IF EXISTS `vista_persona`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dbadsi2022`.`vista_persona`  AS SELECT `p`.`IdPersona` AS `IdPersona`, `p`.`Per_Identificacion` AS `Per_Identificacion`, `p`.`Per_Nombres` AS `Per_Nombres`, `p`.`Per_Apellidos` AS `Per_Apellidos`, `p`.`Per_Telefono` AS `Per_Telefono`, `p`.`Per_Email` AS `Per_Email`, `r`.`Rol_Nombre` AS `Rol_Nombre`, date_format(`p`.`Per_Datecreated`,'%d/%m/%Y') AS `fecha`, `st`.`Est_Descripcion` AS `Est_Descripcion` FROM ((`dbadsi2022`.`tblpersona` `p` join `dbadsi2022`.`tblrol` `r` on(`p`.`Rol_IdRol` = `r`.`IdRol`)) join `dbadsi2022`.`tblestado` `st` on(`p`.`Est_IdEstado` = `st`.`IdEstado`)) WHERE `p`.`IdPersona` <> 0 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TblBitacora`
--
ALTER TABLE `TblBitacora`
  ADD PRIMARY KEY (`IdBitacora`);

--
-- Indices de la tabla `TblCategoria`
--
ALTER TABLE `TblCategoria`
  ADD PRIMARY KEY (`IdCategoria`);

--
-- Indices de la tabla `TblContacto`
--
ALTER TABLE `TblContacto`
  ADD PRIMARY KEY (`IdContacto`);

--
-- Indices de la tabla `TblDepartamentos`
--
ALTER TABLE `TblDepartamentos`
  ADD PRIMARY KEY (`IdDepartamento`);

--
-- Indices de la tabla `TblDetalle_pedido`
--
ALTER TABLE `TblDetalle_pedido`
  ADD PRIMARY KEY (`IdDetallePed`),
  ADD KEY `pedidoid` (`Ped_IdPedido`),
  ADD KEY `productoid` (`Prod_IdProducto`);

--
-- Indices de la tabla `TblDetalle_temp`
--
ALTER TABLE `TblDetalle_temp`
  ADD PRIMARY KEY (`IdDetalleTemp`),
  ADD KEY `productoid` (`Prod_IdProducto`),
  ADD KEY `personaid` (`Per_IdPersona`);

--
-- Indices de la tabla `TblDevolucion`
--
ALTER TABLE `TblDevolucion`
  ADD PRIMARY KEY (`IdDevolucion`),
  ADD KEY `pedidoid` (`Ped_IdPedido`);

--
-- Indices de la tabla `TblEstado`
--
ALTER TABLE `TblEstado`
  ADD PRIMARY KEY (`IdEstado`);

--
-- Indices de la tabla `TblImagen`
--
ALTER TABLE `TblImagen`
  ADD PRIMARY KEY (`IdImagen`),
  ADD KEY `productoid` (`Prod_IdProducto`);

--
-- Indices de la tabla `TblModulo`
--
ALTER TABLE `TblModulo`
  ADD PRIMARY KEY (`IdModulo`);

--
-- Indices de la tabla `TblMunicipios`
--
ALTER TABLE `TblMunicipios`
  ADD PRIMARY KEY (`IdMunicipio`),
  ADD KEY `Dep_IdDepartamento` (`Dep_IdDepartamento`);

--
-- Indices de la tabla `TblPagina`
--
ALTER TABLE `TblPagina`
  ADD PRIMARY KEY (`IdPagina`);

--
-- Indices de la tabla `TblParametro`
--
ALTER TABLE `TblParametro`
  ADD PRIMARY KEY (`IdParametro`);

--
-- Indices de la tabla `TblPedido`
--
ALTER TABLE `TblPedido`
  ADD PRIMARY KEY (`IdPedido`),
  ADD KEY `personaid` (`Per_IdPersona`),
  ADD KEY `tipopagoid` (`Tpag_IdTipopago`);

--
-- Indices de la tabla `TblPermisos`
--
ALTER TABLE `TblPermisos`
  ADD PRIMARY KEY (`IdPermiso`),
  ADD KEY `moduloid` (`Mod_IdModulo`);

--
-- Indices de la tabla `TblPersona`
--
ALTER TABLE `TblPersona`
  ADD PRIMARY KEY (`IdPersona`),
  ADD KEY `rolid` (`Rol_IdRol`);

--
-- Indices de la tabla `TblProducto`
--
ALTER TABLE `TblProducto`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `categoriaid` (`Cat_IdCategoria`);

--
-- Indices de la tabla `TblProveedor`
--
ALTER TABLE `TblProveedor`
  ADD PRIMARY KEY (`IdProveedor`);

--
-- Indices de la tabla `TblRol`
--
ALTER TABLE `TblRol`
  ADD PRIMARY KEY (`IdRol`);

--
-- Indices de la tabla `TblSuscripciones`
--
ALTER TABLE `TblSuscripciones`
  ADD PRIMARY KEY (`IdSuscripcion`);

--
-- Indices de la tabla `TblTipopago`
--
ALTER TABLE `TblTipopago`
  ADD PRIMARY KEY (`IdTipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `TblCategoria`
--
ALTER TABLE `TblCategoria`
  MODIFY `IdCategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `TblContacto`
--
ALTER TABLE `TblContacto`
  MODIFY `IdContacto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `TblDepartamentos`
--
ALTER TABLE `TblDepartamentos`
  MODIFY `IdDepartamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `TblDetalle_pedido`
--
ALTER TABLE `TblDetalle_pedido`
  MODIFY `IdDetallePed` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `TblDetalle_temp`
--
ALTER TABLE `TblDetalle_temp`
  MODIFY `IdDetalleTemp` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TblDevolucion`
--
ALTER TABLE `TblDevolucion`
  MODIFY `IdDevolucion` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TblEstado`
--
ALTER TABLE `TblEstado`
  MODIFY `IdEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `TblImagen`
--
ALTER TABLE `TblImagen`
  MODIFY `IdImagen` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `TblModulo`
--
ALTER TABLE `TblModulo`
  MODIFY `IdModulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `TblMunicipios`
--
ALTER TABLE `TblMunicipios`
  MODIFY `IdMunicipio` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1127;

--
-- AUTO_INCREMENT de la tabla `TblPagina`
--
ALTER TABLE `TblPagina`
  MODIFY `IdPagina` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `TblParametro`
--
ALTER TABLE `TblParametro`
  MODIFY `IdParametro` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `TblPedido`
--
ALTER TABLE `TblPedido`
  MODIFY `IdPedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `TblPermisos`
--
ALTER TABLE `TblPermisos`
  MODIFY `IdPermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `TblPersona`
--
ALTER TABLE `TblPersona`
  MODIFY `IdPersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `TblProducto`
--
ALTER TABLE `TblProducto`
  MODIFY `IdProducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `TblProveedor`
--
ALTER TABLE `TblProveedor`
  MODIFY `IdProveedor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `TblRol`
--
ALTER TABLE `TblRol`
  MODIFY `IdRol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `TblSuscripciones`
--
ALTER TABLE `TblSuscripciones`
  MODIFY `IdSuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `TblTipopago`
--
ALTER TABLE `TblTipopago`
  MODIFY `IdTipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `TblDetalle_pedido`
--
ALTER TABLE `TblDetalle_pedido`
  ADD CONSTRAINT `tbldetalle_pedido_ibfk_1` FOREIGN KEY (`Ped_IdPedido`) REFERENCES `tblpedido` (`IdPedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalle_pedido_ibfk_2` FOREIGN KEY (`Prod_IdProducto`) REFERENCES `tblproducto` (`IdProducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblDetalle_temp`
--
ALTER TABLE `TblDetalle_temp`
  ADD CONSTRAINT `tbldetalle_temp_ibfk_1` FOREIGN KEY (`Prod_IdProducto`) REFERENCES `tblproducto` (`IdProducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblDevolucion`
--
ALTER TABLE `TblDevolucion`
  ADD CONSTRAINT `tbldevolucion_ibfk_1` FOREIGN KEY (`Ped_IdPedido`) REFERENCES `tblpedido` (`IdPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblImagen`
--
ALTER TABLE `TblImagen`
  ADD CONSTRAINT `tblimagen_ibfk_1` FOREIGN KEY (`Prod_IdProducto`) REFERENCES `tblproducto` (`IdProducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblMunicipios`
--
ALTER TABLE `TblMunicipios`
  ADD CONSTRAINT `TblMunicipios_ibfk_1` FOREIGN KEY (`Dep_IdDepartamento`) REFERENCES `TblDepartamentos` (`IdDepartamento`);

--
-- Filtros para la tabla `TblPedido`
--
ALTER TABLE `TblPedido`
  ADD CONSTRAINT `tblpedido_ibfk_1` FOREIGN KEY (`Per_IdPersona`) REFERENCES `tblpersona` (`IdPersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblpedido_ibfk_2` FOREIGN KEY (`Tpag_IdTipopago`) REFERENCES `tbltipopago` (`IdTipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblPermisos`
--
ALTER TABLE `TblPermisos`
  ADD CONSTRAINT `tblpermisos_ibfk_2` FOREIGN KEY (`Mod_IdModulo`) REFERENCES `tblmodulo` (`IdModulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblPersona`
--
ALTER TABLE `TblPersona`
  ADD CONSTRAINT `tblpersona_ibfk_1` FOREIGN KEY (`Rol_IdRol`) REFERENCES `tblrol` (`IdRol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TblProducto`
--
ALTER TABLE `TblProducto`
  ADD CONSTRAINT `tblproducto_ibfk_1` FOREIGN KEY (`Cat_IdCategoria`) REFERENCES `tblcategoria` (`IdCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
