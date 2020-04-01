-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 01 avr. 2020 à 15:56
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Structure de la table `jeuxvideo`
--

DROP TABLE IF EXISTS `jeuxvideo`;
CREATE TABLE IF NOT EXISTS `jeuxvideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jeuxvideo`
--

INSERT INTO `jeuxvideo` (`id`, `nom`, `type`, `image`) VALUES
(1, 'Doom Eternal', 'FPS', 'images/doom.jpg'),
(2, 'Dofus', 'MMORPG', 'images/dofus.jpg'),
(3, 'Farming Simulator 19', 'Gestion', 'images/farmingsimulator.jpg'),
(4, 'Arma 3', 'Simulation', 'images/arma.jpg'),
(5, 'Age of Empire 3', 'Strategie', 'images/ageofempires3.jpg'),
(6, 'Ark', 'Survie', 'images/ark.jpg'),
(7, 'Batman Arkham Knight', 'Action', 'images/batmanarkhamknight.jpg'),
(8, 'Battleblock Theater', 'Coop', 'images/battleblocktheater.jpg'),
(9, 'Borderlands 3', 'FPS', 'images/borderlands3.jpg'),
(10, 'Call of Duty Modern Warfare', 'FPS', 'images/callofdutymodernwarfare.jpg'),
(11, 'Cities Skylines', 'Gestion', 'images/citiesskylines.jpg'),
(12, 'Counter Strike Global Offensive', 'FPS', 'images/counterstrikeglobaloffensive.jpg'),
(13, 'Darksouls 3', 'Souls Like', 'images/darksouls3.jpg'),
(14, 'Destiny 2', 'FPS', 'images/destiny2.jpg'),
(15, 'Euro Truck Simulator 2', 'Simulation', 'images/eurotrucksimulator2.jpg'),
(16, 'Endless Legend', '4X', 'images/endlesslegend.jpg'),
(17, 'Fortnite', 'Battleroyal', 'images/fortnite.jpg'),
(18, 'For Honor', 'Action', 'images/forhonor.jpg'),
(19, 'Garry\'s mod', 'Sandbox', 'images/garrysmod.jpg'),
(20, 'Grand Theft Auto V', 'Action', 'images/grandtheftautov.jpg'),
(21, 'Battlefield 1', 'FPS', 'images/battlefield1.jpg'),
(22, 'Half Life Alyx', 'VR', 'images/halflifealyx.jpg'),
(23, 'Halo', 'FPS', 'images/halo.jpg'),
(24, 'House Flipper', 'Simulation', 'images/houseflipper.jpg'),
(25, 'Insurgency', 'FPS', 'images/insurgency.jpg'),
(26, 'Just Cause 4', 'Action', 'images/justcause4.jpg'),
(27, 'Jurrasic World Evolution', 'Gestion', 'images/jurassicworldevolution.jpg'),
(28, 'Kerbal Space Program', 'Simulation', 'images/kerbalspaceprogram.jpg'),
(29, 'Kingdom Come Deliverance', 'Medieval', 'images/kingdomcomedeliverance.jpg'),
(30, 'Kingdom Two Crowns', 'Tower Defense', 'images/kingdomtwocrowns.jpg'),
(31, 'Left 4 Dead 2', 'FPS', 'images/left4dead2.jpg'),
(32, 'League Of Legends', 'MOBA', 'images/leagueoflegends.jpg'),
(33, 'Minecraft', 'Sandbox', 'images/minecraft.jpg'),
(34, 'Monster Hunter World', 'Coop', 'images/monsterhunterworld.jpg'),
(35, 'Mount And Blade 2', 'Medieval', 'images/mountandblade2.jpg'),
(36, 'No Man\'s Sky', 'Exploration', 'images/nomanssky.jpg'),
(37, 'Overcooked 2', 'Coop', 'images/overcooked2.jpg'),
(38, 'Overwatch', 'FPS', 'images/overwatch.jpg'),
(39, 'Outer Wilds', 'Aventure', 'images/outerwilds.jpg'),
(40, 'Prison Architect', 'Gestion', 'images/prisonarchitect.jpg'),
(41, 'Plague Inc', 'Simulation', 'images/plagueinc.jpg'),
(42, 'Planet Coaster', 'Gestion', 'images/planetcoaster.jpg'),
(43, 'Quake Champions', 'FPS', 'images/quakechampions.jpg'),
(44, 'Resident Evil VII', 'Horreur', 'images/residentevilvii.jpg'),
(45, 'Rimworld', 'Sandbox', 'images/rimworld.jpg'),
(46, 'Rocket League', 'Foot', 'images/rocketleague.jpg'),
(47, 'Space Engineers', 'Sandbox', 'images/spaceengineers.jpg'),
(48, 'Sekiro', 'Souls Like', 'images/sekiro.jpg'),
(49, 'Sid Meier\'s Civilization VI', '4X', 'images/sidmeierscivilizationvi'),
(50, 'The Forest', 'Survie', 'images/theforest.jpg'),
(51, 'Rainbow 6 Siege', 'FPS', 'images/rainbow6siege.jpg'),
(52, 'The Witcher 3', 'RPG', 'images/thewitcher3.jpg'),
(53, 'Unturned', 'Survie', 'images/unturned.jpg'),
(54, 'Red Dead Redemption 2', 'Action', 'images/reddeadredemption2.jpg'),
(55, 'Watch Dogs 2', 'Action', 'images/watchdogs2.jpg'),
(56, 'Worms WMD', 'Action', 'images/wormswmd.jpg'),
(57, 'Warframe', 'Action', 'images/warframe.jpg'),
(58, 'World Of Warcraft', 'MMORPG', 'images/worldofwarcraft.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
