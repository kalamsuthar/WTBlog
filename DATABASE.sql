-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 03:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` blob,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `time_posted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `post_id`, `user_id`, `time_posted`) VALUES
(1, 0x68676867, 2, 1, '2017-04-03 11:15:35'),
(2, 0x6867686768, 2, 1, '2017-04-03 12:15:35'),
(3, 0x776f726b, 3, 1, '2017-04-02 12:15:35'),
(4, 0x776f726b, 2, 1, '2017-04-01 07:15:35'),
(5, 0x736466, 5, 1, '2017-04-04 21:50:41'),
(6, 0x736466, 5, 1, '2017-04-04 22:00:04'),
(7, 0x646664, 5, 1, '2017-04-04 22:00:17'),
(8, 0x646664, 5, 1, '2017-04-04 22:04:40'),
(9, 0x77656c636f6d65, 5, 1, '2017-04-04 22:04:51'),
(10, 0x32343233343233, 3, 1, '2017-04-04 22:13:30'),
(11, 0x77657277746572746579727479727475727475797469747972747774776869657277756568686b6873646b73686768736a6b646768736467736c686a, 3, 1, '2017-04-04 22:13:45'),
(12, 0x666473, 5, 1, '2017-04-04 22:34:09'),
(13, 0x666473, 5, 1, '2017-04-04 22:35:34'),
(14, 0x666473, 5, 1, '2017-04-04 22:35:47'),
(15, 0x666473, 5, 1, '2017-04-04 22:37:09'),
(16, 0x666473, 5, 1, '2017-04-04 22:39:21'),
(17, 0x666473, 5, 1, '2017-04-04 22:39:27'),
(18, 0x666473, 5, 1, '2017-04-04 22:43:45'),
(19, 0x666473, 5, 1, '2017-04-04 22:44:06'),
(20, 0x666473, 5, 1, '2017-04-04 22:44:11'),
(21, 0x7366, 8, 1, '2017-04-04 22:44:36'),
(22, '', 8, 1, '2017-04-04 22:44:40'),
(23, '', 8, 1, '2017-04-04 22:44:44'),
(24, '', 8, 1, '2017-04-04 22:51:08'),
(25, '', 8, 1, '2017-04-04 22:55:50'),
(26, 0x7364666764, 8, 1, '2017-04-04 22:55:56'),
(27, 0x7177, 8, 1, '2017-04-04 22:56:03'),
(28, 0x76657279206e696365, 9, 2, '2017-04-05 01:37:52'),
(29, 0x676f6f64, 8, 2, '2017-04-05 01:38:06'),
(30, 0x536f727279, 6, 1, '2017-04-05 09:23:59'),
(31, 0x4173617361, 8, 2, '2017-04-05 14:26:17'),
(32, 0x6466646667, 2, 1, NULL),
(33, 0x57656c636f6d65, 3, 1, '2017-04-12 19:45:27'),
(34, 0x776f772120617765736f6d65, 3, 1, '2017-04-21 17:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `content` blob,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `posted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `content`, `user_id`, `title`, `posted`) VALUES
(1, 0x20646673646467646667, 2, 'hello', '2017-02-09 02:12:15'),
(2, 0x20697420697320746865206265737420, 1, 'work', '2017-02-10 02:15:15'),
(3, 0x207768657265206172652075, 1, 'India', '2017-02-11 02:15:35'),
(4, 0x20736466737764666466736466, 1, 'raj', '2017-03-11 03:15:35'),
(5, 0x20696e646961206973206772656174, 1, 'india ', '2017-03-11 04:15:35'),
(6, 0x207366647366657274736673, 1, 'West', '2017-04-01 02:15:35'),
(7, 0x717765727479, 1, 'world', '2017-04-01 11:15:35'),
(8, 0x6667686766, 1, 'fgf', '2017-04-03 11:15:35'),
(9, 0x677265617420707265736964656e7420616e6420736369656e74697374206f6620496e646961, 2, 'Dr. Kalam', '2017-04-05 01:37:30'),
(10, 0x4e4153412069732061207370616365206167656e6379206f6620416d657269636120686176696e6720697473207265616368206576656e20696e2074686520636f726e6572206f6620706c616e6574, 1, 'NASA ', '2017-04-21 17:51:35');

--
-- Triggers `post`
--
DELIMITER $$
CREATE TRIGGER `comment_delete` BEFORE DELETE ON `post` FOR EACH ROW begin
delete from comment
where post_id=old.id;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `user_level` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `join_date`, `user_level`) VALUES
(1, 'kalamsuthar', '123', 'kalamsuthar@gmail.co', '2017-03-25', 1),
(2, 'praveen', 'praveen', 'sutharp80@yahoo.com', '2017-03-26', 2),
(3, 'kalam', '123', 'sdfdfs@hjghj.com', '2017-03-29', 0),
(4, 'pk', '7865', 'pk@gmail.com', '2017-04-02', 0);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `post_delete` BEFORE DELETE ON `users` FOR EACH ROW begin 
  delete from post
 where user_id=old.id;
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
