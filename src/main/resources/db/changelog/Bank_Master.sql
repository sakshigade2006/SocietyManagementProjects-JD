CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `mapped_branch` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `opening_balance` varchar(255) DEFAULT NULL,
  `opening_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 