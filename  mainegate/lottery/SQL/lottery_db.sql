
SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `mainegate`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `mainegate`;

--
-- Table structure for table `errors`
--

CREATE TABLE `errors` (
  `error_id` int(11) NOT NULL auto_increment,
  `game_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `errors` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `game_name` varchar(100) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY  (`error_id`),
  KEY `game_id` (`game_id`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `errors`
--

INSERT INTO `errors` VALUES(77, 76, 8, '2009-02-01 14:01:22', 'Deleware - Play 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''76limit 1''');
INSERT INTO `errors` VALUES(78, 78, 8, '2009-02-01 14:01:22', 'Deleware - Play 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''78limit 1''');
INSERT INTO `errors` VALUES(79, 81, 20, '2009-02-01 14:01:22', 'Maryland - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''81limit 1''');
INSERT INTO `errors` VALUES(80, 83, 20, '2009-02-01 14:01:22', 'Maryland - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''83limit 1''');
INSERT INTO `errors` VALUES(81, 84, 20, '2009-02-01 14:01:22', 'Maryland - Bonus Match 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''84limit 1''');
INSERT INTO `errors` VALUES(82, 87, 45, '2009-02-01 14:01:23', 'Virginia - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''87limit 1''');
INSERT INTO `errors` VALUES(83, 89, 45, '2009-02-01 14:01:23', 'Virginia - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''89limit 1''');
INSERT INTO `errors` VALUES(84, 91, 45, '2009-02-01 14:01:24', 'Virginia - Cash 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''91limit 1''');
INSERT INTO `errors` VALUES(85, 93, 47, '2009-02-01 14:01:25', 'West Virginia - Daily 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''93limit 1''');
INSERT INTO `errors` VALUES(86, 94, 47, '2009-02-01 14:01:26', 'West Virginia - Daily 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''94limit 1''');
INSERT INTO `errors` VALUES(87, 96, 32, '2009-02-01 14:01:26', 'North Carolina - Pick 3 Midday', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''96limit 1''');
INSERT INTO `errors` VALUES(88, 97, 32, '2009-02-01 14:01:27', 'North Carolina - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''97limit 1''');
INSERT INTO `errors` VALUES(89, 98, 32, '2009-02-01 14:01:27', 'North Carolina - Cash 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''98limit 1''');
INSERT INTO `errors` VALUES(90, 100, 39, '2009-02-01 14:01:27', 'South Carolina - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''100limit 1''');
INSERT INTO `errors` VALUES(91, 102, 39, '2009-02-01 14:01:28', 'South Carolina - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''102limit 1''');
INSERT INTO `errors` VALUES(92, 106, 11, '2009-02-01 14:01:28', 'Georgia - Cash 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''106limit 1''');
INSERT INTO `errors` VALUES(93, 109, 11, '2009-02-01 14:01:28', 'Georgia - Fantasy 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''109limit 1''');
INSERT INTO `errors` VALUES(94, 111, 10, '2009-02-01 14:01:29', 'Florida - Cash 3 Evening', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''111limit 1''');
INSERT INTO `errors` VALUES(95, 113, 10, '2009-02-01 14:01:30', 'Florida - Play 4 Evening', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''113limit 1''');
INSERT INTO `errors` VALUES(96, 114, 10, '2009-02-01 14:01:31', 'Florida - Fantasy 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''114limit 1''');
INSERT INTO `errors` VALUES(97, 118, 41, '2009-02-01 14:01:31', 'Tennessee - Cash 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''118limit 1''');
INSERT INTO `errors` VALUES(98, 120, 41, '2009-02-01 14:01:31', 'Tenessee - Cash 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''120limit 1''');
INSERT INTO `errors` VALUES(99, 124, 17, '2009-02-01 14:01:33', 'Kentucky - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''124limit 1''');
INSERT INTO `errors` VALUES(100, 127, 17, '2009-02-01 14:01:34', 'Kentucky - Cashball', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''127limit 1''');
INSERT INTO `errors` VALUES(101, 129, 34, '2009-02-01 14:01:35', 'Ohio - PIck 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''129limit 1''');
INSERT INTO `errors` VALUES(102, 131, 34, '2009-02-01 14:01:35', 'Ohio - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''131limit 1''');
INSERT INTO `errors` VALUES(103, 132, 34, '2009-02-01 14:01:35', 'Ohio - Rolling Cash 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''132limit 1''');
INSERT INTO `errors` VALUES(104, 135, 34, '2009-02-01 14:01:36', 'Ohio - Ten-OH Evening', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''135limit 1''');
INSERT INTO `errors` VALUES(105, 138, 14, '2009-02-01 14:01:45', 'Indiana - Daily 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''138limit 1''');
INSERT INTO `errors` VALUES(106, 142, 14, '2009-02-01 14:01:46', 'Indiana - Lucky 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''142limit 1''');
INSERT INTO `errors` VALUES(107, 146, 22, '2009-02-01 14:01:47', 'Michigan - Daily 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''146limit 1''');
INSERT INTO `errors` VALUES(108, 148, 22, '2009-02-01 14:01:47', 'Michigan - Daily 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''148limit 1''');
INSERT INTO `errors` VALUES(109, 149, 22, '2009-02-01 14:01:48', 'Michigan - Fantasy 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''149limit 1''');
INSERT INTO `errors` VALUES(110, 151, 22, '2009-02-01 14:01:48', 'Michigan - Keno', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''151limit 1''');
INSERT INTO `errors` VALUES(111, 153, 60, '2009-02-01 14:01:49', 'Illinois - Daily 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''153limit 1''');
INSERT INTO `errors` VALUES(112, 155, 60, '2009-02-01 14:01:50', 'Illinois - Daily 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''155limit 1''');
INSERT INTO `errors` VALUES(113, 156, 60, '2009-02-01 14:01:50', 'Illinois - Little Lotto', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''156limit 1''');
INSERT INTO `errors` VALUES(114, 158, 48, '2009-02-01 14:01:51', 'Wisconsin - Daily Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''158limit 1''');
INSERT INTO `errors` VALUES(115, 159, 48, '2009-02-01 14:01:51', 'Wisconsin - Daily Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''159limit 1''');
INSERT INTO `errors` VALUES(116, 160, 48, '2009-02-01 14:01:51', 'Wisconsin - Badger 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''160limit 1''');
INSERT INTO `errors` VALUES(117, 161, 48, '2009-02-01 14:01:52', 'Wisconsin - Super Cash', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''161limit 1''');
INSERT INTO `errors` VALUES(118, 163, 61, '2009-02-01 14:01:52', 'Minnesota - Daily 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''163limit 1''');
INSERT INTO `errors` VALUES(119, 164, 61, '2009-02-01 14:01:53', 'Minnesota - Northstar Cash', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''164limit 1''');
INSERT INTO `errors` VALUES(120, 167, 15, '2009-02-01 14:01:54', 'Iowa - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''167limit 1''');
INSERT INTO `errors` VALUES(121, 169, 15, '2009-02-01 14:01:54', 'Iowa - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''169limit 1''');
INSERT INTO `errors` VALUES(122, 170, 15, '2009-02-01 14:01:55', 'Iowa - Cash Game', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''170limit 1''');
INSERT INTO `errors` VALUES(123, 172, 24, '2009-02-01 14:01:55', 'Missouri - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''172limit 1''');
INSERT INTO `errors` VALUES(124, 174, 24, '2009-02-01 14:01:56', 'Missouri - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''174limit 1''');
INSERT INTO `errors` VALUES(125, 175, 24, '2009-02-01 14:01:57', 'Missouri - Show Me Cash', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''175limit 1''');
INSERT INTO `errors` VALUES(126, 177, 18, '2009-02-01 14:01:58', 'Louisiana - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''177limit 1''');
INSERT INTO `errors` VALUES(127, 178, 18, '2009-02-01 14:01:59', 'Louisiana - Pick 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''178limit 1''');
INSERT INTO `errors` VALUES(128, 181, 62, '2009-02-01 14:01:59', 'Puerto Rico - Pega 2', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''181limit 1''');
INSERT INTO `errors` VALUES(129, 182, 62, '2009-02-01 14:02:00', 'Puerto Rico - Pega 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''182limit 1''');
INSERT INTO `errors` VALUES(130, 183, 62, '2009-02-01 14:02:01', 'Puerto Rico - Pega 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''183limit 1''');
INSERT INTO `errors` VALUES(131, 186, 42, '2009-02-01 14:02:01', 'Texas - Pick 3 Night', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''186limit 1''');
INSERT INTO `errors` VALUES(132, 188, 42, '2009-02-01 14:02:02', 'Texas - Daily 4 Night', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''188limit 1''');
INSERT INTO `errors` VALUES(133, 189, 42, '2009-02-01 14:02:02', 'Texas - Cash 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''189limit 1''');
INSERT INTO `errors` VALUES(134, 192, 35, '2009-02-01 14:02:03', 'Oklahoma - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''192limit 1''');
INSERT INTO `errors` VALUES(135, 194, 16, '2009-02-01 14:02:13', 'Kansas - Pick 3', 'http://www.kslottery.com/ name lookup timed out ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''194limit 1''');
INSERT INTO `errors` VALUES(136, 196, 65, '2009-02-01 14:02:14', '2By2', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''196limit 1''');
INSERT INTO `errors` VALUES(137, 197, 26, '2009-02-01 14:02:14', 'Nebraska - Pick 3', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''197limit 1''');
INSERT INTO `errors` VALUES(138, 198, 26, '2009-02-01 14:02:15', 'Nebraska - Pick 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''198limit 1''');
INSERT INTO `errors` VALUES(139, 202, 6, '2009-02-01 14:02:19', 'Colorado - Cash 5', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''202limit 1''');
INSERT INTO `errors` VALUES(140, 209, 13, '2009-02-01 14:02:29', 'Idaho - Pick 3', 'http://www.idaholottery.com/ name lookup timed out ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''209limit 1''');
INSERT INTO `errors` VALUES(141, 210, 46, '2009-02-01 14:02:29', 'Washington - Daily', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''210limit 1''');
INSERT INTO `errors` VALUES(142, 211, 46, '2009-02-01 14:02:30', 'Washington - Match 4', 'No matches, the page had been changed or the patern fail ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''211limit 1''');
INSERT INTO `errors` VALUES(143, 214, 46, '2009-02-01 14:02:30', 'Washington Keno', 'http://www.walottery.com/  ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''214limit 1''');
INSERT INTO `errors` VALUES(144, 215, 36, '2009-02-01 14:02:30', 'Oregon - Pick 4 1pm', 'http://www.oregonlottery.org/ Couldn''t resolve host ''www.oregonlottery.org'' ', 'SELECT *  FROM `game_info`inner join lottery_db.rtblgame using (`id`) WHERE `id` = ''215limit 1''');

-- --------------------------------------------------------

--
-- Table structure for table `game_info`
--

CREATE TABLE `game_info` (
  `id` int(11) NOT NULL auto_increment,
  `game_name` varchar(40) NOT NULL,
  `occurance` varchar(8) NOT NULL,
  `time` time NOT NULL,
  `from` int(2) NOT NULL,
  `to` int(2) NOT NULL,
  `url` varchar(100) NOT NULL,
  `spots` int(2) NOT NULL,
  `regular_expression` text,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `game_info`
--

INSERT INTO `game_info` VALUES(1, 'Powerball', '36', '22:59:00', 1, 55, 'http://www.mainelottery.com/games/powerballPrevious.shtml', 6, '/<tr class=\\"even\\"><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(2, 'Tristate - Megabucks', '36', '19:50:00', 1, 42, 'http://www.mainelottery.com/games/megaold.shtml', 6, '/<tr class=\\"even\\"><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(3, 'Tristate - Paycheck', '25', '18:59:00', 1, 39, 'http://www.mainelottery.com/games/paycheck.shtml', 5, '/<h2>Winning Numbers .*? (.*?)<\\/h2>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>/i', NULL);
INSERT INTO `game_info` VALUES(4, 'Maine - Pick 3 day', '0123456', '13:00:00', 0, 9, 'http://www.mainelottery.com/games/pickThreeHistory.shtml', 3, '/<th>Date<\\/th>.*?<td>(.*?)<\\/td><td>Day<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(5, 'Maine - Pick 3 eve', '0123456', '18:50:00', 0, 9, 'http://www.mainelottery.com/games/pickThreeHistory.shtml', 3, '/<th>Date<\\/th>.*?<td>([0-9]{2}\\/[0-9]{2}\\/[0-9]{4})<\\/td><td>Eve<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(6, 'Maine - Pick 4 day', '0123456', '12:00:00', 0, 9, 'http://www.mainelottery.com/games/pickFourHistory.shtml', 4, '/<th>Date<\\/th>.*?<td>([0-9]{2}\\/[0-9]{2}\\/[0-9]{4})<\\/td><td>Day<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(7, 'Maine - Pick 4 eve', '0123456', '18:50:00', 0, 9, 'http://www.mainelottery.com/games/pickFourHistory.shtml', 4, '/<th>Date<\\/th>.*?<td>([0-9]{2}\\/[0-9]{2}\\/[0-9]{4})<\\/td><td>Eve<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(8, 'New Hampshire - Pick 3 day', '0123456', '12:10:00', 0, 9, 'http://www.nhlottery.org/WinningNumbers.aspx', 3, '/pick3.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Day.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(9, 'New Hampshire - Pick 3 eve', '0123456', '18:55:00', 0, 9, 'http://www.nhlottery.org/WinningNumbers.aspx', 3, '/pick3.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Evening.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(10, 'New Hampshire - Pick 4 day', '0123456', '12:10:00', 0, 9, 'http://www.nhlottery.org/WinningNumbers.aspx', 4, '/pick4.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Day.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(11, 'New Hampshire - Pick 4 eve', '0123456', '18:55:00', 0, 9, 'http://www.nhlottery.org/WinningNumbers.aspx', 4, '/pick4.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Evening.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(12, 'Hot Lotto Sizzler', '36', '22:40:00', 1, 39, 'http://www.nhlottery.org/WinningNumbers.aspx', 6, '/logohl.jpg.*?class=\\"drawDate\\">([a-zA-Z0-9\\/]+) <\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(13, 'Rhode Island - Wild Money', '346', '19:29:00', 1, 35, 'http://209.123.49.147/wildmoney_search.asp?search=true&dtype=today', 5, '/align=\\"absbottom\\">&nbsp;(.*?)<\\/a>.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif/i', NULL);
INSERT INTO `game_info` VALUES(14, 'Rhode Island - The Numbers', '0123456', '18:59:00', 0, 9, 'http://209.123.49.147/dailynum_search.asp?search=true&dtype=today', 4, '/<\\/tr><tr bgcolor=White><td>(.*?)<\\/td>.*?white\\/single\\/(.*?).gif.*?white\\/single\\/(.*?).gif.*?white\\/single\\/(.*?).gif.*?white\\/single\\/(.*?).gif/i', NULL);
INSERT INTO `game_info` VALUES(15, 'Vermont - Pick 3 day', '0123456', '12:10:00', 0, 9, 'http://www.vtlottery.com/pick3/most-recent-draw.asp', 3, '/Draw Date: (.*?)<br.*?Day.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', NULL);
INSERT INTO `game_info` VALUES(16, 'Vermont - Pick 3 eve', '0123456', '18:55:00', 0, 9, 'http://www.vtlottery.com/pick3/most-recent-draw.asp', 3, '/Draw Date: (.*?)<br.*?Evening.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', NULL);
INSERT INTO `game_info` VALUES(17, 'Vermont - Pick 4 day', '0123456', '12:10:00', 0, 9, 'http://www.vtlottery.com/pick4/most-recent-draw.asp', 4, '/Draw Date: (.*?)<br.*?Day.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', NULL);
INSERT INTO `game_info` VALUES(18, 'Vermont - Pick 4 eve', '0123456', '18:55:00', 0, 9, 'http://www.vtlottery.com/pick4/most-recent-draw.asp', 4, '/Draw Date: (.*?)<br.*?Evening.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', NULL);
INSERT INTO `game_info` VALUES(19, 'Connecticuit - Play 3 day', '0123456', '12:57:00', 0, 9, 'http://www.ctlottery.org/daily.htm', 3, '/logos\\/play3night.gif.*?<tr><td.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(20, 'Connecticuit - Play 3 eve', '0123456', '22:29:00', 0, 9, 'http://www.ctlottery.org/daily.htm', 3, '/logos\\/play3night.gif.*?<tr><td.*?<table.*?<\\/table>.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(21, 'Connecticuit - Play 4 day', '0123456', '12:57:00', 0, 9, 'http://www.ctlottery.org/daily.htm', 4, '/logos\\/play4day.gif.*?<tr><td.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(22, 'Connecticuit - Play 4 eve', '0123456', '22:29:00', 0, 9, 'http://www.ctlottery.org/daily.htm', 4, '/logos\\/play4day.gif.*?<tr><td.*?<table.*?<\\/table>.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(23, 'Connecticuit - Cash5', '0123456', '22:29:00', 1, 35, 'http://www.ctlottery.org/cash5.htm', 5, '/last five drawings:.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/b>/i', NULL);
INSERT INTO `game_info` VALUES(24, 'Connecticuit - Classic Lotto', '25', '22:38:00', 1, 44, 'http://www.ctlottery.org/lotto.htm', 6, '/last five drawings:.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/b>/i', NULL);
INSERT INTO `game_info` VALUES(25, 'New York - Lotto', '36', '23:21:00', 1, 59, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_401_SubCat_201670_NavRoot_320.htm', 6, '/Latest Winning Numbers.*?<b>(.*?)<\\/b>.*?<table.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(26, 'Mega Millions', '25', '23:00:00', 1, 56, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_403_SubCat_337550_NavRoot_320.htm', 6, '/Latest Winning Numbers.*?<b>(.*?)<\\/b>.*?<table.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(27, 'New York - Take 5', '0123456', '23:21:00', 1, 39, 'http://www.nylottery.org/index.php', 5, '/inner_take5.gif.*?<table.*?<tr>.*?<b>(.*?):.*?<\\/b>.*?<\\/tr><tr>.*?&nbsp;(.*?), (.*?), (.*?), (.*?), (.*?)<br \\/>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(28, 'New York - Numbers day', '0123456', '12:20:00', 0, 9, 'http://www.nylottery.org/index.php', 3, '/inner_numbers.gif.*?<b>([a-zA-Z0-9 ]+) Midday:.*?<\\/b> (.)(.)(.)<b style/i', NULL);
INSERT INTO `game_info` VALUES(29, 'New York - Numbers eve', '0123456', '19:30:00', 0, 9, 'http://www.nylottery.org/index.php', 3, '/inner_numbers.gif.*?<b>([a-zA-Z0-9 ]+) Evening:.*?<\\/b> (.)(.)(.)<b style/i', NULL);
INSERT INTO `game_info` VALUES(30, 'New York - Win4 day', '0123456', '12:20:00', 0, 9, 'http://www.nylottery.org/index.php', 4, '/inner_win4.gif.*?<b>([a-zA-Z0-9 ]+) Midday:.*?<\\/b> (.)(.)(.)(.)<b style/i', NULL);
INSERT INTO `game_info` VALUES(31, 'New York - Win4 eve', '0123456', '19:30:00', 0, 9, 'http://www.nylottery.org/index.php', 4, '/inner_win4.gif.*?<b>([a-zA-Z0-9 ]+) Evening:.*?<\\/b> (.)(.)(.)(.)<b style/i', NULL);
INSERT INTO `game_info` VALUES(32, 'New York - Pick 10', '0123456', '19:30:00', 1, 80, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_406_SubCat_337553_NavRoot_300.htm', 10, '/Latest Winning Numbers.*?<b>(.*?)<\\/b>.*?<table.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<\\/table>/i', NULL);
INSERT INTO `game_info` VALUES(33, 'New Jersey - Pick 6', '15', '19:56:00', 1, 49, 'http://www.state.nj.us/lottery/games/1-2-1_pick6.shtml', 6, '/Current Winning Numbers.*?<br \\/>.*?, (.*?)<br \\/>.*?<span class=\\"blue_winningnumbers\\">      (.*?) (.*?) (.*?) (.*?) (.*?) (.*?)<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(34, 'New Jersey - Jersey Cash 5', '0123456', '19:56:00', 1, 40, 'http://www.state.nj.us/lottery/games/1-3-1_jersey_cash5.shtml', 5, '/Current Winning Numbers.*?<br \\/>.*?, (.*?)<br \\/>.*?<span class=\\"purple_winningnumbers\\">      (.*?) (.*?) (.*?) (.*?) (.*?)<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(35, 'New Jersey - Pick 4 day', '0123456', '12:57:00', 0, 9, 'http://www.state.nj.us/lottery/games/1-4-1_pick4.shtml', 4, '/Current Winning Numbers.*?Midday:.*?, (.*?)<br \\/>.*?<span class=\\"red_winningnumbers\\">      (.*?) (.*?) (.*?) (.*?)<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(36, 'New Jersey - Pick 4 eve', '0123456', '19:56:00', 0, 9, 'http://www.state.nj.us/lottery/games/1-4-1_pick4.shtml', 4, '/Current Winning Numbers.*?Evening:.*?, (.*?)<br \\/>.*?<span class=\\"red_winningnumbers\\">        (.*?) (.*?) (.*?) (.*?)<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(37, 'New Jersey - Pick 3 day', '0123456', '12:57:00', 0, 9, 'http://www.state.nj.us/lottery/games/1-5-1_pick3.shtml', 3, '/Current Winning Numbers.*?Midday:.*?, (.*?)<br \\/><span class=\\"green_winningnumbers\\">      (.*?) (.*?) (.*?)<\\/span><p>/i', NULL);
INSERT INTO `game_info` VALUES(38, 'New Jersey - Pick 3 eve', '0123456', '19:56:00', 0, 9, 'http://www.state.nj.us/lottery/games/1-5-1_pick3.shtml', 3, '/Current Winning Numbers.*?Midday:.*?, (.*?)<br \\/>.*?<span class=\\"green_winningnumbers\\">        (.*?) (.*?) (.*?)<\\/span>/i', NULL);
INSERT INTO `game_info` VALUES(39, 'Pennsylvania - Daily number day', '0123456', '12:10:00', 0, 9, 'http://www.palottery.state.pa.us/games.aspx?id=430', 3, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Mid-day:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(40, 'Pennsylvania - Daily number eve', '0123456', '19:00:00', 0, 9, 'http://www.palottery.state.pa.us/games.aspx?id=430', 3, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Evening:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<\\/p>/i', NULL);
INSERT INTO `game_info` VALUES(41, 'Pennsylvania - Big 4 day', '0123456', '12:35:00', 0, 9, 'http://www.palottery.state.pa.us/games.aspx?id=434', 4, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Mid-day:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(42, 'Pennsylvania - Big 4 eve', '0123456', '19:00:00', 0, 9, 'http://www.palottery.state.pa.us/games.aspx?id=434', 4, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Evening:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<\\/p>/i', NULL);
INSERT INTO `game_info` VALUES(43, 'Pennsylvania - Quinto day', '0123456', '12:35:00', 0, 9, 'http://www.palottery.state.pa.us/games.aspx?id=124630', 5, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Mid-day:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(44, 'Pennsylvania - Quinto eve', '0123456', '19:00:00', 0, 9, 'http://www.palottery.state.pa.us/games.aspx?id=124630', 5, '/Mid-day.*?<p class=\\"numbers-date\\".*?>(.*?)<\\/p>.*?Evening:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<\\/p>/i', NULL);
INSERT INTO `game_info` VALUES(45, 'Pennsylvania - Treasure hunt', '0123456', '13:35:00', 1, 30, 'http://www.palottery.state.pa.us/games.aspx?id=436', 5, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(46, 'Pennsylvania - Mix and match', '14', '19:00:00', 1, 19, 'http://www.palottery.state.pa.us/games.aspx?id=42', 5, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(47, 'Pennsylvania - Cash 5', '0123456', '19:00:00', 1, 43, 'http://www.palottery.state.pa.us/games.aspx?id=440', 5, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(48, 'Pennsylvania - Match 6', '25', '19:00:00', 1, 49, 'http://www.palottery.state.pa.us/games.aspx?id=444', 6, '/<p class=\\"numbers-date\\">\\s*(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', NULL);
INSERT INTO `game_info` VALUES(49, 'Massachusetts - Numbers day', '0123456', '12:45:00', 0, 9, 'http://www.masslottery.com/games/numbersgame.html', 4, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(50, 'Massachusetts - Numbers eve', '0123456', '19:58:00', 0, 9, 'http://www.masslottery.com/games/numbersgame.html', 4, '/<tr.*?<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">.*?<\\/td><td.*?>.*?<\\/td>.*?<tr.*?<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(51, 'Massachusetts - Mass cash', '25', '23:20:00', 1, 35, 'http://www.masslottery.com/games/masscash.html', 5, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(52, 'Massachusetts - Megabucks', '36', '19:58:00', 1, 42, 'http://www.masslottery.com/games/megabucks.html', 6, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(53, 'Massachusetts - Cash Windfall', '14', '23:20:00', 1, 46, 'http://www.masslottery.com/games/cashwinfall.html', 6, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', NULL);
INSERT INTO `game_info` VALUES(75, 'Deleware - Midday 3', '012345', '13:58:00', 0, 0, 'http://lottery.state.de.us/games_winnumsearch.asp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(76, 'Deleware - Play 3', '0123456', '19:57:00', 0, 0, 'http://lottery.state.de.us/games_winnumsearch.asp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(77, 'Deleware - Midday 4', '012345', '00:00:00', 0, 0, 'http://lottery.state.de.us/games_winnumsearch.asp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(78, 'Deleware - Play 4', '0123456', '19:57:00', 0, 0, 'http://lottery.state.de.us/games_winnumsearch.asp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(79, 'Deleware - Multi-Win Lotto', '135', '19:57:00', 0, 0, 'http://lottery.state.de.us/games_winnumsearch.asp', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(80, 'Maryland - Midday Pick 3', '0123456', '12:28:00', 0, 0, 'http://www.mdlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(81, 'Maryland - Pick 3', '0123456', '19:56:00', 0, 0, 'http://www.mdlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(82, 'Maryland - Midday Pick 4', '0123456', '12:28:00', 0, 0, 'http://www.mdlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(83, 'Maryland - Pick 4', '0123456', '19:56:00', 0, 0, 'http://www.mdlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(84, 'Maryland - Bonus Match 5', '0123456', '19:51:00', 0, 0, 'http://www.mdlottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(85, 'Maryland - Multi-Match', '36', '23:07:00', 0, 0, 'http://www.mdlottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(86, 'Virginia - Midday 3', '0123456', '14:00:00', 0, 0, 'http://www.valottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(87, 'Virginia - Pick 3', '0123456', '23:00:00', 0, 0, 'http://www.valottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(88, 'Virginia - Midday 4', '0123456', '14:00:00', 0, 0, 'http://www.valottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(89, 'Virginia - Pick 4', '0123456', '23:00:00', 0, 0, 'http://www.valottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(90, 'Virginia - Midday Cash 5', '0123456', '14:00:00', 0, 0, 'http://www.valottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(91, 'Virginia - Cash 5', '0123456', '23:00:00', 0, 0, 'http://www.valottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(92, 'Multi-State Win For Life', '36', '23:00:00', 0, 0, 'http://www.valottery.com/', 7, NULL, NULL);
INSERT INTO `game_info` VALUES(93, 'West Virginia - Daily 3', '012345', '18:59:00', 0, 0, 'http://www.wvlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(94, 'West Virginia - Daily 4', '012345', '18:59:00', 0, 0, 'http://www.wvlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(95, 'West Virginia - Cash 25', '1245', '18:59:00', 0, 0, 'http://www.wvlottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(96, 'North Carolina - Pick 3 Midday', '012345', '15:00:00', 0, 0, 'http://www.nc-educationlottery.org/pick3.aspx', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(97, 'North Carolina - Pick 3', '0123456', '23:22:00', 0, 0, 'http://www.nc-educationlottery.org/pick3.aspx', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(98, 'North Carolina - Cash 5', '0123456', '23:22:00', 0, 0, 'http://www.nc-educationlottery.org/pick3.aspx', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(99, 'South Carolina - Midday 3', '012345', '13:00:00', 0, 0, 'http://www.sceducationlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(100, 'South Carolina - Pick 3', '0123456', '18:59:00', 0, 0, 'http://www.sceducationlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(101, 'South Carolina - Midday 4', '012345', '13:00:00', 0, 0, 'http://www.sceducationlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(102, 'South Carolina - Pick 4', '0123456', '18:59:00', 0, 0, 'http://www.sceducationlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(103, 'South Carolina - Palmetto Cash 5', '12345', '18:59:00', 0, 0, 'http://www.sceducationlottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(104, 'South Carolina - MegaMatch 6', '25', '18:59:00', 0, 0, 'http://www.sceducationlottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(105, 'Georgia - Midday 3', '012345', '12:29:00', 0, 0, 'http://www.galottery.com/stc/home/index.jsp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(106, 'Georgia - Cash 3', '0123456', '18:59:00', 0, 0, 'http://www.galottery.com/stc/home/index.jsp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(107, 'Georgia - Midday 4', '012345', '12:29:00', 0, 0, 'http://www.galottery.com/stc/home/index.jsp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(108, 'Georgia - Cash 4', '012345', '12:29:00', 0, 0, 'http://www.galottery.com/stc/home/index.jsp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(109, 'Georgia - Fantasy 5', '0123456', '23:00:00', 0, 0, 'http://www.galottery.com/stc/home/index.jsp', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(110, 'Florida - Cash 3 Midday', '0123456', '13:30:00', 0, 0, 'http://www.flalottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(111, 'Florida - Cash 3 Evening', '0123456', '19:57:00', 0, 0, 'http://www.flalottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(112, 'Florida - Play 4 Midday', '0123456', '13:30:00', 0, 0, 'http://www.flalottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(113, 'Florida - Play 4 Evening', '0123456', '19:57:00', 0, 0, 'http://www.flalottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(114, 'Florida - Fantasy 5', '0123456', '23:15:00', 0, 0, 'http://www.flalottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(115, 'Florida - Lotto', '36', '23:00:00', 0, 0, 'http://www.flalottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(116, 'Florida - Mega Money', '25', '23:00:00', 0, 0, 'http://www.flalottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(117, 'Tennessee - Midday Cash 3', '012345', '13:28:00', 0, 0, 'http://www.tnlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(118, 'Tennessee - Cash 3', '0123456', '19:28:00', 0, 0, 'http://www.tnlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(119, 'Tennessee - Midday Cash 4', '012345', '13:28:00', 0, 0, 'http://www.tnlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(120, 'Tenessee - Cash 4', '0123456', '19:28:00', 0, 0, 'http://www.tnlottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(121, 'Tenessee - Pick 5', '135', '23:34:00', 0, 0, 'http://www.tnlottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(122, 'Tenessee - Lotto Plus', '25', '23:00:00', 0, 0, 'http://www.tnlottery.com/', 7, NULL, NULL);
INSERT INTO `game_info` VALUES(123, 'Kentucky - Midday Pick 3', '012345', '13:25:00', 0, 0, 'http://www.kylottery.com/apps/player/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(124, 'Kentucky - Pick 3', '0123456', '23:00:00', 0, 0, 'http://www.kylottery.com/apps/player/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(125, 'Kentucky - Midday Pick 4', '012345', '13:25:00', 0, 0, 'http://www.kylottery.com/apps/player/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(126, 'Kentucky - 3 Line Lotto', '25', '22:00:00', 0, 0, 'http://www.kylottery.com/apps/player/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(127, 'Kentucky - Cashball', '012345', '23:00:00', 0, 0, 'http://www.kylottery.com/apps/player/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(128, 'Ohio - Midday Pick 3', '0123456', '12:29:00', 0, 0, 'http://www.ohiolottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(129, 'Ohio - PIck 3', '0123456', '19:29:00', 0, 0, 'http://www.ohiolottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(130, 'Ohio - Midday Pick 4', '0123456', '12:29:00', 0, 0, 'http://www.ohiolottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(131, 'Ohio - Pick 4', '0123456', '19:29:00', 0, 0, 'http://www.ohiolottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(132, 'Ohio - Rolling Cash 5', '0123456', '19:29:00', 0, 0, 'http://www.ohiolottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(133, 'Ohio - Classic Lotto', '136', '19:29:00', 0, 0, 'http://www.ohiolottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(134, 'Ohio - Ten-OH Midday', '0123456', '12:29:00', 0, 0, 'http://www.ohiolottery.com/', 20, NULL, NULL);
INSERT INTO `game_info` VALUES(135, 'Ohio - Ten-OH Evening', '0123456', '19:29:00', 0, 0, 'http://www.ohiolottery.com/', 20, NULL, NULL);
INSERT INTO `game_info` VALUES(136, 'Ohio - Kicker', '25', '23:00:00', 0, 0, 'http://www.ohiolottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(137, 'Indiana - Midday 3', '012345', '13:15:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(138, 'Indiana - Daily 3', '0123456', '22:45:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(139, 'Indiana - Midday 4', '012345', '13:15:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(140, 'Indiana - Daily 4', '012345', '13:15:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(141, 'Indiana - Lucky 5 Midday', '012345', '13:15:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(142, 'Indiana - Lucky 5', '0123456', '22:45:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(143, 'Indiana - Mix and Match', '25', '22:45:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(144, 'Indiana - Lotto', '36', '22:45:00', 0, 0, 'http://www.in.gov/hoosierlottery/index1024.asp', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(145, 'Michigan - Midday 3', '0123456', '12:59:00', 0, 0, 'http://www.michigan.gov/lottery', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(146, 'Michigan - Daily 3', '0123456', '19:29:00', 0, 0, 'http://www.michigan.gov/lottery', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(147, 'Michigan - Midday 4', '0123456', '12:59:00', 0, 0, 'http://www.michigan.gov/lottery', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(148, 'Michigan - Daily 4', '0123456', '19:29:00', 0, 0, 'http://www.michigan.gov/lottery', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(149, 'Michigan - Fantasy 5', '0123456', '19:29:00', 0, 0, 'http://www.michigan.gov/lottery', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(150, 'Michigan - Classic Lotto 47', '36', '19:29:00', 0, 0, 'http://www.michigan.gov/lottery', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(151, 'Michigan - Keno', '0123456', '19:29:00', 0, 0, 'http://www.michigan.gov/lottery', 22, NULL, NULL);
INSERT INTO `game_info` VALUES(152, 'Illinois - Midday 3', '012345', '13:40:00', 0, 0, 'http://www.illinoislottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(153, 'Illinois - Daily 3', '0123456', '22:22:00', 0, 0, 'http://www.illinoislottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(154, 'Illinois - Midday 4', '012345', '13:40:00', 0, 0, 'http://www.illinoislottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(155, 'Illinois - Daily 4', '0123456', '22:22:00', 0, 0, 'http://www.illinoislottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(156, 'Illinois - Little Lotto', '0123456', '22:22:00', 0, 0, 'http://www.illinoislottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(157, 'Illinois - Lotto', '136', '22:22:00', 0, 0, 'http://www.illinoislottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(158, 'Wisconsin - Daily Pick 3', '0123456', '19:29:00', 0, 0, 'http://www.wilottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(159, 'Wisconsin - Daily Pick 4', '0123456', '19:29:00', 0, 0, 'http://www.wilottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(160, 'Wisconsin - Badger 5', '0123456', '22:05:00', 0, 0, 'http://www.wilottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(161, 'Wisconsin - Super Cash', '0123456', '22:05:00', 0, 0, 'http://www.wilottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(162, 'Wisconsin - Megabucks', '36', '22:05:00', 0, 0, 'http://www.wilottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(163, 'Minnesota - Daily 3', '0123456', '19:26:00', 0, 0, 'http://www.mnlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(164, 'Minnesota - Northstar Cash', '0123456', '19:26:00', 0, 0, 'http://www.mnlottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(165, 'Minnesota - Gopher 5', '135', '19:26:00', 0, 0, 'http://www.mnlottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(166, 'Iowa - Midday 3', '012345', '13:40:00', 0, 0, 'http://www.ialottery.com/default1.asp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(167, 'Iowa - Pick 3', '0123456', '22:20:00', 0, 0, 'http://www.ialottery.com/default1.asp', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(168, 'Iowa - Midday 4', '012345', '13:40:00', 0, 0, 'http://www.ialottery.com/default1.asp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(169, 'Iowa - Pick 4', '0123456', '22:20:00', 0, 0, 'http://www.ialottery.com/default1.asp', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(170, 'Iowa - Cash Game', '012345', '19:28:00', 0, 0, 'http://www.ialottery.com/default1.asp', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(171, 'Missouri - Midday Pick 3', '0123456', '13:45:00', 0, 0, 'http://www.molottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(172, 'Missouri - Pick 3', '0123456', '19:57:00', 0, 0, 'http://www.molottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(173, 'Missouri - Midday Pick 4', '0123456', '13:45:00', 0, 0, 'http://www.molottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(174, 'Missouri - Pick 4', '0123456', '19:57:00', 0, 0, 'http://www.molottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(175, 'Missouri - Show Me Cash', '0123456', '19:57:00', 0, 0, 'http://www.molottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(176, 'Missouri - Loto', '36', '19:57:00', 0, 0, 'http://www.molottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(177, 'Louisiana - Pick 3', '0123456', '22:59:00', 0, 0, 'http://www.louisianalottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(178, 'Louisiana - Pick 4', '0123456', '22:59:00', 0, 0, 'http://www.louisianalottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(179, 'Louisiana - Easy 5', '36', '22:59:00', 0, 0, 'http://www.louisianalottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(180, 'Louisiana - Lotto', '36', '22:59:00', 0, 0, 'http://www.louisianalottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(181, 'Puerto Rico - Pega 2', '012345', '22:00:00', 0, 0, 'http://www.alllotto.com/latest_puerto_rico_lottery_results.php', 2, NULL, NULL);
INSERT INTO `game_info` VALUES(182, 'Puerto Rico - Pega 3', '012345', '22:00:00', 0, 0, 'http://www.alllotto.com/latest_puerto_rico_lottery_results.php', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(183, 'Puerto Rico - Pega 4', '012345', '22:00:00', 0, 0, 'http://www.alllotto.com/latest_puerto_rico_lottery_results.php', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(184, 'Puerto Rico - Loto', '35', '22:00:00', 0, 0, 'http://www.alllotto.com/latest_puerto_rico_lottery_results.php', 7, NULL, NULL);
INSERT INTO `game_info` VALUES(185, 'Texas - Pick 3 Day', '012345', '13:27:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(186, 'Texas - Pick 3 Night', '012345', '23:12:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(187, 'Texas - Daily 4', '012345', '13:27:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(188, 'Texas - Daily 4 Night', '012345', '23:12:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(189, 'Texas - Cash 5', '012345', '23:12:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(190, 'Texas - Lotto Texas', '36', '23:12:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(191, 'Texas - Texas Two Step', '14', '23:12:00', 0, 0, 'http://www.txlottery.org/export/sites/default/index.html', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(192, 'Oklahoma - Pick 3', '0123456', '22:58:00', 0, 0, 'http://www.lottery.ok.gov/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(193, 'Oklahoma - Cash 5', '246', '22:58:00', 0, 0, 'http://www.lottery.ok.gov/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(194, 'Kansas - Pick 3', '0123456', '22:10:00', 0, 0, 'http://www.kslottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(195, 'Kansas - Super Kansas Cash', '136', '22:05:00', 0, 0, 'http://www.kslottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(196, '2By2', '0123456', '22:30:00', 0, 0, 'http://www.kslottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(197, 'Nebraska - Pick 3', '012345', '21:40:00', 0, 0, 'http://www.nelottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(198, 'Nebraska - Pick 5', '012345', '21:40:00', 0, 0, 'http://www.nelottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(199, 'South Dakota - Dakota Cash', '36', '22:00:00', 0, 0, 'http://www.sdlottery.org/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(200, 'Wild Card 2', '36', '23:00:00', 0, 0, 'http://www.sdlottery.org/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(201, 'Montana - Montana Cash', '36', '22:30:00', 0, 0, 'http://www.montanalottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(202, 'Colorado - Cash 5', '012345', '21:35:00', 0, 0, 'http://www.coloradolottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(203, 'Colorado - Colorado Lotto', '36', '21:35:00', 0, 0, 'http://www.coloradolottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(204, 'New Mexico - Pick 3', '012345', '01:10:00', 0, 0, 'http://www.nmlottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(205, 'New Mexico - Road Runner Cash', '0123456', '01:10:00', 0, 0, 'http://www.nmlottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(206, 'Arizona - Pick 3', '012345', '01:25:00', 0, 0, 'http://www.arizonalottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(207, 'Arizona - Pick 5', '012345', '01:25:00', 0, 0, 'http://www.arizonalottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(208, 'Arizona - The Pick', '36', '01:25:00', 0, 0, 'http://www.arizonalottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(209, 'Idaho - Pick 3', '0123456', '21:59:00', 0, 0, 'http://www.idaholottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(210, 'Washington - Daily', '0123456', '23:00:00', 0, 0, 'http://www.walottery.com/', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(211, 'Washington - Match 4', '0123456', '23:00:00', 0, 0, 'http://www.walottery.com/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(212, 'Washington - Hit 5', '136', '23:00:00', 0, 0, 'http://www.walottery.com/', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(213, 'Washington - Lotto', '136', '23:00:00', 0, 0, 'http://www.walottery.com/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(214, 'Washington Keno', '0123456', '23:00:00', 0, 0, 'http://www.walottery.com/', 20, NULL, NULL);
INSERT INTO `game_info` VALUES(215, 'Oregon - Pick 4 1pm', '0123456', '16:00:00', 0, 0, 'http://www.oregonlottery.org/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(216, 'Oregon - Pick 4 4pm', '0123456', '19:00:00', 0, 0, 'http://www.oregonlottery.org/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(217, 'Oregon - Pick 4 7pm', '0123456', '22:00:00', 0, 0, 'http://www.oregonlottery.org/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(218, 'Oregon - Pick 4 10pm', '0123456', '01:00:00', 0, 0, 'http://www.oregonlottery.org/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(219, 'Oregon - Win For Life', '136', '21:30:00', 0, 0, 'http://www.oregonlottery.org/', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(220, 'Oregon - Megabucks', '136', '22:29:00', 0, 0, 'http://www.oregonlottery.org/', 6, NULL, NULL);
INSERT INTO `game_info` VALUES(221, 'Oregon - Lucky Lines', '0123456', '21:00:00', 0, 0, 'http://www.oregonlottery.org/', 8, NULL, NULL);
INSERT INTO `game_info` VALUES(222, 'California - Midday 3', '0123456', '17:05:00', 0, 0, 'http://www.calottery.com/default.htm', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(223, 'California - Daily 3', '0123456', '21:35:00', 0, 0, 'http://www.calottery.com/default.htm', 3, NULL, NULL);
INSERT INTO `game_info` VALUES(224, 'California - Daily 4', '0123456', '21:35:00', 0, 0, 'http://www.calottery.com/default.htm', 4, NULL, NULL);
INSERT INTO `game_info` VALUES(225, 'California - Fantasy 5', '0123456', '21:35:00', 0, 0, 'http://www.calottery.com/default.htm', 5, NULL, NULL);
INSERT INTO `game_info` VALUES(226, 'California - SuperLotto Plus', '36', '22:57:00', 0, 0, 'http://www.calottery.com/default.htm', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rtblgame`
--

CREATE TABLE `rtblgame` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtblgame`
--

INSERT INTO `rtblgame` VALUES(18, 44);
INSERT INTO `rtblgame` VALUES(17, 44);
INSERT INTO `rtblgame` VALUES(16, 44);
INSERT INTO `rtblgame` VALUES(15, 44);
INSERT INTO `rtblgame` VALUES(3, 59);
INSERT INTO `rtblgame` VALUES(2, 59);
INSERT INTO `rtblgame` VALUES(13, 38);
INSERT INTO `rtblgame` VALUES(14, 38);
INSERT INTO `rtblgame` VALUES(39, 37);
INSERT INTO `rtblgame` VALUES(40, 37);
INSERT INTO `rtblgame` VALUES(41, 37);
INSERT INTO `rtblgame` VALUES(42, 37);
INSERT INTO `rtblgame` VALUES(43, 37);
INSERT INTO `rtblgame` VALUES(44, 37);
INSERT INTO `rtblgame` VALUES(45, 37);
INSERT INTO `rtblgame` VALUES(46, 37);
INSERT INTO `rtblgame` VALUES(47, 37);
INSERT INTO `rtblgame` VALUES(48, 37);
INSERT INTO `rtblgame` VALUES(31, 31);
INSERT INTO `rtblgame` VALUES(30, 31);
INSERT INTO `rtblgame` VALUES(27, 31);
INSERT INTO `rtblgame` VALUES(32, 31);
INSERT INTO `rtblgame` VALUES(29, 31);
INSERT INTO `rtblgame` VALUES(28, 31);
INSERT INTO `rtblgame` VALUES(25, 31);
INSERT INTO `rtblgame` VALUES(33, 29);
INSERT INTO `rtblgame` VALUES(36, 29);
INSERT INTO `rtblgame` VALUES(35, 29);
INSERT INTO `rtblgame` VALUES(38, 29);
INSERT INTO `rtblgame` VALUES(37, 29);
INSERT INTO `rtblgame` VALUES(34, 29);
INSERT INTO `rtblgame` VALUES(11, 28);
INSERT INTO `rtblgame` VALUES(10, 28);
INSERT INTO `rtblgame` VALUES(9, 28);
INSERT INTO `rtblgame` VALUES(8, 28);
INSERT INTO `rtblgame` VALUES(50, 21);
INSERT INTO `rtblgame` VALUES(49, 21);
INSERT INTO `rtblgame` VALUES(52, 21);
INSERT INTO `rtblgame` VALUES(51, 21);
INSERT INTO `rtblgame` VALUES(53, 21);
INSERT INTO `rtblgame` VALUES(7, 19);
INSERT INTO `rtblgame` VALUES(6, 19);
INSERT INTO `rtblgame` VALUES(5, 19);
INSERT INTO `rtblgame` VALUES(4, 19);
INSERT INTO `rtblgame` VALUES(22, 7);
INSERT INTO `rtblgame` VALUES(21, 7);
INSERT INTO `rtblgame` VALUES(20, 7);
INSERT INTO `rtblgame` VALUES(19, 7);
INSERT INTO `rtblgame` VALUES(24, 7);
INSERT INTO `rtblgame` VALUES(23, 7);
INSERT INTO `rtblgame` VALUES(26, 31);
INSERT INTO `rtblgame` VALUES(75, 8);
INSERT INTO `rtblgame` VALUES(76, 8);
INSERT INTO `rtblgame` VALUES(77, 8);
INSERT INTO `rtblgame` VALUES(78, 8);
INSERT INTO `rtblgame` VALUES(79, 8);
INSERT INTO `rtblgame` VALUES(80, 20);
INSERT INTO `rtblgame` VALUES(81, 20);
INSERT INTO `rtblgame` VALUES(82, 20);
INSERT INTO `rtblgame` VALUES(83, 20);
INSERT INTO `rtblgame` VALUES(84, 20);
INSERT INTO `rtblgame` VALUES(85, 20);
INSERT INTO `rtblgame` VALUES(86, 45);
INSERT INTO `rtblgame` VALUES(87, 45);
INSERT INTO `rtblgame` VALUES(88, 45);
INSERT INTO `rtblgame` VALUES(89, 45);
INSERT INTO `rtblgame` VALUES(90, 45);
INSERT INTO `rtblgame` VALUES(91, 45);
INSERT INTO `rtblgame` VALUES(93, 47);
INSERT INTO `rtblgame` VALUES(94, 47);
INSERT INTO `rtblgame` VALUES(95, 47);
INSERT INTO `rtblgame` VALUES(96, 32);
INSERT INTO `rtblgame` VALUES(97, 32);
INSERT INTO `rtblgame` VALUES(98, 32);
INSERT INTO `rtblgame` VALUES(99, 39);
INSERT INTO `rtblgame` VALUES(100, 39);
INSERT INTO `rtblgame` VALUES(101, 39);
INSERT INTO `rtblgame` VALUES(102, 39);
INSERT INTO `rtblgame` VALUES(103, 39);
INSERT INTO `rtblgame` VALUES(104, 39);
INSERT INTO `rtblgame` VALUES(105, 11);
INSERT INTO `rtblgame` VALUES(106, 11);
INSERT INTO `rtblgame` VALUES(107, 11);
INSERT INTO `rtblgame` VALUES(108, 11);
INSERT INTO `rtblgame` VALUES(109, 11);
INSERT INTO `rtblgame` VALUES(110, 10);
INSERT INTO `rtblgame` VALUES(111, 10);
INSERT INTO `rtblgame` VALUES(112, 10);
INSERT INTO `rtblgame` VALUES(113, 10);
INSERT INTO `rtblgame` VALUES(114, 10);
INSERT INTO `rtblgame` VALUES(115, 10);
INSERT INTO `rtblgame` VALUES(116, 10);
INSERT INTO `rtblgame` VALUES(117, 41);
INSERT INTO `rtblgame` VALUES(118, 41);
INSERT INTO `rtblgame` VALUES(119, 41);
INSERT INTO `rtblgame` VALUES(120, 41);
INSERT INTO `rtblgame` VALUES(121, 41);
INSERT INTO `rtblgame` VALUES(122, 41);
INSERT INTO `rtblgame` VALUES(123, 17);
INSERT INTO `rtblgame` VALUES(124, 17);
INSERT INTO `rtblgame` VALUES(125, 17);
INSERT INTO `rtblgame` VALUES(126, 17);
INSERT INTO `rtblgame` VALUES(127, 17);
INSERT INTO `rtblgame` VALUES(128, 34);
INSERT INTO `rtblgame` VALUES(129, 34);
INSERT INTO `rtblgame` VALUES(130, 34);
INSERT INTO `rtblgame` VALUES(131, 34);
INSERT INTO `rtblgame` VALUES(132, 34);
INSERT INTO `rtblgame` VALUES(133, 34);
INSERT INTO `rtblgame` VALUES(134, 34);
INSERT INTO `rtblgame` VALUES(135, 34);
INSERT INTO `rtblgame` VALUES(136, 34);
INSERT INTO `rtblgame` VALUES(137, 14);
INSERT INTO `rtblgame` VALUES(138, 14);
INSERT INTO `rtblgame` VALUES(139, 14);
INSERT INTO `rtblgame` VALUES(140, 14);
INSERT INTO `rtblgame` VALUES(141, 14);
INSERT INTO `rtblgame` VALUES(142, 14);
INSERT INTO `rtblgame` VALUES(143, 14);
INSERT INTO `rtblgame` VALUES(144, 14);
INSERT INTO `rtblgame` VALUES(145, 22);
INSERT INTO `rtblgame` VALUES(146, 22);
INSERT INTO `rtblgame` VALUES(147, 22);
INSERT INTO `rtblgame` VALUES(148, 22);
INSERT INTO `rtblgame` VALUES(149, 22);
INSERT INTO `rtblgame` VALUES(150, 22);
INSERT INTO `rtblgame` VALUES(151, 22);
INSERT INTO `rtblgame` VALUES(152, 60);
INSERT INTO `rtblgame` VALUES(153, 60);
INSERT INTO `rtblgame` VALUES(154, 60);
INSERT INTO `rtblgame` VALUES(155, 60);
INSERT INTO `rtblgame` VALUES(156, 60);
INSERT INTO `rtblgame` VALUES(157, 60);
INSERT INTO `rtblgame` VALUES(158, 48);
INSERT INTO `rtblgame` VALUES(159, 48);
INSERT INTO `rtblgame` VALUES(160, 48);
INSERT INTO `rtblgame` VALUES(161, 48);
INSERT INTO `rtblgame` VALUES(162, 48);
INSERT INTO `rtblgame` VALUES(163, 61);
INSERT INTO `rtblgame` VALUES(164, 61);
INSERT INTO `rtblgame` VALUES(165, 61);
INSERT INTO `rtblgame` VALUES(166, 15);
INSERT INTO `rtblgame` VALUES(167, 15);
INSERT INTO `rtblgame` VALUES(168, 15);
INSERT INTO `rtblgame` VALUES(169, 15);
INSERT INTO `rtblgame` VALUES(170, 15);
INSERT INTO `rtblgame` VALUES(171, 24);
INSERT INTO `rtblgame` VALUES(172, 24);
INSERT INTO `rtblgame` VALUES(173, 24);
INSERT INTO `rtblgame` VALUES(174, 24);
INSERT INTO `rtblgame` VALUES(175, 24);
INSERT INTO `rtblgame` VALUES(176, 24);
INSERT INTO `rtblgame` VALUES(177, 18);
INSERT INTO `rtblgame` VALUES(178, 18);
INSERT INTO `rtblgame` VALUES(179, 18);
INSERT INTO `rtblgame` VALUES(180, 18);
INSERT INTO `rtblgame` VALUES(181, 62);
INSERT INTO `rtblgame` VALUES(182, 62);
INSERT INTO `rtblgame` VALUES(183, 62);
INSERT INTO `rtblgame` VALUES(184, 62);
INSERT INTO `rtblgame` VALUES(185, 42);
INSERT INTO `rtblgame` VALUES(186, 42);
INSERT INTO `rtblgame` VALUES(187, 42);
INSERT INTO `rtblgame` VALUES(188, 42);
INSERT INTO `rtblgame` VALUES(189, 42);
INSERT INTO `rtblgame` VALUES(190, 42);
INSERT INTO `rtblgame` VALUES(191, 42);
INSERT INTO `rtblgame` VALUES(192, 35);
INSERT INTO `rtblgame` VALUES(193, 35);
INSERT INTO `rtblgame` VALUES(194, 16);
INSERT INTO `rtblgame` VALUES(195, 16);
INSERT INTO `rtblgame` VALUES(197, 26);
INSERT INTO `rtblgame` VALUES(198, 26);
INSERT INTO `rtblgame` VALUES(199, 40);
INSERT INTO `rtblgame` VALUES(201, 25);
INSERT INTO `rtblgame` VALUES(202, 6);
INSERT INTO `rtblgame` VALUES(203, 6);
INSERT INTO `rtblgame` VALUES(204, 30);
INSERT INTO `rtblgame` VALUES(205, 30);
INSERT INTO `rtblgame` VALUES(206, 3);
INSERT INTO `rtblgame` VALUES(207, 3);
INSERT INTO `rtblgame` VALUES(208, 3);
INSERT INTO `rtblgame` VALUES(209, 13);
INSERT INTO `rtblgame` VALUES(210, 46);
INSERT INTO `rtblgame` VALUES(211, 46);
INSERT INTO `rtblgame` VALUES(212, 46);
INSERT INTO `rtblgame` VALUES(213, 46);
INSERT INTO `rtblgame` VALUES(214, 46);
INSERT INTO `rtblgame` VALUES(215, 36);
INSERT INTO `rtblgame` VALUES(216, 36);
INSERT INTO `rtblgame` VALUES(217, 36);
INSERT INTO `rtblgame` VALUES(218, 36);
INSERT INTO `rtblgame` VALUES(219, 36);
INSERT INTO `rtblgame` VALUES(220, 36);
INSERT INTO `rtblgame` VALUES(221, 36);
INSERT INTO `rtblgame` VALUES(222, 5);
INSERT INTO `rtblgame` VALUES(223, 5);
INSERT INTO `rtblgame` VALUES(224, 5);
INSERT INTO `rtblgame` VALUES(225, 5);
INSERT INTO `rtblgame` VALUES(226, 5);
INSERT INTO `rtblgame` VALUES(1, 67);
INSERT INTO `rtblgame` VALUES(1, 3);
INSERT INTO `rtblgame` VALUES(1, 7);
INSERT INTO `rtblgame` VALUES(1, 6);
INSERT INTO `rtblgame` VALUES(1, 8);
INSERT INTO `rtblgame` VALUES(1, 10);
INSERT INTO `rtblgame` VALUES(1, 13);
INSERT INTO `rtblgame` VALUES(1, 14);
INSERT INTO `rtblgame` VALUES(1, 15);
INSERT INTO `rtblgame` VALUES(1, 16);
INSERT INTO `rtblgame` VALUES(1, 17);
INSERT INTO `rtblgame` VALUES(1, 18);
INSERT INTO `rtblgame` VALUES(1, 19);
INSERT INTO `rtblgame` VALUES(1, 24);
INSERT INTO `rtblgame` VALUES(1, 25);
INSERT INTO `rtblgame` VALUES(1, 26);
INSERT INTO `rtblgame` VALUES(1, 28);
INSERT INTO `rtblgame` VALUES(1, 30);
INSERT INTO `rtblgame` VALUES(1, 32);
INSERT INTO `rtblgame` VALUES(1, 33);
INSERT INTO `rtblgame` VALUES(1, 35);
INSERT INTO `rtblgame` VALUES(1, 36);
INSERT INTO `rtblgame` VALUES(1, 37);
INSERT INTO `rtblgame` VALUES(1, 38);
INSERT INTO `rtblgame` VALUES(1, 39);
INSERT INTO `rtblgame` VALUES(1, 40);
INSERT INTO `rtblgame` VALUES(1, 41);
INSERT INTO `rtblgame` VALUES(1, 44);
INSERT INTO `rtblgame` VALUES(1, 46);
INSERT INTO `rtblgame` VALUES(1, 47);
INSERT INTO `rtblgame` VALUES(1, 48);
INSERT INTO `rtblgame` VALUES(1, 61);
INSERT INTO `rtblgame` VALUES(1, 9);
INSERT INTO `rtblgame` VALUES(2, 19);
INSERT INTO `rtblgame` VALUES(2, 28);
INSERT INTO `rtblgame` VALUES(2, 44);
INSERT INTO `rtblgame` VALUES(3, 19);
INSERT INTO `rtblgame` VALUES(3, 28);
INSERT INTO `rtblgame` VALUES(3, 44);
INSERT INTO `rtblgame` VALUES(12, 8);
INSERT INTO `rtblgame` VALUES(12, 13);
INSERT INTO `rtblgame` VALUES(12, 15);
INSERT INTO `rtblgame` VALUES(12, 16);
INSERT INTO `rtblgame` VALUES(12, 25);
INSERT INTO `rtblgame` VALUES(12, 28);
INSERT INTO `rtblgame` VALUES(12, 30);
INSERT INTO `rtblgame` VALUES(12, 33);
INSERT INTO `rtblgame` VALUES(12, 35);
INSERT INTO `rtblgame` VALUES(12, 40);
INSERT INTO `rtblgame` VALUES(12, 46);
INSERT INTO `rtblgame` VALUES(12, 47);
INSERT INTO `rtblgame` VALUES(12, 61);
INSERT INTO `rtblgame` VALUES(12, 9);
INSERT INTO `rtblgame` VALUES(92, 11);
INSERT INTO `rtblgame` VALUES(92, 17);
INSERT INTO `rtblgame` VALUES(92, 45);
INSERT INTO `rtblgame` VALUES(196, 16);
INSERT INTO `rtblgame` VALUES(196, 26);
INSERT INTO `rtblgame` VALUES(196, 33);
INSERT INTO `rtblgame` VALUES(200, 13);
INSERT INTO `rtblgame` VALUES(200, 25);
INSERT INTO `rtblgame` VALUES(200, 33);
INSERT INTO `rtblgame` VALUES(200, 40);


-- --------------------------------------------------------

--
-- Table structure for table `tbl_gamesplayed`
--

CREATE TABLE `tbl_gamesplayed` (
  `id` int(11) NOT NULL,
  `state_id` int(11) default NULL,
  `date` text,
  `number` varchar(50) default NULL,
  `Time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  KEY `state_id` (`state_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gamesplayed`
--

INSERT INTO `tbl_gamesplayed` VALUES(5, 19, '01/31/2009', '060800', '2009-02-01 14:01:11');
INSERT INTO `tbl_gamesplayed` VALUES(7, 19, '01/31/2009', '08070005', '2009-02-01 14:01:13');
INSERT INTO `tbl_gamesplayed` VALUES(9, 28, '01/31/2009', '060800', '2009-02-01 14:01:14');
INSERT INTO `tbl_gamesplayed` VALUES(11, 28, '01/31/2009', '08070005', '2009-02-01 14:01:14');
INSERT INTO `tbl_gamesplayed` VALUES(14, 38, '01/31/2009', '06010700', '2009-02-01 14:01:14');
INSERT INTO `tbl_gamesplayed` VALUES(16, 44, '02/01/2009', '060800', '2009-02-01 14:01:15');
INSERT INTO `tbl_gamesplayed` VALUES(18, 44, '02/01/2009', '08070005', '2009-02-01 14:01:15');
INSERT INTO `tbl_gamesplayed` VALUES(20, 7, '01/31/2009', '080406', '2009-02-01 14:01:16');
INSERT INTO `tbl_gamesplayed` VALUES(22, 7, '01/31/2009', '02010406', '2009-02-01 14:01:16');
INSERT INTO `tbl_gamesplayed` VALUES(23, 7, '01/31/2009', '0610172032', '2009-02-01 14:01:17');
INSERT INTO `tbl_gamesplayed` VALUES(27, 31, '01/31/2009', '0509182733', '2009-02-01 14:01:17');
INSERT INTO `tbl_gamesplayed` VALUES(29, 31, '01/31/2009', '080809', '2009-02-01 14:01:18');
INSERT INTO `tbl_gamesplayed` VALUES(31, 31, '01/31/2009', '03000200', '2009-02-01 14:01:19');
INSERT INTO `tbl_gamesplayed` VALUES(32, 31, '01/31/2009', '0406081925273031323438444549515859657378', '2009-02-01 14:01:19');
INSERT INTO `tbl_gamesplayed` VALUES(34, 29, '01/31/2009', '1617313240', '2009-02-01 14:01:19');
INSERT INTO `tbl_gamesplayed` VALUES(36, 29, '01/31/2009', '01040000', '2009-02-01 14:01:19');
INSERT INTO `tbl_gamesplayed` VALUES(38, 29, '02/01/2009', '040202', '2009-02-01 14:01:20');
INSERT INTO `tbl_gamesplayed` VALUES(40, 37, '02/01/2009', '060900', '2009-02-01 14:01:20');
INSERT INTO `tbl_gamesplayed` VALUES(42, 37, '02/01/2009', '00010805', '2009-02-01 14:01:20');
INSERT INTO `tbl_gamesplayed` VALUES(44, 37, '01/31/2009', '0908060305', '2009-02-01 14:01:20');
INSERT INTO `tbl_gamesplayed` VALUES(47, 37, '01/31/2009', '0314182033', '2009-02-01 14:01:21');
INSERT INTO `tbl_gamesplayed` VALUES(50, 21, '01/31/2009', '02020009', '2009-02-01 14:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `state_name` varchar(50) default NULL,
  PRIMARY KEY  (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` VALUES(1, 'Alabama');
INSERT INTO `tbl_state` VALUES(2, 'Alaska');
INSERT INTO `tbl_state` VALUES(3, 'Arizona');
INSERT INTO `tbl_state` VALUES(4, 'Arkansas');
INSERT INTO `tbl_state` VALUES(5, 'California');
INSERT INTO `tbl_state` VALUES(6, 'Colorado');
INSERT INTO `tbl_state` VALUES(7, 'Connecticut');
INSERT INTO `tbl_state` VALUES(8, 'Delaware');
INSERT INTO `tbl_state` VALUES(9, 'District Of Columbia');
INSERT INTO `tbl_state` VALUES(10, 'Florida');
INSERT INTO `tbl_state` VALUES(11, 'Georgia');
INSERT INTO `tbl_state` VALUES(12, 'Hawaii');
INSERT INTO `tbl_state` VALUES(13, 'Idaho');
INSERT INTO `tbl_state` VALUES(14, 'Indiana');
INSERT INTO `tbl_state` VALUES(15, 'Iowa');
INSERT INTO `tbl_state` VALUES(16, 'Kansas');
INSERT INTO `tbl_state` VALUES(17, 'Kentucky');
INSERT INTO `tbl_state` VALUES(18, 'Louisiana');
INSERT INTO `tbl_state` VALUES(19, 'Maine');
INSERT INTO `tbl_state` VALUES(20, 'Maryland');
INSERT INTO `tbl_state` VALUES(21, 'Massachusetts');
INSERT INTO `tbl_state` VALUES(22, 'Michigan');
INSERT INTO `tbl_state` VALUES(23, 'Mississippi');
INSERT INTO `tbl_state` VALUES(24, 'Missouri');
INSERT INTO `tbl_state` VALUES(25, 'Montana');
INSERT INTO `tbl_state` VALUES(26, 'Nebraska');
INSERT INTO `tbl_state` VALUES(27, 'Nevada');
INSERT INTO `tbl_state` VALUES(28, 'New Hampshire');
INSERT INTO `tbl_state` VALUES(29, 'New Jersey');
INSERT INTO `tbl_state` VALUES(30, 'New Mexico');
INSERT INTO `tbl_state` VALUES(31, 'New York');
INSERT INTO `tbl_state` VALUES(32, 'North Carolina');
INSERT INTO `tbl_state` VALUES(33, 'North Dakota');
INSERT INTO `tbl_state` VALUES(34, 'Ohio');
INSERT INTO `tbl_state` VALUES(35, 'Oklahoma');
INSERT INTO `tbl_state` VALUES(36, 'Oregon');
INSERT INTO `tbl_state` VALUES(37, 'Pennsylvania');
INSERT INTO `tbl_state` VALUES(38, 'Rhode Island');
INSERT INTO `tbl_state` VALUES(39, 'South Carolina');
INSERT INTO `tbl_state` VALUES(40, 'South Dakota');
INSERT INTO `tbl_state` VALUES(41, 'Tennessee');
INSERT INTO `tbl_state` VALUES(42, 'Texas');
INSERT INTO `tbl_state` VALUES(43, 'Utah');
INSERT INTO `tbl_state` VALUES(44, 'Vermont');
INSERT INTO `tbl_state` VALUES(45, 'Virginia');
INSERT INTO `tbl_state` VALUES(46, 'Washington');
INSERT INTO `tbl_state` VALUES(47, 'West Virginia');
INSERT INTO `tbl_state` VALUES(48, 'Wisconsin');
INSERT INTO `tbl_state` VALUES(49, 'Wyoming');
INSERT INTO `tbl_state` VALUES(50, 'Alberta');
INSERT INTO `tbl_state` VALUES(51, 'British Columbia');
INSERT INTO `tbl_state` VALUES(52, 'Manitoba');
INSERT INTO `tbl_state` VALUES(53, 'New Brunswick');
INSERT INTO `tbl_state` VALUES(54, 'Nova Scotia');
INSERT INTO `tbl_state` VALUES(55, 'Ontario');
INSERT INTO `tbl_state` VALUES(56, 'Prince Edward Island');
INSERT INTO `tbl_state` VALUES(57, 'Quebec');
INSERT INTO `tbl_state` VALUES(58, 'Toronto');
INSERT INTO `tbl_state` VALUES(59, 'Tristate');
INSERT INTO `tbl_state` VALUES(60, 'Illinois');
INSERT INTO `tbl_state` VALUES(61, 'Minnesota');
INSERT INTO `tbl_state` VALUES(62, 'Puerto Rico');
-- INSERT INTO `tbl_state` VALUES(63, 'Hot Lotto Sizzler');
-- INSERT INTO `tbl_state` VALUES(64, 'Multi-state Win For Life');
-- INSERT INTO `tbl_state` VALUES(65, '2by2');
-- INSERT INTO `tbl_state` VALUES(66, 'Wild Card 2');
-- INSERT INTO `tbl_state` VALUES(67, 'Powerball');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `errors`
--
ALTER TABLE `errors`
  ADD CONSTRAINT `errors_fk` FOREIGN KEY (`game_id`) REFERENCES `game_info` (`id`),
  ADD CONSTRAINT `errors_fk1` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`state_id`);

--
-- Constraints for table `rtblgame`
--
ALTER TABLE `rtblgame`
  ADD CONSTRAINT `rtblgame_fk` FOREIGN KEY (`id`) REFERENCES `game_info` (`id`),
  ADD CONSTRAINT `rtblgame_fk1` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`state_id`);

--
-- Constraints for table `tbl_gamesplayed`
--
ALTER TABLE `tbl_gamesplayed`
  ADD CONSTRAINT `tbl_fk` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`state_id`),
  ADD CONSTRAINT `tbl_gamesplayed_fk` FOREIGN KEY (`id`) REFERENCES `game_info` (`id`);
  
DROP TABLE IF EXISTS `login_errors`;
CREATE TABLE `login_errors` (
  `iduser_acrivity` int(11) NOT NULL auto_increment,
  `logged` tinyint(1) default NULL,
  `date` datetime default NULL,
  `ipaddress` varchar(45) default NULL,
  `browser` varchar(200) default NULL,
  `emailaddress` varchar(45) default NULL,
  PRIMARY KEY  (`iduser_acrivity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_errors`
--

/*!40000 ALTER TABLE `login_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_errors` ENABLE KEYS */;


--
-- Definition of table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles` (
  `roleid` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_roles`
--

/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES  (1,'Admin'),
 (2,'User'),(3,'Super Admin'),(4,'Guest');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;


--
-- Definition of table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `zip` varchar(15) default NULL,
  `birthday` date default NULL,
  `gender` char(1) default NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `access_level` int(11) NOT NULL,
  `question1` varchar(200) default NULL,
  `question2` varchar(200) default NULL,
  `answer1` varchar(200) default NULL,
  `answer2` varchar(200) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `roles_users` (`access_level`),
  CONSTRAINT `roles_users` FOREIGN KEY (`access_level`) REFERENCES `tbl_roles` (`roleid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`