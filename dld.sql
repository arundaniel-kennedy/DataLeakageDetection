-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2020 at 10:21 PM
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
  `status` varchar(300) NOT NULL DEFAULT 'Unblocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `name`, `status`) VALUES
(4, 'zeee', 'Blocked'),
(5, 'deee', 'Unblocked'),
(6, 'rrrr', 'Unblocked');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL,
  `value` text NOT NULL,
  `agent` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `value`, `agent`) VALUES
(1, 'ajaxx66@hotmail.com:jamine5543', '4,6'),
(2, '29isprime@gmail.com:viper1970', '4,5,6'),
(3, 'abel_jess@yahoo.com:flight69', '4,5,6'),
(4, 'andiball007@gmail.com:Liverp00l', '5,6'),
(5, 'ben_coulter@live.com.au:Computer9', '6'),
(6, 'benongth@gmail.com:ben24380', '6'),
(7, 'valencia.andrea2015@gmail.com:mississippi', '6'),
(8, 'anastasiaousaklidis@yahoo.com:JohnLennon40', '6'),
(9, 'zandria_hicks@yahoo.com:Konnic12ha', '6'),
(10, 'graceczhu@gmail.com:Mercury0304', '6'),
(11, 'garyhuff011@gmail.com:hoosiers', NULL),
(12, 'alpha-d@hotmail.com:JagerBomber21', NULL),
(13, 'paul.fallon@email.saintleo.edu:wcbk07', NULL),
(14, 'hrkbustamante@gmail.com:Bustamante20!', NULL),
(15, 'ynakk203@gmail.com:44Whittaker', NULL),
(16, 'ronak.choudhary@gmail.com:5Iodine3', NULL),
(17, 'bufnton@gmail.com:Tony1997', NULL),
(18, 'rsaintvic0002@mymail.lausd.net:Roderick135', NULL),
(19, 'jacquesalexandre@burmanu.ca:Progress4', NULL),
(20, 'frey.robert1@yahoo.com:mustang17', NULL),
(21, 'danielle.oconnell@email.saintleo.edu:accept91', NULL),
(22, 'c.jgrimmond@gmail.com:Changepassword1', NULL),
(23, 'eng.sofi@gmail.com:sms5561731', NULL),
(24, 'katrina.basto@gmail.com:Katrina133', NULL),
(25, 'matthewavazquez@gmail.com:Matt4Real', NULL),
(26, 'rchlkss1@gmail.com:Bigbelly89', NULL),
(27, 'abrar89-@hotmail.com:Abrar1990', NULL),
(28, 'vieirakathryn@yahoo.com:Fr33B!rd', NULL),
(29, 'lisa.marinelarena@yahoo.com:Zinnia246', NULL),
(30, 'trinhau95@gmail.com:tau95AU!', NULL),
(31, 'khalidalawi5@gmail.com:Abdullah5%', NULL),
(32, 'cwohoo@gmail.com:8511usmc', NULL),
(33, 'garrettpauley18@gmail.com:Coppermason1!', NULL),
(34, 'kidistyibrah54@gmail.com:Kidlove05', NULL),
(35, 'keshawn.lowrance@yahoo.com:Lowrance13', NULL),
(36, 'meadough@gmail.com:tretre33', NULL),
(37, 'email2prasuna@yahoo.com:Rmettai4', NULL),
(38, 'ethomas3@scsu.edu:hellokitty', NULL),
(39, 'sschrad@ksu.edu:Hershey80', NULL),
(40, 'melinda.simon@email.saintleo.edu:!25Ackiss', NULL),
(41, 'nebraska.grayson@minerva.kgi.edu:Blue2Blue', NULL),
(42, '2019emk@gmail.com:Bear8Den', NULL),
(43, 'alanmichael.stepto@rmhsevdio.org:Sportmix1', NULL),
(44, 'cbakke@hotmail.com:CBakke22@@', NULL),
(45, 'jnbogue3960@student.waynecc.edu:Jordan*11', NULL),
(46, 'sam.roberts@myemail.indwes.edu:SamCheer23', NULL),
(47, 'tanyabruno79@gmail.com:Diesel15', NULL),
(48, 'rolunlade@yahoo.com:Rukayat1997', NULL),
(49, 'egauvin1@student.gsu.edu:rudyMelody1', NULL),
(50, 'imrswish@aol.com:Magic1234', NULL),
(51, 'jacob_bray@live.com:Scbaseball26', NULL),
(52, 'pororokeroro@outlook.com:Py99061800', NULL),
(53, 'mikematson16@gmail.com:Matson333', NULL),
(54, 'evargas1105@gmail.com:Estrellita#305', NULL),
(55, 'brittanyword1@gmail.com:sharpiesharpie', NULL),
(56, 'kat.skilton@gmail.com:Margaret', NULL),
(57, 'rachellekhoury1999@gmail.com:BrunoMars1', NULL),
(58, 'aishaalabdulla1998@hotmail.com:Shosho33', NULL),
(59, 'knk.jahangir@gmail.com:2ndChance', NULL),
(60, 'emilymokaya@yahoo.com:Supply11', NULL),
(61, 'emilytey09@gmail.com:Billy2015', NULL),
(62, 'mr_graham@yahoo.com:Mdkmc21796!1', NULL),
(63, 'sofiat442@gmail.com:Pizzayummy1016', NULL),
(64, 'kmrichards@mix.wvu.edu:Dogscats1', NULL),
(65, 'kkenziee@hotmail.com:Rylanmakenzee', NULL),
(66, 'eg18@stmarys-ca.edu:Mamaz415', NULL),
(67, 'kara.wright@yahoo.com:Elizabeth8', NULL),
(68, 'hray6080@yahoo.com:Jeremy22', NULL),
(69, 'blg6465@uncw.edu:Lamar123', NULL),
(70, 'gyue0123@gmail.com:Gy01231987', NULL),
(71, 'zxin9@asu.edu:XZw1997516', NULL),
(72, 'jillian.xenia@gmail.com:Wustl123', NULL),
(73, 'alexhuskey22@gmail.com:NRVbdpq3', NULL),
(74, 'claudettewashington6@gmail.com:Elaine54$', NULL),
(75, 'vickymondelus@gmail.com:Love0215', NULL),
(76, 'karma0724.gu@gmail.com:45015231gu_', NULL),
(77, 'benjamin.thomas.428@gmail.com:AGunners14', NULL),
(78, 'aaron_otwell@yahoo.com:Pencil421', NULL),
(79, 'miss.maysaa@gmail.com:zito1982', NULL),
(80, 'klawuhn77@gmail.com:**AngeL247', NULL),
(81, 'jieunh0627@gmail.com:ghkdwldms', NULL),
(82, 'joyful28314@yahoo.com:Jourdan07', NULL),
(83, 'mseredniy@gmail.com:Pa1kour97', NULL),
(84, 'codafarm@gmail.com:Dailey1914', NULL),
(85, 'hurstsomers@hotmail.com:sunshine', NULL),
(86, 'hapa78@gmail.com:sunshine', NULL),
(87, 'rwiesner24@gmail.com:Infoagent1298', NULL),
(88, 'abuchanan@troy.edu:123Babes', NULL),
(89, 'miltonfran38@gmail.com:thumper38', NULL),
(90, 'cpsava@uwalumni.com:Samsung92130', NULL),
(91, 'wheeler561@gmail.com:Ashley28', NULL),
(92, 'jennifer.curry85@gmail.com:Jorden123', NULL),
(93, 'dudwalt@aol.com:pskr*1927', NULL),
(94, 'porteouss302477@cowley.edu:Maia1220!', NULL),
(95, 'shanna.k.liles@gmail.com:puppers1', NULL),
(96, 'barbelone@gmail.com:bb2846', NULL),
(97, 'mstopa@chccs.k12.nc.us:mms3mgt', NULL),
(98, 'vilsongsh@gmail.com:Wendvg12#', NULL),
(99, 'sanchez_lisamarie@yahoo.com:Palace5112', NULL),
(100, 'mellyninja@gmail.com:Uganda2009', NULL),
(101, 'smart012@odu.edu:Broncos!7', NULL),
(102, 'mamaineviaje@yahoo.com:maddessa', NULL),
(103, 'changlongwang2010@gmail.com:850706', NULL),
(104, 'stephanie.cirko@gmail.com:Adam1993', NULL),
(105, 'shondatormohlen@gmail.com:LovesReal25', NULL),
(106, 'zac.mann91@gmail.com:Welcome11', NULL),
(107, 'kpark985c@gmail.com:snucobaP1', NULL),
(108, 'jbarreto03@gmail.com:Chelly1@', NULL),
(109, 'brannonharbur@gmail.com:Kelly1520', NULL),
(110, 'mchugh_cailin@roberts.edu:Bubblegum123', NULL),
(111, 'sutina.chonlachit@mcny.edu:@Sc243959', NULL),
(112, '22235894@student.uwa.edu.au:Irule1234', NULL),
(113, 'hagenall97@aol.com:13019597', NULL),
(114, 'lbrook03@bellsouth.net:1192Patience1', NULL),
(115, 'daisyaywang@yahoo.com:Daisy#36', NULL),
(116, 'michaelaw0248@gmail.com:sachems2018', NULL),
(117, 'asougirin5@gmail.com:Sandman1014', NULL),
(118, 'chasadee.gates@my.tccd.edu:thebomb2012', NULL),
(119, 'pattar1@ymail.com:jasvinderE6', NULL),
(120, 'jordanpeiser@comcast.net:Wwjd4462@', NULL),
(121, 'joemitch508@gmail.com:Gizmo0811', NULL),
(122, 'katevmoo@yahoo.com:Kat13bug', NULL),
(123, 'jsherlick@gmail.com:56Locknut', NULL),
(124, 'sunyibin@msu.edu:Happy2016!', NULL),
(125, 'behendrix7@gmail.com:Corbec99', NULL),
(126, 'morganmurray1997@gmail.com:Bigfoot1997', NULL),
(127, 'corinne.mason@gmail.com:Loven0ni', NULL),
(128, 'mycah1@vt.edu:Creampuffs1@', NULL),
(129, 'chrisgankon@fuller.edu:Kuyet@13!', NULL),
(130, 'warspark274@gmail.com:Dotlock65', NULL),
(131, 'gabriella.sanguineti@gmail.com:septiembre89', NULL),
(132, 'jessicaps.green@gmail.com:Zkieth13', NULL),
(133, 'abf0330@gmail.com:Ihatethis2', NULL),
(134, 'franceslim87@gmail.com:k!zzM387', NULL),
(135, 'idaholizzy@gmail.com:Momndad4041', NULL),
(136, 'ravinder_kaur_26@yahoo.co.in:Rajsim@26', NULL),
(137, 'codymarenius1@gmail.com:Whiteyiscool1', NULL),
(138, 'stevietepper@comcast.net:Brricehs18', NULL),
(139, 'crystal.d.seymore@gmail.com:Christian2', NULL),
(140, 'imeidopfs31599@gmail.com:Sami31599', NULL),
(141, 'jvg16a@acu.edu:Gerrard8', NULL),
(142, 'kezlou@students.pitzer.edu:Lkz1998425', NULL),
(143, 'lhoeft@purdue.edu:Spain123', NULL),
(144, 'bwesley49@gmail.com:Cornchip19', NULL),
(145, 'flashover49@gmail.com:Profire57', NULL),
(146, 'lt181831@misdmail.net:May162003', NULL),
(147, 'turntheairblue@gmail.com:Six666666', NULL),
(148, 'lcm3xf@virginia.edu:Newslang1', NULL),
(149, 'iluvlilsnoopy@hotmail.com:lovely', NULL),
(150, 'shayla403@yahoo.com:MIMIjr1222', NULL),
(151, 'zachmax101@yahoo.com:1451Twinrose', NULL),
(152, 'fluxer9599@gmail.com:Hazama11', NULL),
(153, 'bwest@bellsouth.net:Ilovetorow2', NULL),
(154, 'christina5763@gmail.com:scooter07', NULL),
(155, 'rashed1org@gmail.com:Intertek1', NULL),
(156, 'stojmaja@gmail.com:Mojanova33', NULL),
(157, 'makinsbrandy@gmail.com:Nev9mad4l2', NULL),
(158, 'richt.17@william.jewell.edu:Rich310499', NULL),
(159, 'jk5544g@yahoo.com.tw:Willie1003', NULL),
(160, 'zhangb5@miamioh.edu:Zbr920804', NULL),
(161, 'nikkitheo5@gmail.com:Strongsummer1', NULL),
(162, 'jcallegra@verizon.net:Bullzz17', NULL),
(163, 'nramos0311@hotmail.com:Marine_0311', NULL),
(164, 'tegeg004@d.umn.edu:h339254T!', NULL),
(165, 'ok131@cairn.edu:Pauline97', NULL),
(166, 'whiteag_99@me.com:abc123456', NULL),
(167, 'drcoopmd@gmail.com:sydney95', NULL),
(168, 'jdkniola@iastate.edu:Troninski234', NULL),
(169, 'wiederinchristoph@gmail.com:Abeler.123', NULL),
(170, 'mariah.alexander@talladega.edu:Cherrone2', NULL),
(171, 'jacintawalsh10@gmail.com:j100991', NULL),
(172, 'italo.lujanpedreschi@gmail.com:triunfare', NULL),
(173, 'michael.dean.snodgrass@gmail.com:Stephanie13$', NULL),
(174, 'dauchot5@msn.com:cmd121987', NULL),
(175, 'alonsoxkc134@gmail.com:xiaokaichen1109', NULL),
(176, 'essam.ageel@hotmail.com:Rafan1990', NULL),
(177, 'bandgeek19@juno.com:heidibo2', NULL),
(178, 'lilvergara@yahoo.com:Garrigos77', NULL),
(179, 'teaonnajoachina@gmail.com:Bookie28', NULL),
(180, 'ashutt2014@fau.edu:Heather1!', NULL),
(181, 'mitchell_delborrello@hotmail.com:1969dodge', NULL),
(182, 'brett.rayman@gmail.com:Football70', NULL),
(183, 'jonesmonster55@gmail.com:Josh1998', NULL),
(184, 'hkhubbard@gmail.com:12EhEtler', NULL),
(185, 'switzr@d-e.org:Reedswitzer515', NULL),
(186, 'sanketm@iitk.ac.in:Sanket3', NULL),
(187, 'basketball23gall@gmail.com:Steel01!', NULL),
(188, 'suzannegazz@aol.com:Jf152309!', NULL),
(189, 'fbarca2401@gmail.com:Barcelona10', NULL),
(190, 'yiranx6@uci.edu:Alexis@2015', NULL),
(191, 'roxkight@gmail.com:Hawaii50', NULL),
(192, 'tszion@gmail.com:Ethiopia#1', NULL),
(193, 'kristinbelt@hotmail.com:Kimber012', NULL),
(194, 'alex.devillier@gmail.com:percussion01', NULL),
(195, 'fblan25@outlook.com:1josue123', NULL),
(196, 'jamesoncole22@yahoo.com:Williams2', NULL),
(197, 'emma.hovde@stthomas.edu:Eastview.22', NULL),
(198, 'kristinderitis@yahoo.com:Numberone1', NULL),
(199, 'ryan.j.mackintosh@gmail.com:jag132004', NULL),
(200, 'sb.brijesh26@gmail.com:up2delhi', NULL),
(201, 'bduart13@calstatela.edu:Bryan123', NULL),
(202, 'kellyedwyer2013@gmail.com:Music2013', NULL),
(203, 'suzieqball07502@gmail.com:Appone78', NULL),
(204, 'powert@icloud.com:Piper123', NULL),
(205, '1058051971lmj@gmail.com:SY585lmj', NULL),
(206, 'sbchambers@rogers.com:Ballybarnes2000', NULL),
(207, 'wreardon9@gmail.com:Deadinside420', NULL),
(208, 'lodge.scott@okstate.edu:GlenLivet12!', NULL),
(209, 'penn.have2956@mytfsd.org:Animals9!', NULL),
(210, 'mcdonaldmelonie@yahoo.com:Stanley21', NULL),
(211, 'gmbulabula@westliberty.edu:Gaelle243', NULL),
(212, 'carterlandry1@icloud.com:Carterlandry6', NULL),
(213, 'cain0613@gmail.com:monmochyan23', NULL),
(214, 'andraskim@gmail.com:PW31b9cb', NULL),
(215, 'jriggs00@outlook.com:GreenLantern22', NULL),
(216, 'kbarker2@bucs.fsw.edu:Buckeye15', NULL),
(217, 'beyerrachel91@gmail.com:Blue0205', NULL),
(218, 'davisrousseaudesign@gmail.com:4evertupac', NULL),
(219, 'cknishimoto14@gmail.com:Kikumi96', NULL),
(220, 'mduvall49er@gmail.com:Taylor825', NULL),
(221, 'jazmynminor15@gmail.com:Jazz@2016', NULL),
(222, 'jaduddell01@aol.com:!23Texa$', NULL),
(223, 'skmsulcer@gmail.com:blazer96', NULL),
(224, '20evano@students.mta.qld.edu.au:Olivia1!', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fake`
--

CREATE TABLE `fake` (
  `id` int(255) NOT NULL,
  `value` text NOT NULL,
  `agent` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fake`
--

INSERT INTO `fake` (`id`, `value`, `agent`) VALUES
(1, 'riverakim@gmail.com:_vB2LS8eq2', NULL),
(2, 'edward93@jones.com:ulZ_5MuWM#', NULL),
(3, 'jeremyshepherd@yahoo.com:S)3ZlPV!Hp', NULL),
(4, 'juan01@garcia-ryan.com:6sgwUTF_!&', NULL),
(5, 'rebeccacollins@hernandez.com:fQ0g9Ihs&R', NULL),
(6, 'kenneth98@miller-williams.com:2A7JHbo6$I', NULL),
(7, 'blackkatie@gonzales.com:5moDcHSa$o', NULL),
(8, 'thomas39@hotmail.com:_HND_K0@z9', NULL),
(9, 'brittanyhumphrey@gmail.com:@LR@KB#xv4', NULL),
(10, 'sjoseph@wood.com:#5E6g)ymo7', NULL),
(11, 'clarkedrew@mason-wright.org:_2PESKvebz', NULL),
(12, 'blanchardtamara@yahoo.com:l%7w0xAsrY', NULL),
(13, 'tanyaford@gmail.com:#0hV!Y_sC8', NULL),
(14, 'gordontiffany@roberts-cardenas.info:*0K&o0UP&8', NULL),
(15, 'aroman@shelton-mitchell.com:%7T&0SRx74', NULL);

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
(6, 'a@w.com', 'admin', 0, NULL, NULL, NULL);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `fake`
--
ALTER TABLE `fake`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `indexing`
--
ALTER TABLE `indexing`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `slno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
