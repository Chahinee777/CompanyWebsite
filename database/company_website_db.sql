-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 03:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `file_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `description`, `file_path`, `date_created`, `date_updated`) VALUES
(2, 'Skymil informatique', '&lt;p&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Sp&eacute;cialiste dans la vente du mat&eacute;riel informatique du gaming et de la maintenance (PC , PC Gamer , Workstation et serveur ). Pour ce sp&eacute;cialiste, l&rsquo;enjeu principal &eacute;tait la cr&eacute;ation d&rsquo;un site E-commerce, adapt&eacute; aux mobinautes, dont nous avons r&eacute;ussi &agrave; viser plusieurs objectifs &agrave; savoir la valorisation du socle technique des produits propos&eacute;s.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://skymil-informatique.com/&quot; target=&quot;_blank&quot;&gt;Visiter le Site Web&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677060_327040877_1228865478013279_8209417508897030396_n.jpg', '2021-08-12 11:33:38', '2024-01-19 16:11:22'),
(3, 'SpaceNet', '&lt;p&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;SpaceNet Tunisie, la r&eacute;f&eacute;rence dans le domaine du High-Tech, est un fournisseur de mat&eacute;riel informatique qui propose toutes les nouveaut&eacute;s High-Tech et souhaite moderniser son image par l&rsquo;interm&eacute;diaire d&rsquo;un site web &agrave; la pointe de la technologie et hautement interactif.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://spacenet.tn/&quot; target=&quot;_blank&quot;&gt;Visiter le Site Web&lt;/a&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 'uploads/1705677180_-abonnement-iptv-spacenet.jpg', '2021-08-12 11:35:57', '2024-01-19 16:13:16'),
(5, 'PARAHOUSE', '&lt;p&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Parahouse est une parapharmacie en pleine croissance qui s&rsquo;engage &agrave; proposer un grand choix dans toutes les gammes parapharmacetiques&amp;nbsp;de soin, beaut&eacute; et bien &ecirc;tre aux meilleurs prix. Parahouse cherchait une agence pour cr&eacute;er son identit&eacute; visuelle, son futur site marchand et g&eacute;rer efficacement ses r&eacute;seaux sociaux. C&rsquo;est l&agrave; qu&rsquo;intervient Alinaous.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;a href=&quot;https://www.parahouse.tn/&quot; target=&quot;_blank&quot;&gt;Visiter le Site Web&lt;/a&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677240_326557278_1312872886161627_4178190675319765405_n.png', '2024-01-19 16:14:51', NULL),
(6, 'Snack Time', '&lt;p&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;SNACK TIME&amp;nbsp; le sp&eacute;cialiste parisien des desserts FAIT MAISON vous propose une s&eacute;lection de ses meilleurs desserts : Tiramisu, Cookies, Cup cakes et Jus de fruits frais pour un v&eacute;ritable plaisir des papilles et un voyage culinaire riche en go&ucirc;ts et en saveurs&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;a href=&quot;https://snack-time.fr/&quot; target=&quot;_blank&quot;&gt;Visiter le Site Web&lt;/a&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677300_277355245_120013190624658_6430301341667105104_n.jpg', '2024-01-19 16:15:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '+216 55 432 880'),
('email', 'contact@alinaous.com'),
('facebook', 'https://www.facebook.com/agence.alinaous/'),
('twitter', ''),
('linkin', 'https://www.linkedin.com/company/alinaous/'),
('address', 'Residence Express, Bureau A4-4, Centre urbain nord, Tunis');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `full_name` text NOT NULL,
  `subject` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `full_name`, `subject`, `contact`, `email`, `message`, `status`, `date_created`, `date_updated`) VALUES
(7, 'Amina Maraii', 'Test', '12345678', 'AminaMaraii@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2024-01-24 09:10:19', '2024-01-24 09:10:33'),
(8, 'Mr abdelwahd', 'HELLO', '3535252', 'alnclz@hdhdh', 'CKCLCAMV§AVE', 1, '2024-01-24 11:44:35', '2024-01-24 11:44:48'),
(9, 'Lamys', 'TEST', '23232323', 'lamys@gmail', 'HELLO WORLD', 0, '2024-01-29 17:53:54', NULL),
(10, 'Melliti', 'SWEET', '3456789', 'yes@g', 'OTGRHIJMLKNBMLKGB', 1, '2024-01-29 19:04:29', '2024-01-29 19:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `file_path`, `date_created`, `date_updated`) VALUES
(1, 'Développement Web & Mobile', '&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-19c1c7e&quot; data-id=&quot;19c1c7e&quot; data-element_type=&quot;column&quot; style=&quot;box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); position: relative; min-height: 1px; display: flex; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 570px;&quot;&gt;&lt;div class=&quot;elementor-widget-wrap elementor-element-populated&quot; style=&quot;box-sizing: border-box; position: relative; width: 570px; flex-wrap: wrap; align-content: flex-start; display: flex; padding: 0px 0px 0px 35px;&quot;&gt;&lt;div class=&quot;elementor-element elementor-element-b9752db elementor-widget elementor-widget-imroz-list-style&quot; data-id=&quot;b9752db&quot; data-element_type=&quot;widget&quot; data-widget_type=&quot;imroz-list-style.default&quot; style=&quot;box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 535px;&quot;&gt;&lt;span style=&quot;font-family: Poppins, sans-serif; font-size: 16px;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Un site internet esth&eacute;tique, c&rsquo;est bien. Un site internet performant, s&eacute;curis&eacute; et qui convertit, c&rsquo;est encore mieux ! Depuis 2013, notre p&ocirc;le en d&eacute;veloppement web met son savoir-faire au service de nos clients pour construire des solutions techniques r&eacute;pondant &agrave; leur cahier des charges, tout autant qu&rsquo;aux besoins exprim&eacute;s par les utilisateurs finaux. Vitrine ou e-commerce, Nos d&eacute;veloppeurs Full stack collaborent avec nos designers UX pour mettre au point des solutions web pertinentes. Leur vocation ? Allier robustesse technique, ergonomie et engagement de l&rsquo;utilisateur.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;', 'uploads/1705676866_1705666413_Développement Web & Mobile.png', '2021-08-12 10:12:40', '2024-01-19 16:09:10'),
(4, 'Maintenance & Evolution', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 16px; line-height: var(--line-height-b1); font-family: Poppins, sans-serif;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;La maintenance web est n&eacute;cessaire afin de garantir la p&eacute;rennit&eacute; du site internet .Dans ce but, Alinaous vous propose un service de maintenance corrective tr&egrave;s efficace qui vous garantit la maintenance, le d&eacute;pannage et le suivi de votre site.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; line-height: var(--line-height-b1); font-family: Poppins, sans-serif;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Les services de maintenance Web con&ccedil;us pour votre entreprise &Agrave; chaque recherche en ligne, 65 % des utilisateurs d&eacute;couvrent une nouvelle entreprise, un nouveau produit ou un nouveau service. Ils visitent votre site Web, explorent vos produits, parcourent vos services et obtiennent une premi&egrave;re impression de votre entreprise. Cette premi&egrave;re impression peut faire ou casser la prochaine vente de votre entreprise. Ce fait rend la maintenance du site internet une priorit&eacute; absolue pour les entreprises aujourd&rsquo;hui.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705676803_1705666489_Maintenance & Evolution.png', '2021-08-12 10:28:12', '2024-01-19 16:06:43'),
(5, 'Design & Innovation', '&lt;div class=&quot;elementor-element elementor-element-6175140 title elementor-widget elementor-widget-heading&quot; data-id=&quot;6175140&quot; data-element_type=&quot;widget&quot; data-widget_type=&quot;heading.default&quot; style=&quot;--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 535px; margin-bottom: 20px; margin-block-end: 20px; font-family: Poppins, sans-serif; font-size: 18px;&quot;&gt;&lt;div class=&quot;elementor-widget-container&quot; style=&quot;transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);&quot;&gt;&lt;h2 class=&quot;elementor-heading-title elementor-size-default&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: bold; line-height: 1; font-size: 30px; font-family: Poppins, sans-serif; word-break: break-word; padding: 0px;&quot;&gt;&lt;span style=&quot;font-size: 16px; font-weight: 400;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Le design graphique est souvent le reflet de votre entreprise. Il v&eacute;hicule votre identit&eacute;, vos valeurs et votre activit&eacute;, le tout visible au premier coup d&rsquo;&oelig;il. Alinaous est une agence sp&eacute;cialis&eacute;e en graphisme qui, de par sa passion et son savoir-faire en termes de cr&eacute;ation, vous permettra de vous d&eacute;marquer de la concurrence. Avoir une identit&eacute; forte et singuli&egrave;re est essentiel quand il s&rsquo;agit de design graphique. Nous nous engageons &agrave; travailler main dans la main avec vous, afin d&rsquo;&eacute;laborer et de concevoir votre projet. Succ&egrave;s garanti.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;', 'uploads/1705676925_1705666344_Design et innovation.png', '2024-01-19 16:08:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'ALINAOUS-DIGITAL AGENCY'),
(2, 'address', 'Tunis'),
(3, 'contact', '55432880'),
(4, 'email', 'contact@alinaous.com'),
(6, 'short_name', 'ALINAOUS'),
(9, 'logo', 'uploads/1705676160_1628731260_logo.jpg'),
(11, 'welcome_message', 'Depuis plus de 10 ans, nous accompagnons nos clients dans leurs projets de communication & de transformation digitale.'),
(12, 'banner', 'uploads/1628750220_hd-background.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(30) NOT NULL,
  `message_from` text NOT NULL,
  `message` text NOT NULL,
  `file_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `message_from`, `message`, `file_path`, `date_created`, `date_updated`) VALUES
