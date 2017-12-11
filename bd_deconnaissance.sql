-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 11 déc. 2017 à 09:57
-- Version du serveur :  5.5.57-0+deb8u1
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_deconnaissance`
--

-- --------------------------------------------------------

--
-- Structure de la table `cartes`
--

CREATE TABLE `cartes` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `indice` varchar(255) DEFAULT NULL,
  `reponse` varchar(255) NOT NULL,
  `explication` varchar(255) DEFAULT NULL,
  `statut` enum('attente','accepté','rejeté','') NOT NULL DEFAULT 'attente',
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auteur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='questions validées';

--
-- Déchargement des données de la table `cartes`
--

INSERT INTO `cartes` (`id`, `theme`, `question`, `indice`, `reponse`, `explication`, `statut`, `date_creation`, `auteur`) VALUES
(1, 'gastronomie', 'la tarte droguée', 'pâtisserie', 'la tarte opium', 'la tarte aux pommes', 'accepté', '2017-11-05 23:15:52', 'Patrick'),
(2, 'évènement', 'la fête de l\'auteur de l\'Odyssée', 'en mai', 'la fête d\'Homère', 'la fête des mères', 'accepté', '2017-11-05 23:15:52', 'Patrick'),
(3, 'ville', 'tragédie des rongeurs domestiques', 'port hollandais', 'hamster drame', 'Amsterdam', 'accepté', '2017-11-05 23:15:52', 'Patrick'),
(4, 'Chanteur', 'Jeu d\'une variété de poire', 'Happy', 'Marelle Williams', 'Pharell williams', 'accepté', '2017-11-05 23:15:52', 'Patrick'),
(8, 'Gastronomie', 'Une purée par prothèse dentaire', 'Viande et pommes de terre', 'Un hachis par dentier', 'Un hachis parmentier', 'attente', '2017-11-07 07:44:07', 'Patrick'),
(9, 'Gastronomie', 'Wolfgang Amadeus est ici', 'Fromage', 'Mozart est là', 'Mozzarella', 'attente', '2017-11-07 07:45:19', 'Patrick'),
(10, 'Peintre', 'Henri café au lait', 'Le Cateau-Cambrésis', 'Henri métisse', 'Henri Matisse', 'attente', '2017-11-07 07:48:12', 'Patrick'),
(11, 'Ville', 'Le mâle de ta chèvre tousse', 'Mali', 'Ton bouc tousse', 'Tombouctou', 'attente', '2017-11-07 07:49:32', 'Patrick'),
(12, 'Événement historique', 'Papa travaille la terre', 'Victoire japonaise en 194', 'Père laboure', 'Pearl Harbor', 'attente', '2017-11-07 07:51:40', 'Patrick'),
(13, 'Ville', 'Valide vos réserves', 'URSS', 'Valide vos stocks', 'Vladivostok', 'attente', '2017-11-07 07:52:51', 'Patrick'),
(14, 'Homme célèbre', 'Louis pinceau de barbier', 'Aviateur', 'Louis blaireau', 'Louis Blériot', 'attente', '2017-11-07 07:57:02', 'Patrick'),
(15, 'Acteur', 'Christophe le vertébré', 'Le sicilien', 'Christophe lombaire', 'Christophe Lambert', 'attente', '2017-11-07 21:23:43', 'Patrick'),
(16, 'Personnalité T.V.', 'Armand le vaisseau du désert', 'Chiffres et lettres', 'Armand chameau', 'Armand Jammot', 'attente', '2017-11-07 21:27:19', 'Patrick'),
(17, 'Chanteur', 'Gilbert conserves', 'Cravate à pois', 'Gilbert bocaux', 'Gilbert Bécaud', 'attente', '2017-11-07 21:29:19', 'Patrick'),
(18, 'Chanson', 'Le planeur rose', 'Édith Piaf', 'L\'avion rose', 'La vie en rose', 'attente', '2017-11-07 21:30:49', 'Patrick'),
(19, 'Chanteur', 'Le compteur de Mick', 'Rolling Stones', 'Mick Geiger', 'Mick Jagger', 'attente', '2017-11-07 21:32:32', 'Patrick'),
(20, 'Événement historique', 'Bataille dans la piscine avec un ballon', 'Défaite de Napoléon 1er', 'La bataille de water-polo', 'La bataille de Waterloo', 'attente', '2017-11-07 21:34:55', 'Patrick'),
(21, 'Titre de film', 'L\'infusion préférée de Rodin', 'Isabelle Adjani', 'camomille Claudel', 'Camille Claudel', 'attente', '2017-11-07 21:36:50', 'Patrick'),
(22, 'Sportif', 'John proxénète', 'Tennisman coléreux', 'John maquereau', 'John Mac Enroe', 'attente', '2017-11-07 21:42:20', 'Patrick'),
(23, 'Journaliste', 'Jean-Pierre elle fouette son cheval', 'Europe 1', 'Jean-Pierre elle cravache', 'Jean Pierre Elkabbach', 'attente', '2017-11-07 21:44:26', 'Patrick'),
(24, 'Écrivaine', 'Le plantigrade noir de Marguerite', 'Académie Française', 'Marguerite ours noir', 'Marguerite Yourcenar', 'attente', '2017-11-07 21:47:39', 'Patrick'),
(25, 'Chanson', 'Avec le plan d\'eau', 'Léo Ferré', 'Avec l\'étang', 'Avec le temps', 'attente', '2017-11-07 21:50:45', 'Patrick'),
(26, 'Film', 'Qui tombe du chêne bleu', 'Éric Serra', 'Le gland bleu', 'Le grand bleu', 'attente', '2017-11-07 21:52:23', 'Patrick'),
(27, 'Cinéaste', 'Son prénom c\'est sa ville', 'Marius', 'Marseille Pagnol', 'Marcel Pagnol', 'attente', '2017-11-07 21:54:05', 'Patrick'),
(28, 'Spécialité régionale', 'Les images de Popeye', 'Vosges', 'Les images d\'épinard', 'Les images d\'Épinal', 'attente', '2017-11-07 21:56:04', 'Patrick'),
(29, 'Danse', 'Le roi couleur militaire', 'Zorba le Grec', 'Le sire kaki', 'Le sirtaki', 'attente', '2017-11-07 21:57:29', 'Patrick'),
(30, 'Vêtement', 'Fruit de mer vert', 'Chandail', 'Bulot vert', 'Pull-over', 'attente', '2017-11-07 21:58:41', 'Patrick'),
(31, 'sportif', 'mets de l\'air dans ton bain de vapeur', 'automobile', 'aère ton sauna', 'Aerton Senna', 'attente', '2017-11-09 17:29:16', 'Patrick'),
(32, 'proverbe', 'j\'étais amoureux d\'un vieux gendarme en moto', 'agissez au lieu de ne rien faire', 'vieux motard que j\'aimais', 'mieux vaut tard que jamais', 'attente', '2017-11-09 17:31:40', 'Patrick'),
(33, 'peintre', 'félin qui se transforme en lame', 'la Joconde', 'léopard devint scie', 'Léonard de Vinci', 'attente', '2017-11-09 17:36:01', 'Patrick'),
(34, 'personnage de BD', 'le capitaine rock dur', 'Hergé', 'le capitaine hard-rock', 'le capitaine Haddock', 'attente', '2017-11-09 17:36:57', 'Patrick'),
(35, 'actrice', 'Brigitte aliénée', 'bébés phoques', 'Brigitte bargeot', 'Brigitte Bardot', 'attente', '2017-11-09 17:37:49', 'Patrick'),
(36, 'oeuvre littéraire', 'Citroën au pays des merveilles', 'Lewis Carroll', 'A.X. au pays des merveilles', 'Alice aux pays des merveilles', 'attente', '2017-11-09 17:42:39', 'Patrick'),
(37, 'profession', 'pacifiste', 'meubles anciens', 'anti-guerre', 'antiquaire', 'attente', '2017-11-09 17:43:35', 'Patrick'),
(38, 'chanson', 'Bahia au mois de printemps', 'Rita Mitsuko', 'mars à Bahia', 'Marcia Baila', 'attente', '2017-11-09 17:44:27', 'Patrick'),
(39, 'monument', 'le poisson à l\'herbe', 'église du Pape', 'le basilic Saint-Pierre', 'la basilique Saint-Pierre', 'attente', '2017-11-09 17:45:40', 'Patrick'),
(40, 'gastronomie', 'le potage à l\'oncle de Donald', 'spécialisté provençale', 'la soupe au Picsou', 'la soupe au pistou', 'attente', '2017-11-09 17:48:15', 'Patrick'),
(41, 'animal', 'petite roue dentée voyageur', 'messager', 'pignon voyageur', 'pigeon voyageur', 'attente', '2017-11-09 17:50:37', 'Patrick'),
(42, 'géographie', 'le lac qui crawle', 'Italie', 'la lac nageur', 'le lac Majeur', 'attente', '2017-11-09 17:51:13', 'Patrick'),
(43, 'ville', 'grimper rapidement et en hauteur', 'capitale d\'Amérique du Sud', 'monter vite et haut', 'Montévidéo', 'attente', '2017-11-09 17:52:06', 'Patrick'),
(44, 'ville', 'inspecteur de feuilleton et les 2 clochers', 'Général de Gaulle', 'Colombo les 2 églises', 'Colombey les deux Eglises', 'attente', '2017-11-09 17:53:00', 'Patrick'),
(45, 'chanson', 'le mort fait tous les plis au bridge', 'Francis Cabrel', 'chelem à mourir', 'Je l\'aime à mourir', 'attente', '2017-11-09 17:53:43', 'Patrick'),
(46, 'chanteur', 'Bébert le crustacé', 'Pour le plaisir', 'Bébert le homard', 'Herbert Léonard', 'attente', '2017-11-09 17:57:08', 'Patrick'),
(47, 'profession', 'attaché à la région du fromage et du poulet', 'relations publiques', 'attaché de Bresse', 'attaché de presse', 'attente', '2017-11-09 17:58:00', 'Patrick'),
(50, 'chanteur', 'Jules qui nettoie les pare-brises', 'espagnol', 'Julio essuie-glaces', 'Julio Iglesias', 'attente', '2017-11-09 17:58:40', 'Patrick'),
(51, 'film', 'champignons dans le brouillard', 'Sigourney Weaver', 'morilles dans la brume', 'Gorilles dans la brume', 'attente', '2017-11-09 17:59:38', 'Patrick'),
(52, 'meuble', 'costume de chevalier pour les médicaments', 'salle de bain', 'l\'armure à pharmacie', 'l\'armoire à pharmacie', 'attente', '2017-11-09 18:00:44', 'Patrick'),
(53, 'film', 'quelques notes sous la femelle du cochon', 'Gene Kelly', 'chantons sous la truie', 'Chantons sous la pluie', 'attente', '2017-11-09 18:01:38', 'Patrick'),
(54, 'acteurs', 'attention à l\'épouse du fils, Michel', 'Le gendarme de Saint-Tropez', 'Michel gare à la bru', 'Michel Galabru', 'attente', '2017-11-09 18:02:33', 'Patrick'),
(55, 'chanteuse', 'le boulanger a malaxé Julie', 'Maria Magdaléna', 'Julie pétrie', 'Julie Piétri', 'attente', '2017-11-09 18:03:18', 'Patrick'),
(56, 'roman', 'SS dans le RER', 'Raymond Queneau', 'nazi dans le métro', 'Zazie dans le métro', 'attente', '2017-11-09 18:03:51', 'Patrick'),
(57, 'présentateur T.V.', 'les couches culottes de Julien', 'FR3', 'Julien Pampers', 'Julien Lepers', 'attente', '2017-11-09 18:04:28', 'Patrick'),
(58, 'fleur', 'la moitié d\'Amadeus', 'Nice', 'le mi-Mozart', 'le mimosa', 'attente', '2017-11-09 18:10:54', 'Patrick'),
(59, 'sportif', 'la surveillante qui ne voit que d\'un oeil', 'tennis', 'pionne borgne', 'Björn Borg', 'attente', '2017-11-09 18:11:36', 'Patrick'),
(60, 'chanson', 'outils de jardinage, outils de jardinage, outils de jardinage', 'Claude François', 'pelles, pelles, pelles', 'Belles, belles, belles', 'attente', '2017-11-09 18:12:30', 'Patrick'),
(61, 'roman', 'madame ivresse', 'Gustave Flaubert', 'madame beuverie', 'Madame Bovary', 'attente', '2017-11-09 18:13:08', 'Patrick'),
(62, 'anatomie', 'le duo des bonnes soeurs', 'intestin', 'le duo des nonnes', 'le duodénum', 'attente', '2017-11-09 18:13:44', 'Patrick'),
(63, 'personnage historique', 'primate vert célèbre dans l\'histoire', 'Alésia', 'vert singe historique', 'Vercingétorix', 'attente', '2017-11-09 18:14:42', 'Patrick'),
(64, 'chanson', 'la bouteille de spiritueux est vide', 'Sheila', 'l\'alcool est fini', 'L\'école est finie', 'attente', '2017-11-09 18:15:26', 'Patrick'),
(65, 'expression', 'somnoler sur ses deux doigts de pied', 'sommeil tranquille', 'dormir sur ses deux orteils', 'dormir sur ses deux oreilles', 'attente', '2017-11-09 18:16:32', 'Patrick'),
(66, 'géographie', 'serpent serpent', 'île de la Polynésie française', 'boa boa', 'Bora-Bora', 'attente', '2017-11-09 18:17:45', 'Patrick'),
(67, 'lieu', 'dans le tonnelet autour du cou du grand chien des neiges', 'Alpes', 'l\'alcool du grand saint-bernard', 'le col du grand Saint-Bernard', 'attente', '2017-11-09 18:18:55', 'Patrick'),
(68, 'pays', 'moufle bretonne', 'Elisabeth', 'gant de Bretagne', 'Grande-Bretagne', 'attente', '2017-11-09 18:19:42', 'Patrick'),
(69, 'appareil ménager', 'il lave sous les bras', 'propreté', 'le lave aisselles', 'le lave vaisselle', 'attente', '2017-11-09 18:20:17', 'Patrick'),
(70, 'écrivaine', 'Agathe annexe d\'église', 'Miss Marple', 'Agathe sacristie', 'Agatha Christie', 'attente', '2017-11-09 18:21:06', 'Patrick'),
(71, 'chanteur', 'Michel doux empereur de Russie', 'La maladie d\'amour', 'Michel tsar doux', 'Michel Sardoux', 'attente', '2017-11-09 18:21:54', 'Patrick'),
(72, 'gastronomie', 'démange un dos asiatique', 'avec des pommes de terre', 'gratte un dos chinois', 'gratin dauphinois', 'attente', '2017-11-09 18:22:48', 'Patrick'),
(73, 'personnage historique', 'Jules se perd', 'la guerre des Gaules', 'Jules s\'égare', 'Jules César', 'attente', '2017-11-09 22:03:05', 'Patrick'),
(74, 'roman', 'damné stylo', 'baleine', 'maudit Bic', 'Moby Dick', 'attente', '2017-11-09 22:03:47', 'Patrick'),
(75, 'acteur', 'repaire de moyens', 'Taxi driver', 'repaire de mirauds', 'Robert de Niro', 'attente', '2017-11-09 22:04:47', 'Patrick'),
(76, 'acteur', 'Sylvester skie entre les piquets', 'Rambo', 'Sylvester slalome', 'Sylvester Stallone', 'attente', '2017-11-09 22:05:47', 'Patrick'),
(77, 'roman', 'déclivité à outil de plâtrier', 'Rabelais', 'pente à truelle', 'Pantagruel', 'attente', '2017-11-09 22:06:42', 'Patrick'),
(78, 'sérieT.V.', 'les dames au tee-shirt crocodile', 'Nina Companez', 'les dames de Lacoste', 'Les dames de la côte', 'attente', '2017-11-09 22:07:41', 'Patrick'),
(79, 'acteur', 'il est agile Raymond', 'bon sang, mais c\'est bien sur !', 'Raymond souplesse', 'Raymond Souplex', 'attente', '2017-11-09 22:10:38', 'Patrick'),
(80, 'expression ', 'USA et périls', 'tant pis pour moi', 'Amérique et péril', 'à mes risques et périls', 'attente', '2017-11-09 22:11:40', 'Patrick'),
(81, 'peintre', 'Fernand sucé', 'cubiste', 'Fernand léché', 'Fernand Léger', 'attente', '2017-11-09 22:12:29', 'Patrick'),
(82, 'série T.V.', 'tendresse et cour intérieure', 'La Cinq', 'tendresse et patio', 'Tendresse et passion', 'attente', '2017-11-09 22:13:18', 'Patrick'),
(83, 'film', 'ce que Jésus a ressenti en dernier', 'Martin Scorcese', 'la dernière sensation du Christ', 'La dernière tentation du Christ', 'attente', '2017-11-09 22:14:27', 'Patrick'),
(84, 'présentateur T.V.', 'Pascal s\'échange contre de l\'argent', 'La chance aux chansons', 'Pascal se vend', 'Pascal Sevran', 'attente', '2017-11-09 22:15:57', 'Patrick'),
(85, 'série T.V.', 'deux policiers américains qui ont faim', 'Floride', 'deux flics à miam-miam', 'Deux flics à Miami', 'attente', '2017-11-09 22:17:05', 'Patrick'),
(86, 'homme politique', 'ville de Jamaïque pour un V et un cigare', '1er ministre anglais', 'Kingston Churchill', 'Winston Churchill', 'attente', '2017-11-09 22:18:24', 'Patrick'),
(87, 'Profession', 'ingénieur d\'une ville olympique', 'France', 'ingénieur à grenoble', 'ingénieur agronome', 'attente', '2017-11-12 19:51:41', 'Jpz'),
(93, 'Légende ', 'Jojo doit rester couché ', 'R.I.P. canaille ', 'Johnny alité ', 'Johnny Hallyday', 'attente', '2017-12-08 22:46:52', 'Thibo'),
(95, ' Groupe de rock', 'Le magicien anglais du riche roi grec', 'Etre riche comme', 'Crésus wizard', 'The Jesus Lizard', 'attente', '2017-12-10 20:08:27', 'Gwendolise'),
(96, 'Film', 'Le prestidigitateur de fragments de squelette', 'Culture américaine', 'Le magicien d\'os', 'Le magicien d\'Oz', 'attente', '2017-12-10 20:12:45', 'Gwendolise');

-- --------------------------------------------------------

--
-- Structure de la table `stat_visites`
--

CREATE TABLE `stat_visites` (
  `ip_visiteur` varchar(15) NOT NULL,
  `date_visite` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stat_visites`
