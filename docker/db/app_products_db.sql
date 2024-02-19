-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : database:3306
-- Généré le : lun. 19 fév. 2024 à 16:14
-- Version du serveur : 10.5.8-MariaDB-1:10.5.8+maria~focal
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `app_db`
--

CREATE DATABASE IF NOT EXISTS `app_products_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `app_products_db`;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_stock` int(11) NOT NULL,
  `instore_stock` int(11) NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `code`, `online_stock`, `instore_stock`, `purchase_price`, `selling_price`) VALUES
(1, 'Qui', 'TSHIRT', '2024-3385-285', 21, 7, 27, 270),
(2, 'Aut', 'HOODIES', '2024-3998-520', 94, 31, 18, 180),
(3, 'Fuga', 'HOODIES', '2024-9059-579', 67, 22, 21, 210),
(4, 'A', 'CAP', '2024-2908-239', 91, 30, 28, 280),
(5, 'Et', 'CAP', '2024-3028-336', 26, 8, 25, 250),
(6, 'Eligendi', 'HOODIES', '2024-6290-487', 69, 23, 32, 320),
(7, 'Voluptas', 'HOODIES', '2024-7889-684', 75, 25, 20, 200),
(8, 'Unde', 'SNEAKERS', '2024-4607-255', 76, 25, 33, 330),
(9, 'Consequatur', 'SNEAKERS', '2024-4989-428', 59, 19, 27, 270),
(10, 'Incidunt', 'TSHIRT', '2024-1727-250', 49, 16, 16, 160),
(11, 'Sunt', 'HOODIES', '2024-8892-416', 50, 16, 18, 180),
(12, 'Voluptatibus', 'TSHIRT', '2024-2302-881', 70, 23, 22, 220),
(13, 'Eum', 'HOODIES', '2024-9279-366', 88, 29, 17, 170),
(14, 'Inventore', 'CAP', '2024-8569-734', 31, 10, 25, 250),
(15, 'Cupiditate', 'HOODIES', '2024-9122-399', 76, 25, 25, 250),
(16, 'Exercitationem', 'CAP', '2024-8748-520', 44, 14, 24, 240),
(17, 'Id', 'TSHIRT', '2024-8998-322', 10, 3, 30, 300),
(18, 'Velit', 'SNEAKERS', '2024-2752-202', 22, 7, 15, 150),
(19, 'Itaque', 'HOODIES', '2024-7747-694', 37, 12, 22, 220),
(20, 'Non', 'TSHIRT', '2024-2420-726', 56, 18, 21, 210),
(21, 'Placeat', 'SNEAKERS', '2024-9894-891', 100, 33, 28, 280),
(22, 'Ad', 'CAP', '2024-7662-735', 81, 27, 17, 170),
(23, 'Odio', 'HOODIES', '2024-9107-196', 51, 17, 33, 330),
(24, 'Molestiae', 'TSHIRT', '2024-6210-250', 42, 14, 27, 270),
(25, 'Cupiditate', 'SNEAKERS', '2024-4699-544', 40, 13, 17, 170),
(26, 'Ea', 'TSHIRT', '2024-6269-503', 23, 7, 18, 180),
(27, 'Excepturi', 'SNEAKERS', '2024-1147-287', 45, 15, 22, 220),
(28, 'Aliquid', 'CAP', '2024-4624-138', 52, 17, 20, 200),
(29, 'Qui', 'TSHIRT', '2024-1538-535', 47, 15, 35, 350),
(30, 'Iure', 'SNEAKERS', '2024-2622-185', 11, 3, 18, 180),
(31, 'Rerum', 'SNEAKERS', '2024-8098-278', 65, 21, 22, 220),
(32, 'Ex', 'CAP', '2024-1089-795', 82, 27, 35, 350),
(33, 'Fugiat', 'HOODIES', '2024-7595-555', 53, 17, 28, 280),
(34, 'Aperiam', 'CAP', '2024-2123-848', 96, 32, 19, 190),
(35, 'Sit', 'CAP', '2024-1371-401', 75, 25, 21, 210),
(36, 'Dolores', 'SNEAKERS', '2024-4071-488', 32, 10, 28, 280),
(37, 'Dolorum', 'SNEAKERS', '2024-7703-296', 85, 28, 23, 230),
(38, 'Doloribus', 'HOODIES', '2024-6059-945', 64, 21, 31, 310),
(39, 'Facilis', 'TSHIRT', '2024-5811-714', 85, 28, 21, 210),
(40, 'Rerum', 'SNEAKERS', '2024-7408-904', 79, 26, 30, 300),
(41, 'Est', 'HOODIES', '2024-4698-574', 81, 27, 17, 170),
(42, 'Rem', 'HOODIES', '2024-3443-397', 31, 10, 21, 210),
(43, 'Eaque', 'TSHIRT', '2024-6145-793', 63, 21, 25, 250),
(44, 'Dolores', 'TSHIRT', '2024-7507-933', 82, 27, 15, 150),
(45, 'Aliquam', 'TSHIRT', '2024-7222-231', 87, 29, 16, 160),
(46, 'Consequatur', 'SNEAKERS', '2024-9303-130', 24, 8, 15, 150),
(47, 'Voluptas', 'TSHIRT', '2024-9628-896', 79, 26, 18, 180),
(48, 'Aut', 'SNEAKERS', '2024-5952-309', 50, 16, 30, 300),
(49, 'Odit', 'CAP', '2024-2944-900', 26, 8, 35, 350),
(50, 'Et', 'CAP', '2024-5508-214', 89, 29, 19, 190);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
