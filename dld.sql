-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 09, 2020 at 08:51 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dld`
--
CREATE DATABASE IF NOT EXISTS `dld` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dld`;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(255) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `total_records` int(30) DEFAULT NULL,
  `status` varchar(300) NOT NULL DEFAULT 'Unblocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `name`, `total_records`, `status`) VALUES
(4, 'zeee', 25, 'Unblocked'),
(5, 'deee', 26, 'Unblocked'),
(6, 'rrrr', 27, 'Unblocked'),
(7, 'Daniel', 0, 'Unblocked');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `agent` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `value`, `type`, `agent`) VALUES
(1, 'catiekat26@gmail.com:babynala66', 'premium', '5,6,'),
(2, 'Jaredsmoye@gmail.com:yourwill7', 'vip', '4,5,'),
(3, 'jakeelsnake98@gmail.com:monkey142', 'premium', '4,6,'),
(4, 'francismendez123456@gmail.com:frances123', 'premium', '5,6,'),
(5, 'marcimom9@aol.com:Siamese2', 'premium', '4,5,'),
(6, 'Rickeysum@gmail.com:Wolf12345', 'vip', '4,6,'),
(7, 'manuel66@gmail.com:atspe7ck', 'vip', '5,6,'),
(8, 'tameraleann15@gmail.com:Jaxonleo1022', 'vip', '4,5,'),
(9, 'caileechristian16@gmail.com:Cadetc2019', 'premium', '4,6,'),
(10, 'ahasan5688@gmail.com:imraanhasan', 'vip', '5,6,'),
(11, 'thatguymark@gmail.com:2m2humer', 'premium', '4,5,6,'),
(12, 'justincook264@gmail.com:Dalejr88', 'premium', '4,6,'),
(13, 'ter@gmail.com:18041953bmp', 'premium', '5,6,'),
(14, 'emiliano.estrada2@gmail.com:1162403Jer', 'premium', '4,5,6,'),
(15, 'cathyrvickrey@yahoo.com:Piper16', 'premium', '4,5,6,'),
(16, 'joaquinsandoval67@gmail.com:shettie#2', 'premium', '4,5,6,'),
(17, 'khartz2196@gmail.com:CoreyKaty96', 'vip', '4,5,6,'),
(18, 'ttapia2439@gmail.com:Atapia24', 'premium', '4,5,6,'),
(19, 'ekaps1999@gmail.com:Chilidog1', 'vip', '4,5,6,'),
(20, 'jmorgan74@gmail.com:yiy01l9b', 'premium', '4,5,6,'),
(21, 'tabsrozalski@gmail.com:Peggy', 'vip', '4,5,6,'),
(22, 'trollzor6000@gmail.com:232332431y', 'premium', '4,5,6,'),
(23, 'rebekahsky0612@gmail.com:rebekah0612', 'premium', '4,5,6,'),
(24, 'benjaminfamily8@gmail.com:Esperanza12', 'vip', '4,5,6,'),
(25, 'kyasupyon@gmail.com:Kyasu1321', 'vip', '4,5,6,'),
(26, 'abassett89@gmail.com:vball45', 'premium', '4,5,6,'),
(27, 'blakeminnesota27@gmail.com:bdog27', 'premium', '4,5,6,'),
(28, 'arronstephens0892@gmail.com:Football0892', 'vip', '4,5,6,'),
(29, 'Jasminemendez111402@gmail.com:Jasmine4', 'vip', '4,5,6,'),
(30, 'colinwinterrowd@gmail.com:Ginger#08', 'vip', '4,5,6,'),
(31, 'izzyiveysdino@gmail.com:19468elizabethstupid', 'premium', ''),
(32, 'arenoracing04@gmail.com:gadget777', 'vip', ''),
(33, 'jeffrey5643487@gmail.com:Jeffreyd1', 'premium', ''),
(34, 'nijhae18@gmail.com:johnsonn18', 'premium', ''),
(35, 'jenniferkerch@yahoo.com:Lucas814', 'vip', ''),
(36, 'superdorky123@gmail.com:dorkdiary', 'premium', ''),
(37, 'lizrulezk@gmail.com:sushirules', 'premium', ''),
(38, 'dreharris400@gmail.com:Teamrobot1', 'premium', ''),
(39, 'jwhogan@gmail.com:Godhead3', 'premium', ''),
(40, 'getpwned101@gmail.com:tobias34', 'vip', ''),
(41, 'jesseniarueda@yahoo.com:Jr0122062', 'vip', ''),
(42, 'shayleah2014@gmail.com:paisleynorine21', 'vip', ''),
(43, 'lmlauria@gmail.com:ephrata', 'vip', ''),
(44, 'pat.kellett@gmail.com:patiscool1', 'vip', ''),
(45, 'eharthoorn876@gmail.com:Ewade123', 'premium', ''),
(46, 'jaeling001@gmail.com:Hyp3ract1ve', 'vip', ''),
(47, 'tberri28@gmail.com:gy7hu8ji', 'vip', ''),
(48, 'm.orozco1418@gmail.com:michelle1999', 'premium', ''),
(49, 'yamiryou4@gmail.com:bakura44', 'premium', ''),
(50, 'sabrinabrown200@gmail.com:Greyhair1', 'premium', ''),
(51, 'svoller1@gmail.com:a00217040', 'premium', ''),
(52, 'jiannijones1@gmail.com:jfr0mmarzQ', 'vip', ''),
(53, 'erinsmall421831@gmail.com:stella01', 'premium', ''),
(54, 'cvmendozaaa3@gmail.com:Tina1974', 'premium', ''),
(55, 'amytarpley3@yahoo.com:Kenmax0625', 'premium', ''),
(56, 'lakeia83@gmail.com:Ekalekal0', 'vip', ''),
(57, 'dch32189@gmail.com:tigger21', 'vip', ''),
(58, 'slimmerkim@gmail.com:punkin08', 'premium', ''),
(59, 'clark00136.mc@gmail.com:254massey2', 'vip', ''),
(60, 'shantewims@gmail.com:Teakwood3221', 'vip', ''),
(61, 'shortypop152002@gmail.com:HomeAgain152002', 'premium', ''),
(62, 'dillenhuynh@gmail.com:Bakugan11', 'vip', ''),
(63, 'Mamamia@gmail.com:awesome', 'premium', ''),
(64, 'tessbaldwin88@gmail.com:Cupps1988', 'vip', ''),
(65, 'anda02@gmail.com:CSplayer26', 'vip', ''),
(66, 'bedoyae16@gmail.com:koala456', 'premium', ''),
(67, 'tkemahli@gmail.com:Pumpkin1956', 'premium', ''),
(68, 'he1ki808@gmail.com:Heigansen808', 'vip', ''),
(69, 'jessicadyhl@gmail.com:jessica300', 'premium', ''),
(70, 'janaidjohnson20@gmail.com:Prettiful31', 'premium', ''),
(71, 'bb30527@gmail.com:Pineapples4', 'premium', ''),
(72, 'akarenhr@gmail.com:telemundo1', 'premium', ''),
(73, 'jxcquelinea200@gmail.com:Luvpurple2002', 'vip', ''),
(74, 'lspalmer55@gmail.com:roxie2009', 'premium', ''),
(75, 'vdog565@gmail.com:bae051965xp', 'vip', ''),
(76, 'Linda.steg@gmail.com:steg2511', 'vip', ''),
(77, 'Katelyn.werley@gmail.com:outkast1', 'vip', ''),
(78, 'treydog4279@gmail.com:Scarlett16', 'vip', ''),
(79, 'mahjawamsley14@gmail.com:Mahja166', 'vip', ''),
(80, 'thepaintedtarget@gmail.com:Anberlin1', 'premium', ''),
(81, 'cheng.nowell@gmail.com:208235598No', 'vip', ''),
(82, 'icyblu06@gmail.com:saniya', 'vip', ''),
(83, 'asianathao@gmail.com:justadream22', 'vip', ''),
(84, 'mom.to.girls@hotmail.com:12mtndew', 'vip', ''),
(85, 'ThePageCan@gmail.com:demokillz1982', 'premium', ''),
(86, 'kanysiareed@gmail.com:kanysia11', 'premium', ''),
(87, 'jenahherrick@gmail.com:herrick123', 'premium', ''),
(88, 'mobius087@aol.com:anthony1', 'vip', ''),
(89, 'Willhorton13@gmail.com:wombat13', 'vip', ''),
(90, 'undividedreader@gmail.com:WELOVEKRYSTAL27', 'premium', ''),
(91, 'ouramericancousin@gmail.com:spyderman8', 'vip', ''),
(92, 'sawdustrb48@gmail.com:brooks13', 'vip', ''),
(93, 'ericaburns89@gmail.com:Ej060616', 'vip', ''),
(94, 'xxanica@gmail.com:melinda96', 'premium', ''),
(95, 'tarag71@gmail.com:1507west', 'premium', ''),
(96, 'ashleymosher94@gmail.com:Louise94', 'premium', ''),
(97, 'angelacilbano@gmail.com:realene1980', 'vip', ''),
(98, 'Sarabumbalough@gmail.com:Sara0604', 'premium', ''),
(99, 'daven22s@aol.com:tropical1', 'premium', ''),
(100, 'rileygirls2012@gmail.com:sarahriley13', 'vip', ''),
(101, 'kaseyerin03@gmail.com:Kyle1234', 'premium', ''),
(102, 'juleepassey@gmail.com:Darrenkp1', 'premium', ''),
(103, 'dylansperspective@gmail.com:Gamecocks1', 'vip', ''),
(104, 'siowryann@gmail.com:219019224', 'premium', ''),
(105, 'tbh.itsbella@gmail.com:Bell2413', 'vip', ''),
(106, 'mayra12ramirez@gmail.com:franjr12', 'vip', ''),
(107, 'springb3@gmail.com:gabe2112', 'premium', ''),
(108, 'doggy@aol.com:chickenman', 'premium', ''),
(109, 'Katie.saelor@gmail.com:mueysio4', 'vip', ''),
(110, 'starrshell@gmail.com:austin', 'vip', ''),
(111, 'brigitti917@icloud.com:brigitti12', 'vip', ''),
(112, 'yvonneyen9@hotmail.com:yvonne', 'premium', ''),
(113, 'Brittneyhowell15@gmail.com:13Brittdog', 'vip', ''),
(114, 'evharroyo@gmail.com:toriana123', 'vip', ''),
(115, 'lindzdeaton@gmail.com:jinkies1', 'premium', ''),
(116, 'katiepulver52@gmail.com:Chriskujo2', 'vip', ''),
(117, 'zap18ps3@gmail.com:654321we', 'premium', ''),
(118, 'delwin.smite@gmail.com:light920', 'premium', ''),
(119, 'nickaelder@gmail.com:typewriter96', 'premium', ''),
(120, 'kromenackerdavis@gmail.com:Davisadam99', 'premium', ''),
(121, 'chassidykaye@gmail.com:kitkat2011', 'premium', ''),
(122, 'Sarah.muse28@gmail.com:Buddy123', 'vip', ''),
(123, 'xxnekozeldaxx@gmail.com:va05ni69la', 'premium', ''),
(124, 'castilloerika99@gmail.com:Santiaga106', 'premium', ''),
(125, 'wakalakacrazy@gmail.com:pucca214', 'vip', ''),
(126, 'brittanydanculovich88@gmail.com:Swainoh4', 'premium', ''),
(127, 'reganrayne@gmail.com:Invaderzim04', 'vip', ''),
(128, 'shodowkills@gmail.com:cry3tears', 'premium', ''),
(129, 'penastephanee@gmail.com:Iluvmysunshine1', 'premium', ''),
(130, 'test@test.com:Tania123P', 'vip', ''),
(131, 'chrishillbourne@gmail.com:lacymacb1', 'vip', ''),
(132, 'accumetrics2@gmail.com:ultegra2', 'vip', ''),
(133, 'tamiabishop2015@gmail.com:Simpson541', 'premium', ''),
(134, 'alexia.ayala12@gmail.com:0103917467Aa', 'premium', ''),
(135, 'dodge@gmail.com:1985ford', 'vip', ''),
(136, 'kslater576@gmail.com:sauske4968', 'vip', ''),
(137, 'sandraaldridgechermak@gmail.com:Sandy1605', 'premium', ''),
(138, 'rich1040tax@gmail.com:mymoney99', 'premium', ''),
(139, 'briauna505@gmail.com:Beezlebub99', 'premium', ''),
(140, 'brandonm044@gmail.com:cjbran123', 'premium', ''),
(141, 'jcrain1991@gmail.com:jimmypop1', 'vip', ''),
(142, 'TopTierTermy951@gmail.com:jabulani123', 'premium', ''),
(143, 'jacobdowling123@gmail.com:nelly3', 'premium', ''),
(144, 'loricox69.lc@gmail.com:king1957', 'premium', ''),
(145, 'tmccree5@gmail.com:treytrey', 'premium', ''),
(146, 'mmunozlopez98@gmail.com:Pandabear101', 'vip', ''),
(147, 'thecyzerr@gmail.com:Nghi97Ngan98', 'vip', ''),
(148, 'bigdaddyd@gmail.com:pussy1124', 'vip', ''),
(149, 'camari.riley410@gmail.com:aries41001', 'premium', ''),
(150, 'taliahg1980s@gmail.com:shugg1231', 'vip', ''),
(151, 'someguy4397@gmail.com:finn43', 'vip', ''),
(152, 'galarnea@gmail.com:lebron23', 'premium', ''),
(153, 'andrew_pb@live.com:ask1977', 'premium', ''),
(154, 'jmcallen03@gmail.com:Goirish1099', 'premium', ''),
(155, 'delatorreantonio04@gmail.com:latorre1', 'vip', ''),
(156, 'Drakehomra@gmail.com:whatwhat1', 'premium', ''),
(157, 'doug.smith.ma@gmail.com:dt1141', 'vip', ''),
(158, 'aguileragiselle3@gmail.com:kitty123', 'vip', ''),
(159, 'akatie1970@gmail.com:paige2015', 'vip', ''),
(160, 'kjscott1006@gmail.com:Reva1212', 'premium', ''),
(161, 'stitch16@gmail.com:MfIbKm', 'vip', ''),
(162, 'alexelmore1014@gmail.com:sammyly45', 'premium', ''),
(163, 'jlbalbright@gmail.com:vatech77', 'vip', ''),
(164, 'green.danial@gmail.com:rebel250', 'premium', ''),
(165, 'ssxkillz@gmail.com:xbox360247', 'vip', ''),
(166, 'elizabeth_rdz_93@yahoo.com:lizpooh1', 'vip', ''),
(167, 'miguel11@gmail.com:123456', 'premium', ''),
(168, 'joeymccall822@gmail.com:Dirtbike822', 'vip', ''),
(169, 'beckerz94x3@gmail.com:sasuke102', 'vip', ''),
(170, 'tayleon8331@gmail.com:budder06', 'vip', ''),
(171, 'tiffallan71@gmail.com:Iljwamh2', 'vip', ''),
(172, 'madisonstoner34@gmail.com:madi9615', 'vip', ''),
(173, 'jazpence@gmail.com:jasmine01', 'premium', ''),
(174, 'butong960@gmail.com:Marvinjay3', 'premium', ''),
(175, 'claytongadson.ph@gmail.com:redbull08', 'premium', ''),
(176, 'dunns52000@hotmail.com:k3ll3ncol3', 'premium', ''),
(177, 'snoh1030@gmail.com:103019966775', 'premium', ''),
(178, 'jerrydietrichh@gmail.com:neonne10', 'premium', ''),
(179, 'marymash1012@gmail.com:Mash1210', 'vip', ''),
(180, 'joseespi17@gmail.com:Espinosa24', 'premium', ''),
(181, 'lioidania@gmail.com:Pirri1234', 'vip', ''),
(182, 'duaaelsayed77@gmail.com:tangerines', 'vip', ''),
(183, 'loganhthomas24@gmail.com:Goblins24', 'premium', ''),
(184, 'daniellaicepuro@gmail.com:danais1234', 'premium', ''),
(185, 'uhhhmoo@gmail.com:7LPbmt9y', 'vip', ''),
(186, 'ahazard09@yahoo.com:cavion03', 'premium', ''),
(187, 'amyha2004@gmail.com:Letmein123', 'premium', ''),
(188, 'clint25fann@gmail.com:March7881', 'vip', ''),
(189, 'alysemcarley@gmail.com:hootie1233', 'premium', ''),
(190, 'weak6irl@hotmail.com:vainilla91', 'vip', ''),
(191, 'mmquinones2323@gmail.com:manuel2001', 'premium', ''),
(192, 'mariavaladez1823@gmail.com:12252000', 'premium', ''),
(193, 'nattyd93@gmail.com:Silas3313', 'premium', ''),
(194, 'dustinjmcneill@hotmail.com:qazokm12', 'vip', ''),
(195, 'k_batten@yahoo.com:mollie01', 'premium', ''),
(196, 'blakegoeke@yahoo.com:123456dbg', 'premium', ''),
(197, 'Coolchuquel21@gmail.com:Roblox21', 'vip', ''),
(198, 'tbarackman13@gmail.com:corrynkyra567', 'premium', ''),
(199, 'racheldoolen@gmail.com:Madilyn12', 'premium', ''),
(200, 'liljimmylee@gmail.com:Cyhtfp*8', 'premium', ''),
(201, 'lee.lawmaster@gmail.com:lee081404', 'vip', ''),
(202, 'philongnguyen1337@gmail.com:1201philong', 'premium', ''),
(203, 'washawnice@gmail.com:Cherry13', 'premium', ''),
(204, '3rdgeneralmoose@gmail.com:moose1998', 'premium', ''),
(205, 'unfoldingskin@yahoo.com:moonl1ght', 'premium', ''),
(206, 'bcbenuska@gmail.com:Nitro2011', 'premium', ''),
(207, 'motero317@gmail.com:Password3', 'premium', ''),
(208, 'diannacalzada89@gmail.com:elijah09', 'vip', ''),
(209, 'xtrgoddess@yahoo.com:blackangus', 'vip', ''),
(210, 'fish.hicks56@gmail.com:giveme115', 'vip', ''),
(211, 'hunter5822434@gmail.com:hunter5822', 'vip', ''),
(212, 'drewking413@gmail.com:4YyR7n6U', 'premium', ''),
(213, 'martinez.melvin2599@gmail.com:Lorenzo99', 'vip', ''),
(214, 'theturtlelord44@gmail.com:fairyboy', 'premium', ''),
(215, 'tobebailey@gmail.com:bailey03', 'vip', ''),
(216, 'amanda.salazar010@gmail.com:Ads222430', 'premium', ''),
(217, 'bugsbunny@yahoo.com:lauren', 'vip', ''),
(218, 'sunshinewalker1022@gmail.com:22sc08BR', 'premium', ''),
(219, 'rjaimes.rj@gmail.com:Moises03092011', 'premium', ''),
(220, 'bgoins2020@gmail.com:Trixie1234', 'vip', ''),
(221, 'ericpeng69@gmail.com:a1s2d3f4', 'vip', ''),
(222, 'jeannettelara729@gmail.com:Winter22', 'premium', ''),
(223, 'tylerrivera191@gmail.com:lebronj6', 'premium', ''),
(224, 'longynguyenvo350@gmail.com:thanhvan12', 'vip', ''),
(225, 'nateandgabe@gmail.com:immunized1', 'premium', ''),
(226, 'damian.mercado0@gmail.com:drpepper69', 'vip', ''),
(227, 'fang0954@gmail.com:gangsta0954', 'premium', ''),
(228, 'reecesully12@gmail.com:maurice12', 'premium', ''),
(229, 'mgshaw14@gmail.com:Sadie914', 'premium', ''),
(230, 'brendat.deleon@gmail.com:Julio1023', 'premium', ''),
(231, 'xaviercrispin1818@gmail.com:Jumpstreet11', 'premium', ''),
(232, 'iarmendariz12345@gmail.com:ingridalex12', 'vip', ''),
(233, 'Tfobbs731@gmail.com:Livinglife1', 'premium', ''),
(234, 'blablah@gmail.com:halorules4', 'premium', ''),
(235, 'suzeth96@gmail.com:josie1296', 'premium', ''),
(236, 'majanaethompson05@gmail.com:Mt110705', 'premium', ''),
(237, 'dylanjones4567@gmail.com:LOLCATZ1234', 'premium', ''),
(238, 'adware2q@gmail.com:Chase2010', 'vip', ''),
(239, 'yates.william@gmail.com:Omgitsm3', 'vip', ''),
(240, 'ohadessa@gmail.com:crystal000', 'vip', ''),
(241, 'faithmadison40@gmail.com:Smacktraci21', 'vip', ''),
(242, 'hartland.kate15@gmail.com:itgirlwMAS77', 'vip', ''),
(243, 'Beemarsh1@gmail.com:b031315s', 'premium', ''),
(244, 'jones3731@aol.com:Gj1056', 'premium', ''),
(245, 'kqm2010@gmail.com:deja2010', 'vip', ''),
(246, 'sjay1977390@gmail.com:erik1977', 'premium', ''),
(247, 'sladechavez@gmail.com:dalton#1', 'premium', ''),
(248, 'dylan1012.dd@gmail.com:dylan2004', 'vip', ''),
(249, 'salocin-97@hotmail.com:Sashal10', 'vip', ''),
(250, 'kogreenhalgh@gmail.com:Kris2004', 'premium', ''),
(251, 'waters.noah72@gmail.com:noahwaters12', 'vip', ''),
(252, 'ewetherell44@gmail.com:Grace101', 'premium', ''),
(253, 'holly123@gmail.com:holly2003', 'vip', ''),
(254, 'dixiegillman@gmail.com:ANRay123', 'premium', ''),
(255, 'Smashyman69@gmail.com:Smashy69', 'vip', ''),
(256, 'payten2010@gmail.com:Spr1ng33', 'premium', ''),
(257, 'hazecrow@ymail.com:Hunter123', 'vip', ''),
(258, 'Alliebaby345@gmail.com:motokx60', 'vip', ''),
(259, 'marieseanne214@gmail.com:CoreyAllen14', 'vip', ''),
(260, 'frankiebrat6@gmail.com:iluvmy2cats', 'premium', ''),
(261, 'www12345:www12345', 'vip', ''),
(262, 'booblic:Hgvcqwer0', 'vip', ''),
(263, 'assass228:assass228', 'vip', ''),
(264, 'killerbee1:killerbee', 'premium', ''),
(265, 'darkjahar:darkjahar1996', 'premium', ''),
(266, 'wqeqwe12:12345678', 'vip', ''),
(267, 'rina65:summer65', 'vip', ''),
(268, 'igorius88:barabaha88', 'vip', ''),
(269, 'ilnur52b:321aikon', 'premium', ''),
(270, 'ostap1999:ostap1999', 'vip', ''),
(271, 'zastavna31626:zastavna', 'premium', ''),
(272, 'alexshrager:663d672e', 'vip', ''),
(273, '159357321:159357321', 'premium', ''),
(274, 'dendenx:111a111', 'premium', ''),
(275, 'mihonikus:Mihon1983', 'vip', ''),
(276, 'zigdeg:vegas1996', 'vip', ''),
(277, '1234567:1234567', 'premium', ''),
(278, 'zov1976:51276300777', 'premium', ''),
(279, 'makzem:max882002', 'vip', ''),
(280, 'gowno123:gowno123', 'premium', ''),
(281, 'zadroteg92:zadroteg92', 'premium', ''),
(282, 'Tornado909:Vert2011', 'premium', ''),
(283, 'naumov230982:230982naumov', 'vip', ''),
(284, 'nollbob:gabriella84', 'premium', ''),
(285, 'keykeeper:adirolf777', 'vip', ''),
(286, 'keykeeper:adirolf777', 'vip', ''),
(287, 'weloboi:ebutam76', 'vip', ''),
(288, 'artur4201:reperock42', 'premium', ''),
(289, 'Mikzzzik:Daladorek', 'premium', ''),
(290, 'klepserx:kjkxnj456', 'premium', ''),
(291, 'arlan12345:arlan12345', 'premium', ''),
(292, 'sadfsafsdfsdf:sadfsafsdfsdf', 'premium', ''),
(293, 'han298:hondaeg6', 'premium', ''),
(294, 'egiike:hjvfirj5225', 'vip', ''),
(295, 'chalk111:chalk111', 'premium', ''),
(296, 'damir_nurm:damirchik1998', 'vip', ''),
(297, 'omon121:12345678', 'premium', ''),
(298, 'lanqvist:DizinWar2011', 'vip', ''),
(299, 'skrap2007:loginnokia', 'vip', ''),
(300, 'uiui12345:uiui12345', 'vip', ''),
(301, 'spiderweek:spiderweek', 'vip', ''),
(302, 'oknyan:fryaz2931', 'premium', ''),
(303, 'nizkopisko:ktcybr005', 'vip', ''),
(304, 'temikmine123:lalka0102', 'premium', ''),
(305, 'serega_dgl20:seregin2022', 'premium', ''),
(306, 'remziipek:alanya19', 'premium', ''),
(307, 'jackaloff:d301286R', 'vip', ''),
(308, 'klokkj:09101995', 'vip', ''),
(309, 'xxxandr2005:1477992005', 'vip', ''),
(310, 'nuparu55:Bionicle5', 'premium', ''),
(311, 'creedvad:007sasha', 'vip', ''),
(312, 'bbbbbbbbbbb:bbbbbbbbbbb', 'vip', ''),
(313, 'tapschan2010:2791984artem', 'premium', ''),
(314, 'sloncce:8u2a10', 'vip', ''),
(315, 'nthoangga:05111989nsch', 'premium', ''),
(316, 'nikhil123nik:nik28896343', 'vip', ''),
(317, 'versa:melrose', 'premium', ''),
(318, 'kit9826:pen017942', 'premium', ''),
(319, 'ipoop:muybien', 'vip', ''),
(320, 'rinoa2003:jettison', 'premium', ''),
(321, 'JEMorris1982:silver00', 'premium', ''),
(322, 'politisite:cas2108', 'premium', ''),
(323, 'noble_enk:aegis123', 'premium', ''),
(324, 'idontpledge:watagashi', 'vip', ''),
(325, 'jamesokai1:shadow1j', 'premium', ''),
(326, 'frontier:linda', 'premium', ''),
(327, 'fahadhassen:mbgoldhouse', 'vip', ''),
(328, 'reecewhite:falcon', 'vip', ''),
(329, 'pheelyks:joker259', 'vip', ''),
(330, 'wschoo26:12345678', 'vip', ''),
(331, 'hheecc:hecghecg', 'vip', ''),
(332, 'bassfamily:grassynole', 'premium', ''),
(333, 'danieleric2:daniel1964', 'vip', ''),
(334, 'adrian1997:adrian1997', 'premium', ''),
(335, 'konrad15:konrad15', 'vip', ''),
(336, 'kazan123:kazan123', 'premium', ''),
(337, 'angelika1997:angelika1997', 'vip', ''),
(338, 'pawlito6:Lampeczka1', 'premium', ''),
(339, 'fuliggians:REBELh0t', 'premium', ''),
(340, 'realbadguy:patagaio', 'premium', ''),
(341, 'sebagiuf:giufgiuf', 'vip', ''),
(342, 'iaco32:20!di54@', 'premium', ''),
(343, 'Erkanuyan:enes2006', 'vip', ''),
(344, 'bogdaNbl:ytab2009', 'premium', ''),
(345, 'chillerlow:monika13', 'vip', ''),
(346, 'chrissischreiber:f1reball', 'premium', ''),
(347, 'coco2222:coco2222', 'premium', ''),
(348, 'archiebaker:brownblue', 'vip', ''),
(349, 'archigc:lanobile', 'vip', ''),
(350, 'archimdecamp:iF61d8YO', 'vip', ''),
(351, 'archimed3s:01125272', 'premium', ''),
(352, 'archimedes30:BDRK121S', 'premium', ''),
(353, 'archimg:msdan1221', 'premium', ''),
(354, 'armadamaister:chopitos', 'vip', ''),
(355, 'elcheka1997:j25629983c', 'premium', ''),
(356, 'demontronpc:Vypurclt1', 'premium', ''),
(357, 'danel12:danel12', 'premium', ''),
(358, 'zakh1:123456789', 'premium', ''),
(359, 'hopahopa:hopahopa', 'vip', ''),
(360, 'shagoy:cthutq200', 'premium', ''),
(361, 'pwnzo:9dax351fb', 'vip', ''),
(362, 'cahek2107:89607300097c', 'premium', ''),
(363, 'alabama001:alabama', 'vip', ''),
(364, 'goshany4343:3954gosha', 'premium', ''),
(365, 'kokol111:kokol111', 'vip', ''),
(366, 'merianol:a287624134', 'vip', ''),
(367, 'othersnow:zero0000', 'premium', ''),
(368, 'egegegege:egegegeg', 'vip', ''),
(369, 'macros5742:57425742', 'premium', ''),
(370, 'qqqqqqqqqqqwwww:qqqqqqqqqqqwwww', 'premium', ''),
(371, 'xsanlor:12451245a', 'premium', ''),
(372, 'deikun95:Deikun95', 'vip', ''),
(373, 'saparguly1995:5991rapas', 'premium', ''),
(374, 'nirgon:nirgon', 'premium', ''),
(375, 'amaczarenko:amaczarenko', 'vip', ''),
(376, 'workc2014:1q2w3e4r5t', 'vip', ''),
(377, 'hitcherqqq:Selyanin89', 'premium', ''),
(378, 'bigsam06:jfs38m5b', 'vip', ''),
(379, 'qweqrqwe:qweqrqwe', 'premium', ''),
(380, 'cosbak:1230456', 'premium', ''),
(381, 'deathangel75:Da12041975', 'vip', ''),
(382, 'sasha1bog:032200029090', 'premium', ''),
(383, 'zjgirt:suger123', 'premium', ''),
(384, '1234567899:1234567899', 'premium', ''),
(385, 'neirocash:qwe7mkda4', 'premium', ''),
(386, 'asasin2012:asasin2012', 'premium', ''),
(387, 'babavava11:babavava11', 'vip', ''),
(388, 'kolyok68:G25fvg673', 'vip', ''),
(389, 'fjfjfjfjfjfjf:fjfjfjfjfjfjf', 'premium', ''),
(390, 'djmaxobckiy:9229184gek', 'vip', ''),
(391, 'marat_056:ae2908624', 'vip', ''),
(392, 'qpahat:OAES51DE', 'premium', ''),
(393, 'slenderrus1:1q2q3q4q5q', 'vip', ''),
(394, 'nuclearreaktor:8927512a', 'premium', ''),
(395, 'vladik2004:vladik2004', 'vip', ''),
(396, 'cuong1995:cuong1995', 'premium', ''),
(397, 'denball:124578963', 'premium', ''),
(398, 'dwonser:twisted1', 'vip', ''),
(399, 'mascod:54067308', 'premium', ''),
(400, 'ikb01:ikb01', 'vip', ''),
(401, 'matrosjr:ak745145199', 'premium', ''),
(402, 'alexustdv:Aa05560801', 'premium', ''),
(403, 'lalalala90:lalala', 'vip', ''),
(404, 'stas2233:123456789', 'vip', ''),
(405, 'Mr011:qwerty21', 'premium', ''),
(406, 'vesper251:02121982', 'vip', ''),
(407, 'madburger:Ihateusa1', 'vip', ''),
(408, 'lihan20133:92ezatif', 'vip', ''),
(409, 'bobkatt:W2cs3ew2', 'vip', ''),
(410, 'alex202000:alex20200', 'vip', ''),
(411, 'vfrfrf123:vfrfrf123', 'vip', ''),
(412, 'risrafilov:9205257883', 'premium', ''),
(413, 'mafaka881:qwq88914031', 'premium', ''),
(414, 'mrsvv60:ajz8x6y573', 'vip', ''),
(415, 'sokratipb:MaX45yui', 'vip', ''),
(416, 'avrentei:1q2w3e4r5t', 'premium', ''),
(417, 'zzzzzzzz:zzzzzzzz', 'vip', ''),
(418, 'russ1n:lost4815', 'vip', ''),
(419, 'brahmauser:Da3577172', 'vip', ''),
(420, 'elephant123:elephant123', 'vip', ''),
(421, 'camaro25:camaro25', 'vip', ''),
(422, 'borizzz777:356005', 'premium', ''),
(423, 'fr0st2o11:Slavik21', 'vip', ''),
(424, '13qwerty:13qwert', 'vip', ''),
(425, 'kalakutas:kalakutas', 'vip', ''),
(426, 'exetm1:ee12344321', 'vip', ''),
(427, 'prince73999:andrey2000', 'vip', ''),
(428, 'rudenkocomp:demontag', 'premium', ''),
(429, 'crankman:Foxhound', 'vip', ''),
(430, 'sulikev:SEV701528', 'vip', ''),
(431, 'devi_on:3220183h051pb2', 'premium', ''),
(432, 'lololo123123:lololo123123', 'premium', ''),
(433, 'joobi:joobi', 'vip', ''),
(434, 'dermenol:der180168', 'premium', ''),
(435, 'xxddcc:xxddcc', 'vip', ''),
(436, 'valval4:valval', 'vip', ''),
(437, 'demon777veka:demon777veka', 'premium', ''),
(438, 'sereoga21:1234qwerzxcv', 'vip', ''),
(439, 'king1050:king1050', 'vip', ''),
(440, 'tipple:bunker13', 'vip', ''),
(441, 'skix07:ctac1020', 'premium', ''),
(442, 'atom1243:12431243a', 'vip', ''),
(443, '12332111:12332111', 'premium', ''),
(444, 'azimut1983:1000000qwe', 'vip', ''),
(445, 'nastanasta:nastanasta', 'vip', ''),
(446, 'lobnya6:13245768', 'vip', ''),
(447, 'rdr1g:25804567', 'vip', ''),
(448, 'pipisun228:pipisun228', 'premium', ''),
(449, 'rapatu:jledfyxbr', 'premium', ''),
(450, 'syward:bhvbr5560', 'vip', ''),
(451, 'ilra:635635il', 'premium', ''),
(452, 'nitro0323:rNL7e3Wx', 'premium', ''),
(453, 'dianaua2:103070diana', 'premium', ''),
(454, 'inal86:inal86', 'premium', ''),
(455, 'zaddirra:03051996', 'vip', ''),
(456, 'mama1999:mama1999', 'vip', ''),
(457, 'lebro123:lebro123', 'vip', ''),
(458, 'adevul10:54guvepu', 'vip', ''),
(459, 'greengluks:401604460', 'vip', ''),
(460, 'yura747:q1w2e3r4t5w', 'vip', ''),
(461, 'trane1423:GodlikE250796', 'vip', ''),
(462, 'teddikas:serdgio130801', 'premium', ''),
(463, 'evanf3:1qaz2wsx', 'vip', ''),
(464, 'dbnfkbr123:asnaeb45568', 'premium', ''),
(465, 'danilios:danilios', 'premium', ''),
(466, 'haose60:54fzb38kk54', 'premium', ''),
(467, 'zaqzaqzaq:zaqzaqzaq', 'vip', ''),
(468, 'asdasdaaa:asdasdaa', 'vip', ''),
(469, 'anton9645:11374907a', 'vip', ''),
(470, 'mitya1009:10092001a', 'premium', ''),
(471, 'suwer009:lwi89620849427', 'vip', ''),
(472, 'seolza:serega1961', 'vip', ''),
(473, 'dadaddadad:dadaddadad', 'premium', ''),
(474, 'yuzvar:18341834', 'vip', ''),
(475, 'cvcvcvcv:cvcvcvcv', 'premium', ''),
(476, 'membermen:970353', 'premium', ''),
(477, 'kiprida99:89082440280', 'vip', ''),
(478, 'nicson1989:nicson676239', 'vip', ''),
(479, 'Tayson_nt:taysonurod28', 'premium', ''),
(480, 'popov654:ifofooL3', 'premium', ''),
(481, 'genadij45:123wsxrfv', 'vip', ''),
(482, 'savelij80:23051980', 'premium', ''),
(483, 'arax:1999199', 'premium', ''),
(484, 'ali005566:ali005566', 'vip', ''),
(485, 'noobpro100:159753625265', 'vip', ''),
(486, 'vampir2003:vampir200', 'premium', ''),
(487, 'licusa:86774636', 'vip', ''),
(488, 'desrizen:70op8090', 'premium', ''),
(489, 'tpatrick45:firet15632', 'premium', ''),
(490, 'asdguy00:asdasd00', 'premium', ''),
(491, 'sangat:sangat', 'vip', ''),
(492, 'myvoden:jVS9mCrJ', 'premium', ''),
(493, 'ostap380:20002pas', 'vip', ''),
(494, 'markupatam:lionking', 'vip', '');