--

INSERT INTO `stat_visites` (`ip_visiteur`, `date_visite`) VALUES
('77.154.204.19', '2017-11-20'),
('127.0.0.1', '2017-11-19'),
('127.0.0.1', '2017-11-19'),
('127.0.0.1', '2017-11-19'),
('127.0.0.1', '2017-11-18'),
('127.0.0.1', '2017-11-17'),
('127.0.0.1', '2017-11-17'),
('127.0.0.1', '2017-11-17'),
('127.0.0.1', '2017-11-17'),
('127.0.0.1', '2017-11-17'),
('127.0.0.1', '2017-11-16'),
('127.0.0.1', '2017-11-16'),
('127.0.0.1', '2017-11-16'),
('127.0.0.1', '2017-11-16'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('127.0.0.1', '2017-11-15'),
('23.239.8.60', '2017-11-20'),
('205.209.187.76', '2017-11-20'),
('192.168.1.17', '2017-11-20'),
('192.168.1.17', '2017-11-20'),
('92.141.55.122', '2017-11-20'),
('104.236.167.59', '2017-11-20'),
('104.236.154.106', '2017-11-20'),
('139.162.119.197', '2017-11-21'),
('18.195.126.179', '2017-11-21'),
('178.222.189.43', '2017-11-21'),
('121.39.88.19', '2017-11-21'),
('155.94.88.58', '2017-11-21'),
('182.48.105.210', '2017-11-21'),
('185.110.132.232', '2017-11-21'),
('185.210.217.142', '2017-11-21'),
('80.12.38.108', '2017-11-21'),
('78.229.192.245', '2017-11-21'),
('164.132.91.3', '2017-11-21'),
('77.136.43.247', '2017-11-21'),
('66.249.93.21', '2017-11-21'),
('158.85.81.122', '2017-11-21'),
('60.191.38.78', '2017-11-21'),
('192.168.1.17', '2017-11-21'),
('104.236.165.24', '2017-11-22'),
('209.126.136.4', '2017-11-22'),
('93.12.37.172', '2017-11-22'),
('174.138.61.43', '2017-11-22'),
('80.12.34.142', '2017-11-22'),
('80.12.34.142', '2017-11-22'),
('155.94.88.58', '2017-11-22'),
('141.212.122.112', '2017-11-22'),
('122.226.191.79', '2017-11-22'),
('118.163.105.220', '2017-11-22'),
('77.136.85.232', '2017-11-22'),
('80.12.37.90', '2017-11-22'),
('80.12.37.90', '2017-11-22'),
('139.162.108.53', '2017-11-22'),
('88.250.211.201', '2017-11-23'),
('172.104.108.109', '2017-11-23'),
('172.104.108.109', '2017-11-23'),
('54.161.158.255', '2017-11-23'),
('155.94.88.58', '2017-11-23'),
('104.128.144.131', '2017-11-23'),
('80.12.38.230', '2017-11-23'),
('77.136.41.187', '2017-11-24'),
('81.66.49.181', '2017-11-24'),
('88.160.148.44', '2017-11-24'),
('192.168.1.17', '2017-11-25'),
('176.141.242.232', '2017-12-07'),
('82.230.128.214', '2017-12-07'),
('77.136.41.135', '2017-12-08'),
('80.12.34.28', '2017-12-09'),
('92.90.21.113', '2017-12-09'),
('90.1.179.253', '2017-12-09'),
('192.168.1.17', '2017-12-10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cartes`
--
ALTER TABLE `cartes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cartes`
--
ALTER TABLE `cartes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
