-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2023 a las 02:48:29
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
-- Base de datos: `monitoreo_pmr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivo`
--

CREATE TABLE `dispositivo` (
  `id_dispositivo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `numero_serie` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dispositivo`
--

INSERT INTO `dispositivo` (`id_dispositivo`, `modelo`, `numero_serie`) VALUES
(1, 'FDX-RA1-3G-EXT', '201612019'),
(2, 'FDX-RA1-3G-EXT', '201612019'),
(3, 'FDX-RA1-3G', '201612005'),
(4, 'FDX-RA1-3G-EXT', '201612010'),
(5, 'FDX-RA1-3G-EXT', '201704122'),
(6, 'FDX-RA2-XG', '201905025'),
(7, 'FDX-RA2-XG', '201905020'),
(8, 'FDX-RA2-XG', '201905016'),
(9, 'FDX-RA2-XG', '201905026'),
(10, 'FDX-RA2-XG', '201905030'),
(11, 'FDX-RA2-XG', '201905032'),
(12, 'FDX-RA2-XG', '201905035'),
(13, 'FDX-RA2-XG', '201905036'),
(14, 'FDX-RA2-XG', '201905048'),
(15, 'FDX-RA2-XG', '201905051'),
(16, 'FDX-RA2-XG', '201905044'),
(17, 'FDX-RA2-XG', '201905068'),
(18, 'FDX-RA2-XG', '201905088'),
(19, 'FDX-RA2-XG', '201905087'),
(20, 'FDX-RA2-XG', '201905085'),
(21, 'FDX-RA2-XG', '201905084'),
(22, 'FDX-RA2-XG', '201905082'),
(23, 'FDX-RA2-XG', '201905083'),
(24, 'FDX-RA2-XG', '201905086'),
(25, 'FDX-RA2-XG', '201905081'),
(26, 'FDX-RA2-XG', '201905014'),
(27, 'FDX-RA2-XG', '201905012'),
(28, 'FDX-RA2-XG', '201905008'),
(29, 'FDX-RA2-XG', '201905006'),
(30, 'FDX-RA1-3G-EXT', '201612018'),
(31, 'FDX-RA1-3G-EXT', '201612021'),
(32, 'FDX-RA1-3G-EXT', '201612022'),
(33, 'FDX-RA1-3G-EXT', '201612032'),
(34, 'FDX-RA1-3G-EXT', '201612031'),
(35, 'FDX-RA1-3G-EXT', '201612030'),
(36, 'FDX-RA1-3G-EXT', '201612024'),
(37, 'FDX-RA1-3G-EXT', '201612027'),
(38, 'FDX-RA1-3G-EXT', '201704109'),
(39, 'FDX-RA2-XG', '201905073'),
(40, 'FDX-RA1-3G-EXT', '201704107'),
(41, 'FDX-RA1-3G-EXT', '201704110'),
(42, 'FDX-RA1-3G-EXT', '201704114'),
(43, 'FDX-RA1-3G-EXT', '201704104'),
(44, 'FDX-RA1-3G-EXT', '201704108'),
(45, 'FDX-RA1-3G-EXT', '201704121'),
(46, 'FDX-RA2-XG', '201905002'),
(47, 'FDX-RA2-XG', '201905003'),
(48, 'FDX-RA2-XG', '201905005'),
(49, 'FDX-RA1-3G-EXT', '201704106'),
(50, 'FDX-RA2-XG', '201905075'),
(51, 'FDX-RA2-XG', '201905019'),
(52, 'FDX-RA2-XG', '201905100'),
(53, 'FDX-RA2-XG', '201905095'),
(54, 'FDX-RA2-XG', '201905096'),
(55, 'FDX-RA2-XG', '201905097'),
(56, 'FDX-RA2-XG', '201905121'),
(57, 'FDX-RA2-XG', '201905122'),
(58, 'FDX-RA2-XG', '201905116'),
(59, 'FDX-RA2-XG', '201905115'),
(60, 'FDX-RA2-XG', '201905127'),
(61, 'FDX-RA2-XG', '201905113'),
(62, 'FDX-RA2-XG', '201905109'),
(63, 'FDX-RA2-XG', '201905103'),
(64, 'FDX-RA2-XG', '201905106'),
(65, 'FDX-RA2-XG', '201905107'),
(66, 'FDX-RA2-XG', '201905101'),
(67, 'FDX-RA2-XG', '201905105'),
(68, 'FDX-RA2-XG', '201905111'),
(69, 'FDX-RA2-XG', '201905128'),
(70, 'FDX-RA2-XG', '201905124'),
(71, 'FDX-RA2-XG', '201905076'),
(72, 'FDX-RA2-XG', '201905071'),
(73, 'FDX-RA2-XG', '201905079'),
(74, 'FDX-RA2-XG', '201905078'),
(75, 'FDX-RA2-XG', '201905117'),
(76, 'FDX-RA2-XG', '201905061'),
(77, 'FDX-RA2-XG', '201905092'),
(78, 'FDX-RA2-XG', '201905123'),
(79, 'FDX-RA2-XG', '201905054'),
(80, 'FDX-RA2-XG', '201905039'),
(81, 'FDX-RA2-XG', '201905004'),
(82, 'FDX-RA2-XG', '201905126'),
(83, 'FDX-RA2-XG', '201905022'),
(84, 'FDX-RA2-XG', '201905104'),
(85, 'FDX-RA2-XG', '201905112'),
(86, 'FDX-RA1-3G-EXT', '201612023'),
(87, 'FDX-RA2-XG', '201905055'),
(88, 'FDX-RA2-XG', '201905074'),
(89, 'FDX-RA1-3G', '201612001'),
(90, 'FDX-RA1-3G-EXT', '201612008'),
(91, 'FDX-RA1-3G-EXT', '201612038'),
(92, 'FDX-RA1-3G-EXT', '201612009'),
(93, 'FDX-RA2-XG', '201905108'),
(94, 'FDX-RA1-3G-EXT', '201704111'),
(95, 'FDX-RA2-XG', '201905009'),
(96, 'FDX-RA2-XG', '201905130'),
(97, 'FDX-RA2-XG', '201905031'),
(98, 'FDX-RA2-XG', '201905050'),
(99, 'FDX-RA1-3G-EXT', '201704103'),
(100, 'FDX-RA1-3G-EXT', '201612028'),
(101, 'FDX-RA1-3G', '201612003'),
(102, 'FDX-RA2-XG', '201905129'),
(103, 'FDX-RA1-3G-EXT', '201612020'),
(104, 'FDX-RA2-XG', '201905089'),
(105, 'FDX-RA1-3G-EXT', '201704115'),
(106, 'FDX-RA2-XG', '201905010'),
(107, 'FDX-RA2-XG', '201905047'),
(108, 'FDX-RA2-XG', '201905024'),
(109, 'FDX-RA1-3G-EXT', '201612035'),
(110, 'FDX-RA2-XG', '201905102'),
(111, 'FDX-RA1-3G-EXT', '201612034'),
(112, 'FDX-RA2-XG', '201905090'),
(113, 'FDX-RA2-XG', '201905034'),
(114, 'FDX-RA1-3G-EXT', '201704119'),
(115, 'FDX-RA2-XG', '201905042'),
(116, 'FDX-RA2-XG', '201905037'),
(117, 'FDX-RA2-XG', '201905114'),
(118, 'FDX-RA1-3G-EXT', '201612033'),
(119, 'FDX-RA1-3G-EXT', '201704117'),
(120, 'FDX-RA2-XG', '201905070'),
(121, 'FDX-RA1-3G-EXT', '201704118'),
(122, 'FDX-RA2-XG', '201905018'),
(123, 'FDX-RA1-3G-EXT', '201704116'),
(124, 'FDX-RA1-3G-EXT', '201612036'),
(125, 'FDX-RA1-3G-EXT', '201612029'),
(126, 'FDX-RA2-XG', '201905110'),
(127, 'FDX-RA2-XG', '201905120'),
(128, 'FDX-RA1-3G-EXT', '201704105'),
(129, 'FDX-RA2-XG', '201905038'),
(130, 'FDX-RA2-XG', '201905072'),
(131, 'FDX-RA1-3G-EXT', '201612026'),
(132, 'FDX-RA2-XG', '201905094'),
(133, 'FDX-RA2-XG', '201905119'),
(134, 'FDX-RA2-XG', '201905027'),
(135, 'FDX-RA2-XG', '201905077'),
(136, 'FDX-RA2-XG', '201905064'),
(137, 'FDX-RA1-3G-EXT', '201704120'),
(138, 'FDX-RA2-XG', '201905099'),
(139, 'FDX-RA1-3G-EXT', '201612014'),
(140, 'FDX-RA2-XG', '201905049'),
(141, 'FDX-RA2-XG', '201905023'),
(142, 'FDX-RA2-XG', '201905040'),
(143, 'FDX-RA2-XG', '201905056'),
(144, 'FDX-RA2-XG', '201905007'),
(145, 'FDX-RA2-XG', '201905011'),
(146, 'FDX-RA2-XG', '201905098'),
(147, 'FDX-RA2-XG', '201905057'),
(148, 'FDX-RA1-3G-EXT', '201612017'),
(149, 'FDX-RA1-3G-EXT', '201612011'),
(150, 'FDX-RA2-XG', '201905063'),
(151, 'FDX-RA1-3G-EXT', '201612013'),
(152, 'FDX-RA1-3G-EXT', '201612012'),
(153, 'FDX-RA1-3G', '201612002'),
(154, 'FDX-RA2-XG', '201905069'),
(155, 'FDX-RA1-3G-EXT', '201612016'),
(156, 'FDX-RA1-3G-EXT', '201612006'),
(157, 'FDX-RA2-XG', '201905091'),
(158, 'FDX-RA2-XG', '201905043'),
(159, 'FDX-RA2-XG', '201905062'),
(160, 'FDX-RA1-3G', '201612004'),
(161, 'FDX-RA2-XG', '201905029'),
(162, 'FDX-RA2-XG', '201905033'),
(163, 'FDX-RA2-XG', '201905060'),
(164, 'FDX-RA2-XG', '201905118'),
(165, 'FDX-RA2-XG', '201905080'),
(166, 'FDX-RA2-XG', '201905041'),
(167, 'FDX-RA2-XG', '201905066'),
(168, 'FDX-RA2-XG', '201905045'),
(169, 'FDX-RA2-XG', '201905059'),
(170, 'FDX-RA2-XG', '201905065'),
(171, 'FDX-RA2-XG', '201905067'),
(172, 'FDX-RA2-XG', '201905125'),
(173, 'FDX-RA2-XG', '201905052'),
(174, 'FDX-RA2-XG', '201905015'),
(175, 'FDX-RA2-XG', '201905053'),
(176, 'FDX-RA2-XG', '201905017'),
(177, 'FDX-RA2-XG', '201905046'),
(178, 'FDX-RA2-XG', '201905028'),
(179, 'FDX-RA2-XG', '201905058'),
(180, 'FDX-RA1-3G-EXT', '201704112'),
(181, 'FDX-RA1-3G-EXT', '21000001'),
(182, 'FDX-RA2-XG', '201905013'),
(183, 'FDX-RA2-XG', '201905093'),
(184, 'FDX-RA1-3G-EXT', '201704113'),
(185, 'FDX-RA1-3G-EXT', '201612037'),
(186, 'FDX-RA2-XG', '201905001'),
(187, 'FDX-RA2-XG', '201905021'),
(188, 'FDX-RA1-3G-EXT', '201612040'),
(189, 'FDX-RA1-3G-EXT', '201612039'),
(190, 'FDX-RA1-3G-EXT', '201612015'),
(191, 'FDX-RA1-3G-EXT', '201612025'),
(192, 'FDX-RA1-3G-EXT', '201612007');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadora`
--

CREATE TABLE `operadora` (
  `id_operadora` int(20) NOT NULL,
  `operadora` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `operadora`
--

INSERT INTO `operadora` (`id_operadora`, `operadora`) VALUES
(1, 'Claro'),
(2, 'Personal'),
(3, 'Movistar'),
(4, 'TBD');

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `pmr_activos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `pmr_activos` (
`pmr` varchar(30)
,`direccion` varchar(100)
,`operadora` varchar(30)
,`numero_serie` varchar(30)
,`sim` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `pmr_inactivos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `pmr_inactivos` (
`pmr` varchar(30)
,`modelo` varchar(30)
,`numero_serie` varchar(30)
,`sim` varchar(30)
,`operadora` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sim`
--

CREATE TABLE `sim` (
  `id_sim` int(11) NOT NULL,
  `sim` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sim`
--

INSERT INTO `sim` (`id_sim`, `sim`) VALUES
(1, '88888888888'),
(2, '8954310162900313555'),
(3, '89543680616001159519'),
(4, '8954310162900312490'),
(5, '89543680616001159477'),
(6, '8954310181902123283'),
(7, '8954310181902123143'),
(8, '8954079900005407561'),
(9, '8954310181902123192'),
(10, '8954310181902123275'),
(11, '895407900004263106'),
(12, '8954079900004262835'),
(13, '8954079900004262843'),
(14, '8954079900004263494'),
(15, '8954079900004263502'),
(16, '8954079900004263312'),
(17, '8954079900004263171'),
(18, '8954310181902123309'),
(19, '8954310181902123226'),
(20, '8954310181902123085'),
(21, '8954310181902123135'),
(22, '8954310181902123077'),
(23, '8954310181902123218'),
(24, '8954310181302123184'),
(25, '8954310181902123267'),
(26, '8954079900005407546'),
(27, '8954079900005407512'),
(28, '8954079900005407785'),
(29, '8954079900005407751'),
(30, '89543680616001159444'),
(31, '8954310165900546520'),
(32, '8954310165900546405'),
(33, '8954310165900546512'),
(34, '8954310165900546462'),
(35, '8954310165900546454'),
(36, '8954310165900546421'),
(37, '89543680616001159436'),
(38, '895436806016001159386'),
(39, '8954079900004263924'),
(40, '89543680616001165953'),
(41, '8954310165900595360'),
(42, '89543680616001165995'),
(43, '8954310165900597671'),
(44, '8954310165900597622'),
(45, '89543680616001159527'),
(46, '8954079900005408866'),
(47, '8954079900005407744'),
(48, '8954079900005407538'),
(49, '89543680616001166001'),
(50, '8954079900004263916'),
(51, '89543101819D2123176'),
(52, '8954079900004262496'),
(53, '8954079900004262983'),
(54, '8954079900004262504'),
(55, '8954079900004262975'),
(56, '8954079900004262322'),
(57, '8954079900004262330'),
(58, '8954079900004262371'),
(59, '8954079900004262363'),
(60, '8954310181902123259'),
(61, '8954079900004262791'),
(62, '8954079900004263049'),
(63, '8954079900004263411'),
(64, '8954079900004262470'),
(65, '8954079900004263429'),
(66, '8954079900004263577'),
(67, '8954079900004262462'),
(68, '8954079900004262868'),
(69, '8954310181902118663'),
(70, '8954079900004262512'),
(71, '8954079900004262710'),
(72, '8954079900004262546'),
(73, '8954079900004262538'),
(74, '8954079900004262520'),
(75, '8954079900004263452'),
(76, '8954079900004263940'),
(77, '8954079900004262959'),
(78, '8954079900004263437'),
(79, '8954079900004262439'),
(80, '8954079900004262561'),
(81, '8954079900005407736'),
(82, '8954310181902123093'),
(83, '8954310181902123291'),
(84, '8954079900004263593'),
(85, '8954079900004262488'),
(86, '89543680616001159600'),
(87, '8954079900004263486'),
(88, '8954079900004263981'),
(89, '8954079900005408890'),
(90, '8954310162900312573'),
(91, '8954310165900546595'),
(92, '8954310162900312524'),
(93, '8954079900004263031'),
(94, '8954310165900595337'),
(95, '8954079900005407504'),
(96, '8954310162900313506'),
(97, '8954079900004263098'),
(98, '8954079900004263767'),
(99, '89543680616001159485'),
(100, '8954310165900546546'),
(101, '8954310162900312540'),
(102, '8954310162900312565'),
(103, '8954310162900313449'),
(104, '8954310181902123150'),
(105, '89543680616001165967'),
(106, '8954079900005407769'),
(107, '8954079900004263296'),
(108, '8954310181902123242'),
(109, '8954310165900546587'),
(110, '8954079900004263601'),
(111, '8954310165900546553'),
(112, '8954310181902123069'),
(113, '8954079900004262827'),
(114, '8954310162900312557'),
(115, '8954079900004263221'),
(116, '8954079900004262876'),
(117, '8954079900004293596'),
(118, '8954310165900546496'),
(119, '8954310162900313530'),
(120, '8954079900004263205'),
(121, '89543680616001159493'),
(122, '8954079900005407587'),
(123, '89543680616001165979'),
(124, '8954310165900546538'),
(125, '8954310165900546439'),
(126, '8954079900004263056'),
(127, '8954079900004263361'),
(128, '89543680616001165961'),
(129, '8954079900004262884'),
(130, '8954079900004262553'),
(131, '89543680616001159469'),
(132, '8954079900004263445'),
(133, '8954079900004263353'),
(134, '8954310181902123234'),
(135, '8954079900004263965'),
(136, '8954079900004264062'),
(137, '89543680616001159501'),
(138, '8954079900004262801'),
(139, '8954310162900313548'),
(140, '8954079900004262595'),
(141, '8954310181902123168'),
(142, '8954079900004262579'),
(143, '8954079900004263775'),
(144, '8954079900005407793'),
(145, '8954079900005407777'),
(146, '8954079900004262967'),
(147, '8954079900004263932'),
(148, '8954310162900312532'),
(149, '8954310162900313431'),
(150, '8954079900004263635'),
(151, '8954310162900313415'),
(152, '8954079900005408874'),
(153, '89543680616001159550'),
(154, '8954079900004263197'),
(155, '8954310162900313498'),
(156, '8954310162900313472'),
(157, '8954079900004262942'),
(158, '8954079900004263320'),
(159, '8954079900004264039'),
(160, '8954310162900313522'),
(161, '8954310181902123127'),
(162, '8954079900004261936'),
(163, '8954079900004263478'),
(164, '8954079900005408858'),
(165, '8954079900004264047'),
(166, '8954079900004262587'),
(167, '8954079900004263643'),
(168, '8954079900004263304'),
(169, '8954079900004263783'),
(170, '8954079900004263163'),
(171, '8954079900004263189'),
(172, '8954079900004263346'),
(173, '8954079900004262231'),
(174, '8954079900005407579'),
(175, '8954079900004262249'),
(176, '8954079900005407553'),
(177, '8954079900004263213'),
(178, '8954310181902123200'),
(179, '8954079900004263460'),
(180, '8954310165900595386'),
(181, '0'),
(182, '8954079900005407520'),
(183, '8954079900004262926'),
(184, '89543680616001159592'),
(185, '8954310165900546561'),
(186, '8954079900005407728'),
(187, '89543680117001747395'),
(188, '8954310165900546629'),
(189, '8954310165900546579'),
(190, '8954310162900313514'),
(191, '89543680616001165409'),
(192, '8954310162900313480'),
(193, '777777777777');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pmr`
--

CREATE TABLE `pmr` (
  `id_pmr` int(20) NOT NULL,
  `pmr` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ident_sim` int(20) DEFAULT NULL,
  `ident_dispositivo` int(20) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT 'activo',
  `ident_operadora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pmr`
--

INSERT INTO `pmr` (`id_pmr`, `pmr`, `direccion`, `ident_sim`, `ident_dispositivo`, `estado`, `ident_operadora`) VALUES
(192, 'SCM-12', 'Av. La Plata y Guayaquil, CABA', 1, 1, 'activo', 2),
(193, 'SCM-21', 'Diogenes Taborda y Osvaldo Cruz, CABA', 2, 2, 'activo', 2),
(194, 'SCM-R07-09', 'Av. Pedro Goyena y Riglos, CABA', 3, 3, 'activo', 1),
(196, 'TCM-R03-04', 'Av. San Martin y Nogoya, CABA', 5, 5, 'activo', 1),
(197, 'SCM-17', 'Av Saenz y Achala, CABA', 6, 6, 'activo', 1),
(198, 'INT12-04', 'Río Cuarto y Luna, CABA', 7, 7, 'activo', 3),
(199, 'INT12-01', 'General Iriarte y San Antonio, CABA', 8, 8, 'activo', 1),
(200, 'TCM-13', 'Av. Presidente Raul Alfonsín y Ferre, Gerli', 9, 9, 'activo', 1),
(201, 'PCM-05', 'Luis Sáenz Peña y Estados Unidos, CABA', 10, 10, 'activo', 3),
(202, 'SCM-24', 'Av.Crisologo Larralde  N°3544, Sarandí', 11, 11, 'activo', 3),
(203, 'COS-11', 'Figueroa Alcorta y Austria, CABA', 12, 12, 'activo', 3),
(204, 'PCM-23', 'Leandro N. Alem e/ Libertad y Belgrano, Quilmes', 13, 13, 'activo', 3),
(205, 'TCM-09', 'SIFON 3CM', 14, 14, 'activo', 3),
(206, 'TCM-01', 'Salto y Av. Balbin, CABA', 15, 15, 'activo', 3),
(207, 'INT23-01', 'Av. Amancio Alcorta y Romero, CABA', 16, 16, 'activo', 3),
(208, 'RIB-07', 'Av. Presidente Roca y Libertador, Béccar', 17, 17, 'activo', 1),
(209, 'TCM-05', 'Gavilán y Av. Gaona, CABA', 18, 18, 'activo', 1),
(210, 'SCM-R06-01', 'Av. San Martín y Melincue, CABA', 19, 19, 'activo', 1),
(211, 'INT13-R01-03', 'Virrey Cevallos y Pedro Echagüe, CABA', 20, 20, 'activo', 1),
(212, 'INT12-05', 'Santo Domingo y Pepirí, CABA', 21, 21, 'activo', 1),
(213, 'SCM-22', 'Entre Ríos y Rivadavia, Piñeyro', 22, 22, 'activo', 1),
(214, 'TCM-R04-03', 'Tandil y Pieres, CABA', 23, 23, 'activo', 1),
(215, 'RIB-03', 'Presidente Perón y Arenales, San Fernando', 24, 24, 'activo', 1),
(216, 'COS-07', 'Av. Lacroze y Av. Del Libertador, CABA', 25, 25, 'activo', 3),
(217, 'TCM-10', 'Republica Argentina y Jose I. Rucci, Valentín Alsina', 26, 26, 'activo', 3),
(218, 'SCM-03', 'Av. Forest y Virrey Loreto, CABA', 27, 27, 'activo', 3),
(219, 'TCM-07', 'Av.Del Barco del Centenera N°2790, CABA', 28, 28, 'activo', 3),
(220, 'PCM-01', 'Paraná y Arenales, CABA', 29, 29, 'activo', 2),
(221, 'COS-R02-01', 'Arcos y Jaramillo, CABA', 30, 30, 'activo', 1),
(222, 'SCM-05', 'Camargo y Darwin, CABA', 31, 31, 'activo', 1),
(223, 'RIB-19', 'Besares y O´Higgins, CABA', 32, 32, 'activo', 1),
(224, 'TCM-18', 'Av.14 y calle 164, Berazategui', 33, 33, 'activo', 1),
(225, 'RIB-10', 'Av. Libertador y Roque Sáenz Peña, Olivos', 34, 34, 'activo', 1),
(226, 'SCM-25', 'Blvd. De los Italianos Nº71, Villa Domínico', 35, 35, 'activo', 1),
(227, 'COS-16', 'Martín Garcia y Paseo Colón, CABA', 36, 36, 'activo', 2),
(228, 'SCM-R06-06', 'Av. Díaz Vélez y Virasoro, CABA', 37, 37, 'activo', 2),
(229, 'TCM-R04-05', 'Av. Juan Bautista Alberdi 4012, CABA', 38, 38, 'activo', 3),
(230, 'TCM-R08-01', 'Malabia y General Deheza, Banfield', 39, 39, 'activo', 2),
(231, 'SCM-16', 'Raulet y Gregorio Pomar, CABA', 40, 40, 'activo', 1),
(232, 'SCM-19', 'Diógenes Taborda y Linch, CABA', 41, 41, 'activo', 2),
(233, 'COS-09', 'Av. Libertador y Casares, CABA', 42, 42, 'activo', 1),
(234, 'COS-02', 'Crisologo Larralde y 3 de Febrero, CABA', 43, 43, 'activo', 1),
(235, 'COS-08', 'Av. Del Libertador N°4489, CABA', 44, 44, 'activo', 2),
(236, 'SCM-R07-03', 'Av Directorio y Fonrouge, CABA', 45, 45, 'activo', 3),
(237, 'RIB-20', 'Manzanares y Arcos, CABA', 46, 46, 'activo', 3),
(238, 'SCM-04', 'Av. Forest y Olleros, CABA', 47, 47, 'activo', 3),
(239, 'SCM-02', 'Av. Forest y Virrey del Pino, CABA', 48, 48, 'activo', 2),
(240, 'TCM-15', 'Lafuente y De La Peña, Wilde', 49, 49, 'activo', 3),
(241, 'TCM-R03-03', 'Av. San Martín 6900, CABA', 50, 50, 'activo', 1),
(242, 'COS-04', 'Av. Del Libertador y Sucre, CABA', 51, 51, 'activo', 3),
(243, 'SCM-14', 'Av. La Plata y Juan de Garay, CABA', 52, 52, 'activo', 3),
(244, 'RIB-08', 'Florencio Varela Y Lasalle, Béccar.', 53, 53, 'activo', 3),
(245, 'PCM-14', 'Ramón Franco N°5050, Villa Domínico', 54, 54, 'activo', 3),
(246, 'INT13-05', 'Av. Caseros y Quilmes, CABA', 55, 55, 'activo', 3),
(247, 'TCM-11', 'República Argentina y Río de Janeiro, Gerli', 56, 56, 'activo', 3),
(248, 'INT13-03', 'Av. Caseros y Av. Jujuy, CABA', 57, 57, 'activo', 3),
(249, 'RIB-15', 'Av. del Libertador y Acassuso, La Lucila', 58, 58, 'activo', 3),
(250, 'SCM-R07-05', 'Av Olivera y Chascomus, CABA', 59, 59, 'activo', 1),
(251, 'TCM-04', 'Arismendi y Combatiente de Malvinas, CABA', 60, 60, 'activo', 3),
(252, 'BB Entrada', 'Vieytes 859, CABA', 61, 61, 'activo', 1),
(253, 'INT13-R01-02', 'Virrey Cevallos y Cochabamba, CABA', 62, 62, 'activo', 3),
(254, 'RIB-16', 'Azcuenaga e/ Marconi y Villate, Olivos', 63, 63, 'activo', 3),
(255, 'BB Salida', 'Vieytes 859, CABA', 64, 64, 'activo', 3),
(256, 'INT13-06', 'Av. Fernández de la Cruz y Tilcara, CABA', 65, 65, 'activo', 3),
(257, 'SCM-R02-01', 'Av Congreso y Zapiola, CABA', 66, 66, 'activo', 3),
(258, 'SCM-06', 'Juan B. Justo y Camargo, CABA', 67, 67, 'activo', 3),
(259, 'PCM-06', 'Luis Saenz Peña y Av. Caseros, CABA', 68, 68, 'activo', 1),
(260, 'SCM-18', 'Diogenes Taborda y José C. Paz, CABA', 69, 69, 'activo', 3),
(261, 'PCM-22', 'Ramella e/ Gral. Roca y Ciudadela, Bernal', 70, 70, 'activo', 3),
(262, 'RIB-12', 'Av. Libertador y Aristobulo del Valle, Vicente López', 71, 71, 'activo', 3),
(263, 'TCM-R03-02', 'Diagonal Islas Malvinas, San Andres', 72, 72, 'activo', 3),
(264, 'SUD-04', 'Lino Lagos y Pilcomayo, Aldo Bonzi', 73, 73, 'activo', 3),
(265, 'COS-10', 'Sanchez de Bustamante y Av. del Libertador, CABA', 74, 74, 'activo', 3),
(266, 'TCM-R08-02', 'Magdalena Y Blanco Encalada, Lanús', 75, 75, 'activo', 3),
(267, 'SCM-R01-01', 'Av Congreso y Ceretti, CABA', 76, 76, 'activo', 3),
(268, 'SCM-R01-02', 'Av. Congreso y Capdevila, CABA', 77, 77, 'activo', 3),
(269, 'NUEVO', 'GREDES', 78, 78, 'inactivo', 3),
(270, 'NUEVO', 'GREDES', 79, 79, 'inactivo', 3),
(271, 'RIB-21', 'Arcos y Jaramillo, CABA', 80, 80, 'activo', 3),
(272, 'NUEVO', 'GREDES', 81, 81, 'inactivo', 1),
(273, 'SCM-08', 'Camargo y Araoz, CABA', 82, 82, 'activo', 1),
(274, 'SCM-01', 'Washington y Rivera, CABA', 83, 83, 'activo', 3),
(275, 'RIB-04', 'Presidente Perón y Don Orione, San Fernando', 84, 84, 'activo', 3),
(276, 'SCM-23', 'Av. Galicia N°115, Piñeyro', 85, 85, 'activo', 2),
(277, 'COS-05', 'José Hernandez y Miñones, CABA', 86, 86, 'activo', 3),
(278, 'NUEVO', 'GREDES', 87, 87, 'inactivo', 3),
(279, 'NUEVO', 'GREDES', 88, 88, 'inactivo', 3),
(280, 'NUEVO', 'GREDES', 89, 89, 'inactivo', 1),
(281, 'NUEVO', 'GREDES', 90, 90, 'inactivo', 1),
(282, 'NUEVO', 'GREDES', 91, 91, 'inactivo', 1),
(283, 'RIB-01', 'Presidente Perón y Gral Pinto, San Fernando', 92, 92, 'activo', 3),
(284, 'PCM-02', 'Paraná  Nº 531, CABA', 93, 93, 'activo', 1),
(285, 'NUEVO', 'GREDES', 94, 94, 'inactivo', 3),
(286, 'NUEVO', 'GREDES', 95, 95, 'inactivo', 1),
(287, 'NUEVO', 'GREDES', 96, 96, 'inactivo', 3),
(288, 'NUEVO', 'GREDES', 97, 97, 'inactivo', 3),
(289, 'NUEVO', 'GREDES', 98, 98, 'inactivo', 2),
(290, 'NUEVO', 'GREDES', 99, 99, 'inactivo', 1),
(291, 'NUEVO', 'GREDES', 100, 100, 'inactivo', 1),
(292, 'NUEVO', 'GREDES', 100, 100, 'inactivo', 1),
(293, 'NUEVO', 'GREDES', 101, 101, 'inactivo', 1),
(294, 'NUEVO', 'GREDES', 102, 102, 'inactivo', 1),
(295, 'NUEVO', 'GREDES', 103, 103, 'inactivo', 1),
(296, 'NUEVO', 'GREDES', 104, 104, 'inactivo', 2),
(297, 'NUEVO', 'GREDES', 105, 105, 'inactivo', 3),
(298, 'NUEVO', 'GREDES', 106, 106, 'inactivo', 3),
(299, 'NUEVO', 'GREDES', 107, 107, 'inactivo', 1),
(300, 'NUEVO', 'GREDES', 108, 108, 'inactivo', 1),
(301, 'NUEVO', 'GREDES', 109, 109, 'inactivo', 3),
(302, 'NUEVO', 'GREDES', 110, 110, 'inactivo', 1),
(303, 'NUEVO', 'GREDES', 111, 111, 'inactivo', 1),
(304, 'RIB-18', 'Laprida y Azcuenaga, Olivos', 112, 112, 'activo', 3),
(305, 'NUEVO', 'GREDES', 113, 113, 'inactivo', 1),
(306, 'NUEVO', 'GREDES', 114, 114, 'inactivo', 3),
(307, 'NUEVO', 'GREDES', 115, 115, 'inactivo', 3),
(308, 'NUEVO', 'GREDES', 116, 116, 'inactivo', 3),
(309, 'NUEVO', 'GREDES', 117, 117, 'inactivo', 1),
(310, 'NUEVO', 'GREDES', 118, 118, 'inactivo', 1),
(311, 'NUEVO', 'GREDES', 119, 119, 'inactivo', 3),
(312, 'NUEVO', 'GREDES', 120, 120, 'inactivo', 2),
(313, 'NUEVO', 'GREDES', 121, 121, 'inactivo', 3),
(314, 'NUEVO', 'GREDES', 122, 122, 'inactivo', 2),
(315, 'NUEVO', 'GREDES', 123, 123, 'inactivo', 1),
(316, 'NUEVO', 'GREDES', 124, 124, 'inactivo', 1),
(317, 'NUEVO', 'GREDES', 125, 125, 'inactivo', 3),
(429, 'NUEVO', 'GREDES', 126, 126, 'inactivo', 3),
(430, 'NUEVO', 'GREDES', 127, 127, 'inactivo', 2),
(431, 'NUEVO', 'GREDES', 128, 128, 'inactivo', 3),
(432, 'NUEVO', 'GREDES', 129, 129, 'inactivo', 3),
(433, 'NUEVO', 'GREDES', 130, 130, 'inactivo', 2),
(444, 'NUEVO', 'GREDES', 131, 131, 'inactivo', 3),
(445, 'NUEVO', 'GREDES', 132, 132, 'inactivo', 3),
(446, 'NUEVO', 'GREDES', 133, 133, 'inactivo', 1),
(447, 'NUEVO', 'GREDES', 134, 134, 'inactivo', 3),
(448, 'NUEVO', 'GREDES', 135, 135, 'inactivo', 3),
(449, 'NUEVO', 'GREDES', 136, 136, 'inactivo', 2),
(450, 'NUEVO', 'GREDES', 137, 137, 'inactivo', 3),
(451, 'NUEVO', 'GREDES', 138, 138, 'inactivo', 1),
(452, 'NUEVO', 'GREDES', 139, 139, 'inactivo', 3),
(453, 'NUEVO', 'GREDES', 140, 140, 'inactivo', 1),
(454, 'NUEVO', 'GREDES', 141, 141, 'inactivo', 3),
(455, 'NUEVO', 'GREDES', 142, 142, 'inactivo', 3),
(456, 'NUEVO', 'GREDES', 143, 143, 'inactivo', 3),
(457, 'NUEVO', 'GREDES', 144, 144, 'inactivo', 3),
(458, 'NUEVO', 'GREDES', 145, 145, 'inactivo', 3),
(459, 'NUEVO', 'GREDES', 146, 146, 'inactivo', 3),
(460, 'NUEVO', 'GREDES', 147, 147, 'inactivo', 1),
(461, 'NUEVO', 'GREDES', 148, 148, 'inactivo', 1),
(462, 'NUEVO', 'GREDES', 149, 149, 'inactivo', 3),
(463, 'NUEVO', 'GREDES', 150, 150, 'inactivo', 1),
(464, 'NUEVO', 'GREDES', 151, 151, 'inactivo', 3),
(465, 'NUEVO', 'GREDES', 152, 152, 'inactivo', 2),
(466, 'NUEVO', 'GREDES', 153, 153, 'inactivo', 3),
(467, 'NUEVO', 'GREDES', 154, 154, 'inactivo', 1),
(468, 'NUEVO', 'GREDES', 155, 155, 'inactivo', 1),
(469, 'NUEVO', 'GREDES', 156, 156, 'inactivo', 3),
(470, 'NUEVO', 'GREDES', 157, 157, 'inactivo', 3),
(471, 'NUEVO', 'GREDES', 158, 158, 'inactivo', 3),
(472, 'NUEVO', 'GREDES', 159, 159, 'inactivo', 1),
(473, 'NUEVO', 'GREDES', 160, 160, 'inactivo', 1),
(474, 'NUEVO', 'GREDES', 161, 161, 'inactivo', 3),
(475, 'NUEVO', 'GREDES', 162, 162, 'inactivo', 3),
(476, 'NUEVO', 'GREDES', 163, 163, 'inactivo', 3),
(477, 'NUEVO', 'GREDES', 164, 164, 'inactivo', 3),
(478, 'NUEVO', 'GREDES', 165, 165, 'inactivo', 3),
(479, 'NUEVO', 'GREDES', 166, 166, 'inactivo', 3),
(480, 'NUEVO', 'GREDES', 167, 167, 'inactivo', 3),
(481, 'NUEVO', 'GREDES', 168, 168, 'inactivo', 3),
(482, 'NUEVO', 'GREDES', 169, 169, 'inactivo', 3),
(483, 'NUEVO', 'GREDES', 170, 170, 'inactivo', 3),
(484, 'NUEVO', 'GREDES', 171, 171, 'inactivo', 3),
(485, 'NUEVO', 'GREDES', 172, 172, 'inactivo', 3),
(486, 'NUEVO', 'GREDES', 173, 173, 'inactivo', 3),
(487, 'NUEVO', 'GREDES', 174, 174, 'inactivo', 3),
(488, 'PCM-10', 'SIFON 1CM- Av. Mitre s/ Carlos Pellegrini, Avellaneda', 175, 175, 'activo', 3),
(489, 'NUEVO', 'GREDES', 176, 176, 'inactivo', 3),
(490, 'NUEVO', 'GREDES', 177, 177, 'inactivo', 1),
(491, 'NUEVO', 'GREDES', 178, 178, 'inactivo', 3),
(492, 'NUEVO', 'GREDES', 179, 179, 'inactivo', 1),
(493, 'USAR 4', 'Santa Elena', 180, 180, 'activo', 4),
(494, 'NUEVO', 'GREDES', 181, 181, 'inactivo', 3),
(495, 'NUEVO', 'GREDES', 182, 182, 'inactivo', 3),
(496, 'NUEVO', 'GREDES', 183, 183, 'inactivo', 2),
(497, 'NUEVO', 'GREDES', 184, 184, 'inactivo', 1),
(498, 'NUEVO', 'GREDES', 185, 185, 'inactivo', 3),
(499, 'NUEVO', 'GREDES', 186, 186, 'inactivo', 2),
(500, 'NUEVO', 'GREDES', 187, 187, 'inactivo', 1),
(501, 'NUEVO', 'GREDES', 188, 188, 'inactivo', 1),
(502, 'NUEVO', 'GREDES', 189, 189, 'inactivo', 1),
(503, 'NUEVO', 'GREDES', 190, 190, 'inactivo', 2),
(504, 'NUEVO', 'GREDES', 191, 191, 'inactivo', 1);

--
-- Disparadores `pmr`
--
DELIMITER $$
CREATE TRIGGER `verificar_pmr` BEFORE INSERT ON `pmr` FOR EACH ROW BEGIN
  DECLARE pmr_repetidos INT;
  DECLARE ident_sim_repetidos INT;
  DECLARE ident_dispositivo_repetidos INT;

SELECT COUNT(*) INTO pmr_repetidos FROM pmr WHERE pmr = NEW.pmr;
SELECT COUNT(*) INTO ident_sim_repetidos FROM pmr WHERE ident_sim = NEW.ident_sim;
SELECT COUNT(*) INTO ident_dispositivo_repetidos FROM pmr WHERE ident_dispositivo = NEW.ident_dispositivo;

IF pmr_repetidos > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El PMR ya existe';
  END IF;
IF ident_sim_repetidos > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El SIM esta en uso';
  END IF;
IF ident_dispositivo_repetidos > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El dispositivo esta en uso';
  END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura para la vista `pmr_activos`
--
DROP TABLE IF EXISTS `pmr_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pmr_activos`  AS SELECT `pmr`.`pmr` AS `pmr`, `pmr`.`direccion` AS `direccion`, `operadora`.`operadora` AS `operadora`, `dispositivo`.`numero_serie` AS `numero_serie`, `sim`.`sim` AS `sim` FROM (((`pmr` join `operadora` on(`pmr`.`ident_operadora` = `operadora`.`id_operadora`)) join `dispositivo` on(`pmr`.`ident_dispositivo` = `dispositivo`.`id_dispositivo`)) join `sim` on(`pmr`.`ident_sim` = `sim`.`id_sim`)) WHERE `pmr`.`estado` = 'activo' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `pmr_inactivos`
--
DROP TABLE IF EXISTS `pmr_inactivos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pmr_inactivos`  AS SELECT `pmr`.`pmr` AS `pmr`, `dispositivo`.`modelo` AS `modelo`, `dispositivo`.`numero_serie` AS `numero_serie`, `sim`.`sim` AS `sim`, `operadora`.`operadora` AS `operadora` FROM (((`pmr` join `dispositivo` on(`pmr`.`ident_dispositivo` = `dispositivo`.`id_dispositivo`)) join `sim` on(`pmr`.`ident_sim` = `sim`.`id_sim`)) join `operadora` on(`pmr`.`ident_operadora` = `operadora`.`id_operadora`)) WHERE `pmr`.`estado` = 'inactivo' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD PRIMARY KEY (`id_dispositivo`);

--
-- Indices de la tabla `operadora`
--
ALTER TABLE `operadora`
  ADD PRIMARY KEY (`id_operadora`);

--
-- Indices de la tabla `pmr`
--
ALTER TABLE `pmr`
  ADD PRIMARY KEY (`id_pmr`),
  ADD KEY `ident_dispositivo` (`ident_dispositivo`),
  ADD KEY `fk_pmr_operadora` (`ident_operadora`),
  ADD KEY `pmr_ibfk_1` (`ident_sim`);

--
-- Indices de la tabla `sim`
--
ALTER TABLE `sim`
  ADD PRIMARY KEY (`id_sim`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  MODIFY `id_dispositivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT de la tabla `pmr`
--
ALTER TABLE `pmr`
  MODIFY `id_pmr` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT de la tabla `sim`
--
ALTER TABLE `sim`
  MODIFY `id_sim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pmr`
--
ALTER TABLE `pmr`
  ADD CONSTRAINT `fk_pmr_dispositivo` FOREIGN KEY (`ident_dispositivo`) REFERENCES `dispositivo` (`id_dispositivo`),
  ADD CONSTRAINT `fk_pmr_operadora` FOREIGN KEY (`ident_operadora`) REFERENCES `operadora` (`id_operadora`),
  ADD CONSTRAINT `pmr_ibfk_1` FOREIGN KEY (`ident_sim`) REFERENCES `sim` (`id_sim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
