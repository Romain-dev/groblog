-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2015 at 09:42 AM
-- Server version: 5.5.44-0ubuntu0.14.10.1
-- PHP Version: 5.5.12-2ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `groblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlAlias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `titre`, `urlAlias`, `content`) VALUES
(1, 'Pourquoi un crossover entre Doctor Who et Sherlock est impossible', 'crossover', '<div class="media">\r\n            <img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/pourquoi-un-crossover-entre-doctor-who-et-sherlock-est-impossible-4263457/77130401-1-fre-FR/Pourquoi-un-crossover-entre-Doctor-Who-et-Sherlock-est-impossible_portrait_w532.jpg" width="532" height="358" style="border: 0px ;">\r\n        </div>\r\n        <div class="bloc_detail_cnt">\r\n            <div class="chapo">\r\n                <p>Le showrunner des deux séries, Steven Moffat, avoue penser souvent à un crossover, mais explique pourquoi ce n''est pas possible.</p>\r\n            </div>\r\n            <div class="contenu">\r\n                <p>Le showrunner <b><a href="http://www.premiere.fr/Star/Steven-Moffat-2523320" target="_self">Steven Moffat</a></b> va faire des déçus. Ses deux séries phares,&nbsp;<i><b><a href="http://series-tv.premiere.fr/Sherlock-2479764" target="_self">Sherlock</a></b></i> et&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i>, ne se croiseront probablement jamais. Il explique cette semaine dans Collider pourquoi l''idée d''un crossover est une fausse bonne idée :</p>\r\n                <p><i>"C''est une question que je me pose souvent, et ma réponse est toujours la même : si un crossover ne poserait pas de problème pour&nbsp;<b>Doctor Who</b>, ça changerait totalement la vie de <b>Sherlock</b>."</i></p>\r\n                <p>&gt;&gt;&gt;&nbsp;<u><a href="http://series-tv.premiere.fr/News-Series/Doctor-Who-depart-rate-pour-la-saison-9-4262393" target="_self"><i><b>Doctor Who</b></i> : départ raté pour la saison 9</a></u></p>\r\n                <p><i>"S''il rencontre le Docteur, qu''il découvre que le Voyage dans le temps est possible, alors il sera obligé d''en tenir compte dans toutes ses enquêtes. Et puis Sherlock Holmes pourrait-il vraiment survivre à une invasion Dalek ? Je ne pense pas. Ça ne se fera pas, c''est juste plus honnête comme ça",</i> conclut <b>Steven Moffat</b>, au risque de décevoir les nombreux fans des deux séries.</p>\r\n            </div>\r\n        </div>'),
(2, 'Doctor Who : Jenna Coleman devrait quitter la série après la saison 9', 'poules', '<div class="media"><span><img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/doctor-who-saison-9-jenna-coleman-annonce-officiellement-son-depart-4261243/77105239-1-fre-FR/Doctor-Who-saison-9-Jenna-Coleman-annonce-officiellement-son-depart_portrait_w532.jpg" width="532" height="335" style="border: 0px ;"></span></div>\r\n<div class="bloc_detail_cnt">\r\n    <div class="chapo">\r\n        <p>Clara et <i>Doctor Who</i>, c''est fini. La jolie camarade du Docteur s''en ira au cours de la saison 9, comme le confirme aujourd''hui l''actrice Jenna Coleman.</p>\r\n    </div>\r\n    <div class="contenu">\r\n        <p>C''est désormais officiel :&nbsp;<b><a href="http://www.premiere.fr/Star/Jenna-Louise-Coleman-3305202" target="_self">Jenna Coleman</a></b> quitte&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i>. La belle brune a confirmé ce matin à la radio anglaise et sur son compte Twitter avoir décidé de partir, pour incarner la Reine Victoria dans une nouvelle série ambitieuse de ITV.</p>\r\n        <p>Son personnage, Clara Oswald, présent dans le show depuis 2012, s''en ira dans les prochains mois, au cours de la saison 9 : <i>"J''ai quitté le TARDIS",</i> a t-elle déclaré au micro de Nick Grimshaw sur la BBC Radio 1.</p>\r\n        <p>&gt;&gt;&gt; <u><a href="http://series-tv.premiere.fr/News-Series/News-Photos/Doctor-Who-saison-9-20-nouvelles-photos-qui-ont-la-classe-4259477" target="_blank"><i><b>Doctor Who</b></i>, saison 9 : 20 nouvelles photos qui ont la classe</a></u></p>\r\n        <p><b>Jenna Coleman</b> a révélé que son départ est planifié depuis plus d''un an et elle a été impliquée pour déterminer le scénario final de Clara : <i>"On a bossé dessus pendant un long moment. Avec <b><a href="http://www.premiere.fr/Star/Steven-Moffat-2523320" target="_self">Steven Moffat</a></b>, on a réfléchi pendant longtemps pour trouver le meilleur moyen de lui faire quitter l''histoire. On ne va pas donner de détails, mais cela va se passer à un certain moment cette saison."</i></p>\r\n        <p>L''actrice anglaise de 29 ans avoue que ses derniers moments sur le plateau ont été très émouvants. <i>"Le TARDIS est un peu comme ma maison, alors oui, j''ai versé une petite larme."</i></p>\r\n        <p>La saison 9 de <i><b>Doctor Who</b></i> débutera ce samedi 19 septembre sur la BBC. En France, la série est diffusée sur France 4.</p>\r\n        &nbsp;<span style="font-size: 0.8em; background-color: #ffffff;"></span>\r\n            <span style="font-size: 0.8em; background-color: #ffffff;">\r\n               <script async="" src="//platform.twitter.com/widgets.js" charset="utf-8"></script>\r\n            </span>\r\n    </div>\r\n</div>'),
(3, 'Doctor Who, saison 9 : le trailer inquiétant de l''épisode 2', 'tata', '<div class="bloc_detail_cnt">\r\n   <div class="chapo"></div>\r\n   <div class="contenu">\r\n      <iframe src="http://www.premiere.fr/jwplayer/embed/4262749/internal" frameborder="0" width="534" height="300"></iframe>\r\n      <p>Malgré un démarrage assez décevant sur la BBC, la saison 9 de&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i>se poursuivra samedi soir, sur la chaîne anglaise, avec "The Witch''s Familiar", un épisode 2 très excitant. Attention spoilers !</p>\r\n      <p>Et pour cause, le retour surprise de Davros (<b><a href="http://www.premiere.fr/Star/Julian-Bleach-1022142" target="_self">Julian Bleach</a></b>), l''ennemi juré historique du Docteur (<b><a href="http://www.premiere.fr/Star/Peter-Capaldi-61488" target="_self">Peter Capaldi</a></b>), dans le season premiere, annonce une suite épique, comme le promet déjà cette bande-annonce (voir ci-dessus).</p>\r\n      <p>Désormais prisonnier et à la merci de Davros, le Docteur semble dans une situation désespérée. Ce sera à voir samedi prochain, dans la suite de la saison 9 de <i><b>Doctor Who</b></i> sur BBC One. En France, la série est diffusée sur France 4.</p>\r\n   </div>\r\n</div>'),
(4, 'Doctor Who : départ raté pour la saison 9', 'tata', '<div class="chapo">\r\n        <p>Grosse déception pour le lancement de la saison 9 de <i>Doctor Who,</i> qui a signé son plus mauvais démarrage depuis bien longtemps.</p>\r\n        <img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/doctor-who-depart-rate-pour-la-saison-9-4262393/77119093-1-fre-FR/Doctor-Who-depart-rate-pour-la-saison-9_portrait_w532.jpg" width="532" height="341" style="border: 0px ;">\r\n    </div>\r\n    <div class="contenu">\r\n        <p>C''était l''événement à télé anglaise, samedi soir. Le premier épisode de la saison 9 de&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i> était diffusé sur la BBC. Mais il n''a pas franchement connu le succès&nbsp;escompté&nbsp;: seuls 4,58&nbsp;millions de téléspectateurs britanniques ont suivi "The Magician Apprentice", soit 2 millions de téléspectateurs de moins que pour l''ouverture de la saison 8, il y a un an (6,79 millions). Une chute brutale de plus de 30%, qui a de quoi interpeller.</p>\r\n        <p>&gt;&gt;&gt;&nbsp;<u><a href="http://series-tv.premiere.fr/News-Series/Doctor-Who-saison-9-Jenna-Coleman-annonce-officiellement-son-depart-4261243" target="_self"><i><b>Doctor Who</b></i>, saison 9 : Jenna Coleman annonce officiellement son départ</a></u></p>\r\n        <p>Surtout lorsqu''on regarde les chiffres des dernières années : en 2012, le Season premiere de <i><b>Doctor Who</b></i> était suivi par 6,38 millions de fans. Ils étaient 6,52 millions en 2011 et plus de 7,6 millions en 2010.</p>\r\n        <p>L''érosion est donc marquée. D''autant que <i><b>Doctor Who</b></i> a été largement battu, samedi soir, par l''émission <i>X Factor</i> sur ITV, avec ses 7 millions de fidèles (soit 32,2% du public anglais). La BBC suivra certainement avec attention l''évolution des audiences de la saison 9 de <i><b>Doctor Who</b></i>, pour voir si la tendance à la baisse se poursuit.</p>\r\n    </div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
