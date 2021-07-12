-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 06, 2021 at 02:42 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `publication_year` year(4) NOT NULL,
  `name` char(80) DEFAULT NULL,
  `author_name` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `publication_year`, `name`, `author_name`) VALUES
(1, 2007, 'The Rest Is Noise: Listening to the Twentieth Century (Hardcover)', ' Alex Ross'),
(2, 2010, 'Just Kids (Hardcover)', 'Patti Smith'),
(3, 2013, 'The Goldfinch (Hardcover)', ' Donna Tartt'),
(4, 2012, 'How Music Works (Hardcover)', 'David Byrne'),
(5, 2006, 'This Is Your Brain on Music: The Science of a Human Obsession (Hardcover)', ' Daniel J. Levitin'),
(6, 1950, 'The Story of Art (Hardcover)', ' E.H. Gombrich'),
(7, 1972, 'Ways of Seeing (Paperback)', NULL),
(8, 2017, '\r\nLeonardo da Vinci\r\nLeonardo da Vinci (Hardcover)', ' Walter Isaacson'),
(9, 2015, '\r\nGirl in a Band (Hardcover)', NULL),
(10, 2010, 'Girls to the Front: The True Story of the Riot Grrrl Revolution (Paperback)', ' Sara Marcus'),
(11, 2007, 'Musicophilia: Tales of Music and the Brain (Hardcover)', ' Oliver Sacks'),
(12, 2015, 'Hunger Makes Me a Modern Girl (Hardcover)', NULL),
(13, 2012, 'Steal Like an Artist: 10 Things Nobody Told You About Being Creative (Paperback)', NULL),
(14, 1934, 'Lust for Life (Paperback)', ' Irving Stone'),
(15, 2007, 'The Music Shop (Hardcover)', NULL),
(16, 2015, '\r\nGirl in a Band (Hardcover)', ' Kim Gordon'),
(17, 1987, 'Fierce Attachments', 'Vivian Gornick'),
(18, 1976, 'The Woman Warrior', 'Maxine Hong Kingston'),
(19, 2006, 'Fun Home', 'Alison Bechdel'),
(20, 1995, 'The Liars’ Club', 'Mary Karr'),
(21, 2010, 'Hitch-22', 'Christopher Hitchens'),
(22, 2013, 'Men We Reaped', 'Jesmyn Ward'),
(23, 2001, 'ooled by Randomness: The Hidden Role of Chance in Life and in the Markets', 'Nassim Nicholas'),
(24, 2009, 'Who\'s Got Your Back', 'Keith Ferrazzi'),
(25, 2002, 'Value-Based Fees', 'Alan Weiss'),
(26, 1993, 'Understanding Comics', 'Scott McCloud'),
(27, 2007, 'Born Standing Up', ' Steve Martin'),
(28, 2020, 'erona Comics', ' Jennifer Dugan'),
(29, 1977, 'How to Draw Comics the Marvel Way', ' Stan Lee'),
(30, 1992, 'Hard Drive', ' ames Wallace'),
(31, 1999, 'Extreme Programming Explained', ' Kent Beck,'),
(32, 1992, 'Modern Operating Systems', ' ndrew S. Tanenbaum'),
(33, 1995, '\r\nBeing Digital', 'Nicholas Negroponte'),
(35, 1998, 'Mad Cowboy', ' Howard F. Lyman, Glen Merzer'),
(36, 1997, 'Food and Feast in Tudor England', 'Alison Sim'),
(37, 1996, 'The True History of Chocolate', 'Sophie D. Coe');

-- --------------------------------------------------------

