-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2018 at 01:34 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr14_toymurad_almamedov_bigevents`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `start_date`, `end_date`, `description`, `image`, `capacity`, `email`, `phone_number`, `address`, `url`, `type`) VALUES
(11, 'Kino unter Sternen 2018', '2018-01-21 00:07:00', '2018-01-21 00:07:00', 'Kino unter Sternen(cinema under the stars) at Karlsplatz is also free of charge. It’s program focuses on Austrian films. The movie series “Fremd” (foreign) shows works that deal with borders and exclusion, with continuity and change. The special “Wonderama” offers a selection of film musicals produced by German-speaking filmmakers in Hollywood from the 1930s onwards. Some of the names are Peter Lorre, Anton Walbrock and Otto Preminger.', 'kino_unter_sternen.jpg', 230, 'info@kinountersternen.at', 585232425, 'Karlsplatz  1040 Wien', 'www.kinountersternen.at', 'Movie'),
(12, 'ImPulsTanz 2018', '2018-01-12 00:07:00', '2018-01-12 00:08:00', 'Europe\'s biggest dance festival - ImPulsTanz - turns Vienna into a dance hotstpot from 12 July: with international highlights, innovations from the young scene and notable new productions on numerous Viennese stages', 'impulstanz_logojpg.jpg', 200, 'info@impulstanz.com', 2147483647, 'Burgtheater, 1., Universitätsring 2', 'www.ImPulsTanz.com', 'Sport'),
(13, 'Music Film Festival', '2018-01-30 00:06:00', '2018-01-02 00:09:00', 'The Music Film Festival at City Hall Square is one of the most enticing offers in Vienna during the summer. It thrills 900,000 visitors annually, making it the biggest culture and food festival in Europe. 5,200 seats are available.\r\n\r\nSomething to suit every taste is also offered by the 25 or so international leading gastronomers on site as well as by the music film program, which covers every genre and is shown on the 300 m² open-air screen.', 'music_festival.jpeg', 300, 'filmfestival@wien-event.at', 2147483647, 'Rathausplatz, 1010 Wien', 'https://filmfestival-rathausplatz.at', 'Music'),
(14, 'Summer Night Concert Schönbrunn 2019', '2019-01-20 00:06:00', '2019-01-20 00:01:00', 'With this free open air concert on the grounds of Schönbrunn Palace, which will be broadcast world-wide in fifty countries, the Vienna Philharmonic wishes to provide all Viennese, as well as visitors to the city, with a special musical experience. The impressive setting of Schönbrunn Palace and its beautiful baroque gardens, a UNESCO world cultural heritage site, form a unique backdrop for this musical gift.', 'Sommernachtskonzert.jpg', 2000, 'info@schoenbrunn.at', 431811130, 'Schönbrunner Schloßstraße 47, 1130 Wien', 'www.schoenbrunn.at', 'Music'),
(15, '36th Vienna City Marathon 2019', '2019-01-06 00:04:00', '2019-01-07 00:04:00', 'Der Vienna City Marathon (VCM) feiert am 6. und 7. April 2019 seine 36. Auflage. Das Event wird seit 1984 jährlich durchgeführt und mobilisiert als Österreichs größte Sportveranstaltung rund 40.000 Läuferinnen und Läufer. Teilnehmer aus ganz Österreich und rund 125 Nationen sind die Hauptdarsteller in einem sportlichen und mitreißenden „Theater der Emotionen“. Weltstars des Laufsports wie Haile Gebrselassie und Paula Radcliffe haben mit ihren Auftritten die Fans und Fernsehzuschauer begeistert. Eine Million Menschen verfolgt das Geschehen direkt an der Strecke, in der TV-Liveübertragung und über digitale Medien.', '02296_1.jpg', 5000, 'office@vienna-marathon.com', 2147483647, 'Akaziengasse 36, A-1230 Wien', 'https://www.vienna-marathon.com/', 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180720135132'),
('20180720143052'),
('20180720152457'),
('20180720160303'),
('20180720162334');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `roles`) VALUES
(1, 'test', 'test@test.com', '$2y$13$FxqQRe7hFoCqLG9/XwtK4.IhGfBTujg7y2s.EOdiZcC7b9FBJMlRe', 's:9:\"ROLE_USER\";'),
(2, 'admin', 'admin@admin.com', '$2y$13$8bzZnRc0FBgaqZzX1z86t.c.eORmj8QajiWKnvNRTG6fWE0rDjsZa', 's:10:\"ROLE_ADMIN\";');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
