-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 17.Máj 2021, 20:47
-- Verzia serveru: 10.4.17-MariaDB
-- Verzia PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `recepty`
--
CREATE DATABASE IF NOT EXISTS `recepty` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recepty`;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `desserts`
--

CREATE TABLE `desserts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `desserts`
--

INSERT INTO `desserts` (`id`, `name`, `ingredients`, `recipe`) VALUES
(1, 'Čerešňový dezert v pohári', '500 g\r\nčerešne\r\n200 g\r\nčokoládové sušienky\r\n2 PL\r\namaretto\r\n2 tégliky\r\nsmotana na šľahanie\r\n2 tégliky\r\nMascarpone\r\n1 téglik\r\njemný tvaroh\r\n2 balíčky\r\nvanilkový cukor\r\n3 PL\r\njavorový sirup\r\n4 PL\r\nvaječný likér', 'Čerešne umyjeme, pár si ich odložíme na ozdobenie a ostatné odstopkujeme a odkôstkujeme. Sušienky nalámeme na menšie kúsky a pokvapkáme amarettom. Smotanu na šľahanie vyšľaháme.\r\nDo misy si dáme mascarpone, tvaroh, vanilkový cukor, javorový sirup a vaječný likér. Všetko spolu dobre premiešame. Potom jemne vmiešame aj vyšľahanú šľahačku. \r\nPripravíme si veľký dezertný pohár, do ktorého vrstvíme:\r\n\r\n- krém,\r\n\r\n- čerešne,\r\n\r\n- sušienky.\r\n\r\nTakto pripravený dezert dáme aspoň na 2 hodiny do chladničky. Nakoniec ozdobíme odloženými čerešňami a môžeme podávať. '),
(2, 'Rýchly ananásový dezert ', '1 ks\r\nmenší ananás (alebo konzerva)\r\n1 PL\r\ncukor trstinový\r\n300 ml\r\nbiely jogurt\r\n250 g\r\nMascarpone\r\n1 balíček\r\nvanilínový cukor\r\n130 g\r\nmaslové sušienky\r\n1 PL\r\nstrúhaný kokos', 'Do mixéra dáme kocky ananásu, pridáme cukor a mixujeme spolu na pyré. Vodu alebo šťavu pridávame podľa požadovanej hustoty. \r\nDo misy dáme jogurt, mascarpone a vanilkový cukor podľa chuti. Všetko vymiešame, aby sa chute spojili. \r\nSušienky rozdrvíme na drobné kúsky. Môžeme použiť aj mixér. Do rozdrvených sušienok vmiešame strúhaný kokos.\r\nDo pohárov začneme vrstviť sušienky, krém a na záver pridáme ananásové pyré. ');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `mainmeals`
--

