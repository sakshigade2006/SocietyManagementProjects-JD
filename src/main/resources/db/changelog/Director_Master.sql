CREATE TABLE `director_master` (
  `id` int(11) NOT NULL,
  `aadharno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `appointment_date` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `din_no_promoter_no` varchar(255) DEFAULT NULL,
  `director_name` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `no_of_share` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `paymode` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `share_amount` varchar(255) DEFAULT NULL,
  `share_nominal_value` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `photo` longblob,
  `signature` longblob,
  `cheque_date` varchar(255) DEFAULT NULL,
  `chequeno` varchar(255) DEFAULT NULL,
  `depositac` varchar(255) DEFAULT NULL,
  `member_code` varchar(255) DEFAULT NULL,
  `dno_from` varchar(255) DEFAULT NULL,
  `dno_to` varchar(255) DEFAULT NULL,
  `deposite_acc` varchar(255) DEFAULT NULL,
  `relative_relation` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
