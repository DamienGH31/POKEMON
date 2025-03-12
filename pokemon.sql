-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 28 fév. 2025 à 14:56
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
-- Base de données : `pokemon`
--
CREATE DATABASE IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pokemon`;

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `idPokemon` int(11) NOT NULL,
  `nomPokemon` varchar(50) NOT NULL,
  `urlPhoto` varchar(250) DEFAULT NULL,
  `PV` int(11) NOT NULL,
  `PtsAttaque` int(11) NOT NULL,
  `PtsDefense` int(11) NOT NULL,
  `PtsVitesse` int(11) NOT NULL,
  `PtsSpecial` int(11) NOT NULL,
  `DateAjout` date NOT NULL,
  `idType2` int(11) DEFAULT NULL,
  `idType1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`idPokemon`, `nomPokemon`, `urlPhoto`, `PV`, `PtsAttaque`, `PtsDefense`, `PtsVitesse`, `PtsSpecial`, `DateAjout`, `idType2`, `idType1`) VALUES
(1, 'Bulbizarre', 'https://www.pokepedia.fr/images/d/db/Miniature_0001_EV.png', 45, 49, 49, 45, 65, '2025-02-28', 21, 16),
(2, 'Herbizarre', 'https://www.pokepedia.fr/images/6/61/Miniature_0002_EV.png', 60, 62, 63, 60, 80, '2025-02-28', 21, 16),
(3, 'Florizarre', 'https://www.pokepedia.fr/images/2/21/Miniature_0003_EV.png', 80, 82, 83, 80, 100, '2025-02-28', 21, 16),
(4, 'Salamèche', 'https://www.pokepedia.fr/images/c/c1/Miniature_0004_EV.png', 39, 52, 43, 65, 50, '2025-02-28', NULL, 17),
(5, 'Reptincel', 'https://www.pokepedia.fr/images/2/24/Miniature_0005_EV.png', 58, 64, 58, 80, 65, '2025-02-28', NULL, 17),
(6, 'Dracaufeu', 'https://www.pokepedia.fr/images/4/42/Miniature_0006_EV.png', 78, 84, 78, 100, 85, '2025-02-28', 24, 17),
(7, 'Carapuce', 'https://www.pokepedia.fr/images/3/3a/Miniature_0007_EV.png', 44, 48, 65, 43, 50, '2025-02-28', NULL, 18),
(8, 'Carabaffe', 'https://www.pokepedia.fr/images/3/3f/Miniature_0008_EV.png', 59, 63, 80, 58, 65, '2025-02-28', NULL, 18),
(9, 'Tortank', 'https://www.pokepedia.fr/images/c/c2/Miniature_0009_EV.png', 79, 83, 100, 78, 85, '2025-02-28', NULL, 18),
(10, 'Chenipan', 'https://www.pokepedia.fr/images/a/a3/Miniature_0010_DEPS.png', 45, 30, 35, 45, 20, '2025-02-28', NULL, 19),
(11, 'Chrysacier', 'https://www.pokepedia.fr/images/2/29/Miniature_0011_DEPS.png', 50, 20, 55, 30, 25, '2025-02-28', NULL, 19),
(12, 'Papilusion', 'https://www.pokepedia.fr/images/c/c0/Miniature_0012_DEPS.png', 60, 45, 50, 70, 80, '2025-02-28', 24, 19),
(13, 'Aspicot', 'https://www.pokepedia.fr/images/e/ea/Miniature_0013_DEPS.png', 40, 35, 30, 50, 20, '2025-02-28', 21, 19),
(14, 'Coconfort', 'https://www.pokepedia.fr/images/2/29/Miniature_0014_DEPS.png', 45, 25, 50, 35, 25, '2025-02-28', 21, 19),
(15, 'Dardargnan', 'https://www.pokepedia.fr/images/d/d9/Miniature_0015_DEPS.png', 65, 80, 40, 75, 45, '2025-02-28', 21, 19),
(16, 'Roucool', 'https://www.pokepedia.fr/images/c/c2/Miniature_0016_DEPS.png', 40, 45, 40, 56, 35, '2025-02-28', 24, 20),
(17, 'Roucoups', 'https://www.pokepedia.fr/images/0/07/Miniature_0017_DEPS.png', 63, 60, 55, 71, 50, '2025-02-28', 24, 20),
(18, 'Roucarnage', 'https://www.pokepedia.fr/images/d/d3/Miniature_0018_DEPS.png', 83, 80, 75, 91, 70, '2025-02-28', 24, 20),
(19, 'Rattata', 'https://www.pokepedia.fr/images/b/b1/Miniature_0019_DEPS.png', 30, 56, 35, 72, 25, '2025-02-28', NULL, 20),
(20, 'Rattatac', 'https://www.pokepedia.fr/images/c/c8/Miniature_0020_DEPS.png', 55, 81, 60, 97, 50, '2025-02-28', NULL, 20),
(21, 'Piafabec', 'https://www.pokepedia.fr/images/6/6c/Miniature_0021_DEPS.png', 40, 60, 30, 70, 31, '2025-02-28', 24, 20),
(22, 'Rapasdepic', 'https://www.pokepedia.fr/images/e/ed/Miniature_0022_DEPS.png', 65, 90, 65, 100, 61, '2025-02-28', 24, 20),
(23, 'Abo', 'https://www.pokepedia.fr/images/0/09/Miniature_0023_EV.png', 35, 60, 44, 55, 40, '2025-02-28', NULL, 21),
(24, 'Arbok', 'https://www.pokepedia.fr/images/b/bf/Miniature_0024_EV.png', 60, 85, 69, 80, 65, '2025-02-28', NULL, 21),
(25, 'Pikachu', 'https://www.pokepedia.fr/images/3/3d/Miniature_0025_EV.png', 35, 55, 30, 90, 50, '2025-02-28', NULL, 22),
(26, 'Raichu', 'https://www.pokepedia.fr/images/9/9f/Miniature_0026_EV.png', 60, 90, 55, 100, 90, '2025-02-28', NULL, 22),
(27, 'Sabelette', 'https://www.pokepedia.fr/images/5/55/Miniature_0027_EV.png', 50, 75, 85, 40, 30, '2025-02-28', NULL, 23),
(28, 'Sablaireau', 'https://www.pokepedia.fr/images/c/c9/Miniature_0028_EV.png', 75, 100, 110, 65, 55, '2025-02-28', NULL, 23),
(29, 'Nidoran ♀', 'https://www.pokepedia.fr/images/0/07/Miniature_0029_DEPS.png', 55, 47, 52, 41, 40, '2025-02-28', NULL, 21),
(30, 'Nidorina', 'https://www.pokepedia.fr/images/1/14/Miniature_0030_DEPS.png', 70, 62, 67, 56, 55, '2025-02-28', NULL, 21),
(31, 'Nidoqueen', 'https://www.pokepedia.fr/images/a/a5/Miniature_0031_DEPS.png', 90, 82, 87, 76, 75, '2025-02-28', NULL, 21),
(32, 'Nidoran ♂', 'https://www.pokepedia.fr/images/8/85/Miniature_0032_DEPS.png', 46, 57, 40, 50, 40, '2025-02-28', NULL, 21),
(33, 'Nidorino', 'https://www.pokepedia.fr/images/1/10/Miniature_0033_DEPS.png', 61, 72, 57, 65, 55, '2025-02-28', NULL, 21),
(34, 'Nidoking', 'https://www.pokepedia.fr/images/7/79/Miniature_0034_DEPS.png', 81, 92, 77, 85, 75, '2025-02-28', NULL, 21),
(35, 'Mélofée', 'https://www.pokepedia.fr/images/c/cf/Miniature_0035_EV.png', 70, 45, 48, 35, 60, '2025-02-28', NULL, 20),
(36, 'Mélodelfe', 'https://www.pokepedia.fr/images/d/d8/Miniature_0036_EV.png', 95, 70, 73, 60, 85, '2025-02-28', NULL, 20),
(37, 'Goupix', 'https://www.pokepedia.fr/images/f/f6/Miniature_0037_EV.png', 38, 41, 40, 65, 65, '2025-02-28', NULL, 17),
(38, 'Feunard', 'https://www.pokepedia.fr/images/e/ed/Miniature_0038_EV.png', 73, 76, 75, 100, 100, '2025-02-28', NULL, 17),
(39, 'Rondoudou', 'https://www.pokepedia.fr/images/9/9e/Miniature_0039_EV.png', 115, 45, 20, 20, 25, '2025-02-28', NULL, 20),
(40, 'Grodoudou', 'https://www.pokepedia.fr/images/e/ed/Miniature_0040_EV.png', 140, 70, 45, 45, 50, '2025-02-28', NULL, 20),
(41, 'Nosferapti', 'https://www.pokepedia.fr/images/a/a9/Miniature_0041_DEPS.png', 40, 45, 35, 55, 40, '2025-02-28', 21, 24),
(42, 'Nosferalto', 'https://www.pokepedia.fr/images/2/2e/Miniature_0042_DEPS.png', 75, 80, 70, 90, 75, '2025-02-28', 21, 24),
(43, 'Mystherbe', 'https://www.pokepedia.fr/images/7/7c/Miniature_0043_EV.png', 45, 50, 55, 30, 75, '2025-02-28', 21, 16),
(44, 'Ortide', 'https://www.pokepedia.fr/images/0/0f/Miniature_0044_EV.png', 60, 65, 70, 40, 85, '2025-02-28', 21, 16),
(45, 'Rafflesia', 'https://www.pokepedia.fr/images/b/b1/Miniature_0045_EV.png', 75, 80, 85, 50, 100, '2025-02-28', 21, 16),
(46, 'Paras', 'https://www.pokepedia.fr/images/b/b2/Miniature_0046_DEPS.png', 35, 70, 55, 25, 55, '2025-02-28', 16, 19),
(47, 'Parasect', 'https://www.pokepedia.fr/images/2/25/Miniature_0047_DEPS.png', 60, 95, 80, 30, 80, '2025-02-28', 16, 19),
(48, 'Mimitoss', 'https://www.pokepedia.fr/images/1/1d/Miniature_0048_EV.png', 60, 55, 50, 45, 40, '2025-02-28', 21, 19),
(49, 'Aéromite', 'https://www.pokepedia.fr/images/7/73/Miniature_0049_EV.png', 70, 65, 60, 90, 90, '2025-02-28', 21, 19),
(50, 'Taupiqueur', 'https://www.pokepedia.fr/images/c/c4/Miniature_0050_EV.png', 10, 55, 25, 95, 45, '2025-02-28', NULL, 23),
(51, 'Triopikeur', 'https://www.pokepedia.fr/images/d/d4/Miniature_0051_EV.png', 35, 80, 50, 120, 70, '2025-02-28', NULL, 23),
(52, 'Miaouss', 'https://www.pokepedia.fr/images/3/38/Miniature_0052_EV.png', 40, 45, 35, 90, 40, '2025-02-28', NULL, 20),
(53, 'Persian', 'https://www.pokepedia.fr/images/6/6e/Miniature_0053_EV.png', 65, 70, 60, 115, 65, '2025-02-28', NULL, 20),
(54, 'Psykokwak', 'https://www.pokepedia.fr/images/2/2e/Miniature_0054_EV.png', 50, 52, 48, 55, 50, '2025-02-28', NULL, 18),
(55, 'Akwakwak', 'https://www.pokepedia.fr/images/f/f1/Miniature_0055_EV.png', 80, 82, 78, 85, 80, '2025-02-28', NULL, 18),
(56, 'Férosinge', 'https://www.pokepedia.fr/images/a/ab/Miniature_0056_EV.png', 40, 80, 35, 70, 35, '2025-02-28', NULL, 25),
(57, 'Colossinge', 'https://www.pokepedia.fr/images/9/91/Miniature_0057_EV.png', 65, 105, 60, 95, 60, '2025-02-28', NULL, 25),
(58, 'Caninos', 'https://www.pokepedia.fr/images/6/6c/Miniature_0058_EV.png', 55, 70, 45, 60, 50, '2025-02-28', NULL, 17),
(59, 'Arcanin', 'https://www.pokepedia.fr/images/9/9c/Miniature_0059_EV.png', 90, 110, 80, 95, 80, '2025-02-28', NULL, 17),
(60, 'Ptitard', 'https://www.pokepedia.fr/images/5/51/Miniature_0060_EV.png', 40, 50, 40, 90, 40, '2025-02-28', NULL, 18),
(61, 'Têtarte', 'https://www.pokepedia.fr/images/8/84/Miniature_0061_EV.png', 65, 65, 65, 90, 50, '2025-02-28', NULL, 18),
(62, 'Tartard', 'https://www.pokepedia.fr/images/a/ab/Miniature_0062_EV.png', 90, 85, 95, 70, 70, '2025-02-28', NULL, 18),
(63, 'Abra', 'https://www.pokepedia.fr/images/9/9b/Miniature_0063_DEPS.png', 25, 20, 15, 90, 105, '2025-02-28', NULL, 26),
(64, 'Kadabra', 'https://www.pokepedia.fr/images/d/d7/Miniature_0064_DEPS.png', 40, 35, 30, 105, 120, '2025-02-28', NULL, 26),
(65, 'Alakazam', 'https://www.pokepedia.fr/images/4/4f/Miniature_0065_DEPS.png', 55, 50, 45, 120, 135, '2025-02-28', NULL, 26),
(66, 'Machoc', 'https://www.pokepedia.fr/images/9/92/Miniature_0066_DEPS.png', 70, 80, 50, 35, 35, '2025-02-28', NULL, 25),
(67, 'Machopeur', 'https://www.pokepedia.fr/images/9/90/Miniature_0067_DEPS.png', 80, 100, 70, 45, 50, '2025-02-28', NULL, 25),
(68, 'Mackogneur', 'https://www.pokepedia.fr/images/a/a6/Miniature_0068_DEPS.png', 90, 130, 80, 55, 65, '2025-02-28', NULL, 25),
(69, 'Chétiflor', 'https://www.pokepedia.fr/images/0/03/Miniature_0069_EV.png', 50, 75, 35, 40, 70, '2025-02-28', NULL, 16),
(70, 'Boustiflor', 'https://www.pokepedia.fr/images/e/ed/Miniature_0070_EV.png', 65, 90, 50, 55, 85, '2025-02-28', NULL, 16),
(71, 'Empiflor', 'https://www.pokepedia.fr/images/a/a0/Miniature_0071_EV.png', 80, 105, 65, 70, 100, '2025-02-28', NULL, 16),
(72, 'Tentacool', 'https://www.pokepedia.fr/images/b/bc/Miniature_0072_EV.png', 40, 40, 35, 70, 100, '2025-02-28', 21, 18),
(73, 'Tentacruel', 'https://www.pokepedia.fr/images/3/31/Miniature_0073_EV.png', 80, 70, 65, 100, 120, '2025-02-28', 21, 18),
(74, 'Racaillou', 'https://www.pokepedia.fr/images/2/20/Miniature_0074_EV.png', 40, 80, 100, 20, 30, '2025-02-28', 29, 23),
(75, 'Gravalanch', 'https://www.pokepedia.fr/images/9/94/Miniature_0075_EV.png', 55, 95, 115, 35, 45, '2025-02-28', 29, 23),
(76, 'Grolem', 'https://www.pokepedia.fr/images/a/a4/Miniature_0076_EV.png', 80, 110, 130, 45, 55, '2025-02-28', 29, 23),
(77, 'Ponyta', 'https://www.pokepedia.fr/images/f/f3/Miniature_0077_DEPS.png', 50, 85, 55, 90, 65, '2025-02-28', NULL, 17),
(78, 'Galopa', 'https://www.pokepedia.fr/images/0/0c/Miniature_0078_DEPS.png', 65, 100, 70, 105, 80, '2025-02-28', NULL, 17),
(79, 'Ramoloss', 'https://www.pokepedia.fr/images/3/38/Miniature_0079_EV.png', 90, 65, 65, 15, 40, '2025-02-28', 26, 18),
(80, 'Flagadoss', 'https://www.pokepedia.fr/images/4/4a/Miniature_0080_EV.png', 95, 75, 110, 30, 80, '2025-02-28', 26, 18),
(81, 'Magnéti', 'https://www.pokepedia.fr/images/c/c3/Miniature_0081_EV.png', 25, 35, 70, 45, 95, '2025-02-28', NULL, 22),
(82, 'Magnéton', 'https://www.pokepedia.fr/images/a/a3/Miniature_0082_EV.png', 50, 60, 95, 70, 120, '2025-02-28', NULL, 22),
(83, 'Canarticho', 'https://www.pokepedia.fr/images/e/e8/Miniature_0083_DEPS.png', 52, 65, 55, 60, 58, '2025-02-28', 24, 20),
(84, 'Doduo', 'https://www.pokepedia.fr/images/8/83/Miniature_0084_EV.png', 35, 85, 45, 75, 35, '2025-02-28', 24, 20),
(85, 'Dodrio', 'https://www.pokepedia.fr/images/5/5e/Miniature_0085_EV.png', 60, 110, 70, 100, 60, '2025-02-28', 24, 20),
(86, 'Otaria', 'https://www.pokepedia.fr/images/f/fe/Miniature_0086_EV.png', 65, 45, 55, 45, 70, '2025-02-28', NULL, 18),
(87, 'Lamantine', 'https://www.pokepedia.fr/images/f/ff/Miniature_0087_EV.png', 90, 70, 80, 70, 95, '2025-02-28', NULL, 18),
(88, 'Tadmorv', 'https://www.pokepedia.fr/images/f/f1/Miniature_0088_EV.png', 80, 80, 50, 25, 40, '2025-02-28', NULL, 21),
(89, 'Grotadmorv', 'https://www.pokepedia.fr/images/a/a6/Miniature_0089_EV.png', 105, 105, 75, 50, 65, '2025-02-28', NULL, 21),
(90, 'Kokiyas', 'https://www.pokepedia.fr/images/9/9c/Miniature_0090_EV.png', 30, 65, 100, 40, 45, '2025-02-28', NULL, 18),
(91, 'Crustabri', 'https://www.pokepedia.fr/images/8/8a/Miniature_0091_EV.png', 50, 95, 180, 70, 85, '2025-02-28', 28, 18),
(92, 'Fantominus', 'https://www.pokepedia.fr/images/c/cf/Miniature_0092_EV.png', 30, 35, 30, 80, 100, '2025-02-28', 21, 27),
(93, 'Spectrum', 'https://www.pokepedia.fr/images/9/95/Miniature_0093_EV.png', 45, 50, 45, 95, 115, '2025-02-28', 21, 27),
(94, 'Ectoplasma', 'https://www.pokepedia.fr/images/1/13/Miniature_0094_EV.png', 60, 65, 60, 110, 130, '2025-02-28', 21, 27),
(95, 'Onix', 'https://www.pokepedia.fr/images/4/4e/Miniature_0095_DEPS.png', 35, 45, 160, 70, 30, '2025-02-28', 29, 23),
(96, 'Soporifik', 'https://www.pokepedia.fr/images/a/ac/Miniature_0096_EV.png', 60, 48, 45, 42, 90, '2025-02-28', NULL, 26),
(97, 'Hypnomade', 'https://www.pokepedia.fr/images/1/10/Miniature_0097_EV.png', 85, 73, 70, 67, 115, '2025-02-28', NULL, 26),
(98, 'Krabby', 'https://www.pokepedia.fr/images/8/87/Miniature_0098_DEPS.png', 30, 105, 90, 50, 25, '2025-02-28', NULL, 18),
(99, 'Krabboss', 'https://www.pokepedia.fr/images/6/67/Miniature_0099_DEPS.png', 55, 130, 115, 75, 50, '2025-02-28', NULL, 18),
(100, 'Voltorbe', 'https://www.pokepedia.fr/images/b/bb/Miniature_0100_EV.png', 40, 30, 50, 100, 55, '2025-02-28', NULL, 22),
(101, 'Electrode', 'https://www.pokepedia.fr/images/c/c4/Miniature_0101_EV.png', 60, 50, 70, 140, 80, '2025-02-28', NULL, 22),
(102, 'Noeunoeuf', 'https://www.pokepedia.fr/images/2/26/Miniature_0102_EV.png', 60, 40, 80, 40, 60, '2025-02-28', 26, 16),
(103, 'Noadkoko', 'https://www.pokepedia.fr/images/8/8d/Miniature_0103_EV.png', 95, 95, 85, 55, 125, '2025-02-28', 26, 16),
(104, 'Osselait', 'https://www.pokepedia.fr/images/1/16/Miniature_0104_DEPS.png', 50, 50, 95, 35, 40, '2025-02-28', NULL, 23),
(105, 'Ossatueur', 'https://www.pokepedia.fr/images/3/35/Miniature_0105_DEPS.png', 60, 80, 110, 45, 50, '2025-02-28', NULL, 23),
(106, 'Kicklee', 'https://www.pokepedia.fr/images/5/56/Miniature_0106_EV.png', 50, 120, 53, 87, 35, '2025-02-28', NULL, 25),
(107, 'Tygnon', 'https://www.pokepedia.fr/images/8/82/Miniature_0107_EV.png', 50, 105, 79, 76, 35, '2025-02-28', NULL, 25),
(108, 'Excelangue', 'https://www.pokepedia.fr/images/e/e6/Miniature_0108_DEPS.png', 90, 55, 75, 30, 60, '2025-02-28', NULL, 20),
(109, 'Smogo', 'https://www.pokepedia.fr/images/7/72/Miniature_0109_EV.png', 40, 65, 95, 35, 60, '2025-02-28', NULL, 21),
(110, 'Smogogo', 'https://www.pokepedia.fr/images/2/2a/Miniature_0110_EV.png', 65, 90, 120, 60, 85, '2025-02-28', NULL, 21),
(111, 'Rhinocorne', 'https://www.pokepedia.fr/images/7/71/Miniature_0111_EV.png', 80, 85, 95, 25, 30, '2025-02-28', 29, 23),
(112, 'Rhinoféros', 'https://www.pokepedia.fr/images/e/e7/Miniature_0112_EV.png', 105, 130, 120, 40, 45, '2025-02-28', 29, 23),
(113, 'Leveinard', 'https://www.pokepedia.fr/images/e/e0/Miniature_0113_EV.png', 250, 5, 5, 50, 105, '2025-02-28', NULL, 20),
(114, 'Saquedeneu', 'https://www.pokepedia.fr/images/2/28/Miniature_0114_DEPS.png', 65, 55, 115, 60, 100, '2025-02-28', NULL, 16),
(115, 'Kangourex', 'https://www.pokepedia.fr/images/2/25/Miniature_0115_DEPS.png', 105, 95, 80, 90, 40, '2025-02-28', NULL, 20),
(116, 'Hypotrempe', 'https://www.pokepedia.fr/images/d/da/Miniature_0116_EV.png', 30, 40, 70, 60, 70, '2025-02-28', NULL, 18),
(117, 'Hypocéan', 'https://www.pokepedia.fr/images/2/2e/Miniature_0117_EV.png', 55, 65, 95, 85, 95, '2025-02-28', NULL, 18),
(118, 'Poissirène', 'https://www.pokepedia.fr/images/5/5c/Miniature_0118_DEPS.png', 45, 67, 60, 63, 50, '2025-02-28', NULL, 18),
(119, 'Poissoroy', 'https://www.pokepedia.fr/images/1/1a/Miniature_0119_DEPS.png', 80, 92, 65, 68, 80, '2025-02-28', NULL, 18),
(120, 'Stari', 'https://www.pokepedia.fr/images/1/17/Miniature_0120_DEPS.png', 30, 45, 55, 85, 70, '2025-02-28', NULL, 18),
(121, 'Staross', 'https://www.pokepedia.fr/images/9/9f/Miniature_0121_DEPS.png', 60, 75, 85, 115, 100, '2025-02-28', 26, 18),
(122, 'M. Mime', 'https://www.pokepedia.fr/images/e/ed/Miniature_0122_DEPS.png', 40, 45, 65, 90, 100, '2025-02-28', NULL, 26),
(123, 'Insécateur', 'https://www.pokepedia.fr/images/a/a7/Miniature_0123_EV.png', 70, 110, 80, 105, 55, '2025-02-28', NULL, 19),
(124, 'Lippoutou', 'https://www.pokepedia.fr/images/0/0c/Miniature_0124_DEPS.png', 65, 50, 35, 95, 95, '2025-02-28', 26, 28),
(125, 'Elektek', 'https://www.pokepedia.fr/images/7/74/Miniature_0125_EV.png', 65, 83, 57, 105, 85, '2025-02-28', NULL, 22),
(126, 'Magmar', 'https://www.pokepedia.fr/images/e/e9/Miniature_0126_EV.png', 65, 95, 57, 93, 85, '2025-02-28', NULL, 17),
(127, 'Scarabrute', 'https://www.pokepedia.fr/images/6/65/Miniature_0127_DEPS.png', 65, 125, 100, 85, 55, '2025-02-28', NULL, 19),
(128, 'Tauros', 'https://www.pokepedia.fr/images/d/d8/Miniature_0128_EV.png', 75, 100, 95, 110, 70, '2025-02-28', NULL, 20),
(129, 'Magicarpe', 'https://www.pokepedia.fr/images/2/29/Miniature_0129_EV.png', 20, 10, 55, 80, 20, '2025-02-28', NULL, 18),
(130, 'Léviator', 'https://www.pokepedia.fr/images/4/43/Miniature_0130_EV.png', 95, 125, 79, 81, 100, '2025-02-28', 24, 18),
(131, 'Lokhlass', 'https://www.pokepedia.fr/images/d/d8/Miniature_0131_EV.png', 130, 85, 80, 60, 95, '2025-02-28', 28, 18),
(132, 'Métamorph', 'https://www.pokepedia.fr/images/9/91/Miniature_0132_EV.png', 48, 48, 48, 48, 48, '2025-02-28', NULL, 20),
(133, 'Evoli', 'https://www.pokepedia.fr/images/6/6f/Miniature_0133_EV.png', 55, 55, 50, 55, 65, '2025-02-28', NULL, 20),
(134, 'Aquali', 'https://www.pokepedia.fr/images/5/53/Miniature_0134_EV.png', 130, 65, 60, 65, 110, '2025-02-28', NULL, 18),
(135, 'Voltali', 'https://www.pokepedia.fr/images/4/40/Miniature_0135_EV.png', 65, 65, 60, 130, 110, '2025-02-28', NULL, 22),
(136, 'Pyroli', 'https://www.pokepedia.fr/images/6/6e/Miniature_0136_EV.png', 65, 130, 60, 65, 110, '2025-02-28', NULL, 17),
(137, 'Porygon', 'https://www.pokepedia.fr/images/8/80/Miniature_0137_EV.png', 65, 60, 70, 40, 75, '2025-02-28', NULL, 20),
(138, 'Amonita', 'https://www.pokepedia.fr/images/8/84/Miniature_0138_DEPS.png', 35, 40, 100, 35, 90, '2025-02-28', 18, 29),
(139, 'Amonistar', 'https://www.pokepedia.fr/images/f/fe/Miniature_0139_DEPS.png', 70, 60, 125, 55, 115, '2025-02-28', 18, 29),
(140, 'Kabuto', 'https://www.pokepedia.fr/images/8/83/Miniature_0140_DEPS.png', 30, 80, 90, 55, 45, '2025-02-28', 18, 29),
(141, 'Kabutops', 'https://www.pokepedia.fr/images/0/0c/Miniature_0141_DEPS.png', 60, 115, 105, 80, 70, '2025-02-28', 18, 29),
(142, 'Ptéra', 'https://www.pokepedia.fr/images/3/33/Miniature_0142_DEPS.png', 80, 105, 65, 130, 60, '2025-02-28', 24, 29),
(143, 'Ronflex', 'https://www.pokepedia.fr/images/5/5e/Miniature_0143_EV.png', 160, 110, 65, 30, 65, '2025-02-28', NULL, 20),
(144, 'Artikodin', 'https://www.pokepedia.fr/images/6/6e/Miniature_0144_EV.png', 90, 85, 100, 85, 125, '2025-02-28', 24, 28),
(145, 'Electhor', 'https://www.pokepedia.fr/images/7/74/Miniature_0145_EV.png', 90, 90, 85, 100, 125, '2025-02-28', 24, 22),
(146, 'Sulfura', 'https://www.pokepedia.fr/images/b/b0/Miniature_0146_EV.png', 90, 100, 90, 90, 125, '2025-02-28', 24, 17),
(147, 'Minidraco', 'https://www.pokepedia.fr/images/7/75/Miniature_0147_EV.png', 41, 64, 45, 50, 50, '2025-02-28', NULL, 30),
(148, 'Draco', 'https://www.pokepedia.fr/images/9/99/Miniature_0148_EV.png', 61, 84, 65, 70, 70, '2025-02-28', NULL, 30),
(149, 'Dracolosse', 'https://www.pokepedia.fr/images/4/43/Miniature_0149_EV.png', 91, 134, 95, 80, 100, '2025-02-28', 24, 30),
(150, 'Mewtwo', 'https://www.pokepedia.fr/images/2/22/Miniature_0150_EV.png', 106, 110, 90, 130, 154, '2025-02-28', NULL, 26),
(151, 'Mew', 'https://www.pokepedia.fr/images/3/33/Miniature_0151_EV.png', 100, 100, 100, 100, 100, '2025-02-28', NULL, 26);

-- --------------------------------------------------------

--
-- Structure de la table `type_pokemon`
--

CREATE TABLE `type_pokemon` (
  `idType` int(11) NOT NULL,
  `nomType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_pokemon`
--

INSERT INTO `type_pokemon` (`idType`, `nomType`) VALUES
(25, 'Combat'),
(30, 'Dragon'),
(18, 'Eau'),
(22, 'Electrique'),
(17, 'Feu'),
(28, 'Glace'),
(19, 'Insecte'),
(20, 'Normal'),
(16, 'Plante'),
(21, 'Poison'),
(26, 'Psy'),
(29, 'Roche'),
(23, 'Sol'),
(27, 'Spectre'),
(24, 'Vol');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`idPokemon`),
  ADD KEY `idType2` (`idType2`),
  ADD KEY `idType1` (`idType1`);

--
-- Index pour la table `type_pokemon`
--
ALTER TABLE `type_pokemon`
  ADD PRIMARY KEY (`idType`),
  ADD UNIQUE KEY `nomType` (`nomType`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `idPokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `type_pokemon`
--
ALTER TABLE `type_pokemon`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`idType2`) REFERENCES `type_pokemon` (`idType`),
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`idType1`) REFERENCES `type_pokemon` (`idType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
