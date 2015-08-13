BEGIN;

CREATE TABLE `web_pages_welcome` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` TEXT,
  `image` varchar(255) NOT NULL,
  `web_page` bigint(20) NOT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name_template`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

COMMIT;