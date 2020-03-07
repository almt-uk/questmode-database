
-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` int(12) NOT NULL AUTO_INCREMENT,
  `experience` int(5) NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quizz_id` int(10) NOT NULL,
  `time_question` int(2) NOT NULL,
  `time_answer` int(2) NOT NULL,
  `time_results` int(2) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `fk_que_quizz` (`quizz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
