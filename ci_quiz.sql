-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 11:08 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Sports'),
(2, 'movies'),
(3, 'education');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `que_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question_name` varchar(255) NOT NULL,
  `choice1` varchar(255) NOT NULL,
  `choice2` varchar(255) NOT NULL,
  `choice3` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`que_id`, `category_id`, `question_name`, `choice1`, `choice2`, `choice3`, `answer`) VALUES
(1, 1, 'Who is the first Indian woman to win an Asian Games gold in 400m run?', 'M.L.Valsamma', 'P.T.Usha', 'K.Malleshwari', 'Kamaljit Sandhu'),
(2, 1, 'Which cricketer had scored highest individual score in ODI cricket?', 'Virender Sehwag', 'Chris Gayle', 'Martin Guptill', 'Rohit Sharma'),
(3, 1, 'Who is the first Indian to cross seven important seas by swimming?', 'Amrendra Singh', 'Junko Taibei', 'Yuri Gagarin', 'Bula Chaudhury'),
(4, 1, 'The 2017 Indian Premier League (IPL 2017) first match on 5 April, 2017 was held in ?', 'delhi', 'mumbai', 'chennai', 'hyderabad'),
(5, 2, 'First program telecast on Doordarshan', 'asian game', 'peacock call', 'songs ', 'krishi darshan'),
(6, 2, 'first indian movie submited for oscar?', 'the guid', 'madhumati', 'amrapali', 'mother teresa'),
(7, 2, 'First program telecast on Doordarshan', 'asian game', 'peacock call', 'songs ', 'krishi darshan'),
(8, 2, 'first indian movie submited for oscar?', 'the guid', 'madhumati', 'amrapali', 'mother teresa'),
(9, 3, 'What does HTML stand for?', 'Hyperlinks and Text Markup Language', 'Home Tool Markup Language', 'Hyperlink Tool Markup Language', 'Hyper Text Markup Language'),
(10, 3, 'Which SQL statement is used to extract data from a database?', 'get', 'extract', 'open', 'select'),
(11, 3, 'Choose the correct HTML element for the largest heading:', 'heading', 'head', 'h6', 'h1'),
(12, 3, 'Which SQL statement is used to extract data from a database?', 'get', 'extract', 'open', 'select');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`que_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `que_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
