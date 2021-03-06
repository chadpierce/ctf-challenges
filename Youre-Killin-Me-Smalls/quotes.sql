-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2018 at 11:29 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` varchar(8) NOT NULL,
  `quote` varchar(206) DEFAULT NULL,
  `character` varchar(60) DEFAULT NULL,
  `actor` varchar(30) DEFAULT NULL,
  `film` varchar(68) DEFAULT NULL,
  `year` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `character`, `actor`, `film`, `year`) VALUES
('0', '*', 'nice try ¯\\_(ツ)_/¯', 'nice try ¯\\_(ツ)_/¯', 'nice try ¯\\_(ツ)_/¯', 'nice try ¯\\_(ツ)_/¯'),
('1', 'Whoa', 'Neo', 'Keanu Reeves', 'The Matrix', '1999'),
('1001', 'Shane. Shane. Come back!', 'Joey Starrett', 'Brandon De Wilde', 'Shane', '1953'),
('104', 'They call me Mister Tibbs!', 'Virgil Tibbs', 'Sidney Poitier', 'In the Heat of the Night', '1967'),
('1042', 'Well, nobody\'s perfect.', 'Osgood Fielding III', 'Joe E. Brown', 'Some Like It Hot', '1959'),
('1064', 'It\'s alive! It\'s alive!', 'Henry Frankenstein', 'Colin Clive', 'Frankenstein', '1931'),
('1102', 'Houston, we have a problem.', 'Jim Lovell', 'Tom Hanks', 'Apollo 13', '1995'),
('1199', 'You\'ve got to ask yourself one question: \'Do I feel lucky?\' Well, do ya, punk?', 'Harry Callahan', 'Clint Eastwood', 'Dirty Harry', '1971'),
('12', 'You don\'t understand! I coulda had class. I coulda been a contender. I could\'ve been somebody, instead of a bum, which is what I am.', 'Terry Malloy', 'Marlon Brando', 'On the Waterfront', '1954'),
('1209', 'You had me at \'hello.\'', 'Dorothy Boyd', 'Renée Zellweger', 'Jerry Maguire', '1996'),
('122', 'Rosebud.', 'Charles Foster Kane', 'Orson Welles', 'Citizen Kane', '1941'),
('1253', 'One morning I shot an elephant in my pajamas. How he got in my pajamas, I don\'t know.', 'Capt. Geoffrey T. Spaulding', 'Groucho Marx', 'Animal Crackers', '1930'),
('1299', 'There\'s no crying in baseball!', 'Jimmy Dugan', 'Tom Hanks', 'A League of Their Own', '1992'),
('1384', 'La-dee-da, la-dee-da.', 'Annie Hall', 'Diane Keaton', 'Annie Hall', '1977'),
('1389', 'A boy\'s best friend is his mother.', 'Norman Bates', 'Anthony Perkins', 'Psycho', '1960'),
('1439', 'Greed, for lack of a better word, is good.', 'Gordon Gekko', 'Michael Douglas', 'Wall Street', '1987'),
('1481', 'Keep your friends close, but your enemies closer.', 'Michael Corleone', 'Al Pacino', 'The Godfather Part II', '1974'),
('1500', 'As God is my witness, I\'ll never be hungry again.', 'Scarlett O\'Hara', 'Vivien Leigh', 'Gone with the Wind', '1939'),
('1508', 'Well, here\'s another nice mess you\'ve gotten me into!', 'Oliver', 'Oliver Hardy', 'Sons of the Desert', '1933'),
('1558', 'Say \'hello\' to my little friend!', 'Tony Montana', 'Al Pacino', 'Scarface', '1983'),
('156', 'Made it, Ma! Top of the world!', 'Arthur \"Cody\" Jarrett', 'James Cagney', 'White Heat', '1949'),
('16', 'Toto, I\'ve a feeling we\'re not in Kansas anymore.', 'Dorothy Gale', 'Judy Garland', 'The Wizard of Oz', '1939'),
('161', 'I\'m as mad as hell, and I\'m not going to take this anymore!', 'Howard Beale', 'Peter Finch', 'Network', '1976'),
('1656', 'What a dump.', 'Rosa Moline', 'Bette Davis', 'Beyond the Forest', '1949'),
('1690', 'Mrs. Robinson, you\'re trying to seduce me. Aren\'t you?', 'Benjamin Braddock', 'Dustin Hoffman', 'The Graduate', '1967'),
('1732', 'Gentlemen, you can\'t fight in here! This is the War Room!', 'President Merkin Muffley', 'Peter Sellers', 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '1964'),
('1749', 'Elementary, my dear Watson.', 'Sherlock Holmes', 'Basil Rathbone', 'The Adventures of Sherlock Holmes', '1939'),
('187', 'Louis, I think this is the beginning of a beautiful friendship.', 'Rick Blaine', 'Humphrey Bogart', 'Casablanca', '1942'),
('1884', 'Get your stinking paws off me, you damned dirty ape.', 'George Taylor', 'Charlton Heston', 'Planet of the Apes', '1968'),
('1892', 'Of all the gin joints in all the towns in all the world, she walks into mine.', 'Rick Blaine', 'Humphrey Bogart', 'Casablanca', '1942'),
('19', 'Here\'s looking at you, kid.', 'Rick Blaine', 'Humphrey Bogart', 'Casablanca', '1942'),
('193', 'A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti.', 'Dr. Hannibal Lecter', 'Anthony Hopkins', 'The Silence of the Lambs', '1991'),
('1942', 'Here\'s Johnny!', 'Jack Torrance', 'Jack Nicholson', 'The Shining', '1980'),
('1988', 'They\'re here!', 'Carol Anne Freeling', 'Heather O\'Rourke', 'Poltergeist', '1982'),
('1999', 'Is it safe?', 'Dr. Christian Szell', 'Laurence Olivier', 'Marathon Man', '1976'),
('200', 'Bond. James Bond.', 'James Bond', 'Sean Connery', 'Dr. No', '1962'),
('2009', 'Wait a minute, wait a minute. You ain\'t heard nothin\' yet!', 'Jakie Rabinowitz/Jack Robin', 'Al Jolson', 'The Jazz Singer', '1927'),
('2280', 'No wire hangers, ever!', 'Joan Crawford', 'Faye Dunaway', 'Mommie Dearest', '1981'),
('2384', 'Mother of mercy, is this the end of Rico?', 'Cesare Enrico \"Rico\" Bandello', 'Edward G. Robinson', 'Little Caesar', '1931'),
('2459', 'Forget it, Jake, it\'s Chinatown.', 'Lawrence Walsh', 'Joe Mantell', 'Chinatown', '1974'),
('2485', 'I have always depended on the kindness of strangers.', 'Blanche DuBois', 'Vivien Leigh', 'A Streetcar Named Desire', '1951'),
('250', 'There\'s no place like home.', 'Dorothy Gale', 'Judy Garland', 'The Wizard of Oz', '1939'),
('251', 'I am big! It\'s the pictures that got small.', 'Norma Desmond', 'Gloria Swanson', 'Sunset Boulevard', '1950'),
('2512', 'Hasta la vista, baby.', 'The Terminator', 'Arnold Schwarzenegger', 'Terminator 2: Judgment Day', '1991'),
('252', 'Show me the money!', 'Rod Tidwell', 'Cuba Gooding Jr.', 'Jerry Maguire', '1996'),
('253', 'Why don\'t you come up sometime and see me?', 'Lady Lou', 'Mae West', 'She Done Him Wrong', '1933'),
('2550', 'Soylent Green is people!', 'Det. Robert Thorn', 'Charlton Heston', 'Soylent Green', '1973'),
('266', 'I\'m walking here! I\'m walking here!', 'Ratso Rizzo', 'Dustin Hoffman', 'Midnight Cowboy', '1969'),
('2677', 'Open the pod bay doors, HAL.', 'Dave Bowman', 'Keir Dullea', '2001: A Space Odyssey', '1968'),
('2697', 'Striker: \"Surely you can\'t be serious.\" Rumack: \"I am serious … and don\'t call me Shirley.\"', 'Ted Striker and Dr. Rumack', 'Robert Hays and Leslie Nielsen', 'Airplane!', '1980'),
('275', 'Play it, Sam. Play \'As Time Goes By.\'', 'Ilsa Lund', 'Ingrid Bergman', 'Casablanca', '1942'),
('2760', 'Yo, Adrian!', 'Rocky Balboa', 'Sylvester Stallone', 'Rocky', '1976'),
('2764', 'Hello, gorgeous.', 'Fanny Brice', 'Barbra Streisand', 'Funny Girl', '1968'),
('35', 'Go ahead, make my day.', 'Harry Callahan', 'Clint Eastwood', 'Sudden Impact', '1983'),
('3508', 'Toga! Toga!', 'John \"Bluto\" Blutarsky', 'John Belushi', 'National Lampoon\'s Animal House', '1978'),
('360', 'You can\'t handle the truth!', 'Col. Nathan R. Jessup', 'Jack Nicholson', 'A Few Good Men', '1992'),
('367', 'I want to be alone.', 'Grusinskaya', 'Greta Garbo', 'Grand Hotel', '1932'),
('3783', 'Listen to them. Children of the night. What music they make.', 'Count Dracula', 'Bela Lugosi', 'Dracula', '1931'),
('3995', 'Oh, no, it wasn\'t the airplanes. It was Beauty killed the Beast.', 'Carl Denham', 'Robert Armstrong', 'King Kong', '1933'),
('4', 'I\'m gonna make him an offer he can\'t refuse.', 'Vito Corleone', 'Marlon Brando', 'The Godfather', '1972'),
('411', 'After all, tomorrow is another day!', 'Scarlett O\'Hara', 'Vivien Leigh', 'Gone with the Wind', '1939'),
('42', 'In the beginning the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.', 'Narrator', 'Douglas Adams', 'Hitchhiker\'s Guide to the Galaxy', '2005'),
('4444', 'Would you like to play a game?', 'WOPR', 'WOPR', 'WarGames', '1983'),
('459', 'Round up the usual suspects.', 'Capt. Louis Renault', 'Claude Rains', 'Casablanca', '1942'),
('46', 'All right, Mr. DeMille, I\'m ready for my close-up.', 'Norma Desmond', 'Gloria Swanson', 'Sunset Boulevard', '1950'),
('4994', 'My precious.', 'Gollum', 'Andy Serkis', 'The Lord of the Rings: The Two Towers', '2002'),
('5', 'Frankly, my dear, I don\'t give a damn..', 'Rhett Butler', 'Clark Gable', 'Gone with the Wind', '1939'),
('500', 'I\'ll have what she\'s having.', 'Customer', 'Estelle Reiner', 'When Harry Met Sally...', '1989'),
('51', 'May the Force be with you.', 'Han Solo', 'Harrison Ford', 'Star Wars', '1977'),
('5862', 'Attica! Attica!', 'Sonny Wortzik', 'Al Pacino', 'Dog Day Afternoon', '1975'),
('59', 'Fasten your seatbelts. It\'s going to be a bumpy night.', 'Margo Channing', 'Bette Davis', 'All About Eve', '1950'),
('599', 'You know how to whistle, don\'t you, Steve? You just put your lips together and blow.', 'Marie \"Slim\" Browning', 'Lauren Bacall', 'To Have and Have Not', '1944'),
('601', 'You\'re gonna need a bigger boat.', 'Martin Brody', 'Roy Scheider', 'Jaws', '1975'),
('6221', 'Sawyer, you\'re going out a youngster, but you\'ve got to come back a star!', 'Julian Marsh', 'Warner Baxter', '42nd Street', '1933'),
('6434', 'Listen to me, mister. You\'re my knight in shining armor. Don\'t you forget it. You\'re going to get back on that horse, and I\'m going to be right behind you, holding on tight, and away we\'re gonna go, go, go!', 'Ethel Thayer', 'Katharine Hepburn', 'On Golden Pond', '1981'),
('6435', 'Tell \'em to go out there with all they got and win just one for the Gipper.', 'Knute Rockne', 'Pat O\'Brien', 'All American', '1940'),
('65535', '', 'flag{those_inputs_are_so_dirty}', '( ͡° ͜ʖ ͡°)', '( ͡° ͜ʖ ͡°)', '( ͡° ͜ʖ ͡°)'),
('67', 'You talkin\' to me?', 'Travis Bickle', 'Robert De Niro', 'Taxi Driver', '1976'),
('674', 'Badges? We ain\'t got no badges! We don\'t need no badges! I don\'t have to show you any stinking badges!', 'Gold Hat', 'Alfonso Bedoya', 'The Treasure of the Sierra Madre', '1948'),
('6748', 'A martini. Shaken, not stirred.', 'James Bond', 'Sean Connery', 'Goldfinger', '1964'),
('6804', 'Who\'s on first?', 'Dexter', 'Bud Abbott', 'The Naughty Nineties', '1945'),
('6819', 'Cinderella story. Outta nowhere. A former greenskeeper, now, about to become the Masters champion. It looks like a mirac...It\'s in the hole! It\'s in the hole! It\'s in the hole!', 'Carl Spackler', 'Bill Murray', 'Caddyshack', '1980'),
('689', 'I\'ll be back.', 'The Terminator', 'Arnold Schwarzenegger', 'The Terminator', '1984'),
('69', 'What we\'ve got here is failure to communicate.', 'Captain', 'Strother Martin', 'Cool Hand Luke', '1967'),
('708', 'Today, I consider myself the luckiest man on the face of the Earth.', 'Lou Gehrig', 'Gary Cooper', 'The Pride of the Yankees', '1942'),
('7503', 'Life is a banquet, and most poor suckers are starving to death!', 'Mame Dennis', 'Rosalind Russell', 'Auntie Mame', '1958'),
('755', 'If you build it, he will come.', 'Shoeless Joe Jackson', 'Ray Liotta (voice)', 'Field of Dreams', '1989'),
('7563', 'I feel the need—the need for speed!', 'Lt. Pete \"Maverick\" Mitchell and Lt.jg Nick \"Goose\" Bradshaw', 'Tom Cruise and Anthony Edwards', 'Top Gun', '1986'),
('760', 'Mama always said life was like a box of chocolates. You never know what you\'re gonna get.', 'Forrest Gump', 'Tom Hanks', 'Forrest Gump', '1994'),
('803', 'We rob banks.', 'Clyde Barrow', 'Warren Beatty', 'Bonnie and Clyde', '1967'),
('8110', 'Carpe diem. Seize the day, boys. Make your lives extraordinary.', 'John Keating', 'Robin Williams', 'Dead Poets Society', '1989'),
('8112', 'Snap out of it!', 'Loretta Castorini', 'Cher', 'Moonstruck', '1987'),
('83', 'I love the smell of napalm in the morning.', 'Lt. Col. Bill Kilgore', 'Robert Duvall', 'Apocalypse Now', '1979'),
('84', 'Love means never having to say you\'re sorry.', 'Oliver Barrett IV', 'Ryan O\'Neal', 'Love Story', '1970'),
('8505', 'My mother thanks you. My father thanks you. My sister thanks you. And I thank you.', 'George M. Cohan', 'James Cagney', 'Yankee Doodle Dandy', '1942'),
('8580', 'Nobody puts Baby in a corner.', 'Johnny Castle', 'Patrick Swayze', 'Dirty Dancing', '1987'),
('877', 'Plastics.', 'Mr. Maguire', 'Walter Brooke', 'The Graduate', '1967'),
('8790', 'I\'ll get you, my pretty, and your little dog too!', 'Wicked Witch of the West', 'Margaret Hamilton', 'The Wizard of Oz', '1939'),
('890', 'We\'ll always have Paris.', 'Rick Blaine', 'Humphrey Bogart', 'Casablanca', '1942'),
('8953', 'I\'m the King of the World!', 'Jack Dawson', 'Leonardo DiCaprio', 'Titanic', '1997'),
('90', 'The stuff that dreams are made of.', 'Sam Spade', 'Humphrey Bogart', 'The Maltese Falcon', '1941'),
('923', 'I see dead people.', 'Cole Sear', 'Haley Joel Osment', 'The Sixth Sense', '1999'),
('947', 'Stella! Hey, Stella!', 'Stanley Kowalski', 'Marlon Brando', 'A Streetcar Named Desire', '1951'),
('982', 'Oh, Jerry, don\'t let\'s ask for the moon. We have the stars.', 'Charlotte Vale', 'Bette Davis', 'Now, Voyager', '1942'),
('99', 'E.T. phone home.', 'E.T.', 'Pat Welsh', 'E.T. the Extra-Terrestrial', '1982'),
('DEADBEEF', 'Hack the planet!', 'Dade Muprhy', 'Johnny Lee Miller', 'Hackers', '1995');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
