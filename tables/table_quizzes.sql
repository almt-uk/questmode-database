
-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--
-- Creation: Mar 07, 2020 at 07:18 PM
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `quizz_id` int(10) NOT NULL AUTO_INCREMENT,
  `creator_id` int(6) NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`quizz_id`),
  KEY `fk_q_users` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
