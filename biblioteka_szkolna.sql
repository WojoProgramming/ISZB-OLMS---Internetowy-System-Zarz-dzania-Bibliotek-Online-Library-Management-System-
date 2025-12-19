-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2025 at 12:34 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteka_szkolna`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

CREATE TABLE `czytelnicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(15) NOT NULL,
  `nazwisko` varchar(15) NOT NULL,
  `klasa` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `czytelnicy`
--

INSERT INTO `czytelnicy` (`id`, `imie`, `nazwisko`, `klasa`) VALUES
(1, 'Jan', 'Kowalski', '1A'),
(2, 'Anna', 'Nowak', '2B'),
(3, 'Piotr', 'Wiśniewski', '3C'),
(4, 'Maria', 'Zielińska', '4A'),
(5, 'Kacper', 'Lewandowski', '2A'),
(6, 'Oliwia', 'Kamińska', '3B'),
(7, 'Paweł', 'Szymański', '1B'),
(8, 'Zofia', 'Woźniak', '4C'),
(9, 'Michał', 'Wójcik', '3A'),
(10, 'Natalia', 'Kaczmarek', '2C'),
(11, 'Filip', 'Lis', '1C'),
(12, 'Julia', 'Baran', '3A'),
(13, 'Igor', 'Witkowski', '2D'),
(14, 'Alicja', 'Ostrowska', '1B'),
(15, 'Tymon', 'Maj', '4B'),
(16, 'Martyna', 'Sikora', '2C'),
(17, 'Bartosz', 'Pawlak', '3D'),
(18, 'Laura', 'Nowicka', '1A'),
(19, 'Nikodem', 'Kubiak', '4C'),
(20, 'Kornelia', 'Kowalczyk', '2B'),
(21, 'Tadeusz', 'Mickiewicz', '4A'),
(22, 'Leon', 'Mirecki', '1A'),
(23, 'Sylwia', 'Grochowska', '1B'),
(24, 'Oskar', 'Rzepnicki', '1C'),
(25, 'Lidia', 'Kasperska', '1C'),
(26, 'Emil', 'Borowiec', '1A'),
(27, 'Sara', 'Jastrząb', '2A'),
(28, 'Kornelia', 'Frączak', '2B'),
(29, 'Fabian', 'Kotowski', '2C'),
(30, 'Ernest', 'Żyła', '2A'),
(31, 'Klaudia', 'Pogórska', '2B'),
(32, 'Teodor', 'Wyrwikurek', '3A'),
(33, 'Maja', 'Dzięgiel', '3A'),
(34, 'Ruben', 'Sztych', '3B'),
(35, 'Eliza', 'Bartoszek', '3C'),
(36, 'Alan', 'Rynkiew', '3B'),
(37, 'Hania', 'Słoneczko', '4A'),
(38, 'Norbert', 'Krukiewicz', '4B'),
(39, 'Gustaw', 'Łomnicki', '4B'),
(40, 'Jagoda', 'Lisowska', '4C'),
(41, 'Ivo', 'Wiatrak', '4A'),
(42, 'Dominik', 'Karpiński', '1A'),
(43, 'Milena', 'Ziemska', '1B'),
(44, 'Seweryn', 'Gładysz', '1C'),
(45, 'Helena', 'Sewińska', '1B'),
(46, 'Leonard', 'Mróz', '1A'),
(47, 'Gabriela', 'Targońska', '1C'),
(48, 'Krystian', 'Borsuk', '1A'),
(49, 'Nela', 'Włodarczyk', '1B'),
(50, 'Edgar', 'Stolarczyk', '1C'),
(51, 'Aniela', 'Gierczak', '1A'),
(52, 'Nikola', 'Matyjas', '2A'),
(53, 'Patrycja', 'Słabiak', '2B'),
(54, 'Kajetan', 'Ostasz', '2C'),
(55, 'Roksana', 'Majchrzak', '2A'),
(56, 'Tytus', 'Krukowsky', '2B'),
(57, 'Miłosz', 'Gręda', '2C'),
(58, 'Daria', 'Witasiak', '2A'),
(59, 'Gabriel', 'Skwarka', '2C'),
(60, 'Karina', 'Żółta', '2B'),
(61, 'Olgierd', 'Kosior', '2A'),
(62, 'Justyna', 'Minkiewicz', '3A'),
(63, 'Mirosław', 'Pipczyński', '3B'),
(64, 'Olaf', 'Trykacz', '3C'),
(65, 'Nadia', 'Pastuszak', '3A'),
(66, 'Remigiusz', 'Cios', '3B'),
(67, 'Kalina', 'Kobylak', '3C'),
(68, 'Wojtek', 'Fijoł', '3A'),
(69, 'Iga', 'Mrozek', '3B'),
(70, 'Cyryl', 'Pietraszko', '3C'),
(71, 'Sonia', 'Radziwił', '3A'),
(72, 'Rita', 'Skubisz', '4A'),
(73, 'Albert', 'Sieradzki', '4B'),
(74, 'Jagienka', 'Frączyk', '4C'),
(75, 'Beniamin', 'Stanik', '4A'),
(76, 'Oliwier', 'Szklary', '4B'),
(77, 'Nicole', 'Turlej', '4C'),
(78, 'Rafaela', 'Wójcikiewicz', '4A'),
(79, 'Ksawery', 'Brzezina', '4B'),
(80, 'Malwina', 'Jasiurska', '4C'),
(81, 'Kornel', 'Tyranowski', '4A'),
(82, 'Grzegorz', 'Zielonka', '1A'),
(83, 'Sara', 'Lesiak', '1B'),
(84, 'Albert', 'Południak', '1C'),
(85, 'Natalia', 'Kulig', '1B'),
(86, 'Owen', 'Białoszewski', '1A'),
(87, 'Ilona', 'Rzepka', '1C'),
(88, 'Marek', 'Grobelny', '1B'),
(89, 'Polina', 'Huczko', '1A'),
(90, 'Oskar', 'Wyrwa', '1C'),
(91, 'Otylia', 'Puławska', '1A'),
(92, 'Teo', 'Bystry', '2A'),
(93, 'Marika', 'Goc', '2B'),
(94, 'Krzyś', 'Chochlik', '2C'),
(95, 'Leon', 'Sitko', '2A'),
(96, 'Laura', 'Nawój', '2B'),
(97, 'Daniel', 'Szperacz', '2C'),
(98, 'Julia', 'Stojan', '2A'),
(99, 'Alan', 'Świst', '2B'),
(100, 'Lena', 'Parzydełko', '2C'),
(101, 'Norbert', 'Kuźnia', '2A'),
(102, 'Mila', 'Łabędź', '3A'),
(103, 'Florian', 'Krasny', '3B'),
(104, 'Ewa', 'Drozd', '3C'),
(105, 'Ignacy', 'Potok', '3B'),
(106, 'Olena', 'Czajka', '3A'),
(107, 'Patryk', 'Rzep', '3C'),
(108, 'Sabina', 'Kocur', '3A'),
(109, 'Emil', 'Sikorkiewicz', '3B'),
(110, 'Kaja', 'Żarek', '3C'),
(111, 'Robert', 'Troc', '3A');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `login` varchar(25) NOT NULL,
  `haslo` varchar(60) NOT NULL,
  `imie` varchar(25) NOT NULL,
  `nazwisko` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dane`
--

INSERT INTO `dane` (`id`, `login`, `haslo`, `imie`, `nazwisko`, `email`) VALUES
(1, 'GrażynkaDobra1234', '$2y$10$ZYwfDH.ydiqQzhvppzMwbO4p8YblobmnUc8/bw1UCcTTtNa.7Okd6', 'Grażyna', 'Dobrowolska', 'GrażynkaDobra9087@gmail.com'),
(2, 'Pablo', '$2y$10$rWGCU9bvvnS82aNueUPMJO7iE441DjxHlJh10NyxGn/qtyUVn0V3K', 'Paweł', 'Kowalski', 'PabloPicasso@gmail.com'),
(3, 'Rozdymka123456', '$2y$10$yrheck1e4txv4KoBTp.giOGOZb17tIibq266Re9Soe0lmgpxL0tI2', 'Dymfna', 'Tadeusz', 'DymfnaTadeuszek@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kody`
--

