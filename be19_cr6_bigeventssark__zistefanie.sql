-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Aug 2023 um 19:59
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be19_cr6_bigeventssarközistefanie`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_bigeventssarközistefanie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be19_cr6_bigeventssarközistefanie`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_ntime` datetime NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `phone_number` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `date_ntime`, `description`, `image`, `capacity`, `email`, `phone_number`, `address`, `url`, `type`) VALUES
(1, 'Candle Light Movie', '2023-08-22 20:00:00', 'Enjoy a blockbuster movie at our open air location with candle light.', 'https://cdn.pixabay.com/photo/2012/11/05/16/21/candles-64177_1280.jpg', 190, 'open.air-movies@gmail.com', '+43 660 5429843', 'Skyline Rooftop, Examplestreet 23, 1200 Vienna', 'www.open.air-movies/candle-light.com', 'Movie'),
(2, 'Theater im Park', '2023-08-16 20:00:00', 'Luftig, lustig, schön & sicher ein Garten voller Geschichten, Melodien & Träume - buchen Sie Ihr Highlight', 'https://img.freepik.com/free-photo/beautiful-young-women-having-fun-together_329181-15592.jpg?w=1060&t=st=1691849636~exp=1691850236~hmac=0d39c899c820430d195a845b61de151e4fe68f088cba267a06ae8269ee9d77a8', 300, 'ticket@theaterimpark.at', '+43 (1) 588 93 40', 'Schwarzenberggarten am Belvedere', 'https://theaterimpark.at/', 'Theater'),
(4, 'Afrika Tage', '2023-08-11 12:00:00', 'Die Afrika Tage sind eine lebendige Feier der afrikanischen Kultur in aller Einzigartigkeit und Vitalität. Mitten in Wien auf der Donauinsel umgeben vom blauen Wasser. Afrika ist mehr als nur ein Ort in den Herzen, Köpfen und Seelen der Menschen. Die Veranstaltung konzentriert sich darauf, diese kulturelle Erfahrung durch Musik, Unterhaltung, Mode, Kunst und viele andere Ausdrucksformen der Kultur zum Leben zu erwecken.', 'https://img.freepik.com/free-photo/group-fans-gathered-thge-stadium-cheering-up_1303-18617.jpg?w=1060&t=st=1691862843~exp=1691863443~hmac=2dc76a2d336d6b137ea853e6a15c0a29ded59f583ea534c508de2cf534ae60d4', 3000, 'beispiel@gmail.com', '+43 548 5615', 'Donauinsel Wien', 'https://events.at/event/19-afrika-tage-wien-dauerkarte', 'Music'),
(5, 'AnnanMayKantereit', '2023-08-31 19:30:00', 'Hi! Wir sind AnnenMayKantereit! Christopher, Severin und Henning… Und….. Wir spielen wieder große Konzerte!!!  Wir freuen uns, hammermäßig unsere Live-Daten für 2023 bekannt zu geben.', 'https://img.freepik.com/free-photo/best-show-stage_329181-8360.jpg?w=1060&t=st=1691863005~exp=1691863605~hmac=002916827615b5d6deea433398013be2059864cfdbc0c720ef3327d9998c0c8a', 999, 'beispiel2@gmail.com', '+43 7858 2193', 'Wiener Stadthalle - Halle D', 'https://events.at/event/annenmaykantereit-0', 'Music');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
