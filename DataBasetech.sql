-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 30 nov. 2021 à 14:59
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `DataBasetech`
--

-- --------------------------------------------------------

--
-- Structure de la table `Chauffeur`
--

CREATE TABLE `Chauffeur` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Chauffeur`
--

INSERT INTO `Chauffeur` (`id`, `Nom`) VALUES
(109, 'korom'),
(234, 'halo'),
(236, 'djalbie'),
(287, 'liuytrfghjk'),
(570, 'kevin'),
(740, 'dfghj'),
(849, 'QSdfguikl'),
(876, 'sandra'),
(907, 'qsxcfyui'),
(984, 'moiuyt');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `Id` int(12) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Nationnalite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`Id`, `Nom`, `Email`, `Nationnalite`) VALUES
(121, 'modestine', 'modest@gmail.com', 'tchadien'),
(232, 'korom', 'korom.moktar@gmail.com', 'francais'),
(234, 'nassir', 'nass@gmail.com', 'nigerian'),
(341, 'lamda', 'lam@gmail.com', 'tchadien'),
(456, 'mouktar', 'mouktar@gmail.com', 'algerien'),
(644, 'grene', 'greneadoun@gmail.com', 'egyptien'),
(656, 'Yanon Dari', 'yanondari@gamil.com', 'tchadien'),
(765, 'nasskimtolmen', 'nass.kim@gmail.com', 'malgage'),
(876, 'sandrion', 'sandrion.papa@gmail', 'libienne'),
(977, 'frederic', 'frederic@gmail.com', 'senegalais');

-- --------------------------------------------------------

--
-- Structure de la table `CompagnieTransport`
--

CREATE TABLE `CompagnieTransport` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `CompagnieTransport`
--

INSERT INTO `CompagnieTransport` (`id`, `Nom`) VALUES
(109, 'sud voyage'),
(320, 'jeska'),
(326, 'salam'),
(450, 'mbaleto'),
(564, 'sanaya'),
(568, 'abou'),
(653, 'gamga'),
(854, 'geve'),
(932, 'stromka'),
(936, 'hanana'),
(961, 'maonda');

-- --------------------------------------------------------

--
-- Structure de la table `Destination`
--

CREATE TABLE `Destination` (
  `id` int(12) NOT NULL,
  `Pays` varchar(26) NOT NULL,
  `Ville` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Destination`
--

INSERT INTO `Destination` (`id`, `Pays`, `Ville`) VALUES
(9, 'senega', 'dacar'),
(95, 'chine', 'honkon'),
(417, 'france', 'paris'),
(432, 'tchad', 'palla'),
(750, 'japon', 'ndjamena'),
(987, 'tchad', 'abeche'),
(3456, 'cameroun', 'douala'),
(4567, 'tchad', 'mongo'),
(6201, 'pays-bas', 'holand'),
(9438, 'tchad', 'bongor');

-- --------------------------------------------------------

--
-- Structure de la table `Facture`
--

