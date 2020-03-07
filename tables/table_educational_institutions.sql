
-- --------------------------------------------------------

--
-- Table structure for table `educational_institutions`
--
-- Creation: Mar 06, 2020 at 07:19 AM
--

DROP TABLE IF EXISTS `educational_institutions`;
CREATE TABLE IF NOT EXISTS `educational_institutions` (
  `institution_id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`institution_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
