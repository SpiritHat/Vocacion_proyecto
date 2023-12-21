-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2023 a las 02:53:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `orientacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `idtest` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(80) NOT NULL,
  `colegio` varchar(80) NOT NULL,
  `carrera` varchar(80) NOT NULL,
  `aptitud` varchar(15) NOT NULL,
  `interes` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`idtest`, `fecha`, `nombre`, `correo`, `telefono`, `colegio`, `carrera`, `aptitud`, `interes`) VALUES
(2, '2023-02-21 11:38:51', 'JUAN PEREZ', 'jhon@gmail.com', '3214569090', 'PUMAREJO', 'Ingeniería de Sistemas', 'C,A,D', 'H'),
(3, '2023-02-22 20:02:40', 'ANA MELISA GALLEGO', 'ana@gmail.com', '2323232323', 'la presentacion', 'BIOLOGIA MARINA', 'C', 'H'),
(4, '2023-02-23 20:04:45', 'JAVIER EDUARDO VARELA', 'javier@gmail.com', '3434343', 'IE GABO', 'ZOOLOGIA', 'A', 'S'),
(5, '2023-02-21 20:19:13', 'NATALIA HERNANDEZ', 'nata@gmail.com', '3217809090', 'LA GABO', 'Creación de contenidos digitales', 'C', 'S,I,D,E'),
(6, '2023-02-21 20:43:55', 'ANA MARIA VELASQUEZ', 'ana@cotecnova.edu.co', '232323', 'LA PRESENTACION', 'Veterinaria', 'C,H,A,S,I', 'I'),
(15, '2023-04-30 01:15:43', 'Freddy martinez', 'freddymartinez@gmail.com', '3552584458', 'La presentacion', 'Programacion Web', 'A,D', 'I,D,E'),
(17, '2023-04-30 01:58:36', 'José Francisco', 'josefrancisco@gmail.com', '6658925', 'Pumarejo', 'Biología marina', 'C,H,A', 'S,I,D,E'),
(18, '2023-04-30 02:09:21', 'Eric Blake', 'ericblake_2005@gmail.com', '6598558', 'Julio Lopez', 'Veterinaria', 'H,A', 'I,D'),
(19, '2023-04-30 02:12:32', 'Daniel Hardy', 'hardynov2004@gmail.com', '5858548', 'Julio Lopez', 'Diseño y multimedia', 'C,H,A', 'E'),
(20, '2023-04-30 02:12:55', 'Ryan Davis', 'davisryan_s@gmail.com', '3045544548', 'Julio Lopez', 'Arquitectura', 'C', 'H'),
(21, '2023-04-30 02:18:02', 'Jose Santiago', 'josesantiago@gmail.com', '3625685559', 'El Gabo', 'Filosofia', 'A,D', 'E'),
(22, '2023-04-30 02:21:00', 'Jeffrey Stewart', 'stewartmt@gmail.com', '5488548', 'Pumarejo', 'Arquitectura', 'C', 'A'),
(23, '2023-04-30 02:23:43', 'Kayla Coleman', 'kcoleman_wt@lopez.edu.co', '3156859998', 'Julio Lopez', 'Fuerza aérea ', 'D', 'C,H,A,I'),
(24, '2023-04-30 02:27:10', 'Michelle Harrington', 'harrington_pez@gmail.com', '65986598', 'El Gabo', 'Administración Agropecuaria', 'I', 'D'),
(25, '2023-04-30 02:34:06', 'Paul khan', 'khan_the_king@gmail.com', '3156685666', 'Académico ', 'Veterinaria', 'A', 'C'),
(26, '2023-04-30 02:37:23', 'Michael King', 'the_king_of_the_school@gmial.com', '3054575586', 'El Académico ', 'Tecnología en Electricidad', 'A,D,E', 'C'),
(27, '2023-04-30 02:38:41', 'Chad Smith', 'Im_the_chad@gmail.com', '3565487774', 'Académico', 'Administración Agropecuaria', 'A,S,I', 'H'),
(28, '2023-04-30 02:41:11', 'Bonnie Williams', 'i_like_bunnies@gmail.com', '31574512542', 'El Académico ', 'Veterinaria', 'S', 'H'),
(29, '2023-04-30 02:44:34', 'Amando Stone', 'sisters_rock@gamil.com', '3225654125', 'Académico ', 'Geología', 'D', 'H'),
(30, '2023-04-30 02:50:20', 'Marcus Castillo', 'hard_like_a_castle@gmail.com', '3012526542', 'El Académico', 'Arquitectura', 'C,I,D', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `clave` varchar(300) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codigo`, `nombre`, `clave`, `rol`) VALUES
(1971, 'USUARIO', 'CKwCECQ7JmtWeOyng2gNJNB2VDBwMIF7XLhZMNPqtIuKUyfWT7W4QUX72AObcN7eios52ieeeFXP4gorcLRc+A==', 2),
(1112782862, 'ADMIN', 'uiJHjAUH3JBSxHLUMxdEwRKGQ2tLs1dYXSC3HIGWdCw78nmvoz1e0CbCuaORD4mkXrXaP+gbsohULOq5D4lJ+Dl4f15FUdNQvEGkT2mOe5k=', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idtest`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `idtest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
