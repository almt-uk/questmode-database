
-- --------------------------------------------------------

--
-- Table structure for table `player_items`
--
-- Creation: Mar 07, 2020 at 02:08 PM
--

DROP TABLE IF EXISTS `player_items`;
CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(6) NOT NULL,
  `item_id` int(6) NOT NULL,
  PRIMARY KEY (`player_id`,`item_id`),
  KEY `fk_pi_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
