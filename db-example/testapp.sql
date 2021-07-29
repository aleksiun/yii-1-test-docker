-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Czas generowania: 29 Lip 2021, 12:57
-- Wersja serwera: 5.7.35
-- Wersja PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `testapp`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Product`
--

CREATE TABLE `Product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pquantity` int(11) NOT NULL,
  `pdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Product`
--

INSERT INTO `Product` (`id`, `pname`, `pquantity`, `pdescription`) VALUES
(1, 'Nazwa', 324, 'Opis'),
(2, 'sdfgsdf', 324234, 'dfgdgdfgdfgdfg'),
(3, 'sdfsdfsdf', 342, 'fdgdfgdfgdfgdfgdfgdfgdf'),
(5, 'fdgdfgdfg', 4534534, 'fgbdgdfgdfgdfgdfg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin1', 'test1234', 'em@ail.com'),
(2, 'marek', 'test1234', 'email@mail.com'),
(3, 'user12', 'test12', 'dfsf@gfdg.dfg'),
(4, 'sdfsdfs', 'fsdfsdf', '34243234'),
(5, 'fdgdf', 'g4tr34tfdgdf', 'gdtreger33rg3e'),
(6, 'rg3egrgg3e', 'rgr3gr3eg', '3reg3eg3eg'),
(7, 'r3egr3erg3e', 'g3ege3', 'ggge3gr'),
(8, 'rge3gre3', 'rg3eg', 'grge3rg3eg3ergg'),
(9, '3erg3eg3eg', 'rgr', 'gr3egg3erg'),
(10, 'fdgsgds', 'fsgergsfg', 'hsfghfs'),
(11, 'dsfgsdfg', 'sdfg', 'sgsdfgds'),
(12, 'sdfgsd', 'gfsdfg', 'dsg'),
(13, 'sdfsd', 'fsdfs', 'dfsdfsdf'),
(14, 'sdf', 'sdfds', 'fdsf'),
(15, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ghfhfg@gfhfghj.kl'),
(16, '1234', '81dc9bdb52d04dc20036dbd8313ed055', '1234');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeksy dla tabeli `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
