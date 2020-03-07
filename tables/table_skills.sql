
-- --------------------------------------------------------

--
-- Table structure for table `skills`
--
-- Creation: Mar 07, 2020 at 03:53 PM
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `skill_id` int(6) NOT NULL AUTO_INCREMENT,
  `class` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `row` int(2) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