CREATE TABLE `Facture` (
  `id` int(12) NOT NULL,
  `Designation` varchar(26) NOT NULL,
  `PrixUnitaire` float NOT NULL,
  `Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Facture`
--

INSERT INTO `Facture` (`id`, `Designation`, `PrixUnitaire`, `Total`) VALUES
(123, 'gadteau', 67883500, 34567900),
(432, 'chipse', 87653500, 76543200),
(534, 'velo', 2345690000, 23456800000),
(1234, 'poisson', 23456800, 9876540000),
(1343, 'chemise', 2364, 874567),
(3264, 'chambre', 23456800, 987655000),
(4322, 'moto', 87654300000, 8.76543e16),
(7641, 'draps', 567837, 34567800),
(8634, 'maison', 2.34569e15, 2.34568e20),
(8743, 'pantalon', 2346350, 8764570000);

-- --------------------------------------------------------

--
-- Structure de la table `Guide`
--

CREATE TABLE `Guide` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL,
  `Speciaté` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Guide`
--

INSERT INTO `Guide` (`id`, `Nom`, `Speciaté`) VALUES
(225, 'charfadine', 'pompiste'),
(430, 'modestine', 'cuisiniaire'),
(863, 'mariana', 'institutrice'),
(4563, 'korm', 'gestionnaire'),
(5735, 'guit', 'mneger'),
(6735, 'aicha', 'chanteuse'),
(7102, 'ababa', 'gestionnaire'),
(8530, 'nass', 'chasseur'),
(8630, 'sonia', 'pharmacienne'),
(37390, 'hissene', 'chasseur');

-- --------------------------------------------------------

--
-- Structure de la table `GuidePapier`
--

CREATE TABLE `GuidePapier` (
  `id` int(11) DEFAULT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `GuidePapier`
--

INSERT INTO `GuidePapier` (`id`, `libelle`) VALUES
(634, 'plan du tchad'),
(753, 'plan du cameroun'),
(734, 'plan senegal'),
(125, 'plan de nigeria'),
(863, 'pla de france'),
(987, 'plan de gana'),
(721, 'plan du maison blanche'),
(834, 'plan de la maison du president'),
(836, 'plan de la boutique'),
(4363, 'plan de la maison du maire de la ville');

-- --------------------------------------------------------

--
-- Structure de la table `GuidePersonne`
--

CREATE TABLE `GuidePersonne` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `GuidePersonne`
--

INSERT INTO `GuidePersonne` (`id`, `Nom`) VALUES
(12314, 'modestine'),
(19134, 'korom'),
(46371, 'mariana'),
(52428, 'idriss'),
(62310, 'adoum'),
(63412, 'vandard'),
(85234, 'mahamat'),
(246391, 'nastour'),
(632509, 'DADA'),
(725209, 'kali');

-- --------------------------------------------------------

--
-- Structure de la table `Hotel`
--

CREATE TABLE `Hotel` (
  `id` int(12) NOT NULL,
  `Libelle` varchar(255) NOT NULL,
  `Caractetistque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Hotel`
--

INSERT INTO `Hotel` (`id`, `Libelle`, `Caractetistque`) VALUES
(381, 'radisson ', 'une bonne terrasse'),
(573, 'hilton hotel', 'un tres bon jardin'),
(635, 'un hotel de quatre niveau situe a abena', 'il y\'a ds jacousi de pissine de haut niveau'),
(2395, 'PLAZA ', 'supper cuisine '),
(5630, 'hotel de ville', 'jambon bien fais des chamdre avec deux lits'),
(6341, 'diné bleu', 'avec de rose partout dans lle gardin'),
(6342, 'phoenix', 'bien vitré'),
(7452, 'cherbelle plaza', 'avec une bonne bissine une maison en paille'),
(9863, 'royol residence', 'un tres bonne auberge'),
(53698, '5 etoiles de georou', '500 chambrs filtre\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `Itineraire`
--

CREATE TABLE `Itineraire` (
  `id` int(12) NOT NULL,
  `Libelle` varchar(26) NOT NULL,
  `Caracteristique` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Itineraire`
--

INSERT INTO `Itineraire` (`id`, `Libelle`, `Caracteristique`) VALUES
(13, 'chine et japon', 'traiter de contrat'),
(24, 'bresil mosambie', 'lune de miel'),
(5372, 'chine et soudan', 'traiter de contrat'),
(8353, 'soudan a libye', 'reglement de conflit'),
(8735, 'senegal gana et france', 'lune de miel'),
(73417, 'ndjamena palla', 'voyage de depot de corps'),
(73530, 'senegal gana et france', 'courtoisie'),
(145612, 'bresil moritanie', 'traiter de paix et accord'),
(536378, 'tchad au senegal ', 'voyage de couple'),
(8354267, 'israel a palestine', 'traiter de paix');

-- --------------------------------------------------------

--
-- Structure de la table `MoyennTransport`
--

CREATE TABLE `MoyennTransport` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL,
  `Type` varchar(12) NOT NULL,
  `Capacite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `MoyennTransport`
--

INSERT INTO `MoyennTransport` (`id`, `Nom`, `Type`, `Capacite`) VALUES
(312, 'bus', 'VIP', 123),
(5346, 'avion', 'versal', 10000),
(9836, 'train', 'wagon', 842333),
(45368, 'pateau', 'traja', 193635);

-- --------------------------------------------------------

--
-- Structure de la table `Reservation`
--

CREATE TABLE `Reservation` (
  `id` int(12) NOT NULL,
  `DateR` date NOT NULL,
  `HeurR` time(6) NOT NULL,
  `DureSej` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Reservation`
--

INSERT INTO `Reservation` (`id`, `DateR`, `HeurR`, `DureSej`) VALUES
(754, '2021-11-23', '17:21:19.000000', '21322 jours'),
(2321, '2021-11-09', '17:21:19.000000', '15 jours'),
(3821, '2021-11-10', '20:41:20.000000', '86 jours'),
(4231, '2021-11-10', '20:41:20.000000', '65 jOurs'),
(5211, '2021-11-10', '20:41:20.000000', '234 jours'),
(7124, '2021-11-23', '17:21:19.120000', '12 jours'),
(9991, '2021-11-23', '17:21:19.000000', '121 jours'),
(56712, '2021-11-10', '13:26:11.000000', '32 jours'),
(98165, '2021-11-23', '11:21:19.120000', '43 jours'),
(191212, '2021-11-11', '13:21:11.000000', '45 jours');

-- --------------------------------------------------------

--
-- Structure de la table `SiteTouristique`
--

CREATE TABLE `SiteTouristique` (
  `id` int(12) NOT NULL,
  `Libelle` varchar(26) NOT NULL,
  `zone` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `SiteTouristique`
--

INSERT INTO `SiteTouristique` (`id`, `Libelle`, `zone`) VALUES
(23, 'guerra', 'mongo'),
(511, 'chinjapon', 'lere'),
(711, 'guerra', 'mongo'),
(712, 'guerra', 'mongo'),
(1453, 'guerra', 'mongo'),
(1906, 'siute gocho', 'lere'),
(2376, 'site go cho', ''),
(3912, 'ndjampalla', 'lere'),
(5600, 'chinouda', 'lere'),
(39812, 'ndjamena moundou', '');

-- --------------------------------------------------------

--
-- Structure de la table `SocieteLocal`
--

CREATE TABLE `SocieteLocal` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `SocieteLocal`
--

INSERT INTO `SocieteLocal` (`id`, `Nom`) VALUES
(1, 'transbar'),
(2, 'transite'),
(3, 'hahanna'),
(186, 'tikinterr'),
(345, 'gtk'),
(563, 'anaconda'),
(567, 'jupyter'),
(1342, 'yang'),
(1987, 'pycharm'),
(3456, 'wang'),
(4321, 'sobkika'),
(6712, 'python');

-- --------------------------------------------------------

--
-- Structure de la table `TransportCommun`
--

CREATE TABLE `TransportCommun` (
  `id` int(12) NOT NULL,
  `Nom` varchar(26) NOT NULL,
  `Capacite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `TransportCommun`
--

INSERT INTO `TransportCommun` (`id`, `Nom`, `Capacite`) VALUES
(567, 'bus', 2345),
(23452, 'avion', 2345680),
(6134, 'bus', 23456),
(87635, 'bus', 23456800000),
(9634, 'bus', 3456),
(34287, 'bus', 4676),
(46350, 'Bus', 3465),
(8421, 'bus', 45131),
(9312, 'avion', 785632),
(9725, 'avion', 56235700);

-- --------------------------------------------------------

--
-- Structure de la table `Vehicule`
--

CREATE TABLE `Vehicule` (
  `id` int(12) NOT NULL,
  `Type` varchar(26) NOT NULL,
  `Immatricule` varchar(26) NOT NULL,
  `Capacite` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Vehicule`
--

INSERT INTO `Vehicule` (`id`, `Type`, `Immatricule`, `Capacite`) VALUES
(76, 'camri', '042361', 4566),
(900, 'versal', '005Ml', 10000),
(982, 'trajm', '051J', 1936),
(1981, 'terrestr', '0423ML', 12311211),
(2342, 'toyota', '00513', 34658),
(2431, 'vespa', '00642E', 97652),
(3965, 'camri', '0142E', 23456),
(4511, 'versal', '0051KI', 1936),
(5623, 'traja', '0051J', 1936),
(6251, 'terres', '5236J', 3262),
(8936, 'camri', '04236FD', 45356),
(9736, 'venderval', '0826K', 3545);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Chauffeur`
--
ALTER TABLE `Chauffeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `CompagnieTransport`
--
ALTER TABLE `CompagnieTransport`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Destination`
--
ALTER TABLE `Destination`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Facture`
--
ALTER TABLE `Facture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Guide`
--
ALTER TABLE `Guide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `GuidePersonne`
--
ALTER TABLE `GuidePersonne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Hotel`
--
ALTER TABLE `Hotel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Itineraire`
--
ALTER TABLE `Itineraire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `MoyennTransport`
--
ALTER TABLE `MoyennTransport`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `SiteTouristique`
--
ALTER TABLE `SiteTouristique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `SocieteLocal`
--
ALTER TABLE `SocieteLocal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Vehicule`
--
ALTER TABLE `Vehicule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Chauffeur`
--
ALTER TABLE `Chauffeur`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=978;

--
-- AUTO_INCREMENT pour la table `CompagnieTransport`
--
ALTER TABLE `CompagnieTransport`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=962;

--
-- AUTO_INCREMENT pour la table `Destination`
--
ALTER TABLE `Destination`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9439;

--
-- AUTO_INCREMENT pour la table `Facture`
--
ALTER TABLE `Facture`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8744;

--
-- AUTO_INCREMENT pour la table `Guide`
--
ALTER TABLE `Guide`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37391;

--
-- AUTO_INCREMENT pour la table `GuidePersonne`
--
ALTER TABLE `GuidePersonne`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725210;

--
-- AUTO_INCREMENT pour la table `Hotel`
--
ALTER TABLE `Hotel`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53699;

--
-- AUTO_INCREMENT pour la table `Itineraire`
--
ALTER TABLE `Itineraire`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8354268;

--
-- AUTO_INCREMENT pour la table `MoyennTransport`
--
ALTER TABLE `MoyennTransport`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45369;

--
-- AUTO_INCREMENT pour la table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191213;

--
-- AUTO_INCREMENT pour la table `SiteTouristique`
--
ALTER TABLE `SiteTouristique`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39813;

--
-- AUTO_INCREMENT pour la table `SocieteLocal`
--
ALTER TABLE `SocieteLocal`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6713;

--
-- AUTO_INCREMENT pour la table `Vehicule`
--
ALTER TABLE `Vehicule`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98002;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
