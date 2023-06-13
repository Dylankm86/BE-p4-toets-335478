-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 13 jun 2023 om 11:16
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lespakket_oop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leerling`
--

DROP TABLE IF EXISTS `leerling`;
CREATE TABLE IF NOT EXISTS `leerling` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `voornaam` varchar(50) NOT NULL,
  `tussenvoegsel` varchar(10) DEFAULT NULL,
  `achternaam` varchar(50) NOT NULL,
  `mobiel` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `leerling`
--

INSERT INTO `leerling` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `mobiel`) VALUES
(1, 'bas', 'de', 'bakker', '06-28493827'),
(2, 'terence', NULL, 'draaijer', '06-39398734'),
(3, 'samuel', NULL, 'werchter', '06-24383291'),
(4, 'sharida', NULL, 'tetehuka', '06-48293823'),
(5, 'fatma', NULL, 'yilmaz', '06-34291234');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leerlingperlespakket`
--

DROP TABLE IF EXISTS `leerlingperlespakket`;
CREATE TABLE IF NOT EXISTS `leerlingperlespakket` (
  `id` int(11) NOT NULL,
  `lespakketid` int(11) DEFAULT NULL,
  `leerlingid` int(11) DEFAULT NULL,
  `startdatumrijlessen` date DEFAULT NULL,
  `datumrijbewijsgehaald` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lespakketid` (`lespakketid`),
  KEY `leerlingid` (`leerlingid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `leerlingperlespakket`
--

INSERT INTO `leerlingperlespakket` (`id`, `lespakketid`, `leerlingid`, `startdatumrijlessen`, `datumrijbewijsgehaald`) VALUES
(1, 1, 5, '2023-05-23', NULL),
(2, 4, 1, '2023-06-03', '2022-08-05'),
(3, 1, 1, '2022-06-02', NULL),
(4, 3, 4, '2023-06-01', NULL),
(5, 1, 2, '2022-11-30', '2023-05-23'),
(6, 2, 3, '2022-06-06', '2023-06-06');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lespaket`
--

DROP TABLE IF EXISTS `lespaket`;
CREATE TABLE IF NOT EXISTS `lespaket` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pakketnaam` varchar(50) NOT NULL,
  `aantallessen` int(3) NOT NULL,
  `rijbewijscategorie` varchar(5) NOT NULL,
  `prijs` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lespaket`
--

INSERT INTO `lespaket` (`id`, `pakketnaam`, `aantallessen`, `rijbewijscategorie`, `prijs`) VALUES
(1, 'Personenauto extra', 40, 'b', '2700.00'),
(2, 'vrachtwagen subliem', 60, 'c', '5400.00'),
(3, 'bus extraordinaire', 80, 'd', '7300.00'),
(4, 'bromfiets deluxe', 10, 'am', '230.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
