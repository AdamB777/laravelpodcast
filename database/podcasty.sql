-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 31, 2023 at 08:33 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podcasty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imieAutora` varchar(256) NOT NULL,
  `nazwiskoAutora` varchar(256) NOT NULL,
  `opisAutora` text DEFAULT NULL,
  `idPodcastu` int(11) NOT NULL,
  `zdjecieAutora` text DEFAULT NULL,
  `idKategorii` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `idUzytkownika` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` (`id`, `imieAutora`, `nazwiskoAutora`, `opisAutora`, `idPodcastu`, `zdjecieAutora`, `idKategorii`, `data`, `idUzytkownika`, `created_at`, `updated_at`) VALUES
(1, 'Marcin ', 'Myszka', 'Polski youtuber, tropiciel nierozwiązanych zagadek kryminalnych[3] oraz twórca Kryminatorium, jednego z najpopularniejszych podcastów w Polsce[1], który był pierwszym tego typu podcastem w Polsce[3][4]. Jest także autorem audioserialu z czasów PRL − „Rozpruwacz z Bydgoszczy”[5][6], nazywanego Polskim Kubą Rozpruwaczem[7].', 1, 'Marcin_Myszka', 1, '2021-01-01', NULL, NULL, NULL),
(2, 'Justyna', 'Mazur', 'Polska podcasterka i blogerka[2].\r\n\r\nStudiowała dziennikarstwo oraz psychologię na Uniwersytecie Jagiellońskim w Krakowie[3], ale nie ukończyła tych studiów. Jest absolwentką Polskiej Szkoły Reportażu, którą ukończyła pracą „Cierpienia wewnętrznego krytyka”[4] opublikowaną w magazynie reporterskim Non/Fiction. Obecnie mieszka w Warszawie[5]. Autorka podcastów Piąte: nie zabijaj, Pogadajmy o życiu, Piąte przez dziesiąte, których odcinki odsłuchano już ponad 30 000 000 razy[6]. Swoją obecność w Internecie rozpoczęła od bloga Krótki poradnik jak ogarnąć życie. Od początku swojego istnienia, podcast Piąte: nie zabijaj znajduje się w pierwszej dziesiątce najpopularniejszych podcastów w Polsce[7] oraz jest jednym z dwóch polskich podcastów, które znalazły się w globalnym zestawieniu 100 najczęściej słuchanych podcastów[8].', 2, 'Justyna_Mazur', 1, '2022-02-01', NULL, NULL, NULL),
(4, 'Olga ', 'Herring', 'Opowiadam o kryminalnych sprawach, które w teorii mogą spotkać każdego z nas.', 4, 'Olga_Herring', 1, '2022-04-01', NULL, NULL, NULL),
(5, 'Dawid, Radosław', 'Podsiadło Kotarski', 'Dawid Henryk Podsiadło (ur. 23 maja 1993 w Dąbrowie Górniczej) – polski piosenkarz oraz autor tekstów. Wokalista zespołu Curly Heads.\r\n\r\nW 2012 zwyciężył w finale drugiej edycji programu telewizyjnego X Factor[2]. W 2013 wydał debiutancki album pt. Comfort and Happiness, który dotarł do 1. miejsca polskiej listy sprzedaży i rozszedł się ponad 150 tys. egzemplarzy, dzięki czemu zdobył status diamentowej płyty[3] i został najlepiej sprzedającym się albumem w Polsce w 2013. W 2015 wydał drugi album pt. Annoyance and Disappointment, który również dotarł do 1. miejsca OLiS oraz sprzedał się w ponad 150 tys. sztuk, zdobywając status diamentowy[3]. W 2018 wydał trzeci album pt. Małomiasteczkowy, z którym trzeci raz z rzędu zagościł na 1. miejscu OLiS[3]. Łącznie sprzedał ponad 600 tys. płyt w Polsce.\r\nBył 18 razy nominowany do nagród Fryderyków, z czego 12-krotnie wygrywał plebiscy\r\n\r\nRadosław Jerzy Kotarski (ur. 9 stycznia 1986 w Zielonej Górze) – polski dziennikarz, przedsiębiorca, twórca kanału Polimaty w serwisie YouTube, w którym prezentuje treści edukacyjne. Prowadzący i reżyser programu Podróże z historią tworzonego dla TVP2, współzałożyciel sieci partnerskiej LifeTube, właściciel wydawnictwa Altenberg.', 5, 'Podsiadlo_Kotarski', 2, '2023-01-01', NULL, NULL, NULL),
(6, 'Tomasz', 'Sekielski', 'Polski dziennikarz radiowy i telewizyjny, autor filmów dokumentalnych, reportaży telewizyjnych, prozaik, od lipca 2022 redaktor naczelny Newsweek Polska.\r\n\r\nScenarzysta i reżyser filmów dokumentalnych Tylko nie mów nikomu (2019) Zabawa w chowanego (2020), które poruszyły temat wykorzystywania seksualnego dzieci w Kościele katolickim w Polsce i wywołały ogólnokrajową dyskusję. Na przestrzeni lat Sekielski był związany z redakcjami TVN, TVN24, TVP1, TVP Info, Wprost, Nowej TV, Wirtualnej Polski i Onetu. Wraz z Andrzejem Morozowskim był współgospodarzem programu Teraz my! w TVN. W 2006 roku śledztwo dziennikarzy ujawniło rozmowy pomiędzy grupą polityków rządzącej partii Prawo i Sprawiedliwość i jedną z posłanek. Publikacja jego wyników doprowadziła do wybuchu tzw. afery taśmowej. Część komentatorów twierdziła, że nagrania są dowodem korupcji politycznej rządzącej partii. W 2018 Sekielski zapoczątkował własny kanał na YouTube.\r\n\r\nZa swoją pracę otrzymał szereg nagród, w tym Nagrodę im. Andrzeja Woyciechowskiego (2006, 2019), Grand Press (2006, 2014, 2019), Wiktora (2006, 2019), Telekamery (2007, 2008), MediaTory (2010, 2019) i Polską Nagrodę Filmową Orzeł za najlepszy film dokumentalny (2020).', 6, 'Tomasz_Sekielski', 2, '2022-09-01', NULL, NULL, NULL),
(7, 'Adam ', 'Bodnar', 'Adam Piotr Bodnar (ur. 6 stycznia 1977 w Trzebiatowie) – polski prawnik i nauczyciel akademicki, doktor habilitowany nauk prawnych, działacz na rzecz praw człowieka. W latach 2010–2015 wiceprezes Helsińskiej Fundacji Praw Człowieka, w latach 2015–2021 rzecznik praw obywatelskich, profesor uczelni na Uniwersytecie SWPS i od 2021 dziekan Wydziału Prawa tego uniwersytetu.', 7, 'Adam_Bodnar', 2, NULL, NULL, NULL, NULL),
(8, 'Joanna', 'Okuniewska', 'Joanna Okuniewska – polska podcasterka, twórczyni m.in. Tu Okuniewska i Ja i moje przyjaciółki idiotki, które uznaje się za jedne z najpopularniejszych podcastów w Polsce w 2020 roku z około 100 000 odsłuchań pojedynczych odcinków.', 8, 'Joanna_Okuniewska', 3, NULL, NULL, NULL, NULL),
(9, 'Karol', 'Paciorek', '(ur. 15 października 1986 w Limanowej) – polski twórca internetowy, dziennikarz, prezenter telewizyjny, fotograf.', 10, 'Karol_Paciorek', 3, NULL, NULL, NULL, NULL),
(10, 'Stand-up Polska – Życie jest śmieszne', '', 'Stand-up Polska to grupa komików spcejalizujących się w stand-up comedy.', 11, 'Stand-up_Polska', 3, NULL, NULL, NULL, NULL),
(11, 'Katarzyna', 'Michałowska', 'Jestem absolwentką dwóch kierunków na PG (Wydziału Elektrycznego i Wydziału Zarządzania i Ekonomii). Studiowała dziennikarstwo, doradztwo psychologiczne i pedagogikę.', 12, 'Katarzyna_Michalowska', 5, NULL, NULL, NULL, NULL),
(12, 'Maciej', 'Okraszewski', 'Maciej Okraszewski to twórca bloga i podcastu pt. Dział Zagraniczny, gdzie porusza tematy, o których w mediach słychać niewiele albo wcale.', 13, 'Maciej_Okraszewski', 5, NULL, NULL, NULL, NULL),
(13, 'Anna', 'Witko', NULL, 14, 'Anna_Witko', 8, NULL, NULL, NULL, NULL),
(14, 'Alicja', '', 'Mieszka obecnie na Wysokim Wybrzeżu w Szwecji. Miejscu gdzie głęboki las spotyka się ze stromymi skałami. Opowiada o tym jak po kilku latach mieszkania w Norwegii odnalazłam się na północy. ', 15, 'Alicja', 8, NULL, NULL, NULL, NULL),
(15, 'Asia ', 'Dziuba ', 'Już od ponad 10 lat uczę Was gruzińskiego, a Kaukazem zajmuję się od 16 lat. Prowadzę również podcast ”Kaukazomaniacy”, w którym w zaproszonymi gośćmi przybliżam Wam ten region. Z wykształcenia jestem politologiem specjalizującym się w Kaukazie, który pasję do kaukaskiej polityki zamienił na pasję językoznawczą. Mam na swoim koncie grubo ponad 30 artykułów i publikacji na temat regionu. \r\n\r\nZnam 7 języków , uczyłam się w sumie 14, a do tego czytam w 5 alfabetach. A kiedy nie zajmuję się Kaukazem, wspieram innych jako business i agile coach oraz leader zespołów IT. ', 16, 'Joanna_Dziuba', 8, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nazwa` varchar(256) NOT NULL,
  `opis` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `nazwa`, `opis`, `created_at`, `updated_at`) VALUES
(1, 'Kryminalny', 'Skupia się na historiach związanych z przestępczością, zarówno prawdziwych jak i fikcyjnych.', NULL, NULL),
(2, 'Informacyjny ', 'Skupia się na przekazywaniu informacji na różne tematy, takie jak polityka, ekonomia, nauka lub technologia.', NULL, NULL),
(3, 'Rozrywkowy ', 'Zawiera rozrywkowe treści, takie jak komentarze na temat popkultury, recenzje filmów i gier, a także rozmowy z gośćmi z różnych dziedzin.', NULL, NULL),
(4, 'Motywacyjny ', 'Skupia się na motywowaniu i inspirowaniu słuchaczy do osiągnięcia ich celów, zawiera rozmowy z ludźmi, którzy odniesli sukces oraz porady dotyczące rozwoju osobistego.', NULL, NULL),
(5, 'Edukacyjny ', 'Zawiera treści edukacyjne na różne tematy, takie jak historia, języki obce, nauki przyrodnicze.', NULL, NULL),
(6, 'Psychologiczny', 'Skupia się na tematach związanych z psychologią, takich jak zdrowie psychiczne, radzenie sobie z emocjami, relacje międzyludzkie, rozwój osobisty itp.', NULL, NULL),
(7, 'historyczny', 'Skupia się na tematach związanych z historią. Może dotyczyć różnych okresów historycznych, od starożytności po współczesność, a także różnych regionów świata.', NULL, NULL),
(8, 'Podróżniczy ', 'Skupia się na tematach związanych z podróżami, takich jak destynacje, kultura, jedzenie i przeżycia. Może zawierać wywiady z ekspertami w dziedzinie podróży, osobiste historie i porady od podróżników oraz informacje dotyczące planowania i budżetowania podróży.', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komentarzedoautorow`
--

CREATE TABLE `komentarzedoautorow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tytul` varchar(256) NOT NULL,
  `tresc` text NOT NULL,
  `idAutora` int(11) NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarzedoautorow`
--

INSERT INTO `komentarzedoautorow` (`id`, `tytul`, `tresc`, `idAutora`, `idUzytkownika`, `data`, `created_at`, `updated_at`) VALUES
(2, 'Polecam!', 'Ten podkast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 8, 4, '2022-11-02', NULL, NULL),
(3, 'Rewelacja!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 1, 6, '2022-11-03', NULL, NULL),
(4, 'Znakomity!', 'Słucham tego podkastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 3, 5, '2022-11-04', NULL, NULL),
(5, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 9, 1, '2022-11-05', NULL, NULL),
(6, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 12, 3, '2022-11-06', NULL, NULL),
(7, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 7, 2, '2022-11-07', NULL, NULL),
(8, 'Znakomity!', 'Słucham tego podkastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 2, 4, '0000-00-00', NULL, NULL),
(9, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 4, 6, '2022-11-09', NULL, NULL),
(10, 'Bardzo dobry!', 'Ten podkast jest naprawdę bardzo dobry. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 6, 5, '2022-11-10', NULL, NULL),
(11, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 11, 1, '2022-11-11', NULL, NULL),
(12, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 10, 3, '2022-11-12', NULL, NULL),
(13, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 1, 2, '2022-11-13', NULL, NULL),
(14, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 12, 4, '2022-11-14', NULL, NULL),
(15, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 3, 6, '2022-11-15', NULL, NULL),
(16, 'Bardzo dobry!', 'Ten podkast jest naprawdę bardzo dobry. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 7, 5, '2022-11-16', NULL, NULL),
(17, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 9, 1, '2022-11-17', NULL, NULL),
(18, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 2, 3, '2022-11-18', NULL, NULL),
(19, 'Świetny!', 'Ten podkast jest naprawdę świetny. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 4, 2, '2022-11-19', NULL, NULL),
(21, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 6, 6, '2022-11-21', NULL, NULL),
(22, 'Niezwykle interesujący!', 'Ten podkast jest naprawdę niezwykle interesujący. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 7, 5, '2022-11-22', NULL, NULL),
(23, 'Znakomity!', 'Słucham tego podkastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 8, 1, '2022-11-23', NULL, NULL),
(24, 'Wart uwagi!', 'Ten podkast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 9, 3, '2022-11-24', NULL, NULL),
(25, 'Rewelacyjny!', 'Ten podkast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 10, 2, '2022-11-25', NULL, NULL),
(26, 'Świetny!', 'Ten podkast jest naprawdę świetny. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 11, 4, '2022-11-26', NULL, NULL),
(27, 'Polecam!', 'Ten podkast jest naprawdę wart uwagi. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 12, 6, '2022-11-27', NULL, NULL),
(28, 'Rewelacyjny podkast!', 'Słucham tego podkastu od samego początku i za każdym razem jestem zachwycony.', 14, 2, '2022-12-01', NULL, NULL),
(29, 'Świetna rozmowa', 'Ostatni odcinek z gościem X był naprawdę interesujący i pouczający.', 15, 4, '2022-11-25', NULL, NULL),
(30, 'Polecam!', 'Ten podkast to prawdziwa gratka dla fanów tematyki Y.', 13, 6, '2022-11-15', NULL, NULL),
(31, 'Znakomity!', 'Autor potrafi przedstawić skomplikowane zagadnienia w prosty i zrozumiały sposób.', 13, 1, '2022-10-20', NULL, NULL),
(32, 'Niezwykle ciekawy', 'Każdy odcinek to nowa porcja wiedzy i inspiracji.', 14, 3, '2022-10-10', NULL, NULL),
(33, 'Wyjątkowy', 'Ten podkast to prawdziwa perła w morzu treści dostępnych online.', 15, 5, '2022-09-30', NULL, NULL),
(34, 'Niepowtarzalny', 'Autor ma niezwykły dar przyciągania uwagi słuchaczy swoim ciepłym i przyjaznym głosem.', 15, 2, '2022-09-15', NULL, NULL),
(35, 'Bezkonkurencyjny', 'Ten podkast to obowiązkowa pozycja dla każdego, kto interesuje się tematyką Z.', 13, 4, '2022-09-01', NULL, NULL),
(36, 'Wybitny', 'Autor potrafi przedstawić ważne wydarzenia w sposób interesujący i przystępny.', 14, 6, '2022-08-15', NULL, NULL),
(54, 'Temporibus quo eum sapiente modi laboriosam non consequuntur.', 'Iste sunt asperiores suscipit amet sed. Alias eius quia laboriosam ut deserunt voluptas in ex. Nam velit iure velit sit. Quis ut cupiditate consequuntur veritatis quasi ut placeat.', 6, 10, '1980-08-29', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(55, 'Aut quam voluptatem et.', 'Exercitationem fugiat ut totam molestias atque porro est ut. Deserunt aliquid eos sit aperiam. Omnis ratione deserunt sunt. Consequatur ducimus harum non vero.', 1, 1, '2005-07-07', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(56, 'Accusamus aperiam dignissimos consequuntur ut vero.', 'Similique error dolorem id. Hic dolorem itaque culpa fuga. Dolores blanditiis explicabo doloremque ea earum sit non.', 15, 9, '1997-09-20', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(57, 'Ducimus incidunt libero nihil ipsum neque facilis voluptatibus alias.', 'Voluptatibus minima minus est quia architecto. Recusandae impedit rerum et aut est. Voluptatem ut quibusdam fugiat magni et eos. Aut molestias et delectus.', 12, 1, '2000-04-15', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(58, 'Est pariatur veniam perferendis quaerat nihil consequatur debitis.', 'Corporis vitae expedita quasi sint cupiditate assumenda. Tempore eligendi dolorem quis aspernatur inventore ipsam. Consequatur ratione quisquam id veritatis sint. Porro nisi dicta recusandae architecto atque in.', 14, 5, '2008-04-26', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(59, 'Consequatur ea reiciendis enim.', 'Culpa autem est assumenda voluptas voluptates quas. Quis veniam vitae dolor et qui praesentium sequi. Ab cum eos ullam fugit modi iure vel delectus. Debitis officiis ipsam culpa voluptatem consequatur.', 4, 4, '1989-01-20', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(60, 'Dicta repellendus consequatur voluptatem necessitatibus.', 'Consequatur veritatis earum recusandae nulla pariatur eos nisi. Voluptatem voluptatibus error deserunt tempora quaerat ea incidunt ipsa. Tempore explicabo nesciunt eligendi. Amet modi blanditiis odio.', 12, 2, '2021-02-07', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(61, 'Accusantium voluptatem numquam et dolor impedit laboriosam.', 'Fuga fugit tempore animi voluptas expedita. Velit adipisci quae illo animi maiores cumque eveniet nihil. Recusandae quod consequatur numquam occaecati qui ullam.', 2, 5, '2013-07-03', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(62, 'Sed voluptatem magni incidunt.', 'Consequatur omnis quae suscipit omnis doloremque. Laborum cum saepe nihil quia earum. Non provident nobis minima iusto.', 14, 8, '1989-12-05', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(63, 'Eum magni hic quis illum rerum eligendi quia.', 'Voluptatem qui esse quia non praesentium hic facere. Sit adipisci voluptatum aspernatur sed impedit labore harum eveniet. Architecto fuga illum ad consequuntur at. Dolor et similique et velit porro rerum porro.', 7, 9, '1979-07-07', '2023-05-28 16:15:31', '2023-05-28 16:15:31'),
(64, 'Nihil veritatis distinctio deserunt.', 'Eius omnis et ipsa et voluptas eum. Qui aliquam exercitationem veritatis. Voluptas fugit dignissimos consequatur fugit.', 10, 6, '1990-09-10', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(65, 'Quis facilis sed necessitatibus perferendis.', 'Non et provident eum. Suscipit suscipit maxime natus ipsam nihil. Consequatur omnis dolor saepe dolores perferendis tempora quo id. Blanditiis ducimus repellat numquam quasi. Ut nesciunt id laboriosam temporibus eligendi odit vero.', 2, 2, '1980-04-10', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(66, 'Aliquam eligendi eum commodi est.', 'Occaecati rem nam et ut. Magni cumque quibusdam voluptates cum. Incidunt accusantium doloribus aperiam hic est.', 11, 9, '2019-06-02', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(67, 'Officiis modi quibusdam repellendus cupiditate optio harum.', 'Esse et atque est officiis. Expedita iusto provident officia et dolore pariatur distinctio. Sit est veniam quos sint reiciendis harum consequuntur.', 11, 1, '2021-02-15', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(68, 'Voluptas unde accusamus nostrum aperiam.', 'Qui dolor aut ipsa. Ut est veritatis et minus architecto et qui.', 6, 7, '2002-10-24', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(69, 'Quia ut ut veniam dolores et suscipit ullam quam.', 'Cumque quia ea mollitia pariatur. Voluptas deserunt ea aut et. Esse rerum perspiciatis quia quia officiis consequatur officia.', 3, 4, '1971-12-12', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(70, 'Voluptas voluptatem voluptatem expedita aperiam aliquam.', 'Iure dolor quaerat nesciunt magni sed nesciunt optio. Quasi eos quo eius id iure incidunt eos.', 12, 3, '1990-03-05', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(71, 'Quae enim qui quia aspernatur non aut.', 'Voluptas sint omnis fugiat. Voluptates earum voluptatem quod occaecati. Officia qui velit voluptas quam dolorem molestiae.', 1, 8, '1994-07-12', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(72, 'Excepturi quod libero quod numquam laborum rerum magni.', 'Natus error reprehenderit sed sed distinctio ab. Ut omnis omnis cum eligendi aut. Officia dolorem est et aut quos expedita. Quia et beatae quia sunt similique porro dolores.', 12, 6, '2009-09-04', '2023-05-28 16:15:57', '2023-05-28 16:15:57'),
(73, 'Impedit dolores adipisci voluptatem voluptates deserunt cupiditate qui voluptatem.', 'Consequuntur tempore vitae nihil consequuntur. Et quos quisquam est modi quia quo. Vel omnis impedit voluptatem sapiente. Dolores culpa eius ea ipsum qui tenetur. Enim consectetur odio natus aperiam iusto dolorem.', 1, 7, '1999-07-16', '2023-05-28 16:15:57', '2023-05-28 16:15:57');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komentarzedopodcastow`
--

CREATE TABLE `komentarzedopodcastow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tytul` varchar(256) NOT NULL,
  `tresc` text NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `idPodcastu` int(11) NOT NULL,
  `data` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarzedopodcastow`
--

INSERT INTO `komentarzedopodcastow` (`id`, `tytul`, `tresc`, `idUzytkownika`, `idPodcastu`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Świetny podcast!', 'Słucham tego podcastu już od dłuższego czasu i zawsze jestem zadowolony. Tematy są bardzo interesujące i merytoryczne.', 2, 5, '2022-11-01', NULL, NULL),
(2, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 4, 8, '2022-11-02', NULL, NULL),
(3, 'Rewelacja!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 6, 1, '2022-11-03', NULL, NULL),
(4, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 5, 3, '2022-11-04', NULL, NULL),
(5, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są ciekawe i przedstawione w przystępny sposób.', 1, 9, '2022-11-05', NULL, NULL),
(6, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo interesujące i merytoryczne.', 3, 12, '2022-11-06', NULL, NULL),
(7, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 7, '2022-11-07', NULL, NULL),
(8, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 4, 2, '2022-11-08', NULL, NULL),
(10, 'Bardzo dobry!', 'Ten podcast jest naprawdę bardzo dobry. Tematy są bardzo interesujące i merytoryczne.', 5, 6, '2022-11-10', NULL, NULL),
(11, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 1, 11, '2022-11-11', NULL, NULL),
(12, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 3, 10, '2022-11-12', NULL, NULL),
(13, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 1, '2022-11-13', NULL, NULL),
(14, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 4, 12, '2022-11-14', NULL, NULL),
(15, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są bardzo kompetentne i przedstawione w interesujący sposób.', 6, 3, '2022-11-15', NULL, NULL),
(16, 'Bardzo dobry!', 'Ten podcast jest naprawdę bardzo dobry. Tematy są ciekawe i przedstawione w przystępny sposób.', 5, 7, '2022-11-16', NULL, NULL),
(17, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 1, 9, '2022-11-17', NULL, NULL),
(18, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 3, 2, '2022-11-18', NULL, NULL),
(19, 'Świetny!', 'Ten podcast jest naprawdę świetny. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 2, 4, '2022-11-19', NULL, NULL),
(20, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo kompetentne i przedstawione w interesujący sposób.', 4, 6, '2022-11-20', NULL, NULL),
(21, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 6, 5, '2022-11-21', NULL, NULL),
(22, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są bardzo interesujące i merytoryczne.', 5, 1, '2022-11-22', NULL, NULL),
(23, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Tematy są bardzo interesujące i przedstawione w ciekawy sposób.', 3, 3, '2022-11-23', NULL, NULL),
(24, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 2, '2022-11-24', NULL, NULL),
(25, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są bardzo interesujące i merytoryczne.', 4, 4, '2022-11-25', NULL, NULL),
(26, 'Świetny!', 'Ten podcast jest naprawdę świetny. Tematy są ciekawe i przedstawione w przystępny sposób.', 6, 6, '2022-11-26', NULL, NULL),
(27, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Tematy są bardzo kompetentne i przedstawione w interesujący sposób.', 5, 5, '2022-11-27', NULL, NULL),
(28, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Tematy są ciekawe i przedstawione w przystępny sposób.', 1, 1, '2022-11-28', NULL, NULL),
(29, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Tematy są bardzo interesujące i merytoryczne.', 3, 3, '2022-11-29', NULL, NULL),
(30, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Tematy są ciekawe i przedstawione w przystępny sposób.', 2, 2, '2022-11-30', NULL, NULL),
(31, 'Rewelacyjny!', 'Ten podcast jest naprawdę rewelacyjny. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 2, 13, '2022-11-28', NULL, NULL),
(32, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 4, 14, '2022-11-29', NULL, NULL),
(33, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 6, 15, '2022-11-30', NULL, NULL),
(34, 'Wartuwagi!', 'Ten podcast jest naprawdę wart uwagi. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 1, 16, '2022-12-01', NULL, NULL),
(35, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 3, 13, '2022-12-02', NULL, NULL),
(36, 'Świetny!', 'Ten podcast jest naprawdę świetny. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 5, 14, '2022-12-03', NULL, NULL),
(37, 'Polecam!', 'Ten podcast jest naprawdę wart uwagi. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 6, 15, '2022-12-04', NULL, NULL),
(38, 'Rewelacyjny!', 'Ten podcast to prawdziwa rewelacja. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 2, 16, '2022-12-05', NULL, NULL),
(39, 'Niezwykle interesujący!', 'Ten podcast jest naprawdę niezwykle interesujący. Autorzy potrafią przedstawić skomplikowane tematy w przystępny sposób.', 4, 13, '2022-12-06', NULL, NULL),
(40, 'Znakomity!', 'Słucham tego podcastu od samego początku i jestem pod wrażeniem. Autorzy są bardzo interesujący i potrafią przedstawić ciekawe tematy.', 1, 14, '2022-12-07', NULL, NULL),
(41, 'Wart uwagi!', 'Ten podcast jest naprawdę wart uwagi. Autorzy są bardzo kompetentni i potrafią przedstawić ciekawe tematy.', 3, 15, '2022-12-08', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_20_135921_create_autorzy_table', 1),
(3, '2023_05_20_140517_create_kategorie_table', 2),
(4, '2023_05_20_140752_create_komentarzedoautorow_table', 3),
(5, '2023_05_20_141126_create_komentarzedopodcastow_table', 4),
(6, '2023_05_20_141628_create_newsy_table', 5),
(7, '2023_05_20_141948_create_oceny_table', 6),
(8, '2023_05_20_142353_create_podcasty_table', 7),
(9, '2023_05_20_142650_create_uzytkownicy_table', 8),
(10, '2023_05_26_090747_add_password_to_uzytkownicy', 9),
(11, '2023_05_26_091433_remove_hash_pass_from_uzytkownicy', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `newsy`
--

CREATE TABLE `newsy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tytul` varchar(256) NOT NULL,
  `tresc` text NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsy`
--

INSERT INTO `newsy` (`id`, `tytul`, `tresc`, `idUzytkownika`, `data`, `created_at`, `updated_at`) VALUES
(1, '1news', '1tresc', 1, '2023-01-01', NULL, NULL),
(2, '2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor reiciendis, consectetur nesciunt labore necessitatibus excepturi enim quasi facilis sapiente sit.', 2, '2023-01-20', NULL, NULL),
(3, '3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dollis sapiente sit.', 3, '2023-01-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ocena` double DEFAULT NULL,
  `idPodcastu` int(11) NOT NULL,
  `idUzytkownika` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id`, `ocena`, `idPodcastu`, `idUzytkownika`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 2, 2, 2, NULL, NULL),
(3, 3, 3, 3, NULL, NULL),
(4, 4, 4, 4, NULL, NULL),
(5, 5, 5, 5, NULL, NULL),
(6, 6, 6, 6, NULL, NULL),
(7, 1, 7, 1, NULL, NULL),
(8, 2, 8, 2, NULL, NULL),
(9, 3, 9, 3, NULL, NULL),
(10, 4, 10, 4, NULL, NULL),
(11, 5, 11, 5, NULL, NULL),
(12, 6, 12, 6, NULL, NULL),
(13, 1, 13, 1, NULL, NULL),
(14, 2, 14, 2, NULL, NULL),
(15, 3, 15, 3, NULL, NULL),
(16, 4, 16, 4, NULL, NULL),
(17, 5, 1, 5, NULL, NULL),
(18, 6, 2, 6, NULL, NULL),
(19, 1, 3, 1, NULL, NULL),
(20, 2, 4, 2, NULL, NULL),
(21, 3, 5, 3, NULL, NULL),
(22, 4, 6, 4, NULL, NULL),
(23, 5, 7, 5, NULL, NULL),
(24, 6, 8, 6, NULL, NULL),
(25, 1, 9, 1, NULL, NULL),
(26, 2, 10, 2, NULL, NULL),
(27, 3, 11, 3, NULL, NULL),
(28, 4, 12, 4, NULL, NULL),
(29, 5, 13, 5, NULL, NULL),
(30, 6, 14, 6, NULL, NULL),
(31, 3, 0, 9, NULL, NULL),
(34, 1, 12, 9, NULL, NULL),
(35, 1, 5, 9, NULL, NULL),
(36, 1, 11, 9, NULL, NULL),
(37, 1, 9, 9, NULL, NULL),
(38, 1, 2, 9, NULL, NULL),
(39, 1, 8, 9, NULL, NULL),
(40, 2, 6, 9, NULL, NULL),
(41, 1, 14, 9, NULL, NULL),
(42, 2, 16, 9, NULL, NULL),
(43, 3, 1, 7, '2023-05-31 04:28:51', '2023-05-31 04:28:51'),
(44, 4, 2, 7, '2023-05-31 04:29:15', '2023-05-31 04:29:15'),
(45, 5, 6, 7, '2023-05-31 14:15:17', '2023-05-31 14:15:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podcasty`
--

CREATE TABLE `podcasty` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tytul` varchar(256) NOT NULL,
  `opis` text NOT NULL,
  `idAutora` int(11) DEFAULT NULL,
  `zdjeciePodcastu` text NOT NULL,
  `idKategorii` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podcasty`
--

INSERT INTO `podcasty` (`id`, `tytul`, `opis`, `idAutora`, `zdjeciePodcastu`, `idKategorii`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Kryminatorium ', 'Audycja prowadzona jest od 2018 roku przez Marcina Myszkę, który wykorzystuje w niej muzykę, efekty dźwiękowe oraz głos aktorów.\r\n\r\nTo blisko 200 odcinków przedstawiających przerażające sprawy kryminalne, które w pewnym czasie wstrząsnęły Polską. Słynne zaginięcia, sylwetki znanych morderców, wreszcie dawne zbrodnie odkurzane w ramach Archiwum X. Jednym słowem – Kryminatorium.', 1, 'Kryminatorium', 1, '2020-11-01', NULL, NULL),
(2, 'Piąte: nie zabijaj', 'Justyna Mazur prezentuje w niej autorski wybór najbardziej intrygujących spraw kryminalnych. Ale wstrząsające opowieści to nie wszystko – autorka zastanawia się również nad podłożem psychologicznym opisywanych spraw.', 2, 'Piate_nie_zabijaj', 1, '2022-11-01', NULL, NULL),
(4, 'Olga Herring: Polskie True Crime & Mystery', 'To polski podcast kryminalny z gatunku true crime i mystery. Olga Herring skupia się w nim na sprawach kryminalnych z całego świata, które do tej pory nie zostały wyjaśnione. Duży nacisk położony jest na rzetelny research, dzięki czemu możemy posłuchać o najdrobniejszych szczegółach dotyczących opisywanych zbrodni.', 4, 'Olga_Herring_Polskie_True_Crime_Mystery', 1, '2022-11-01', NULL, NULL),
(5, 'Podsiadło Kotarski ', 'Podcast Dawida i Radka.', 5, 'Podsiadlo_Kotarski_Podcast', 2, '2023-01-01', NULL, NULL),
(6, 'Sekielski Online', 'Rozmowy na ważne tematy, nie tylko te polityczne z ciekawymi ludźmi, którzy mają coś istotnego do powiedzenia. Bez cenzury, ale zawsze z kulturą. Bez bicia piany, ale z dociekliwością.', 6, 'Sekielski_Online', 2, '2022-01-01', NULL, NULL),
(7, 'Nie tylko o prawach człowieka', 'W podcaście dyskutuję o najważniejszych wydarzeniach z zakresu praw człowieka, praworządności i standardów demokratycznych - w Polsce i na świecie.', 7, 'Nie_tylko_o_prawach', 2, '2022-11-01', NULL, NULL),
(8, 'Ja i moje przyjaciółki idiotki', 'Złamane serca, miłosne rozczarowania i historie bez happy-endu. Czyli historie Twoje i innych mądrych dziewczyn, które miały odwagę się głupio zakochać, a teraz umieją się z tego śmiać.', 8, 'Ja_i_moje_przyjaciolki_idiotki', 3, '2022-11-01', NULL, NULL),
(9, 'Tu Okuniewska', 'Tu Okuniewska, prosto z piwniczki w Reykjaviku. Osobiste dramaty i komedie, wieczne zaczynanie od początku, nocne przemyślenia i rzutnik zorzy polarnej, czyli dźwiękowy zapis tego o czym myślę.', 8, 'Tu_Okuniewska', 3, '2022-12-01', NULL, NULL),
(10, 'Impoderabilia - Karol Paciorek', 'Rozmawiam z moimi gośćmi długo i szczerze.', 9, 'Impoderabilia_Karol_Paciorek', 3, '2022-11-01', NULL, NULL),
(11, 'Stand-Up Polska', 'Zbór Stand-upow polskich twórców', 10, 'Stand-Up_Polska_logo', 3, '2023-11-02', NULL, NULL),
(12, 'Stacja Zmiana', 'Katarzyna Michałowska już od ponad czterech lat nagrywa dla nas rozmowy z tymi, którzy nie boją się zmian, a uważają je za drzwi do lepszego świata. Z tych rozmów dowiemy się niemal wszystkiego. Tematy, związane z życiem zawodowym, osobistym, psychologią, filozofią, hobby, technologią, zdrowiem, zapełniają podcastowe rozmowy. Jeśli więc brakuje Wam motywacji, inspiracji, sił do działania i zmieniania rzeczywistości własnej i społecznej, uruchomcie te rozmowy. Naprawdę warto, bo jeśli już zdecydujecie się na zmiany, goście podcastu podpowiedzą Wam również, jak je wprowadzić małymi krokami, jak przez nie przebrnąć, jak reagować, jeśli nie zaakceptuje ich Wasze otoczenie.', 11, 'Stacja_Zmiana', 5, '2022-11-01', NULL, NULL),
(13, 'Dział Zagraniczny', 'Dział Zagraniczny to podcast o wydarzeniach na świecie, o których w polskich mediach słychać niewiele, lub wcale.', 12, 'Dzial_Zagraniczny', 5, '2022-11-01', NULL, NULL),
(14, 'PrzygodowAnia', 'Podcast PrzygodowAnia to miejsce, gdzie rozmawiamy o podróżach, przygodach i życiu za granicą.', 13, 'PrzygodowAnia_logo', 8, '2022-11-01', NULL, NULL),
(15, 'Łosiologia - nordyckie spacery', 'Łosiologia to podcast prowadzony przez Alicję. To Polka mieszkająca w Szwecji, która przybliża słuchaczom skandynawskie życie.\r\n\r\nAlicja zaprasza do rozmowy gości z innych rejonów Szwecji, aby razem z nimi pogawędzić o podróżach i życiu wśród… tytułowych łosiów. Dużo jest tu mowy o zwyczajnej, codziennej egzystencji, szwedzkich zwyczajach, a także trudnościach życia na emigracji.', 14, 'losiologia_-_nordyckie_spacery', 8, '2022-11-01', NULL, NULL),
(16, 'Kaukazomaniacy', 'Kaukazomaniacy - podcast o Gruzji, Armenii, Azerbejdżanie i Kaukazie Północnym. Będzie o historii, o kulturze, o kaukaskich opowieściach, języku, turystyce i innych tematach z Kaukazem związanych.', 15, 'Kaukazomaniacy_logo', 8, '2022-11-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imie` varchar(256) NOT NULL,
  `nazwisko` varchar(256) NOT NULL,
  `login` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(255) NOT NULL,
  `czyAdmin` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `login`, `email`, `password`, `czyAdmin`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'johndoe', 'johndoe@example.com', 'password1', 1, NULL, '2023-05-26 07:13:42'),
(2, 'Jane', 'Doe', 'janedoe', 'janedoe@example.com', 'password2', 1, NULL, '2023-05-26 07:13:42'),
(3, 'Bob', 'Smith', 'bobsmith', 'bobsmith@example.com', 'password3', 0, NULL, '2023-05-26 07:13:42'),
(4, 'Amy', 'Johnson', 'amyjohnson', 'amyjohnson@example.com', 'password4', 0, NULL, '2023-05-26 07:13:42'),
(5, 'Mike', 'Williams', 'mikewilliams', 'mikewilliams@example.com', 'password5', 0, NULL, '2023-05-26 07:13:42'),
(6, 'Emily', 'Jones', 'emilyjones', 'emilyjones@example.com', 'password6', 0, NULL, '2023-05-26 07:13:42'),
(7, 'a', 'a', 'a', 'a@a.a', '$2y$10$Zvg7zEWsik8NHAcdNlD0eeJOfdtXN.5l7JZL1K6q1xVJPJc9SMgZq', 0, '2023-05-26 08:04:41', '2023-05-26 08:04:41'),
(8, 'b', 'b', 'b', 'b@b.p', '$2y$10$r.qCUMbQU7fHl15JbqS2NeWQbXLyILBRQnDJquY.W99Jh5WxmwGj2', 0, '2023-05-26 08:07:13', '2023-05-26 08:07:13'),
(9, 'c', 'c', 'c', 'c@c.pl', '$2y$10$53KsGci/c34/yxPrwofFIuYMdWPC0TFtqWYcFae5oRzsLTZqkXG5C', 0, '2023-05-26 08:09:44', '2023-05-26 08:09:44'),
(10, 'd', 'd', 'd', 'd@d.h', '$2y$10$qTyUSuc5p7K.LP9AhWYCMeGKV33.Jz3lmHcSmuV1xAZVKrLV/SjRi', 0, '2023-05-26 08:12:09', '2023-05-26 08:12:09'),
(11, 'e', 'e', 'e', 'e@e', '$2y$10$0QKMNxUCREFihfVniBxIUOTK5hB45RVick5rVVlT7Ydo6o/oGMcZO', 0, '2023-05-26 08:14:03', '2023-05-26 08:14:03'),
(12, 'f', 'f', 'f', 'f@f.l', '$2y$10$d9wMJEgEKXoiqzq5iXT7YupjtdtcNLvfLHHhiPAvk9VDve2k3d4Yu', 0, '2023-05-26 08:19:32', '2023-05-26 08:19:32'),
(13, 'w', 'w', 'w', 'w@w.w', '$2y$10$I5gambUpqBA/gjf6upEIYezEiua6JtFAnkXSuLLRcXib0jRtZ8weW', 0, '2023-05-28 14:50:37', '2023-05-28 14:50:37'),
(14, 'r', 'r', 'r', 'r@r', '$2y$10$4AyOPp.R1h5lKcaUC/vohOLErLJ6wLvBfYvFWtMFzO461jkmcS3L2', 0, '2023-05-28 15:10:46', '2023-05-28 15:10:46'),
(15, 'Lukasz', 'Szewczyk', 'Luka92', 'luka@mail.pl', '$2y$10$A5a42su2ihMAE9TtjNlzjurzBCLnD8SnH9cI2yiUp2r64XxnxzlDe', 0, '2023-05-31 16:30:14', '2023-05-31 16:30:14');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `komentarzedoautorow`
--
ALTER TABLE `komentarzedoautorow`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `komentarzedopodcastow`
--
ALTER TABLE `komentarzedopodcastow`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `newsy`
--
ALTER TABLE `newsy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `podcasty`
--
ALTER TABLE `podcasty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `komentarzedoautorow`
--
ALTER TABLE `komentarzedoautorow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `komentarzedopodcastow`
--
ALTER TABLE `komentarzedopodcastow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `newsy`
--
ALTER TABLE `newsy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `podcasty`
--
ALTER TABLE `podcasty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