CREATE TABLE `mainmeals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `mainmeals`
--

INSERT INTO `mainmeals` (`id`, `name`, `ingredients`, `recipe`) VALUES
(1, 'Pečené kuracie rolky s brokolicou a syrom', '1/2 ks\r\nmenšia brokolica\r\n1 PL\r\nmaslo\r\n1 PL\r\nolej\r\n1 PL\r\nkremžská horčica\r\n1 KL\r\nfrancúzska horčica\r\n150 g\r\nstrúhaný syr\r\n4 ks\r\nkuracie prsia\r\npodľa chuti\r\nsoľ, mleté čierne korenie\r\ntrochu\r\nolej na vyprážanie', 'Brokolicu umyjeme, necháme odkvapkať, nakrájame na menšie kúsky (aj stonku) a rozmixujeme na drobnú ryžu pripomínajúcu konzistenciu (kuchynský robot – sekacie nože).\r\nNa panvici zahrejeme maslo s olejom, pridáme nasekanú brokolicu, trochu soli a pár minút ju restujeme. Primiešame horčice, odstavíme z plameňa, premiestnime do misky a primiešame strúhaný syr.\r\nKuracie prsia naklepeme na tenké plátky. Použijeme na to fóliu alebo mikroténové vrecko a pracujeme opatrne, aby rezne ostali v celku a nemali diery.\r\nNa rezne roztrieme brokolicovo-syrovú plnku, opatrne zrolujeme. Rolády z vrchu osolíme, okoreníme a obalíme v klasickom trojobale (múka, vajce, strúhanka).\r\nObalené rolky opražíme na troche rozpáleného oleja na panvici zo všetkých strán do zlato-hneda. Uložíme do zapekacej misky, prelejeme výpekom z panvice a pečieme v rúre vyhriatej na 180°C ešte 30 minút.   \r\nRoládky necháme chvíľku postáť a servírujeme napríklad s opekanými zemiakmi.'),
(2, 'Rýchle sladko-kyslé kura s ananásom', '500 g\r\nkuracie prsia\r\n1 konzerva\r\nananás (kúsky)\r\n1 ks\r\nčervená paprika\r\n3 PL\r\nolej\r\n2 PL\r\nhladká múka\r\n1 PL\r\nmed\r\n1 PL\r\nsójová omáčka\r\n1 PL\r\ncitrónová šťava\r\n1 KL\r\nkukuričný škrob\r\n150 ml\r\nvoda\r\n \r\nsoľ, mleté čierne korenie, čili\r\n2 hrnčeky\r\nryźa', 'Začneme prílohou. Dáme variť / dusiť posolenú ryžu s dvojnásobkom vody do mäkka.\r\nKuracie prsia nakrájame na asi centimeter hrubé rezančeky a obalíme ich v múke, ktorú sme jemne osolili a okorenili.\r\nNa väčšej panvici rozohrejeme olej a kúsky mäska na ňom najskôr sprudka necháme zatiahnuť, potom znížime intenzitu plameňa a opekáme do mäkka (asi 10 minút), ak treba podlejeme trochou vody. Kúsky mäsa vytiahneme z panvice a necháme odpočívať bokom.\r\nPapriku očistíme, umyjeme a nakrájame na väčšie kúsky.\r\nAnanásový kompót scedíme, šťavu prelejeme do misky a zmiešame s vodou, sójou omáčkou, citrónovou šťavou, medom a nakoniec všetko dobre rozmiešame s kukuričným škrobom.\r\nNa rovnakú panvicu pridáme nakrájanú papriku a minútku ju orestujeme. Následne prihodíme kúsky ananásu a okamžite zalejeme namiešanou omáčkou.\r\nPridáme kúsky kuraťa, štipku čili a všetko spolu povaríme zhruba 5 minút. Ochutnáme, prípadne ešte dochutíme soľou.\r\nPodávame s dusenou ryžou, dozdobené čerstvou petržlenovou vňaťou. ');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_17_132959_recept', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `soups`
--

CREATE TABLE `soups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `soups`
--

