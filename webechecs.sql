-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 19 Janvier 2017 à 23:22
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `webechecs`
--

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `Ga_Id` int(5) NOT NULL AUTO_INCREMENT,
  `Ga_Name` varchar(50) NOT NULL,
  `Ga_Tour` int(5) NOT NULL,
  `Ga_Mode` varchar(30) NOT NULL,
  PRIMARY KEY (`Ga_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `games`
--

INSERT INTO `games` (`Ga_Id`, `Ga_Name`, `Ga_Tour`, `Ga_Mode`) VALUES
(21, 'TEST', 0, 'Multiplayer'),
(26, 'Single', 4, 'IA');

-- --------------------------------------------------------

--
-- Structure de la table `remotegames`
--

CREATE TABLE IF NOT EXISTS `remotegames` (
  `Re_Id` int(5) NOT NULL AUTO_INCREMENT,
  `Re_Nom` varchar(50) NOT NULL,
  `Re_Tour` int(5) NOT NULL,
  PRIMARY KEY (`Re_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `remotegamesoption`
--

CREATE TABLE IF NOT EXISTS `remotegamesoption` (
  `Rego_Id` int(5) NOT NULL AUTO_INCREMENT,
  `Rego_PlayerName` varchar(50) NOT NULL,
  `Rego_PlayerColor` varchar(50) NOT NULL,
  PRIMARY KEY (`Rego_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `savedgame`
--

CREATE TABLE IF NOT EXISTS `savedgame` (
  `Sg_Id` int(5) NOT NULL AUTO_INCREMENT,
  `Sg_IdGame` int(5) NOT NULL,
  `Sg_Piece` varchar(50) NOT NULL,
  `Sg_X` int(2) NOT NULL,
  `Sg_Y` int(2) NOT NULL,
  `Sg_Couleur` varchar(10) NOT NULL,
  PRIMARY KEY (`Sg_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=895 ;

--
-- Contenu de la table `savedgame`
--

INSERT INTO `savedgame` (`Sg_Id`, `Sg_IdGame`, `Sg_Piece`, `Sg_X`, `Sg_Y`, `Sg_Couleur`) VALUES
(417, 21, 'Tour', 0, 0, 'Noir'),
(418, 21, 'Cheval', 1, 0, 'Noir'),
(419, 21, 'Fou', 2, 0, 'Noir'),
(420, 21, 'Reine', 3, 0, 'Noir'),
(421, 21, 'Roi', 4, 0, 'Noir'),
(422, 21, 'Fou', 5, 0, 'Noir'),
(423, 21, 'Cheval', 6, 0, 'Noir'),
(424, 21, 'Tour', 7, 0, 'Noir'),
(425, 21, 'Pion', 0, 1, 'Noir'),
(426, 21, 'Pion', 1, 1, 'Noir'),
(427, 21, 'Pion', 2, 1, 'Noir'),
(428, 21, 'Pion', 3, 1, 'Noir'),
(429, 21, 'Pion', 4, 1, 'Noir'),
(430, 21, 'Pion', 5, 1, 'Noir'),
(431, 21, 'Pion', 6, 1, 'Noir'),
(432, 21, 'Pion', 7, 1, 'Noir'),
(433, 21, 'Pion', 0, 6, 'Blanc'),
(434, 21, 'Pion', 1, 6, 'Blanc'),
(435, 21, 'Pion', 2, 6, 'Blanc'),
(436, 21, 'Pion', 3, 6, 'Blanc'),
(437, 21, 'Pion', 4, 6, 'Blanc'),
(438, 21, 'Pion', 5, 6, 'Blanc'),
(439, 21, 'Pion', 6, 6, 'Blanc'),
(440, 21, 'Pion', 7, 6, 'Blanc'),
(441, 21, 'Tour', 0, 7, 'Blanc'),
(442, 21, 'Cheval', 1, 7, 'Blanc'),
(443, 21, 'Fou', 2, 7, 'Blanc'),
(444, 21, 'Reine', 3, 7, 'Blanc'),
(445, 21, 'Roi', 4, 7, 'Blanc'),
(446, 21, 'Fou', 5, 7, 'Blanc'),
(447, 21, 'Cheval', 6, 7, 'Blanc'),
(448, 21, 'Tour', 7, 7, 'Blanc'),
(575, 26, 'Tour', 0, 0, 'Noir'),
(576, 26, 'Cheval', 1, 0, 'Noir'),
(577, 26, 'Fou', 2, 0, 'Noir'),
(578, 26, 'Reine', 3, 0, 'Noir'),
(579, 26, 'Roi', 4, 0, 'Noir'),
(580, 26, 'Fou', 5, 0, 'Noir'),
(581, 26, 'Cheval', 6, 0, 'Noir'),
(582, 26, 'Pion', 0, 1, 'Noir'),
(583, 26, 'Pion', 1, 1, 'Noir'),
(584, 26, 'Pion', 2, 1, 'Noir'),
(585, 26, 'Pion', 3, 1, 'Noir'),
(586, 26, 'Pion', 4, 1, 'Noir'),
(587, 26, 'Pion', 5, 1, 'Noir'),
(588, 26, 'Pion', 6, 1, 'Noir'),
(589, 26, 'Tour', 7, 1, 'Noir'),
(590, 26, 'Pion', 7, 2, 'Noir'),
(591, 26, 'Pion', 2, 4, 'Blanc'),
(592, 26, 'Pion', 6, 4, 'Blanc'),
(593, 26, 'Pion', 0, 6, 'Blanc'),
(594, 26, 'Pion', 1, 6, 'Blanc'),
(595, 26, 'Pion', 3, 6, 'Blanc'),
(596, 26, 'Pion', 4, 6, 'Blanc'),
(597, 26, 'Pion', 5, 6, 'Blanc'),
(598, 26, 'Pion', 7, 6, 'Blanc'),
(599, 26, 'Tour', 0, 7, 'Blanc'),
(600, 26, 'Cheval', 1, 7, 'Blanc'),
(601, 26, 'Fou', 2, 7, 'Blanc'),
(602, 26, 'Reine', 3, 7, 'Blanc'),
(603, 26, 'Roi', 4, 7, 'Blanc'),
(604, 26, 'Fou', 5, 7, 'Blanc'),
(605, 26, 'Cheval', 6, 7, 'Blanc'),
(606, 26, 'Tour', 7, 7, 'Blanc');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
