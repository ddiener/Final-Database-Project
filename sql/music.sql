-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2015 at 03:08 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumId` int(11) NOT NULL,
  `artistId` int(11) NOT NULL,
  `albumName` varchar(128) NOT NULL,
  `releaseDate` int(11) NOT NULL,
  `genreId` int(11) NOT NULL,
  `labelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumId`, `artistId`, `albumName`, `releaseDate`, `genreId`, `labelId`) VALUES
(1, 1, 'I Am... Sasha Fierce', 2008, 2, 1),
(2, 2, '25', 2015, 1, 2),
(3, 2, '21', 2011, 1, 2),
(4, 1, '4', 2011, 2, 1),
(5, 1, 'B''Day', 2006, 2, 1),
(6, 1, 'Beyonce', 2013, 2, 1),
(7, 3, 'Exclusive', 2007, 1, 3),
(8, 3, 'Fortune', 2012, 1, 4),
(9, 4, 'Rock and Roll Night Club', 2011, 4, 5),
(10, 4, 'Salad Days', 2014, 4, 5),
(11, 4, 'Another One', 2015, 4, 5),
(12, 5, 'Demon Days', 2005, 4, 6),
(13, 5, 'Plastic Beach', 2010, 4, 6),
(14, 5, 'Gorillaz', 2001, 4, 6),
(15, 6, '500 Degreez', 2002, 3, 7),
(16, 6, 'Tha Carter', 2004, 3, 7),
(17, 6, 'Tha Carter II', 2005, 3, 7),
(18, 6, 'Tha Carter III', 2008, 3, 7),
(19, 6, 'Tha Carter IV', 2011, 3, 8),
(20, 7, 'Bleach', 1989, 5, 9),
(21, 7, 'Nevermind', 1991, 5, 10),
(22, 7, 'In Utero', 1993, 5, 10),
(23, 8, 'Women and Children First', 1980, 6, 11),
(24, 8, 'Diver Down', 1982, 6, 11),
(25, 8, '1984', 1984, 6, 11),
(26, 8, '5150', 1986, 6, 11),
(27, 9, 'Dookie', 1994, 7, 12),
(28, 9, 'American Idiot', 2004, 7, 12),
(29, 9, 'Nimrod', 1997, 7, 12),
(30, 10, '...Baby One More Time', 1999, 1, 3),
(31, 10, 'Oops!... I Did It Again', 2000, 1, 3),
(32, 11, 'Yeezus', 2013, 3, 13),
(33, 11, 'Graduation', 2007, 3, 14),
(34, 11, 'College Dropout', 2004, 3, 14),
(35, 11, 'Late Registration', 2005, 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artistId` int(11) NOT NULL,
  `artistName` varchar(128) NOT NULL,
  `beginDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistId`, `artistName`, `beginDate`) VALUES
(1, 'Beyonce', 2003),
(2, 'Adele', 2008),
(3, 'Chris Brown', 2005),
(4, 'Mac Demarco', 2008),
(5, 'Gorillaz', 1998),
(6, 'Lil Wayne', 1996),
(7, 'Nirvana', 1987),
(8, 'Van Halen', 1972),
(9, 'Green Day', 1986),
(10, 'Britney Spears', 1992),
(11, 'Kanye West', 1996);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreId` int(11) NOT NULL,
  `genreName` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreId`, `genreName`, `description`) VALUES
(1, 'Pop', 'Pop music (a term that derives from "popular") is a genre of popular music that originated in its modern form in the Western world during the 1950s and 1960s, deriving from rock and roll. The terms "popular music" and "pop music" are often used interchangeably, although the former describes all music that is popular (and can include any style).'),
(2, 'R&B', 'Rhythm and blues, often abbreviated as R&B or RnB, is a genre of popular African-American music that originated in the 1940s. The term was originally used by record companies to describe recordings marketed predominantly to urban African Americans, at a time when "urbane, rocking, jazz based music with a heavy, insistent beat" was becoming more popular. In the commercial rhythm and blues music typical of the 1950s through the 1970s, the bands usually consisted of piano, one or two guitars, bass, drums, saxo'),
(3, 'Hip Hop/Rap', 'Hip hop music, also called hip-hop or rap music, is a music genre consisting of a stylized rhythmic music that commonly accompanies rapping, a rhythmic and rhyming speech that is chanted.'),
(4, 'Rock', 'Rock music is a genre of popular music that originated as "rock and roll" in the United States in the 1950s, and developed into a range of different styles in the 1960s and later, particularly in the United Kingdom and the United States. It has its roots in 1940s'' and 1950s'' rock and roll, itself heavily influenced by blues, rhythm and blues and country music. Rock music also drew strongly on a number of other genre such as electric blues and folk, and incorporated influences from jazz, classical and other'),
(5, 'Grunge', 'Grunge (sometimes referred to as the Seattle sound) is a subgenre of alternative rock that emerged during the mid-1980s in the American state of Washington, particularly in Seattle. The early grunge movement revolved around Seattle''s independent record label Sub Pop, but by the early 1990s its popularity had spread, with grunge acts in California and other parts of the U.S. building strong followings and signing major record deals.'),
(6, 'Hard Rock', 'Hard rock is a loosely defined subgenre of rock music that began in the mid-1960s, with the garage, psychedelic and blues rock movements. It is typified by a heavy use of aggressive vocals, distorted electric guitars, bass guitar, drums, and often accompanied with pianos and keyboards.'),
(7, 'Punk Rock', 'Punk rock (or simply punk) is a rock music genre that developed between 1974 and 1976 in the United States, United Kingdom, and Australia. Rooted in garage rock and other forms of what is now known as protopunk music, punk rock bands eschewed perceived excesses of mainstream 1970s rock.');

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE `label` (
  `labelId` int(11) NOT NULL,
  `labelName` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `founder` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`labelId`, `labelName`, `city`, `founder`) VALUES
