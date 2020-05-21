-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Maj 2020, 13:15
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `chodak`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `FilmyID` int(2) NOT NULL,
  `Gatunek` text NOT NULL,
  `TytulFilm` text NOT NULL,
  `Rok` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`FilmyID`, `Gatunek`, `TytulFilm`, `Rok`) VALUES
(1, 'Fantasy', '\"Zakleta Gospoda\"', 1896),
(2, 'Komedia', '\"Polewacz polany\"', 1895);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `serialefantasy`
--

CREATE TABLE `serialefantasy` (
  `FantasyID` int(11) NOT NULL,
  `FantasyTytul` varchar(20) NOT NULL,
  `FantasySezon` int(11) NOT NULL,
  `FantasyOdcinki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `serialefantasy`
--

INSERT INTO `serialefantasy` (`FantasyID`, `FantasyTytul`, `FantasySezon`, `FantasyOdcinki`) VALUES
(1, 'Gra o tron', 8, 73),
(2, 'Wiedzmin', 1, 8),
(3, 'Lucyfer', 4, 67);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `serialekomedia`
--

CREATE TABLE `serialekomedia` (
  `KomediaID` int(11) NOT NULL,
  `KomediaTytul` varchar(20) NOT NULL,
  `KomediaSezon` int(11) NOT NULL,
  `KomediaOdcinki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `serialekomedia`
--

INSERT INTO `serialekomedia` (`KomediaID`, `KomediaTytul`, `KomediaSezon`, `KomediaOdcinki`) VALUES
(1, 'Przyjaciele', 10, 236),
(2, 'Biuro', 9, 201),
(3, 'Rick i Morty', 4, 36);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD KEY `FilmyID` (`FilmyID`);

--
-- Indeksy dla tabeli `serialefantasy`
--
ALTER TABLE `serialefantasy`
  ADD KEY `FantasyID` (`FantasyID`);

--
-- Indeksy dla tabeli `serialekomedia`
--
ALTER TABLE `serialekomedia`
  ADD KEY `KomediaID` (`KomediaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `FilmyID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `serialefantasy`
--
ALTER TABLE `serialefantasy`
  MODIFY `FantasyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `serialekomedia`
--
ALTER TABLE `serialekomedia`
  MODIFY `KomediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
