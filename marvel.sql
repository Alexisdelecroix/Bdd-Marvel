-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 07 juil. 2023 à 09:57
-- Version du serveur : 8.0.29
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `Acteur`
--

CREATE TABLE `Acteur` (
  `Acteur_id_Acteur` int NOT NULL,
  `Nom_Acteur` varchar(50) DEFAULT NULL,
  `Prenom_Acteur` varchar(50) DEFAULT NULL,
  `dateDeNaissance_Acteur` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Acteur`
--

INSERT INTO `Acteur` (`Acteur_id_Acteur`, `Nom_Acteur`, `Prenom_Acteur`, `dateDeNaissance_Acteur`) VALUES
(1, 'Pratt', 'Chris', '1979-06-21'),
(2, 'Rudd', 'Paul', '1969-04-06'),
(3, 'Downey', 'Robert', '1965-04-04'),
(4, 'Maguire', 'Tobey', '1975-06-27'),
(5, 'Johansson', 'Scarlett', '1984-11-22');

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `Film_id_Film` int NOT NULL,
  `Titre_Film` varchar(50) DEFAULT NULL,
  `Duree_Film` time DEFAULT NULL,
  `Annee_Film` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Film`
--

INSERT INTO `Film` (`Film_id_Film`, `Titre_Film`, `Duree_Film`, `Annee_Film`) VALUES
(1, 'Les Gardiens de la Galaxie', '02:02:00', '2014-08-13'),
(2, 'Ant-Man', '02:05:00', '2015-07-14'),
(3, 'Iron-Man', '02:06:00', '2008-04-30'),
(4, 'Spider-Man', '02:01:00', '2002-06-12'),
(5, 'Avengers', '02:23:00', '2012-04-25');

-- --------------------------------------------------------

--
-- Structure de la table `Film_acteur`
--

CREATE TABLE `Film_acteur` (
  `Film_id_Film` int NOT NULL,
  `Acteur_id_Acteur` int NOT NULL,
  `RoleActeur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Film_acteur`
--

INSERT INTO `Film_acteur` (`Film_id_Film`, `Acteur_id_Acteur`, `RoleActeur`) VALUES
(1, 1, 'Star-Lord'),
(1, 2, 'Ant-Man'),
(3, 3, 'Iron Man'),
(4, 4, 'Spider-Man'),
(5, 5, 'Black Widow');

-- --------------------------------------------------------

--
-- Structure de la table `Film_Prefere`
--

CREATE TABLE `Film_Prefere` (
  `Utilisateurs_id_Utilisateurs` int NOT NULL,
  `Film_id_Film` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Film_Realisateur`
--

CREATE TABLE `Film_Realisateur` (
  `Film_id_Film` int NOT NULL,
  `Realisateurs_id_Realisateurs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Realisateurs`
--

CREATE TABLE `Realisateurs` (
  `Realisateurs_id_Realisateurs` int NOT NULL,
  `Nom_Realisateurs` varchar(50) DEFAULT NULL,
  `Prenom_Realisateurs` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Realisateurs`
--

INSERT INTO `Realisateurs` (`Realisateurs_id_Realisateurs`, `Nom_Realisateurs`, `Prenom_Realisateurs`) VALUES
(1, 'Gunn', 'James'),
(2, 'Reed', 'Peyton'),
(3, 'Favreau', 'Jon'),
(4, 'Raimi', 'Sam'),
(5, 'Russo', 'Joe');

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `Utilisateurs_id_Utilisateurs` int NOT NULL,
  `Nom_Utilisateurs` varchar(50) DEFAULT NULL,
  `Prenom_Utilisateurs` varchar(50) DEFAULT NULL,
  `Email_Utilisateurs` varchar(200) DEFAULT NULL,
  `MotDePasse_Utilisateurs` varchar(50) DEFAULT NULL,
  `RoleUser_Utilisateurs` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`Utilisateurs_id_Utilisateurs`, `Nom_Utilisateurs`, `Prenom_Utilisateurs`, `Email_Utilisateurs`, `MotDePasse_Utilisateurs`, `RoleUser_Utilisateurs`) VALUES
(3, 'Delecroix', 'Alexis', 'd-alexis@hotmail.fr', 'DelecroixAlexis', 'Admin'),
(4, 'Vansteenkiste', 'Sylvain', 'sylvain.vansteenkiste59@gmail.com', 'VansteenkisteSylvain', 'Admin'),
(5, 'Brasseur', 'Julian', 'julianbrasseur2@gmail.com', 'BrasseurJulian', 'User'),
(6, 'De Wulf', 'Théo', 'W-Theo@hotmail.fr', 'WulfTheo', 'User'),
(7, 'François', 'Jean-Pierre', 'JeanPierre@hotmail.fr', 'FrançoisJean', 'User'),
(8, 'Serin', 'Charles', 'S-Charles@hotmail.fr', 'SerinCharles', 'User');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Acteur`
--
ALTER TABLE `Acteur`
  ADD PRIMARY KEY (`Acteur_id_Acteur`);

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`Film_id_Film`);

--
-- Index pour la table `Film_acteur`
--
ALTER TABLE `Film_acteur`
  ADD PRIMARY KEY (`Film_id_Film`,`Acteur_id_Acteur`),
  ADD KEY `FK_Film_acteur_Acteur_id_Acteur` (`Acteur_id_Acteur`);

--
-- Index pour la table `Film_Prefere`
--
ALTER TABLE `Film_Prefere`
  ADD PRIMARY KEY (`Utilisateurs_id_Utilisateurs`,`Film_id_Film`),
  ADD KEY `FK_Film_Prefere_Film_id_Film` (`Film_id_Film`);

--
-- Index pour la table `Film_Realisateur`
--
ALTER TABLE `Film_Realisateur`
  ADD PRIMARY KEY (`Film_id_Film`,`Realisateurs_id_Realisateurs`),
  ADD KEY `FK_Film_Realisateur_Realisateurs_id_Realisateurs` (`Realisateurs_id_Realisateurs`);

--
-- Index pour la table `Realisateurs`
--
ALTER TABLE `Realisateurs`
  ADD PRIMARY KEY (`Realisateurs_id_Realisateurs`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`Utilisateurs_id_Utilisateurs`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Acteur`
--
ALTER TABLE `Acteur`
  MODIFY `Acteur_id_Acteur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `Film_id_Film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Film_acteur`
--
ALTER TABLE `Film_acteur`
  MODIFY `Film_id_Film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Film_Prefere`
--
ALTER TABLE `Film_Prefere`
  MODIFY `Utilisateurs_id_Utilisateurs` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Film_Realisateur`
--
ALTER TABLE `Film_Realisateur`
  MODIFY `Film_id_Film` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Realisateurs`
--
ALTER TABLE `Realisateurs`
  MODIFY `Realisateurs_id_Realisateurs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `Utilisateurs_id_Utilisateurs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Film_acteur`
--
ALTER TABLE `Film_acteur`
  ADD CONSTRAINT `FK_Film_acteur_Acteur_id_Acteur` FOREIGN KEY (`Acteur_id_Acteur`) REFERENCES `Acteur` (`Acteur_id_Acteur`),
  ADD CONSTRAINT `FK_Film_acteur_Film_id_Film` FOREIGN KEY (`Film_id_Film`) REFERENCES `Film` (`Film_id_Film`);

--
-- Contraintes pour la table `Film_Prefere`
--
ALTER TABLE `Film_Prefere`
  ADD CONSTRAINT `FK_Film_Prefere_Film_id_Film` FOREIGN KEY (`Film_id_Film`) REFERENCES `Film` (`Film_id_Film`),
  ADD CONSTRAINT `FK_Film_Prefere_Utilisateurs_id_Utilisateurs` FOREIGN KEY (`Utilisateurs_id_Utilisateurs`) REFERENCES `Utilisateurs` (`Utilisateurs_id_Utilisateurs`);

--
-- Contraintes pour la table `Film_Realisateur`
--
ALTER TABLE `Film_Realisateur`
  ADD CONSTRAINT `FK_Film_Realisateur_Film_id_Film` FOREIGN KEY (`Film_id_Film`) REFERENCES `Film` (`Film_id_Film`),
  ADD CONSTRAINT `FK_Film_Realisateur_Realisateurs_id_Realisateurs` FOREIGN KEY (`Realisateurs_id_Realisateurs`) REFERENCES `Realisateurs` (`Realisateurs_id_Realisateurs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
