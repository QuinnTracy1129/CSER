-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 03:32 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cser`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `why` varchar(255) NOT NULL,
  `whn` varchar(255) NOT NULL,
  `whr` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `Msg` varchar(255) NOT NULL,
  `postBy` int(255) NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `likes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `why`, `whn`, `whr`, `img`, `Msg`, `postBy`, `postDate`, `likes`) VALUES
(4, 'Welcome to our system.', 'Today', 'In your own houses', 'download.png', 'This was just a sample post. Thank you for testing our software.', 18, '2018-10-02 07:32:36', ''),
(5, 'Harry', 'Ngayon', 'Dito', 'mmeme.jpg', 'Ang pogi ni harry', 18, '2018-12-21 04:08:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_comment`
--

CREATE TABLE `announcement_comment` (
  `AC_ID` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `A_ID` int(11) NOT NULL,
  `U_ID` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement_comment`
--

INSERT INTO `announcement_comment` (`AC_ID`, `comment`, `Date`, `A_ID`, `U_ID`, `state`) VALUES
(1, 'sas', '2018-05-05 12:21:14', 2, 9, 0),
(2, 'sas', '2018-05-05 12:21:23', 2, 1, 0),
(3, 'dsd', '2018-05-05 12:21:34', 2, 6, 0),
(4, 'sas', '2018-05-05 12:22:19', 2, 6, 0),
(5, 'Haaay', '2018-08-09 02:37:41', 1, 14, 0),
(6, 'hehe', '2018-08-21 05:14:02', 2, 15, 0),
(7, 'hehe', '2018-08-21 05:18:44', 2, 16, 0),
(8, 'hehe', '2018-08-21 05:23:34', 2, 18, 0),
(9, 'boom', '2018-08-21 05:28:02', 3, 18, 0),
(10, 'asdf', '2018-08-21 05:30:20', 3, 15, 0),
(11, 'asdf', '2018-10-02 07:27:59', 3, 17, 0),
(12, 'Haha', '2018-10-07 01:31:33', 4, 17, 0),
(13, 'Thank you too', '2018-10-07 01:31:39', 4, 17, 0),
(14, 'haha', '2018-10-09 10:09:23', 5, 18, 0),
(15, 'hello', '2018-11-21 01:33:29', 4, 18, 0),
(16, 'asdf', '2018-11-21 01:33:40', 4, 18, 0),
(17, 'haha', '2019-01-11 01:52:23', 5, 17, 0),
(18, 'asdasdasd', '2019-01-11 01:52:36', 5, 17, 0),
(19, 'asdasdasd', '2019-01-11 01:52:38', 5, 17, 0),
(20, 'raewtawetr', '2019-01-11 01:52:40', 5, 17, 0),
(21, 'asadf', '2019-01-11 01:52:40', 5, 17, 0),
(22, 'sdf', '2019-01-11 01:52:40', 5, 17, 0),
(23, 'sdf', '2019-01-11 01:52:41', 5, 17, 0),
(24, 'sdf', '2019-01-11 01:52:41', 5, 17, 0),
(25, 'sd', '2019-01-11 01:52:41', 5, 17, 0),
(26, 'fs', '2019-01-11 01:52:41', 5, 17, 0),
(27, 'df', '2019-01-11 01:52:42', 5, 17, 0),
(28, 'sdf', '2019-01-11 01:52:42', 5, 17, 0),
(29, 'sd', '2019-01-11 01:52:42', 5, 17, 0),
(30, 'fs', '2019-01-11 01:52:42', 5, 17, 0),
(31, 'df', '2019-01-11 01:52:42', 5, 17, 0),
(32, 'sdf', '2019-01-11 01:52:42', 5, 17, 0),
(33, 'sd', '2019-01-11 01:52:43', 5, 17, 0),
(34, 'fs', '2019-01-11 01:52:43', 5, 17, 0),
(35, 'df', '2019-01-11 01:52:43', 5, 17, 0),
(36, 'sd', '2019-01-11 01:52:43', 5, 17, 0),
(37, 'fs', '2019-01-11 01:52:43', 5, 17, 0),
(38, 'dfs', '2019-01-11 01:52:44', 5, 17, 0),
(39, 'df', '2019-01-11 01:52:44', 5, 17, 0),
(40, 'sd', '2019-01-11 01:52:44', 5, 17, 0),
(41, 'fs', '2019-01-11 01:52:44', 5, 17, 0),
(42, 'df', '2019-01-11 01:52:44', 5, 17, 0),
(43, 'sdf', '2019-01-11 01:52:44', 5, 17, 0),
(44, 'sd', '2019-01-11 01:52:45', 5, 17, 0),
(45, 'fs', '2019-01-11 01:52:45', 5, 17, 0),
(46, 'df', '2019-01-11 01:52:45', 5, 17, 0),
(47, 'sdf', '2019-01-11 01:52:45', 5, 17, 0),
(48, 'sdf', '2019-01-11 01:52:45', 5, 17, 0),
(49, 'sd', '2019-01-11 01:52:46', 5, 17, 0),
(50, 'fs', '2019-01-11 01:52:46', 5, 17, 0),
(51, 'df', '2019-01-11 01:52:46', 5, 17, 0),
(52, 'sdf', '2019-01-11 01:52:46', 5, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5bed840a24fa5', '5bed840a3ea99'),
('5bee06a1cf194', '5bee06a1e76df'),
('5bee06a254d9a', '5bee06a2621d0'),
('5bee06a2b5e76', '5bee06a2be0a9'),
('5bf1256cd9bbf', '5bf1256ce9df9'),
('5bf4a8fd2609c', '5bf4a8fd36ed7'),
('5bed840a24fa5', '5bed840a3ea99'),
('5bee06a1cf194', '5bee06a1e76df'),
('5bee06a254d9a', '5bee06a2621d0'),
('5bee06a2b5e76', '5bee06a2be0a9'),
('5bf1256cd9bbf', '5bf1256ce9df9'),
('5bf4a8fd2609c', '5bf4a8fd36ed7');

-- --------------------------------------------------------

--
-- Table structure for table `beta_answers`
--

CREATE TABLE `beta_answers` (
  `id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `answer` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beta_questions`
--

CREATE TABLE `beta_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `e` varchar(255) NOT NULL,
  `correct` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beta_questions`
--

INSERT INTO `beta_questions` (`id`, `question`, `a`, `b`, `c`, `d`, `e`, `correct`) VALUES
(1, 'Which sentence uses â€œfamishâ€ correctly?', 'After the straight exam, I felt too exhausted and famished to eat my favourite foods.', 'I could eat a horse, I am famish now.', 'I famished my stomach next time you treat me to a meal out.', 'I will bring lots of pizza, thatâ€™s a famish.', 'None of the above', 'a'),
(2, 'Priscila _____ rather not invest her savings in the stock market.', 'must', 'has to', 'could', 'would', 'None of the above', 'd'),
(3, 'Did you have any problem ____ our house?', 'search', 'to search', 'searching', 'for searching', 'None of the above', 'c'),
(4, 'I hope you donâ€™t mind ___ joining you.', 'to be', 'I had been', 'that I may', 'my', 'None of the above', 'e'),
(5, 'Most basketball players are 6 __ tall or more.', 'foot', 'feet', 'foots', 'feets', 'None of the above', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `ID` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ID`, `rid`, `name`) VALUES
(1, 65, 'Benedict'),
(3, 516, 'asdfasdfa'),
(4, 611, 'haha'),
(5, 713, 'English'),
(6, 206, 'Present T'),
(7, 6, 'Present T'),
(8, 206, 'dsadsahdbsajbdjksabjkdbsajkbdsadsa'),
(9, 206, 'Present Tense'),
(10, 206, 'asdfasdf'),
(11, 206, 'asdfasdf'),
(12, 206, 'wercsdfsdf'),
(13, 206, 'wercsdfsdf'),
(15, 708, 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `definitions`
--

CREATE TABLE `definitions` (
  `ID` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `definition` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `definitions`
--

INSERT INTO `definitions` (`ID`, `did`, `definition`, `type`) VALUES
(7, 3, 'hahahahhahsdfacwefavsdfabsdsfa', 0),
(8, 4, 'def 1', 0),
(10, 5, 'Verb is an animal that can fly', 0),
(11, 5, 'Verbs sometimes cant fly', 0),
(12, 5, 'asdf', 0),
(13, 7, 'Verbs are action words. Their main usage is simple to remember.', 0),
(14, 7, 'Add S when talking about Singular Nouns (he, she, it, everyone, everybody, no one, nobody, either, neither, someone, somebody, anyone, anybody)', 0),
(15, 5, 'hhdkshakdhjkas', 0),
(16, 6, 'Data', 0),
(17, 6, 'asdf', 0),
(18, 6, 'asdf', 0),
(19, 6, 'asdfasdgasdgg', 0),
(20, 6, 'asdfasdfasdf', 0),
(21, 6, 'asdfgasd', 0),
(22, 6, 'Verb is an animal that can Verb is an animal that can flyVerb is an animal that can flyVerb is an animal that can flyVerb is an animal that can flyVerb is an animal that can flyVerb is an animal that can flyVerb is an animal that can fly', 0),
(23, 23, 'haha', 0),
(37, 23, 'harry.png', 1),
(38, 23, 'harry.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `eadd` varchar(255) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`eadd`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('sample@gmail.com', '5bed83f48a3e6', 0, 1, 0, 1, '2018-11-15 14:35:32'),
('tryuser@gmail.com', '5bed83f48a3e6', 0, 1, 0, 1, '2018-11-16 11:10:44'),
('sample@gmail.com', '5bed83f48a3e6', 0, 1, 0, 1, '2018-11-15 14:35:32'),
('tryuser@gmail.com', '5bed83f48a3e6', 0, 1, 0, 1, '2018-11-16 11:10:44'),
('sample@gmail.com', '5bf12563a938f', 0, 1, 0, 1, '2019-01-11 01:54:05'),
('sample@gmail.com', '5bf4a8f11ba6b', 0, 1, 0, 1, '2019-01-11 02:20:43'),
('sample@gmail.com', '5bee060ca38f8', 1, 3, 1, 2, '2019-01-11 02:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `listName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `fid`, `listName`) VALUES
(1, 5, 'Waley'),
(2, 5, 'hahaha'),
(3, 5, 'haasdfasdf'),
(4, 10, 'haha'),
(5, 10, 'sadfsdf'),
(6, 10, 'sadfsdf'),
(7, 10, 'asdfgasdfasdf'),
(8, 12, 'ahfsdfg'),
(9, 11, 'asdfasdf'),
(10, 12, 'xxzXz'),
(11, 13, 'Examples: â€¢	Taylor writes her original lyrics. â€¢	Harry dreams of being a wizard. â€¢	She wants to marry you. â€¢	Nobody cares for your Facebook status. â€¢	Everyone knows this is the best reviewer'),
(12, 16, 'hahaha'),
(13, 17, 'asdfasdf'),
(14, 18, 'asdfasdf'),
(15, 19, 'asdfasdf'),
(16, 21, 'asdfasdf'),
(17, 23, 'waley eh'),
(18, 23, 'wahahaha'),
(19, 23, 'wahahaha'),
(20, 23, 'asdasdasd'),
(21, 23, 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `qid` varchar(255) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(1, '5bed840a24fa5', 'aa', '5bed840a3ea8f'),
(2, '5bed840a24fa5', 'bb', '5bed840a3ea98'),
(3, '5bed840a24fa5', 'cc', '5bed840a3ea99'),
(4, '5bed840a24fa5', 'dd', '5bed840a3ea9a'),
(5, '5bed840a24fa5', 'ee', '5bed840a3ea9c'),
(6, '5bee06a1cf194', '1.	After the straight exam, I felt too exhausted and famished to eat my favourite foods.', '5bee06a1e76df'),
(7, '5bee06a1cf194', '2.	I could eat a horse, I am famish now.', '5bee06a1e76e7'),
(8, '5bee06a1cf194', '3.	I famished my stomach next time you treat me to a meal out.', '5bee06a1e76e8'),
(9, '5bee06a1cf194', '4.	I will bring lots of pizza, thatâ€™s a famish.', '5bee06a1e76ea'),
(10, '5bee06a1cf194', 'none of the above', '5bee06a1e76eb'),
(11, '5bee06a254d9a', '1.	must', '5bee06a2621c6'),
(12, '5bee06a254d9a', '2.	has to', '5bee06a2621cd'),
(13, '5bee06a254d9a', '3.	could', '5bee06a2621cf'),
(14, '5bee06a254d9a', '4.	would', '5bee06a2621d0'),
(15, '5bee06a254d9a', 'none of the above', '5bee06a2621d1'),
(16, '5bee06a2b5e76', '1.	search', '5bee06a2be09f'),
(17, '5bee06a2b5e76', '2.	to search', '5bee06a2be0a7'),
(18, '5bee06a2b5e76', '3.	searching', '5bee06a2be0a9'),
(19, '5bee06a2b5e76', '4.	for searching', '5bee06a2be0aa'),
(20, '5bee06a2b5e76', 'none of the above', '5bee06a2be0ab'),
(21, '5bf1256cd9bbf', 'asd', '5bf1256ce9dee'),
(22, '5bf1256cd9bbf', 'asd', '5bf1256ce9df9'),
(23, '5bf1256cd9bbf', 'asd', '5bf1256ce9dfe'),
(24, '5bf1256cd9bbf', 'asd', '5bf1256ce9dff'),
(25, '5bf1256cd9bbf', 'asd', '5bf1256ce9e00'),
(26, '5bf4a8fd2609c', 'is', '5bf4a8fd36ecd'),
(27, '5bf4a8fd2609c', 'it', '5bf4a8fd36ed6'),
(28, '5bf4a8fd2609c', 'not', '5bf4a8fd36ed7'),
(29, '5bf4a8fd2609c', 'working', '5bf4a8fd36ed8'),
(30, '5bf4a8fd2609c', '??!!', '5bf4a8fd36eda');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `ID` int(11) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `explanation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`ID`, `eid`, `qid`, `qns`, `choice`, `sn`, `explanation`) VALUES
(26, '5bed83f48a3e6', '5bed840a24fa5 ', 'Data is null', 4, 1, 'ff'),
(27, '5bee060ca38f8', '5bee06a1cf194 ', 'Which sentence uses â€œfamishâ€ correctly?', 4, 1, 'The right answer is A'),
(28, '5bee060ca38f8', '5bee06a254d9a ', 'Priscila _______ rather not invest her savings in the stock market.', 4, 2, 'The right answer is D'),
(29, '5bee060ca38f8', '5bee06a2b5e76 ', '3. Did you have any problem ______ our house?', 4, 3, 'The right answer is C'),
(30, '5bf12563a938f', '5bf1256cd9bbf ', 'asd', 4, 1, 'asd'),
(31, '5bf4a8f11ba6b', '5bf4a8fd2609c ', 'why', 4, 1, 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `timer` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `timer`, `date`, `rid`) VALUES
('5bee060ca38f8', 'Understanding Verbs - Their Forms And Usage', 1, 0, 3, 3, '2018-11-18 07:48:50', 206),
('5bf4a8f11ba6b', 'Why', 1, 0, 1, 1, '2018-11-21 00:38:09', 708),
('5bed83f48a3e6', 'Random', 1, 0, 1, 1, '2018-11-15 14:34:28', 713),
('5bf12563a938f', 'President', 1, 0, 1, 5, '2018-11-18 08:40:03', 998);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `eadd` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `eadd`, `score`, `time`) VALUES
(2, 'thomaspajarillaga@gmail.com', 9, '2018-11-01 16:44:26'),
(3, 'sample@gmail.com', 16, '2019-01-11 02:22:10'),
(5, 'tryuser@gmail.com', 0, '2018-11-21 01:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `topic` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`topic`, `id`) VALUES
('Understanding Verbs â€“ Their Forms And Usage', 206),
('Why', 708),
('Random', 713),
('President', 998);

-- --------------------------------------------------------

--
-- Table structure for table `score_graph`
--

CREATE TABLE `score_graph` (
  `eadd` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score_graph`
--

INSERT INTO `score_graph` (`eadd`, `category`, `score`, `date`) VALUES
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('sample@gmail.com', 'English', 1, '2018-10-14 01:47:21'),
('sample@gmail.com', 'Sample', 1, '2018-10-17 12:38:58'),
('sample@gmail.com', 'Sample', 1, '2018-10-17 12:39:03'),
('sample@gmail.com', 'English', 3, '2018-10-17 12:39:20'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('sample@gmail.com', 'Data', 1, '2018-10-19 10:23:18'),
('sample@gmail.com', 'Data', 1, '2018-10-19 10:23:18'),
('sample@gmail.com', 'Traffic Sign', 0, '2018-10-21 05:13:43'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:21'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:28'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:23:36'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:28'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:28'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:41:25'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:41:25'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:41:25'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:19:15'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:20:45'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:21:10'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:23:49'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:24:35'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:25:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:29:20'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 10:29:32'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:29:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:29:56'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:30:45'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 10:36:34'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:38:09'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:39:37'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:39:47'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:42:24'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:52:13'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 10:52:23'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:52:49'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:52:55'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:53:04'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:54:02'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:54:24'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:54:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:56:12'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:01:03'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:01:30'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:01:56'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:02:07'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:03:00'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:04:04'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:04:15'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:06:22'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:09:07'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:10:05'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:10:56'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:14:57'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:08:14'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:08:23'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:08:31'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:08:48'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:14:26'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:20:21'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:23:17'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:23:55'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 12:25:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:25:50'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:33:43'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:34:03'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:36:18'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:36:26'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:38:32'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:40:01'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:36:26'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:41:43'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:42:11'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:42:16'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:44:57'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:45:56'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:46:32'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:46:38'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:47:13'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:48:31'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:00'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:05'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:10'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:15'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:21'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 12:56:26'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:37'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 12:57:10'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 13:27:23'),
('thomaspajarillaga@gmail.com', 'Benedict', 1, '2018-11-01 16:41:11'),
('thomaspajarillaga@gmail.com', 'Timer', 0, '2018-11-01 16:41:16'),
('thomaspajarillaga@gmail.com', 'Tester', 3, '2018-11-01 16:44:25'),
('sample@gmail.com', 'Tester', 3, '2018-11-02 03:29:03'),
('sample@gmail.com', 'Tester', 1, '2018-11-14 00:25:18'),
('sample@gmail.com', 'Benedict', 0, '2018-11-14 00:25:30'),
('sample@gmail.com', 'Tester', 0, '2018-11-14 00:25:53'),
('sample@gmail.com', 'Tester', 1, '2018-11-14 00:36:35'),
('sample@gmail.com', 'Tester', 2, '2018-11-15 11:53:31'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:03:03'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:15:45'),
('sample@gmail.com', 'Random', 1, '2018-11-15 12:18:06'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:18:28'),
('sample@gmail.com', 'Random', 0, '2018-11-15 12:24:16'),
('sample@gmail.com', 'Random', 2, '2018-11-15 12:24:30'),
('sample@gmail.com', 'Random', 1, '2018-11-15 12:26:41'),
('sample@gmail.com', 'Random', 1, '2018-11-15 12:27:07'),
('sample@gmail.com', 'Random', 2, '2018-11-15 12:27:28'),
('sample@gmail.com', 'Random', 0, '2018-11-15 12:27:44'),
('sample@gmail.com', 'Random', 2, '2018-11-15 12:27:58'),
('sample@gmail.com', 'Tester', 1, '2018-11-15 12:30:52'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:31:08'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:36:59'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:44:21'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:44:35'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:31:08'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:46:56'),
('sample@gmail.com', 'Random', 1, '2018-11-15 13:04:49'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:05:03'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:05:16'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:12:13'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:12:31'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:23:40'),
('sample@gmail.com', 'Random', 1, '2018-11-15 13:24:34'),
('sample@gmail.com', 'Watata', 0, '2018-11-15 13:38:52'),
('sample@gmail.com', 'Test 1', 0, '2018-11-15 14:34:03'),
('sample@gmail.com', 'Random', 0, '2018-11-15 14:35:07'),
('sample@gmail.com', 'Random', 0, '2018-11-15 14:35:32'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 6, '2018-11-16 10:52:59'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-16 10:57:38'),
('tryuser@gmail.com', 'Random', 0, '2018-11-16 10:57:50'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-16 10:58:52'),
('tryuser@gmail.com', 'Random', 1, '2018-11-16 10:59:48'),
('tryuser@gmail.com', 'Random', 0, '2018-11-16 11:10:44'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 03:56:56'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 3, '2018-11-17 04:05:48'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 04:06:14'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:21:57'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:22:12'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 04:22:28'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:24:42'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:25:00'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:28:25'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:28:50'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:47:44'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:50:56'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:52:19'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:52:26'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:52:57'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:56:23'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:07:47'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:12:59'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:14:09'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:14:21'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:14:47'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:19:13'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:24:17'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:24:30'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:26:17'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:28:17'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:28:39'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:29:43'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 3, '2018-11-17 05:29:59'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:35:07'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:37:44'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:39:15'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 4, '2018-11-17 05:41:22'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:48:42'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:48:54'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:49:06'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-18 07:59:13'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:11:30'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-18 08:15:59'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:29:33'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:30:11'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:32:15'),
('sample@gmail.com', 'President', 0, '2018-11-18 08:40:25'),
('sample@gmail.com', 'President', 0, '2018-11-18 08:40:31'),
('sample@gmail.com', 'Why', 0, '2018-11-21 00:39:14'),
('sample@gmail.com', 'Why', 0, '2018-11-21 00:39:19'),
('sample@gmail.com', 'President', 0, '2018-11-21 00:37:48'),
('sample@gmail.com', 'Why', 0, '2018-11-21 01:36:44'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:36:56'),
('sample@gmail.com', 'Why', 0, '2018-11-21 01:38:08'),
('sample@gmail.com', 'President', 0, '2018-11-21 01:38:12'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:38:20'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:38:55'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:39:19'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:40:50'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:41:16'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:41:50'),
('sample@gmail.com', 'Why', 0, '2018-11-21 01:42:45'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:42:56'),
('sample@gmail.com', 'Why', 1, '2018-11-21 01:44:21'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:48:09'),
('sample@gmail.com', 'President', 0, '2018-11-21 01:48:17'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:48:27'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:49:09'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:49:19'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:51:05'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:51:12'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:56:04'),
('sample@gmail.com', 'President', 0, '2018-11-21 01:48:17'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:57:22'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 2, '2018-11-21 01:57:29'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:57:40'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:57:46'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:00:39'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:01:06'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:02:24'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:03:05'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:07:03'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:07:30'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:08:14'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:13:11'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:16:20'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:16:33'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:16:52'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:18:04'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:18:11'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:18:32'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:18:42'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('sample@gmail.com', 'English', 1, '2018-10-14 01:47:21'),
('sample@gmail.com', 'Sample', 1, '2018-10-17 12:38:58'),
('sample@gmail.com', 'Sample', 1, '2018-10-17 12:39:03'),
('sample@gmail.com', 'English', 3, '2018-10-17 12:39:20'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('sample@gmail.com', 'Data', 1, '2018-10-19 10:23:18'),
('sample@gmail.com', 'Data', 1, '2018-10-19 10:23:18'),
('sample@gmail.com', 'Traffic Sign', 0, '2018-10-21 05:13:43'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:21'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:28'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:23:36'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:28'),
('sample@gmail.com', 'Benedict', 0, '2018-10-21 09:10:28'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('', '', 0, '0000-00-00 00:00:00'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:41:25'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:41:25'),
('sample@gmail.com', 'Timer', 0, '2018-10-21 09:41:25'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:19:15'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:20:45'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:21:10'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:23:49'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:24:35'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:25:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:29:20'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 10:29:32'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:29:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:29:56'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:30:45'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 10:36:34'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:38:09'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:39:37'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:39:47'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:42:24'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:52:13'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 10:52:23'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 10:52:49'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:52:55'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:53:04'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:54:02'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:54:24'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:54:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 10:56:12'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:01:03'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:01:30'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:01:56'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:02:07'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:03:00'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:04:04'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:04:15'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:06:22'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:09:07'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 11:10:05'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:10:56'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 11:14:57'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:08:14'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:08:23'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:08:31'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:08:48'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:14:26'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:20:21'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:23:17'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:23:55'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 12:25:44'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:25:50'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:33:43'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:34:03'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:36:18'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:36:26'),
('sample@gmail.com', 'Timer', 0, '2018-11-01 12:38:32'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:40:01'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:36:26'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:41:43'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:42:11'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:42:16'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:44:57'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:45:56'),
('sample@gmail.com', 'Timer', 1, '2018-11-01 12:46:32'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:46:38'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:47:13'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:48:31'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:00'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:05'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:10'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:15'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:21'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 12:56:26'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 12:56:37'),
('sample@gmail.com', 'Benedict', 1, '2018-11-01 12:57:10'),
('sample@gmail.com', 'Benedict', 0, '2018-11-01 13:27:23'),
('thomaspajarillaga@gmail.com', 'Benedict', 1, '2018-11-01 16:41:11'),
('thomaspajarillaga@gmail.com', 'Timer', 0, '2018-11-01 16:41:16'),
('thomaspajarillaga@gmail.com', 'Tester', 3, '2018-11-01 16:44:25'),
('sample@gmail.com', 'Tester', 3, '2018-11-02 03:29:03'),
('sample@gmail.com', 'Tester', 1, '2018-11-14 00:25:18'),
('sample@gmail.com', 'Benedict', 0, '2018-11-14 00:25:30'),
('sample@gmail.com', 'Tester', 0, '2018-11-14 00:25:53'),
('sample@gmail.com', 'Tester', 1, '2018-11-14 00:36:35'),
('sample@gmail.com', 'Tester', 2, '2018-11-15 11:53:31'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:03:03'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:15:45'),
('sample@gmail.com', 'Random', 1, '2018-11-15 12:18:06'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:18:28'),
('sample@gmail.com', 'Random', 0, '2018-11-15 12:24:16'),
('sample@gmail.com', 'Random', 2, '2018-11-15 12:24:30'),
('sample@gmail.com', 'Random', 1, '2018-11-15 12:26:41'),
('sample@gmail.com', 'Random', 1, '2018-11-15 12:27:07'),
('sample@gmail.com', 'Random', 2, '2018-11-15 12:27:28'),
('sample@gmail.com', 'Random', 0, '2018-11-15 12:27:44'),
('sample@gmail.com', 'Random', 2, '2018-11-15 12:27:58'),
('sample@gmail.com', 'Tester', 1, '2018-11-15 12:30:52'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:31:08'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:36:59'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:44:21'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:44:35'),
('sample@gmail.com', 'Tester', 0, '2018-11-15 12:31:08'),
('sample@gmail.com', 'Random V2', 0, '2018-11-15 12:46:56'),
('sample@gmail.com', 'Random', 1, '2018-11-15 13:04:49'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:05:03'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:05:16'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:12:13'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:12:31'),
('sample@gmail.com', 'Random', 0, '2018-11-15 13:23:40'),
('sample@gmail.com', 'Random', 1, '2018-11-15 13:24:34'),
('sample@gmail.com', 'Watata', 0, '2018-11-15 13:38:52'),
('sample@gmail.com', 'Test 1', 0, '2018-11-15 14:34:03'),
('sample@gmail.com', 'Random', 0, '2018-11-15 14:35:07'),
('sample@gmail.com', 'Random', 0, '2018-11-15 14:35:32'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 6, '2018-11-16 10:52:59'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-16 10:57:38'),
('tryuser@gmail.com', 'Random', 0, '2018-11-16 10:57:50'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-16 10:58:52'),
('tryuser@gmail.com', 'Random', 1, '2018-11-16 10:59:48'),
('tryuser@gmail.com', 'Random', 0, '2018-11-16 11:10:44'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 03:56:56'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 3, '2018-11-17 04:05:48'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 04:06:14'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:21:57'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:22:12'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 04:22:28'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:24:42'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:25:00'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:28:25'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:28:50'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:47:44'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:50:56'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:52:19'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:52:26'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:52:57'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 04:56:23'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:07:47'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:12:59'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:14:09'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:14:21'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:14:47'),
('tryuser@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-16 11:11:10'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:19:13'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:24:17'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:24:30'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:26:17'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:28:17'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:28:39'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:29:43'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 3, '2018-11-17 05:29:59'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:35:07'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 0, '2018-11-17 05:37:44'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:39:15'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 4, '2018-11-17 05:41:22'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 2, '2018-11-17 05:48:42'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:48:54'),
('sample@gmail.com', 'Understanding Verbs â€“ Their Forms And Usage', 1, '2018-11-17 05:49:06'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-18 07:59:13'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:11:30'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-18 08:15:59'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:29:33'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:30:11'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-18 08:32:15'),
('sample@gmail.com', 'President', 0, '2018-11-18 08:40:25'),
('sample@gmail.com', 'President', 0, '2018-11-18 08:40:31'),
('sample@gmail.com', 'Why', 0, '2018-11-21 00:39:14'),
('sample@gmail.com', 'Why', 0, '2018-11-21 00:39:19'),
('sample@gmail.com', 'President', 0, '2018-11-21 00:37:48'),
('sample@gmail.com', 'Why', 0, '2018-11-21 01:36:44'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:36:56'),
('sample@gmail.com', 'Why', 0, '2018-11-21 01:38:08'),
('sample@gmail.com', 'President', 0, '2018-11-21 01:38:12'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:38:20'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:38:55'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:39:19'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:40:50'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:41:16'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:41:50'),
('sample@gmail.com', 'Why', 0, '2018-11-21 01:42:45'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:42:56'),
('sample@gmail.com', 'Why', 1, '2018-11-21 01:44:21'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:48:09'),
('sample@gmail.com', 'President', 0, '2018-11-21 01:48:17'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:48:27'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:49:09'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:49:19'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:51:05'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 01:51:12'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:56:04'),
('sample@gmail.com', 'President', 0, '2018-11-21 01:48:17'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:57:22'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 2, '2018-11-21 01:57:29'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:57:40'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 01:57:46'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:00:39'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:01:06'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:02:24'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:03:05'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:07:03'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:07:30'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:08:14'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:13:11'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:16:20'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:16:33'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:16:52'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:18:04'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2018-11-21 02:18:11'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:18:32'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 0, '2018-11-21 02:18:42'),
('sample@gmail.com', 'Why', 0, '2018-12-14 14:46:19'),
('sample@gmail.com', 'Why', 0, '2018-12-23 07:44:41'),
('sample@gmail.com', 'Why', 0, '2019-01-11 01:53:24'),
('sample@gmail.com', 'Why', 0, '2019-01-11 01:53:53'),
('sample@gmail.com', 'President', 0, '2019-01-11 01:54:05'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2019-01-11 01:54:39'),
('sample@gmail.com', 'Why', 0, '2019-01-11 02:20:43'),
('sample@gmail.com', 'Understanding Verbs - Their Forms And Usage', 1, '2019-01-11 02:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` int(11) NOT NULL,
  `graphics` int(11) NOT NULL,
  `website` int(11) NOT NULL,
  `exams` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `thoughts` varchar(255) NOT NULL,
  `eadd` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `graphics`, `website`, `exams`, `rate`, `thoughts`, `eadd`, `date`) VALUES
(2, 2, 5, 4, 4, 'It was easy', 'admin@gmail.com', '2018-10-04 09:06:38'),
(3, 1, 2, 3, 2, 'Putang ina nyo ang pangit ng system nyo', 'sample@gmail.com', '2018-12-21 04:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `fid`, `term`) VALUES
(12, 14, 'sadf'),
(13, 1, 'asdasd'),
(14, 1, 'asdf'),
(16, 3, 'ggness'),
(17, 16, ''),
(18, 16, 'basic'),
(19, 4, 'dada'),
(20, 4, 'hahaha'),
(21, 3, 'hahahaha'),
(22, 5, 'Verb'),
(23, 6, 'Verbs are action words. Their main usage is simple to remember.'),
(24, 7, 'Present Tense'),
(25, 6, 'haha'),
(26, 15, 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(16) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=male, 1=female',
  `civil` varchar(255) NOT NULL,
  `atype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=user, 1=admin',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=active, 1=banned',
  `eadd` varchar(255) NOT NULL,
  `DoB` date NOT NULL COMMENT 'Date  of Birth',
  `DoR` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Registration',
  `img` varchar(255) NOT NULL,
  `contacts` varchar(50) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `pw`, `fname`, `mname`, `lname`, `gender`, `civil`, `atype`, `status`, `eadd`, `DoB`, `DoR`, `img`, `contacts`, `addr`) VALUES
(15, 'Benedict', 'aaac709a01617c4c0e855f15d1b13443', 'Benedict', 'Earle', 'Gabriel', 0, 'Single', 1, 0, 'thomaspanget@gmail.com', '1998-09-08', '2019-01-10 15:40:37', 'anonymous.jpg', '09253083283', 'Mabini Street'),
(16, 'Earle', '21232f297a57a5a743894a0e4a801fc3', 'Earle', 'Benedict', 'Gabriel', 1, 'Single', 1, 0, 'thomaspajarillaga@gmail.com', '1998-09-08', '2019-01-11 01:49:52', 'lawrence.jpg', '09253083283', 'Mabini Street'),
(17, 'sample', 'ee11cbb19052e40b07aac0ca060c23ee', 'hehe', 'hehe', 'heheh', 0, 'Single', 0, 0, 'sample@gmail.com', '1998-09-08', '2019-01-11 01:49:41', 'Tenchowiz.jpg', '123', 'sdf'),
(18, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 'admin', 1, '', 1, 0, 'admin@gmail.com', '1998-09-08', '2019-01-11 01:46:22', 'Techno Tarp.jpg', '123', ''),
(19, 'z3', '289f87f56a80de4065ad31e32fe66648', 'z', '3', 'd4', 0, 'Single', 0, 1, 'z3d4@gmail.com', '1999-09-08', '2019-01-10 15:35:16', '1264da4a3f18207dc22592102abae40d.jpg', '09217589622', 'Sa kanto lang bess'),
(21, 'asdf', '912ec803b2ce49e4a541068d495ab570', 'asdf', 'asdf', 'asdf', 0, 'Single', 0, 0, 'asdfW@asdf.com', '1999-09-08', '2018-10-02 09:52:49', '', '123123', 'asdf'),
(22, 'ffff', 'ece926d8c0356205276a45266d361161', 'asdfasdf', 'asdfasdf', 'asdfasdf', 0, 'Single', 0, 1, 'ffff@ffff.com', '1999-09-08', '2019-01-10 15:35:23', '', '123', 'asdfasdf'),
(23, 'chadora000', 'dd708d1d139112def103fc5fae02752f', 'kevin', 'pajarillaga', 'magtalas', 0, 'Single', 0, 0, 'kev_magatalas@yahoo.com', '1998-09-27', '2018-10-17 13:17:06', '', '09752093747', 'magsaysay bayombong nueva vizcaya'),
(24, 'Boljak', 'ee11cbb19052e40b07aac0ca060c23ee', 'asdfasdf', 'asdfasdf', 'sadfasdf', 0, '', 1, 1, 'bj@gmail.com', '1000-09-02', '2019-01-10 15:35:26', '', '123123', ''),
(25, 'asdfasdf', '6a204bd89f3c8348afd5c77c717a097a', 'asdf sadf ', '', 'asdf', 0, 'Single', 0, 0, 'asdf@asdf.com', '1399-09-02', '2018-10-21 04:19:16', '', '123', 'asdf'),
(26, 'tryuser', '202cb962ac59075b964b07152d234b70', 'Christian Joseph', 'N', 'Aquino', 0, 'Single', 0, 1, 'tryuser@gmail.com', '1992-12-01', '2019-01-10 15:35:34', '20787854-a711-4220-a106-251dc670cd76.jpg', '092132131', 'Aduas'),
(27, 'tryadmin', '202cb962ac59075b964b07152d234b70', 'CJ', 'N', 'Aquino', 0, '', 1, 1, 'tryadmin@gmail.com', '2018-11-22', '2019-01-10 15:35:29', '0d9d54cfccb65d5ef712ad04b3c851e2.jpg', '0921321312', ''),
(28, 'Kimmy', '78a6d0196786eab5feea8b32094cce6e', 'kimmy', '', 'sarmiento', 1, 'Married', 0, 0, 'kimmy@gmail.com', '1999-09-08', '2018-11-18 07:44:18', 'gg.png', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_comment`
--
ALTER TABLE `announcement_comment`
  ADD PRIMARY KEY (`AC_ID`);

--
-- Indexes for table `beta_answers`
--
ALTER TABLE `beta_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beta_questions`
--
ALTER TABLE `beta_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `definitions`
--
ALTER TABLE `definitions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
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
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `announcement_comment`
--
ALTER TABLE `announcement_comment`
  MODIFY `AC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `beta_answers`
--
ALTER TABLE `beta_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beta_questions`
--
ALTER TABLE `beta_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `definitions`
--
ALTER TABLE `definitions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
