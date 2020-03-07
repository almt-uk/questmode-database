
-- --------------------------------------------------------

--
-- Table structure for table `items`
--
-- Creation: Mar 07, 2020 at 02:02 PM
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `itemid` int(6) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `item_power` int(3) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
