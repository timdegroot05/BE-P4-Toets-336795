-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 30 mei 2023 om 10:17
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
-- Database: `toets-p4`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Instructeur`
--

DROP TABLE IF EXISTS `Instructeur`;
CREATE TABLE IF NOT EXISTS `Instructeur` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam Examinator` varchar(50) NOT NULL,
  `Datum Examen` varchar(10) NOT NULL,
  `Rijbewijs Categorie` varchar(5) NOT NULL,
  `Rijschool` varchar(50) NOT NULL,
  `Stad` varchar(100) NOT NULL,
  `Uitslag Examen` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Instructeur`
--

INSERT INTO `Instructeur` (`Id`, `Naam Examinator`, `Datum Examen`, `Rijbewijs Categorie`, `Rijschool`, `Stad`, `Uitslag Examen`) VALUES
(11, 'Lissette den Dongen', '01-03-2023', 'C', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'Geslaagd'),
(12, 'Lissette den Dongen', '12-05-2023', 'B', 'AltijdGeslaagd', 'Dordrecht', 'Geslaagd'),
(13, 'JursWailly Luciano', '03-04-2023', 'B', 'VolGasVooruit', 'Rotterdam', 'Geslaagd'),
(14, 'JursWailly Luciano', '15-05-2023', 'D', 'LinksomRechtsom', 'Dordrecht', 'Geslaagd'),
(15, 'JursWailly Luciano', '12-04-2023', 'B', 'RijlesVoorJou', 'Rotterdam', 'Geslaagd'),
(16, 'Naswha Salawi', '17-04-2023', 'B', 'RechtDoorEnGaan', 'Rotterdam', 'Gezakt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
