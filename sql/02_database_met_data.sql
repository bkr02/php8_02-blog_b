-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 jun 2023 om 11:28
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_b`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `post_id` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_on` datetime DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `created_on`, `updated_on`, `deleted_on`, `user_id`) VALUES
(2, 'Title 1', 'Description 1', 'Content 1', '2023-06-14 11:08:54', '2023-06-14 09:08:54', NULL, 1),
(3, 'Title 2', 'Description 2', 'Content 2', '2023-06-14 11:08:54', '2023-06-14 09:08:54', NULL, 2),
(4, 'Title 3', 'Description 3', 'Content 3', '2023-06-14 11:08:54', '2023-06-14 09:08:54', NULL, 3),
(5, 'Title 4', 'Description 4', 'Content 4', '2023-06-14 11:08:54', '2023-06-14 09:08:54', NULL, 4),
(6, 'Title 5', 'Description 5', 'Content 5', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 1),
(7, 'Title 6', 'Description 6', 'Content 6', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 2),
(8, 'Title 7', 'Description 7', 'Content 7', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 3),
(9, 'Title 8', 'Description 8', 'Content 8', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 4),
(10, 'Title 9', 'Description 9', 'Content 9', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 1),
(11, 'Title 10', 'Description 10', 'Content 10', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 2),
(12, 'Title 11', 'Description 11', 'Content 11', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 3),
(13, 'Title 12', 'Description 12', 'Content 12', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 4),
(14, 'Title 13', 'Description 13', 'Content 13', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 1),
(15, 'Title 14', 'Description 14', 'Content 14', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 2),
(16, 'Title 15', 'Description 15', 'Content 15', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 3),
(17, 'Title 16', 'Description 16', 'Content 16', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 4),
(18, 'Title 17', 'Description 17', 'Content 17', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 1),
(19, 'Title 18', 'Description 18', 'Content 18', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 2),
(20, 'Title 19', 'Description 19', 'Content 19', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 3),
(21, 'Title 20', 'Description 20', 'Content 20', '2023-06-14 11:27:55', '2023-06-14 09:27:55', NULL, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'user1', 'password1'),
(2, 'user2', 'password2'),
(3, 'user3', 'password3'),
(4, 'user4', 'password4');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Beperkingen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
