-- users
CREATE VIEW users_view AS
SELECT `id`,  `gender`, `numberOfDependants`, `username`, `title`, `firstname`, `lastname`, `dateofbirth`, `email`, `companyid`, `primaryAddressTag`, `phonenumber`, `create_at`, `lastvisit_at`, `status` FROM `tbl_user`;

-- addresses
CREATE VIEW users_addresses AS
SELECT `userid`,`username`, `title`, `firstname`, `lastname`, `dateofbirth`, `email`, `companyid`, `primaryAddressTag`, `phonenumber`, `tag`, `address1`, `address2`, `city`, `region`, `zipcode`, `country`
FROM `tbl_addressbook` JOIN `tbl_user`
ON `tbl_addressbook`.`userid` = `tbl_user`.`id`;

-- events
CREATE VIEW users_events AS
SELECT `tbl_event`.`id`, `tbl_event`.`title`, `tracker`, `start`, `end`, `editable`,`userid`, `firstname`, `lastname`, `dateofbirth`, `email`, `companyid`, `primaryAddressTag`, `phonenumber`
FROM `tbl_event`  JOIN `tbl_user`
ON `tbl_event`.`userid` = `tbl_user`.`id`;
