-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 31. 20:50
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
('Beillesztéses rendezés', 'Beillesztéses rendezés leírása', 'Sr.', 'beilleszteses-rendezes', 12, 12, 12, 12, 18),
('Buborékos rendezés', 'Buborékos rendezés leírása', 'Sr.', 'buborekos-rendezes', 10, 10, 10, 10, 16),
('Egyszerű Cserés Rendezés', 'Egyszerű Cserés Rendezés leírása', 'Ir.', 'egyszeru-cseres-rendezes', 17, 17, 17, 17, 12),
('Eldöntés', 'Eldöntés leírás blabla', 'Jr.', 'eldontes', 6, 6, 6, 6, 11),
('Halmaz Metszet', 'Halmaz Metszet leírása', 'Ir.', 'halmaz-metszet', 8, 8, 8, 8, 14),
('Halmaz Unió', 'Halmaz Unió leírása', 'Ir.', 'halmaz-unio', 7, 7, 7, 7, 13),
('Javított buborékos rendezés', 'Javított buborékos rendezés leírása', 'Sr.', 'javitott-buborekos-rendezes', 11, 11, 11, 11, 17),
('Kiválogatás', 'ez legjobb', 'Jr.', 'kivalogatas', 1, 3, 3, 3, 7),
('Lineáris keresés', 'ez aztán végképp', 'Jr.', 'linearis-kereses', 4, 2, 2, 2, 6),
('Maximum Kiválasztás', 'Ez jó', 'Jr.', 'maximum-kivalasztas', 0, 0, 0, 0, 4),
('Megszámlálás', 'ennél jobb nincs', 'Jr.', 'megszamlalas', 2, 4, 4, 4, 8),
('Minimum Érték kiválasztás', 'ez is jó', 'Jr.', 'maximum-ertek-kivalasztas', 3, 1, 1, 1, 5),
('Minimumkiválasztásos rendezés', 'Minimumkiválasztásos rendezés leírása', 'Sr.', 'minimumkivalasztasos-rendezes', 9, 9, 9, 9, 15),
('Összegzés', 'Összegzés leírás blabla', 'Jr.', 'osszegzes', 5, 5, 5, 5, 10),
('Shell rendezés', 'Shell rendezés leírása', 'Sr.', 'shell-rendezes', 16, 16, 16, 16, 22),
('Számláló rendezés', 'Számláló rendezés leírása', 'Sr.', 'Szamlalo-rendezes', 15, 15, 15, 15, 21),
('Számlálva szétosztó rendezés', 'Számlálva szétosztó rendezés leírása', 'Sr.', 'szamlalva-szetoszto-rendezes', 14, 14, 14, 14, 20),
('Szétosztó rendezés', 'Szétosztó rendezés leírása', 'Sr.', 'szetoszto-rendezes', 13, 13, 13, 13, 19);

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
('Megszámlálás', 4, 'blabla c# code Megsz'),
('Összegzés', 5, 'c# összegzés code'),
('Eldöntés', 6, 'c# eldöntés code'),
('Halmaz Unió', 7, 'c# halmaz unio code'),
('Halmaz Metszet', 8, 'c# halmaz metszet code'),
('Maximumkiválasztásos Rendezés', 9, 'c# Maximumkiválasztásos rendezés code'),
('Buborék Rendezés', 10, 'c# Buborék rendezés code'),
('Javított Buborék Rendezés', 11, 'c# Javított Buborék Rendezés code'),
('Beillesztéses Rendezés', 12, 'c# Beillesztéses Rendezés code'),
('Szétosztó Rendezés', 13, 'c# Szétosztó Rendezés code'),
('Számlálva Szétosztó Rendezés', 14, 'c# Számlálva Szétosztó Rendezés code'),
('Számláló Rendezés', 15, 'c# Számláló Rendezés code'),
('Shell Rendezés', 16, 'c# Shell Rendezés code'),
('Egyszerű Cserés Rendezés', 17, 'c# Egyszerű Cserés Rendezés code');

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
('Megszámlálás', 4, 'blabla java code Megsz'),
('Összegzés', 5, 'java összegzés code'),
('Eldöntés', 6, 'java eldöntés code'),
('Halmaz Unió', 7, 'java halmaz unio code'),
('Halmaz Metszet', 8, 'java halmaz metszet code'),
('Maximumkiválasztásos Rendezés', 9, 'java Maximumkiválasztásos rendezés code'),
('Buborék Rendezés', 10, 'java Buborék rendezés code'),
('Javított Buborék Rendezés', 11, 'java Javított Buborék Rendezés code'),
('Beillesztéses Rendezés', 12, 'java Beillesztéses Rendezés code'),
('Szétosztó Rendezés', 13, 'java Szétosztó Rendezés code'),
('Számlálva Szétosztó Rendezés', 14, 'java Számlálva Szétosztó Rendezés code'),
('Számláló Rendezés', 15, 'java Számláló Rendezés code'),
('Shell Rendezés', 16, 'java Shell Rendezés code'),
('Egyszerű Cserés Rendezés', 17, 'java Egyszerű Cserés Rendezés code');

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
('Megszámlálás', 4, 'blabla python code Megsz'),
('Összegzés', 5, 'python összegzés code'),
('Eldöntés', 6, 'python eldöntés code'),
('Halmaz Unió', 7, 'python halmaz unio code'),
('Halmaz Metszet', 8, 'python halmaz metszet code'),
('Maximumkiválasztásos Rendezés', 9, 'python Maximumkiválasztásos rendezés code'),
('Buborék Rendezés', 10, 'python Buborék rendezés code'),
('Javított Buborék Rendezés', 11, 'python Javított Buborék Rendezés code'),
('Beillesztéses Rendezés', 12, 'python Beillesztéses Rendezés code'),
('Szétosztó Rendezés', 13, 'python Szétosztó Rendezés code'),
('Számlálva Szétosztó Rendezés', 14, 'python Számlálva Szétosztó Rendezés code'),
('Számláló Rendezés', 15, 'python Számláló Rendezés code'),
('Shell Rendezés', 16, 'python Shell Rendezés code'),
('Egyszerű Cserés Rendezés', 17, 'python Egyszerű Cserés Rendezés code');

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
(4, '/images/icon_1024_1024_transparent.png'),
(5, '/images/icon_1024_1024_transparent.png'),
(6, '/images/icon_1024_1024_transparent.png'),
(7, '/images/icon_1024_1024_transparent.png'),
(8, '/images/icon_1024_1024_transparent.png'),
(9, '/images/icon_1024_1024_transparent.png'),
(10, '/images/icon_1024_1024_transparent.png'),
(11, '/images/icon_1024_1024_transparent.png'),
(12, '/images/icon_1024_1024_transparent.png'),
(13, '/images/icon_1024_1024_transparent.png'),
(14, '/images/icon_1024_1024_transparent.png'),
(15, '/images/icon_1024_1024_transparent.png'),
(16, '/images/icon_1024_1024_transparent.png'),
(17, '/images/icon_1024_1024_transparent.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
