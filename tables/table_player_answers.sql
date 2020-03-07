
-- --------------------------------------------------------

--
-- Table structure for table `player_answers`
--
-- Creation: Mar 07, 2020 at 07:29 PM
--

DROP TABLE IF EXISTS `player_answers`;
CREATE TABLE IF NOT EXISTS `player_answers` (
  `answer_id` int(13) NOT NULL,
  `quizz_session_id` int(13) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `question_id` int(12) NOT NULL,
  PRIMARY KEY (`answer_id`,`quizz_session_id`),
  KEY `fk_pa_questions` (`question_id`),
  KEY `fk_pa_quizz_sessions` (`quizz_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