(1, 'Columbia Records', 'New York', 'Doug Morris'),
(2, 'XL Recordings', 'England', 'Richard Russell'),
(3, 'Jive Records', 'New York', 'Clive Calder'),
(4, 'RCA', 'New York', 'Emile Berliner'),
(5, 'Captured track', 'Brooklyn', 'Mike Sniper'),
(6, 'Parlophone', 'Germany', 'Carl Lindstrom'),
(7, 'Cash Money', 'New Orleans', 'Bryan Birdman Williams'),
(8, 'Young Money', 'New Orleans', 'Dwayne Michael Carter'),
(9, 'Sub Pop', 'Seattle', 'Bruce Pavitt'),
(10, 'DGC', 'Santa Monica', 'David Geffen'),
(11, 'Warner Bros.', 'Burbank', 'Albert Warner'),
(12, 'Reprise', 'Hoboken', 'Frank Sinatra'),
(13, 'Def Jam Recordings', 'New York', 'Rick Rubin'),
(14, 'Roc-A-Fella Records', 'New York', 'Damon Dash');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `albumId` int(11) NOT NULL,
  `trackName` varchar(128) NOT NULL,
  `length` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`albumId`, `trackName`, `length`) VALUES
(1, 'Ave Maria', '0:03:41'),
(1, 'Broken-Hearted Girl', '0:04:37'),
(1, 'Disappear', '0:04:27'),
(1, 'Diva', '0:03:20'),
(1, 'Ego', '0:03:56'),
(1, 'Halo', '0:04:21'),
(1, 'Hello', '0:04:16'),
(1, 'If I Were a Boy', '0:04:09'),
(1, 'Radio', '0:03:38'),
(1, 'Satellites', '0:03:06'),
(1, 'Scared of Lonely', '0:03:42'),
(1, 'Single Ladies (Put a Ring on It)', '0:03:13'),
(1, 'Smash Into You', '0:04:31'),
(1, 'Sweet Dreams', '0:03:28'),
(1, 'That''s Why You''re Beautiful', '0:03:41'),
(1, 'Video Phone', '0:03:35'),
(2, 'All I Ask', '0:04:31'),
(2, 'Hello', '0:04:55'),
(2, 'I Miss You', '0:05:48'),
(2, 'Love in the Dark', '0:04:45'),
(2, 'Million Years Ago', '0:03:47'),
(2, 'Remedy', '0:04:05'),
(2, 'River Lea', '0:03:45'),
(2, 'Send My Love (To Your New Lover)', '0:03:43'),
(2, 'Sweetest Devotion', '0:04:11'),
(2, 'Water Under The Bridge', '0:04:00'),
(2, 'When We Were Young', '0:04:50'),
(3, 'Don''t You Remember', '0:04:03'),
(3, 'He Won''t Go', '0:04:37'),
(3, 'I''ll Be Waiting', '0:04:01'),
(3, 'Lovesong', '0:05:16'),
(3, 'One And Only', '0:05:46'),
(3, 'Rolling in the Deep', '0:03:48'),
(3, 'Rumour Has It', '0:03:41'),
(3, 'Set Fire to the Rain', '0:04:01'),
(3, 'Someone Like You', '0:04:45'),
(3, 'Take It All', '0:03:48'),
(3, 'Turning Tables', '0:04:10'),
(5, 'Check On It - feat. Bun B and Slim Thug', '0:03:30'),
(5, 'Deja Vu', '0:03:59'),
(5, 'Freakum Dress', '0:03:20'),
(5, 'Get Me Bodied', '0:03:25'),
(5, 'Green Light', '0:03:29'),
(5, 'Irreplaceable', '0:03:47'),
(5, 'Kitty Kat', '0:03:55'),
(5, 'Resentment', '0:04:40'),
(5, 'Ring The Alarm', '0:03:23'),
(5, 'Suga Mama', '0:03:24'),
(5, 'Upgrade U', '0:04:32'),
(6, '***Flawless', '0:04:10'),
(6, '11-Jul', '0:03:33'),
(6, 'Blow', '0:05:09'),
(6, 'Blow Remix', '0:05:09'),
(6, 'Blue', '0:04:26'),
(6, 'Drunk in Love', '0:05:23'),
(6, 'Drunk in Love Remix', '0:06:35'),
(6, 'Flawless Remix', '0:03:54'),
(6, 'Haunted', '0:06:09'),
(6, 'Heaven', '0:03:50'),
(6, 'Jealous', '0:03:04'),
(6, 'Mine', '0:06:18'),
(6, 'No Angel', '0:03:48'),
(6, 'Partition', '0:05:19'),
(6, 'Pretty Hurts', '0:04:17'),
(6, 'Ring Off', '0:03:00'),
(6, 'Rocket', '0:06:31'),
(6, 'Standing on the Sun Remix', '0:04:33'),
(6, 'Superpower', '0:04:36'),
(6, 'XO', '0:03:35'),
(7, 'Damage', '0:04:16'),
(7, 'Down', '0:04:17'),
(7, 'Gimme Whatcha Got', '0:03:48'),
(7, 'Help Me', '0:03:17'),
(7, 'Hold Up', '0:03:48'),
(7, 'I Wanna Be', '0:03:46'),
(7, 'I''ll Call Ya', '0:03:53'),
(7, 'Kiss Kiss', '0:04:10'),
(7, 'Lottery', '0:03:41'),
(7, 'Nice', '0:04:32'),
(7, 'Picture Perfect', '0:04:12'),
(7, 'Take You Down', '0:04:05'),
(7, 'Throwed', '0:03:01'),
(7, 'Wall To Wall', '0:03:43'),
(7, 'With You', '0:04:12'),
(7, 'You', '0:03:22'),
(8, '2012', '0:04:08'),
(8, '4 Years Old', '0:03:49'),
(8, 'Bassline', '0:03:58'),
(8, 'Biggest Fan', '0:03:59'),
(8, 'Don''t Judge Me', '0:04:00'),
(8, 'Don''t Wake Me Up', '0:03:42'),
(8, 'Free Run', '0:04:01'),
(8, 'Mirage', '0:04:17'),
(8, 'Party Hard / Cadillac (Interlude)', '0:05:14'),
(8, 'Remember My Name', '0:03:39'),
(8, 'Strip', '0:02:47'),
(8, 'Stuck On Stupid', '0:03:58'),
(8, 'Sweet Love', '0:03:20'),
(8, 'Tell Somebody', '0:04:04'),
(8, 'Till I Die', '0:03:56'),
(8, 'Touch Me', '0:03:37'),
(8, 'Trumpet Lights', '0:03:47'),
(8, 'Turn Up the Music', '0:03:47'),
(8, 'Wait For You', '0:03:38'),
(9, '106.2 Breeze FM', '0:01:00'),
(9, '96.7 The Pipe', '0:00:34'),
(9, 'Baby''s Wearing Blue Jeans', '0:03:33'),
(9, 'European Vegas', '0:03:17'),
(9, 'I''m A Man', '0:02:32'),
(9, 'Me and Jon Hanging On', '0:02:41'),
(9, 'Me and Mine', '0:02:04'),
(9, 'Moving Like Mike', '0:02:57'),
(9, 'One More Tear To Cry', '0:04:04'),
(9, 'Only You', '0:02:58'),
(9, 'Rock and Roll Night Club', '0:03:10'),
(9, 'She''s Really All I Need', '0:03:03'),
(10, 'Blue Boy', '0:02:06'),
(10, 'Brother', '0:03:32'),
(10, 'Chamber Of Reflection', '0:03:51'),
(10, 'Go Easy', '0:03:24'),
(10, 'Goodbye Weekend', '0:02:59'),
(10, 'Jonny''s Odyssey', '0:02:38'),
(10, 'Let Her Go', '0:03:02'),
(10, 'Let My Baby Stay', '0:04:08'),
(10, 'Passing Out Pieces', '0:02:47'),
(10, 'Salad Days', '0:02:25'),
(10, 'Treat Her Better', '0:03:49'),
(11, 'A Heart Like Hers', '0:04:01'),
(11, 'Another One', '0:02:40'),
(11, 'I''ve Been Waiting for Her', '0:02:47'),
(11, 'Just to Put Me Down', '0:03:18'),
(11, 'My House by the Water', '0:02:34'),
(11, 'No Other Heart', '0:02:53'),
(11, 'The Way You''d Love Her', '0:02:36'),
(11, 'Without Me', '0:02:57'),
(12, 'Intro', '0:01:07'),
(13, 'Broken', '0:03:17'),
(13, 'Cloud of Unknowing - feat. Bobby Womack and sinfonia ViVA', '0:03:06'),
(13, 'Empire Ants - feat. Little Dragon', '0:04:43'),
(13, 'Glitter Freeze - feat. Mark E Smith', '0:04:03'),
(13, 'On Melancholy Hill', '0:03:53'),
(13, 'Orchestral Intro - feat. sinfonia ViVA', '0:01:09'),
(13, 'Pirate Jet', '0:02:32'),
(13, 'Plastic Beach - feat. Mick Jones and Paul Simonon', '0:03:47'),
(13, 'Rhinestone Eyes', '0:03:20'),
(13, 'Some Kind of Nature - feat. Lou Reed', '0:02:59'),
(13, 'Stylo (feat. Mos Def and Bobby Womack)', '0:04:30'),
(13, 'Superfast Jellyfish - feat. Gruff Rhys and De La Soul', '0:02:54'),
(13, 'Sweepstakes - feat. Mos Def and Hypnotic Brass Ensemble', '0:05:20'),
(13, 'To Binge - feat. Little Dragon', '0:03:55'),
(13, 'Welcome To The World of The Plastic Beach - feat. Snoop Dogg and Hypnotic Brass Ensemble', '0:03:35'),
(14, '19-2000', '0:03:30'),
(14, '4-May', '0:02:42'),
(14, 'Clint Eastwood', '0:04:29'),
(14, 'Double Bass', '0:04:46'),
(14, 'Dracula', '0:04:41'),
(14, 'Latin Simone (Que Pasa Contigo)', '0:03:38'),
(14, 'Left Hand Suzuki Method', '0:03:12'),
(14, 'M1 A1', '0:04:01'),
(14, 'Man Research (Clapper)', '0:04:32'),
(14, 'New Genius (Brother)', '0:03:59'),
(14, 'Punk', '0:01:38'),
(14, 'Re-Hash', '0:03:40'),
(14, 'Rock the House', '0:04:09'),
(14, 'Slow Country', '0:03:37'),
(14, 'Sound Check (Gravity)', '0:04:42'),
(14, 'Starshine', '0:03:33'),
(14, 'Tomorrow Comes Today', '0:03:13'),
(15, '500 Degreez', '0:03:45'),
(15, 'Believe That', '0:04:12'),
(15, 'Big Tigger Live On The Radio', '0:01:31'),
(15, 'Big Tigger Live On The Radio - Album Version #2 (Explicit)', '0:00:58'),
(15, 'Bloodline', '0:04:21'),
(15, 'F*** You', '0:04:20'),
(15, 'Fly Talkin''', '0:01:35'),
(15, 'Fly Talkin'' Go Home', '0:03:20'),
(15, 'Fo Sheezy', '0:03:44'),
(15, 'Gangsta And Pimps', '0:04:41'),
(15, 'Gangsta Shit', '0:03:40'),
(15, 'Get That Dough', '0:03:38'),
(15, 'Go Hard', '0:03:30'),
(15, 'Look At Me', '0:04:00'),
(15, 'Lovely', '0:04:02'),
(15, 'Rob Nice Live On The Radio', '0:01:13'),
(15, 'Way Of Life', '0:03:59'),
(15, 'What Does Life Mean To Me', '0:01:25'),
(15, 'Where You At', '0:03:50'),
(15, 'Worry Me', '0:04:06'),
(15, 'Young N'' Blues', '0:04:32'),
(16, 'Ain''t That A Bitch', '0:04:17'),
(16, 'BM J.R.', '0:04:58'),
(16, 'Bring It Back', '0:04:21'),
(16, 'Cash Money Millionaires', '0:04:42'),
(16, 'Get Down', '0:04:32'),
(16, 'Go DJ', '0:04:41'),
(16, 'Hoes', '0:04:32'),
(16, 'I Miss My Dawgs', '0:04:35'),
(16, 'Inside', '0:01:30'),
(16, 'On My Own', '0:04:28'),
(16, 'On The Block #1', '0:00:18'),
(16, 'On The Block #2', '0:00:23'),
(16, 'Only Way', '0:04:33'),
(16, 'Shine', '0:05:16'),
(16, 'Snitch', '0:03:55'),
(16, 'The Heat', '0:04:36'),
(16, 'This Is The Carter', '0:04:36'),
(16, 'Walk In', '0:03:04'),
(16, 'Walk Out', '0:01:08'),
(16, 'We Don''t', '0:04:09'),
(16, 'Who Wanna', '0:04:32'),
(17, 'Best Rapper Alive', '0:04:53'),
(17, 'Carter II', '0:02:24'),
(17, 'Feel Me', '0:03:48'),
(17, 'Fireman - Main', '0:04:23'),
(17, 'Fly In', '0:02:23'),
(17, 'Fly Out', '0:02:25'),
(17, 'Get Over', '0:04:42'),
(17, 'Grown Man', '0:04:06'),
(17, 'Hit Em Up', '0:04:07'),
(17, 'Hustler Musik', '0:05:03'),
(17, 'I''m A Dboy', '0:04:00'),
(17, 'Lock And Load', '0:04:46'),
(17, 'Mo Fire', '0:03:23'),
(17, 'Money On My Mind', '0:04:31'),
(17, 'Oh No', '0:03:11'),
(17, 'On Tha Block #1 - Skit', '0:00:38'),
(17, 'On Tha Block #2 - Skit', '0:00:25'),
(17, 'On Tha Block #3 - Skit', '0:00:13'),
(17, 'Receipt', '0:03:48'),
(17, 'Shooter', '0:04:35'),
(17, 'Tha Mobb', '0:05:20'),
(17, 'Weezy Baby', '0:04:18'),
(18, '3 Peat', '0:03:19'),
(18, 'A Milli', '0:03:41'),
(18, 'Comfortable', '0:04:25'),
(18, 'DontGetIt', '0:09:52'),
(18, 'Dr. Carter', '0:04:24'),
(18, 'Got Money', '0:04:04'),
(18, 'La La', '0:04:22'),
(18, 'Let The Beat Build', '0:05:09'),
(18, 'Lollipop', '0:04:59'),
(18, 'Mr. Carter', '0:05:16'),
(18, 'Mrs. Officer', '0:04:46'),
(18, 'Phone Home', '0:03:11'),
(18, 'Pussy Monster', '0:05:13'),
(18, 'Shoot Me Down', '0:04:29'),
(18, 'Tie My Hands', '0:05:19'),
(18, 'You Ain''t Got Nuthin', '0:05:27'),
(19, '6 Foot 7 Foot', '0:04:08'),
(19, 'Abortion', '0:03:43'),
(19, 'Blunt Blowin', '0:05:12'),
(19, 'How To Hate', '0:04:38'),
(19, 'How To Love', '0:04:00'),
(19, 'I Like The View', '0:04:41'),
(19, 'Interlude', '0:02:01'),
(19, 'Intro', '0:02:52'),
(19, 'It''s Good', '0:04:01'),
(19, 'John', '0:04:46'),
(19, 'MegaMan', '0:03:18'),
(19, 'Mirror', '0:03:48'),
(19, 'Nightmares Of The Bottom', '0:04:41'),
(19, 'Outro', '0:03:52'),
(19, 'President Carter', '0:04:15'),
(19, 'She Will', '0:05:05'),
(19, 'So Special', '0:03:52'),
(19, 'Two Shots', '0:02:45'),
(20, 'About A Girl', '0:02:48'),
(20, 'About A Girl - Live', '0:02:27'),
(20, 'Been A Son - Live', '0:02:00'),
(20, 'Big Cheese', '0:03:42'),
(20, 'Blew', '0:02:54'),
(20, 'Blew - Live', '0:04:31'),
(20, 'Dive - Live', '0:03:42'),
(20, 'Downer', '0:01:43'),
(20, 'Floyd The Barber', '0:02:18'),
(20, 'Floyd The Barber - Live', '0:02:16'),
(20, 'Intro - Live', '0:00:52'),
(20, 'Love Buzz', '0:03:35'),
(20, 'Love Buzz - Live', '0:02:57'),
(20, 'Molly''s Lips - Live', '0:02:15'),
(20, 'Mr. Moustache', '0:03:24'),
(20, 'Negative Creep', '0:02:55'),
(20, 'Paper Cuts', '0:04:05'),
(20, 'Sappy - Live', '0:03:19'),
(20, 'School', '0:02:42'),
(20, 'School - Live', '0:02:36'),
(20, 'Scoff', '0:04:10'),
(20, 'Scoff - Live', '0:03:52'),
(20, 'Sifting', '0:05:22'),
(20, 'Spank Thru - Live', '0:02:59'),
(20, 'Swap Meet', '0:03:02'),
(21, 'Breed', '0:03:04'),
(21, 'Come As You Are', '0:03:38'),
(21, 'Drain You', '0:03:43'),
(21, 'In Bloom - Nevermind Version', '0:04:15'),
(21, 'Lithium', '0:04:17'),
(21, 'Lounge Act', '0:02:36'),
(21, 'On A Plain', '0:03:14'),
(21, 'Polly', '0:02:53'),
(21, 'Smells Like Teen Spirit', '0:05:01'),
(21, 'Something In The Way', '0:03:52'),
(21, 'Stay Away', '0:03:31'),
(21, 'Territorial Pissings', '0:02:22'),
(22, 'All Apologies', '0:03:50'),
(22, 'All Apologies - 2013 Mix', '0:03:51'),
(22, 'All Apologies - Demo', '0:04:24'),
(22, 'All Apologies - Original Steve Albini 1993 Mix', '0:03:53'),
(22, 'Dumb', '0:02:31'),
(22, 'Dumb - 2013 Mix', '0:02:32'),
(22, 'Dumb - Demo / Instrumental', '0:02:38'),
(22, 'Forgotten Tune - Demo / Instrumental', '0:02:04'),
(22, 'Frances Farmer Will Have Her Revenge On Seattle', '0:04:10'),
(22, 'Frances Farmer Will Have Her Revenge On Seattle - 2013 Mix', '0:04:11'),
(22, 'Frances Farmer Will Have Her Revenge On Seattle - Demo / Instrumental', '0:04:32'),
(22, 'Gallons Of Rubbing Alcohol Flow Through The Strip', '0:07:34'),
(22, 'Heart Shaped Box - 2013 Mix', '0:04:38'),
(22, 'Heart Shaped Box - Original Steve Albini 1993 Mix', '0:04:41'),
(22, 'Heart-Shaped Box', '0:04:41'),
(22, 'I Hate Myself And Want To Die - 2013 Mix', '0:02:59'),
(22, 'Jam - Demo', '0:05:35'),
(22, 'Marigold - B-Side', '0:02:34'),
(22, 'Marigold - Demo', '0:03:25'),
(22, 'Milk It', '0:03:54'),
(22, 'Milk It - 2013 Mix', '0:03:56'),
(22, 'Moist Vagina - 2013 Mix', '0:03:33'),
(22, 'Pennyroyal Tea', '0:03:38'),
(22, 'Pennyroyal Tea - 2013 Mix', '0:03:32'),
(22, 'Pennyroyal Tea - Demo / Instrumental', '0:03:31'),
(22, 'Pennyroyal Tea - Scott Litt Mix', '0:03:35'),
(22, 'Radio Friendly Unit Shifter', '0:04:51'),
(22, 'Radio Friendly Unit Shifter - 2013 Mix', '0:04:52'),
(22, 'Radio Friendly Unit Shifter - Demo / Instrumental', '0:02:39'),
(22, 'Rape Me', '0:02:50'),
(22, 'Rape Me - 2013 Mix', '0:02:49'),
(22, 'Sappy - 2013 Mix', '0:03:25'),
(22, 'Scentless Apprentice', '0:03:48'),
(22, 'Scentless Apprentice - 2013 Mix', '0:03:49'),
(22, 'Scentless Apprentice - Demo', '0:03:53'),
(22, 'Serve The Servants', '0:03:37'),
(22, 'Serve The Servants - 2013 Mix', '0:03:38'),
(22, 'Tourette''s', '0:01:35'),
(22, 'Tourette''s - 2013 Mix', '0:01:36'),
(22, 'Tourette''s - Demo / Instrumental', '0:02:14'),
(22, 'Very Ape', '0:01:55'),
(22, 'Very Ape - 2013 Mix', '0:01:57'),
(22, 'Very Ape - Demo / Instrumental', '0:02:20'),
(23, 'And The Cradle Will Rock...', '0:03:33'),
(23, 'Could This Be Magic?', '0:03:11'),
(23, 'Everybody Wants Some!!', '0:05:08'),
(23, 'Fools', '0:05:57'),
(23, 'In A Simple Rhyme', '0:04:39'),
(23, 'Loss Of Control', '0:02:38'),
(23, 'Romeo Delight', '0:04:21'),
(23, 'Take Your Whiskey Home', '0:03:10'),
(23, 'Tora! Tora!', '0:00:56'),
(24, '(Oh) Pretty Woman', '0:02:55'),
(24, 'Big Bad Bill - Is Sweet William Now', '0:02:45'),
(24, 'Cathedral', '0:01:22'),
(24, 'Dancing In The Street', '0:03:45'),
(24, 'Hang ''em High', '0:03:28'),
(24, 'Happy Trails', '0:01:05'),
(24, 'Intruder', '0:01:39'),
(24, 'Little Guitars', '0:03:48'),
(24, 'Little Guitars - Intro Album Version', '0:00:42'),
(24, 'Secrets', '0:03:25'),
(24, 'The Full Bug', '0:03:21'),
(24, 'Where Have All The Good Times Gone!', '0:03:04'),
(25, '25', '0:01:06'),
(25, 'Drop Dead Legs', '0:04:14'),
(25, 'Girl Gone Bad', '0:04:34'),
(25, 'Hot For Teacher', '0:04:42'),
(25, 'House Of Pain', '0:03:19'),
(25, 'I''ll Wait', '0:04:42'),
(25, 'Jump', '0:03:59'),
(25, 'Panama', '0:03:32'),
(25, 'Top Jimmy', '0:03:00'),
(26, '26', '0:05:42'),
(26, 'Best of Both Worlds', '0:04:48'),
(26, 'Dreams', '0:04:54'),
(26, 'Get Up', '0:04:37'),
(26, 'Good Enough', '0:04:03'),
(26, 'Inside', '0:05:01'),
(26, 'Love Walks In', '0:05:10'),
(26, 'Summer Nights', '0:05:05'),
(26, 'Why Can''t This Be Love', '0:03:47'),
(27, 'All By Myself', '0:01:40'),
(27, 'Basket Case', '0:03:01'),
(27, 'Burnout', '0:02:07'),
(27, 'Chump', '0:02:54'),
(27, 'Coming Clean', '0:01:34'),
(27, 'Emenius Sleepus', '0:01:43'),
(27, 'F.O.D.', '0:02:50'),
(27, 'Having A Blast', '0:02:44'),
(27, 'In The End', '0:01:46'),
(27, 'Longview', '0:03:53'),
(27, 'Pulling Teeth', '0:02:30'),
(27, 'Sassafras Roots', '0:02:37'),
(27, 'She', '0:02:14'),
(27, 'Welcome To Paradise', '0:03:44'),
(27, 'When I Come Around', '0:02:58'),
(28, 'American Idiot', '0:02:56'),
(28, 'Are We The Waiting/St. Jimmy', '0:05:38'),
(28, 'Extraordinary Girl/Letterbomb', '0:07:40'),
(28, 'Give Me Novacaine/She''s A Rebel', '0:05:26'),
(28, 'Holiday/Boulevard Of Broken Dreams', '0:08:13'),
(28, 'Homecoming', '0:09:18'),
(28, 'Jesus Of Suburbia', '0:09:08'),
(28, 'Wake Me Up When September Ends', '0:04:45'),
(28, 'Whatsername', '0:04:17'),
(29, 'All The Time', '0:02:10'),
(29, 'Good Riddance (Time Of Your Life)', '0:02:33'),
(29, 'Haushinka', '0:03:25'),
(29, 'Hitchin'' A Ride', '0:02:51'),
(29, 'Jinx', '0:02:12'),
(29, 'King For A Day', '0:03:13'),
(29, 'Last Ride In', '0:03:47'),
(29, 'Nice Guys Finish Last', '0:02:48'),
(29, 'Platypus (I Hate You)', '0:02:21'),
(29, 'Prosthetic Head', '0:03:38'),
(29, 'Redundant', '0:03:18'),
(29, 'Reject', '0:02:05'),
(29, 'Scattered', '0:03:02'),
(29, 'Take Back', '0:01:09'),
(29, 'The Grouch', '0:02:12'),
(29, 'Uptight', '0:03:04'),
(29, 'Walking Alone', '0:02:45'),
(29, 'Worry Rock', '0:02:27'),
(30, '(You Drive Me) Crazy', '0:03:18'),
(30, '...Baby One More Time', '0:03:31'),
(30, '...Baby One More Time - Boy Wunder Radio Mix', '0:03:27'),
(30, '...Baby One More Time - Davidson Ospina Radio Mix', '0:03:24'),
(30, 'Autumn Goodbye', '0:03:41'),
(30, 'Born to Make You Happy', '0:04:03'),
(30, 'Deep In My Heart', '0:03:35'),
(30, 'E-Mail My Heart', '0:03:43'),
(30, 'From the Bottom of My Broken Heart', '0:05:12'),
(30, 'I Will Be There', '0:03:53'),
(30, 'I Will Still Love You', '0:04:03'),
(30, 'I''ll Never Stop Loving You', '0:03:41'),
(30, 'Soda Pop', '0:03:20'),
(30, 'Sometimes', '0:04:05'),
(30, 'The Beat Goes On', '0:03:43'),
(30, 'Thinkin'' About You', '0:03:34'),
(31, '(I Can''t Get No) Satisfaction', '0:04:23'),
(31, 'Can''t Make You Love Me', '0:03:17'),
(31, 'Dear Diary', '0:02:46'),
(31, 'Don''t Go Knockin'' on My Door', '0:03:43'),
(31, 'Don''t Let Me Be the Last to Know', '0:03:50'),
(31, 'Lucky', '0:03:26'),
(31, 'One Kiss from You', '0:03:23'),
(31, 'Oops!...I Did It Again', '0:03:31'),
(31, 'Stronger', '0:03:23'),
(31, 'What U See (Is What U Get)', '0:03:36'),
(31, 'When Your Eyes Say It', '0:04:29'),
(31, 'Where Are You Now', '0:04:39'),
(32, 'Black Skinhead', '0:03:08'),
(32, 'Blood On The Leaves', '0:05:59'),
(32, 'Bound 2', '0:03:49'),
(32, 'Guilt Trip', '0:04:03'),
(32, 'Hold My Liquor', '0:05:26'),
(32, 'I Am A God', '0:03:51'),
(32, 'I''m In It', '0:03:54'),
(32, 'New Slaves', '0:04:16'),
(32, 'On Sight', '0:02:36'),
(32, 'Send It Up', '0:02:58'),
(33, 'Barry Bonds', '0:03:24'),
(33, 'Big Brother', '0:04:47'),
(33, 'Can''t Tell Me Nothing', '0:04:31'),
(33, 'Champion', '0:02:47'),
(33, 'Drunk and Hot Girls', '0:05:13'),
(33, 'Everything I Am', '0:03:47'),
(33, 'Flashing Lights', '0:03:57'),
(33, 'Good Life', '0:03:27'),
(33, 'Good Morning', '0:03:15'),
(33, 'Homecoming', '0:03:23'),
(33, 'I Wonder', '0:04:03'),
(33, 'Stronger', '0:05:11'),
(33, 'The Glory', '0:03:32'),
(34, 'All Falls Down', '0:03:43'),
(34, 'Breathe In Breathe Out', '0:04:06'),
(34, 'Family Business', '0:04:38'),
(34, 'Get Em High', '0:04:49'),
(34, 'Graduation Day', '0:01:21'),
(34, 'I''ll Fly Away', '0:01:09'),
(34, 'Intro', '0:00:19'),
(34, 'Jesus Walks', '0:03:13'),
(34, 'Last Call', '0:12:40'),
(34, 'Lil Jimmy Skit', '0:00:53'),
(34, 'Never Let Me Down', '0:05:24'),
(34, 'School Spirit', '0:03:02'),
(34, 'School Spirit Skit 1', '0:01:18'),
(34, 'School Spirit Skit 2', '0:00:43'),
(34, 'Slow Jamz', '0:05:16'),
(34, 'Spaceship', '0:05:24'),
(34, 'The New Workout Plan', '0:05:22'),
(34, 'Through The Wire', '0:03:41'),
(34, 'Two Words', '0:04:26'),
(34, 'We Don''t Care', '0:03:59'),
(34, 'Workout Plan', '0:00:46'),
(35, '**Bonus Track** Diamonds From Sierra Leone', '0:03:58'),
(35, 'Addiction', '0:04:27'),
(35, 'Bring Me Down', '0:03:18'),
(35, 'Celebration', '0:03:18'),
(35, 'Crack Music', '0:04:29'),
(35, 'Diamonds From Sierra Leone - Remix - Album Version (Explicit)', '0:03:53'),
(35, 'Drive Slow', '0:04:32'),
(35, 'Gold Digger', '0:03:27'),
(35, 'Gone', '0:05:32'),
(35, 'Heard ''Em Say', '0:03:23'),
(35, 'Hey Mama', '0:05:04'),
(35, 'Late', '0:03:49'),
(35, 'My Way Home', '0:01:43'),
(35, 'Roses', '0:04:05'),
(35, 'Skit #1 (Kanye West/Late Registration)', '0:00:33'),
(35, 'Skit #2 (Kanye West/Late Registration)', '0:00:31'),
(35, 'Skit #3 (Kanye West/Late Registration)', '0:00:24'),
(35, 'Skit #4 (Kanye West/Late Registration)', '0:01:18'),
(35, 'Touch The Sky', '0:03:55'),
(35, 'Wake Up Mr. West', '0:00:41'),
(35, 'We Major', '0:07:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumId`),
  ADD KEY `artist_id` (`artistId`),
  ADD KEY `genre_id` (`genreId`),
  ADD KEY `label_id` (`labelId`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artistId`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreId`);

--
-- Indexes for table `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`labelId`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`albumId`,`trackName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artistId`) REFERENCES `artist` (`artistId`),
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `genre` (`genreId`),
  ADD CONSTRAINT `album_ibfk_3` FOREIGN KEY (`labelId`) REFERENCES `label` (`labelId`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `album` (`albumId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
