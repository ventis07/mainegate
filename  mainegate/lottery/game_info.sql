-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2008 at 03:21 PM
-- Server version: 3.23.32
-- PHP Version: 5.2.5


--
-- Database: `lotto`
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
(12, 'Hot Lotto Sizzler', '22:40:00', '36', 01, 39, 'http://www.nhlottery.org/WinningNumbers.aspx', 06, '/logohl.jpg.*?class=\\"drawDate\\">([a-zA-Z0-9\\/]+) <\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>.*?ballNumber\\">([0-9]+)<\\/span>/i', 'hot_lotto_sizzler'),
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
(28, 'New York - Numbers day', '12:20:00', '0123456', 00, 09, 'http://www.nylottery.org/index.php', 03, '/inner_numbers.gif.*?<b>([a-zA-Z0-9 ]+) Midday:.*?<\\/b> (.)(.)(.)<b style/i', 'new_york_numbers_day'),
(29, 'New York - Numbers eve', '19:30:00', '0123456', 00, 09, 'http://www.nylottery.org/index.php', 03, '/inner_numbers.gif.*?<b>([a-zA-Z0-9 ]+) Evening:.*?<\\/b> (.)(.)(.)<b style/i', 'new_york_numbers_eve'),
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
