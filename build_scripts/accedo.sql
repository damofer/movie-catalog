-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2017 a las 04:10:02
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `accedo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(12) NOT NULL,
  `MOVIE_ID` varchar(250) COLLATE utf8_bin NOT NULL,
  `MOVIE_NAME` varchar(2000) COLLATE utf8_bin NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`ID`, `USER_ID`, `MOVIE_ID`, `MOVIE_NAME`, `TIMESTAMP`) VALUES
(1, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:35:50'),
(2, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 02:37:03'),
(3, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 02:37:32'),
(4, 1, '2-guns', '2 Guns', '2017-08-28 02:37:38'),
(5, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 02:37:55'),
(6, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:41:06'),
(7, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:41:27'),
(8, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:44:18'),
(9, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:44:45'),
(10, 1, '2-guns', '2 Guns', '2017-08-28 02:44:50'),
(11, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:45:41'),
(12, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:45:56'),
(13, 1, '2-guns', '2 Guns', '2017-08-28 02:46:05'),
(14, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:47:09'),
(15, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:47:11'),
(16, 1, '2-guns', '2 Guns', '2017-08-28 02:47:13'),
(17, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 02:47:15'),
(18, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:48:11'),
(19, 1, '2-guns', '2 Guns', '2017-08-28 02:48:13'),
(20, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:48:51'),
(21, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:49:54'),
(22, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:49:58'),
(23, 1, '2-guns', '2 Guns', '2017-08-28 02:50:00'),
(24, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:50:24'),
(25, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:50:26'),
(26, 1, '2-guns', '2 Guns', '2017-08-28 02:50:28'),
(27, 1, '21-jump-street', '21 Jump Street', '2017-08-28 02:50:32'),
(28, 1, '28-days-later', '28 Days Later...', '2017-08-28 02:50:33'),
(29, 1, '300', '300', '2017-08-28 02:50:35'),
(30, 1, '47-ronin', '47 Ronin', '2017-08-28 02:50:37'),
(31, 1, 'alexander-and-the-terrible-horrible-no-good-very-bad-day', 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', '2017-08-28 02:50:39'),
(32, 1, 'alien', 'Alien', '2017-08-28 02:50:42'),
(33, 1, 'alien-3', 'Alien 3', '2017-08-28 02:50:56'),
(34, 1, 'alien-resurrection', 'Alien: Resurrection', '2017-08-28 02:50:57'),
(35, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 02:50:59'),
(36, 1, 'about-time', 'About Time', '2017-08-28 02:51:00'),
(37, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 02:51:02'),
(38, 1, '47-ronin', '47 Ronin', '2017-08-28 02:51:03'),
(39, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 02:51:04'),
(40, 1, 'a-girl-walks-home-alone-at-night', 'A Girl Walks Home Alone at Night', '2017-08-28 02:51:05'),
(41, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 02:51:06'),
(42, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 02:51:07'),
(43, 1, 'about-time', 'About Time', '2017-08-28 02:51:08'),
(44, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 02:51:14'),
(45, 1, 'addicted', 'Addicted', '2017-08-28 02:51:20'),
(46, 1, 'alexander', 'Alexander', '2017-08-28 02:51:21'),
(47, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:53:14'),
(48, 1, '2-guns', '2 Guns', '2017-08-28 02:53:16'),
(49, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:53:49'),
(50, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 02:55:19'),
(51, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 02:55:19'),
(52, 1, '2-guns', '2 Guns', '2017-08-28 02:55:43'),
(53, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 02:57:12'),
(54, 1, '2-guns', '2 Guns', '2017-08-28 02:57:18'),
(55, 1, '21-jump-street', '21 Jump Street', '2017-08-28 02:57:19'),
(56, 1, '28-days-later', '28 Days Later...', '2017-08-28 02:57:20'),
(57, 1, '300', '300', '2017-08-28 02:57:22'),
(58, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 02:58:27'),
(59, 1, '47-ronin', '47 Ronin', '2017-08-28 02:58:28'),
(60, 1, 'a-girl-walks-home-alone-at-night', 'A Girl Walks Home Alone at Night', '2017-08-28 02:59:25'),
(61, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:00:17'),
(62, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:00:54'),
(63, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:01:14'),
(64, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:02:05'),
(65, 1, '2-guns', '2 Guns', '2017-08-28 03:02:06'),
(66, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:02:08'),
(67, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:02:09'),
(68, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:02:11'),
(69, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:02:12'),
(70, 1, '300', '300', '2017-08-28 03:02:14'),
(71, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:02:15'),
(72, 1, '47-ronin', '47 Ronin', '2017-08-28 03:02:17'),
(73, 1, 'a-girl-walks-home-alone-at-night', 'A Girl Walks Home Alone at Night', '2017-08-28 03:02:18'),
(74, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 03:02:19'),
(75, 1, 'a-nightmare-on-elm-street-2010', 'A Nightmare on Elm Street', '2017-08-28 03:02:22'),
(76, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:03:57'),
(77, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:03:59'),
(78, 1, '2-guns', '2 Guns', '2017-08-28 03:04:00'),
(79, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:04:01'),
(80, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:04:24'),
(81, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:05:35'),
(82, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:06:36'),
(83, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:08:01'),
(84, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:08:04'),
(85, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:08:06'),
(86, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:08:09'),
(87, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:08:12'),
(88, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:08:15'),
(89, 1, '300', '300', '2017-08-28 03:09:18'),
(90, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:09:21'),
(91, 1, '47-ronin', '47 Ronin', '2017-08-28 03:09:26'),
(92, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:09:28'),
(93, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:12:03'),
(94, 1, '2-guns', '2 Guns', '2017-08-28 03:12:38'),
(95, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:12:41'),
(96, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:18:42'),
(97, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:19:12'),
(98, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:21:42'),
(99, 1, '2-guns', '2 Guns', '2017-08-28 03:22:44'),
(100, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:22:49'),
(101, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:22:51'),
(102, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:22:54'),
(103, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:22:55'),
(104, 1, '2-guns', '2 Guns', '2017-08-28 03:22:58'),
(105, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:23:00'),
(106, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:23:02'),
(107, 1, '2-guns', '2 Guns', '2017-08-28 03:23:07'),
(108, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:23:08'),
(109, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:23:10'),
(110, 1, '28-days-later', '28 Days Later...', '2017-08-28 03:23:12'),
(111, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:23:13'),
(112, 1, '28-days-later', '28 Days Later...', '2017-08-28 03:23:14'),
(113, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:23:20'),
(114, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:23:22'),
(115, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:23:23'),
(116, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:23:59'),
(117, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 03:24:00'),
(118, 1, 'about-time', 'About Time', '2017-08-28 03:24:02'),
(119, 1, 'alexander-and-the-terrible-horrible-no-good-very-bad-day', 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', '2017-08-28 03:24:03'),
(120, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:24:31'),
(121, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:24:33'),
(122, 1, '2-guns', '2 Guns', '2017-08-28 03:24:34'),
(123, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:24:36'),
(124, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:24:38'),
(125, 1, '300', '300', '2017-08-28 03:24:40'),
(126, 1, '47-ronin', '47 Ronin', '2017-08-28 03:24:42'),
(127, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:26:38'),
(128, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:26:40'),
(129, 1, '2-guns', '2 Guns', '2017-08-28 03:26:42'),
(130, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:26:43'),
(131, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:27:07'),
(132, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:27:09'),
(133, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:27:31'),
(134, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:27:33'),
(135, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:27:34'),
(136, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:27:36'),
(137, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:27:38'),
(138, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:27:39'),
(139, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:27:41'),
(140, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:27:44'),
(141, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:27:47'),
(142, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:27:50'),
(143, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:27:52'),
(144, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:27:55'),
(145, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:27:56'),
(146, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 03:28:00'),
(147, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 03:28:01'),
(148, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 03:28:03'),
(149, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:28:05'),
(150, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:28:07'),
(151, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:28:13'),
(152, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 03:28:15'),
(153, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:28:39'),
(154, 1, '2-guns', '2 Guns', '2017-08-28 03:28:45'),
(155, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:28:46'),
(156, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:28:50'),
(157, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:28:53'),
(158, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:28:55'),
(159, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:28:58'),
(160, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:29:00'),
(161, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 03:29:08'),
(162, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 03:29:12'),
(163, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 03:29:14'),
(164, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:29:16'),
(165, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 03:29:18'),
(166, 1, 'alexander', 'Alexander', '2017-08-28 03:29:20'),
(167, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:29:23'),
(168, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:29:25'),
(169, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 03:29:28'),
(170, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 03:29:32'),
(171, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:29:34'),
(172, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:30:58'),
(173, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:31:01'),
(174, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 03:31:04'),
(175, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 03:31:07'),
(176, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 03:31:09'),
(177, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:31:11'),
(178, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 03:31:16'),
(179, 1, 'addicted', 'Addicted', '2017-08-28 03:31:17'),
(180, 1, 'alexander-and-the-terrible-horrible-no-good-very-bad-day', 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', '2017-08-28 03:31:18'),
(181, 1, 'alexander', 'Alexander', '2017-08-28 03:31:20'),
(182, 1, 'addicted', 'Addicted', '2017-08-28 03:31:21'),
(183, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 03:31:22'),
(184, 1, 'alexander-and-the-terrible-horrible-no-good-very-bad-day', 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', '2017-08-28 03:31:24'),
(185, 1, 'alien-3', 'Alien 3', '2017-08-28 03:31:25'),
(186, 1, 'alien-resurrection', 'Alien: Resurrection', '2017-08-28 03:31:29'),
(187, 1, 'alien-3', 'Alien 3', '2017-08-28 03:31:30'),
(188, 1, 'alien', 'Alien', '2017-08-28 03:31:31'),
(189, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:31:34'),
(190, 1, 'alien-3', 'Alien 3', '2017-08-28 03:31:36'),
(191, 1, 'alien-resurrection', 'Alien: Resurrection', '2017-08-28 03:31:37'),
(192, 1, 'american-beauty', 'American Beauty', '2017-08-28 03:31:39'),
(193, 1, 'american-history-x', 'American History X', '2017-08-28 03:31:41'),
(194, 1, 'american-beauty', 'American Beauty', '2017-08-28 03:31:43'),
(195, 1, 'aliens', 'Aliens', '2017-08-28 03:31:45'),
(196, 1, 'alien-resurrection', 'Alien: Resurrection', '2017-08-28 03:31:46'),
(197, 1, 'alien-3', 'Alien 3', '2017-08-28 03:31:47'),
(198, 1, 'alien', 'Alien', '2017-08-28 03:31:49'),
(199, 1, 'american-beauty', 'American Beauty', '2017-08-28 03:32:03'),
(200, 1, 'alien', 'Alien', '2017-08-28 03:32:05'),
(201, 1, 'alien-3', 'Alien 3', '2017-08-28 03:32:08'),
(202, 1, 'alien', 'Alien', '2017-08-28 03:32:10'),
(203, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:32:13'),
(204, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:32:15'),
(205, 1, '28-days-later', '28 Days Later...', '2017-08-28 03:32:17'),
(206, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:32:19'),
(207, 1, '300', '300', '2017-08-28 03:32:22'),
(208, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:32:24'),
(209, 1, '2-guns', '2 Guns', '2017-08-28 03:39:27'),
(210, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:41:56'),
(211, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:44:14'),
(212, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:45:19'),
(213, 2, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:46:14'),
(214, 2, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:46:25'),
(215, 2, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:46:28'),
(216, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:47:49'),
(217, 1, '2-guns', '2 Guns', '2017-08-28 03:51:02'),
(218, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:52:16'),
(219, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:52:58'),
(220, 1, '2-guns', '2 Guns', '2017-08-28 03:53:01'),
(221, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:53:02'),
(222, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:53:04'),
(223, 1, '28-days-later', '28 Days Later...', '2017-08-28 03:53:08'),
(224, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:53:11'),
(225, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:53:13'),
(226, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:53:56'),
(227, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:54:34'),
(228, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:55:36'),
(229, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:55:38'),
(230, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:55:41'),
(231, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:55:45'),
(232, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:56:45'),
(233, 1, '2-guns', '2 Guns', '2017-08-28 03:56:47'),
(234, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:56:49'),
(235, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:56:51'),
(236, 1, '47-ronin', '47 Ronin', '2017-08-28 03:56:52'),
(237, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:56:54'),
(238, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:56:56'),
(239, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:56:58'),
(240, 1, '47-ronin', '47 Ronin', '2017-08-28 03:57:00'),
(241, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:57:19'),
(242, 1, '47-ronin', '47 Ronin', '2017-08-28 03:57:21'),
(243, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:57:23'),
(244, 1, '10-things-i-hate-about-you', '10 Things I Hate About You', '2017-08-28 03:57:25'),
(245, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:57:26'),
(246, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 03:57:28'),
(247, 1, '2-guns', '2 Guns', '2017-08-28 03:58:40'),
(248, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 03:58:45'),
(249, 1, '22-jump-street', '22 Jump Street', '2017-08-28 03:58:46'),
(250, 1, '21-jump-street', '21 Jump Street', '2017-08-28 03:58:51'),
(251, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 03:58:53'),
(252, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 03:58:54'),
(253, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 03:58:56'),
(254, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 03:58:57'),
(255, 1, '2-guns', '2 Guns', '2017-08-28 04:02:13'),
(256, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 04:02:15'),
(257, 1, '21-jump-street', '21 Jump Street', '2017-08-28 04:02:17'),
(258, 1, '22-jump-street', '22 Jump Street', '2017-08-28 04:02:18'),
(259, 1, '28-days-later', '28 Days Later...', '2017-08-28 04:02:20'),
(260, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 04:03:57'),
(261, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 04:03:59'),
(262, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 04:04:02'),
(263, 1, '28-days-later', '28 Days Later...', '2017-08-28 04:04:04'),
(264, 1, '22-jump-street', '22 Jump Street', '2017-08-28 04:04:06'),
(265, 1, '21-jump-street', '21 Jump Street', '2017-08-28 04:04:07'),
(266, 1, '2-guns', '2 Guns', '2017-08-28 04:04:09'),
(267, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 04:04:11'),
(268, 1, 'a-walk-among-the-tombstones', 'A Walk Among the Tombstones', '2017-08-28 04:04:13'),
(269, 1, 'about-time', 'About Time', '2017-08-28 04:04:14'),
(270, 1, 'abraham-lincoln-vampire-hunter', 'Abraham Lincoln: Vampire Hunter', '2017-08-28 04:04:15'),
(271, 1, 'alexander-and-the-terrible-horrible-no-good-very-bad-day', 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', '2017-08-28 04:04:17'),
(272, 1, 'alien-resurrection', 'Alien: Resurrection', '2017-08-28 04:04:21'),
(273, 1, 'aliens', 'Aliens', '2017-08-28 04:04:22'),
(274, 1, 'american-beauty', 'American Beauty', '2017-08-28 04:04:24'),
(275, 1, 'alien', 'Alien', '2017-08-28 04:04:25'),
(276, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 04:04:27'),
(277, 1, 'a-girl-walks-home-alone-at-night', 'A Girl Walks Home Alone at Night', '2017-08-28 04:04:31'),
(278, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 04:04:32'),
(279, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 04:04:33'),
(280, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 04:04:35'),
(281, 1, '28-days-later', '28 Days Later...', '2017-08-28 04:04:36'),
(282, 1, '300', '300', '2017-08-28 04:04:38'),
(283, 1, '47-ronin', '47 Ronin', '2017-08-28 04:04:39'),
(284, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 04:04:40'),
(285, 1, 'a-girl-walks-home-alone-at-night', 'A Girl Walks Home Alone at Night', '2017-08-28 04:04:42'),
(286, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 04:04:43'),
(287, 1, '300-rise-of-an-empire', '300: Rise of an Empire', '2017-08-28 04:04:44'),
(288, 1, '3-days-to-kill', '3 Days to Kill', '2017-08-28 04:04:45'),
(289, 1, '22-jump-street', '22 Jump Street', '2017-08-28 04:04:47'),
(290, 1, '2001-a-space-odyssey', '2001: A Space Odyssey', '2017-08-28 04:04:57'),
(291, 1, '22-jump-street', '22 Jump Street', '2017-08-28 04:05:12'),
(292, 1, '300', '300', '2017-08-28 04:05:13'),
(293, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 04:05:14'),
(294, 1, 'a-nightmare-on-elm-street-2010', 'A Nightmare on Elm Street', '2017-08-28 04:05:16'),
(295, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 04:05:17'),
(296, 1, 'a-girl-walks-home-alone-at-night', 'A Girl Walks Home Alone at Night', '2017-08-28 04:05:19'),
(297, 1, 'a-nightmare-on-elm-street', 'A Nightmare on Elm Street', '2017-08-28 04:05:21'),
(298, 1, 'a-million-ways-to-die-in-the-west', 'A Million Ways to Die in the West', '2017-08-28 04:05:26'),
(299, 1, 'a-clockwork-orange', 'A Clockwork Orange', '2017-08-28 04:05:27'),
(300, 1, '12-years-a-slave', '12 Years a Slave', '2017-08-28 04:08:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `EMAIL` varchar(200) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `USERNAME`, `EMAIL`, `PASSWORD`) VALUES
(1, 'damofer', 'damofer2004@hotmail.com', '$2a$10$EPi2GmD6Npf0mFKH.WTFPe/WqF/brOJFTUIbgRX9FAG8M7CGNRxcG'),
(2, 'david', 'damofer2004@gmail.com', '$2a$10$EPi2GmD6Npf0mFKH.WTFPe/WqF/brOJFTUIbgRX9FAG8M7CGNRxcG');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
