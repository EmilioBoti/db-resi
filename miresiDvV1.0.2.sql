-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2022 a las 12:31:27
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
  `message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
(2, 'Madrid', 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1646176296/cities/madrid_b7mfaa.jpg'),
(3, 'Bilbao', NULL);

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
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647602456/Lesseps/fachada-copia_go0wrw.jpg'),
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647602458/Lesseps/sala-ocio-resa-lesseps_nwial1.jpg'),
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647602458/Lesseps/84-sala-de-estudios1_y4rmtt.jpg'),
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647602459/Lesseps/sala-office-resa-lesseps_xh2drw.jpg'),
(1, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647723558/Investigadors/resa_investigadors_cfesan.jpg'),
(2, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647724534/La%20Ciutadella/sala_ocio_resi_la_ciutadella_qtpvco.jpg'),
(2, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647724534/La%20Ciutadella/res_La_ciutadella_s4hwin.jpg'),
(6, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647724988/Campus%20del%20Mar/resi_estu_campus_mar_kaajze.jpg'),
(5, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647725315/Campus%20la%20Salle/la_salle_zonas_comun_qvlooc.jpg'),
(4, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647725596/Pere%20Felip%20Monlau/PFM_vending_yhtuvx.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `picture_rooms`
--

CREATE TABLE `picture_rooms` (
  `id_room_type` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `picture_rooms`
--

INSERT INTO `picture_rooms` (`id_room_type`, `image`) VALUES
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647604825/Lesseps/rooms/studio%20individual/estudio-individual-residencia-lesseps_ajqrqp.jpg'),
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647604825/Lesseps/rooms/studio%20individual/cocina-estudio-individual-resa-lesseps-1_cqqstp.jpg'),
(3, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647604824/Lesseps/rooms/studio%20individual/ba%C3%B1o-resa-lesseps-1_cienft.jpg'),
(4, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647604864/Lesseps/rooms/studio%20doble/resa-lesseps-doble_ct2jzr.jpg'),
(4, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647604864/Lesseps/rooms/studio%20doble/resa-lesseps-cocina_cc9cvt.jpg'),
(4, 'https://res.cloudinary.com/dsl5g1rs2/image/upload/v1647604864/Lesseps/rooms/studio%20doble/resa-lesseps-bano_ijzmgp.jpg');

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
  `location` mediumtext NOT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `link` longtext NOT NULL,
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
(1, 'Investigadors', 'Carrer de l\'Hospital, 64, 08001 Barcelona', 'Europa', '934438610', 'La Residencia d’Investigadors está ubicada en un edificio histórico que pertenece al CSIC. Un lugar donde aprovecharás todas las ventajas que te ofrece estudiar en Barcelona mientras completas tu carrera formativa y profesional.\r\n\r\nLa residencia dispone de habitaciones especialmente diseñadas para alojar a estudiantes de últimos cursos de grado, máster, posgrado, doctorando, investigadores y profesores universitarios.\r\n\r\nLas estancias pueden ser de curso académico, por meses y, además, también hay posibilidad de realizar estancias cortas por días.\r\n\r\nTendrás una cómoda habitación individual, con baño privado, zona de estudio y conexión Wifi.\r\n\r\nDisfruta cocinando en el Cookin’ Corner, la cocina común, donde conocerás a otros estudiantes, emprendedores y gente increíble con los que compartir momentos juntos.\r\n\r\nLa residencia también cuenta con una sala de actos y varias salas de reuniones totalmente equipadas. Para más información sobre el alquiler de estos espacios, puedes hacer clic aquí.\r\n\r\nSalir a conocer la ciudad nunca fue tan fácil con la fantástica ubicación de la residencia. En el centro de Barcelona, al lado de la Rambla de Raval, un barrio en continuo despertar cultural.', 'investigadors@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-investigadors/residencia/', 1, 0, 0, 0, 0, 0, 1),
(2, 'La Ciutadella', 'Passeig de Pujades, 33-37, 08018 Barcelona', 'Europa', '933943200', 'Si decides estudiar en Barcelona, La Residencia Universitaria La Ciutadella es tu mejor opción: estudios con baño y cocina, amplias zonas comunes, wifi… y todo ello en una zona céntrica con el mejor ambiente para estudiar y hacer nuevos amigos.\r\n\r\nLa residencia está situada en el Passeig Pujades, al lado del Campus universitario Ciutadella de la Pompeu Fabra y a un paso del conocido barrio del Borne. Una privilegiada localización para vivir, ahora a tu alcance.\r\n\r\nLa residencia La Ciutadella te ofrece estudios individuales y dobles cómodos y funcionales, completamente amueblados y equipados con baño, cocina, wifi, etc. Completan la oferta sus zonas comunes completamente remodeladas.\r\n\r\nUn espacio para vivir y estudiar a tu ritmo. Disfruta de la libertad de una residencia abierta las 24 horas y durante todo el año.', 'ciutadella@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-la-ciutadella/residencia/', 1, 1, 1, 1, 1, 1, 1),
(3, 'Lesseps', 'Pl. de Lesseps, 12, 08023 Barcelona', 'Europa', '933941600', 'Estudiar en Barcelona será, sin duda, una experiencia que no olvidarás jamás. La Residencia Universitaria Lesseps es la opción perfecta si buscas alojamiento cerca de tu universidad, con el mejor ambiente para estudiar y hacer nuevos amigos.\r\n\r\nEstá situada en el popular barrio de Gracia, muy cerca de las facultades de la Universitat Politècnica de Catalunya (UPC) y de la Universitat Ramón Llull (URL), rodeada de bares y restaurantes, cerca del centro y al lado del Parque Güell.\r\n\r\nLa Residencia Universitaria Lesseps te ofrece estudios individuales y dobles cómodos y funcionales, completamente amueblados, equipados con baño privado y cocina, wifi, etc.\r\n\r\nUn espacio para vivir y estudiar a tu ritmo. Disfruta de la libertad de una residencia abierta las 24 horas y durante todo el año.', 'lesseps@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-lesseps/residencia/', 1, 1, 1, 1, 1, 1, 1),
(4, 'Pere Felip Monlau', 'Carrer de Sant Oleguer, 20-22, 08001 Barcelona', 'Europa', '933943100', 'Si vienes a estudiar a Barcelona y quieres vivir en el centro y disfrutar de la diversidad de esta ciudad multicultural, Pere Felip Monlau es tu Residencia Universitaria.\r\n\r\nUbicada en el barrio del Raval, en el centro histórico de Barcelona, la residencia está situada muy cerca de las mejores universidades de Barcelona y bien conectada con transporte público del resto de la ciudad.\r\n\r\nLa Residencia Universitaria Pere Felip Monlau cuenta con estudios individuales y dobles cuidados hasta el último detalle, equipados con baño, cocina, wifi, etc.\r\n\r\nUn espacio para vivir y estudiar a tu ritmo. Disfruta de la libertad de una residencia abierta las 24 horas y durante todo el año.', 'monlau@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-pere-felip-monlau/residencia/', 1, 1, 1, 1, 1, 1, 1),
(5, 'Campus La Salle', 'Carrer de Sant Joan de la Salle, 42, 08022 Barcelona', 'Europa', '935084600', 'Estás a punto de comenzar tu etapa universitaria o de especializarte con un máster o posgrado y empiezas a buscar alojamiento. Sigue leyendo, porque la Residencia Universitaria Campus La Salle es el lugar perfecto para disfrutar de una estancia inolvidable en Barcelona mientras preparas tu futuro académico y profesional.\r\n\r\nUbicada en el Campus de La Salle Universitat Ramon Llull y al lado de las mejores facultades, IQS, UIC, Abat Oliba y otros centros de la URL entre otras, la residencia cuenta además con una situación privilegiada en la ciudad. Imagina poder tenerlo todo a un paso, la facultad donde estudias, correr por Collserola o ir de compras por el centro.\r\n\r\nLa R.U. Campus La Salle cuenta con estudios individuales y dobles completamente amueblados y equipados con baño, cocina, climatización, wifi, etc.\r\n\r\nUn espacio para vivir y estudiar a tu ritmo. Disfruta de la libertad de una residencia abierta las 24 horas y durante todo el año.', 'campuslasallebcn@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-campus-la-salle/residencia/', 1, 1, 1, 1, 1, 1, 1),
(6, 'Campus del Mar', 'Passeig de Salvat Papasseit, 4, 08003 Barcelona', 'Europa', '933904000', 'Estudiar en Barcelona será, sin duda, una experiencia que no olvidarás jamás. La Residencia Universitaria Campus del Mar es una opción perfecta si buscas alojamiento a un paso de la universidad, con el mejor ambiente para estudiar y dónde hacer nuevos amigos.\r\n\r\nEstá situada en el popular barrio La Barceloneta, muy cerca de las facultades de la Universitat Pompeu Fabra (UPF), rodeada de bares y restaurantes, cerca del centro, el Puerto Olímpico, la playa, etc.\r\n\r\nLa residencia Campus del Mar te ofrece estudios individuales cómodos y funcionales, completamente amueblados y equipados con baño, cocina, wifi, etc.\r\n\r\nUn espacio para vivir y estudiar a tu ritmo. Disfruta de la libertad de una residencia abierta las 24 horas y durante todo el año.', 'campusdelmar@resa.es', 'https://www.resa.es/es/residencias/barcelona/residencia-universitaria-campus-del-mar/residencia/', 1, 1, 1, 1, 1, 1, 1);

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
  `Fridge` tinyint(1) DEFAULT NULL,
  `id_resi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `room`