(1, 'DANIEL CHERIFI – CEO Tekkie’s Corner', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; arial,=&quot;&quot; sans-serif;&quot;=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; segoe=&quot;&quot; ui&quot;;=&quot;&quot; font-size:=&quot;&quot; 14px;=&quot;&quot; text-align:=&quot;&quot; left;=&quot;&quot; -webkit-text-fill-color:=&quot;&quot; rgb(24,=&quot;&quot; 24,=&quot;&quot; 27);&quot;=&quot;&quot;&gt;&lt;font color=&quot;#ffffff&quot; style=&quot;&quot;&gt;Collaborer avec quelqu&rsquo;un de comp&eacute;tent, d&rsquo;exp&eacute;riment&eacute;, mais surtout quelqu&rsquo;un qui offre une grande efficacit&eacute; et un excellent rapport qualit&eacute;-prix, c&rsquo;&eacute;tait vraiment un vrai plaisir, je suis tr&egrave;s satisfait de la contribution de l&rsquo;&eacute;quipe. La r&eacute;activit&eacute; est toujours au rendez-vous, merci pour ce super service !&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677650_Screenshot (84).png', '2021-08-12 12:09:25', '2024-01-19 16:21:03'),
(2, 'SLIM BELKADHI – CEO Atlas Security', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; arial,=&quot;&quot; sans-serif;&quot;=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; segoe=&quot;&quot; ui&quot;;=&quot;&quot; font-size:=&quot;&quot; 14px;=&quot;&quot; text-align:=&quot;&quot; left;=&quot;&quot; -webkit-text-fill-color:=&quot;&quot; rgb(24,=&quot;&quot; 24,=&quot;&quot; 27);&quot;=&quot;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;J&rsquo;ai contact&eacute; Alinaous pour la gestion et l&rsquo;animation de toutes les pages du groupe Atlas security, et ce fut un bon choix ! Une agence digitale s&eacute;rieuse qui a su me d&eacute;montrer sa grande exp&eacute;rience. Ils ont am&eacute;lior&eacute; consid&eacute;rablement notre classement de page, la notori&eacute;t&eacute; du groupe et le nombre des nouveaux prospects. Tr&egrave;s bonne compr&eacute;hension du besoin, un travail m&eacute;thodique et des cr&eacute;ations originales. Nous les recommandons les yeux ferm&eacute;s !&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677515_Screenshot (83).png', '2021-08-12 13:11:14', '2024-01-19 16:19:37'),
(3, 'YANN POINCLOUX - Directeur Générale Oribiky', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot; open=&quot;&quot; sans&quot;,=&quot;&quot; arial,=&quot;&quot; sans-serif;&quot;=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; segoe=&quot;&quot; ui&quot;;=&quot;&quot; font-size:=&quot;&quot; 14px;=&quot;&quot; text-align:=&quot;&quot; left;=&quot;&quot; -webkit-text-fill-color:=&quot;&quot; rgb(24,=&quot;&quot; 24,=&quot;&quot; 27);&quot;=&quot;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;L&rsquo;&eacute;quipe Alinaous s&rsquo;est montr&eacute;e extr&ecirc;mement rigoureuse en travaillant sur notre projet ambitieux de d&eacute;veloppement de notre application web et mobile. Ils ont rapidement visualis&eacute; notre projet et su embarqu&eacute; toute l&rsquo;&eacute;quipe pour r&eacute;pondre parfaitement &agrave; nos besoins. Nous leur avons fait enti&egrave;rement confiance pour les d&eacute;tails techniques et nous sommes ravis de cette collaboration et du r&eacute;sultat obtenus, l&rsquo;application est bien r&eacute;alis&eacute;e et claire !&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677456_Screenshot (82).png', '2021-08-12 13:12:37', '2024-01-19 16:18:53'),
(5, 'EMNA HAMMI – CEO Into Evidence', '&lt;p&gt;&lt;span style=&quot;font-family: &quot; segoe=&quot;&quot; ui&quot;;=&quot;&quot; font-size:=&quot;&quot; 14px;=&quot;&quot; -webkit-text-fill-color:=&quot;&quot; rgb(24,=&quot;&quot; 24,=&quot;&quot; 27);&quot;=&quot;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;J&rsquo;ai tomb&eacute; sur Alinaous en cherchant une agence pour travailler sur un design qui correspond parfaitement &agrave; mes besoins en un temps serr&eacute;, et depuis, je les ai confi&eacute;s de nombreux projets de design et print et le r&eacute;sultat a toujours d&eacute;pass&eacute; mes attentes et le retour sur investissement a &eacute;t&eacute; consid&eacute;rable ! L&rsquo;&eacute;quipe a cr&eacute;&eacute; des produits visuellement agr&eacute;able gr&acirc;ce &agrave; son souci au d&eacute;tails, son &eacute;coute et son go&ucirc;t esth&eacute;tique. Ce que j&rsquo;ai particuli&egrave;rement appr&eacute;ci&eacute; c&rsquo;est la rapidit&eacute; d&rsquo;ex&eacute;cution ! Une &eacute;quipe au top, merci !&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677707_Screenshot (85).png', '2024-01-19 16:21:47', '2024-01-19 16:21:59'),
(6, 'KAMEL ROMDHANI - CEO Parahouse', '&lt;p&gt;&lt;span style=&quot;font-family: &quot; segoe=&quot;&quot; ui&quot;;=&quot;&quot; font-size:=&quot;&quot; 14px;=&quot;&quot; -webkit-text-fill-color:=&quot;&quot; rgb(24,=&quot;&quot; 24,=&quot;&quot; 27);&quot;=&quot;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;J&rsquo;ai confi&eacute; &agrave; Alinaous le d&eacute;veloppement de mon site e-commerce et le volet community management. On a su m&rsquo;&eacute;couter et m&rsquo;a propos&eacute; des solutions r&eacute;pondant &agrave; mes besoins. Outre l&rsquo;aspect graphique tr&egrave;s visuel et responsive, il permet un r&eacute;f&eacute;rencement efficace dans les moteurs de recherche. De plus, la mise en place d&#039;une strat&eacute;gie Social media nous a fait gagner en termes de notori&eacute;t&eacute; et de ventes en ligne. Un grand merci l&rsquo;&eacute;quipe !&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1705677767_Screenshot (86).png', '2024-01-19 16:22:47', '2024-01-19 16:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Abdelwahed ', 'JAOUADI', 'admin', 'f46e2c7a4bdda8ccb51188c1e8f64b42', 'uploads/1705678020_Admin.jpg', NULL, '2021-01-20 14:02:37', '2024-01-19 16:27:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
