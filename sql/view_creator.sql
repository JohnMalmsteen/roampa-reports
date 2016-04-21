-- users
CREATE VIEW users_view AS
  SELECT `id`,  `gender`, `number_of_dependants` as `numberOfDependants`,
  `username`, `title`, `forename` as `firstname`, `surname` as `lastname`,
  `date_of_birth` as `dateofbirth`, `alternative_email` as `email`,
  `employee_id` as `companyid`, `phonenumber`,
  `created_timestamp` as `create_at`, `lastvisited_at` as `lastvisit_at`,
  `status`
  FROM `users`;

-- addresses
CREATE VIEW users_addresses AS
  SELECT `users`.`id`,`username`, `title`, `forename` as `firstname`,
    `surname` as `lastname`, `date_of_birth` as `dateofbirth`, `alternative_email` as `email`,
    `employee_id` as `companyid`, `phonenumber`, `tag`, `address_line_1` as `address1`,
    `address_line_2` as `address2`, `city`, `region`, `zipcode`,  `country_id` as `country`
  FROM `address`
    LEFT JOIN `user_address`
      ON `user_address`.`address_id` = `address`.`id`
    LEFT JOIN `users`
      ON `users`.`id` = `user_address`.`user_id`;

-- events
CREATE VIEW users_events AS
  SELECT `assignment`.`id`, `job_title` as `title`, `start_date` as `start`, `end_date` as `end`,
    `users`.`id` as `userid`, `forename` as `firstname`, `surname` as `lastname`,
    `date_of_birth` as `dateofbirth`, `alternative_email` as `email`,
    `employee_id` as `companyid`, `phonenumber`
  FROM `assignment`
    JOIN `users`
      ON `assignment`.`assignee_id` = `users`.`id`;
