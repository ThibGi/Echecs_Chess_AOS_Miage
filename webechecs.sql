-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 15 Janvier 2017 à 10:56
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Contenu de la table `games`
--

INSERT INTO `games` (`Ga_Id`, `Ga_Name`, `Ga_Tour`, `Ga_Mode`) VALUES
(21, 'TEST', 0, 'Multiplayer'),
(22, 'TEST 2', 0, 'Multiplayer'),
(23, 'TEST PARTIE 3', 2, 'Multiplayer'),
(24, 'sdzfzefze', 9, 'Multiplayer'),
(25, 'LADT', 4, 'Multiplayer'),
(26, 'Single', 4, 'IA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=607 ;

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
(449, 22, 'Tour', 0, 0, 'Noir'),
(450, 22, 'Cheval', 1, 0, 'Noir'),
(451, 22, 'Fou', 2, 0, 'Noir'),
(452, 22, 'Reine', 3, 0, 'Noir'),
(453, 22, 'Roi', 4, 0, 'Noir'),
(454, 22, 'Fou', 5, 0, 'Noir'),
(455, 22, 'Cheval', 6, 0, 'Noir'),
(456, 22, 'Tour', 7, 0, 'Noir'),
(457, 22, 'Pion', 0, 1, 'Noir'),
(458, 22, 'Pion', 1, 1, 'Noir'),
(459, 22, 'Pion', 2, 1, 'Noir'),
(460, 22, 'Pion', 4, 1, 'Noir'),
(461, 22, 'Pion', 6, 1, 'Noir'),
(462, 22, 'Pion', 7, 1, 'Noir'),
(463, 22, 'Pion', 3, 3, 'Noir'),
(464, 22, 'Pion', 5, 3, 'Noir'),
(465, 22, 'Pion', 2, 4, 'Blanc'),
(466, 22, 'Pion', 4, 4, 'Blanc'),
(467, 22, 'Pion', 0, 6, 'Blanc'),
(468, 22, 'Pion', 1, 6, 'Blanc'),
(469, 22, 'Pion', 3, 6, 'Blanc'),
(470, 22, 'Pion', 5, 6, 'Blanc'),
(471, 22, 'Pion', 6, 6, 'Blanc'),
(472, 22, 'Pion', 7, 6, 'Blanc'),
(473, 22, 'Tour', 0, 7, 'Blanc'),
(474, 22, 'Cheval', 1, 7, 'Blanc'),
(475, 22, 'Fou', 2, 7, 'Blanc'),
(476, 22, 'Reine', 3, 7, 'Blanc'),
(477, 22, 'Roi', 4, 7, 'Blanc'),
(478, 22, 'Fou', 5, 7, 'Blanc'),
(479, 22, 'Cheval', 6, 7, 'Blanc'),
(480, 22, 'Tour', 7, 7, 'Blanc'),
(481, 23, 'Tour', 0, 0, 'Noir'),
(482, 23, 'Cheval', 1, 0, 'Noir'),
(483, 23, 'Fou', 2, 0, 'Noir'),
(484, 23, 'Reine', 3, 0, 'Noir'),
(485, 23, 'Roi', 4, 0, 'Noir'),
(486, 23, 'Fou', 5, 0, 'Noir'),
(487, 23, 'Cheval', 6, 0, 'Noir'),
(488, 23, 'Tour', 7, 0, 'Noir'),
(489, 23, 'Pion', 0, 1, 'Noir'),
(490, 23, 'Pion', 1, 1, 'Noir'),
(491, 23, 'Pion', 2, 1, 'Noir'),
(492, 23, 'Pion', 3, 1, 'Noir'),
(493, 23, 'Pion', 4, 1, 'Noir'),
(494, 23, 'Pion', 5, 1, 'Noir'),
(495, 23, 'Pion', 7, 1, 'Noir'),
(496, 23, 'Pion', 6, 3, 'Noir'),
(497, 23, 'Pion', 0, 4, 'Blanc'),
(498, 23, 'Pion', 1, 6, 'Blanc'),
(499, 23, 'Pion', 2, 6, 'Blanc'),
(500, 23, 'Pion', 3, 6, 'Blanc'),
(501, 23, 'Pion', 4, 6, 'Blanc'),
(502, 23, 'Pion', 5, 6, 'Blanc'),
(503, 23, 'Pion', 6, 6, 'Blanc'),
(504, 23, 'Pion', 7, 6, 'Blanc'),
(505, 23, 'Tour', 0, 7, 'Blanc'),
(506, 23, 'Cheval', 1, 7, 'Blanc'),
(507, 23, 'Fou', 2, 7, 'Blanc'),
(508, 23, 'Reine', 3, 7, 'Blanc'),
(509, 23, 'Roi', 4, 7, 'Blanc'),
(510, 23, 'Fou', 5, 7, 'Blanc'),
(511, 23, 'Cheval', 6, 7, 'Blanc'),
(512, 23, 'Tour', 7, 7, 'Blanc'),
(513, 24, 'Fou', 0, 0, 'Noir'),
(514, 24, 'Fou', 1, 0, 'Noir'),
(515, 24, 'Fou', 2, 0, 'Noir'),
(516, 24, 'Fou', 3, 0, 'Noir'),
(517, 24, 'Fou', 5, 0, 'Noir'),
(518, 24, 'Fou', 6, 0, 'Noir'),
(519, 24, 'Fou', 7, 0, 'Noir'),
(520, 24, 'Fou', 0, 1, 'Noir'),
(521, 24, 'Fou', 1, 1, 'Noir'),
(522, 24, 'Fou', 2, 1, 'Noir'),
(523, 24, 'Fou', 3, 1, 'Noir'),
(524, 24, 'Fou', 4, 1, 'Noir'),
(525, 24, 'Fou', 5, 1, 'Noir'),
(526, 24, 'Fou', 7, 2, 'Blanc'),
(527, 24, 'Fou', 4, 3, 'Noir'),
(528, 24, 'Fou', 2, 4, 'Blanc'),
(529, 24, 'Fou', 7, 4, 'Blanc'),
(530, 24, 'Fou', 0, 6, 'Blanc'),
(531, 24, 'Fou', 1, 6, 'Blanc'),
(532, 24, 'Fou', 3, 6, 'Blanc'),
(533, 24, 'Fou', 4, 6, 'Blanc'),
(534, 24, 'Fou', 6, 6, 'Blanc'),
(535, 24, 'Fou', 0, 7, 'Blanc'),
(536, 24, 'Fou', 1, 7, 'Blanc'),
(537, 24, 'Fou', 2, 7, 'Blanc'),
(538, 24, 'Fou', 3, 7, 'Blanc'),
(539, 24, 'Fou', 4, 7, 'Blanc'),
(540, 24, 'Fou', 5, 7, 'Blanc'),
(541, 24, 'Fou', 6, 7, 'Blanc'),
(542, 24, 'Fou', 7, 7, 'Blanc'),
(543, 25, 'Tour', 0, 0, 'Noir'),
(544, 25, 'Cheval', 1, 0, 'Noir'),
(545, 25, 'Fou', 2, 0, 'Noir'),
(546, 25, 'Reine', 3, 0, 'Noir'),
(547, 25, 'Roi', 4, 0, 'Noir'),
(548, 25, 'Fou', 5, 0, 'Noir'),
(549, 25, 'Cheval', 6, 0, 'Noir'),
(550, 25, 'Tour', 7, 0, 'Noir'),
(551, 25, 'Pion', 0, 1, 'Noir'),
(552, 25, 'Pion', 1, 1, 'Noir'),
(553, 25, 'Pion', 2, 1, 'Noir'),
(554, 25, 'Pion', 3, 1, 'Noir'),
(555, 25, 'Pion', 5, 1, 'Noir'),
(556, 25, 'Pion', 7, 1, 'Noir'),
(557, 25, 'Pion', 4, 3, 'Noir'),
(558, 25, 'Pion', 6, 3, 'Noir'),
(559, 25, 'Pion', 2, 4, 'Blanc'),
(560, 25, 'Pion', 5, 4, 'Blanc'),
(561, 25, 'Pion', 0, 6, 'Blanc'),
(562, 25, 'Pion', 1, 6, 'Blanc'),
(563, 25, 'Pion', 3, 6, 'Blanc'),
(564, 25, 'Pion', 4, 6, 'Blanc'),
(565, 25, 'Pion', 6, 6, 'Blanc'),
(566, 25, 'Pion', 7, 6, 'Blanc'),
(567, 25, 'Tour', 0, 7, 'Blanc'),
(568, 25, 'Cheval', 1, 7, 'Blanc'),
(569, 25, 'Fou', 2, 7, 'Blanc'),
(570, 25, 'Reine', 3, 7, 'Blanc'),
(571, 25, 'Roi', 4, 7, 'Blanc'),
(572, 25, 'Fou', 5, 7, 'Blanc'),
(573, 25, 'Cheval', 6, 7, 'Blanc'),
(574, 25, 'Tour', 7, 7, 'Blanc'),
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
