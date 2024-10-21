-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2024 at 07:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports', 1),
(31, 'Entertainment', 1),
(32, 'Politics', 1),
(33, 'Health', 1),
(36, 'Web Development', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(44, 'Natwar Singh writes on champion of the downtrodden Dr BR Ambedkar', 'he author of the book \'Ambedkar\', is a member of The Planning Commission, an establishment totally or almost totally lacking creativity, innovation or imagination. Professor Jadhav is a distinguished exception. He studied in the United States, obtaining PhD in Economics. The last worthwhile book on Ambedkar was written by Dr. Dhananjay Keer. It was published in 1954. Dr. B.R. Ambedkar was arguably among the most brilliant Indian intellectuals of the 20th century. His life is a triumph of character over circumstances.\r\n\r\n\r\nHe,for the first thirty five years of his life was subjected to the most appalling humiliations, brutal discrimination and indignities for being an untouchable. The dice was loaded against him right from his birth.\r\n\r\nHe was born in a Mahar family on 14 April 1893. He died at the age of fifty six on 6th December 1956. He made it to the Elphiston College in Bombay. He could neither buy books nor clothes. He was lent books by one of his professors who also gave him clothes.', '32', '12 Oct, 2024', 27, '1728709077-natwar-2-5_650_032314022023.jpg'),
(45, 'Ratan Tata\'s funeral held through Parsi rituals', 'Ratan Tata, the 86-year-old industry titan and the Chairman Emeritus of Tata Group, died at Mumbai\'s Breach Candy Hospital on Wednesday. He was given a state funeral by the Maharashtra government and since he was a Parsi, his funeral took place according to the rituals followed by the community. He was later cremated in an electric crematorium.\r\n\r\nParsis do not cremate or bury their loved ones, unlike Hindus and Muslims, and they consider a human body as a gift of nature, which has to be returned. According to Zoroastrian beliefs, cremating or burying would contaminate the elements of nature - water, air and fire.', '33', '12 Oct, 2024', 27, '1728709337-ratan-tata-funeral-101359853-16x9_0.jpg'),
(46, 'Ratan Tata\'s assistant pays tribute to national icon: Goodbye, dear lighthouse', 'Shantanu Naidu, the general manager of RNT Associates and a trusted assistant to Ratan Tata, expressed his grief over the death of the business magnate and national icon.\r\n\r\nTata, who served as chairman emeritus of Tata Sons, died at 86, leaving behind a legacy that shaped the Indian business landscape.\r\n\r\nNaidu, in a post on LinkedIn, paid tribute to his mentor: “The hole that this friendship has now left with me, I will spend the rest of my life trying to fill. Grief is the price to pay for love. Goodbye, my dear lighthouse.”', '31', '12 Oct, 2024', 27, '1728709681-shantanu-naidu-paid-tribute-to-ratan-tata-in-a-linkedin-post-102027686-16x9_0.jpg'),
(47, 'Title is title', '                    adadadada                ', '34', '12 Oct, 2024', 39, '1728710124-9ee02bbccf2489871c3e9bb5bad4d596.jpg'),
(48, 'Grid System New Changes In Bs5', '                    &#60;div class=&#34;container&#34;&#62;&#10;  &#60;div class=&#34;row&#34;&#62;&#10;    &#60;div class=&#34;col align-self-start&#34;&#62;&#10;      One of three columns&#10;    &#60;/div&#62;&#10;    &#60;div class=&#34;col align-self-center&#34;&#62;&#10;      One of three columns&#10;    &#60;/div&#62;&#10;    &#60;div class=&#34;col align-self-end&#34;&#62;&#10;      One of three columns&#10;    &#60;/div&#62;&#10;  &#60;/div&#62;&#10;&#60;/div&#62;                ', '36', '12 Oct, 2024', 27, '1728711813-download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Breaking News 24Hrs', 'pngtree-realistic-breaking-news-label-designs-png-image_5516272-removebg-preview (1).png', '© Copyright 2024 Breking News News | Powered by Zaid Patel');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(30, 'Salman', 'Khan', 'salman', '03346657feea0490a4d4f677faa0583d', 0),
(27, 'cms', 'admin', 'cmsadmin01', '21232f297a57a5a743894a0e4a801fc3', 1),
(31, 'Anil ', 'Kapoor', 'anil', '71b9b5bc1094ee6eaeae8253e787d654', 0),
(32, 'Madhuri', 'Dixit', 'madhuri', '7ebc2c8aa51f075ccc653a0f8e86fbb4', 0),
(33, 'Amir', 'Khan', 'amir', '63eefbd45d89e8c91f24b609f7539942', 1),
(34, 'Shahid', 'Kapoor', 'shahid', 'f3224d90c778d5e456b49c75f85dd668', 1),
(35, 'Kriti', 'Sanon', 'kriti', 'f19e1368ef58fde93d78ba396f9046e3', 0),
(36, 'Kajal', 'Aggarwal', 'kajal', '7faafcbcc6456af72597bc2f3a9306b4', 0),
(39, 'Zaid', 'Patel', 'zaid', '58d4a9701cf897b87baf5bbd1f4b6f2a', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
