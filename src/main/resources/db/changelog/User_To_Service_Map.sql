CREATE TABLE `user_to_service_map` (
  `id` int(11) NOT NULL,
  `service` varchar(25500) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);