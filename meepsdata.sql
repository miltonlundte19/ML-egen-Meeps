-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Värd: localhost:3306
-- Tid vid skapande: 13 apr 2022 kl 12:29
-- Serverversion: 8.0.28-0ubuntu0.20.04.3
-- PHP-version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `te19`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `meepsdata`
--

CREATE TABLE `meepsdata` (
  `id` int UNSIGNED NOT NULL,
  `user` smallint NOT NULL DEFAULT '1',
  `body` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `privet` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumpning av Data i tabell `meepsdata`
--

INSERT INTO `meepsdata` (`id`, `user`, `body`, `created_at`, `privet`) VALUES
(1, 1, 'första posten på databasen', '2022-03-30 10:39:38', 0),
(2, 1, 'andra posten på databasen', '2022-03-30 10:39:56', 0),
(3, 1, 'första privata posten', '2022-03-30 11:08:37', 1),
(4, 1, 'testar skriva med fetch till serv', '2022-04-04 09:11:08', 0),
(5, 1, 'testar för att se responsen', '2022-04-11 07:58:24', 0),
(6, 1, 'test för att få id', '2022-04-11 07:59:43', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `meepsdata`
--
ALTER TABLE `meepsdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `meepsdata`
--
ALTER TABLE `meepsdata`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