--
-- Stand-in structure for view `booksinyear`
-- (See below for the actual view)
--
CREATE TABLE `booksinyear` (
`name` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `books_has_categories`
--

CREATE TABLE `books_has_categories` (
  `fk_books_id` int(11) NOT NULL,
  `fk_categories_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_has_categories`
--

INSERT INTO `books_has_categories` (`fk_books_id`, `fk_categories_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 3),
(24, 3),
(25, 3),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(35, 6),
(37, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Art and Music'),
(2, 'Biographies'),
(3, 'Buisness'),
(4, 'Comics'),
(5, 'Computer and Technology '),
(6, 'Cooking'),
(7, 'Education and Refrence '),
(8, 'Entertainment'),
(9, 'Health and Fitness'),
(10, 'History'),
(11, 'Hobbies and Crafts'),
(12, 'Home and Garden'),
(13, 'Horror'),
(14, 'Kids'),
(15, 'Literature and Fiction '),
(16, 'Medical'),
(17, 'Parenting'),
(18, 'Religion'),
(19, 'Romance'),
(20, 'Science and Fantacy'),
(21, 'Science and Math'),
(22, 'Self-health'),
(23, 'Social-science'),
(24, 'Sports'),
(25, 'Travel'),
(26, 'Crime and laws');

-- --------------------------------------------------------

--
-- Table structure for table `categories_has_order_books`
--

CREATE TABLE `categories_has_order_books` (
  `categories_id` int(10) UNSIGNED NOT NULL,
  `order_books_id` int(11) NOT NULL,
  `order_books_fk_customer_order_id` int(11) NOT NULL,
  `order_books_fk_customer_order_customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(15) NOT NULL,
  `address` varchar(45) NOT NULL,
  `fk_liabraries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `phone`, `email`, `address`, `fk_liabraries_id`) VALUES
(1, 'iqra', 634567885, 'i@gmail.com', '4rue,Orléans', 2),
(2, 'fatu', 745657890, 'f@hotmail.com', '3 rue blah blah', 3),
(3, 'Véronique', 54356789, 'v@gmail.com', 'lyon', 1),
(4, 'Delphine', 743234567, 'd@hotmail.com', 'paris', 3),
(5, 'Hélène', 54323456, 'h@yahoomail.com', 'nice', 3),
(6, 'Marie', 543456789, 'm@gmail.com', 'nice', 1),
(7, 'Camille ', 84356789, 'c@gmail.com', 'toulouse', 3),
(8, 'Anne', 754324567, 'an@gmail.com', 'toulouse', 1),
(9, 'Claude', 652345678, 'cl@yahoo.com', 'lille', 1),
(10, 'aul', 643567823, 'au@gmail.com', 'lille', 2),
(11, 'Aurélie', 7345678, 'ar@gmail.com', 'paris', 2),
(12, 'Louise', 6542345, 'blah.com', 'paris', 3),
(13, 'iqra', 654567890, 'm.k@gmail.com', '3 tours', 2),
(14, 'alban', 634567885, 'm@hotmail.com', '7 rue paris', 1),
(15, 'abdul', 654567890, 'm@hotmail.com', '3 tours', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `placed_time` datetime NOT NULL,
  `deliver_time` datetime NOT NULL,
  `shipping_charges` varchar(45) NOT NULL,
  `fk_customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `placed_time`, `deliver_time`, `shipping_charges`, `fk_customer_id`) VALUES
(1, '2019-08-01 14:53:03', '2020-11-10 14:53:03', '20€', 1),
(2, '2020-07-08 15:50:23', '2020-04-16 15:50:23', '10€', 11),
(3, '2020-09-10 15:50:23', '2021-01-12 15:50:23', '5€', 2),
(4, '2020-06-22 18:11:33', '2020-08-05 18:11:33', '50€', 9),
(5, '2020-12-02 18:11:33', '2021-01-07 18:11:33', '30€', 6),
(6, '2021-02-02 18:13:11', '2021-03-09 18:13:11', '20€', 5),
(7, '2021-05-17 18:13:11', '2021-05-25 18:13:11', '30€', 7);

-- --------------------------------------------------------

--
-- Table structure for table `liabraries`
--

CREATE TABLE `liabraries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `details` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `liabraries`
--

INSERT INTO `liabraries` (`id`, `name`, `details`) VALUES
(1, 'Academic', 'schools, colleges and universities'),
(2, 'Public', ''),
(3, 'National', '');

-- --------------------------------------------------------

--
-- Table structure for table `liabraries_has_books`
--

CREATE TABLE `liabraries_has_books` (
  `fk_liabraries_id` int(11) NOT NULL,
  `fk_books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `liabraries_has_books`
--

INSERT INTO `liabraries_has_books` (`fk_liabraries_id`, `fk_books_id`) VALUES
(3, 2),
(1, 5),
(1, 6),
(3, 9),
(2, 12),
(2, 15),
(1, 16),
(2, 17),
(3, 17),
(3, 23),
(2, 26),
(2, 27),
(1, 28),
(1, 30),
(3, 32),
(1, 33),
(3, 33),
(2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `loan_books`
--

CREATE TABLE `loan_books` (
  `id` int(11) NOT NULL,
  `date_loaned` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `members_sign_in_identity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_books`
--

INSERT INTO `loan_books` (`id`, `date_loaned`, `due_date`, `members_sign_in_identity`) VALUES
(1, '2020-09-01', '2021-02-08', 'iq');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `gender` varchar(45) NOT NULL,
  `name` varchar(10) NOT NULL,
  `number` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `sign_in_identity` varchar(45) NOT NULL,
  `fk_liabraries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`gender`, `name`, `number`, `email`, `address`, `sign_in_identity`, `fk_liabraries_id`) VALUES
('male', 'Luis', 7345223, 'al@yahoomail.com', '4rue paris', '2', 3),
('male', 'Louis', 673456789, 'an@gmail.com', 'lyon', '3', 3),
('male', 'Chance', 854367892, 'c@gmail.com', '6 paris', '4', 3),
('female', 'iqra', 43678932, 'm.k@gmail.com', '3 tours', 'iq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_books`
--

CREATE TABLE `order_books` (
  `id` int(11) NOT NULL,
  `status_code` blob NOT NULL,
  `quantity` int(11) NOT NULL,
  `fk_customer_order_id` int(11) NOT NULL,
  `fk_customer_order_customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_books`
--

INSERT INTO `order_books` (`id`, `status_code`, `quantity`, `fk_customer_order_id`, `fk_customer_order_customer_id`) VALUES
(1, 0x30, 2, 3, 2),
(2, 0x31, 3, 1, 1),
(3, 0x31, 3, 1, 1),
(4, 0x30, 2, 4, 9);

-- --------------------------------------------------------

--
-- Stand-in structure for view `publicbooks`
-- (See below for the actual view)
--
CREATE TABLE `publicbooks` (
`name` char(80)
);

-- --------------------------------------------------------

--
-- Table structure for table `resquest_books`
--

CREATE TABLE `resquest_books` (
  `id` int(11) NOT NULL,
  `date_request` date DEFAULT NULL,
  `fk_members_id` int(11) NOT NULL,
  `fk_books_id` int(11) NOT NULL,
  `fk_members_sign_in_identity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resquest_books`
--

INSERT INTO `resquest_books` (`id`, `date_request`, `fk_members_id`, `fk_books_id`, `fk_members_sign_in_identity`) VALUES
(1, '2020-12-08', 1, 27, 'iq'),
(2, '2020-04-15', 2, 23, '4'),
(3, '2020-09-15', 3, 9, '2');

-- --------------------------------------------------------

--
-- Structure for view `booksinyear`
--
DROP TABLE IF EXISTS `booksinyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `booksinyear`  AS SELECT `C`.`name` AS `name` FROM ((`categories` `C` join `books_has_categories` `BC` on((`BC`.`fk_categories_id` = `C`.`id`))) join `books` `B` on((`B`.`id` = `BC`.`fk_books_id`))) WHERE (`B`.`publication_year` = 2017) ;

-- --------------------------------------------------------

--
-- Structure for view `publicbooks`
--
DROP TABLE IF EXISTS `publicbooks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `publicbooks`  AS SELECT `books`.`name` AS `name` FROM `books` WHERE `books`.`id` in (select `liabraries_has_books`.`fk_books_id` from `liabraries_has_books` where `liabraries_has_books`.`fk_liabraries_id` in (select `liabraries`.`id` from `liabraries` where (`liabraries`.`name` = 'public'))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_has_categories`
--
ALTER TABLE `books_has_categories`
  ADD PRIMARY KEY (`fk_books_id`,`fk_categories_id`),
  ADD KEY `fk_books_has_categories_categories1_idx` (`fk_categories_id`),
  ADD KEY `fk_books_has_categories_books1_idx` (`fk_books_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_has_order_books`
--
ALTER TABLE `categories_has_order_books`
  ADD PRIMARY KEY (`categories_id`,`order_books_id`,`order_books_fk_customer_order_id`,`order_books_fk_customer_order_customer_id`),
  ADD KEY `fk_categories_has_order_books_order_books1_idx` (`order_books_id`,`order_books_fk_customer_order_id`,`order_books_fk_customer_order_customer_id`),
  ADD KEY `fk_categories_has_order_books_categories1_idx` (`categories_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`,`fk_liabraries_id`),
  ADD KEY `fk_customer_liabraries1_idx` (`fk_liabraries_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`,`fk_customer_id`),
  ADD KEY `fk_customer_order_customer_idx` (`fk_customer_id`);

--
-- Indexes for table `liabraries`
--
ALTER TABLE `liabraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liabraries_has_books`
--
ALTER TABLE `liabraries_has_books`
  ADD PRIMARY KEY (`fk_liabraries_id`,`fk_books_id`),
  ADD KEY `fk_liabraries_has_books_books1_idx` (`fk_books_id`),
  ADD KEY `fk_liabraries_has_books_liabraries1_idx` (`fk_liabraries_id`);

--
-- Indexes for table `loan_books`
--
ALTER TABLE `loan_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loan_books_members1_idx` (`members_sign_in_identity`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`sign_in_identity`),
  ADD KEY `fk_members_liabraries1_idx` (`fk_liabraries_id`);

--
-- Indexes for table `order_books`
--
ALTER TABLE `order_books`
  ADD PRIMARY KEY (`id`,`fk_customer_order_id`,`fk_customer_order_customer_id`),
  ADD KEY `fk_order_items_customer_order1_idx` (`fk_customer_order_id`,`fk_customer_order_customer_id`);

--
-- Indexes for table `resquest_books`
--
ALTER TABLE `resquest_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_resquest_books_books1_idx` (`fk_books_id`),
  ADD KEY `fk_resquest_books_members1_idx` (`fk_members_sign_in_identity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `liabraries`
--
ALTER TABLE `liabraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_books`
--
ALTER TABLE `order_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resquest_books`
--
ALTER TABLE `resquest_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books_has_categories`
--
ALTER TABLE `books_has_categories`
  ADD CONSTRAINT `fk_books_has_categories_books1` FOREIGN KEY (`fk_books_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_books_has_categories_categories1` FOREIGN KEY (`fk_categories_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `categories_has_order_books`
--
ALTER TABLE `categories_has_order_books`
  ADD CONSTRAINT `fk_categories_has_order_books_categories1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_categories_has_order_books_order_books1` FOREIGN KEY (`order_books_id`,`order_books_fk_customer_order_id`,`order_books_fk_customer_order_customer_id`) REFERENCES `order_books` (`id`, `fk_customer_order_id`, `fk_customer_order_customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_liabraries1` FOREIGN KEY (`fk_liabraries_id`) REFERENCES `liabraries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `fk_customer_order_customer` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `liabraries_has_books`
--
ALTER TABLE `liabraries_has_books`
  ADD CONSTRAINT `fk_liabraries_has_books_books1` FOREIGN KEY (`fk_books_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_liabraries_has_books_liabraries1` FOREIGN KEY (`fk_liabraries_id`) REFERENCES `liabraries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `loan_books`
--
ALTER TABLE `loan_books`
  ADD CONSTRAINT `fk_loan_books_members1` FOREIGN KEY (`members_sign_in_identity`) REFERENCES `members` (`sign_in_identity`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `fk_members_liabraries1` FOREIGN KEY (`fk_liabraries_id`) REFERENCES `liabraries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_books`
--
ALTER TABLE `order_books`
  ADD CONSTRAINT `fk_order_items_customer_order1` FOREIGN KEY (`fk_customer_order_id`,`fk_customer_order_customer_id`) REFERENCES `customer_order` (`id`, `fk_customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resquest_books`
--
ALTER TABLE `resquest_books`
  ADD CONSTRAINT `fk_resquest_books_books1` FOREIGN KEY (`fk_books_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resquest_books_members1` FOREIGN KEY (`fk_members_sign_in_identity`) REFERENCES `members` (`sign_in_identity`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
