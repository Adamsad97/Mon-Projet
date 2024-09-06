#  
# Serveur: localhost
# 
# Base de données: `bdAlbum`
# --------------------------------------------------------
create database bdAlbum;
use bdAlbum;

#
# Structure de la table `genre`
#

DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  num int(4) NOT NULL auto_increment,
  libelle varchar(50) NOT NULL,
  PRIMARY KEY  (num)
)ENGINE=INNODB CHARACTER SET utf8;

#
# Contenu de la table `genre`
#

INSERT INTO genre (libelle) VALUES ('Fantastique');
INSERT INTO genre (libelle) VALUES ('Conte ou légende');
INSERT INTO genre (libelle) VALUES ('Humour noir');
INSERT INTO genre (libelle) VALUES ('Humour jeunesse');
INSERT INTO genre (libelle) VALUES ('Adaptation d''oeuvre littéraire');
INSERT INTO genre (libelle) VALUES ('Science-fiction');

#
# Structure de la table `album`
#

DROP TABLE IF EXISTS album;
CREATE TABLE album (
  num int(4) NOT NULL auto_increment,
  serie varchar(50) NULL,
  titre varchar(50) NOT NULL,
  tome int(2) NULL ,
  scénariste varchar(50) NOT NULL,
  dessinateur varchar(50) NOT NULL,
  resume text NOT NULL,
  editeur varchar(50) NOT NULL,
  collection varchar(50) NULL,
  parution char(4) NOT NULL,
  image varchar(50) NULL,
  numGenre int(4) NOT NULL,
  FOREIGN KEY (numGenre) REFERENCES genre(num),
  PRIMARY KEY  (num)
)ENGINE=INNODB CHARACTER SET utf8;

#
# Contenu de la table `album`
#
INSERT INTO `album` VALUES (NULL, NULL, '1984', NULL, 'Georges Orwell','Xavier Coste','Dans une Angleterre chronique issue de la Guerre Froide, Winston est un employé ordinaire. Surveillé à chaque instant par des caméras, des espions, des voisins, il travaille à la réécriture de l\'Histoire. Il sent confusément que quelque chose ne va pas dans le monde tel qu\'il le connaît. Qu\'il doit bien exister du sens, quelque part. Un secret. C\'est alors qu\'il rencontre Julia... Sous la nouvelle traduction de Xavier Coste, l\'intemporelle dystopie Orwellienne est plus glaçante que jamais. Dans un bouquet final saisissant, un superbe pop-up donne vie à ce monde désincarné ! ', ' Sarbacane', NULL, '2021', 'images/1984.jpg', 5); 
INSERT INTO `album` VALUES (NULL, NULL, 'American Dream ', NULL, 'Bazil', 'Bazil', 'American Dream est une fiction d''humour noir et absurde mais à la fois révélatrice dans sa tentative de satire de la société nord-américaine.', 'Bang', NULL, '2019', 'images/americanDream.jpg', 3);
INSERT INTO `album` VALUES (NULL, 'Macbeth Roi d''Écosse', 'Le livre des fantômes', 2, 'Thomas Day','Guillaume Sorel',  'Conclusion d''un diptyque flamboyant et somptueux.« Seigneur on te nommera. Plus tard, la dame aux mains rouges tu épouseras. Et enfin, roi tu seras. » Macbeth a finalement accédé au trône d\'Écosse, ainsi que la prophétie l\'avait prédit. Mais est-il seulement l\'auteur de sa propre destinée ? On le prétend usurpateur, coupable du crime de régicide. Dans l\'ombre, c\'est lady Macbeth qui continue d\'écrire, dans le sang, le récit de son époux. À mesure que leurs années de règne passent, la culpabilité et la paranoïa les rongent....', ' Glénat', 'Glénat', '2020', 'images/macbeth.jpg', 2);
INSERT INTO `album` VALUES (NULL, 'Macbeth Roi d''Écosse', 'Le livre des sorcières', 1, 'Thomas Day', 'Guillaume Sorel', 'Une relecture flamboyante du mythe de Shakespeare Écosse, XIe siècle. De retour dans leur fief après un long combat contre les armées norvégiennes, Macbeth et Banquo, deux valeureux guerriers, rencontrent trois sorcières sous l’orage. Leur prophétie est formelle : le premier deviendra roi, tandis que le second verra ses descendants le devenir. La suite est connue : meurtres, drames et trahisons composeront l’un des plus célèbres textes de Shakespeare. ', 'Glénat', 'Glénat', '2019', 'images/macbeth1.jpg', 5);
INSERT INTO `album` VALUES (NULL, 'Star Wars', 'Les sabres jumeaux', 13, 'Didier Pageot', 'Mike Norton', 'La tension monte et tout se joue dans ce nouvel opus des aventures de Luke Skywalker et de ses amis. Au programme : la vérité sur l\'énigmatique Dar Champion, les secrets de Warba dévoilés, un combat à mains nues entre Chewbacca et Dark Vador, et surtout la convergence de toutes les trames tissées jusque-là, pour un affrontement final qui ne laissera personne indemne. En bonus, une série d''histoires courtes autour de l\'univers Star Wars !', 'Panini Comics', '100% Star Wars', '2020', 'images/starwars13', 6);
INSERT INTO `album` VALUES (NULL, 'Star Wars', 'Rebelles et renégats', 12, 'Greg Pak', 'Phil Noto', 'Les Rebelles tentent de trouver une nouvelle base sans être repérés par l''Empire. L''Alliance va donc avoir besoin que ses héros créent des diversions… une mission pour nos héros favoris ! Leia et Han font équipe, Chewbacca et C-3PO partent de leur côté et Luke s''envole seul vers un lieu désertique. Avant-dernier tome avant la relance de la série.', 'Panini Comics', '100% Star Wars', '2020', 'images/starwars12.jpg',6);

