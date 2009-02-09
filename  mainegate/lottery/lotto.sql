-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2008 at 09:49 PM
-- Server version: 3.23.32
-- PHP Version: 5.2.5


--
-- Database: `lotto`
--

-- --------------------------------------------------------

--
-- Table structure for table `connecticuit_cash5`
--

CREATE TABLE IF NOT EXISTS `connecticuit_cash5` (
  `connecticuit_cash5_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`connecticuit_cash5_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `connecticuit_cash5`
--

INSERT INTO `connecticuit_cash5` (`connecticuit_cash5_id`, `date`, `number`) VALUES
(1, '11/28/2008', '02-07-19-21-28'),
(2, '11/29/2008', '01-09-15-21-23'),
(3, '11/30/2008', '11-16-24-27-34');

-- --------------------------------------------------------

--
-- Table structure for table `connecticuit_classic_lotto`
--

CREATE TABLE IF NOT EXISTS `connecticuit_classic_lotto` (
  `connecticuit_classic_lotto_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`connecticuit_classic_lotto_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `connecticuit_classic_lotto`
--

INSERT INTO `connecticuit_classic_lotto` (`connecticuit_classic_lotto_id`, `date`, `number`) VALUES
(1, '11/28/2008', '09-12-19-20-22-26');

-- --------------------------------------------------------

--
-- Table structure for table `connecticuit_play3_day`
--

CREATE TABLE IF NOT EXISTS `connecticuit_play3_day` (
  `connecticuit_play3_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`connecticuit_play3_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `connecticuit_play3_day`
--

INSERT INTO `connecticuit_play3_day` (`connecticuit_play3_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '9-2-9'),
(2, '11/30/2008', '2-8-9');

-- --------------------------------------------------------

--
-- Table structure for table `connecticuit_play3_eve`
--

CREATE TABLE IF NOT EXISTS `connecticuit_play3_eve` (
  `connecticuit_play3_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`connecticuit_play3_eve_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `connecticuit_play3_eve`
--


-- --------------------------------------------------------

--
-- Table structure for table `connecticuit_play4_day`
--

CREATE TABLE IF NOT EXISTS `connecticuit_play4_day` (
  `connecticuit_play4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`connecticuit_play4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `connecticuit_play4_day`
--

INSERT INTO `connecticuit_play4_day` (`connecticuit_play4_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '8-9-9-9'),
(2, '11/30/2008', '0-2-6-3');

-- --------------------------------------------------------

--
-- Table structure for table `connecticuit_play4_eve`
--

CREATE TABLE IF NOT EXISTS `connecticuit_play4_eve` (
  `connecticuit_play4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`connecticuit_play4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `connecticuit_play4_eve`
--

INSERT INTO `connecticuit_play4_eve` (`connecticuit_play4_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '8-7-0-1'),
(2, '11/29/2008', '8-0-5-7'),
(3, '11/30/2008', '03-03-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE IF NOT EXISTS `errors` (
  `errors` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `game_name` varchar(100) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `query` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `errors`
--


-- --------------------------------------------------------

--
-- Table structure for table `game_info`
--

CREATE TABLE IF NOT EXISTS `game_info` (
  `id` int(11) NOT NULL auto_increment,
  `game_name` varchar(40) NOT NULL,
  `time` time NOT NULL,
  `occurance` varchar(8) NOT NULL,
  `from` int(2) unsigned zerofill NOT NULL,
  `to` int(2) unsigned zerofill NOT NULL,
  `url` varchar(100) NOT NULL,
  `spots` int(2) unsigned zerofill NOT NULL,
  `regular_expresion` text,
  `table_name` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `game_info`
--

INSERT INTO `game_info` (`id`, `game_name`, `time`, `occurance`, `from`, `to`, `url`, `spots`, `regular_expresion`, `table_name`) VALUES
(1, 'Powerball', '22:59:00', '36', 01, 55, 'http://www.mainelottery.com/games/powerballPrevious.shtml', 06, '/<tr class=\\"even\\"><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', 'maine_powerball'),
(2, 'Tristate - Megabucks', '19:50:00', '36', 01, 42, 'http://www.mainelottery.com/games/megaold.shtml', 06, '/<tr class=\\"even\\"><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', 'tristate_megabucks'),
(3, 'Tristate - Paycheck', '18:59:00', '25', 01, 39, 'http://www.mainelottery.com/games/paycheck.shtml', 05, '/<h2>Winning Numbers .*? (.*?)<\\/h2>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>.*?<p>(.*?)<\\/p>/i', 'tristate_paycheck'),
(4, 'Maine - Pick 3 day', '13:00:00', '0123456', 00, 09, 'http://www.mainelottery.com/games/pickThreeHistory.shtml', 03, '/<th>Date<\\/th>.*?<td>(.*?)<\\/td><td>Day<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', 'maine_pick3_day'),
(5, 'Maine - Pick 3 eve', '18:50:00', '0123456', 00, 09, 'http://www.mainelottery.com/games/pickThreeHistory.shtml', 03, '/<th>Date<\\/th>.*?<td>([0-9]{2}\\/[0-9]{2}\\/[0-9]{4})<\\/td><td>Eve<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', 'maine_pick3_eve'),
(6, 'Maine - Pick 4 day', '12:00:00', '0123456', 00, 09, 'http://www.mainelottery.com/games/pickFourHistory.shtml', 04, '/<th>Date<\\/th>.*?<td>([0-9]{2}\\/[0-9]{2}\\/[0-9]{4})<\\/td><td>Day<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', 'maine_pick4_day'),
(7, 'Maine - Pick 4 eve', '18:50:00', '0123456', 00, 09, 'http://www.mainelottery.com/games/pickFourHistory.shtml', 04, '/<th>Date<\\/th>.*?<td>([0-9]{2}\\/[0-9]{2}\\/[0-9]{4})<\\/td><td>Eve<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td><td>(.*?)<\\/td>/i', 'maine_pick4_eve'),
(8, 'New Hampshire - Pick 3 day', '12:10:00', '0123456', 00, 09, 'http://www.nhlottery.org/WinningNumbers.aspx', 03, '/pick3.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Day.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', 'new_hampshire_pick3_day'),
(9, 'New Hampshire - Pick 3 eve', '18:55:00', '0123456', 00, 09, 'http://www.nhlottery.org/WinningNumbers.aspx', 03, '/pick3.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Evening.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', 'new_hampshire_pick3_eve'),
(10, 'New Hampshire - Pick 4 day', '12:10:00', '0123456', 00, 09, 'http://www.nhlottery.org/WinningNumbers.aspx', 04, '/pick4.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Day.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', 'new_hampshire_pick4_day'),
(11, 'New Hampshire - Pick 4 eve', '18:55:00', '0123456', 00, 09, 'http://www.nhlottery.org/WinningNumbers.aspx', 04, '/pick4.gif.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) Evening.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>.*?ballNumber\\">([0-9])<\\/span>/i', 'new_hampshire_pick4_eve'),
(12, 'Hot Lotto Sizzler', '22:40:00', '36', 01, 39, 'http://www.nhlottery.org/Games/HotLotto/PastNumbers.aspx', 06, '/logohl.jpg.*?class=\\"drawDate\\">([a-zA-Z0-9\\/ ]+) <\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>/i', 'hot_lotto_sizzler'),
(13, 'Rhode Island - Wild Money', '19:29:00', '346', 01, 35, 'http://209.123.49.147/wildmoney_search.asp?search=true&dtype=today', 05, '/align=\\"absbottom\\">&nbsp;(.*?)<\\/a>.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif.*?small\\/white\\/(.*?).gif/i', 'rhode_island_wild_money'),
(14, 'Rhode Island - The Numbers', '18:59:00', '0123456', 00, 09, 'http://209.123.49.147/dailynum_search.asp?search=true&dtype=today', 04, '/<\\/tr><tr bgcolor=White><td>(.*?)<\\/td>.*?white\\/single\\/(.*?).gif.*?white\\/single\\/(.*?).gif.*?white\\/single\\/(.*?).gif.*?white\\/single\\/(.*?).gif/i', 'rhode_island_the_numbers'),
(15, 'Vermont - Pick 3 day', '12:10:00', '0123456', 00, 09, 'http://www.vtlottery.com/pick3/most-recent-draw.asp', 03, '/Draw Date: (.*?)<br.*?Day.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', 'vermont_pick3_day'),
(16, 'Vermont - Pick 3 eve', '18:55:00', '0123456', 00, 09, 'http://www.vtlottery.com/pick3/most-recent-draw.asp', 03, '/Draw Date: (.*?)<br.*?Evening.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', 'vermont_pick3_eve'),
(17, 'Vermont - Pick 4 day', '12:10:00', '0123456', 00, 09, 'http://www.vtlottery.com/pick4/most-recent-draw.asp', 04, '/Draw Date: (.*?)<br.*?Day.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', 'vermont_pick4_day'),
(18, 'Vermont - Pick 4 eve', '18:55:00', '0123456', 00, 09, 'http://www.vtlottery.com/pick4/most-recent-draw.asp', 04, '/Draw Date: (.*?)<br.*?Evening.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif.*?numbers\\/ball(.*?).gif/i', 'vermont_pick4_day'),
(19, 'Connecticuit - Play 3 day', '12:57:00', '0123456', 00, 09, 'http://www.ctlottery.org/daily.htm', 03, '/logos\\/play3night.gif.*?<tr><td.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', 'connecticuit_play3_day'),
(20, 'Connecticuit - Play 3 eve', '22:29:00', '0123456', 00, 09, 'http://www.ctlottery.org/daily.htm', 03, '/logos\\/play3night.gif.*?<tr><td.*?<table.*?<\\/table>.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', 'vermont_pick4_eve'),
(21, 'Connecticuit - Play 4 day', '12:57:00', '0123456', 00, 09, 'http://www.ctlottery.org/daily.htm', 04, '/logos\\/play4day.gif.*?<tr><td.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', 'connecticuit_play4_day'),
(22, 'Connecticuit - Play 4 eve', '22:29:00', '0123456', 00, 09, 'http://www.ctlottery.org/daily.htm', 04, '/logos\\/play4day.gif.*?<tr><td.*?<table.*?<\\/table>.*?<table.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)<\\/b>.*?<\\/table>/i', 'connecticuit_play4_eve'),
(23, 'Connecticuit - Cash5', '22:29:00', '0123456', 01, 35, 'http://www.ctlottery.org/cash5.htm', 05, '/last five drawings:.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/b>/i', 'connecticuit_cash5'),
(24, 'Connecticuit - Classic Lotto', '22:38:00', '25', 01, 44, 'http://www.ctlottery.org/lotto.htm', 06, '/last five drawings:.*?Date: &nbsp;<b>(.*?)<\\/b>.*?Number:<b>&nbsp;(.*?)-(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/b>/i', 'connecticuit_classic_lotto'),
(25, 'New York - Lotto', '23:21:00', '36', 01, 59, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_401_SubCat_201670_NavRoot_320.htm', 06, '/Latest Winning Numbers.*?<b>(.*?)<\\/b>.*?<table.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<\\/table>/i', 'new_york_lotto'),
(26, 'Mega Millions', '23:00:00', '25', 01, 56, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_403_SubCat_337550_NavRoot_320.htm', 06, '/Latest Winning Numbers.*?<b>(.*?)<\\/b>.*?<table.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<\\/table>/i', 'mega_millions'),
(27, 'New York - Take 5', '23:21:00', '0123456', 01, 39, 'http://www.nylottery.org/index.php', 05, '/inner_take5.gif.*?<table.*?<tr>.*?<b>(.*?):.*?<\\/b>.*?<\\/tr><tr>.*?&nbsp;(.*?), (.*?), (.*?), (.*?), (.*?)<br \\/>.*?<\\/table>/i', 'new_york_take5'),
(28, 'New York - Numbers day', '12:20:00', '0123456', 00, 09, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_400_SubCat_202124_NavRoot_300.htm?', 03, '/Latest Winning Numbers.*?<table.*?<b>(.*?)<\\/b>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<\\/table>/i', 'new_york_numbers_day'),
(29, 'New York - Numbers eve', '19:30:00', '0123456', 00, 09, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_400_SubCat_202124_NavRoot_300.htm', 03, '/Latest Winning Numbers.*?<table.*?Midday.*?<b>(.*?)<\\/b>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<\\/table>/i', 'new_york_numbers_eve'),
(30, 'New York - Win4 day', '12:20:00', '0123456', 00, 09, 'http://www.nylottery.org/index.php', 04, '/inner_win4.gif.*?<b>([a-zA-Z0-9 ]+) Midday:.*?<\\/b> (.)(.)(.)(.)<b style/i', 'new_york_win4_day'),
(31, 'New York - Win4 eve', '19:30:00', '0123456', 00, 09, 'http://www.nylottery.org/index.php', 04, '/inner_win4.gif.*?<b>([a-zA-Z0-9 ]+) Evening:.*?<\\/b> (.)(.)(.)(.)<b style/i', 'new_york_win4_eve'),
(32, 'New York - Pick 10', '19:30:00', '0123456', 01, 80, 'http://www.nylottery.org/ny/nyStore/cgi-bin/ProdSubEV_Cat_406_SubCat_337553_NavRoot_300.htm', 10, '/Latest Winning Numbers.*?<b>(.*?)<\\/b>.*?<table.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/font>.*?<font color=.*?>(.*?)<\\/tr>.*?<\\/table>/i', 'new_york_pick10'),
(33, 'New Jersey - Pick 6', '19:56:00', '15', 01, 49, 'http://www.state.nj.us/lottery/games/1-2-1_pick6.shtml', 06, '/Current Winning Numbers.*?<br \\/>.*?, (.*?)<br \\/>.*?<span class=\\"blue_winningnumbers\\">      (.*?) (.*?) (.*?) (.*?) (.*?) (.*?)<\\/span>/i', 'new_jersey_pick6'),
(34, 'New Jersey - Jersey Cash 5', '19:56:00', '0123456', 01, 40, 'http://www.state.nj.us/lottery/games/1-3-1_jersey_cash5.shtml', 05, '/Current Winning Numbers.*?<br \\/>.*?, (.*?)<br \\/>.*?<span class=\\"purple_winningnumbers\\">      (.*?) (.*?) (.*?) (.*?) (.*?)<\\/span>/i', 'new_jersey_jersey_cash5'),
(35, 'New Jersey - Pick 4 day', '12:57:00', '0123456', 00, 09, 'http://www.state.nj.us/lottery/games/1-4-1_pick4.shtml', 04, '/Current Winning Numbers.*?Midday:.*?, (.*?)<br \\/>.*?<span class=\\"red_winningnumbers\\">      (.*?) (.*?) (.*?) (.*?)<\\/span>/i', 'new_jersey_pick4_day'),
(36, 'New Jersey - Pick 4 eve', '19:56:00', '0123456', 00, 09, 'http://www.state.nj.us/lottery/games/1-4-1_pick4.shtml', 04, '/Current Winning Numbers.*?Evening:.*?, (.*?)<br \\/>.*?<span class=\\"red_winningnumbers\\">        (.*?) (.*?) (.*?) (.*?)<\\/span>/i', 'new_jersey_pick4_eve'),
(37, 'New Jersey - Pick 3 day', '12:57:00', '0123456', 00, 09, 'http://www.state.nj.us/lottery/games/1-5-1_pick3.shtml', 03, '/Current Winning Numbers.*?Midday:.*?, (.*?)<br \\/><span class=\\"green_winningnumbers\\">      (.*?) (.*?) (.*?)<\\/span><p>/i', 'new_jersey_pick3_day'),
(38, 'New Jersey - Pick 3 eve', '19:56:00', '0123456', 00, 09, 'http://www.state.nj.us/lottery/games/1-5-1_pick3.shtml', 03, '/Current Winning Numbers.*?Midday:.*?, (.*?)<br \\/>.*?<span class=\\"green_winningnumbers\\">        (.*?) (.*?) (.*?)<\\/span>/i', 'new_jersey_pick3_eve'),
(39, 'Pennsylvania - Daily number day', '12:10:00', '0123456', 00, 09, 'http://www.palottery.state.pa.us/games.aspx?id=430', 03, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Mid-day:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_daily_number_day'),
(40, 'Pennsylvania - Daily number eve', '19:00:00', '0123456', 00, 09, 'http://www.palottery.state.pa.us/games.aspx?id=430', 03, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Evening:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<\\/p>/i', 'pennsylvania_daily_number_eve'),
(41, 'Pennsylvania - Big 4 day', '12:35:00', '0123456', 00, 09, 'http://www.palottery.state.pa.us/games.aspx?id=434', 04, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Mid-day:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_big4_day'),
(42, 'Pennsylvania - Big 4 eve', '19:00:00', '0123456', 00, 09, 'http://www.palottery.state.pa.us/games.aspx?id=434', 04, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Evening:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<\\/p>/i', 'pennsylvania_big4_eve'),
(43, 'Pennsylvania - Quinto day', '12:35:00', '0123456', 00, 09, 'http://www.palottery.state.pa.us/games.aspx?id=124630', 05, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Mid-day:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_quinto_day'),
(44, 'Pennsylvania - Quinto eve', '19:00:00', '0123456', 00, 09, 'http://www.palottery.state.pa.us/games.aspx?id=124630', 05, '/Mid-day.*?<p class=\\"numbers-date\\".*?>(.*?)<\\/p>.*?Evening:&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<\\/p>/i', 'pennsylvania_quinto_eve'),
(45, 'Pennsylvania - Treasure hunt', '13:35:00', '0123456', 01, 30, 'http://www.palottery.state.pa.us/games.aspx?id=436', 05, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_treasure_hunt'),
(46, 'Pennsylvania - Mix and match', '19:00:00', '14', 01, 19, 'http://www.palottery.state.pa.us/games.aspx?id=42', 05, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_mix_and_match'),
(47, 'Pennsylvania - Cash 5', '19:00:00', '0123456', 01, 43, 'http://www.palottery.state.pa.us/games.aspx?id=440', 05, '/<p class=\\"numbers-date\\">(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_cash5'),
(48, 'Pennsylvania - Match 6', '19:00:00', '25', 01, 49, 'http://www.palottery.state.pa.us/games.aspx?id=444', 06, '/<p class=\\"numbers-date\\">\\s*(.*?)<\\/p>.*?Winning Numbers <br \\/>.*?([0-9])&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)&nbsp;&nbsp;(.*?)<br \\/>/i', 'pennsylvania_match6'),
(49, 'Massachusetts - Numbers day', '12:45:00', '0123456', 00, 09, 'http://www.masslottery.com/games/numbersgame.html', 04, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', 'massachusetts_numbers_day'),
(50, 'Massachusetts - Numbers eve', '19:58:00', '0123456', 00, 09, 'http://www.masslottery.com/games/numbersgame.html', 04, '/<tr.*?<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">.*?<\\/td><td.*?>.*?<\\/td>.*?<tr.*?<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', 'massachusetts_numbers_eve'),
(51, 'Massachusetts - Mass cash', '23:20:00', '25', 01, 35, 'http://www.masslottery.com/games/masscash.html', 05, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', 'massachusetts_mass_cash'),
(52, 'Massachusetts - Megabucks', '19:58:00', '36', 01, 42, 'http://www.masslottery.com/games/megabucks.html', 06, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', 'massachusetts_megabucks'),
(53, 'Massachusetts - Cash Windfall', '23:20:00', '14', 01, 46, 'http://www.masslottery.com/games/cashwinfall.html', 06, '/<td.*?<\\/td><td headers=\\"date\\" class=\\"dateColor\\">(.*?)<\\/td><td.*?>(.*?)-(.*?)-(.*?)-(.*?)-(.*?)-(.*?)<\\/td>/i', 'massachusetts_cash_winfall');

-- --------------------------------------------------------

--
-- Table structure for table `hot_lotto_sizzler`
--

CREATE TABLE IF NOT EXISTS `hot_lotto_sizzler` (
  `hot_lotto_sizzler_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`hot_lotto_sizzler_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hot_lotto_sizzler`
--

INSERT INTO `hot_lotto_sizzler` (`hot_lotto_sizzler_id`, `date`, `number`) VALUES
(1, '11/26/2008', '3-11-22-24-35');

-- --------------------------------------------------------

--
-- Table structure for table `maine_pick3_day`
--

CREATE TABLE IF NOT EXISTS `maine_pick3_day` (
  `maine_pick3_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`maine_pick3_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `maine_pick3_day`
--

INSERT INTO `maine_pick3_day` (`maine_pick3_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '1-1-0'),
(2, '11/30/2008', '2-7-1'),
(3, '12/01/2008', '03-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `maine_pick3_eve`
--

CREATE TABLE IF NOT EXISTS `maine_pick3_eve` (
  `maine_pick3_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`maine_pick3_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `maine_pick3_eve`
--

INSERT INTO `maine_pick3_eve` (`maine_pick3_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '1-5-1'),
(2, '11/29/2008', '4-5-7'),
(3, '11/30/2008', '08-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `maine_pick4_day`
--

CREATE TABLE IF NOT EXISTS `maine_pick4_day` (
  `maine_pick4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`maine_pick4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `maine_pick4_day`
--

INSERT INTO `maine_pick4_day` (`maine_pick4_day_id`, `date`, `number`) VALUES
(2, '11/29/2008', '3-3-9-6'),
(3, '11/30/2008', '4-2-7-2'),
(4, '12/01/2008', '06-00-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `maine_pick4_eve`
--

CREATE TABLE IF NOT EXISTS `maine_pick4_eve` (
  `maine_pick4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`maine_pick4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `maine_pick4_eve`
--

INSERT INTO `maine_pick4_eve` (`maine_pick4_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '0-6-0-7'),
(2, '11/29/2008', '9-4-0-5'),
(3, '11/30/2008', '06-08-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `maine_powerball`
--

CREATE TABLE IF NOT EXISTS `maine_powerball` (
  `maine_powerball_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`maine_powerball_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `maine_powerball`
--

INSERT INTO `maine_powerball` (`maine_powerball_id`, `date`, `number`) VALUES
(2, '11/26/2008', '11-26-31-34-52');

-- --------------------------------------------------------

--
-- Table structure for table `massachusetts_cash_winfall`
--

CREATE TABLE IF NOT EXISTS `massachusetts_cash_winfall` (
  `massachusetts_cash_winfall_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`massachusetts_cash_winfall_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `massachusetts_cash_winfall`
--

INSERT INTO `massachusetts_cash_winfall` (`massachusetts_cash_winfall_id`, `date`, `number`) VALUES
(1, '11/27/08', '8-17-20-30-34-38');

-- --------------------------------------------------------

--
-- Table structure for table `massachusetts_mass_cash`
--

CREATE TABLE IF NOT EXISTS `massachusetts_mass_cash` (
  `massachusetts_mass_cash_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`massachusetts_mass_cash_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `massachusetts_mass_cash`
--

INSERT INTO `massachusetts_mass_cash` (`massachusetts_mass_cash_id`, `date`, `number`) VALUES
(1, '11/28/08', '10-11-27-29-31');

-- --------------------------------------------------------

--
-- Table structure for table `massachusetts_megabucks`
--

CREATE TABLE IF NOT EXISTS `massachusetts_megabucks` (
  `massachusetts_megabucks_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`massachusetts_megabucks_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `massachusetts_megabucks`
--

INSERT INTO `massachusetts_megabucks` (`massachusetts_megabucks_id`, `date`, `number`) VALUES
(1, '11/26/08', '3-11-18-19-28-31');

-- --------------------------------------------------------

--
-- Table structure for table `massachusetts_numbers_day`
--

CREATE TABLE IF NOT EXISTS `massachusetts_numbers_day` (
  `massachusetts_numbers_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`massachusetts_numbers_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `massachusetts_numbers_day`
--

INSERT INTO `massachusetts_numbers_day` (`massachusetts_numbers_day_id`, `date`, `number`) VALUES
(1, '11/29/08', '7-3-2-1'),
(2, '11/30/08', '8-2-3-3'),
(3, '12/01/08', '00-04-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `massachusetts_numbers_eve`
--

CREATE TABLE IF NOT EXISTS `massachusetts_numbers_eve` (
  `massachusetts_numbers_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`massachusetts_numbers_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `massachusetts_numbers_eve`
--

INSERT INTO `massachusetts_numbers_eve` (`massachusetts_numbers_eve_id`, `date`, `number`) VALUES
(1, '11/28/08', '5-1-0-7'),
(2, '11/29/08', '0-0-9-9'),
(3, '11/30/08', '08-02-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `mega_millions`
--

CREATE TABLE IF NOT EXISTS `mega_millions` (
  `mega_millions_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`mega_millions_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mega_millions`
--

INSERT INTO `mega_millions` (`mega_millions_id`, `date`, `number`) VALUES
(1, '11/28/2008', '10-30-44-46-48');

-- --------------------------------------------------------

--
-- Table structure for table `new_hampshire_pick3_day`
--

CREATE TABLE IF NOT EXISTS `new_hampshire_pick3_day` (
  `new_hampshire_pick3_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_hampshire_pick3_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_hampshire_pick3_day`
--

INSERT INTO `new_hampshire_pick3_day` (`new_hampshire_pick3_day_id`, `date`, `number`) VALUES
(1, '11/28/2008', '7-0-9'),
(2, '11/29/2008', '1-1-0'),
(3, '12/1/2008', '03-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `new_hampshire_pick3_eve`
--

CREATE TABLE IF NOT EXISTS `new_hampshire_pick3_eve` (
  `new_hampshire_pick3_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_hampshire_pick3_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `new_hampshire_pick3_eve`
--

INSERT INTO `new_hampshire_pick3_eve` (`new_hampshire_pick3_eve_id`, `date`, `number`) VALUES
(5, '11/30/2008', '08-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `new_hampshire_pick4_day`
--

CREATE TABLE IF NOT EXISTS `new_hampshire_pick4_day` (
  `new_hampshire_pick4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_hampshire_pick4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `new_hampshire_pick4_day`
--

INSERT INTO `new_hampshire_pick4_day` (`new_hampshire_pick4_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '3-3-9-6'),
(6, '12/1/2008', '06-00-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `new_hampshire_pick4_eve`
--

CREATE TABLE IF NOT EXISTS `new_hampshire_pick4_eve` (
  `new_hampshire_pick4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_hampshire_pick4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `new_hampshire_pick4_eve`
--

INSERT INTO `new_hampshire_pick4_eve` (`new_hampshire_pick4_eve_id`, `date`, `number`) VALUES
(5, '11/30/2008', '06-08-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `new_jersey_jersey_cash5`
--

CREATE TABLE IF NOT EXISTS `new_jersey_jersey_cash5` (
  `new_jersey_jersey_cash5_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_jersey_jersey_cash5_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_jersey_jersey_cash5`
--

INSERT INTO `new_jersey_jersey_cash5` (`new_jersey_jersey_cash5_id`, `date`, `number`) VALUES
(1, 'November 28, 2008', '03-06-17-19-23'),
(2, 'November 29, 2008', '02-14-18-31-39'),
(3, 'November 30, 2008', '13-18-20-31-34');

-- --------------------------------------------------------

--
-- Table structure for table `new_jersey_pick3_day`
--

CREATE TABLE IF NOT EXISTS `new_jersey_pick3_day` (
  `new_jersey_pick3_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_jersey_pick3_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `new_jersey_pick3_day`
--

INSERT INTO `new_jersey_pick3_day` (`new_jersey_pick3_day_id`, `date`, `number`) VALUES
(4, 'December 01, 2008', '08-03-07'),
(2, 'November 29, 2008', '4-8-4'),
(3, 'November 30, 2008', '9-5-7');

-- --------------------------------------------------------

--
-- Table structure for table `new_jersey_pick3_eve`
--

CREATE TABLE IF NOT EXISTS `new_jersey_pick3_eve` (
  `new_jersey_pick3_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_jersey_pick3_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_jersey_pick3_eve`
--

INSERT INTO `new_jersey_pick3_eve` (`new_jersey_pick3_eve_id`, `date`, `number`) VALUES
(1, 'November 29, 2008', '0-2-7'),
(2, 'November 30, 2008', '1-7-5'),
(3, 'December 01, 2008', '07-07-00');

-- --------------------------------------------------------

--
-- Table structure for table `new_jersey_pick4_day`
--

CREATE TABLE IF NOT EXISTS `new_jersey_pick4_day` (
  `new_jersey_pick4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_jersey_pick4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `new_jersey_pick4_day`
--

INSERT INTO `new_jersey_pick4_day` (`new_jersey_pick4_day_id`, `date`, `number`) VALUES
(1, 'November 29, 2008', '3-3-0-4'),
(3, 'November 30, 2008', '2-0-2-9'),
(4, 'December 01, 2008', '01-09-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `new_jersey_pick4_eve`
--

CREATE TABLE IF NOT EXISTS `new_jersey_pick4_eve` (
  `new_jersey_pick4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_jersey_pick4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `new_jersey_pick4_eve`
--

INSERT INTO `new_jersey_pick4_eve` (`new_jersey_pick4_eve_id`, `date`, `number`) VALUES
(1, 'November 28, 2008', '4-9-2-3'),
(3, 'November 29, 2008', '1-7-8-8'),
(4, 'November 30, 2008', '08-08-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `new_jersey_pick6`
--

CREATE TABLE IF NOT EXISTS `new_jersey_pick6` (
  `new_jersey_pick6_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_jersey_pick6_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `new_jersey_pick6`
--

INSERT INTO `new_jersey_pick6` (`new_jersey_pick6_id`, `date`, `number`) VALUES
(1, '11/27/2008', '10-11-15-22-29-48');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_lotto`
--

CREATE TABLE IF NOT EXISTS `new_york_lotto` (
  `new_york_lotto_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_york_lotto_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `new_york_lotto`
--

INSERT INTO `new_york_lotto` (`new_york_lotto_id`, `date`, `number`) VALUES
(1, '11/26/2008', '7-11-19-21-23-37');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_numbers_day`
--

CREATE TABLE IF NOT EXISTS `new_york_numbers_day` (
  `new_york_numbers_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_york_numbers_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `new_york_numbers_day`
--

INSERT INTO `new_york_numbers_day` (`new_york_numbers_day_id`, `date`, `number`) VALUES
(1, 'Nov 28', '15-17-18-20-23'),
(2, '11/29/2008', '4-1-3'),
(3, '11/30/2008', '0-8-4'),
(4, '12/01/2008', '06-00-09');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_numbers_eve`
--

CREATE TABLE IF NOT EXISTS `new_york_numbers_eve` (
  `new_york_numbers_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_york_numbers_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_york_numbers_eve`
--

INSERT INTO `new_york_numbers_eve` (`new_york_numbers_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '4-4-6'),
(2, '11/29/2008', '9-6-8'),
(3, '11/30/2008', '08-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_pick10`
--

CREATE TABLE IF NOT EXISTS `new_york_pick10` (
  `new_york_pick10_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(100) NOT NULL,
  PRIMARY KEY  (`new_york_pick10_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_york_pick10`
--

INSERT INTO `new_york_pick10` (`new_york_pick10_id`, `date`, `number`) VALUES
(1, '11/28/2008', '2-3-4-6-14-15-21-25-26-39-41-44-51-53-59-68-70-71-73-79'),
(2, '11/29/2008', '7-13-24-29-33-34-36-37-46-48-49-53-57-59-62-63-69-73-77-80'),
(3, '11/30/2008', '03-04-07-12-15-16-20-24-26-28-35-39-44-47-51-54-58-61-63-79');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_take5`
--

CREATE TABLE IF NOT EXISTS `new_york_take5` (
  `new_york_take5_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_york_take5_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_york_take5`
--

INSERT INTO `new_york_take5` (`new_york_take5_id`, `date`, `number`) VALUES
(1, 'Nov 28', '15-17-18-20-23'),
(2, 'Nov 29', '1-4-5-29-39'),
(3, 'Nov 30', '12-13-22-26-36');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_win4_day`
--

CREATE TABLE IF NOT EXISTS `new_york_win4_day` (
  `new_york_win4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_york_win4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_york_win4_day`
--

INSERT INTO `new_york_win4_day` (`new_york_win4_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '1-0-4-2'),
(2, '11/30/2008', '7-6-2-8'),
(3, 'Dec  1', '07-01-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `new_york_win4_eve`
--

CREATE TABLE IF NOT EXISTS `new_york_win4_eve` (
  `new_york_win4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`new_york_win4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `new_york_win4_eve`
--

INSERT INTO `new_york_win4_eve` (`new_york_win4_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '4-9-5-2'),
(2, '11/29/2008', '9-4-2-7'),
(3, 'Nov 30', '05-05-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_big4_day`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_big4_day` (
  `pennsylvania_big4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_big4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pennsylvania_big4_day`
--

INSERT INTO `pennsylvania_big4_day` (`pennsylvania_big4_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '5-6-6-1'),
(2, '11/29/2008', '5-6-6-1'),
(3, '11/30/2008', '4-8-5-2'),
(4, '12/01/2008', '09-08-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_big4_eve`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_big4_eve` (
  `pennsylvania_big4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_big4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pennsylvania_big4_eve`
--

INSERT INTO `pennsylvania_big4_eve` (`pennsylvania_big4_eve_id`, `date`, `number`) VALUES
(1, '11/29/2008', '0-9-5-8'),
(3, '11/30/2008', '3-1-5-0'),
(4, '12/01/2008', '06-01-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_cash5`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_cash5` (
  `pennsylvania_cash5_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_cash5_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pennsylvania_cash5`
--

INSERT INTO `pennsylvania_cash5` (`pennsylvania_cash5_id`, `date`, `number`) VALUES
(1, '11/28/2008', '1-04-15-29-42'),
(2, '11/29/2008', '6-21-25-30-43'),
(3, '11/30/2008', '01-11-13-23-27');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_daily_number_day`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_daily_number_day` (
  `pennsylvania_daily_number_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_daily_number_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pennsylvania_daily_number_day`
--

INSERT INTO `pennsylvania_daily_number_day` (`pennsylvania_daily_number_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '3-6-5'),
(2, '11/30/2008', '5-6-2'),
(3, '12/01/2008', '04-08-00');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_daily_number_eve`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_daily_number_eve` (
  `pennsylvania_daily_number_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_daily_number_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pennsylvania_daily_number_eve`
--

INSERT INTO `pennsylvania_daily_number_eve` (`pennsylvania_daily_number_eve_id`, `date`, `number`) VALUES
(1, '11/29/2008', '4-1-5'),
(2, '11/30/2008', '9-8-8'),
(3, '12/01/2008', '02-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_match6`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_match6` (
  `pennsylvania_match6_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_match6_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pennsylvania_match6`
--

INSERT INTO `pennsylvania_match6` (`pennsylvania_match6_id`, `date`, `number`) VALUES
(1, '11/28/2008', '1-09-21-26-28-44');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_mix_and_match`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_mix_and_match` (
  `pennsylvania_mix_and_match_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_mix_and_match_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pennsylvania_mix_and_match`
--

INSERT INTO `pennsylvania_mix_and_match` (`pennsylvania_mix_and_match_id`, `date`, `number`) VALUES
(1, '11/27/2008', '5-17-02-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_quinto_day`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_quinto_day` (
  `pennsylvania_quinto_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_quinto_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pennsylvania_quinto_day`
--

INSERT INTO `pennsylvania_quinto_day` (`pennsylvania_quinto_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '2-0-4-2-7'),
(2, '11/30/2008', '8-5-0-5-2'),
(3, '12/01/2008', '00-02-03-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_quinto_eve`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_quinto_eve` (
  `pennsylvania_quinto_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_quinto_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pennsylvania_quinto_eve`
--

INSERT INTO `pennsylvania_quinto_eve` (`pennsylvania_quinto_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '2-0-8-4-3'),
(2, '11/29/2008', '8-2-7-1-8'),
(3, '11/30/2008', '02-08-05-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `pennsylvania_treasure_hunt`
--

CREATE TABLE IF NOT EXISTS `pennsylvania_treasure_hunt` (
  `pennsylvania_treasure_hunt_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`pennsylvania_treasure_hunt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pennsylvania_treasure_hunt`
--

INSERT INTO `pennsylvania_treasure_hunt` (`pennsylvania_treasure_hunt_id`, `date`, `number`) VALUES
(1, '11/29/2008', '1-04-10-21-23'),
(2, '11/30/2008', '2-08-16-19-26'),
(3, '12/01/2008', '07-19-20-22-24');

-- --------------------------------------------------------

--
-- Table structure for table `powerball`
--

CREATE TABLE IF NOT EXISTS `powerball` (
  `powerball_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`powerball_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `powerball`
--


-- --------------------------------------------------------

--
-- Table structure for table `rhode_island_the_numbers`
--

CREATE TABLE IF NOT EXISTS `rhode_island_the_numbers` (
  `rhode_island_the_numbers_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`rhode_island_the_numbers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rhode_island_the_numbers`
--

INSERT INTO `rhode_island_the_numbers` (`rhode_island_the_numbers_id`, `date`, `number`) VALUES
(1, '11/28/2008', '0-5-2-5'),
(2, '11/29/2008', '9-2-8-3'),
(3, '11/30/2008', '08-06-09-00');

-- --------------------------------------------------------

--
-- Table structure for table `rhode_island_wild_money`
--

CREATE TABLE IF NOT EXISTS `rhode_island_wild_money` (
  `rhode_island_wild_money_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`rhode_island_wild_money_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rhode_island_wild_money`
--

INSERT INTO `rhode_island_wild_money` (`rhode_island_wild_money_id`, `date`, `number`) VALUES
(1, '11/26/2008', '3-11-22-24-35'),
(2, '11/27/2008', '4-10-18-28-35');

-- --------------------------------------------------------

--
-- Table structure for table `tristate_megabucks`
--

CREATE TABLE IF NOT EXISTS `tristate_megabucks` (
  `tristate_megabucks_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`tristate_megabucks_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tristate_megabucks`
--

INSERT INTO `tristate_megabucks` (`tristate_megabucks_id`, `date`, `number`) VALUES
(1, '11/26/2008', '3-7-8-20-22-34');

-- --------------------------------------------------------

--
-- Table structure for table `tristate_paycheck`
--

CREATE TABLE IF NOT EXISTS `tristate_paycheck` (
  `tristate_paycheck_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`tristate_paycheck_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tristate_paycheck`
--

INSERT INTO `tristate_paycheck` (`tristate_paycheck_id`, `date`, `number`) VALUES
(1, '11/28/2008', '7-17-19-20-28');

-- --------------------------------------------------------

--
-- Table structure for table `vermont_pick3_day`
--

CREATE TABLE IF NOT EXISTS `vermont_pick3_day` (
  `vermont_pick3_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`vermont_pick3_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vermont_pick3_day`
--

INSERT INTO `vermont_pick3_day` (`vermont_pick3_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '1-1-0'),
(2, '11/30/2008', '2-7-1'),
(3, '12/1/2008', '03-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `vermont_pick3_eve`
--

CREATE TABLE IF NOT EXISTS `vermont_pick3_eve` (
  `vermont_pick3_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`vermont_pick3_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vermont_pick3_eve`
--

INSERT INTO `vermont_pick3_eve` (`vermont_pick3_eve_id`, `date`, `number`) VALUES
(1, '11/29/2008', '1-5-1'),
(2, '11/29/2008', '1-5-1'),
(3, '11/30/2008', '4-5-7'),
(4, '12/1/2008', '08-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `vermont_pick4_day`
--

CREATE TABLE IF NOT EXISTS `vermont_pick4_day` (
  `vermont_pick4_day_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`vermont_pick4_day_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vermont_pick4_day`
--

INSERT INTO `vermont_pick4_day` (`vermont_pick4_day_id`, `date`, `number`) VALUES
(1, '11/29/2008', '3-3-9-6'),
(2, '11/30/2008', '4-2-7-2'),
(3, '12/1/2008', '06-08-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `vermont_pick4_eve`
--

CREATE TABLE IF NOT EXISTS `vermont_pick4_eve` (
  `vermont_pick4_eve_id` int(11) NOT NULL auto_increment,
  `date` text NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY  (`vermont_pick4_eve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vermont_pick4_eve`
--

INSERT INTO `vermont_pick4_eve` (`vermont_pick4_eve_id`, `date`, `number`) VALUES
(1, '11/28/2008', '0-7-1'),
(2, '11/28/2008', '0-7-1'),
(3, '11/29/2008', '6-3-9'),
(4, '11/30/2008', '00-04-04');
