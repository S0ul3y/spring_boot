-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 13 juin 2024 à 19:28
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gesticket`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_app` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id_app`, `email`, `mdp`, `nom`) VALUES
(1, 'maigasouleymane244@gmail.com', '12345678', 'Souleymane MAIGA'),
(2, 'moh@gmail.com', '12345678', 'Kôrô Moh');

-- --------------------------------------------------------

--
-- Structure de la table `base_con`
--

CREATE TABLE `base_con` (
  `id_base` bigint(20) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `reponse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `id_for` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL,
  `categotie` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `urgence` varchar(50) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `apprenant_id_app` bigint(20) DEFAULT NULL,
  `reponse` varchar(255) DEFAULT NULL,
  `formateur_id_for` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id`, `categotie`, `description`, `urgence`, `statut`, `apprenant_id_app`, `reponse`, `formateur_id_for`) VALUES
(1, 'a', 'b', 'C', 'd', NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_app`);

--
-- Index pour la table `base_con`
--
ALTER TABLE `base_con`
  ADD PRIMARY KEY (`id_base`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id_for`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKau4qf0pa2iqgs1ec31bnf9bog` (`apprenant_id_app`),
  ADD KEY `FK6j1vqotpp2pg469o4pdx7h8o5` (`formateur_id_for`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id_app` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `base_con`
--
ALTER TABLE `base_con`
  MODIFY `id_base` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id_for` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `FK6j1vqotpp2pg469o4pdx7h8o5` FOREIGN KEY (`formateur_id_for`) REFERENCES `formateur` (`id_for`),
  ADD CONSTRAINT `FKau4qf0pa2iqgs1ec31bnf9bog` FOREIGN KEY (`apprenant_id_app`) REFERENCES `apprenant` (`id_app`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
