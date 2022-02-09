-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 02 fév. 2022 à 14:31
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `coffee_wars`
--

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `ID` int(10) NOT NULL,
  `intitule_question` text NOT NULL,
  `ID_type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`ID`, `intitule_question`, `ID_type`) VALUES
(1, 'Qu\'est-ce qu\'Apache ?', 4),
(2, 'Qui est la directrice actuelle (2021) d\'Interface3 ?', 5),
(3, 'Quelle est la balise pour changer la couleur du texte ?', 1),
(4, 'Quel langage est fortement typé ?', 2),
(5, 'Comment s\'appelle le présentateur de \"Tout le monde veut prendre sa place\" ?', 6),
(6, 'Quel est le langage de prédilection des Game developers ?', 3),
(122, 'Quel est le doctype d\'un document HTML5 ?', 1),
(123, 'Quelle est la syntaxe pour déclarer l\'encodage des caractères du document en UTF-8 ?', 1),
(124, 'Quelle balise de section permet de regrouper un contenu tangentiel au contenu principal du document ?', 1),
(125, 'À partir de quelle version d\'Internet Explorer peut-on utiliser nativement les éléments de section HTML5 (sans hack ou script complémentaire) ?', 1),
(126, 'Quelle est la méthode pour associer une légende complète à une illustration ?', 1),
(127, 'Quel attribut permet d\'afficher une image par défaut pour l\'élément <video> ?', 1),
(128, 'Quelle balise doit permettre l\'inclusion de sous-titres textes dans les vidéos lues avec <video> ?', 1),
(129, 'Comment associer une liste de choix/suggestions à un champ d\'entrée texte ?', 1),
(130, 'La balise <time> permet de baliser une date structurée. Quelle serait sa syntaxe pour le 1er avril 2012 à 13h37 ?', 1),
(131, 'Comment représenter une barre de progression à 50% d\'avancement ?', 1),
(132, 'Que signifie PHP ?', 1),
(133, 'Quelle fonction retourne la longueur d\'une chaîne de texte ?', 1),
(134, 'Comment accède-t-on au 1er élément chaton dans le tableau suivant : $tableau = Array(\'chaton\', \'ornithorynque\', \'dauphin\'); ?', 1),
(135, 'Comment vérifie-t-on l\'égalité de deux variables : $a et $b ?', 1),
(136, 'Quelle est l\'utilité de l\'opérateur || ?', 1),
(137, 'Quelles valeurs peut prendre le type booléen ?', 1),
(138, 'La boucle for ($i=0; $i <=3; $i++) { echo $i;}...', 1),
(139, 'Sachant que $a = 4. Quelle instruction affiche : 4 = quatre ?', 1),
(140, 'Sachant que $dodo = 6. Quelle est la valeur de ma nuit : $dodo += 2; ?', 1),
(141, 'Dans le cas d\'envoi d\'informations plus ou moins sensibles par formulaire, quelle méthode utilisera-t-ton de préférence ?', 1),
(142, 'Soit un conteneur \"div\" auquel on veut donner une largeur *visible* totale de 76 px. Avec quel style obtiendra-t-on ce résultat ? Note : le modèle de boîte standard des CSS est bien sûr', 1),
(143, 'Comment faire pour qu\'une div prenne toute la largeur disponible dans le bloc conteneur ?', 1),
(144, 'Dans quel ordre doit-on placer, dans le code HTML, deux éléments que l\'on veut placer côte à côte, en sachant qu\'un seul de ces éléments sera flottant ?', 1),
(145, 'Le positionnement relatif (position: relative)...', 1),
(146, 'Où se placera un élément positionné en absolu (position: absolute) avec left: 100px ?', 1),
(147, 'Après une image flottante à droite (float: right;), on place un titre h2. Comment être sûr.e qu\'il se placera en dessous de l\'image flottante ?', 1),
(148, 'Comment déclarer une puce image au mieux ?', 1),
(149, 'Comment peut-on figer la taille des caractères pour être sûr.e d\'avoir exactement le même rendu partout ?', 1),
(150, 'Quelle est la méthode conseillée pour limiter l\'application d\'une ou plusieurs règles CSS ? Internet Explorer 6 ?', 1),
(151, 'Si j\'écris a:active {color: red;} dans ma feuille de style, quels liens seront de couleur rouge ?', 1),
(152, 'Quel est le rapport entre Java et JavaScript ?', 2),
(153, 'Laquelle de ces syntaxes est correcte ?', 2),
(154, 'Quel attribut des noeuds de l\'arbre DOM correspond à l\'attribut (X)HTML class ?', 2),
(155, 'Dans un fichier JavaScript externe (.js), il faut :', 2),
(156, 'Lequel de ces types d\'événements n\'existe pas ?', 2),
(157, 'Quelle méthode n\'existe pas dans le DOM ?', 2),
(158, 'Laquelle de ces propositions est un nom de variable en JavaScript ?', 2),
(159, 'Dans une boucle, l\'instruction \"continue\" permet de :', 2),
(160, 'var iNum = 12; iNum %= 2; À la suite de cette expression, combien vaut iNum ?', 2),
(161, 'Quelle méthode permet de comparer deux chaînes texte ?', 2),
(162, 'Quelle fonction retourne le nombre de secondes écoulées depuis le 1er janvier 1970 ?', 2),
(163, 'Quelle instruction permet d\'ouvrir un fichier en écriture afin d\'ajouter des données à la fin de son contenu ?', 2),
(164, 'Quelle fonction retire un élément de la fin d\'un tableau ?', 2),
(165, 'Quelle fonction permet d\'envoyer des en-têtes HTTP au navigateur avant le contenu de la page ?', 2),
(166, 'Dans quel tableau de données retrouve-t-on les cookies du visiteur ?', 2),
(167, 'Quelle fonction permet de lire le résultat d\'une ressource MySQL renvoyée par mysql_query() ?', 2),
(168, 'Quelle fonction permet d\'effacer un fichier ?', 2),
(169, 'Comment peut-on trier un tableau en ordre inverse ?', 2),
(170, 'Comment définit-on une constante ?', 2),
(171, 'Quelle instruction n\'est pas le nom d\'une fonction ?', 2),
(172, 'Quelle est l\'utilité principale des variables ?', 2),
(173, 'Quels sont les 4 principaux types de variables en C# ?', 2),
(174, 'Quel est le contenu d\'une variable string ?', 2),
(175, 'Parmi ces propositions, laquelle possède la syntaxe d\'une variable ?', 2),
(176, 'Quels sont les deux principaux modificateurs d\'accès ?', 2),
(177, 'Il est interdit d\'utiliser des caractères spéciaux dans les noms de variables ($, ?, =, etc.) mais il est recommandé d\'utiliser des accents dès que possible', 2),
(178, 'Quelle est l\'utilité des boucles ?', 2),
(179, 'Parmi ces quatre propositions, laquelle n\'est pas une boucle ?', 2),
(180, 'Parmi ces trois propositions, laquelle correspond à une boucle for() ?', 2),
(181, 'Quelle expression permet de sortir d\'une boucle mais de continuer à exécuter le code se trouvant après la boucle ?', 2),
(182, 'Qu\'est-ce qu\'un GameObject (soyez précis.e) ?', 3),
(183, 'Qu\'est-ce qu\'un component ?', 3),
(184, 'Quel est le nom du component ajouté automatiquement et toujours présent ?', 3),
(185, 'Le component \"Rigidbody\" est-il un GameObject ?', 3),
(186, 'Qu\'est-ce qu\'une prefab ?', 3),
(187, 'Les scripts (MonoBehaviour) peuvent-ils être ajoutés comme des components ?', 3),
(188, 'Quelle action réalise l\'expression \"SetActive(false);\" ?', 3),
(189, 'Quelle action réalise le code suivant : DestroyGameObject.Find(\"Player\"), 3f); ?', 3),
(190, 'Parmi ces quatre propositions, laquelle n\'est pas une boucle ?', 3),
(191, 'Quelle expression permet de sortir d\'une boucle mais de continuer à exécuter le code se trouvant après la boucle ?', 3),
(192, 'Peut-on multiplier des chaînes de caractères comme on multiplie des nombres ?', 3),
(193, 'A quoi servent les triples apostrophes en Python ?', 3),
(194, 'En quoi consiste le typage dynamique ?', 3),
(195, 'On souhaite créer une \"liste_fruits\", quelle est la bonne syntaxe parmi les suivantes ?', 3),
(196, 'Contrairement au langage C, le langage Python est un langage interprété à typage dynamique', 3),
(197, 'Le langage Python s\'exécute grâce au compilateur Python qui analyse le code et génère un exécutable', 3),
(198, 'Quel mot-clé permet de définir une boucle itérative en Python ?', 3),
(199, 'Pour que la variable i prenne les valeurs entre 5 et 10, on utilise l\'instruction :', 3),
(200, 'En programmation quand utilise-t-on une boucle ?', 3),
(201, 'Est-ce qu\'Internet est un réseau informatique ?', 4),
(202, 'Quel est le nom des connecteurs réseau ?', 4),
(203, 'Combien de fils peuvent être câblés dans un câble réseau ?', 4),
(204, 'Peut-on relier directement 2 PC avec un câble réseau ?', 4),
(205, 'Qu\'est-ce qu\'un commutateur ?', 4),
(206, 'Peut-on relier Windows, Mac OS et Linux sur un même réseau ?', 4),
(207, 'Pour faire communiquer deux PC avec les IP 192.168.0.1 et 172.10.0.23, je dois utiliser :', 4),
(208, 'Peut-on faire démarrer un PC par le réseau ?', 4),
(209, 'Qu\'est-ce qu\'une adresse MAC ?', 4),
(210, 'Peut-on faire un ping vers un site web ?', 4),
(211, 'De combien de ports de communication dispose un PC ?', 4),
(212, 'Le VPN permet :', 4),
(213, 'Existe-t-il des cartes réseau USB ?', 4),
(214, 'Quelle typologie physique n\'existe pas ?', 4),
(215, 'On peut se faire infecter par un virus :', 4),
(216, 'En quelle année a été fondé Interface3 ?', 5),
(217, 'Comment se prénomme notre directrice ?', 5),
(218, 'Quelle est la devise d\'Interface3 ?', 5),
(219, 'En 2020, Interface3 a été élu :', 5),
(220, 'Combien de femmes ont été accueillies chez Interface3 en 2017 ?', 5),
(221, 'Combien de métiers IT sont proposés chez Interface3 ?', 5),
(222, 'Combien de coachs sont les heureux propriétaires de chat(s) ?', 5),
(223, 'Combien d\'heures de formation ont été dispensées chez Interface3 en 2017 ?', 5),
(224, 'Combien de personnes compte le staff d\'Interface3 ?', 5),
(225, 'Combien de modules d\'orientation sont organisés chaque année ?', 5),
(226, 'De quel courant philosophique Plotin est-il le grand représentant ?', 6),
(227, 'Qui a réalisé le film \"In the mood for love\" ?', 6),
(228, 'Parmi les hommes politiques suivants, lequel a succédé à Hugo Chavez en tant que Président du Venezuela ?', 6),
(229, 'De l\'oeuvre de quel écrivain est tirée la célèbre question \"Que sais-je ?\"', 6),
(230, 'Quelle année retient-on habituellement comme l\'année de la chute de l\'Empire romain d\'Occident ?', 6),
(231, 'Quelle race d\'animal est un briard ?', 6),
(232, 'Où est né Mozart ?', 6),
(233, 'Combien d\'états fédérés (Lander) l\'Allemagne compte-t-elle ?', 6),
(234, 'Que signifie \"procrastiner\" ?', 6),
(235, 'Quelle théorie doit-on à Isaac Newton ?', 6),
(236, 'Qui a démocratisé la fameuse tarte Tatin ?', 6),
(237, 'Quelle est, à ce jour, la plus grande catastrophe nucléaire de l\'histoire de l\'humanité ?', 6),
(238, 'Choisissez la bonne orthograhe ?', 6),
(239, 'Quel film détient aujourd\'hui le plus gros succès mondial au box-office ?', 6),
(240, 'Quelle est la capitale économique de la Suisse ?', 6),
(241, 'Quel.le chanteur.se est l\'interprète de \"Shape Of You\", sorti en 2017 ?', 6),
(242, 'Quel.le illustre écrivain.e a dit : \"Mieux vaut mourir incompris que passer sa vie à s\'expliquer\" ?', 6),
(243, 'Quelle série des années 2000 raconte les déboires d\'un adolescent qui rêve de devenir un jour un grand réalisateur ?', 6),
(244, 'Contrairement à l\'imaginaire collectif, laquelle de ces propositions est un fruit ?', 6),
(245, 'Comment surnomme-t-on la première femme préhistorique ?', 6),
(246, 'A quel peintre attribue-t-on l\'\"Origine du Monde\" ?', 6);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `ID` int(11) NOT NULL,
  `intitule_reponse` varchar(150) NOT NULL,
  `ID_question` int(11) NOT NULL,
  `resultat` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`ID`, `intitule_reponse`, `ID_question`, `resultat`) VALUES
(3, 'Un langage de programmation', 1, 0),
(4, 'Françoise Delaethe', 2, 0),
(5, 'Annie Cordy', 2, 0),
(6, 'Laure Lemaire', 2, 1),
(7, 'text-color', 3, 0),
(8, 'color', 3, 1),
(9, 'coloration', 3, 0),
(10, 'Python', 4, 0),
(11, 'C#', 4, 1),
(12, 'JavaScript', 4, 0),
(13, 'Cyril', 5, 0),
(14, 'Christophe', 5, 0),
(15, 'Nagui', 5, 1),
(16, 'Unity', 6, 1),
(17, 'JavaScript', 6, 0),
(18, 'Java', 6, 0),
(296, '<!DOCTYPE html5>', 122, 0),
(297, '<!DOCTYPE html>', 122, 1),
(298, '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML5.0 Strict//EN\">', 122, 0),
(299, '<meta encoding=\"text/html; charset=utf-8\">', 123, 0),
(300, '<meta charset=\"text/html; UTF-8\">', 123, 0),
(301, '<meta charset=\"utf-8\">', 123, 1),
(302, '<section id=\"sidebar\">', 124, 0),
(303, '<sidebar>', 124, 0),
(304, '<aside>', 124, 1),
(305, 'Internet Explorer 8', 125, 0),
(306, 'Internet Explorer 9', 125, 1),
(307, 'Internet Explorer 10', 125, 0),
(308, '<figure><img src=\"image.jpg\"><figcaption>La légende...</figcaption></figure>', 126, 1),
(309, '<figure src=\"image.jpg\" legend=\"#cap1\"></figure><figcaption id=\"cap1\">La légende...</figcaption>', 126, 0),
(310, '<figure><legend>La légende...</legend><img src=\"image.jpg\"></figure>', 126, 0),
(311, '<video preview=\"apercu.jpg\">', 127, 0),
(312, '<video><param name=\"thumbnail\" value=\"apercu.jpg\" /></video>', 127, 0),
(313, '<video poster=\"apercu.jpg\">', 127, 1),
(314, '<track src=\"soustitres.vtt\">', 128, 1),
(315, '<subtitle source=\"soustitres.srt\">', 128, 0),
(316, '<captions source=\"soustitres.srt\">', 128, 0),
(317, '<input datalist=\"fruits\"><list id=\"fruits\"><option value=\"Kiwi\"><option value=\"Orange\"><option value=\"Mangue\"></list>', 129, 0),
(318, '<input list=\"fruits\"><datalist id=\"fruits\"><option>Kiwi</option><option>Orange</option><option>Mangue</option></datalist>', 129, 1),
(319, '<input list=\"fruits\"><select><datalist id=\"fruits\" values=\"Kiwi,Orange,Mangue\" /></select>', 129, 0),
(320, '<time datetime=\"2012-04-01T13:37:00Z\"></time>', 130, 1),
(321, '<time value=\"2012-04-01 13:37\"></time>', 130, 0),
(322, '<time datetime=\"01/04/2012 13H37M00S\"></time>', 130, 0),
(323, '<progress value=\"50\" max=\"100\">50%</progress>', 131, 1),
(324, '<input type=\"progress\" value=\"0.5\">50%</progress>', 131, 0),
(325, '<input type=\"progress\" value=\"50\" max=\"100\" title=\"50%\" />', 131, 0),
(326, 'Page Helper Process', 132, 0),
(327, 'Programming Home Pages', 132, 0),
(328, 'PHP: Hypertext Preprocessor', 132, 1),
(329, 'strlen', 133, 1),
(330, 'strlength', 133, 0),
(331, 'length', 133, 0),
(332, '$tableau[1]', 134, 0),
(333, '$tableau[0]', 134, 1),
(334, '$tableau.get(1)', 134, 0),
(335, '$a = $b', 135, 0),
(336, '$a == $b', 135, 1),
(337, '$a != $b', 135, 0),
(338, 'Il sert à vérifier que toutes les conditions sont réalisées.', 136, 0),
(339, 'Il sert à vérifier qu\'une, et une seule, des conditions est réalisée.', 136, 0),
(340, 'Il sert à vérifier qu\'une, au moins, des conditions est réalisée.', 136, 1),
(341, '0 ou 1', 137, 0),
(342, 'TRUE ou FALSE', 137, 1),
(343, 'Toutes sont NULL', 137, 0),
(344, 'Sera exécutée 2 fois', 138, 0),
(345, 'Sera exécutée 3 fois', 138, 0),
(346, 'Sera exécutée 4 fois', 138, 1),
(347, 'echo \'$a = quatre\';', 139, 0),
(348, 'echo \'$a = 2+2\';', 139, 0),
(349, 'echo \"$a = quatre\";', 139, 1),
(350, '3', 140, 0),
(351, '8', 140, 1),
(352, '12', 140, 0),
(353, 'get', 141, 0),
(354, 'mailto', 141, 0),
(355, 'post', 141, 1),
(356, 'div {width: 740px; padding: 1em; border-width: 0; margin: 0;}', 142, 0),
(357, 'div {width: 720px; padding: 5px; border-width: 5px; margin: 10px;}', 142, 0),
(358, 'div {width: 700px; padding: 29px; border-width: 1px; margin: 0;}', 142, 1),
(359, 'div {width: 100%; padding: 10%;}', 143, 0),
(360, 'div {width: 80%; padding: 10%;}', 143, 0),
(361, 'C\'est automatique, pas besoin de spécifier une largeur.', 143, 1),
(362, 'L\'élément non flottant d\'abord, puis l\'élément flottant.', 144, 0),
(363, 'L\'élément flottant d\'abord, puis l\'élément non flottant.', 144, 1),
(364, 'Peu importe l\'ordre, il n\'y aura pas de différence.', 144, 0),
(365, 'permet de positionner un élément par rapport aux limites de son élément parent;', 145, 0),
(366, 'permet de décaler un élément A par rapport à sa position \"normale\", en flux.', 145, 1),
(367, 'permet d\'appliquer la théorie de la relativité générale ET la théorie de la relativité restreinte à une mise en page.', 145, 0),
(368, 'À 100px du bord gauche de l\'élément body.', 146, 0),
(369, 'À 100px du bord gauche de son élément parent.', 146, 0),
(370, 'À 100px du bord gauche de son plus proche ancêtre positionné.', 146, 1),
(371, 'img {clear: left;}', 147, 0),
(372, 'h2 {clear: left;}', 147, 0),
(373, 'h2 {clear: right;}', 147, 1),
(374, 'li {image: url(image.png);}', 148, 0),
(375, 'li {list-style-type: disc; list-style-image: url(image.png);}', 148, 1),
(376, 'li {list-style-image: url(image.png);}', 148, 0),
(377, 'En précisant des tailles de police en EM (ex : font-size: 0.8em).', 149, 0),
(378, 'Avec des tailles de police en pixels ou en points.', 149, 0),
(379, 'On ne peut pas figer la taille des caractères pour être sûr d\'avoir exactement le même rendu partout. C\'est impossible.', 149, 1),
(380, 'La préfixation du sélecteur par \"* html\".', 150, 0),
(381, 'La préfixation du sélecteur par \"html > body\".', 150, 0),
(382, 'Aucune des solutions précédentes.', 150, 1),
(383, 'les liens pointant vers des pages mises à jour régulièrement.', 151, 0),
(384, 'les liens pointant vers la page en cours (par exemple dans un menu de navigation).', 151, 0),
(385, 'n\'importe quel lien de la page, mais uniquement au moment où on clique sur ce lien.', 151, 1),
(386, 'n\'importe quel lien de la page, mais uniquement au moment où on clique sur ce lien.', 152, 0),
(387, 'Ce sont deux langages différents, malgré quelques points communs dans la syntaxe.', 152, 1),
(388, 'Java est une version améliorée de JavaScript.', 152, 0),
(389, 'if (a != 2) {}', 153, 1),
(390, 'if a != 2 {}', 153, 0),
(391, 'if (a <> 2) {}', 153, 0),
(392, 'class', 154, 0),
(393, 'CLASS', 154, 0),
(394, 'className', 154, 1),
(395, 'entourer le code avec les balises <script> et </script>.', 155, 0),
(396, 'préciser l’encodage du fichier avec la règle @charset.', 155, 0),
(397, 'Aucune des réponses précédentes.', 155, 1),
(398, 'blur', 156, 0),
(399, 'mouseclick', 156, 1),
(400, 'mouseout', 156, 0),
(401, 'document.getElementsByClassName', 157, 0),
(402, 'document.getElementsByTagName', 157, 0),
(403, 'document.getElementsByAttribute', 157, 1),
(404, 'var', 158, 0),
(405, '2a', 158, 0),
(406, '$b', 158, 1),
(407, 'continuer l\'exécution du code après la boucle.', 159, 0),
(408, 'passer à l\'itération suivante.', 159, 1),
(409, 'revenir au début de l\'itération courante.', 159, 0),
(410, '6', 160, 0),
(411, '0.12', 160, 0),
(412, '0', 160, 1),
(413, 'charAt()', 161, 0),
(414, 'indexOf()', 161, 0),
(415, 'localeCompare()', 161, 1),
(416, 'time', 162, 1),
(417, 'timestamp', 162, 0),
(418, 'mktime', 162, 0),
(419, 'fopen(\"fichier\",\"r+\")', 163, 0),
(420, 'fopen(\"fichier\",\"w\")', 163, 0),
(421, 'fopen(\"fichier\",\"a\")', 163, 1),
(422, 'array_splice()', 164, 0),
(423, 'array_pop()', 164, 1),
(424, 'array_pad()', 164, 0),
(425, 'parse_url()', 165, 0),
(426, 'http_post()', 165, 0),
(427, 'header()', 165, 1),
(428, '$COOKIES', 166, 0),
(429, '$HTTP_COOKIES', 166, 0),
(430, '$_COOKIE', 166, 1),
(431, 'mysql_fetch_row()', 167, 1),
(432, 'mysql_data_seek()', 167, 0),
(433, 'mysql_affected_rows()', 167, 0),
(434, 'delete()', 168, 0),
(435, 'unlink()', 168, 1),
(436, 'remove()', 168, 0),
(437, '$tableau = ksort($tableau);', 169, 0),
(438, '$tableau = rsort($tableau);', 169, 0),
(439, 'rsort($tableau);', 169, 1),
(440, 'set(\'maconstante\' = \'valeur\');', 170, 0),
(441, 'define(\"maconstante\",\"valeur\");', 170, 1),
(442, 'const $maconstante = valeur;', 170, 0),
(443, 'exit', 171, 1),
(444, 'print_r', 171, 0),
(445, 'define', 171, 0),
(446, 'Effectuer des actions.', 172, 0),
(447, 'Stocker des données.', 172, 1),
(448, 'Apporter de meilleurs graphismes.', 172, 0),
(449, 'mint, float, raycast, string', 173, 0),
(450, 'int, boat, collider, string', 173, 0),
(451, 'int, float, bool, string', 173, 1),
(452, 'Une chaîne de caractères', 174, 1),
(453, 'Une fonction', 174, 0),
(454, 'Une classe', 174, 0),
(455, 'int public NomDeLaVariable;', 175, 0),
(456, 'public int NomDeLaVariable;', 175, 1),
(457, 'NomDeLaVariable int public;', 175, 0),
(458, 'forbidden et authorized', 176, 0),
(459, 'public et private', 176, 1),
(460, 'free et reserved', 176, 0),
(461, 'Vrai', 177, 0),
(462, 'Faux', 177, 1),
(463, 'Elles permettent de faire tourner des objets.', 178, 0),
(464, 'Elles permettent d\'exécuter du code de façon répétée.', 178, 1),
(465, 'Elles permettent de mettre fin à l\'exécution un script.', 178, 0),
(466, 'DoWhile()', 179, 0),
(467, 'AsLong()', 179, 1),
(468, 'ForEach()', 179, 0),
(469, 'for(i < maInt; i--; int i = 0){...}', 180, 0),
(470, 'int(for i -= 1; i > maInt; i = 0){...}', 180, 0),
(471, 'for(int i = 0; i < maInt; i++){...}', 180, 1),
(472, 'stop;', 181, 0),
(473, 'end;', 181, 0),
(474, 'break;', 181, 1),
(475, 'Un objet présent dans une scène', 182, 1),
(476, 'Un élement de UI', 182, 0),
(477, 'Un modèle 3D', 182, 0),
(478, 'Un plugin du logiciel Unity3D', 183, 0),
(479, 'Un script téléchargé sur Internet', 183, 0),
(480, 'Un élément attaché à un GameObject', 183, 1),
(481, 'Transform', 184, 1),
(482, 'Collider', 184, 0),
(483, 'ScriptGenerator', 184, 0),
(484, 'Non, le component Rigidbody n\'est pas un GameObject.', 185, 1),
(485, 'Oui, le component Rigidbody est un GameObject.', 185, 0),
(486, 'Un template réutilisable sur Unity', 186, 1),
(487, 'Une image réalisée sur un logiciel comme Photoshop', 186, 0),
(488, 'Un modèle 3D réalisé sur Blender', 186, 0),
(489, 'Oui, les scripts sont des components.', 187, 1),
(490, 'Non, les scripts ne sont pas des components !', 187, 0),
(491, 'Elle permet d\'afficher un objet.', 188, 0),
(492, 'Elle permet de désactiver un objet.', 188, 1),
(493, 'Elle permet de détruire définitivement un objet.', 188, 0),
(494, 'Il supprime l\'objet \"Player\" après 3 secondes.', 189, 0),
(495, 'Il supprime uniquement les components de l\'objet \"Player\" après 3 secondes.', 189, 1),
(496, 'Il efface la scène où se trouve l\'objet \"Player\".', 189, 0),
(497, 'DoWhile()', 190, 0),
(498, 'AsLong()', 190, 1),
(499, 'ForEach()', 190, 0),
(500, 'stop;', 191, 0),
(501, 'return;', 191, 0),
(502, 'break;', 191, 1),
(503, 'Oui', 192, 0),
(504, 'Non', 192, 1),
(505, 'Pour les longues phrases de plus de 256 mots.', 193, 0),
(506, 'Pour les phrases sur plusieurs lignes.', 193, 1),
(507, 'Ça n\'existe pas en Python.', 193, 0),
(508, 'Ça consiste à définir le type de la variable en fonction de la valeur.', 194, 1),
(509, 'Ça consiste à utiliser la fonction type(var) pour une variable nommée \"var\".', 194, 0),
(510, 'Ça consiste à pouvoir changer de type peu importe la valeur utilisée.', 194, 0),
(511, 'liste_fruits = (\"orange\", \"pomme\", \"poire\")', 195, 0),
(512, 'liste_fruits = [orange, pomme, poire]', 195, 0),
(513, 'liste_fruits = [\"orange\", \"pomme\", \"poire\"]', 195, 1),
(514, 'Vrai', 196, 1),
(515, 'Faux', 196, 0),
(516, 'Faux', 197, 1),
(517, 'Vrai', 197, 0),
(518, 'for', 198, 1),
(519, 'if', 198, 0),
(520, 'while', 198, 0),
(521, 'for i in range(10)', 199, 0),
(522, 'for i in range(5,11)', 199, 1),
(523, 'for i in range(5,10)', 199, 0),
(524, 'Pour effectuer des instructions de manière répétée.', 200, 1),
(525, 'Pour afficher quelque chose.', 200, 0),
(526, 'Pour calculer un arrondi.', 200, 0),
(527, 'Oui', 201, 1),
(528, 'Non', 201, 0),
(529, 'Partiellement', 201, 0),
(530, 'RJ11', 202, 0),
(531, 'RJ45', 202, 1),
(532, 'RJ21', 202, 0),
(533, '4', 203, 0),
(534, '6', 203, 0),
(535, '8', 203, 1),
(536, 'Oui', 204, 1),
(537, 'Non', 204, 0),
(538, 'Un switch', 205, 1),
(539, 'Un routeur', 205, 0),
(540, 'Un modem', 205, 0),
(541, 'Oui', 206, 1),
(542, 'Oui, mais uniquement en filaire', 206, 0),
(543, 'Oui, mais uniquement en Wifi', 206, 0),
(544, 'Un modem', 207, 0),
(545, 'Un routeur', 207, 1),
(546, 'Un switch', 207, 0),
(547, 'Oui', 208, 1),
(548, 'Non', 208, 0),
(549, 'Non mais on peut l\'arrêter.', 208, 0),
(550, 'Un identifiant attribué lors de la connexion au réseau.', 209, 0),
(551, 'Un identifiant attribué lors de la fabrication d\'une carte réseau.', 209, 1),
(552, 'Une adresse IP compatible avec Mac OS.', 209, 0),
(553, 'Oui', 210, 1),
(554, 'Non', 210, 0),
(555, '512', 211, 0),
(556, '1024', 211, 0),
(557, '65535', 211, 1),
(558, 'De relier 2 réseaux distants.', 212, 0),
(559, 'De relier 2 PC distants.', 212, 0),
(560, 'Les deux propositions ci-dessus.', 212, 1),
(561, 'Oui', 213, 1),
(562, 'Non', 213, 0),
(563, 'Pour les équipements de types imprimantes, scanners uniquement', 213, 0),
(564, 'Etoile', 214, 0),
(565, 'Bus', 214, 0),
(566, 'LAN', 214, 1),
(567, 'En allant sur un site web.', 215, 1),
(568, 'En regardant un film.', 215, 0),
(569, 'En jouant au solitaire.', 215, 0),
(570, '1983', 216, 0),
(571, '1984', 216, 1),
(572, '1985', 216, 0),
(573, 'Laura Lemaire', 217, 0),
(574, 'Laure Lemeire', 217, 0),
(575, 'Laure Lemaire', 217, 1),
(576, 'L\'informatique au masculin', 218, 0),
(577, 'L\'informatique au féminin', 218, 1),
(578, 'Le féminin à l\'informatique', 218, 0),
(579, 'Job Changer', 219, 0),
(580, 'Life Changer', 219, 0),
(581, 'Game Changer', 219, 1),
(582, '3', 220, 0),
(583, 'Plus de 621', 220, 0),
(584, 'Plus de 626', 220, 1),
(585, '5', 221, 1),
(586, '4', 221, 0),
(587, '6', 221, 0),
(588, '1', 222, 1),
(589, '2', 222, 0),
(590, '3', 222, 0),
(591, 'Plus de 179.000 heures/stagiaire', 223, 1),
(592, 'Plus de 180.000 heures/stagiaire', 223, 0),
(593, 'Plus de 181.000 heures/stagiaire', 223, 0),
(594, '31', 224, 0),
(595, '30', 224, 1),
(596, '29', 224, 0),
(597, '5', 225, 0),
(598, '4', 225, 1),
(599, '6', 225, 0),
(600, 'Le néoplatonisme', 226, 1),
(601, 'L\'aristotélisme', 226, 0),
(602, 'Le scepticisme', 226, 0),
(603, 'Zhang Yimou', 227, 0),
(604, 'Chan Feng Zhao', 227, 0),
(605, 'Wong Kar-Wai', 227, 1),
(606, 'Nicolas Maduro', 228, 1),
(607, 'Evo Morales', 228, 0),
(608, 'Lula', 228, 0),
(609, 'Étienne de la Boétie', 229, 0),
(610, 'Montaigne', 229, 1),
(611, 'Diderot', 229, 0),
(612, '476 ap. J.-C.', 230, 1),
(613, '410 ap. J.-C.', 230, 0),
(614, '496 ap. J.-C.', 230, 0),
(615, 'Un chat', 231, 0),
(616, 'Un canard', 231, 0),
(617, 'Un chien', 231, 1),
(618, 'Vienne', 232, 0),
(619, 'Venise', 232, 0),
(620, 'Salzbourg', 232, 1),
(621, '8', 233, 0),
(622, '16', 233, 1),
(623, '24', 233, 0),
(624, 'Remettre à plus tard.', 234, 1),
(625, 'Contredire systématiquement son interlocut.eur.rice.', 234, 0),
(626, 'Parler un langage particulièrement vulgaire.', 234, 0),
(627, 'La théorie des cordes', 235, 0),
(628, 'La théorie de la gravitation universelle', 235, 1),
(629, 'La théorie de l\'évolution des espèces', 235, 0),
(630, 'Les sœurs Tatin', 236, 1),
(631, 'Tatin père et fils', 236, 0),
(632, 'Les frères Tatin', 236, 0),
(633, 'Fukushima', 237, 0),
(634, 'Tricastin', 237, 0),
(635, 'Tchernobyl', 237, 1),
(636, 'Cyrose', 238, 0),
(637, 'Cirrhose', 238, 1),
(638, 'Cirrose', 238, 0),
(639, 'Avatar', 239, 1),
(640, 'Avengers : Endgame', 239, 0),
(641, 'Titanic', 239, 0),
(642, 'Berne', 240, 0),
(643, 'Zurich', 240, 1),
(644, 'Genève', 240, 0),
(645, 'Adele', 241, 0),
(646, 'Drake', 241, 0),
(647, 'Ed Sheeran', 241, 1),
(648, 'Françoise Sagan', 242, 0),
(649, 'Victor Hugo', 242, 0),
(650, 'William Shakespeare', 242, 1),
(651, 'Newport Beach', 243, 0),
(652, 'Dawson', 243, 1),
(653, 'La Guerre des Stevens', 243, 0),
(654, 'Le haricot vert', 244, 1),
(655, 'La pomme de terre', 244, 0),
(656, 'La carotte', 244, 0),
(657, 'Lucy', 245, 1),
(658, 'Mary', 245, 0),
(659, 'La Dame de Flores', 245, 0),
(660, 'Édouard Manet', 246, 0),
(661, 'Gustave Courbet ', 246, 1),
(662, 'Jean-François Millet', 246, 0);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `ID` int(11) NOT NULL,
  `type_question` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`ID`, `type_question`) VALUES
(1, 'web'),
(2, 'wad'),
(3, 'game'),
(4, 'asr'),
(5, 'interface3'),
(6, 'culture_generale');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_type` (`ID_type`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID_question`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`ID_type`) REFERENCES `types` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_ibfk_1` FOREIGN KEY (`ID_question`) REFERENCES `questions` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
