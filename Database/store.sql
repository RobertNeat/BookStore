-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Sty 2023, 18:17
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `store`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `archive`
--

CREATE TABLE `archive` (
  `commodity_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `archive`
--

INSERT INTO `archive` (`commodity_id`, `customer_id`, `book_id`, `number`, `price`, `created`) VALUES
(19, 2, 16, 3, 15.26, '2023-01-05'),
(20, 2, 19, 3, 75.26, '2023-01-05'),
(21, 2, 13, 1, 85.26, '2023-01-05'),
(22, 2, 10, 1, 84.45, '2023-01-05'),
(23, 2, 14, 1, 26.58, '2023-01-05'),
(24, 2, 7, 6, 38.48, '2023-01-05'),
(25, 2, 19, 10, 75.26, '2023-01-06'),
(26, 2, 17, 3, 85.24, '2023-01-06'),
(27, 2, 15, 7, 15.28, '2023-01-06'),
(28, 2, 1, 1, 32.12, '2023-01-06'),
(29, 2, 8, 5, 84.27, '2023-01-06'),
(30, 2, 7, 2, 38.48, '2023-01-06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `basket`
--

CREATE TABLE `basket` (
  `basket_id` int(11) NOT NULL,
  `payment` varchar(500) DEFAULT NULL,
  `created` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `basket`
--

INSERT INTO `basket` (`basket_id`, `payment`, `created`) VALUES
(1, '4012 8888 8888 1881', '2022-10-20');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `publisher` varchar(250) DEFAULT NULL,
  `released` date DEFAULT current_timestamp(),
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `book`
--

INSERT INTO `book` (`book_id`, `name`, `author`, `category`, `price`, `publisher`, `released`, `description`) VALUES
(1, 'In Search of Lost Time', 'Marcel Proust', 'Fiction Classics', 32.12, 'Akashic Books', '2021-10-28', 'Swann\'s Way, the first part of A la recherche de temps perdu, Marcel Proust\'s seven-part cycle, was published in 1913. In it, Proust introduces the themes that run through the entire work.'),
(2, 'Ulysses', 'James Joyce', 'Modernist novel', 23.24, 'Dzanc Books', '2007-07-14', 'Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day, June 16, 1904. The title parallels and alludes to Odysseus (Latinised into Ulysses), the hero of Homer\'s '),
(3, 'Don Quixote', 'Miguel de Cervantes', 'Novel', 13.12, 'Graywolf Press', '2020-05-30', 'Alonso Quixano, a retired country gentleman in his fifties, lives in an unnamed section of La Mancha with his niece and a housekeeper. He has become obsessed with books of chivalry,'),
(4, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Magic realism', 15.2, 'Akashic Books', '2021-10-28', 'One of the 20th century\'s enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world, and the ultimate achievement in a Nobel Prize–winning'),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Tragedy', 28.48, 'Dzanc Books', '2021-10-28', 'The novel chronicles an era that Fitzgerald himself dubbed the \'Jazz Age\'. Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the '),
(6, 'Moby Dick', 'Herman Melville', 'Adventure fiction epic sea story encyclopedic novel', 38.49, 'Graywolf Press', '2021-10-28', 'First published in 1851, Melville\'s masterpiece is, in Elizabeth Hardwick\'s words, \'the greatest novel in American literature.\' The saga of Captain Ahab and his monomaniacal pursuit of the white'),
(7, 'War and Peace', 'Leo Tolstoy', 'Historical novel', 38.48, 'Akashic Books', '2007-07-14', 'Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleon\'s invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes'),
(8, 'Hamlet', 'William Shakespeare', 'revenge tragedy', 84.27, 'Dzanc Books', '2021-10-28', 'The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how'),
(9, 'The Odyssey', 'Homer', 'Epic poetry', 36.48, 'Graywolf Press', '2020-05-30', 'The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer. The poem is fundamental to the'),
(10, 'Madame Bovary', 'Gustave Flaubert', 'Realist novel', 84.45, 'Akashic Books', '2007-07-14', 'For daring to peer into the heart of an adulteress and enumerate its contents with profound dispassion, the author of Madame Bovary was tried for \'offenses against morality and religion.\''),
(11, 'The Divine Comedy', 'Dante Alighieri', 'Poem', 52.62, 'Graywolf Press', '2007-07-14', 'Belonging in the immortal company of the great works of literature, Dante Alighieri\'s poetic masterpiece, The Divine Comedy, is a moving human drama, an unforgettable visionary journey through '),
(12, 'Lolita', 'Vladimir Nabokov', 'Satire and Parody', 85.15, 'Graywolf Press', '2021-10-28', 'The book is internationally famous for its innovative style and infamous for its controversial subject: the protagonist and unreliable narrator, middle aged Humbert Humbert, becomes obsessed and'),
(13, 'The Brothers Karamazov', 'Fyodor Dostoyevsky', 'Philosophical novel Theological fiction', 85.26, 'Akashic Books', '2020-05-30', 'Dostoevsky\'s last and greatest novel, The Karamazov Brothers, is both a brilliantly told crime story and a passionate philosophical debate. The dissolute landowner Fyodor Pavlovich Karamazov is '),
(14, 'Crime and Punishment', 'Fyodor Dostoyevsky', 'Literary fiction', 26.58, 'Graywolf Press', '2021-10-28', 'It is a murder story, told from a murder;s point of view, that implicates even the most innocent reader in its enormities. It is a cat-and-mouse game between a tormented young killer and a cheerfu'),
(15, 'Wuthering Heights', 'Emily Brontë', 'Tragedy, gothic', 15.28, 'Dzanc Books', '2007-07-14', 'The narrative is non-linear, involving several flashbacks, and two primary narrators: Mr. Lockwood and Ellen \'Nelly\' Dean. The novel opens in 1801, with Mr. Lockwood arriving at Thrushcross Grange'),
(16, 'The Catcher in the Rye', 'J. D. Salinger', 'Realistic fiction', 15.26, 'Akashic Books', '2021-10-28', 'The Catcher in the Rye is a 1945 novel by J. D. Salinger. Originally published for adults, the novel has become a common part of high school and college curricula throughout the English-speaking'),
(17, 'Pride and Prejudice', 'Jane Austen', 'Classic Regency novel Romance novel', 85.24, 'Graywolf Press', '2007-07-14', 'The book is narrated in free indirect speech following the main character Elizabeth Bennet as she deals with matters of upbringing, marriage, moral rightness and education in her aristocratic'),
(18, 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Picaresque novel', 15.26, 'Graywolf Press', '2007-07-14', 'Revered by all of the town\'s children and dreaded by all of its mothers, Huckleberry Finn is indisputably the most appealing child-hero in American literature. Unlike the tall-tale, idyllic'),
(19, 'Anna Karenina', 'Leo Tolstoy', 'Realist novel', 75.26, 'Akashic Books', '2021-10-28', 'Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky. Tragedy unfolds as Anna rejects her passionless marriage and must'),
(20, 'Alice\'s Adventures in Wonderland', 'Lewis Carroll', 'children\'s novel', 85.62, 'Dzanc Books', '2020-05-30', 'In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole. Thus began the immortal adventures of Alice, perhaps'),
(21, 'The Iliad', 'Homer', 'Epic poetry', 48.25, 'Dzanc Books', '2021-10-28', 'The Iliad is an epic poem in dactylic hexameters, traditionally attributed to Homer. Set in the Trojan War, the ten-year siege of Ilium by a coalition of Greek states, it tells of the battles and');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `commodity`
--

CREATE TABLE `commodity` (
  `commodity_id` int(11) NOT NULL,
  `basket_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `commodity`
--

INSERT INTO `commodity` (`commodity_id`, `basket_id`, `book_id`, `number`) VALUES
(3, 1, 2, 1),
(4, 1, 9, 1),
(5, 1, 3, 1),
(6, 1, 2, 1),
(7, 1, 3, 1),
(8, 1, 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `adress` varchar(500) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `passwrd` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `surname`, `adress`, `contact`, `username`, `passwrd`) VALUES
(1, 'Robert', 'Sereda', 'Poland/Lubelskie/Lublin', '000-000-000', 'robert', '4007d46292298e83da10d0763d95d5139fe0c157148d0587aa912170414ccba6'),
(2, 'franek', 'franek', 'Poland/Lubelskie/Bytom', 'contact', 'franek', 'bf006403f1e10b99d049ab987a8fb64fad1fee7ea8957e92dfe9a7997fc4a662');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`commodity_id`),
  ADD KEY `FK_archCommodity_book` (`book_id`);

--
-- Indeksy dla tabeli `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`basket_id`);

--
-- Indeksy dla tabeli `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indeksy dla tabeli `commodity`
--
ALTER TABLE `commodity`
  ADD PRIMARY KEY (`commodity_id`),
  ADD KEY `FK_commodity_book` (`book_id`);

--
-- Indeksy dla tabeli `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `archive`
--
ALTER TABLE `archive`
  MODIFY `commodity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `basket`
--
ALTER TABLE `basket`
  MODIFY `basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT dla tabeli `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `commodity`
--
ALTER TABLE `commodity`
  MODIFY `commodity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT dla tabeli `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `archive`
--
ALTER TABLE `archive`
  ADD CONSTRAINT `FK_archive_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Ograniczenia dla tabeli `commodity`
--
ALTER TABLE `commodity`
  ADD CONSTRAINT `FK_commodity_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
