-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 juil. 2024 à 10:26
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `email`, `nom`, `password`) VALUES
(1, 'ssb@gmail.com', 'ssb salma', 'ssb');

-- --------------------------------------------------------

--
-- Structure de la table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL,
  `Chofeur` varchar(255) DEFAULT NULL,
  `Marque` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT 'en attente',
  `matricule` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ambulance`
--

INSERT INTO `ambulance` (`id`, `Chofeur`, `Marque`, `etat`, `matricule`) VALUES
(1, 'salma', 'ABC', 'non disponible', NULL),
(2, 'salma', 'ABC', 'non disponible', 'a_12_df'),
(3, 'chofeur 1', 'marque1.1', 'non disponible', 'A_0943df'),
(4, 'chofeur 2', 'marque 2.1', 'non disponible', 'A_09vd3df'),
(5, 'chofeur 4', 'marque3.4', ' non disponible', 'A_09_d45_df');

-- --------------------------------------------------------

--
-- Structure de la table `file_ambulance`
--

CREATE TABLE `file_ambulance` (
  `id` bigint(20) NOT NULL,
  `ambulance_id` bigint(20) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `etat` varchar(45) DEFAULT 'en attente',
  `victim_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `file_ambulance`
--

INSERT INTO `file_ambulance` (`id`, `ambulance_id`, `date`, `etat`, `victim_id`) VALUES
(1, 0, '2024-06-08T09:38', 'en attente', 1),
(2, 0, '2024-06-07T22:38', 'en attente', 2),
(3, 0, '2024-06-07T22:38', 'en attente', 3),
(4, 0, '2024-06-07T22:38', 'traité', 3),
(5, 0, '2024-06-26T00:12', 'traité', 5),
(6, 0, '2024-06-26T00:19', 'traité', 6),
(7, 0, '2024-06-26T00:24', 'traité', 7),
(14, 0, '2024-06-26T01:00', NULL, 15),
(16, 0, '2024-06-26T01:50', NULL, 17),
(15, 0, '2024-06-26T01:21', NULL, 16);

-- --------------------------------------------------------

--
-- Structure de la table `user1`
--

CREATE TABLE `user1` (
  `num_Amo` varchar(34) NOT NULL,
  `cin` varchar(12) DEFAULT NULL,
  `nom` varchar(34) DEFAULT NULL,
  `prenom` varchar(34) DEFAULT NULL,
  `tele` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user1`
--

INSERT INTO `user1` (`num_Amo`, `cin`, `nom`, `prenom`, `tele`) VALUES
('2345678901', 'MD12356', 'el khalfi', 'salma', '0954546765'),
('123', '123', 'naser', 'anas', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `victime`
--

CREATE TABLE `victime` (
  `id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `amo` varchar(255) DEFAULT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `dgreUrg` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `nomComplet` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `type_de_soin` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `victime`
--

INSERT INTO `victime` (`id`, `age`, `amo`, `cin`, `dgreUrg`, `etat`, `lieu`, `nomComplet`, `score`, `time`, `type_de_soin`) VALUES
(1, 16, NULL, 'M453678', 'sévére', 'en attente', 'el jadida', 'anis', 5, '2024-06-08T09:38', 'bloc operatoire'),
(2, 23, '2344670908552F4563F', 'MD34570', 'moderée', 'en attente', 'el jadida', 'victime 1', 6, '2024-06-07T22:38', 'salle de soin avancée'),
(3, 23, '2344670908552F4563F', 'MD34570', 'sévére', 'traité', 'el jadida', 'victime 1', 7, '2024-06-07T22:38', NULL),
(16, 27, NULL, NULL, 'sévére', 'traité', 'el jadida', 'anas', 9, '2024-06-26T01:21', 'salle de soin'),
(17, 29, NULL, NULL, 'moderée', 'en attente', 'el jadida', 'anas', 6, '2024-06-26T01:50', 'salle de soin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `file_ambulance`
--
ALTER TABLE `file_ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`num_Amo`);

--
-- Index pour la table `victime`
--
ALTER TABLE `victime`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `file_ambulance`
--
ALTER TABLE `file_ambulance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `victime`
--
ALTER TABLE `victime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
