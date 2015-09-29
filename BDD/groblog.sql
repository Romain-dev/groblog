-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2015 at 04:33 PM
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
-- Table structure for table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(2, 'romain', 'romain', 'romain@tata.com', 'romain@tata.com', 1, 'fto7ovlehhc088ckwg08soo884sw404', '$2y$13$fto7ovlehhc088ckwg08sekPqleop8Bs9UxwWSJS2dnTtHuiX0f1q', '2015-09-29 13:28:31', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlAlias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `titre`, `urlAlias`, `content`) VALUES
(1, 'Pourquoi un crossover entre Doctor Who et Sherlock est impossible', 'crossover', '<div class="media">\r\n            <img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/pourquoi-un-crossover-entre-doctor-who-et-sherlock-est-impossible-4263457/77130401-1-fre-FR/Pourquoi-un-crossover-entre-Doctor-Who-et-Sherlock-est-impossible_portrait_w532.jpg" width="532" height="358" style="border: 0px ;">\r\n        </div>\r\n        <div class="bloc_detail_cnt">\r\n            <div class="chapo">\r\n                <p>Le showrunner des deux séries, Steven Moffat, avoue penser souvent à un crossover, mais explique pourquoi ce n''est pas possible.</p>\r\n            </div>\r\n            <div class="contenu">\r\n                <p>Le showrunner <b><a href="http://www.premiere.fr/Star/Steven-Moffat-2523320" target="_self">Steven Moffat</a></b> va faire des déçus. Ses deux séries phares,&nbsp;<i><b><a href="http://series-tv.premiere.fr/Sherlock-2479764" target="_self">Sherlock</a></b></i> et&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i>, ne se croiseront probablement jamais. Il explique cette semaine dans Collider pourquoi l''idée d''un crossover est une fausse bonne idée :</p>\r\n                <p><i>"C''est une question que je me pose souvent, et ma réponse est toujours la même : si un crossover ne poserait pas de problème pour&nbsp;<b>Doctor Who</b>, ça changerait totalement la vie de <b>Sherlock</b>."</i></p>\r\n                <p>&gt;&gt;&gt;&nbsp;<u><a href="http://series-tv.premiere.fr/News-Series/Doctor-Who-depart-rate-pour-la-saison-9-4262393" target="_self"><i><b>Doctor Who</b></i> : départ raté pour la saison 9</a></u></p>\r\n                <p><i>"S''il rencontre le Docteur, qu''il découvre que le Voyage dans le temps est possible, alors il sera obligé d''en tenir compte dans toutes ses enquêtes. Et puis Sherlock Holmes pourrait-il vraiment survivre à une invasion Dalek ? Je ne pense pas. Ça ne se fera pas, c''est juste plus honnête comme ça",</i> conclut <b>Steven Moffat</b>, au risque de décevoir les nombreux fans des deux séries.</p>\r\n            </div>\r\n        </div>'),
(2, 'Doctor Who : Jenna Coleman devrait quitter la série après la saison 9', 'poules', '<div class="media"><span><img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/doctor-who-saison-9-jenna-coleman-annonce-officiellement-son-depart-4261243/77105239-1-fre-FR/Doctor-Who-saison-9-Jenna-Coleman-annonce-officiellement-son-depart_portrait_w532.jpg" width="532" height="335" style="border: 0px ;"></span></div>\r\n<div class="bloc_detail_cnt">\r\n    <div class="chapo">\r\n        <p>Clara et <i>Doctor Who</i>, c''est fini. La jolie camarade du Docteur s''en ira au cours de la saison 9, comme le confirme aujourd''hui l''actrice Jenna Coleman.</p>\r\n    </div>\r\n    <div class="contenu">\r\n        <p>C''est désormais officiel :&nbsp;<b><a href="http://www.premiere.fr/Star/Jenna-Louise-Coleman-3305202" target="_self">Jenna Coleman</a></b> quitte&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i>. La belle brune a confirmé ce matin à la radio anglaise et sur son compte Twitter avoir décidé de partir, pour incarner la Reine Victoria dans une nouvelle série ambitieuse de ITV.</p>\r\n        <p>Son personnage, Clara Oswald, présent dans le show depuis 2012, s''en ira dans les prochains mois, au cours de la saison 9 : <i>"J''ai quitté le TARDIS",</i> a t-elle déclaré au micro de Nick Grimshaw sur la BBC Radio 1.</p>\r\n        <p>&gt;&gt;&gt; <u><a href="http://series-tv.premiere.fr/News-Series/News-Photos/Doctor-Who-saison-9-20-nouvelles-photos-qui-ont-la-classe-4259477" target="_blank"><i><b>Doctor Who</b></i>, saison 9 : 20 nouvelles photos qui ont la classe</a></u></p>\r\n        <p><b>Jenna Coleman</b> a révélé que son départ est planifié depuis plus d''un an et elle a été impliquée pour déterminer le scénario final de Clara : <i>"On a bossé dessus pendant un long moment. Avec <b><a href="http://www.premiere.fr/Star/Steven-Moffat-2523320" target="_self">Steven Moffat</a></b>, on a réfléchi pendant longtemps pour trouver le meilleur moyen de lui faire quitter l''histoire. On ne va pas donner de détails, mais cela va se passer à un certain moment cette saison."</i></p>\r\n        <p>L''actrice anglaise de 29 ans avoue que ses derniers moments sur le plateau ont été très émouvants. <i>"Le TARDIS est un peu comme ma maison, alors oui, j''ai versé une petite larme."</i></p>\r\n        <p>La saison 9 de <i><b>Doctor Who</b></i> débutera ce samedi 19 septembre sur la BBC. En France, la série est diffusée sur France 4.</p>\r\n        &nbsp;<span style="font-size: 0.8em; background-color: #ffffff;"></span>\r\n            <span style="font-size: 0.8em; background-color: #ffffff;">\r\n               <script async="" src="//platform.twitter.com/widgets.js" charset="utf-8"></script>\r\n            </span>\r\n    </div>\r\n</div>'),
(4, 'Doctor Who: départ raté pour la saison 9', 'tata', '<div class="chapo">\r\n        <p>Grosse déception pour le lancement de la saison 9 de <i>Doctor Who,</i> qui a signé son plus mauvais démarrage depuis bien longtemps.</p>\r\n        <img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/doctor-who-depart-rate-pour-la-saison-9-4262393/77119093-1-fre-FR/Doctor-Who-depart-rate-pour-la-saison-9_portrait_w532.jpg"  style="border: 0px ;">\r\n    </div>\r\n    <div class="contenu">\r\n        <p>C''était l''événement à télé anglaise, samedi soir. Le premier épisode de la saison 9 de&nbsp;<i><b><a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_self">Doctor Who</a></b></i> était diffusé sur la BBC. Mais il n''a pas franchement connu le succès&nbsp;escompté&nbsp;: seuls 4,58&nbsp;millions de téléspectateurs britanniques ont suivi "The Magician Apprentice", soit 2 millions de téléspectateurs de moins que pour l''ouverture de la saison 8, il y a un an (6,79 millions). Une chute brutale de plus de 30%, qui a de quoi interpeller.</p>\r\n        <p>&gt;&gt;&gt;&nbsp;<u><a href="http://series-tv.premiere.fr/News-Series/Doctor-Who-saison-9-Jenna-Coleman-annonce-officiellement-son-depart-4261243" target="_self"><i><b>Doctor Who</b></i>, saison 9 : Jenna Coleman annonce officiellement son départ</a></u></p>\r\n        <p>Surtout lorsqu''on regarde les chiffres des dernières années : en 2012, le Season premiere de <i><b>Doctor Who</b></i> était suivi par 6,38 millions de fans. Ils étaient 6,52 millions en 2011 et plus de 7,6 millions en 2010.</p>\r\n        <p>L''érosion est donc marquée. D''autant que <i><b>Doctor Who</b></i> a été largement battu, samedi soir, par l''émission <i>X Factor</i> sur ITV, avec ses 7 millions de fidèles (soit 32,2% du public anglais). La BBC suivra certainement avec attention l''évolution des audiences de la saison 9 de <i><b>Doctor Who</b></i>, pour voir si la tendance à la baisse se poursuit.</p>\r\n    </div>'),
(11, 'Doctor Who : une série timbrée !', 'doctor', '<div class="media">\r\n        <span>\r\n          <img src="http://cdn-premiere.ladmedia.fr/var/premiere/storage/images/series/news-series/doctor-who-une-serie-timbree-3620244/65738380-1-fre-FR/Doctor-Who-une-serie-timbree_portrait_w532.jpg" width="532" height="350" style="border: 0px ;">\r\n          <em>\r\n            © \r\n          </em>\r\n        </span>\r\n      </div>\r\n      <div class="bloc_detail_cnt">\r\n        <div class="chapo">\r\n          A l''occasion du 50ème anniversaire de Doctor Who, la série se voit attribuer un timbre à l''effigie de son héros (et de ses acteurs) ! Une info que l''on doit à CBS News\r\n        </div>\r\n        <div class="contenu">\r\n          <p>\r\n            <b>\r\n              <a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_blank">\r\n                Doctor Who\r\n              </a>\r\n            </b>\r\n            , la série de science-fiction plait décidément beaucoup aux britanniques. La poste du Royaume-Uni a donc décidé de fêter dignement les 50 ans de cette série culte en créant des timbres en son honneur d''après \r\n            <a href="http://www.cbc.ca/news/arts/story/2013/01/02/doctor-who-stamps.html" target="_self">\r\n              CBC News\r\n            </a>\r\n            .&nbsp;\r\n          </p>\r\n          <p>\r\n            Depuis sa création en 1963, la série a connu 11 acteurs différents pour tenir le rôle du célèbre Docteur. A partir de mars, ils seront disponibles en timbres. 5 autres timbres seront disponibles représentant le Tardis dont se sert le Docteur pour voyager.\r\n          </p>\r\n          <p>\r\n            Il ne nous reste plus qu''à souhaiter un très bon anniversaire au Docteur !\r\n          </p>\r\n          <p>\r\n            En France, la série Doctor Who est diffusée sur France 4.\r\n          </p>\r\n        </div>\r\n      </div>'),
(12, 'Doctor Who saison 7 : trailer et les coulisses de l''épisode de Noël', 'noel', '<div class="bloc_detail_cnt">\r\n  <div class="chapo">\r\n    Maintenant que l''épisode spécial Noël du Doctor Who est passé, les fans pensent déjà à la suite de la saison 7, pour laquelle la BBC vient de dévoiler un trailer. La chaîne en profite aussi pour faire un peu continuer la magie des fêtes en diffusant les coulisses du tournage de l''épisode "The Snowmen".\r\n  </div>\r\n  <div class="contenu">\r\n    <p>\r\n      On ne pourra pas dire que le Docteur Who ne soigne pas ses fans. Après l''épisode spécial Noël de \r\n      <b>\r\n        <a href="http://series-tv.premiere.fr/Doctor-Who-1597404" target="_blank">\r\n          Doctor Who\r\n        </a>\r\n      </b>\r\n      , "The Snowmen", la BBC vient de sortir une vidéo montrant les tournages de cet épisode particulier, en partie pour la présence de \r\n      <b>\r\n        <a href="http://www.premiere.fr/Star/Jenna-Louise-Coleman-3305202" target="_self">\r\n          Jenna Louise Coleman\r\n        </a>\r\n      </b>\r\n      , toute nouvelle dans la série.\r\n    </p>\r\n    &nbsp;\r\n    <iframe width="535" height="301" src="http://www.youtube.com/embed/icOHl4qCikk?wmode=opaque" frameborder="0" allowfullscreen="">\r\n    </iframe>\r\n    \r\n    <p>\r\n      En France, retrouvez \r\n      <b>\r\n        Doctor Wh\r\n      </b>\r\n      o sur France 4.\r\n    </p>\r\n  </div>\r\n</div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