CREATE TABLE `kody` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `kod` varchar(10) DEFAULT NULL,
  `CzyWykorzystany` bit(1) DEFAULT NULL COMMENT '1 - użyty, 0 - nieużyty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kody`
--

INSERT INTO `kody` (`id`, `kod`, `CzyWykorzystany`) VALUES
(1, 'xKY:rN;Nu~', b'0'),
(2, '[z;iF5fFH-', b'0'),
(3, '$)BcY*6-fh', b'0'),
(4, '4dJrS?#AFB', b'0'),
(5, 'PH9H8._?Ru', b'0'),
(6, 'a=zv?LySXK', b'0'),
(7, '_Fy=2ehK5a', b'0'),
(8, 'Kbw2#Q/_w^', b'0'),
(9, '9DN4Z,!${P', b'0'),
(10, 'Wxn5M**A66', b'0'),
(11, '%)Au6MzFKR', b'1'),
(12, 'gD4c[;vP;H', b'1'),
(13, 'TEST0', b'1'),
(14, 'TEST1', b'0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id` int(10) UNSIGNED NOT NULL,
  `tytul` varchar(45) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `gatunek` varchar(45) DEFAULT NULL,
  `status` bit(2) DEFAULT NULL COMMENT '1 - wypożyczona, 0 - dostępna'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`id`, `tytul`, `autor`, `gatunek`, `status`) VALUES
