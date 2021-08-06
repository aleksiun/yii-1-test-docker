-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Czas generowania: 06 Sie 2021, 09:04
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
(5, 'fdgdfgdfgm', 4534534, 'fgbdgdfgdfgdfgdfg'),
(6, 'dsf', 2131, 'dsfsdf'),
(7, 'sdfsdf', 234234, 'dfgdfg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `email`, `role`) VALUES
(15, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ghfhfg@gfhfghj.kl', 'administrator'),
(18, 'seller1', '81dc9bdb52d04dc20036dbd8313ed055', 'dfsff@dfgdsgffd.fg', 'seller'),
(19, 'seller2', '81dc9bdb52d04dc20036dbd8313ed055', 'fsadfs@dfsd.df', 'seller'),
(20, 'admin2', '81dc9bdb52d04dc20036dbd8313ed055', 'dsfsf@fdgdfg.df', 'administrator');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
