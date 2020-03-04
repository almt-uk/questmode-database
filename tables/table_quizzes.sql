
-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `quizz_id` int(10) NOT NULL AUTO_INCREMENT,
  `creator_id` int(6) NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT 0,
  `times_played` int(5) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`quizz_id`),
  KEY `fk_q_users` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
