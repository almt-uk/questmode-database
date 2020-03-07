
-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `answer_id` int(13) NOT NULL AUTO_INCREMENT,
  `question_id` int(12) NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_right` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(1) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
