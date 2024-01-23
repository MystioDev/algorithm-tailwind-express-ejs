-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 23. 21:04
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
  `solution_id` int(11) NOT NULL,
  `python_id` int(11) NOT NULL,
  `java_id` int(11) NOT NULL,
  `c_sharp_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `algorithms`
--

INSERT INTO `algorithms` (`name`, `description`, `level`, `solution_id`, `python_id`, `java_id`, `c_sharp_id`, `id`) VALUES
('Kiválogatás', 'ez legjobb', 'jr', 1, 3, 3, 3, 7),
('Lineáris keresés', 'ez aztán végképp', 'sr', 4, 2, 2, 2, 6),
('Maximum Kiválasztás', 'Ez jó', 'jr', 0, 0, 0, 0, 4),
('Megszámlálás', 'ennél jobb nincs', 'jr', 2, 4, 4, 4, 8),
('Minimum Érték kiválasztás', 'ez is jó', 'ir', 3, 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `language_c_sharp`
--

CREATE TABLE `language_c_sharp` (
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `code` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `language_c_sharp`
--

INSERT INTO `language_c_sharp` (`name`, `id`, `code`) VALUES
('Maximum Érték kiválasztás', 0, 'blabla c# code Max'),
('Minimum Érték kiválasztás', 1, 'blabla c# code Min'),
('Lineáris keresés', 2, 'blabla c# code Linear'),
('Kiválogatás', 3, 'blabla c# code Kiv'),
('Megszámlálás', 4, 'blabla c# code Megsz');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `language_java`
--

CREATE TABLE `language_java` (
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `code` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `language_java`
--

INSERT INTO `language_java` (`name`, `id`, `code`) VALUES
('Maximum Érték kiválasztás', 0, 'blabla java code Max'),
('Minimum Érték kiválasztás', 1, 'blabla java code Min'),
('Lineáris keresés', 2, 'blabla java code Linear'),
('Kiválogatás', 3, 'blabla java code Kiv'),
('Megszámlálás', 4, 'blabla java code Megsz');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `language_python`
--

CREATE TABLE `language_python` (
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `code` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `language_python`
--

INSERT INTO `language_python` (`name`, `id`, `code`) VALUES
('Maximum Érték kiválasztás', 0, 'blabla python code Max'),
('Minimum Érték kiválasztás', 1, 'blabla python code Min'),
('Lineáris keresés', 2, 'blabla python code Linear'),
('Kiválogatás', 3, 'blabla python code Kiv'),
('Megszámlálás', 4, 'blabla python code Megsz');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `visual` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `solutions`
--

INSERT INTO `solutions` (`id`, `visual`) VALUES
(0, '/images/icon_1024_1024_transparent.png'),
(1, '/images/icon_1024_1024_transparent.png'),
(2, '/images/icon_1024_1024_transparent.png'),
(3, '/images/icon_1024_1024_transparent.png'),
(4, '/images/icon_1024_1024_transparent.png');

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
-- A tábla indexei `language_c_sharp`
--
ALTER TABLE `language_c_sharp`
  ADD UNIQUE KEY `id` (`id`);

--
-- A tábla indexei `language_java`
--
ALTER TABLE `language_java`
  ADD UNIQUE KEY `id` (`id`);

--
-- A tábla indexei `language_python`
--
ALTER TABLE `language_python`
  ADD UNIQUE KEY `id` (`id`);

--
-- A tábla indexei `solutions`
--
ALTER TABLE `solutions`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

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