(1, 'Wiedźmin: Ostatnie życzenie', 'Andrzej Sapkowski', 'Fantasy', b'00'),
(2, 'Lalka', 'Bolesław Prus', 'Klasyka', b'01'),
(3, 'Pan Tadeusz', 'Adam Mickiewicz', 'Epopeja', b'01'),
(4, 'Dziady cz. III', 'Adam Mickiewicz', 'Dramat', b'00'),
(5, 'Harry Potter i Kamień Filozoficzny', 'J.K. Rowling', 'Fantasy', b'01'),
(6, 'Zbrodnia i kara', 'Fiodor Dostojewski', 'Powieść', b'00'),
(7, '1984', 'George Orwell', 'Antyutopia', b'00'),
(8, 'Mały Książę', 'Antoine de Saint-Exupéry', 'Filozoficzna', b'01'),
(9, 'Hobbit', 'J.R.R. Tolkien', 'Fantasy', b'00'),
(10, 'Opowieść wigilijna', 'Charles Dickens', 'Klasyka', b'00'),
(11, 'Folwark zwierzęcy', 'George Orwell', 'Satyra', b'01'),
(12, 'Kamienie na szaniec', 'Aleksander Kamiński', 'Historyczna', b'00'),
(13, 'Metro 2033', 'Dmitrij Głuchowski', 'Postapokaliptyczna', b'00'),
(14, 'Gra o tron', 'George R.R. Martin', 'Fantasy', b'01'),
(15, 'W pustyni i w puszczy', 'Henryk Sienkiewicz', 'Przygodowa', b'00'),
(16, 'Quo Vadis', 'Henryk Sienkiewicz', 'Historyczna', b'00'),
(17, 'Inferno', 'Dan Brown', 'Thriller', b'01'),
(18, 'Kod Leonarda da Vinci', 'Dan Brown', 'Sensacja', b'00'),
(19, 'Igrzyska śmierci', 'Suzanne Collins', 'Sci-Fi', b'01'),
(20, 'Solaris', 'Stanisław Lem', 'Science-Fiction', b'00'),
(21, 'Cyberiada', 'Stanisław Lem', 'Science-Fiction', b'00'),
(22, 'Rok 1984', 'George Orwell', 'Antyutopia', b'01'),
(23, 'Sherlock Holmes: Studium w szkarłacie', 'Arthur Conan Doyle', 'Kryminalna', b'00'),
(24, 'Hamlet', 'William Shakespeare', 'Dramat', b'00'),
(25, 'Makbet', 'William Shakespeare', 'Tragedia', b'00'),
(26, 'Romeo i Julia', 'William Shakespeare', 'Tragedia', b'00'),
(27, 'Krzyżacy', 'Henryk Sienkiewicz', 'Historyczna', b'00'),
(28, 'Odporność', 'Philipp Dettmer', 'Popularnonaukowa', b'00'),
(30, 'Złoty Szlak', 'A. Borowicz', 'fantastyka', b'00'),
(31, 'Cień Kruka', 'M. Drzewiecki', 'kryminał', b'01'),
(32, 'Kamienny Ogród', 'L. Wysocka', 'obyczajowa', b'00'),
(33, 'Wiatr nad Prerią', 'J. Korycki', 'przygodowa', b'00'),
(34, 'Miasto Mgły', 'N. Serafin', 'fantastyka', b'01'),
(35, 'Ostatnia Przepowiednia', 'K. Warchał', 'fantastyka', b'00'),
(36, 'Błękitne Echo', 'P. Domaradzki', 'sci-fi', b'00'),
(37, 'Droga Popiołów', 'H. Łuczak', 'fantastyka', b'00'),
(38, 'Zamknięta Sprawa', 'S. Jakubiak', 'kryminał', b'01'),
(39, 'Na Skraju Światła', 'R. Bladowski', 'romans', b'00'),
(40, 'Księga Zegarów', 'E. Sobieraj', 'fantastyka', b'01'),
(41, 'Szmaragdowy Most', 'T. Wrzesiński', 'przygoda', b'00'),
(42, 'Płomień w Deszczu', 'R. Pawlaczyk', 'romans', b'00'),
(43, 'Żelazna Cisza', 'M. Grodecka', 'thriller', b'00'),
(44, 'Córka Strażnika', 'I. Mrozińska', 'fantastyka', b'01'),
(45, 'Gabinet Mrocznych Map', 'B. Czarnik', 'przygodowa', b'00'),
(46, 'Dni Ognia', 'W. Michalak', 'fantastyka', b'01'),
(47, 'Świt Pod Górą', 'K. Trzoss', 'obyczajowa', b'00'),
(48, 'Motyle Nad Ulicą Wiśniową', 'A. Szarek', 'romans', b'00'),
(49, 'Planeta Cieni', 'G. Szczęsny', 'sci-fi', b'01'),
(50, 'W Dolinie Widm', 'M. Jankowski', 'horror', b'00'),
(51, 'Oko Lasu', 'N. Kosieradzka', 'przygodowa', b'00'),
(52, 'Równanie Świtu', 'F. Mierzejewski', 'sci-fi', b'00'),
(53, 'Księżniczka z Portu', 'L. Babiak', 'obyczajowa', b'01'),
(54, 'Droga Szeptów', 'S. Winiarski', 'thriller', b'00'),
(55, 'Archiwum Czasu', 'H. Bar', 'fantastyka', b'01'),
(56, 'Złamana Korona', 'W. Misior', 'fantastyka', b'00'),
(57, 'Malowane Skrzydła', 'D. Kłosowska', 'romans', b'01'),
(58, 'Ostatnia Pieśń Burzy', 'E. Gulczyńska', 'fantastyka', b'00'),
(59, 'Zegar z Serca', 'P. Gawron', 'obyczajowa', b'00'),
(60, 'Kraina Pięciu Księżyców', 'A. Małek', 'fantastyka', b'01'),
(61, 'Powrót do Brzeziny', 'T. Cieczko', 'obyczajowa', b'00'),
(62, 'Serce Strażnika', 'N. Mrozek', 'romans', b'00'),
(63, 'Nocny Tropiciel', 'D. Paprocki', 'kryminał', b'01'),
(64, 'Szlak Dziewiątej Gwiazdy', 'J. Horodyński', 'sci-fi', b'00'),
(65, 'Przysięga Wilków', 'A. Łęcki', 'fantastyka', b'01'),
(66, 'Wysłannik Burzy', 'O. Kaczmarczyk', 'przygodowa', b'00'),
(67, 'Mieszkanie Nad Rzeką', 'T. Polański', 'obyczajowa', b'00'),
(68, 'Grobowiec Świtu', 'R. Legierski', 'horror', b'01'),
(69, 'Szczypta Szczęścia', 'K. Walas', 'romans', b'00'),
(70, 'Stalowy Lot', 'J. Burdzicki', 'sci-fi', b'01'),
(71, 'Wzgórze Zaginionych', 'M. Zawadzka', 'przygoda', b'00'),
(72, 'Fiolka Nadziei', 'U. Grygiel', 'obyczajowa', b'00'),
(73, 'Ciemny Dziedziniec', 'W. Głogowski', 'kryminał', b'00'),
(74, 'Wirujący Pył', 'S. Cienki', 'thriller', b'01'),
(75, 'Dom z Piasku', 'A. Lipka', 'obyczajowa', b'00'),
(76, 'Władca Trzcin', 'M. Warzecha', 'fantastyka', b'01'),
(77, 'Księżycowe Lustro', 'K. Juras', 'fantastyka', b'00'),
(78, 'Ostatni Kolejarz', 'L. Wężyk', 'historyczna', b'00'),
(79, 'Brama Na Północ', 'P. Ptaszyński', 'fantastyka', b'01'),
(80, 'Mapa Spadających Gwiazd', 'N. Derc', 'przygodowa', b'00'),
(81, 'Zmarznięte Róże', 'A. Kuźnia', 'romans', b'00'),
(82, 'Czarne Wybrzeże', 'T. Kluska', 'thriller', b'01'),
(83, 'Dom na Kurzej Łapie', 'G. Marciniak', 'horror', b'00'),
(84, 'Biel Nad Przepaścią', 'D. Pyrek', 'obyczajowa', b'00'),
(85, 'Władczyni Ksiąg', 'H. Strózik', 'fantastyka', b'01'),
(86, 'Echo Pod Lasem', 'S. Zych', 'przygodowa', b'00'),
(87, 'Siedem Luster', 'I. Grudzień', 'fantastyka', b'01'),
(88, 'Szlak Północnego Wiatru', 'K. Banaś', 'sci-fi', b'00'),
(89, 'Dwór na Rozstaju', 'E. Fryś', 'obyczajowa', b'01'),
(90, 'Chłód Starego Dworu', 'R. Gąska', 'kryminał', b'00'),
(91, 'Ptak z Popiołu', 'W. Jakimowicz', 'fantastyka', b'00'),
(92, 'Księga Zorzy', 'M. Słonina', 'fantastyka', b'01'),
(93, 'Ślepy Zaułek', 'P. Chaber', 'kryminał', b'00'),
(94, 'Szept Czerwonej Góry', 'O. Młynarczyk', 'fantastyka', b'01'),
(95, 'Diamentowa Przystań', 'J. Prądziak', 'romans', b'01'),
(96, 'Wilczy Ogień', 'T. Zielonka', 'fantastyka', b'00'),
(97, 'Wspomnienia Nad Kanałem', 'L. Golec', 'obyczajowa', b'00'),
(98, 'Biały Atrament', 'D. Łyczko', 'thriller', b'01'),
(99, 'Zakamarki Nocy', 'A. Bartosiak', 'horror', b'00'),
(100, 'Głos Dalekiej Planety', 'E. Turek', 'sci-fi', b'00'),
(101, 'Most Światła', 'H. Szarek', 'fantastyka', b'01'),
(102, 'Ślady nad Rzeką', 'W. Krupnik', 'obyczajowa', b'00'),
(103, 'Żelazny Rytuał', 'K. Serwin', 'fantastyka', b'00'),
(104, 'Echo Wspomnień', 'N. Galica', 'romans', b'01'),
(105, 'Kolekcjoner Burz', 'J. Łątka', 'thriller', b'01'),
(106, 'Lilia Pustyni', 'M. Bednarska', 'romans', b'00'),
(107, 'Strażnicy Pustkowi', 'F. Duda', 'fantastyka', b'00'),
(108, 'Srebrny Patron', 'R. Chomik', 'historyczna', b'01'),
(109, 'Trzynaście Komnat', 'U. Łapińska', 'horror', b'00'),
(110, 'Ocean Wspomnień', 'L. Bagiński', 'obyczajowa', b'00'),
(111, 'Wyspa Ostatniej Nadziei', 'P. Malec', 'przygoda', b'01'),
(112, 'Nocny Goniec', 'A. Starzec', 'kryminał', b'00'),
(113, 'Złodziejka Piór', 'N. Wojtasik', 'fantastyka', b'00'),
(114, 'Popiół na Dłoniach', 'S. Kubera', 'thriller', b'01'),
(115, 'Krok w Otchłań', 'T. Janus', 'horror', b'00'),
(116, 'Kanały Czasu', 'M. Gajos', 'sci-fi', b'01'),
(117, 'Róże Północy', 'K. Rosołek', 'romans', b'00'),
(118, 'Cisza Pod Wierzbą', 'A. Drobisz', 'obyczajowa', b'00'),
(119, 'Tancerka Mgły', 'He. Słowik', 'fantastyka', b'01'),
(120, 'Biegaczka Po Krawędzi', 'W. Mamała', 'thriller', b'01'),
(121, 'Żelazny Tancerz', 'R. Micuła', 'fantastyka', b'00'),
(122, 'Wyrocznia Pod Gwiazdami', 'E. Tryk', 'fantastyka', b'01'),
(123, 'Świt Kolibrów', 'N. Bieniek', 'obyczajowa', b'00'),
(124, 'Wąwóz Tajemnic', 'F. Koral', 'przygoda', b'00'),
(125, 'Pielgrzymka Dnia', 'O. Litwin', 'historyczna', b'01'),
(126, 'Rytm Burzy', 'P. Szczerbiak', 'fantastyka', b'00'),
(127, 'Między Nami Rzeki', 'L. Wójt', 'romans', b'00'),
(128, 'Czarny Obłok', 'S. Raczek', 'sci-fi', b'01'),
(129, 'Katedra Lodu', 'A. Pluta', 'fantastyka', b'01'),
(130, 'Życzenie w Popiele', 'M. Ciosek', 'fantastyka', b'00'),
(131, 'Księga Rozdroży', 'K. Sosnowski', 'przygoda', b'01'),
(132, 'Letni Deszcz', 'A. Młyn', 'romans', b'00'),
(133, 'Maska Nadziei', 'I. Drąg', 'thriller', b'00'),
(134, 'Planeta Ciszy', 'T. Ołdakowski', 'sci-fi', b'01'),
(135, 'Lot Żurawia', 'G. Zychowicz', 'obyczajowa', b'00'),
(136, 'Szept Pustego Domu', 'N. Bryś', 'horror', b'00'),
(137, 'Kropla Światła', 'E. Cwynar', 'fantastyka', b'01'),
(138, 'Północne Ścieżki', 'W. Pawlis', 'przygoda', b'00'),
(139, 'Słoneczny Ląd', 'L. Karasiak', 'fantastyka', b'00'),
(140, 'Miasto Czerwonych Bram', 'J. Galant', 'fantastyka', b'01'),
(141, 'Tajemnica Zegarmistrza', 'D. Gumuła', 'kryminał', b'00'),
(142, 'Połączenie', 'U. Lenart', 'thriller', b'01'),
(143, 'Kwiat Pod Śniegiem', 'M. Talar', 'romans', b'00'),
(144, 'Mgły Doliny', 'S. Bania', 'obyczajowa', b'00'),
(145, 'Dzieci Gwiazd', 'A. Puchała', 'sci-fi', b'01'),
(146, 'Przewoźnik', 'T. Sotek', 'historyczna', b'00'),
(147, 'Wichry Umysłu', 'P. Pełka', 'fantastyka', b'01'),
(148, 'Brudne Lustro', 'O. Terlecki', 'thriller', b'00'),
(149, 'Księga Trzech Kręgów', 'H. Osiak', 'fantastyka', b'01'),
(150, 'Złoty Szlak', 'A. Borowicz', 'fantastyka', b'00'),
(151, 'Cień Kruka', 'M. Drzewiecki', 'kryminał', b'01'),
(152, 'Kamienny Ogród', 'L. Wysocka', 'obyczajowa', b'00'),
(153, 'Wiatr nad Prerią', 'J. Korycki', 'przygodowa', b'00'),
(154, 'Miasto Mgły', 'N. Serafin', 'fantastyka', b'01'),
(155, 'Ostatnia Przepowiednia', 'K. Warchał', 'fantastyka', b'00'),
(156, 'Błękitne Echo', 'P. Domaradzki', 'sci-fi', b'00'),
(157, 'Droga Popiołów', 'H. Łuczak', 'fantastyka', b'00'),
(158, 'Zamknięta Sprawa', 'S. Jakubiak', 'kryminał', b'01'),
(159, 'Na Skraju Światła', 'R. Bladowski', 'romans', b'00'),
(160, 'Księga Zegarów', 'E. Sobieraj', 'fantastyka', b'01'),
(161, 'Szmaragdowy Most', 'T. Wrzesiński', 'przygoda', b'00'),
(162, 'Płomień w Deszczu', 'R. Pawlaczyk', 'romans', b'00'),
(163, 'Żelazna Cisza', 'M. Grodecka', 'thriller', b'00'),
(164, 'Córka Strażnika', 'I. Mrozińska', 'fantastyka', b'01'),
(165, 'Gabinet Mrocznych Map', 'B. Czarnik', 'przygodowa', b'00'),
(166, 'Dni Ognia', 'W. Michalak', 'fantastyka', b'01'),
(167, 'Świt Pod Górą', 'K. Trzoss', 'obyczajowa', b'00'),
(168, 'Motyle Nad Ulicą Wiśniową', 'A. Szarek', 'romans', b'00'),
(169, 'Planeta Cieni', 'G. Szczęsny', 'sci-fi', b'01'),
(170, 'W Dolinie Widm', 'M. Jankowski', 'horror', b'00'),
(171, 'Oko Lasu', 'N. Kosieradzka', 'przygodowa', b'00'),
(172, 'Równanie Świtu', 'F. Mierzejewski', 'sci-fi', b'00'),
(173, 'Księżniczka z Portu', 'L. Babiak', 'obyczajowa', b'01'),
(174, 'Droga Szeptów', 'S. Winiarski', 'thriller', b'00'),
(175, 'Archiwum Czasu', 'H. Bar', 'fantastyka', b'01'),
(176, 'Złamana Korona', 'W. Misior', 'fantastyka', b'00'),
(177, 'Malowane Skrzydła', 'D. Kłosowska', 'romans', b'01'),
(178, 'Ostatnia Pieśń Burzy', 'E. Gulczyńska', 'fantastyka', b'00'),
(179, 'Zegar z Serca', 'P. Gawron', 'obyczajowa', b'00'),
(180, 'Kraina Pięciu Księżyców', 'A. Małek', 'fantastyka', b'01'),
(181, 'Powrót do Brzeziny', 'T. Cieczko', 'obyczajowa', b'00'),
(182, 'Serce Strażnika', 'N. Mrozek', 'romans', b'00'),
(183, 'Nocny Tropiciel', 'D. Paprocki', 'kryminał', b'01'),
(184, 'Szlak Dziewiątej Gwiazdy', 'J. Horodyński', 'sci-fi', b'00'),
(185, 'Przysięga Wilków', 'A. Łęcki', 'fantastyka', b'01'),
(186, 'Wysłannik Burzy', 'O. Kaczmarczyk', 'przygodowa', b'00'),
(187, 'Mieszkanie Nad Rzeką', 'T. Polański', 'obyczajowa', b'00'),
(188, 'Grobowiec Świtu', 'R. Legierski', 'horror', b'01'),
(189, 'Szczypta Szczęścia', 'K. Walas', 'romans', b'00'),
(190, 'Stalowy Lot', 'J. Burdzicki', 'sci-fi', b'01'),
(191, 'Wzgórze Zaginionych', 'M. Zawadzka', 'przygoda', b'00'),
(192, 'Fiolka Nadziei', 'U. Grygiel', 'obyczajowa', b'00'),
(193, 'Ciemny Dziedziniec', 'W. Głogowski', 'kryminał', b'00'),
(194, 'Wirujący Pył', 'S. Cienki', 'thriller', b'01'),
(195, 'Dom z Piasku', 'A. Lipka', 'obyczajowa', b'00'),
(196, 'Władca Trzcin', 'M. Warzecha', 'fantastyka', b'01'),
(197, 'Księżycowe Lustro', 'K. Juras', 'fantastyka', b'00'),
(198, 'Ostatni Kolejarz', 'L. Wężyk', 'historyczna', b'00'),
(199, 'Brama Na Północ', 'P. Ptaszyński', 'fantastyka', b'01'),
(200, 'Mapa Spadających Gwiazd', 'N. Derc', 'przygodowa', b'00'),
(201, 'Zmarznięte Róże', 'A. Kuźnia', 'romans', b'00'),
(202, 'Czarne Wybrzeże', 'T. Kluska', 'thriller', b'01'),
(203, 'Dom na Kurzej Łapie', 'G. Marciniak', 'horror', b'00'),
(204, 'Biel Nad Przepaścią', 'D. Pyrek', 'obyczajowa', b'00'),
(205, 'Władczyni Ksiąg', 'H. Strózik', 'fantastyka', b'01'),
(206, 'Echo Pod Lasem', 'S. Zych', 'przygodowa', b'00'),
(207, 'Siedem Luster', 'I. Grudzień', 'fantastyka', b'01'),
(208, 'Szlak Północnego Wiatru', 'K. Banaś', 'sci-fi', b'00'),
(209, 'Dwór na Rozstaju', 'E. Fryś', 'obyczajowa', b'01'),
(210, 'Chłód Starego Dworu', 'R. Gąska', 'kryminał', b'00'),
(211, 'Ptak z Popiołu', 'W. Jakimowicz', 'fantastyka', b'00'),
(212, 'Księga Zorzy', 'M. Słonina', 'fantastyka', b'01'),
(213, 'Ślepy Zaułek', 'P. Chaber', 'kryminał', b'00'),
(214, 'Szept Czerwonej Góry', 'O. Młynarczyk', 'fantastyka', b'01'),
(215, 'Diamentowa Przystań', 'J. Prądziak', 'romans', b'01'),
(216, 'Wilczy Ogień', 'T. Zielonka', 'fantastyka', b'00'),
(217, 'Wspomnienia Nad Kanałem', 'L. Golec', 'obyczajowa', b'00'),
(218, 'Biały Atrament', 'D. Łyczko', 'thriller', b'01'),
(219, 'Zakamarki Nocy', 'A. Bartosiak', 'horror', b'00'),
(220, 'Głos Dalekiej Planety', 'E. Turek', 'sci-fi', b'00'),
(221, 'Most Światła', 'H. Szarek', 'fantastyka', b'01'),
(222, 'Ślady nad Rzeką', 'W. Krupnik', 'obyczajowa', b'00'),
(223, 'Żelazny Rytuał', 'K. Serwin', 'fantastyka', b'00'),
(224, 'Echo Wspomnień', 'N. Galica', 'romans', b'01'),
(225, 'Kolekcjoner Burz', 'J. Łątka', 'thriller', b'01'),
(226, 'Lilia Pustyni', 'M. Bednarska', 'romans', b'00'),
(227, 'Strażnicy Pustkowi', 'F. Duda', 'fantastyka', b'00'),
(228, 'Srebrny Patron', 'R. Chomik', 'historyczna', b'01'),
(229, 'Trzynaście Komnat', 'U. Łapińska', 'horror', b'00'),
(230, 'Ocean Wspomnień', 'L. Bagiński', 'obyczajowa', b'00'),
(231, 'Wyspa Ostatniej Nadziei', 'P. Malec', 'przygoda', b'01'),
(232, 'Nocny Goniec', 'A. Starzec', 'kryminał', b'00'),
(233, 'Złodziejka Piór', 'N. Wojtasik', 'fantastyka', b'00'),
(234, 'Popiół na Dłoniach', 'S. Kubera', 'thriller', b'01'),
(235, 'Krok w Otchłań', 'T. Janus', 'horror', b'00'),
(236, 'Kanały Czasu', 'M. Gajos', 'sci-fi', b'01'),
(237, 'Róże Północy', 'K. Rosołek', 'romans', b'00'),
(238, 'Cisza Pod Wierzbą', 'A. Drobisz', 'obyczajowa', b'00'),
(239, 'Tancerka Mgły', 'He. Słowik', 'fantastyka', b'01'),
(240, 'Biegaczka Po Krawędzi', 'W. Mamała', 'thriller', b'01'),
(241, 'Żelazny Tancerz', 'R. Micuła', 'fantastyka', b'00'),
(242, 'Wyrocznia Pod Gwiazdami', 'E. Tryk', 'fantastyka', b'01'),
(243, 'Świt Kolibrów', 'N. Bieniek', 'obyczajowa', b'00'),
(244, 'Wąwóz Tajemnic', 'F. Koral', 'przygoda', b'00'),
(245, 'Pielgrzymka Dnia', 'O. Litwin', 'historyczna', b'01'),
(246, 'Rytm Burzy', 'P. Szczerbiak', 'fantastyka', b'00'),
(247, 'Między Nami Rzeki', 'L. Wójt', 'romans', b'00'),
(248, 'Czarny Obłok', 'S. Raczek', 'sci-fi', b'01'),
(249, 'Katedra Lodu', 'A. Pluta', 'fantastyka', b'01'),
(250, 'Życzenie w Popiele', 'M. Ciosek', 'fantastyka', b'00'),
(251, 'Księga Rozdroży', 'K. Sosnowski', 'przygoda', b'01'),
(252, 'Letni Deszcz', 'A. Młyn', 'romans', b'00'),
(253, 'Maska Nadziei', 'I. Drąg', 'thriller', b'00'),
(254, 'Planeta Ciszy', 'T. Ołdakowski', 'sci-fi', b'01'),
(255, 'Lot Żurawia', 'G. Zychowicz', 'obyczajowa', b'00'),
(256, 'Szept Pustego Domu', 'N. Bryś', 'horror', b'00'),
(257, 'Kropla Światła', 'E. Cwynar', 'fantastyka', b'01'),
(258, 'Północne Ścieżki', 'W. Pawlis', 'przygoda', b'00'),
(259, 'Słoneczny Ląd', 'L. Karasiak', 'fantastyka', b'00'),
(260, 'Miasto Czerwonych Bram', 'J. Galant', 'fantastyka', b'01'),
(261, 'Tajemnica Zegarmistrza', 'D. Gumuła', 'kryminał', b'00'),
(262, 'Połączenie', 'U. Lenart', 'thriller', b'01'),
(263, 'Kwiat Pod Śniegiem', 'M. Talar', 'romans', b'00'),
(264, 'Mgły Doliny', 'S. Bania', 'obyczajowa', b'00'),
(265, 'Dzieci Gwiazd', 'A. Puchała', 'sci-fi', b'01'),
(266, 'Przewoźnik', 'T. Sotek', 'historyczna', b'00'),
(267, 'Wichry Umysłu', 'P. Pełka', 'fantastyka', b'01'),
(268, 'Brudne Lustro', 'O. Terlecki', 'thriller', b'00'),
(269, 'Księga Trzech Kręgów', 'H. Osiak', 'fantastyka', b'01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_czytelnika` int(10) UNSIGNED NOT NULL,
  `id_ksiazki` int(10) UNSIGNED NOT NULL,
  `data_wypozyczenia` date DEFAULT NULL,
  `data_zwrotu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id`, `id_czytelnika`, `id_ksiazki`, `data_wypozyczenia`, `data_zwrotu`) VALUES
