-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 mars 2023 à 11:01
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdalbum`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `num` int(4) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `titre` varchar(50) NOT NULL,
  `tome` int(2) DEFAULT NULL,
  `scénariste` varchar(50) NOT NULL,
  `dessinateur` varchar(50) NOT NULL,
  `resume` text NOT NULL,
  `editeur` varchar(50) NOT NULL,
  `collection` varchar(50) DEFAULT NULL,
  `parution` char(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `numGenre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`num`, `serie`, `titre`, `tome`, `scénariste`, `dessinateur`, `resume`, `editeur`, `collection`, `parution`, `image`, `numGenre`) VALUES
(1, NULL, '1984', NULL, 'Georges Orwell', 'Xavier Coste', 'Dans une Angleterre chronique issue de la Guerre Froide, Winston est un employé ordinaire. Surveillé à chaque instant par des caméras, des espions, des voisins, il travaille à la réécriture de l\'Histoire. Il sent confusément que quelque chose ne va pas dans le monde tel qu\'il le connaît. Qu\'il doit bien exister du sens, quelque part. Un secret. C\'est alors qu\'il rencontre Julia... Sous la nouvelle traduction de Xavier Coste, l\'intemporelle dystopie Orwellienne est plus glaçante que jamais. Dans un bouquet final saisissant, un superbe pop-up donne vie à ce monde désincarné ! ', ' Sarbacane', NULL, '2021', 'images/1984.jpg', 5),
(2, NULL, 'American Dream ', NULL, 'Bazil', 'Bazil', 'American Dream est une fiction d\'humour noir et absurde mais à la fois révélatrice dans sa tentative de satire de la société nord-américaine.', 'Bang', NULL, '2019', 'images/americanDream.jpg', 3),
(3, 'Macbeth Roi d\'Écosse', 'Le livre des fantômes', 2, 'Thomas Day', 'Guillaume Sorel', 'Conclusion d\'un diptyque flamboyant et somptueux.« Seigneur on te nommera. Plus tard, la dame aux mains rouges tu épouseras. Et enfin, roi tu seras. » Macbeth a finalement accédé au trône d\'Écosse, ainsi que la prophétie l\'avait prédit. Mais est-il seulement l\'auteur de sa propre destinée ? On le prétend usurpateur, coupable du crime de régicide. Dans l\'ombre, c\'est lady Macbeth qui continue d\'écrire, dans le sang, le récit de son époux. À mesure que leurs années de règne passent, la culpabilité et la paranoïa les rongent....', ' Glénat', 'Glénat', '2020', 'images/macbeth.jpg', 2),
(4, 'Macbeth Roi d\'Écosse', 'Le livre des sorcières', 1, 'Thomas Day', 'Guillaume Sorel', 'Une relecture flamboyante du mythe de Shakespeare Écosse, XIe siècle. De retour dans leur fief après un long combat contre les armées norvégiennes, Macbeth et Banquo, deux valeureux guerriers, rencontrent trois sorcières sous l’orage. Leur prophétie est formelle : le premier deviendra roi, tandis que le second verra ses descendants le devenir. La suite est connue : meurtres, drames et trahisons composeront l’un des plus célèbres textes de Shakespeare. ', 'Glénat', 'Glénat', '2019', 'images/macbeth2.jpg', 5),
(5, 'Star Wars', 'Les sabres jumeaux', 13, 'Didier Pageot', 'Mike Norton', 'La tension monte et tout se joue dans ce nouvel opus des aventures de Luke Skywalker et de ses amis. Au programme : la vérité sur l\'énigmatique Dar Champion, les secrets de Warba dévoilés, un combat à mains nues entre Chewbacca et Dark Vador, et surtout la convergence de toutes les trames tissées jusque-là, pour un affrontement final qui ne laissera personne indemne. En bonus, une série d\'histoires courtes autour de l\'univers Star Wars !', 'Panini Comics', '100% Star Wars', '2020', 'images/starwars13.jpg', 6),
(6, 'Star Wars', 'Rebelles et renégats', 12, 'Greg Pak', 'Phil Noto', 'Les Rebelles tentent de trouver une nouvelle base sans être repérés par l\'Empire. L\'Alliance va donc avoir besoin que ses héros créent des diversions… une mission pour nos héros favoris ! Leia et Han font équipe, Chewbacca et C-3PO partent de leur côté et Luke s\'envole seul vers un lieu désertique. Avant-dernier tome avant la relance de la série.', 'Panini Comics', '100% Star Wars', '2020', 'images/starwars12.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `num` int(4) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`num`, `libelle`) VALUES
(1, 'Fantastique'),
(2, 'Conte ou légende'),
(3, 'Humour noir'),
(4, 'Humour jeunesse'),
(5, 'Adaptation d\'oeuvre littéraire'),
(6, 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `mail` varchar(50) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`mail`, `nom`, `password`) VALUES
('majdmallak1214@gmail.com', 'majd mallak', 'Majdmallak1212');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `id_vote` int(11) NOT NULL,
  `usr_mail` varchar(50) NOT NULL,
  `num_album` int(11) NOT NULL,
  `note` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`id_vote`, `usr_mail`, `num_album`, `note`) VALUES
(1, 'majdmallak1214@gmail.com', 3, 5),
(2, 'majdmallak1214@gmail.com', 3, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`num`),
  ADD KEY `numGenre` (`numGenre`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`mail`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `usr_mail` (`usr_mail`,`num_album`),
  ADD KEY `num_album` (`num_album`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `num` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `num` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`numGenre`) REFERENCES `genre` (`num`);

--
-- Contraintes pour la table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`num_album`) REFERENCES `album` (`num`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`usr_mail`) REFERENCES `users` (`mail`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
