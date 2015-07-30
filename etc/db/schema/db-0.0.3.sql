BEGIN;

CREATE TABLE `user_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_time` datetime NOT NULL,
  `brides_first_name` varchar(100) NULL,
  `brides_last_name` varchar(100) NULL,
  `grooms_first_name` varchar(100) NULL,
  `grooms_last_name` varchar(100) NULL,
  `modification_time` datetime NOT NULL,
  `wedding_location` varchar(255),
  `wedding_date` datetime,
  `sexuality_type` varchar(20) NULL,
  `version` bigint(20) NOT NULL,
  `user` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

COMMIT;