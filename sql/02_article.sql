DROP TABLE IF EXISTS `article`;
create table article(
	id varchar(100) DEFAULT NULL,
	header varchar(100) DEFAULT NULL,
	name varchar(60) DEFAULT NULL,
	content text DEFAULT NULL,
	author varchar(30) DEFAULT NULL,
	description varchar(100) DEFAULT NULL,
	is_published int(1) DEFAULT NULL,
	is_delete int(1) DEFAULT NULL,
	create_time datetime DEFAULT NULL,
	update_time timestamp NOT NULL,
	user_id varchar(100) NOT NULL,
	category_id int(2) NOT NULL
) DEFAULT CHARSET=utf8;