INSERT INTO `soups` (`id`, `name`, `ingredients`, `recipe`) VALUES
(1, 'Kuracia polievka na grécky spôsob', ' 1 ks\r\ncelé kura (cca 1,5 kg)\r\n1 ks\r\nkurací bujón\r\n10 ks\r\ncelé čierne korenie\r\n1 KL\r\nsušený tymián\r\n1 ks\r\nbobkový list\r\n1 ks\r\npór\r\n2 ks\r\nmrkva\r\n1 ks\r\ncibuľa\r\n100 g\r\nryža\r\n3 ks\r\nžĺtky\r\n2 ks\r\ncitrón\r\nsoľ, olivový olej, tymian', 'Kura naporcujeme ostrým nožom. Rozrežeme ho na polovicu, odrežeme krídelka, prsia zbavíme kože a oddelíme ich o hrudnej kosti. Odrežeme stehienka, zbavíme ich kože a mäso odrežeme od kosti. Na jednej strane pracovnej dosky nám ostanú prsia a vykostené stehienka, na druhej strane kosti s kúskami mäsa.\r\nKosti nalomíme opačnou stranou noža a vložíme ich do hlbokého hrnca. Pridáme bujón, čierne korenie, tymian, bobkový list a zalejeme 2 litrami vody. Varíme zakryté 1 hodinu.\r\nNakrájame si zeleninu: pór a mrkvu na tenké kolieska a cibuľu na väčšie kocky. V tejto fáze pokrájame aj vykostené stehná a prsia na kocky.\r\nVývar precedíme, vrátime naspäť do hrnca a pridáme zeleninu, mäso a premytú ryžu. Opäť prikryjeme a varíme ďalších 30 minút.  \r\nPripravíme si zmes na konečné zahustenie polievky: v miske spojíme žĺtky a nastrúhanú citrónovú kôru a šťavu. Opatrne pridáme niekoľko žufaniek (0,75 litra)  vriaceho vývaru a vymiešame metličkou.\r\nPolievku stiahneme z plameňa a primiešame žĺtkovú zmes. Dochutíme soľou. Servírujeme s kvapkou olivového oleja a čerstvým tymianom.   '),
(2, 'Hustá zemiaková polievka s čedarom', '6 ks\r\nväčšie zemiaky\r\n2 ks\r\ncibuľa\r\n100 g\r\nmaslo\r\n4 PL\r\nhladká múka\r\n500 ml\r\nkurací bujón (vývar)\r\n1000 ml\r\nplnotučné mlieko\r\n200 g\r\noravská slanina\r\n2 PL\r\nkyslá smotana\r\n2 ks\r\njarná cibuľka\r\n200 g\r\nčedar\r\nsoľ, mleté čierne korenie', 'Zemiaky očistíme a pokrájame na menšie kocky.\r\nDo veľkého hrnca dáme na miernom ohni restovať na kocky nakrájanú slaninku. Keď bude krásne chrumkavá, tak ju vytiahneme a odložíme bokom.\r\nVýpek zo slaniny by mal tvoriť iba tenkú vrstvu na dne hrnca. Ak je ho viac (závisí od podielu tuku v použitej slaninke), odlejeme ho, nakoľko nechceme, aby slanosť a aróma tuku dominovala polievke.\r\nDo hrnca pridáme maslo (áno, celých 100 gramov) a nasekanú cibuľku. Restujeme do sklovita.\r\nPotom prisypeme múku a vareškou vymiešame zásmažku. Necháme dobre prebublať – zhruba minútku.\r\nZásmažku zalejeme kuracím vývarom a dobre premiešame. Vzápätí pridáme aj mlieko.\r\nDo mliekového základu prisypeme zemiaky a polievku privedieme k varu. Varíme približne 20 minút, kým zemiaky nezmäknú.\r\nPolievku ochutnáme a podľa chuti osolíme a okoreníme. Je dobré pridať menej soli, nakoľko čedar je dosť výrazný syr.\r\nZnížime intenzitu plameňa a do polievky primiešame kyslú smotanu, opečenú slaninku (trochu si odložíme na posypanie pri servírovaní), na kolieska nakrájanú jarnú cibuľku a nahrubo nastrúhaný čedar, z ktorého si tiež za hrsť odložíme bokom na finálne dekorovanie.\r\nVšetko spolu zahrievame ešte asi 5 minút a nakoniec ochutnáme, či je polievka dosť slaná.\r\nServírujeme posypanú slaninkou a chedarom. K polievke sa úžasne hodí krajec dobrého chlebíka.');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `desserts`
--
ALTER TABLE `desserts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexy pre tabuľku `mainmeals`
--
ALTER TABLE `mainmeals`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexy pre tabuľku `soups`
--
ALTER TABLE `soups`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `desserts`
--
ALTER TABLE `desserts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `mainmeals`
--
ALTER TABLE `mainmeals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `soups`
--
ALTER TABLE `soups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
