-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2013 a las 22:44:17
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sumbawa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `imagen`, `descripcion`, `titulo`, `link`, `estado`, `created`, `updated`, `tipo`) VALUES
(1, 'slider.png', 'banner principal', NULL, NULL, 0, '2013-07-10 18:36:10', '2013-07-10 18:36:10', 'p'),
(2, 'slider.png', 'banners 2', NULL, NULL, 0, '2013-07-10 20:33:55', '2013-07-10 20:33:55', 'p');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `imagen`, `descripcion`, `estado`, `created`, `updated`) VALUES
(1, 'HOMBRES', 'Hombres.png', NULL, NULL, NULL, NULL),
(2, 'MUJERES', 'Mujer.png', NULL, NULL, NULL, NULL),
(3, 'NINOS', 'ninos.png', NULL, NULL, NULL, NULL),
(4, 'SURF', 'Surf.png', NULL, NULL, NULL, NULL),
(5, 'SKATE', 'skate.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_envio_id` int(11) NOT NULL,
  `detalle_pago_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_996D34C94DF9B3AD` (`detalle_envio_id`),
  UNIQUE KEY `UNIQ_996D34C92B256D28` (`detalle_pago_id`),
  KEY `IDX_996D34C9DB38439E` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactenos`
--

CREATE TABLE IF NOT EXISTS `contactenos` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensaje` longtext COLLATE utf8_unicode_ci,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE IF NOT EXISTS `contenido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `categoria` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleenvio`
--

CREATE TABLE IF NOT EXISTS `detalleenvio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo_postal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepago`
--

CREATE TABLE IF NOT EXISTS `detallepago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tarjeta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes_vence` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anio_vence` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_tarjeta` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista`
--

CREATE TABLE IF NOT EXISTS `entrevista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_id` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci,
  `respuesta` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1381A8F65D430949` (`personal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `entrevista`
--

INSERT INTO `entrevista` (`id`, `personal_id`, `pregunta`, `respuesta`, `estado`, `created`, `updated`) VALUES
(1, 1, 'que haces cuando no surfeas?', 'programar y hacer sistemas informaticos', NULL, NULL, NULL),
(2, 1, 'Que marca de computadoras te gustas', 'Las ibm', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `titulo`, `descripcion`, `created`, `updated`, `estado`, `imagen`) VALUES
(1, 'Titulo de imagen', 'descrisdfsdfsd', NULL, NULL, 0, '20130413195011.jpg'),
(2, 'IMAGEN 2', 'ASDASDASD', NULL, NULL, 0, 'P1010761-300x225.jpg'),
(3, 'IAMGEN 3 CREADA', 'ASDASDASD', NULL, NULL, 0, 'montanita.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenespersonal`
--

CREATE TABLE IF NOT EXISTS `imagenespersonal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F58E0B03F5F88DB9` (`persona_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `imagenespersonal`
--

INSERT INTO `imagenespersonal` (`id`, `persona_id`, `titulo`, `imagen`, `descripcion`, `created`, `updated`, `estado`) VALUES
(1, 1, 'premiacion', 'fotos_sebas3.png', 'buen trip la gente', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE IF NOT EXISTS `multimedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `peso` int(11) DEFAULT NULL,
  `descripcionCorta` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descripcion`, `created`, `updated`, `estado`, `imagen`, `peso`, `descripcionCorta`) VALUES
(1, 'Noticia uno', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est├índar de las industrias desde el a├▒o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us├│ una galer├¡a de textos y los mezcl├│ de tal manera que logr├│ hacer un libro de textos especimen. No s├│lo sobrevivi├│ 500 a├▒os, sino que tambien ingres├│ como texto de relleno en documentos electr├│nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci├│n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m├ís recientemente con software de autoedici├│n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2013-07-11 09:42:54', '2013-07-11 09:42:54', 0, '20130413195011.jpg', 1, NULL),
(2, 'Noticias numero 2', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est├índar de las industrias desde el a├▒o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us├│ una galer├¡a de textos y los mezcl├│ de tal manera que logr├│ hacer un libro de textos especimen. No s├│lo sobrevivi├│ 500 a├▒os, sino que tambien ingres├│ como texto de relleno en documentos electr├│nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci├│n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m├ís recientemente con software de autoedici├│n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est├índar de las industrias desde el a├▒o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us├│ una galer├¡a de textos y los mezcl├│ de tal manera que logr├│ hacer un libro de textos especimen. No s├│lo sobrevivi├│ 500 a├▒os, sino que tambien ingres├│ como texto de relleno en documentos electr├│nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci├│n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m├ís recientemente con software de autoedici├│n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2013-07-11 09:43:11', '2013-07-11 09:59:31', 0, 'montanita.jpg', 2, NULL),
(3, 'noticias 3', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est├índar de las industrias desde el a├▒o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us├│ una galer├¡a de textos y los mezcl├│ de tal manera que logr├│ hacer un libro de textos especimen. No s├│lo sobrevivi├│ 500 a├▒os, sino que tambien ingres├│ como texto de relleno en documentos electr├│nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci├│n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m├ís recientemente con software de autoedici├│n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est├índar de las industrias desde el a├▒o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us├│ una galer├¡a de textos y los mezcl├│ de tal manera que logr├│ hacer un libro de textos especimen. No s├│lo sobrevivi├│ 500 a├▒os, sino que tambien ingres├│ como texto de relleno en documentos electr├│nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci├│n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m├ís recientemente con software de autoedici├│n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2013-07-11 09:43:30', '2013-07-11 09:43:30', 0, 'P1010761-300x225.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatura` double DEFAULT NULL,
  `sponsor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anecdota` longtext COLLATE utf8_unicode_ci,
  `edad` int(11) DEFAULT NULL,
  `extra1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `nombre`, `estatura`, `sponsor`, `anecdota`, `edad`, `extra1`, `extra2`, `imagen`) VALUES
(1, 'Hector Alvarado', 170, 'asdad', 'asdqdasdasd', 12, 'asdasdasd', NULL, 'foto_perfil.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoria_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `stock` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `visitas` int(11) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `codigo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8_unicode_ci,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5ECD644388D3B71A` (`subcategoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `subcategoria_id`, `nombre`, `descripcion`, `stock`, `precio`, `created`, `updated`, `estado`, `visitas`, `grupo`, `codigo`, `tags`, `foto`, `color1`, `color2`) VALUES
(1, 1, 'producto creado', 'descripcion de pructo', 32, 300, NULL, NULL, NULL, NULL, NULL, NULL, 'camisa, ropa , estilo', NULL, 'rojo', 'azul'),
(2, 1, 'producto creado2', 'decricpion de producto creado \r\n2', 32, 234, NULL, NULL, NULL, NULL, NULL, NULL, 'camisa , casual , creado', NULL, 'rojo', 'verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoimagen`
--

CREATE TABLE IF NOT EXISTS `productoimagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_83CE4BAB7645698E` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `productoimagen`
--

INSERT INTO `productoimagen` (`id`, `producto_id`, `url`, `created`, `updated`, `estado`, `descripcion`) VALUES
(1, 1, 'camisa1.png', NULL, NULL, NULL, NULL),
(2, 2, 'camisa3.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE IF NOT EXISTS `subcategoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C24E62EC3397707A` (`categoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id`, `categoria_id`, `nombre`, `imagen`, `descripcion`, `estado`, `created`, `updated`) VALUES
(1, 1, 'camisas', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Pantalones', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'casual', NULL, NULL, NULL, NULL, NULL),
(4, 2, 'blusas', NULL, NULL, NULL, NULL, NULL),
(5, 2, 'faldas', NULL, NULL, NULL, NULL, NULL),
(6, 3, 'camisas', NULL, NULL, NULL, NULL, NULL),
(7, 4, 'tablas', NULL, NULL, NULL, NULL, NULL),
(8, 4, 'accesorios', NULL, NULL, NULL, NULL, NULL),
(9, 5, 'accesorios', NULL, NULL, NULL, NULL, NULL),
(10, 1, 'ingresa prueba', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE IF NOT EXISTS `tienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atencion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `latitud` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longuitud` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id`, `nombre`, `direccion`, `telefono`, `email`, `atencion`, `created`, `updated`, `estado`, `latitud`, `longuitud`) VALUES
(1, 'Tienda1', 'direccion tienda', '098887876', 'tienda@sumbawa.com', 'de 8:00 hasta las 18:00', NULL, NULL, NULL, NULL, NULL),
(2, 'Tienda2', 'direccion de tienda2', '093235895', 'correo@tiendas.sumbawa.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajaconnosotros`
--

CREATE TABLE IF NOT EXISTS `trabajaconnosotros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nacimiento` datetime NOT NULL,
  `genero` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `nacionalidad` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fijo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `areaAplica` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nivelAplica` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `estadoCivil` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `contactoEmergencia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telelfonoEmergencia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videospersonal`
--

CREATE TABLE IF NOT EXISTS `videospersonal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multimedia_id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C4BB4CD920531EB8` (`multimedia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_996D34C92B256D28` FOREIGN KEY (`detalle_pago_id`) REFERENCES `detallepago` (`id`),
  ADD CONSTRAINT `FK_996D34C94DF9B3AD` FOREIGN KEY (`detalle_envio_id`) REFERENCES `detalleenvio` (`id`),
  ADD CONSTRAINT `FK_996D34C9DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `FK_1381A8F65D430949` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`id`);

--
-- Filtros para la tabla `imagenespersonal`
--
ALTER TABLE `imagenespersonal`
  ADD CONSTRAINT `FK_F58E0B03F5F88DB9` FOREIGN KEY (`persona_id`) REFERENCES `personal` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_5ECD644388D3B71A` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria` (`id`);

--
-- Filtros para la tabla `productoimagen`
--
ALTER TABLE `productoimagen`
  ADD CONSTRAINT `FK_83CE4BAB7645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `FK_C24E62EC3397707A` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `videospersonal`
--
ALTER TABLE `videospersonal`
  ADD CONSTRAINT `FK_C4BB4CD920531EB8` FOREIGN KEY (`multimedia_id`) REFERENCES `videospersonal` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