--

INSERT INTO `room` (`id`, `name`, `available`, `id_type`, `size`, `price`, `AC`, `Calefaccion`, `Fridge`, `id_resi`) VALUES
(1, 'Estudio Individual', NULL, 3, NULL, 473, 0, 1, 1, 3),
(2, 'Estudio Doble', NULL, 4, NULL, 352, 0, 1, 1, 3),
(5, 'Estudio Doble', NULL, 4, NULL, 480, 1, 1, 1, 4),
(6, 'Habitación Individual con', NULL, 11, NULL, 624, 1, 1, 1, 4),
(7, 'Estudio Individual', NULL, 3, NULL, 777, 1, 1, 1, 5),
(8, 'Estudio Doble', NULL, 4, NULL, 753, 1, 1, 1, 5);

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

--
-- Volcado de datos para la tabla `stackfavourite`
--

INSERT INTO `stackfavourite` (`id_user`, `id_residence`, `id_room`) VALUES
(1, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stackresirooms`
--

CREATE TABLE `stackresirooms` (
  `id_residence` int(11) NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stackresirooms`
--

INSERT INTO `stackresirooms` (`id_residence`, `id_room`) VALUES
(3, 1),
(3, 2),
(4, 5),
(4, 6),
(5, 7),
(5, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userchat`
--

CREATE TABLE `userchat` (
  `userId` int(11) NOT NULL,
  `otherUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `userchat`
--

INSERT INTO `userchat` (`userId`, `otherUser`) VALUES
(1, 2),
(1, 3),
(2, 3),
(3, 1),
(2, 1),
(3, 2),
(5, 1),
(1, 5);

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
(1, 'Emilio Botier', 'emiliobotier@gmail.com', 'cb5fce6c', NULL, 'vW0CUesz3NIMYeVlAAAd', '2e12d4fbfed7e291a5c5f291bec86599'),
(2, 'Daniela Barrera', 'danielabarrera@gmail.com', '6a2058ab8c', NULL, 'VsFfbzwaSljzYLPNAAAL', '000f5e252189b570836cda7ad64b4a9a'),
(3, 'Daniel Gil', 'daniusgil@gmail.com', 'a3fac83b74', NULL, 'W-2SNQaxc7NDJ038AAAF', '6788a1781e52aae19e4f485009d40aa4'),
(4, 'user4', 'user4@gmail.com', 'b4504f0ef7', NULL, 'dafgdsg', 'b71e381e14e4c14015e4ecabfd8ee735'),
(5, 'Pere', 'pere@gmail.com', '27c8010393', NULL, '1fxlsv_K7jCSflsPAAAb', '63e25697ca4ac3de83b501b70640f1ed');

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
  ADD KEY `FK_typeRoom` (`id_type`),
  ADD KEY `FK_id_resi` (`id_resi`);

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
-- Indices de la tabla `userchat`
--
ALTER TABLE `userchat`
  ADD KEY `FK_u_Id` (`userId`),
  ADD KEY `FK_otherUser_Id` (`otherUser`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `FK_id_resi` FOREIGN KEY (`id_resi`) REFERENCES `residence` (`id`),
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

--
-- Filtros para la tabla `userchat`
--
ALTER TABLE `userchat`
  ADD CONSTRAINT `FK_otherUser_Id` FOREIGN KEY (`otherUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_u_Id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
