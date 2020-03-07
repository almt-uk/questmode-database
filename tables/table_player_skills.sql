
-- --------------------------------------------------------

--
-- Table structure for table `player_skills`
--
-- Creation: Mar 07, 2020 at 02:13 PM
--

DROP TABLE IF EXISTS `player_skills`;
CREATE TABLE IF NOT EXISTS `player_skills` (
  `player_id` int(6) NOT NULL,
  `skill_id` int(6) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`player_id`,`skill_id`),
  KEY `fk_ps_skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
