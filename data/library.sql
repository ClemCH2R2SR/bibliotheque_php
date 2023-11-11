-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 nov. 2023 à 01:41
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `library`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_firstname` varchar(255) NOT NULL,
  `author_lastname` varchar(255) NOT NULL,
  `author_picture` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`author_id`, `author_firstname`, `author_lastname`, `author_picture`, `year`) VALUES
(1, 'F. Scott', 'Fitzgerald', 'fscottFitzgerald.jpeg', 1896),
(2, 'Harper', 'Lee', 'harperLee.jpeg', 1926),
(3, 'Jane', 'Austen', 'janeAusten.jpeg', 1775),
(4, 'Gabriel', 'García Márquez', 'gabrielGarciaMarquez.jpeg', 1927),
(5, 'J.D.', 'Salinger', 'jdSalinger.jpeg', 1919),
(6, 'J.R.R.', 'Tolkien', 'jrrTolkien.jpeg', 1892),
(7, 'Herman', 'Melville', 'hermanMelville.jpeg', 1819),
(8, 'Aldous', 'Huxley', 'aldousHuxley.jpeg', 1894),
(9, 'Cormac', 'McCarthy', 'cormacMcCarthy.jpeg', 1933),
(10, 'Margaret', 'Atwood', 'margaretAtwood.jpeg', 1939),
(11, 'Frank', 'Herbert', 'frankHerbert.jpeg', 1920),
(12, 'William', 'Gibson', 'williamGibson.jpeg', 1948),
(13, 'Orson Scott', 'Card', 'orsonScottCard.jpeg', 1951),
(14, 'Suzanne', 'Collins', 'suzanneCollins.jpeg', 1962),
(15, 'George', 'Orwell', 'georgeOrwell.jpeg', 1903),
(16, 'Isaac', 'Asimov', 'isaacAsimov.jpeg', 1920),
(17, 'Ursula K.', 'Le Guin', 'ursulaLeGuin.jpeg', 1929),
(18, 'Andy', 'Weir', 'andyWeir.jpeg', NULL),
(19, 'Neal', 'Stephenson', 'nealStephenson.jpeg', 1959),
(20, 'H.G.', 'Wells', 'hgWells.jpeg', 1866),
(21, 'Bram', 'Stoker', 'bramStoker.jpeg', 1847),
(22, 'Mary', 'Shelley', 'maryShelley.jpeg', 1797),
(23, 'William Peter', 'Blatty', 'williamPeterBlatty.jpeg', 1928),
(24, 'Shirley', 'Jackson', 'shirleyJackson.jpeg', 1916),
(25, 'Robert', 'Bloch', 'robertBloch.jpeg', 1917),
(26, 'Josh', 'Malerman', 'joshMalerman.jpeg', NULL),
(27, 'Susan', 'Hill', 'susanHill.jpeg', 1942),
(28, 'Max', 'Brooks', 'maxBrooks.jpeg', 1972),
(29, 'Thomas', 'Harris', 'thomasHarris.jpeg', 1940),
(30, 'Mark', 'Twain', 'markTwain.jpeg', 1835),
(31, 'Robert Louis', 'Stevenson', 'robertLouisStevenson.jpeg', 1850),
(32, 'Jack', 'London', 'jackLondon.jpeg', 1876),
(33, 'Jon', 'Krakauer', 'jonKrakauer.jpeg', 1954),
(34, 'Michael', 'Crichton', 'michaelCrichton.jpeg', 1942),
(35, 'Daniel', 'Defoe', 'danielDefoe.jpeg', 1660),
(36, 'William', 'Golding', 'williamGolding.jpeg', 1911),
(37, 'Homer', 'Homer', 'homer.jpeg', NULL),
(38, 'Lewis', 'Carroll', 'lewisCarroll.jpeg', 1832),
(39, 'Beatrix', 'Potter', 'beatrixPotter.jpeg', 1866),
(40, 'Eric', 'Carle', 'ericCarle.jpeg', 1929),
(41, 'E.B.', 'White', 'ebWhite.jpeg', 1899),
(42, 'Roald', 'Dahl', 'roaldDahl.jpeg', 1916),
(43, 'Dr.', 'Seuss', 'drSeuss.jpeg', 1904),
(44, 'A.A.', 'Milne', 'aaMilne.jpeg', 1882),
(45, 'T. Colin', 'Campbell', 'tColinCampbell.jpeg', 1934),
(46, 'Jason', 'Fung', 'jasonFung.jpeg', NULL),
(47, 'Melissa', 'Hartwig', 'melissaHartwig.jpeg', NULL),
(48, 'Dallas', 'Hartwig', 'dallasHartwig.jpeg', NULL),
(49, 'Steven R.', 'Gundry', 'stevenGundry.jpeg', 1950),
(50, 'Rachel', 'Carson', 'rachelCarson.jpeg', 1907),
(51, 'Elizabeth', 'Kolbert', 'elizabethKolbert.jpeg', 1961),
(52, 'Michael', 'Pollan', 'michaelPollan.jpeg', 1955),
(53, 'William', 'McDonough', 'williamMcDonough.jpeg', 1951),
(54, 'Michael', 'Braungart', 'michaelBraungart.jpeg', NULL),
(55, 'Jeff', 'Goodell', 'jeffGoodell.jpeg', NULL),
(56, 'Peter', 'Wohlleben', 'peterWohlleben.jpeg', 1964),
(57, 'Bill', 'McKibben', 'billMcKibben.jpeg', 1960),
(58, 'Edward O.', 'Wilson', 'edwardWilson.jpeg', 1929),
(59, 'David', 'Wallace-Wells', 'davidWallaceWells.jpeg', NULL),
(60, 'Neal', 'Gabler', 'nealGabler.jpeg', 1949),
(61, 'Niccolò', 'Machiavelli', 'niccoloMachiavelli.jpeg', 1469),
(62, 'Friedrich', 'Hayek', 'friedrichHayek.jpeg', 1899),
(63, 'Alexander', 'Hamilton', 'alexanderHamilton.jpeg', 1755),
(64, 'James', 'Madison', 'jamesMadison.jpeg', 1751),
(65, 'John', 'Jay', 'johnJay.jpeg', 1745),
(66, 'Barry', 'Goldwater', 'barryGoldwater.jpeg', 1909),
(67, 'Barack', 'Obama', 'barackObama.jpeg', 1961),
(68, 'Karl', 'Marx', 'karlMarx.jpeg', 1818),
(69, 'Friedrich', 'Engels', 'friedrichEngels.jpeg', 1820),
(70, 'Sun', 'Tzu', 'sunTzu.jpeg', NULL),
(71, 'Francis', 'Fukuyama', 'francisFukuyama.jpeg', 1952),
(72, 'David', 'Quammen', 'davidQuammen.jpeg', 1948);

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_year_date` int(11) NOT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`book_id`, `title`, `release_year_date`, `id_author`) VALUES
(1, 'The Great Gatsby', 1925, 52),
(2, 'To Kill a Mockingbird', 1960, 30),
(3, 'Pride and Prejudice', 1813, 65),
(4, 'One Hundred Years of Solitude', 1967, 21),
(5, 'The Catcher in the Rye', 1951, 51),
(6, 'The Lord of the Rings', 1954, 48),
(7, 'Moby-Dick', 1851, 15),
(8, 'Brave New World', 1932, 2),
(9, 'The Road', 2006, 35),
(10, 'The Handmaid\'s Tale', 1985, 27),
(11, 'Dune', 1965, 30),
(12, 'Neuromancer', 1984, 66),
(13, 'Ender\'s Game', 1985, 24),
(14, 'The Hunger Games', 2008, 65),
(15, '1984', 1949, 36),
(16, 'Foundation', 1951, 59),
(17, 'The Left Hand of Darkness', 1969, 41),
(18, 'The Martian', 2011, 26),
(19, 'Snow Crash', 1992, 6),
(20, 'The Time Machine', 1895, 26),
(21, 'The Hobbit', 1937, 38),
(22, 'Harry Potter and the Sorcerer\'s Stone', 1997, 38),
(23, 'A Song of Ice and Fire', 1996, 6),
(24, 'The Name of the Wind', 2007, 60),
(25, 'Alice\'s Adventures in Wonderland', 1865, 65),
(26, 'The Chronicles of Narnia', 1950, 72),
(27, 'The Wizard of Oz', 1900, 20),
(28, 'The Lies of Locke Lamora', 2006, 26),
(29, 'The Once and Future King', 1958, 70),
(30, 'The Last Unicorn', 1968, 57),
(31, 'The Da Vinci Code', 2003, 3),
(32, 'Gone Girl', 2012, 59),
(33, 'The Girl with the Dragon Tattoo', 2005, 71),
(34, 'The Silence of the Lambs', 1988, 33),
(35, 'The Bourne Identity', 1980, 24),
(36, 'The Girl on the Train', 2015, 20),
(37, 'Sharp Objects', 2006, 28),
(38, 'The Woman in the Window', 2018, 7),
(39, 'The Revenant', 2002, 22),
(40, 'In the Woods', 2007, 19),
(41, 'Sherlock Holmes', 1887, 26),
(42, 'Nancy Drew', 1930, 3),
(43, 'Hercule Poirot', 1920, 9),
(44, 'The No. 1 Ladies\' Detective Agency', 1998, 33),
(45, 'The Adventures of Father Brown', 1911, 68),
(46, 'Inspector Morse', 1975, 24),
(47, 'Kinsey Millhone', 1982, 57),
(48, 'Commissario Brunetti', 1992, 72),
(49, 'Easy Rawlins', 1990, 41),
(50, 'Precious Ramotswe', 1998, 62),
(51, 'Pride and Prejudice', 1813, 41),
(52, 'The Notebook', 1996, 20),
(53, 'Outlander', 1991, 47),
(54, 'Jane Eyre', 1847, 33),
(55, 'Twilight', 2005, 21),
(56, 'The Fault in Our Stars', 2012, 5),
(57, 'Gone with the Wind', 1936, 34),
(58, 'The Rosie Project', 2013, 12),
(59, 'Me Before You', 2012, 31),
(60, 'The Hating Game', 2016, 44),
(61, 'The Immortal Life of Henrietta Lacks', 2010, 55),
(62, 'Sapiens: A Brief History of Humankind', 2011, 72),
(63, 'Becoming', 2018, 51),
(64, 'The Wright Brothers', 2015, 39),
(65, 'Quiet: The Power of Introverts in a World That Can\'t Stop Talking', 2012, 41),
(66, 'In Cold Blood', 1966, 17),
(67, 'The Sixth Extinction: An Unnatural History', 2014, 31),
(68, 'The Glass Castle', 2005, 34),
(69, 'The Tipping Point', 2000, 4),
(70, 'Born a Crime: Stories from a South African Childhood', 2016, 61),
(71, 'A Brief History of Time', 1988, 3),
(72, 'The Selfish Gene', 1976, 48),
(73, 'Cosmos', 1980, 17),
(74, 'The Double Helix', 1968, 10),
(75, 'The Immortal Life of Henrietta Lacks', 2010, 71),
(76, 'Guns, Germs, and Steel', 1997, 36),
(77, 'The Emperor of All Maladies: A Biography of Cancer', 2010, 40),
(78, 'The Code Book: The Science of Secrecy from Ancient Egypt to Quantum Cryptography', 1999, 17),
(79, 'The Man Who Knew Infinity: A Life of the Genius Ramanujan', 1991, 36),
(80, 'The Gene: An Intimate History', 2016, 58),
(81, 'Jonathan Strange & Mr Norrell', 2004, 39),
(82, 'The Golem and the Jinni', 2013, 17),
(83, 'The Night Circus', 2011, 43),
(84, 'The Shadow of the Wind', 2001, 17),
(85, 'The Historian', 2005, 28),
(86, 'The Bear and the Nightingale', 2017, 15),
(87, 'The Queen of the Tearling', 2014, 63),
(88, 'The Name of the Wind', 2007, 54),
(89, 'The Winter Witch', 2013, 10),
(90, 'The Witchfinder\'s Sister', 2017, 32),
(91, 'The Waste Land', 1922, 55),
(92, 'Leaves of Grass', 1855, 35),
(93, 'The Odyssey', 800, 8),
(94, 'Milk and Honey', 2014, 7),
(95, 'The Collected Poems of Langston Hughes', 1994, 10),
(96, 'Selected Poems', 1830, 31),
(97, 'The Sun and Her Flowers', 2017, 52),
(98, 'Ariel', 1965, 20),
(99, 'The Iliad', 800, 19),
(100, 'The Essential Rumi', 1300, 33),
(101, 'Steve Jobs', 2011, 33),
(102, 'The Diary of a Young Girl', 1947, 69),
(103, 'Alexander Hamilton', 2004, 30),
(104, 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', 2015, 13),
(105, 'Into the Wild', 1996, 48),
(106, 'The Glass Castle', 2005, 57),
(107, 'Malcolm X: A Life of Reinvention', 2011, 67),
(108, 'Unbroken: A World War II Story of Survival, Resilience, and Redemption', 2010, 19),
(109, 'Walt Disney: The Triumph of the American Imagination', 2006, 36),
(110, 'A People\'s History of the United States', 1980, 53),
(111, 'The Guns of August', 1962, 11),
(112, '1491: New Revelations of the Americas Before Columbus', 2005, 41),
(113, 'The Wright Brothers', 2015, 28),
(114, 'The Devil in the White City: Murder, Magic, and Madness at the Fair That Changed America', 2003, 15),
(115, 'The Rise and Fall of the Third Reich', 1960, 61),
(116, 'The Plantagenets: The Warrior Kings and Queens Who Made England', 2012, 45),
(117, '1776', 2005, 40),
(118, 'A Short History of Nearly Everything', 2003, 65),
(119, 'The Secret History', 1992, 60),
(120, 'The Diary of a Young Girl', 1947, 34),
(121, 'Long Walk to Freedom', 1994, 60),
(122, 'Angela\'s Ashes', 1996, 52),
(123, 'The Story of My Experiments with Truth', 1927, 10),
(124, 'The Long Hard Road Out of Hell', 1998, 37),
(125, 'Bossypants', 2011, 11),
(126, 'Open', 2009, 13),
(127, 'Born a Crime: Stories from a South African Childhood', 2016, 35),
(128, 'Self-Reliance', 1841, 60),
(129, 'Nature', 1836, 53),
(130, 'The Art of the Personal Essay', 1995, 10),
(131, 'A Room of One\'s Own', 1929, 35),
(132, 'Slouching Towards Bethlehem', 1968, 3),
(133, 'Consider the Lobster', 2005, 50),
(134, 'The Opposite of Loneliness', 2014, 27),
(135, 'The White Album', 1979, 57),
(136, 'Men Explain Things to Me', 2014, 58),
(137, 'The Myth of Sisyphus and Other Essays', 1942, 46),
(138, 'The Prince', 1532, 55),
(139, 'The Road to Serfdom', 1944, 65),
(140, 'The Federalist Papers', 1787, 15),
(141, 'The Conscience of a Conservative', 1960, 22),
(142, 'The Audacity of Hope', 2006, 67),
(143, 'The Communist Manifesto', 1848, 51),
(144, 'The Art of War', 500, 52),
(145, 'The End of History and the Last Man', 1992, 37),
(146, 'The Origins of Political Order', 2011, 28),
(147, 'The Road to Wigan Pier', 1937, 28),
(148, 'Dracula', 1897, 55),
(149, 'The Shining', 1977, 45),
(150, 'Frankenstein', 1818, 63),
(151, 'The Exorcist', 1971, 32),
(152, 'The Haunting of Hill House', 1959, 44),
(153, 'Psycho', 1959, 52),
(154, 'Bird Box', 2014, 53),
(155, 'The Woman in Black', 1983, 38),
(156, 'World War Z', 2006, 30),
(157, 'The Silence of the Lambs', 1988, 37),
(158, 'The Adventures of Huckleberry Finn', 1884, 21),
(159, 'Treasure Island', 1883, 65),
(160, 'The Call of the Wild', 1903, 48),
(161, 'Into the Wild', 1996, 44),
(162, 'Jurassic Park', 1990, 2),
(163, 'The Revenant', 2002, 21),
(164, 'Robinson Crusoe', 1719, 27),
(165, 'Lord of the Flies', 1954, 1),
(166, 'The Odyssey', 800, 66),
(167, 'The Martian', 2011, 37),
(168, 'Harry Potter and the Sorcerer\'s Stone', 1997, 60),
(169, 'Where the Wild Things Are', 1963, 43),
(170, 'Alice\'s Adventures in Wonderland', 1865, 35),
(171, 'The Very Hungry Caterpillar', 1969, 45),
(172, 'Charlotte\'s Web', 1952, 49),
(173, 'Matilda', 1988, 36),
(174, 'The Cat in the Hat', 1957, 32),
(175, 'Winnie-the-Pooh', 1926, 50),
(176, 'The Tale of Peter Rabbit', 1902, 12),
(177, 'Goodnight Moon', 1947, 54),
(178, 'The Immortal Life of Henrietta Lacks', 2010, 16),
(179, 'The Emperor of All Maladies: A Biography of Cancer', 2010, 61),
(180, 'The Immune System Recovery Plan', 2013, 42),
(181, 'The Blue Zones', 2008, 26),
(182, 'Being Mortal', 2014, 3),
(183, 'The China Study', 2004, 9),
(184, 'The Obesity Code', 2016, 35),
(185, 'Grain Brain', 2013, 4),
(186, 'The Whole 30', 2009, 56),
(187, 'The Plant Paradox', 2017, 54),
(188, 'Silent Spring', 1962, 31),
(189, 'The Sixth Extinction: An Unnatural History', 2014, 62),
(190, 'The Omnivore\'s Dilemma', 2006, 1),
(191, 'Cradle to Cradle: Remaking the Way We Make Things', 2002, 34),
(192, 'The Water Will Come: Rising Seas, Sinking Cities, and the Remaking of the Civilized World', 2017, 22),
(193, 'The Hidden Life of Trees: What They Feel, How They Communicate', 2015, 6),
(194, 'The End of Nature', 1989, 37),
(195, 'The Uninhabitable Earth: Life After Warming', 2019, 24),
(196, 'The Future of Life', 2002, 6),
(197, 'The Song of the Dodo: Island Biogeography in an Age of Extinctions', 1996, 30);

-- --------------------------------------------------------

--
-- Structure de la table `books_categories`
--

CREATE TABLE `books_categories` (
  `id_category` int(11) NOT NULL,
  `id_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `books_categories`
--

INSERT INTO `books_categories` (`id_category`, `id_book`) VALUES
(9, 165),
(4, 190),
(10, 8),
(17, 162),
(16, 31),
(6, 42),
(4, 71),
(20, 132),
(9, 182),
(4, 69),
(11, 185),
(5, 56),
(11, 19),
(20, 23),
(8, 193),
(16, 196),
(18, 38),
(19, 94),
(3, 93),
(16, 43),
(12, 183),
(9, 74),
(9, 89),
(17, 95),
(20, 123),
(6, 130),
(11, 111),
(18, 125),
(16, 58),
(3, 176),
(8, 104),
(11, 126),
(12, 7),
(3, 86),
(1, 114),
(16, 140),
(14, 178),
(5, 66),
(19, 73),
(2, 78),
(10, 82),
(7, 84),
(2, 40),
(9, 99),
(19, 108),
(8, 27),
(3, 36),
(9, 52),
(15, 98),
(8, 4),
(14, 55),
(7, 158),
(12, 163),
(16, 39),
(6, 141),
(2, 192),
(10, 13),
(6, 35),
(17, 46),
(7, 195),
(3, 18),
(13, 20),
(15, 28),
(17, 41),
(20, 181),
(10, 10),
(7, 134),
(4, 164),
(1, 37),
(12, 85),
(15, 113),
(19, 146),
(10, 147),
(12, 2),
(11, 11),
(19, 103),
(1, 156),
(7, 197),
(10, 59),
(8, 67),
(9, 96),
(3, 188),
(6, 90),
(19, 151),
(19, 174),
(17, 34),
(6, 44),
(2, 54),
(8, 100),
(13, 101),
(1, 57),
(8, 68),
(14, 120),
(6, 191),
(6, 9),
(13, 92),
(8, 127),
(20, 131),
(13, 170),
(6, 184),
(10, 15),
(11, 76),
(4, 79),
(5, 109),
(16, 173),
(2, 124),
(3, 145),
(7, 157),
(7, 167),
(14, 194),
(6, 21),
(8, 22),
(20, 155),
(17, 64),
(4, 81),
(9, 77),
(12, 117),
(12, 17),
(4, 49),
(3, 51),
(1, 65),
(19, 112),
(9, 180),
(8, 83),
(14, 169),
(6, 60),
(7, 152),
(16, 161),
(19, 116),
(8, 149),
(20, 171),
(17, 137),
(4, 53),
(9, 6),
(11, 72),
(8, 105),
(8, 160),
(14, 172),
(5, 133),
(5, 175),
(7, 5),
(2, 63),
(8, 143),
(11, 1),
(14, 97),
(15, 122),
(12, 144),
(14, 153),
(14, 110),
(8, 129),
(18, 154),
(6, 88),
(16, 177),
(19, 187),
(7, 61),
(20, 91),
(16, 138),
(1, 148),
(14, 186),
(8, 30),
(16, 47),
(15, 106),
(8, 135),
(12, 80),
(17, 136),
(10, 16),
(17, 32),
(16, 24),
(9, 119),
(15, 121),
(9, 128),
(19, 168),
(7, 70),
(18, 115),
(10, 179),
(16, 50),
(7, 189),
(6, 87),
(9, 150),
(5, 3),
(19, 14),
(1, 25),
(7, 118),
(13, 139),
(3, 159),
(13, 12),
(18, 166),
(9, 107),
(9, 142),
(1, 45),
(16, 102),
(16, 29),
(12, 33),
(12, 75),
(3, 26),
(20, 48),
(9, 62),
(12, 165),
(7, 190),
(16, 8),
(2, 162),
(19, 31),
(11, 42),
(17, 71),
(10, 132),
(1, 182),
(12, 69),
(18, 185),
(14, 56),
(17, 19),
(20, 23),
(10, 193),
(10, 196),
(19, 38),
(4, 94),
(2, 93),
(18, 43),
(2, 183),
(16, 74),
(14, 89),
(1, 95),
(5, 123),
(18, 130),
(18, 111),
(13, 125),
(10, 58),
(12, 176),
(7, 104),
(2, 126),
(7, 7),
(10, 86),
(8, 114),
(7, 140),
(12, 178),
(20, 66),
(2, 73),
(9, 78),
(19, 82),
(9, 84),
(7, 40),
(5, 99),
(7, 108),
(17, 27),
(5, 36),
(13, 52),
(9, 98),
(6, 4),
(3, 55),
(16, 158),
(11, 163),
(5, 39),
(12, 141),
(6, 192),
(13, 13),
(5, 35),
(5, 46),
(12, 195),
(2, 18),
(16, 20),
(14, 28),
(2, 41),
(6, 181),
(3, 10),
(17, 134),
(16, 164),
(7, 37),
(7, 85),
(15, 113),
(13, 146),
(1, 147),
(3, 2),
(10, 11),
(3, 103),
(6, 156),
(17, 197),
(9, 59),
(15, 67),
(5, 96),
(2, 188),
(13, 90),
(20, 151),
(20, 174),
(18, 34),
(10, 44),
(14, 54),
(1, 100),
(2, 101),
(8, 57),
(15, 68),
(7, 120),
(11, 191),
(12, 9),
(7, 92),
(19, 127),
(13, 131),
(8, 170),
(19, 184),
(13, 15),
(4, 76),
(4, 79),
(7, 109),
(2, 173),
(8, 124),
(12, 145),
(16, 157),
(3, 167),
(9, 194),
(14, 21),
(3, 22),
(12, 155),
(9, 64),
(12, 81),
(9, 77),
(9, 117),
(18, 17),
(20, 49),
(9, 51),
(5, 65),
(15, 112),
(2, 180),
(4, 83),
(12, 169),
(10, 60),
(13, 152),
(13, 161),
(5, 116),
(6, 149),
(13, 171),
(6, 137),
(12, 53),
(20, 6),
(4, 72),
(20, 105),
(6, 160),
(10, 172),
(13, 133),
(14, 175),
(12, 5),
(16, 63),
(5, 143),
(18, 1),
(11, 97),
(4, 122),
(4, 144),
(6, 153),
(19, 110),
(18, 129),
(11, 154),
(20, 88),
(8, 177),
(17, 187),
(3, 61),
(2, 91),
(19, 138),
(10, 148),
(14, 186),
(18, 30),
(7, 47),
(19, 106),
(15, 135),
(17, 80),
(1, 136),
(12, 16),
(19, 32),
(16, 24),
(5, 119),
(16, 121),
(4, 128),
(13, 168),
(9, 70),
(9, 115),
(17, 179),
(18, 50),
(18, 189),
(14, 87),
(15, 150),
(15, 3),
(8, 14),
(13, 25),
(1, 118),
(4, 139),
(20, 159),
(5, 12),
(4, 166),
(6, 107),
(16, 142),
(3, 45),
(4, 102),
(11, 29),
(4, 33),
(5, 75),
(13, 26),
(10, 48),
(10, 62);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Literary Fiction'),
(2, 'Science Fiction'),
(3, 'Fantasy'),
(4, 'Mystery/Thriller'),
(5, 'Detective'),
(6, 'Romance'),
(7, 'Non-fiction'),
(8, 'Science'),
(9, 'Historical Fantasy'),
(10, 'Poetry'),
(11, 'Biography'),
(12, 'History'),
(13, 'Autobiography'),
(14, 'Essays'),
(15, 'Political Science'),
(16, 'Horror'),
(17, 'Adventure'),
(18, 'Children\'s Books'),
(19, 'Health Science'),
(20, 'Environmental Science');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profil_picture` varchar(255) DEFAULT NULL,
  `newsletter_enabled` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `profil_picture`, `newsletter_enabled`, `is_admin`) VALUES
(1, 'test', 'clement.charrassier@gmail.com', '$2y$10$W526g0iMxlEQkMyb2D.Bvu.UezzXdMeYeeJCLfjGZc/948iY0AyKW', NULL, NULL, NULL),
(2, 'damien', 'damien@gmail.com', '$2y$10$Mw/hkaB2prn56vaxXKOlXOfaqnPaIr2TtWt3VujOkDvo2bA9bbd9O', NULL, NULL, NULL),
(4, 'hristina', 'hristina@gmail.com', '$2y$10$J7Mau2aNQUbsr8LQtP05humgig391KP4ES0uNe2e8qbDNTeXnKZy.', NULL, NULL, NULL),
(5, 'nicolas', 'n@gmail.com', '$2y$10$oaMJF1k1sPYFYbC05NZceOHqCctCdlOLNSKiUREhBbE9J8kWbFA0a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_books`
--

CREATE TABLE `users_books` (
  `user_book` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `comment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `id_author` (`id_author`);

--
-- Index pour la table `books_categories`
--
ALTER TABLE `books_categories`
  ADD KEY `id_books` (`id_book`),
  ADD KEY `id_categories` (`id_category`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `users_books`
--
ALTER TABLE `users_books`
  ADD PRIMARY KEY (`user_book`),
  ADD KEY `id_books` (`id_book`),
  ADD KEY `id_users` (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users_books`
--
ALTER TABLE `users_books`
  MODIFY `user_book` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `authors` (`author_id`);

--
-- Contraintes pour la table `books_categories`
--
ALTER TABLE `books_categories`
  ADD CONSTRAINT `books_categories_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `books_categories_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `categories` (`category_id`);

--
-- Contraintes pour la table `users_books`
--
ALTER TABLE `users_books`
  ADD CONSTRAINT `users_books_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `users_books_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
