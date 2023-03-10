-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 09. 12:18
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `villanyszereles`
--
CREATE DATABASE IF NOT EXISTS `villanyszereles` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `villanyszereles`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `jelszo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `admin`
--

INSERT INTO `admin` (`id`, `user`, `jelszo`) VALUES
(1, 'VAttila', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megrendelesek`
--

CREATE TABLE `megrendelesek` (
  `id` mediumint(9) NOT NULL,
  `megrend_datum` date NOT NULL,
  `kezdodatum` datetime NOT NULL,
  `ugyfel_nev` varchar(100) NOT NULL,
  `varos_id` smallint(6) NOT NULL,
  `ugyfel_cim` varchar(255) NOT NULL,
  `ugyfel_email` varchar(100) NOT NULL,
  `ugyfel_tel` varchar(12) NOT NULL,
  `munka_jell_id` tinyint(1) NOT NULL,
  `uzenet` mediumtext NOT NULL,
  `statusz_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `megrendelesek`
--

INSERT INTO `megrendelesek` (`id`, `megrend_datum`, `kezdodatum`, `ugyfel_nev`, `varos_id`, `ugyfel_cim`, `ugyfel_email`, `ugyfel_tel`, `munka_jell_id`, `uzenet`, `statusz_id`) VALUES
(5, '2023-02-27', '2023-02-28 14:00:00', 'Teszt Elek 2', 2, 'Verőcei utca', 'tesztelek@gmail.com', '06304206969', 2, 'ASD', 2),
(6, '2023-02-27', '2023-02-28 14:00:00', 'Teszt Elek 2', 1, 'UTca', 'longestemailthaticouldfind@gmail.com', '06304206969', 1, 'ASD', 3),
(8, '2023-02-27', '2023-02-28 14:00:00', 'Dr. Nándorvári \"Brák\" József Gergely', 1, 'UTca', 'tesztelek@gmail.com', '06304206969', 3, '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 5),
(11, '2023-02-27', '2023-02-28 14:00:00', 'Dr. Nándorvári \"Brák\" József Gergely', 1, 'UTca', 'tesztelek@gmail.com', '06304206969', 3, '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 1),
(12, '2023-02-27', '2023-02-28 14:00:00', 'Dr. Nándorvári \"Brák\" József Gergely', 1, 'UTca', 'tesztelek@gmail.com', '06304206969', 3, '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 4),
(13, '2023-02-27', '2023-02-28 14:00:00', 'Dr. Nándorvári \"Brák\" József Gergely', 1, 'UTca', 'tesztelek@gmail.com', '06304206969', 3, '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 5),
(19, '2023-02-20', '2022-10-12 14:22:00', 'Retard János', 3327, 'Kek utca 2', 'retard.janos@gmail.com', '0630696969', 3, '                        ', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `munka_jell`
--

CREATE TABLE `munka_jell` (
  `id` tinyint(1) NOT NULL,
  `megnevezes` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `munka_jell`
--

INSERT INTO `munka_jell` (`id`, `megnevezes`) VALUES
(1, 'karbantartás'),
(2, 'kiújítás'),
(3, 'beszerelés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `statuszok`
--

CREATE TABLE `statuszok` (
  `id` tinyint(4) NOT NULL,
  `megnevezes` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `statuszok`
--

INSERT INTO `statuszok` (`id`, `megnevezes`) VALUES
(1, 'új'),
(2, 'elfogadva'),
(3, 'elutasítva'),
(4, 'folyamatban'),
(5, 'befejezve');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `varosok`
--

CREATE TABLE `varosok` (
  `id` smallint(6) NOT NULL,
  `iranyitoszam` smallint(6) NOT NULL,
  `varos` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `varosok`
--

INSERT INTO `varosok` (`id`, `iranyitoszam`, `varos`) VALUES
(1, 2600, 'Vác'),
(2, 2312, 'Kosd'),
(3327, 4433, 'Verőce'),
(3336, 1234, 'Rád');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `megrendelesek`
--
ALTER TABLE `megrendelesek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statusz_id` (`statusz_id`),
  ADD KEY `munka_jell_id` (`munka_jell_id`),
  ADD KEY `varos_id` (`varos_id`);

--
-- A tábla indexei `munka_jell`
--
ALTER TABLE `munka_jell`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `statuszok`
--
ALTER TABLE `statuszok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `varosok`
--
ALTER TABLE `varosok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `megrendelesek`
--
ALTER TABLE `megrendelesek`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT a táblához `munka_jell`
--
ALTER TABLE `munka_jell`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `statuszok`
--
ALTER TABLE `statuszok`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `varosok`
--
ALTER TABLE `varosok`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3338;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `megrendelesek`
--
ALTER TABLE `megrendelesek`
  ADD CONSTRAINT `megrendelesek_ibfk_1` FOREIGN KEY (`statusz_id`) REFERENCES `statuszok` (`id`),
  ADD CONSTRAINT `megrendelesek_ibfk_2` FOREIGN KEY (`munka_jell_id`) REFERENCES `munka_jell` (`id`),
  ADD CONSTRAINT `megrendelesek_ibfk_3` FOREIGN KEY (`varos_id`) REFERENCES `varosok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
