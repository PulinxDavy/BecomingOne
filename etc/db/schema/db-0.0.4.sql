BEGIN;

CREATE TABLE `user_web_pages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  `version` bigint(20) NOT NULL,
  `user` bigint(20) NOT NULL,
  `template` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

COMMIT;