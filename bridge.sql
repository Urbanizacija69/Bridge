-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 27, 2019 at 02:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bridge`
--

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
CREATE TABLE IF NOT EXISTS `community` (
  `id_comm` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `c_abs` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_comm`,`c_name`),
  KEY `c_name` (`c_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id_comm`, `c_name`, `created`, `c_abs`) VALUES
(1, 'Leuge of Legends', '2019-04-03', '1'),
(2, 'Visoka Tehnicka Skola', '2019-04-16', 'urban'),
(3, 'Pleme Vasojevici', '2019-04-09', 'marko98'),
(4, 'Chole squad', '2019-04-16', 'urban');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `c_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_member`,`username`,`c_name`),
  KEY `c_name` (`c_name`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id_member`, `username`, `c_name`) VALUES
(5, 'urban', 'Chole squad'),
(1, 'urban', 'Leuge of Legends'),
(4, 'marko98', 'Pleme Vasojevici'),
(2, 'urban', 'Visoka Tehnicka Skola'),
(3, 'marko98', 'Visoka Tehnicka Skola');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id_topics` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `creator` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `full_content` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_topics`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id_topics`, `title`, `content`, `creator`, `cover`, `tag`, `full_content`) VALUES
(1, 'Srbija', 'Nije srpbija saka ', 'marko98', '2.jpg', 'Politics', ''),
(2, 'Matijevic Mesara', 'aaaaaaaaaaaaaaaaaa', 'marko98', '2.jpg', 'Food', ''),
(3, 'Visoka Tehnicka Skola', 'Upis novih studenta za skolu 2019/20.', 'urban', '3.jpg', 'Education', ''),
(4, 'Coca-Cola menja boju u rozo', 'Poznata crna boja vise nece biti ', 'marko98', '4.jpg', 'Drink', ''),
(5, 'Preyentovanje ideja iz Weba', 'SOK ! Svi ucesnici skinuli gace na bini!', 'urban', '1.jpg', 'Programming', ''),
(6, 'Narnija', 'asdasdasdsa', 'urban', '2.jpg', 'Fair Taile', 'asasdasdasdasdasdasdawdwdli qjdjajksajdhdaukhsdukaasdasdad'),
(7, 'Vranjesevic Shop', 'Nova kola kod Vranjeta', 'urban', '2.jpg', 'shop ', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdas'),
(8, 'Los Angeles', 'Najveci grad na pola planete xe xe', 'urban', 'la.jpg', 'Travel', 'asdasdasdasdasdasdasdasdasd'),
(9, 'Mandjelos', 'Americka hrana ne valja nista xe ', 'urban', 'los-angeles_main_1440x800.jpg', 'Foog', 'asdasdasdasdasd'),
(10, 'asdasd', 'asdasdasd', 'tom_kirkman', 'image.adapt.1663.medium.jpg', 'asdasdasd', 'asdasdasd'),
(11, 'Film ,,Mozda ce pogoditi Ameriku ?!\"', 'Novo remek delo srpske kinematografije ', 'urban', 'amerika.jpg', 'Film', 'Trump was born and raised in the New York City borough of Queens and received an economics degree from the Wharton School. He was appointed president of his family\'s real estate business in 1971, renamed it The Trump Organization, and expanded it from Queens and Brooklyn into Manhattan. The company built or renovated skyscrapers, hotels, casinos, and golf courses. Trump later started various side ventures, including licensing his name for real estate and consumer products. He managed the company until his 2017 inauguration. He co-authored several books, including The Art of the Deal. He owned the Miss Universe and Miss USA beauty pageants from 1996 to 2015, and he produced and hosted The Apprentice, a reality television show, from 2003 to 2015. Forbes estimates his net worth to be $3.1 billion. '),
(12, 'Na Drini cuprija', 'Most na Drini obnovljen', 'tom_kirkman', '957f056f-33f2-42db-862e-bc2deb1fadf6-naslovna.jpg', 'Travel', 'Ð ÐµÐºÐ° Ð”Ñ€Ð¸Ð½Ð° (346 km[1]) Ð¿Ñ€Ð¸Ð¿Ð°Ð´Ð° Ð¦Ñ€Ð½Ð¾Ð¼Ð¾Ñ€ÑÐºÐ¾Ð¼ ÑÐ»Ð¸Ð²Ñƒ, Ð° Ð½Ð°ÑÑ‚Ð°Ñ˜Ðµ ÑÐ¿Ð°Ñ˜Ð°ÑšÐµÐ¼ Ñ€ÐµÐºÐ° Ð¢Ð°Ñ€Ðµ Ð¸ ÐŸÐ¸Ð²Ðµ ÐºÐ¾Ð´ Ð¨Ñ›ÐµÐ¿Ð°Ð½ ÐŸÐ¾Ñ™Ð° (Ð½Ð°Ð´Ð¼Ð¾Ñ€ÑÐºÐ° Ð²Ð¸ÑÐ¸Ð½Ð° 470 m). Ð¡Ð»Ð¸Ð²Ð½Ð¾ Ð¿Ð¾Ð´Ñ€ÑƒÑ‡Ñ˜Ðµ Ð¾Ð±ÑƒÑ…Ð²Ð°Ñ‚Ð° Ñ˜ÑƒÐ³Ð¾Ð·Ð°Ð¿Ð°Ð´Ð½Ð¸ Ð¸ Ð·Ð°Ð¿Ð°Ð´Ð½Ð¸ Ð´ÐµÐ¾ Ð¡Ñ€Ð±Ð¸Ñ˜Ðµ, ÑÐµÐ²ÐµÑ€Ð½Ð¸ Ð´ÐµÐ¾ Ð¦Ñ€Ð½Ðµ Ð“Ð¾Ñ€Ðµ Ð¸ Ð¸ÑÑ‚Ð¾Ñ‡Ð½Ð¸ Ð´ÐµÐ¾ Ð‘Ð¾ÑÐ½Ðµ Ð¸ Ð¥ÐµÑ€Ñ†ÐµÐ³Ð¾Ð²Ð¸Ð½Ðµ.\r\nÐŸÑ€Ð°Ð²Ð°Ñ† ÑšÐµÐ½Ð¾Ð³ Ñ‚Ð¾ÐºÐ° Ñ˜Ðµ Ð¾Ð´ Ñ˜ÑƒÐ³Ð° ÐºÐ° ÑÐµÐ²ÐµÑ€Ñƒ Ð¸ Ð¸Ð¼Ð° Ð´Ð¾ÑÑ‚Ð° Ð¿Ñ€Ð¸Ñ‚Ð¾ÐºÐ°. Ð’ÐµÑ›Ðµ Ð¿Ñ€Ð¸Ñ‚Ð¾ÐºÐµ ÑÐ° Ð»ÐµÐ²Ðµ ÑÑ‚Ñ€Ð°Ð½Ðµ ÑÑƒ: Ð¡ÑƒÑ‚Ñ˜ÐµÑÐºÐ°, Ð‘Ð¸ÑÑ‚Ñ€Ð¸Ñ†Ð°, ÐŸÑ€Ð°Ñ‡Ð°, Ð”Ñ€Ð¸ÑšÐ°Ñ‡Ð° Ð¸ ÐˆÐ°ÑšÐ°, Ð° ÑÐ° Ð´ÐµÑÐ½Ðµ: Ð‹ÐµÑ…Ð¾Ñ‚Ð¸Ð½Ð°, Ð›Ð¸Ð¼, Ð Ð·Ð°Ð², Ð‰ÑƒÐ±Ð¾Ð²Ð¸Ñ’Ð° Ð¸ ÐˆÐ°Ð´Ð°Ñ€.\r\n\r\nÐ”Ñ€Ð¸Ð½Ð° Ñ˜Ðµ Ð½Ð°Ñ˜Ð²ÐµÑ›Ð° Ð¿Ñ€Ð¸Ñ‚Ð¾ÐºÐ° Ñ€ÐµÐºÐµ Ð¡Ð°Ð²Ðµ Ñƒ ÐºÐ¾Ñ˜Ñƒ ÑÐµ ÑƒÐ»Ð¸Ð²Ð° Ð±Ð»Ð¸Ð·Ñƒ Ð¡Ñ€ÐµÐ¼ÑÐºÐµ Ð Ð°Ñ‡Ðµ (81 m).\r\n\r\nÐÐ°Ñ˜Ð»ÐµÐ¿ÑˆÐ¸ Ð¸ Ð½Ð°Ñ˜Ð´ÑƒÐ¶Ð¸ (24 km) ÐºÐ°ÑšÐ¾Ð½ Ñ˜Ðµ Ð¾Ð´ Ð–ÐµÐ¿Ðµ Ð´Ð¾ ÐšÐ»Ð¾Ñ‚Ð¸Ñ˜ÐµÐ²Ñ†Ð°. Ð¨Ð¸Ñ€Ð¸Ð½Ð° Ñ€ÐµÐºÐµ Ñ˜Ðµ Ð¾Ð´ 15 m Ð½Ð° Ð¼ÐµÑÑ‚Ñƒ Ð·Ð²Ð°Ð½Ð¾Ð¼ Ð¢Ð¸Ñ˜ÐµÑÐ½Ð¾ Ð´Ð¾ 200 m ÐºÐ¾Ð´ ÐŸÐµÑ€ÑƒÑ›Ñ†Ð° Ð¸ Ð—Ð²Ð¾Ñ€Ð½Ð¸ÐºÐ°.\r\n\r\nÐ’ÐµÑ›Ð¸ Ð³Ñ€Ð°Ð´Ð¾Ð²Ð¸ ÐºÑ€Ð¾Ð· ÐºÐ¾Ñ˜Ðµ Ð¿Ñ€Ð¾Ñ‚Ð¸Ñ‡Ðµ Ð”Ñ€Ð¸Ð½Ð° ÑÑƒ: Ð¤Ð¾Ñ‡Ð° (400 m), Ð“Ð¾Ñ€Ð°Ð¶Ð´Ðµ (345 m), Ð’Ð¸ÑˆÐµÐ³Ñ€Ð°Ð´ (300 m), Ð‘Ð°Ñ˜Ð¸Ð½Ð° Ð‘Ð°ÑˆÑ‚Ð° (260 m), Ð—Ð²Ð¾Ñ€Ð½Ð¸Ðº (140 m) Ð¸ Ð›Ð¾Ð·Ð½Ð¸Ñ†Ð°.\r\nÐ”Ð¸Ð²Ñ™Ð° ÑÐ½Ð°Ð³Ð° Ð”Ñ€Ð¸Ð½Ðµ Ñ˜Ðµ ÑƒÐºÑ€Ð¾Ñ›ÐµÐ½Ð° Ð±Ñ€Ð°Ð½Ð°Ð¼Ð° Ð¸ Ñ˜ÐµÐ·ÐµÑ€Ð¸Ð¼Ð° (Ð’Ð¸ÑˆÐµÐ³Ñ€Ð°Ð´ÑÐºÐ¾, ÐŸÐµÑ€ÑƒÑ›Ð°Ñ†, Ð—Ð²Ð¾Ñ€Ð½Ð¸Ñ‡ÐºÐ¾) Ñ‡Ð¸Ð¼Ðµ Ñ˜Ðµ Ð½Ð°Ñ€ÑƒÑˆÐµÐ½Ð° Ð°Ð»Ð¸ Ð½Ðµ Ð¸ ÑƒÐ½Ð¸ÑˆÑ‚ÐµÐ½Ð° Ð»ÐµÐ¿Ð¾Ñ‚Ð° Ð´Ñ€Ð¸Ð½ÑÐºÐ¸Ñ… ÐºÐ°ÑšÐ¾Ð½Ð°.'),
(17, 'Konj pregazio auto', 'kopita su jaca od guma', 'urban', 'amerika.jpg', 'Horse', 'ojdadjaoiwjdoqijdioqjwsoiqwjsoiqjwjiooiqsjoiqwjsiqojsoiqjsoiqjwjosjqow'),
(18, 'Konj pregazio auto', 'kopita su jaca od guma', 'urban', 'amerika.jpg', 'Horse', 'ojdadjaoiwjdoqijdioqjwsoiqwjsoiqjwjiooiqsjoiqwjsiqojsoiqjsoiqjwjosjqow');

-- --------------------------------------------------------

--
-- Table structure for table `topic_comments`
--

DROP TABLE IF EXISTS `topic_comments`;
CREATE TABLE IF NOT EXISTS `topic_comments` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `id_topics` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_topics` (`id_topics`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `abs` tinyint(1) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered` date NOT NULL,
  PRIMARY KEY (`id_user`,`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `first`, `last`, `email`, `birth`, `abs`, `logged`, `picture`, `registered`) VALUES
(1, 'urban', 'urbinjo', 'Dario', 'Urban', 'urban98@gmail.com', '2019-04-16', 1, 0, 'bil.jpg', '2019-04-23'),
(2, 'marko98', 'marko98', 'Marko', 'Lalic', 'markolalic1998@gmail.com', '2019-04-16', 1, 0, 'default.jpg', '2019-04-23'),
(3, 'kevin2000', 'kevin2000', 'kevin', 'kevinson', 'kevin@gmail.com', '2016-04-21', 0, 0, 'default.jpg', '2019-04-23'),
(4, 'OstojicMiki', 'mikiostoja', 'Milisav', 'Ostojic', 'mikiostoja@hotmail.com', '2019-03-22', 0, 0, 'default.jpg', '2019-04-23'),
(5, 'tom_kirkman', 'thomaskirkman', 'Thomas', 'Kirkman', 'tomkirkman@gmail.com', '1969-12-31', 1, 0, 'tom.jpg', '2019-04-23');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`c_name`) REFERENCES `community` (`c_name`),
  ADD CONSTRAINT `members_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `topic_comments`
--
ALTER TABLE `topic_comments`
  ADD CONSTRAINT `topic_comments_ibfk_1` FOREIGN KEY (`id_topics`) REFERENCES `topics` (`id_topics`),
  ADD CONSTRAINT `topic_comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
