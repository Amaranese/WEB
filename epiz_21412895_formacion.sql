-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: sql203.epizy.com
-- Tiempo de generación: 23-05-2018 a las 07:20:51
-- Versión del servidor: 5.6.35-81.0
-- Versión de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `epiz_21412895_formacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `profesor` varchar(50) NOT NULL,
  `asignatura` varchar(50) NOT NULL,
  `duracion` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `profesor`, `asignatura`, `duracion`) VALUES
(1, 'Rodolfo', 'BBDD', 1200),
(2, 'Lucio', 'Android', 4000),
(3, 'Pedro', 'Jquery', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int(3) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 NOT NULL,
  `callle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cp` char(5) NOT NULL,
  `poblacion` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nacimiento` date NOT NULL,
  `sexo` enum('Hombre','Mujer') NOT NULL DEFAULT 'Mujer',
  `sueldo` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellidos`, `callle`, `cp`, `poblacion`, `nacimiento`, `sexo`, `sueldo`) VALUES
(0, 'Juan', 'Lopez', 'Madrid,234', '28009', 'Madrid', '1987-01-24', 'Hombre', 112500),
(1, 'Lucia', 'LaPiedra', 'Barcelona,45', '34006', 'Barcelona', '1987-03-24', 'Mujer', 90000),
(2, 'Marta', 'Perez', 'Diagonal, 136', '08009', 'Barcelona', '1978-01-02', 'Mujer', 1500),
(3, 'Cristina', 'Garcia', 'Fderico Franco, 76', '65456', 'Coco-Loco', '1985-09-30', 'Mujer', 4500),
(4, 'Jaime', 'Leonidas', 'Las Vegas 17', '45668', 'Un lugar llamado Mundo', '1919-11-18', 'Hombre', 234000),
(5, 'Pepito', 'Grillo', 'La Fuente 1', '23657', 'Tierra', '1765-03-21', 'Hombre', 1),
(6, 'Dario', 'Gutierrez', 'Namibia, 9', '67538', 'Mundo', '1973-09-23', 'Hombre', 120000),
(7, 'Carlos', 'Martinez', 'Pamplona 12', '56745', 'Tierra', '1989-07-01', 'Hombre', 12000),
(8, 'Carlos', 'Gil', 'Verona 18', '76453', 'Tierra', '1654-07-18', 'Hombre', 34000),
(9, 'Aurelio', 'Gimenez', 'La Tortura 88', '19675', 'Soria', '1933-05-12', 'Hombre', 45000),
(10, 'Josefa', 'Locual', 'La Tortura, 89', '19677', 'Soria', '1932-07-12', 'Mujer', 23000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
