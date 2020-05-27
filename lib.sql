-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Maj 2020, 16:44
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
-- Baza danych: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `id_autor` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`id_autor`, `imie`, `nazwisko`) VALUES
(1, 'Barbara', 'Kowaluch'),
(2, 'Andrzej', 'Angus'),
(3, 'Agnieszka', 'Czekalska'),
(4, 'Darek', 'Grudzinski'),
(5, 'Aleksander', 'Zoboracki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tytuly`
--

CREATE TABLE `tytuly` (
  `id_tytul` int(11) NOT NULL,
  `tytul` varchar(22) NOT NULL,
  `ISBN` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `tytuly`
--

INSERT INTO `tytuly` (`id_tytul`, `tytul`, `ISBN`) VALUES
(1, 'Kwiatowa rozkosz', '978-83-900210-1-1'),
(2, 'Nowa szansa', '978-83-900210-1-2'),
(3, 'Pojdziemy razem', '978-83-900210-1-3'),
(4, 'Cudowne wakacje', '978-83-900210-1-4'),
(5, 'Zagubiona w myslach', '978-83-900210-1-5');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indeksy dla tabeli `tytuly`
--
ALTER TABLE `tytuly`
  ADD PRIMARY KEY (`id_tytul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `tytuly`
--
ALTER TABLE `tytuly`
  MODIFY `id_tytul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
