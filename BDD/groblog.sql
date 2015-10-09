-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2015 at 11:51 AM
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
(2, 'romain', 'romain', 'romain@tata.com', 'romain@tata.com', 1, 'fto7ovlehhc088ckwg08soo884sw404', '$2y$13$fto7ovlehhc088ckwg08sekPqleop8Bs9UxwWSJS2dnTtHuiX0f1q', '2015-10-09 11:21:10', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlAlias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `titre`, `urlAlias`, `content`) VALUES
(1, 'Pourquoi un crossover entre Doctor Who et Sherlock est impossible', 'crossover', '<div class="media">\r\n    <img src="http://37.187.97.102/1.jpg" width="532" height="358" style="border: 0px ;">\r\n</div>\r\n<div class="bloc_detail_cnt">\r\n    <div class="chapo">\r\n        <p>Le showrunner des deux séries, Steven Moffat, avoue penser souvent à un crossover, mais explique pourquoi ce n''est pas possible.</p>\r\n    </div>\r\n    <div class="contenu">\r\n        <p>Le showrunner <b>Steven Moffat</b> va faire des déçus. Ses deux séries phares,&nbsp;<i><b>Sherlock</b></i> et&nbsp;<i><b>Doctor Who</b></i>, ne se croiseront probablement jamais. Il explique cette semaine dans Collider pourquoi l''idée d''un crossover est une fausse bonne idée :</p>\r\n        <p><i>"C''est une question que je me pose souvent, et ma réponse est toujours la même : si un crossover ne poserait pas de problème pour&nbsp;<b>Doctor Who</b>, ça changerait totalement la vie de <b>Sherlock</b>."</i></p>\r\n        <p><i>"S''il rencontre le Docteur, qu''il découvre que le Voyage dans le temps est possible, alors il sera obligé d''en tenir compte dans toutes ses enquêtes. Et puis Sherlock Holmes pourrait-il vraiment survivre à une invasion Dalek ? Je ne pense pas. Ça ne se fera pas, c''est juste plus honnête comme ça",</i> conclut <b>Steven Moffat</b>, au risque de décevoir les nombreux fans des deux séries.</p>\r\n    </div>\r\n</div>'),
(11, 'Doctor Who : une série timbrée !', 'timbre', '<div class="media">\r\n        <span>\r\n          <img src="http://37.187.97.102/11.jpg" width="532" height="350" style="border: 0px ;">\r\n        </span>\r\n      </div>\r\n      <div class="bloc_detail_cnt">\r\n        <div class="chapo">\r\n          A l''occasion du 50ème anniversaire de Doctor Who, la série se voit attribuer un timbre à l''effigie de son héros (et de ses acteurs) ! Une info que l''on doit à CBS News\r\n        </div>\r\n        <div class="contenu">\r\n          <p>\r\n            <b>\r\n                Doctor Who\r\n            </b>\r\n            , la série de science-fiction plait décidément beaucoup aux britanniques. La poste du Royaume-Uni a donc décidé de fêter dignement les 50 ans de cette série culte en créant des timbres en son honneur d''après &nbsp;          \r\n              CBC News\r\n            .&nbsp;\r\n          </p>\r\n          <p>\r\n            Depuis sa création en 1963, la série a connu 11 acteurs différents pour tenir le rôle du célèbre Docteur. A partir de mars, ils seront disponibles en timbres. 5 autres timbres seront disponibles représentant le Tardis dont se sert le Docteur pour voyager.\r\n          </p>\r\n          <p>\r\n            Il ne nous reste plus qu''à souhaiter un très bon anniversaire au Docteur !\r\n          </p>\r\n          <p>\r\n            En France, la série Doctor Who est diffusée sur France 4.\r\n          </p>\r\n        </div>\r\n      </div>'),
(12, 'Doctor Who saison 7 : trailer et les coulisses de l''épisode de Noël', 'noel', '<div class="bloc_detail_cnt">\r\n  <div class="chapo">\r\n    Maintenant que l''épisode spécial Noël du Doctor Who est passé, les fans pensent déjà à la suite de la saison 7, pour laquelle la BBC vient de dévoiler un trailer. La chaîne en profite aussi pour faire un peu continuer la magie des fêtes en diffusant les coulisses du tournage de l''épisode "The Snowmen".\r\n  </div>\r\n  <div class="contenu">\r\n    <p>\r\n      On ne pourra pas dire que le Docteur Who ne soigne pas ses fans. Après l''épisode spécial Noël de \r\n      <b>\r\n          Doctor Who\r\n      </b>\r\n      , "The Snowmen", la BBC vient de sortir une vidéo montrant les tournages de cet épisode particulier, en partie pour la présence de \r\n      <b>\r\n          Jenna Louise Coleman\r\n      </b>\r\n      , toute nouvelle dans la série.\r\n    </p>\r\n    &nbsp;\r\n    <iframe width="535" height="301" src="http://www.youtube.com/embed/icOHl4qCikk?wmode=opaque" frameborder="0" allowfullscreen="">\r\n    </iframe>\r\n    \r\n    <p>\r\n      En France, retrouvez \r\n      <b>\r\n        Doctor Wh\r\n      </b>\r\n      o sur France 4.\r\n    </p>\r\n  </div>\r\n</div>'),
(13, 'Doctor Who va lancer un spin-off pour les ados, dans une école, dès 2016', 'spin-off', '<div class="media"><span><img src="http://37.187.97.102/13.jpg" width="532" height="282" style="border: 0px ;"></span></div>\r\n      <div class="bloc_detail_cnt">\r\n         <div class="chapo">\r\n            <p>BBC Three va lancer une série dérivée se déroulant à&nbsp;Coal Hill School, où les élèves seront les héros.</p>\r\n         </div>\r\n         <div class="contenu">\r\n            <p>La fameuse Coal Hill School de&nbsp;<i><b>Doctor Who</b></i> sera prochainement le cadre d''un nouveau spin-off, a annoncé la chaîne BBC Three hier soir. Cette série dérivée s''intitulera <i><b>Class</b></i> et se déroulera de nos jours, à Londres.</p>\r\n            <p>Elle sera destinée à un public jeune et c''est donc l''auteur de livres "Young Adult", <b>Patrick Ness</b>, qui a été choisi par la chaîne pour écrire les 8 épisodes de 45 minutes de ce spin-off, qui sera diffusé dès 2016.</p>\r\n            <p>Le showrunner de <i><b>Doctor Who</b></i>,&nbsp;<b>Steven Moffat</b>, décrit la série ainsi : <i>"Ce sont des ados qui grandissent en Grande-Bretagne... mais avec des monstres !"</i> Les héros de <i><b>Class</b></i> seront les élèves eux-mêmes, qui repousseront, à Londres,&nbsp;des menaces de monstres intergalactiques et autres méchants. Le choix de Coal Hill School n''est évidemment pas dû au hasard. Cette école existe dans la série depuis 1963 et a vu passer plusieurs compagnons du Docteur, notamment Ian Chesterton, Barbara Wright et Clara Oswald</p>\r\n            <p><i>"Je suis surpris et ravi de pénétrer dans l''univers de <b>Doctor Who</b>, qui est aussi vaste que le temps et l''espace lui-même"</i>, jubile <b>Patrick Ness</b>. <i>"Il y a tellement de place ici pour toutes sortes d''histoires étonnantes... Et travailler avec <b>Steven Moffat</b> et <b>Brian Minchin</b> est une joie absolue. J''ai hâte que les gens découvrent les héros de <b>Class</b>".</i></p>\r\n         </div>\r\n      </div>'),
(14, 'Doctor Who : une saison 10 commandée discrètement par la BBC', 'saison-dix', '<div class="media"><span><img src="http://37.187.97.102/14.jpg" width="532" height="345" style="border: 0px ;"></span></div>\r\n   <div class="bloc_detail_cnt">\r\n      <div class="chapo">\r\n         <p>La commande d''une saison 10 est confirmée par la BBC au beau milieu d''un document retraçant le bilan de l''année financière de la chaîne.</p>\r\n      </div>\r\n      <div class="contenu">\r\n         <p>Alors que la saison 9 de&nbsp;<i><b>Doctor Who</b></i>va débuter dans quelques semaines outre-Manche, la BBC a annoncé la commande d''une saison 10, de manière plus ou moins officielle.</p>\r\n         <p>En effet, cachée à la page 32 de la Revue annuelle Worldwide BBC, qui fait le point sur l''année financière écoulée, l''annonce révèle que la chaîne publique anglaise va <i>"investir dans The Musketeers&nbsp;saison 3 et Doctor Who saison 10".</i></p>\r\n         <p>On savait depuis quelques mois déjà que <i>The Musketeers</i> aurait droit à une saison 3. Mais il s''agit de la première confirmation officielle que <i><b>Doctor Who</b></i> continuera sur la BBC, vraisemblablement en 2016.</p>\r\n      </div>\r\n   </div>'),
(15, 'Doctor Who : la BBC aurait bien l''intention d''adapter la série en blockbuster hollywoodien !', 'hollywood', '<div class="media"><span><img src="http://37.187.97.102/15.jpg" width="532" height="357" style="border: 0px ;"></span></div>\r\n   <div class="bloc_detail_cnt">\r\n      <div class="chapo">\r\n         <p>La BBC mettrait une "grosse pression" pour faire un film <i>Doctor Who</i> dans les années à venir.</p>\r\n      </div>\r\n      <div class="contenu">\r\n         <p>La question d''un film&nbsp;<i>Doctor Who</i> ne date pas d''hier, mais jusque-là, les scénaristes du cultissime show anglais ont toujours assuré qu''il n''était pas vraiment souhaitable. Qu''importe, on apprend aujourd''hui que la BBC a sérieusement l''intention de porter <i>Doctor Who</i> sur grand écran "dans les 8 ans qui viennent", selon des mails de Sony Pictures publiés par Wikileaks.</p>\r\n         <p>Selon ces fuites dévoilées au grand public sur la toile, Danny Cohen, directeur de la BBC, explique que pour garder la franchise en vie, il faudra la faire passer au cinéma d''ici 8 ans. Mais à en croire ces mails, la chaîne britannique se heurterait encore au refus des scénaristes actuels de <i>Doctor Who</i>, très hostiles au projet. "Ils ont sentiment que leur position n''est pas écoutée ni acceptée."</p>\r\n         <p>Les auteurs de la série voudraient attendre le bon moment pour se faire une idée plus précise sur cette question d''une adaptation en long-métrage, mais Danny Cohen affirme qu''il y a "un énorme intérêt" et une "très grosse pression" de la part de BBC Worldwide. Alors le film finira-t-il par se faire un jour ?</p>\r\n      </div>\r\n   </div>'),
(16, 'Un parc d''attraction sur Doctor Who et Sherlock ?', 'parc', '<div class="media"><span><img src="http://37.187.97.102/16.jpg" width="532" height="351" style="border: 0px ;"></span></div><br>\r\n   <div class="bloc_detail_cnt">\r\n      <div class="chapo">\r\n         La BBC étudierait actuellement la possibilité de créer son propre parc à thèmes avec l''intention de mettre en avant des attractions adaptées de ses programmes phares, dont les incontournables Sherlock et Doctor Who.\r\n      </div>\r\n      <div class="contenu">\r\n         <p class=" text-JUSTIFY">Voilà une nouvelle qui pourrait ravir les fans de&nbsp;<i>Sherlock</i> et <i>Doctor Who</i>. La BBC songerait sérieusement à surfer sur le succès de ses programmes les plus emblématiques en ouvrant un parc d''attraction à thème, le <i>London Paramount Entertainment Resort</i>. La chaîne anglaise s''est associée, par sa division commerciale BBC Worldwide, à des investisseurs koweïtiens pour la création d''un parc dans l''estuaire de la Tamise entre les villes de Dartford et Gravesend dans le comté du Kent, situé au sud-est du pays. Coût total du projet&nbsp;: deux milliards de livres (2,5 milliards d''euros), selon les informations rapportées par le Guardian.</p>\r\n         <p class=" text-JUSTIFY">Comme son nom l''indique, la BBC développerait ses attractions en partenariat avec le studio américain Paramount. “Nous sommes toujours à la recherche d''occasion de développer l''intérêt des fans pour leurs émissions favorites et l''idée derrière ce parc est de célébrer de manière excitante la place très spéciale que la BBC a acquis dans la culture britannique”, déclare à ce titre Stephen Davies, directeur de la division des spectacles à BBC Worldwide. Le parc devrait donc accorder une place très importante à <i>Doctor Who</i> et <i>Sherlock</i>, mais aussi à l''émission automobile <i>Top Gear</i> ou aux documentaires animaliers très réputés de David Attenborough.</p>\r\n         <p class=" text-JUSTIFY">Il faudra néanmoins pour les fans s''armer de patience puisqu''un tel projet, s''il se concrétise, ne verrait pas le jour avant le printemps 2020. Mais il pourrait devenir à terme un véritable lieu de pèlerinage pour les <i>Whovians</i> et <i>geeks</i> du monde entier.</p>\r\n      </div>\r\n   </div>');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
