
-- --------------------------------------------------------

--
-- Table structure for table `quizz_session`
--
-- Creation: Mar 07, 2020 at 07:27 PM
--

DROP TABLE IF EXISTS `quizz_session`;
CREATE TABLE IF NOT EXISTS `quizz_session` (
  `quizz_session_id` int(13) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `quizz_id` int(10) NOT NULL,
  PRIMARY KEY (`quizz_session_id`),
  KEY `fk_qs_quizzes` (`quizz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
