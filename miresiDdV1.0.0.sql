-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2022 a las 01:45:49
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miresi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_father` int(11) NOT NULL,
  `pm` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id_u_sender` int(11) NOT NULL,
  `id_u_receiver` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id`, `name`, `image`) VALUES
(1, 'Barcelona', 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1646176103/cities/barcelona_qyvlzy.jpg'),
(2, 'Madrid', 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1646176296/cities/madrid_b7mfaa.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_login`
--

CREATE TABLE `log_login` (
  `id_user` int(11) NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_create` date NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `id_father` int(11) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `picturesresidence`
--

CREATE TABLE `picturesresidence` (
  `id_residence` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `picturesresidence`
--

INSERT INTO `picturesresidence` (`id_residence`, `image`) VALUES
(1, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647258622/resi/resa_investigadors_b1omts.jpg'),
(1, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647258634/resi/resa_investigadors1.0_yhwsgt.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `picture_rooms`
--

CREATE TABLE `picture_rooms` (
  `id_room_type` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_residences` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date_end` date DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residence`
--

CREATE TABLE `residence` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(40) NOT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `library` tinyint(1) DEFAULT NULL,
  `laundry` tinyint(1) DEFAULT NULL,
  `gym` tinyint(1) DEFAULT NULL,
  `parking_bicycle` tinyint(1) DEFAULT NULL,
  `parking_car` tinyint(1) DEFAULT NULL,
  `parking_motorcycle` tinyint(1) DEFAULT NULL,
  `id_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `residence`
--

INSERT INTO `residence` (`id`, `name`, `location`, `continent`, `phone_number`, `description`, `email`, `link`, `library`, `laundry`, `gym`, `parking_bicycle`, `parking_car`, `parking_motorcycle`, `id_city`) VALUES
(1, 'Investigadors', 'Carrer de l\'Hospital, 64, 08001 Barcelon', 'Europa', '934438610', 'La Residencia d’Investigadors está ubicada en un edificio histórico que pertenece al CSIC. Un lugar donde aprovecharás todas las ventajas que te ofrece estudiar en Barcelona mientras completas tu carrera formativa y profesional.\r\n\r\nLa residencia dispone d', 'investigadors@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-investigadors/residencia/', 1, 0, 0, 0, 0, 0, 1),
(2, 'La Ciutadella', 'Passeig de Pujades, 33-37, 08018 Barcelo', 'Europa', '933943200', 'Si decides estudiar en Barcelona, La Residencia Universitaria La Ciutadella es tu mejor opción: estudios con baño y cocina, amplias zonas comunes, wifi… y todo ello en una zona céntrica con el mejor ambiente para estudiar y hacer nuevos amigos.\r\n\r\nLa resi', 'ciutadella@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-la-ciutadella/residencia/', 1, 1, 1, 1, 1, 1, 1),
(3, 'Lesseps', 'Pl. de Lesseps, 12, 08023 Barcelona', 'Europa', '933941600', 'Estudiar en Barcelona será, sin duda, una experiencia que no olvidarás jamás. La Residencia Universitaria Lesseps es la opción perfecta si buscas alojamiento cerca de tu universidad, con el mejor ambiente para estudiar y hacer nuevos amigos.\r\n\r\nEstá situa', 'lesseps@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-lesseps/residencia/', 1, 1, 1, 1, 1, 1, 1),
(4, 'Pere Felip Monlau', 'Carrer de Sant Oleguer, 20-22, 08001 Bar', 'Europa', '933943100', 'Si vienes a estudiar a Barcelona y quieres vivir en el centro y disfrutar de la diversidad de esta ciudad multicultural, Pere Felip Monlau es tu Residencia Universitaria.\r\n\r\nUbicada en el barrio del Raval, en el centro histórico de Barcelona, la residenci', 'monlau@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-pere-felip-monlau/residencia/', 1, 1, 1, 1, 1, 1, 1),
(5, 'Campus La Salle', 'Carrer de Sant Joan de la Salle, 42, 080', 'Europa', '935084600', 'Estás a punto de comenzar tu etapa universitaria o de especializarte con un máster o posgrado y empiezas a buscar alojamiento. Sigue leyendo, porque la Residencia Universitaria Campus La Salle es el lugar perfecto para disfrutar de una estancia inolvidabl', 'campuslasallebcn@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-campus-la-salle/residencia/', 1, 1, 1, 1, 1, 1, 1),
(6, 'Campus del Mar', 'Passeig de Salvat Papasseit, 4, 08003 Ba', 'Europa', '933904000', 'Estudiar en Barcelona será, sin duda, una experiencia que no olvidarás jamás. La Residencia Universitaria Campus del Mar es una opción perfecta si buscas alojamiento a un paso de la universidad, con el mejor ambiente para estudiar y dónde hacer nuevos ami', 'campusdelmar@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-campus-del-mar/residencia/', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `size` float DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `AC` tinyint(1) DEFAULT NULL,
  `Calefaccion` tinyint(1) DEFAULT NULL,
  `Fridge` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `room`
--

INSERT INTO `room` (`id`, `name`, `available`, `id_type`, `size`, `price`, `AC`, `Calefaccion`, `Fridge`) VALUES
(1, 'Estudio Individual', NULL, 3, NULL, 473, 0, 1, 1),
(2, 'Estudio Doble', NULL, 4, NULL, 352, 0, 1, 1),
(5, 'Estudio Doble', NULL, 4, NULL, 480, 1, 1, 1),
(6, 'Habitación Individual con', NULL, 11, NULL, 624, 1, 1, 1),
(7, 'Estudio Individual', NULL, 3, NULL, 777, 1, 1, 1),
(8, 'Estudio Doble', NULL, 4, NULL, 753, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(60) NOT NULL,
  `kitchen` tinyint(1) DEFAULT NULL,
  `shared_bathroom` tinyint(1) DEFAULT NULL,
  `access_wheelchair` tinyint(1) DEFAULT NULL,
  `shared_kitchen` tinyint(1) DEFAULT NULL,
  `shared_room` tinyint(1) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `room_type`
--

INSERT INTO `room_type` (`id`, `type_name`, `kitchen`, `shared_bathroom`, `access_wheelchair`, `shared_kitchen`, `shared_room`, `type`) VALUES
(1, 'Habitación Doble con cocina compartida (PMR)', 1, 1, 1, 1, 1, 'Habitación'),
(2, 'Habitación Individual con cocina y baño compartidos', 0, 1, 1, 1, 0, 'Habitación'),
(3, 'Estudio Individual', 0, 0, 1, 0, 0, 'Estudio'),
(4, 'Estudio Doble', 1, 1, 1, 0, 0, 'Estudio'),
(5, 'Estudio Individual conbaño compartido (PMR)', 0, 1, 1, 0, 1, 'Estudio'),
(6, 'Estudio Individual cono baño compartido', 0, 1, 1, 0, 0, 'Estudio'),
(7, 'Habitación Individual con cocina y baño compartidos (PMR)', 0, 1, 1, 1, 1, 'Habitación'),
(8, 'Estudio Individual (PMR)', 0, 0, 1, 0, 1, 'Estudio'),
(9, 'Habitación Individual con baño compartido', 0, 1, 0, 0, 0, 'Habitación'),
(10, 'Habitación Doble con cocina compartida', 1, 1, 1, 1, 0, 'Habitación'),
(11, 'Habitación Individual con cocina compartida', 0, 0, 1, 1, 0, 'Habitación'),
(12, 'Estudio Doble (PMR)', 1, 1, 1, 0, 1, 'Estudio'),
(13, 'Habitación Individual con cocina compartida (PMR)', 0, 0, 1, 1, 1, 'Habitación'),
(14, 'Habitación Individual', 0, 0, 0, 0, 0, 'Habitación'),
(15, 'Habitación Doble (PMR)', 1, 1, 0, 0, 1, 'Habitación'),
(16, 'Habitación Doble', 1, 1, 0, 0, 0, 'Habitación'),
(17, 'Habitación Individual con baño compartido (PMR)', 0, 1, 0, 0, 1, 'Habitación'),
(18, 'Habitación Individual (PMR)', 0, 0, 0, 0, 1, 'Habitación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stackfavourite`
--

CREATE TABLE `stackfavourite` (
  `id_user` int(11) NOT NULL,
  `id_residence` int(11) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stackresirooms`
--

CREATE TABLE `stackresirooms` (
  `id_residence` int(11) NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `code_pass` varchar(30) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `socketid` varchar(255) NOT NULL,
  `iv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `code_pass`, `active`, `socketid`, `iv`) VALUES
(1, 'Emilio Botier', 'emiliobotier@gmail.com', 'cb5fce6c', NULL, 'D6jvg6t2V6JBmfkUAAAZ', '2e12d4fbfed7e291a5c5f291bec86599'),
(2, 'Daniela Barrera', 'danielabarrera@gmail.com', '6a2058ab8c', NULL, 'dafgdsg', '000f5e252189b570836cda7ad64b4a9a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD KEY `FK_u_sender_id` (`id_u_sender`),
  ADD KEY `FK_u_receiver_id` (`id_u_receiver`);

--
-- Indices de la tabla `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_login`
--
ALTER TABLE `log_login`
  ADD KEY `FK_login_log` (`id_user`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `picturesresidence`
--
ALTER TABLE `picturesresidence`
  ADD KEY `FK_pictureResi` (`id_residence`);

--
-- Indices de la tabla `picture_rooms`
--
ALTER TABLE `picture_rooms`
  ADD KEY `FK_room_type_id` (`id_room_type`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_id` (`id_user`),
  ADD KEY `FK_resi_id` (`id_residences`),
  ADD KEY `FK_roomIdF` (`id_room`);

--
-- Indices de la tabla `residence`
--
ALTER TABLE `residence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_city` (`id_city`);

--
-- Indices de la tabla `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_typeRoom` (`id_type`);

--
-- Indices de la tabla `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stackfavourite`
--
ALTER TABLE `stackfavourite`
  ADD KEY `FK_userId` (`id_user`),
  ADD KEY `FK_residenceId` (`id_residence`),
  ADD KEY `FK_roomId` (`id_room`);

--
-- Indices de la tabla `stackresirooms`
--
ALTER TABLE `stackresirooms`
  ADD KEY `FK_residence_id` (`id_residence`),
  ADD KEY `FK_room_id` (`id_room`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `residence`
--
ALTER TABLE `residence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `FK_u_receiver_id` FOREIGN KEY (`id_u_receiver`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_u_sender_id` FOREIGN KEY (`id_u_sender`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `log_login`
--
ALTER TABLE `log_login`
  ADD CONSTRAINT `FK_login_log` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `picturesresidence`
--
ALTER TABLE `picturesresidence`
  ADD CONSTRAINT `FK_pictureResi` FOREIGN KEY (`id_residence`) REFERENCES `residence` (`id`);

--
-- Filtros para la tabla `picture_rooms`
--
ALTER TABLE `picture_rooms`
  ADD CONSTRAINT `FK_room_type_id` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id`);

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_resi_id` FOREIGN KEY (`id_residences`) REFERENCES `residence` (`id`),
  ADD CONSTRAINT `FK_roomIdF` FOREIGN KEY (`id_room`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `FK_user_id` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `residence`
--
ALTER TABLE `residence`
  ADD CONSTRAINT `FK_city` FOREIGN KEY (`id_city`) REFERENCES `city` (`id`);

--
-- Filtros para la tabla `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_typeRoom` FOREIGN KEY (`id_type`) REFERENCES `room_type` (`id`);

--
-- Filtros para la tabla `stackfavourite`
--
ALTER TABLE `stackfavourite`
  ADD CONSTRAINT `FK_residenceId` FOREIGN KEY (`id_residence`) REFERENCES `residence` (`id`),
  ADD CONSTRAINT `FK_roomId` FOREIGN KEY (`id_room`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `FK_userId` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `stackresirooms`
--
ALTER TABLE `stackresirooms`
  ADD CONSTRAINT `FK_residence_id` FOREIGN KEY (`id_residence`) REFERENCES `residence` (`id`),
  ADD CONSTRAINT `FK_room_id` FOREIGN KEY (`id_room`) REFERENCES `room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