-- --------------------------------------------------------

--
-- Table structure for table `fake`
--

CREATE TABLE `fake` (
  `id` int(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `agent` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fake`
--

INSERT INTO `fake` (`id`, `value`, `type`, `agent`) VALUES
(1, 'geraldchavez@hotmail.com:n360JU3t_r', 'vip', ''),
(2, 'qreynolds@gmail.com:8jk8$OMz$Z', 'vip', ''),
(3, 'rachelsmith@gmail.com:ibpXt35V*8', 'vip', ''),
(4, 'howen@flores.com:UB5a6Wibh(', 'premium', ''),
(5, 'crowe@lewis-jimenez.com:i4%a@HPw)l', 'premium', ''),
(6, 'seanvaldez@webb-carter.net:aC8j7Bev$o', 'vip', ''),
(7, 'benjamin93@gmail.com:oY%7nSoS5c', 'vip', ''),
(8, 'sanchezderek@shaffer-castillo.com:^9$!EQXm!6', 'premium', ''),
(9, 'webbtony@hotmail.com:1b9V*m+3_R', 'vip', ''),
(10, 'jacquelineanderson@roberts-jones.com:sWN@joiD%2', 'vip', ''),
(11, 'allisonjustin@yahoo.com:HX6qRnRf!0', 'premium', ''),
(12, 'anna81@matthews.org:_5K(5p6F$o', 'premium', ''),
(13, 'dhamilton@hotmail.com:&3q#)Kow+8', 'premium', ''),
(14, 'halvarez@frye.com:^Fo5mTdP7P', 'premium', ''),
(15, 'ssmith@lowery-leblanc.com:mr484POn&R', 'vip', ''),
(16, 'carlosprice@fletcher.com:e)V^H0qlfI', 'vip', ''),
(17, 'gkelly@gmail.com:!h+4PkM&%W', 'premium', ''),
(18, 'veronica70@lewis-adams.com:^&oE4SzXch', 'premium', ''),
(19, 'benjaminjones@gmail.com:0f1dAQin&0', 'vip', ''),
(20, 'lesliegomez@williams-barker.info:&6#U&n&u3H', 'premium', ''),
(21, 'justinbanks@hotmail.com:+Db6JQoopG', 'premium', ''),
(22, 'robertsonjennifer@yahoo.com:h^6zFxeAn@', 'premium', ''),
(23, 'ilester@gmail.com:+(EHHN^x$8', 'premium', ''),
(24, 'lopezdonna@buckley-greer.com:4HMLel@t%o', 'premium', ''),
(25, 'thomasfoster@yahoo.com:u*66OB2blR', 'premium', ''),
(26, 'knightjason@valencia.com:$BK7ygdo34', 'vip', ''),
(27, 'mary74@hotmail.com:3i^Wiz77*x', 'vip', ''),
(28, 'johnbrowning@yahoo.com:k2p)@YpL&b', 'premium', ''),
(29, 'xramos@yahoo.com:#5r(eLFgT&', 'vip', ''),
(30, 'michellerivera@yahoo.com:rQ@G7KpW42', 'vip', ''),
(31, 'daniel14@gmail.com:)L0uGXJsOp', 'vip', ''),
(32, 'zmason@bright-gutierrez.com:UY181+Bz@b', 'vip', ''),
(33, 'ianjohnson@yahoo.com:5yKJaJmv*(', 'premium', ''),
(34, 'ysherman@may.biz:*4U8OtGj!8', 'vip', ''),
(35, 'angela04@ortiz.com:a)3PD8Tr2$', 'premium', ''),
(36, 'dmartinez@yahoo.com:JO%qqLs4@1', 'premium', ''),
(37, 'fstewart@arroyo.com:!&r7uGZK0i', 'vip', ''),
(38, 'wstanton@yahoo.com:8n1U5H!O$l', 'premium', ''),
(39, 'paulmartinez@whitehead-johnson.net:G$2GnPRbsO', 'vip', ''),
(40, 'kylemcmillan@yahoo.com:^5f6TJ)1Yg', 'premium', ''),
(41, 'chughes@gmail.com:$3kYD$z1$3', 'premium', ''),
(42, 'kathryn08@brown.biz:SH2KvN#d#U', 'vip', ''),
(43, 'bob19@yahoo.com:Xj6K96Dno#', 'vip', ''),
(44, 'bmoore@hotmail.com:jh39HRfr_Z', 'vip', ''),
(45, 'thomas30@parsons.com:&4EV6Sl+^S', 'premium', ''),
(46, 'christopherlyons@hotmail.com:*1LTquEI8^', 'vip', ''),
(47, 'umoody@wiley-miller.org:&0Vs4CeFwx', 'premium', ''),
(48, 'georgemiller@patterson-johnson.com:G!Fl0Yr4#&', 'vip', ''),
(49, 'longtina@gmail.com:2ah$Nj&R+0', 'vip', ''),
(50, 'petercrane@gomez.net:#6POssnkEX', 'vip', ''),
(51, 'jacobalexander@yahoo.com:w7$)H2XeoS', 'vip', ''),
(52, 'davisrachel@johnson.biz:6@3bYuHXA4', 'premium', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indexing`
--

CREATE TABLE `indexing` (
  `id` int(255) NOT NULL,
  `val` int(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `indexing`
--

INSERT INTO `indexing` (`id`, `val`) VALUES
(1, 5),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `slno` int(255) NOT NULL,
  `email` varchar(4000) NOT NULL,
  `password` varchar(4000) NOT NULL,
  `admin` int(100) NOT NULL DEFAULT '0',
  `token` varchar(9000) DEFAULT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `access_duration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`slno`, `email`, `password`, `admin`, `token`, `last_access`, `access_duration`) VALUES
(1, 'ad@weunitx.com', 'admin', 1, NULL, NULL, NULL),
(4, 'a@g.com', 'admin', 0, NULL, NULL, NULL),
(5, 'd@d.com', 'admin', 0, NULL, NULL, NULL),
(6, 'a@w.com', 'admin', 0, NULL, NULL, NULL),
(7, 'xyz@gmail.com', '1234', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fake`
--
ALTER TABLE `fake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indexing`
--
ALTER TABLE `indexing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `fake`
--
ALTER TABLE `fake`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `indexing`
--
ALTER TABLE `indexing`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`id`) REFERENCES `login` (`slno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
