CREATE TABLE `user_master` (
  `id` int(11) NOT NULL,
  `back_date` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `del_acc` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `isactive` varchar(255) DEFAULT NULL,
  `mapped_branch` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reprint` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `last_login_date` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);