-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 07:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookinfos`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(27, 28, 18, 'To Paradise Hanya', '1649087409_9781529077476.webp', '&lt;p&gt;&lt;strong&gt;Author&lt;/strong&gt; : &lt;strong&gt;Hanya Yanagihara&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Description&lt;/p&gt;&lt;p&gt;&lt;strong&gt;THE NUMBER ONE &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;SUNDAY TIMES&lt;/strong&gt;&lt;/i&gt;&lt;strong&gt; BESTSELLER&lt;/strong&gt;&lt;br&gt;&lt;br&gt;&lt;strong&gt;\'After the painfully affecting [&lt;/strong&gt; &lt;i&gt;&lt;strong&gt;A Little Life&lt;/strong&gt; &lt;/i&gt;&lt;strong&gt;]&lt;/strong&gt; &lt;i&gt;&lt;strong&gt;To Paradise&lt;/strong&gt; &lt;/i&gt;&lt;strong&gt;gives us three stories far apart in space and time but each unique in their power to summon the joy and complexity of love, the pain of loss. I\'m not sure I\'ve ever missed the world of a book as much as I miss &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;To Paradise&lt;/strong&gt;&lt;/i&gt;&lt;strong&gt; now I\'ve left it . . . It\'s rare that you get the opportunity to review a masterpiece, but &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;To Paradise&lt;/strong&gt;&lt;/i&gt;&lt;strong&gt; , definitively, is one.&lt;/strong&gt; &lt;strong&gt;\' - &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;Observer&lt;/strong&gt;&lt;/i&gt;&lt;br&gt;&lt;br&gt;&lt;strong&gt;\'Awe-inspiring . . . The characters are so well drawn and the plot so well paced, I couldn\'t put it down.\' - &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;Daily Telegraph&lt;/strong&gt;&lt;/i&gt;&lt;/p&gt;', 1, '2022-04-04 21:50:09'),
(28, 28, 19, 'The Books of Jacob', '1649087690_9781910695593.jpg', '&lt;p&gt;&lt;strong&gt;Author&lt;/strong&gt; : &lt;a href=&quot;https://uk.bookshop.org/contributors/olga-tokarczuk&quot;&gt;&lt;strong&gt;Olga Tokarczuk &lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;(Author) &lt;/strong&gt;&lt;a href=&quot;https://uk.bookshop.org/contributors/jennifer-croft&quot;&gt;&lt;strong&gt;Jennifer Croft &lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;(Translator)&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Description&lt;/p&gt;&lt;p&gt;In the mid-eighteenth century, as new ideas begin to sweep the continent, a young Jew of mysterious origins arrives in a village in Poland. Before long, he has changed not only his name but his persona; visited by what seem to be ecstatic experiences, Jacob Frank casts a charismatic spell that attracts an increasingly fervent following. In the decade to come, Frank will traverse the Hapsburg and Ottoman empires, throngs of disciples in his thrall as he reinvents himself again and again, converts to Islam and then Catholicism, is pilloried as a heretic and revered as the Messiah, and wreaks havoc on the conventional order, Jewish and Christian alike, with scandalous rumours of his sect\'s secret rituals and the spread of his increasingly iconoclastic beliefs. In &lt;i&gt;The Books of Jacob&lt;/i&gt; , her masterpiece, 2018 Nobel Prize in Literature laureate Olga Tokarczuk writes the story of Frank through the perspectives of his contemporaries, capturing Enlightenment Europe on the cusp of precipitous change, searching for certainty and longing for transcendence.&lt;/p&gt;', 1, '2022-04-04 21:54:50'),
(29, 28, 20, 'The Island of Missing Trees: Shortlisted for the Costa Novel Of The Year Award', '1649087806_9780241434994.jpg', '&lt;p&gt;&lt;strong&gt;Author&lt;/strong&gt; : &lt;strong&gt;Elif Shafak&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Description&lt;/p&gt;&lt;p&gt;&lt;strong&gt;LONGLISTED FOR THE WOMEN\'S PRIZE 2022&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;A REESE WITHERSPOON BOOK CLUB PICK&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;SHORTLISTED FOR THE COSTA NOVEL AWARD 2021&lt;/strong&gt;&lt;br&gt;&lt;br&gt;&lt;strong&gt;A rich, magical novel from the Booker-shortlisted author of &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;10 Minutes 38 Seconds in this Strange World &lt;/strong&gt;&lt;/i&gt;&lt;strong&gt;- now a top ten &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;Sunday Times &lt;/strong&gt;&lt;/i&gt;&lt;strong&gt;bestseller&lt;/strong&gt;&lt;br&gt;&lt;br&gt;It is 1974 on the island of Cyprus. Two teenagers, from opposite sides of a divided land, meet at a tavern in the city they both call home. The tavern is the only place that Kostas, who is Greek and Christian, and Defne, who is Turkish and Muslim, can meet, in secret, hidden beneath the blackened beams from which hang garlands of garlic, chilli peppers and wild herbs. This is where one can find the best food in town, the best music, the best wine. But there is something else to the place: it makes one forget, even if for just a few hours, the world outside and its immoderate sorrows.&lt;br&gt;&lt;br&gt;In the centre of the tavern, growing through a cavity in the roof, is a fig tree. This tree will witness their hushed, happy meetings, their silent, surreptitious departures; and the tree will be there when the war breaks out, when the capital is reduced to rubble, when the teenagers vanish and break apart.&lt;br&gt;&lt;br&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;', 1, '2022-04-04 21:56:46'),
(30, 28, 20, 'No One Is Talking About This', '1649087950_9781526629777.webp', '&lt;p&gt;&lt;strong&gt;Author&lt;/strong&gt; : &lt;strong&gt;Patricia Lockwood&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Description&lt;/p&gt;&lt;p&gt;\'A masterpiece\' Guardian \'I really admire and love this book\' Sally Rooney \'An intellectual and emotional rollercoaster\' Daily Mail \'I can\'t remember the last time I laughed so much reading a book\' David Sedaris \'It moved me to tears\' Elizabeth Day&lt;/p&gt;&lt;p&gt;THE ONLY BOOK SHORTLISTED FOR BOTH THE BOOKER PRIZE AND THE WOMEN\'S PRIZE FOR FICTION 2021 ______________________________________________&lt;/p&gt;&lt;p&gt;This is a story about a life lived in two halves.&lt;/p&gt;&lt;p&gt;It\'s about what happens when real life collides with the increasing absurdity of a world accessed through a screen.&lt;/p&gt;&lt;p&gt;It\'s about living in world that contains both an abundance of proof that there is goodness, empathy, and justice in the universe, and a deluge of evidence to the contrary.&lt;/p&gt;&lt;p&gt;It\'s a meditation on love, language and human connection from one of the most original voices of our time.&lt;/p&gt;', 1, '2022-04-04 21:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(18, 'Adventure', ''),
(19, 'Comic', ''),
(20, 'Historical', ''),
(21, 'Thriller', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(28, 1, 'Rithesh Kumar Ghosh', 'demoemail@email.com', '$2y$10$.YWYkjc3T9JTciciJX1Cn.Cie6ETENWh7N6g9PQ5f5t8K/4vvktEu', '2022-01-16 00:17:56'),
(29, 0, 'demo', 'demo123@gmail.com', '$2y$10$JqCZ0e4v5tbT9DkRwf7csO8ZgJkV6H98d4N0NUFBktbxodfxgXfNe', '2022-01-16 03:28:40'),
(34, 0, 'demo2', 'demo2@gmail.com', '$2y$10$zm4ZIN9/CtpQFmDSZ1Uwq.XtGjuSZAeCxSdkUBxRk2f413kuv6T5u', '2022-04-04 17:30:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