(1, 1, 2, '2025-09-25', '2025-10-02'),
(2, 1, 7, '2025-10-05', NULL),
(3, 1, 15, '2025-10-10', NULL),
(4, 2, 3, '2025-09-29', '2025-10-05'),
(5, 2, 17, '2025-10-07', NULL),
(6, 3, 5, '2025-09-30', '2025-10-10'),
(7, 3, 23, '2025-10-11', NULL),
(8, 4, 8, '2025-09-26', '2025-10-03'),
(9, 4, 14, '2025-10-12', NULL),
(10, 5, 11, '2025-10-01', '2025-10-08'),
(11, 5, 25, '2025-10-09', NULL),
(12, 6, 1, '2025-10-02', '2025-10-09'),
(13, 6, 19, '2025-10-12', NULL),
(14, 7, 4, '2025-09-28', '2025-10-07'),
(15, 7, 10, '2025-10-08', NULL),
(16, 8, 9, '2025-09-30', '2025-10-06'),
(17, 8, 13, '2025-10-09', NULL),
(18, 9, 6, '2025-09-27', '2025-10-05'),
(19, 9, 12, '2025-10-08', NULL),
(20, 10, 10, '2025-09-25', '2025-10-04'),
(21, 10, 16, '2025-10-07', NULL),
(22, 11, 13, '2025-10-02', NULL),
(23, 11, 20, '2025-10-10', NULL),
(24, 12, 15, '2025-10-01', '2025-10-08'),
(25, 12, 21, '2025-10-09', NULL),
(26, 13, 16, '2025-09-29', '2025-10-06'),
(27, 13, 26, '2025-10-11', '2025-12-17'),
(28, 14, 18, '2025-10-03', '2025-10-09'),
(29, 14, 27, '2025-10-10', NULL),
(30, 15, 19, '2025-10-01', '2025-10-08'),
(31, 15, 22, '2025-10-09', NULL),
(32, 16, 24, '2025-09-28', '2025-10-05'),
(33, 16, 25, '2025-10-07', NULL),
(34, 17, 11, '2025-09-29', '2025-10-06'),
(35, 17, 17, '2025-10-10', NULL),
(36, 18, 14, '2025-10-01', '2025-10-09'),
(37, 18, 8, '2025-10-11', NULL),
(38, 19, 5, '2025-10-03', '2025-10-08'),
(39, 19, 9, '2025-10-10', NULL),
(40, 20, 7, '2025-09-26', '2025-10-02'),
(41, 20, 15, '2025-10-05', NULL),
(42, 21, 28, '2025-11-20', '2025-11-20'),
(83, 12, 45, '2024-09-03', '2024-09-20'),
(84, 4, 88, '2024-09-05', NULL),
(85, 21, 13, '2024-09-07', '2024-09-25'),
(86, 33, 102, '2024-09-10', NULL),
(87, 7, 59, '2024-09-12', '2024-10-03'),
(88, 18, 7, '2024-09-13', NULL),
(89, 47, 151, '2024-09-15', '2024-09-30'),
(90, 56, 81, '2024-09-18', NULL),
(91, 9, 199, '2024-09-19', '2024-10-12'),
(92, 72, 34, '2024-09-20', NULL),
(93, 15, 145, '2024-09-21', '2024-10-08'),
(94, 61, 2, '2024-09-22', NULL),
(95, 88, 76, '2024-09-23', '2024-10-01'),
(96, 94, 163, '2024-09-24', '2024-10-14'),
(97, 23, 187, '2024-09-25', NULL),
(98, 38, 91, '2024-09-26', '2024-10-05'),
(99, 44, 122, '2024-09-27', NULL),
(100, 19, 58, '2024-09-28', '2024-10-11'),
(101, 66, 111, '2024-09-29', NULL),
(102, 2, 14, '2024-09-30', '2024-10-17'),
(103, 51, 177, '2024-10-02', NULL),
(104, 16, 4, '2024-10-03', '2024-10-23'),
(105, 73, 88, '2024-10-04', NULL),
(106, 5, 74, '2024-10-05', '2024-10-27'),
(107, 29, 137, '2024-10-06', NULL),
(108, 31, 15, '2024-10-07', '2024-10-26'),
(109, 62, 190, '2024-10-08', '2024-10-31'),
(110, 97, 47, '2024-10-09', '2024-10-17'),
(111, 84, 130, '2024-10-10', NULL),
(112, 6, 9, '2024-10-11', '2024-10-25'),
(113, 71, 53, '2024-10-12', NULL),
(114, 49, 120, '2024-10-13', '2024-11-01'),
(115, 28, 85, '2024-10-14', '2024-10-30'),
(116, 12, 18, '2024-10-15', NULL),
(117, 34, 99, '2024-10-16', '2024-11-03'),
(118, 25, 5, '2024-10-17', NULL),
(119, 91, 42, '2024-10-18', '2024-11-05'),
(120, 67, 155, '2024-10-19', NULL),
(121, 3, 63, '2024-10-20', '2024-11-07'),
(122, 54, 171, '2024-10-21', NULL),
(203, 12, 91, '2024-12-01', '2024-12-21'),
(204, 55, 57, '2024-12-02', NULL),
(205, 73, 134, '2024-12-03', '2024-12-28'),
(206, 2, 13, '2024-12-04', NULL),
(207, 88, 199, '2024-12-05', '2024-12-29'),
(208, 33, 21, '2024-12-06', NULL),
(209, 67, 167, '2024-12-07', '2024-12-30'),
(210, 4, 90, '2024-12-08', NULL),
(211, 79, 55, '2024-12-09', '2024-12-31'),
(212, 28, 102, '2024-12-10', NULL),
(213, 93, 45, '2024-12-11', '2024-12-27'),
(214, 6, 150, '2024-12-12', NULL),
(215, 49, 11, '2024-12-13', '2024-12-26'),
(216, 72, 77, '2024-12-14', NULL),
(217, 29, 162, '2024-12-15', '2025-01-05'),
(218, 87, 41, '2024-12-16', NULL),
(219, 3, 120, '2024-12-17', '2025-01-06'),
(220, 62, 38, '2024-12-18', NULL),
(221, 59, 100, '2024-12-19', '2025-01-07'),
(222, 7, 176, '2024-12-20', NULL),
(223, 20, 52, '2024-12-21', '2025-01-08'),
(224, 71, 130, '2024-12-22', NULL),
(225, 18, 9, '2024-12-23', '2025-01-09'),
(226, 80, 88, '2024-12-24', NULL),
(227, 44, 156, '2024-12-25', '2025-01-11'),
(228, 91, 63, '2024-12-26', NULL),
(229, 76, 107, '2024-12-27', '2025-01-12'),
(230, 5, 35, '2024-12-28', NULL),
(231, 97, 178, '2024-12-29', '2025-01-13'),
(232, 16, 54, '2024-12-30', NULL),
(233, 61, 99, '2024-12-31', '2025-01-14'),
(234, 74, 4, '2025-01-01', NULL),
(235, 25, 146, '2025-01-02', '2025-01-16'),
(236, 94, 58, '2025-01-03', NULL),
(237, 9, 193, '2025-01-04', '2025-01-18'),
(238, 32, 122, '2025-01-05', NULL),
(239, 84, 69, '2025-01-06', '2025-01-21'),
(240, 19, 81, '2025-01-07', NULL),
(241, 66, 143, '2025-01-08', '2025-01-22'),
(242, 92, 110, '2025-01-09', NULL),
(243, 12, 91, '2024-12-01', '2024-12-21'),
(244, 55, 57, '2024-12-02', NULL),
(245, 73, 134, '2024-12-03', '2024-12-28'),
(246, 2, 13, '2024-12-04', NULL),
(247, 88, 199, '2024-12-05', '2024-12-29'),
(248, 33, 21, '2024-12-06', NULL),
(249, 67, 167, '2024-12-07', '2024-12-30'),
(250, 4, 90, '2024-12-08', NULL),
(251, 79, 55, '2024-12-09', '2024-12-31'),
(252, 28, 102, '2024-12-10', NULL),
(253, 93, 45, '2024-12-11', '2024-12-27'),
(254, 6, 150, '2024-12-12', NULL),
(255, 49, 11, '2024-12-13', '2024-12-26'),
(256, 72, 77, '2024-12-14', NULL),
(257, 29, 162, '2024-12-15', '2025-01-05'),
(258, 87, 41, '2024-12-16', NULL),
(259, 3, 120, '2024-12-17', '2025-01-06'),
(260, 62, 38, '2024-12-18', NULL),
(261, 59, 100, '2024-12-19', '2025-01-07'),
(262, 7, 176, '2024-12-20', NULL),
(263, 20, 52, '2024-12-21', '2025-01-08'),
(264, 71, 130, '2024-12-22', NULL),
(265, 18, 9, '2024-12-23', '2025-01-09'),
(266, 80, 88, '2024-12-24', NULL),
(267, 44, 156, '2024-12-25', '2025-01-11'),
(268, 91, 63, '2024-12-26', NULL),
(269, 76, 107, '2024-12-27', '2025-01-12'),
(270, 5, 35, '2024-12-28', NULL),
(271, 97, 178, '2024-12-29', '2025-01-13'),
(272, 16, 54, '2024-12-30', NULL),
(273, 61, 99, '2024-12-31', '2025-01-14'),
(274, 74, 4, '2025-01-01', NULL),
(275, 25, 146, '2025-01-02', '2025-01-16'),
(276, 94, 58, '2025-01-03', NULL),
(277, 9, 193, '2025-01-04', '2025-01-18'),
(278, 32, 122, '2025-01-05', NULL),
(279, 84, 69, '2025-01-06', '2025-01-21'),
(280, 19, 81, '2025-01-07', NULL),
(281, 66, 143, '2025-01-08', '2025-01-22'),
(282, 92, 110, '2025-01-09', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kody`
--
ALTER TABLE `kody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_czytelnika` (`id_czytelnika`),
  ADD KEY `id_ksiazki` (`id_ksiazki`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `czytelnicy`
--
ALTER TABLE `czytelnicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `dane`
--
ALTER TABLE `dane`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kody`
--
ALTER TABLE `kody`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_czytelnika`) REFERENCES `czytelnicy` (`id`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
