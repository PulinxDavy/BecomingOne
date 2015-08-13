BEGIN;

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image_path` VARCHAR(255) NOT NULL,
  `user` bigint(20) NOT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`image_path`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

COMMIT;