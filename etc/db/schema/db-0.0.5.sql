BEGIN;

CREATE TABLE `user_web_page_templates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_template` varchar(100) NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name_template`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

COMMIT;