-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 30. 21:03
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `algorithm`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `algorithms`
--

CREATE TABLE `algorithms` (
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `level` varchar(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `solution_id` int(11) NOT NULL,
  `python_id` int(11) NOT NULL,
  `java_id` int(11) NOT NULL,
  `c_sharp_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `algorithms`
--

INSERT INTO `algorithms` (`name`, `description`, `level`, `url`, `solution_id`, `python_id`, `java_id`, `c_sharp_id`, `id`) VALUES
('Kiválogatás', 'ez legjobb', 'Jr.', 'kivalogatas', 1, 3, 3, 3, 7),
('Lineáris keresés', 'ez aztán végképp', 'Sr.', 'linearis-kereses', 4, 2, 2, 2, 6),
('Maximum Kiválasztás', 'Ez jó', 'Jr.', 'maximum-kivalasztas', 0, 0, 0, 0, 4),
('Megszámlálás', 'ennél jobb nincs', 'Ir.', 'megszamlalas', 2, 4, 4, 4, 8),
('Minimum Érték kiválasztás', 'ez is jó', 'Ir.', 'maximum-ertek-kivalasztas', 3, 1, 1, 1, 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `algorithms`
--
ALTER TABLE `algorithms`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `solutions` (`solution_id`),
  ADD KEY `languages_py` (`python_id`),
  ADD KEY `languages_java` (`java_id`),
  ADD KEY `languages_c_sharp` (`c_sharp_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `algorithms`
--
ALTER TABLE `algorithms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `algorithms`
--
ALTER TABLE `algorithms`
  ADD CONSTRAINT `languages_c_sharp` FOREIGN KEY (`c_sharp_id`) REFERENCES `language_c_sharp` (`id`),
  ADD CONSTRAINT `languages_java` FOREIGN KEY (`java_id`) REFERENCES `language_java` (`id`),
  ADD CONSTRAINT `languages_py` FOREIGN KEY (`python_id`) REFERENCES `language_python` (`id`),
  ADD CONSTRAINT `solutions` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
