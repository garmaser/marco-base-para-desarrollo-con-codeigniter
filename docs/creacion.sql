DROP TABLE IF EXISTS ci_sessions;

CREATE TABLE ci_sessions (
  id varchar(40) NOT NULL,
  ip_address varchar(45) NOT NULL,
  timestamp int(10) unsigned NOT NULL DEFAULT '0',
  data blob NOT NULL,
  PRIMARY KEY (id),
  KEY ci_sessions_timestamp (timestamp)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS groups;

CREATE TABLE groups (
  id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  description varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into groups(id,name,description) values (1,'admin','Administrador'),(2,'usuario','Usuario normal');

DROP TABLE IF EXISTS login_attempts;

CREATE TABLE login_attempts (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  ip_address varbinary(16) NOT NULL,
  login varchar(100) NOT NULL,
  time int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  ip_address varbinary(16) NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(80) NOT NULL,
  salt varchar(40) DEFAULT NULL,
  email varchar(100) NOT NULL,
  activation_code varchar(40) DEFAULT NULL,
  forgotten_password_code varchar(40) DEFAULT NULL,
  forgotten_password_time int(11) unsigned DEFAULT NULL,
  remember_code varchar(40) DEFAULT NULL,
  created_on int(11) unsigned NOT NULL,
  last_login int(11) unsigned DEFAULT NULL,
  active tinyint(1) unsigned DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  company varchar(100) DEFAULT NULL,
  phone varchar(20) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into users(id,ip_address,username,password,salt,email,activation_code,forgotten_password_code,
                   forgotten_password_time,remember_code,created_on,last_login,active,first_name,last_name,company,phone) 
				   values (2,'127.0.0.1','luchop','$2a$08$U/KhUPmb3kldRnZSriP7g.1JA4igXSPQKpsJjDYZ.3rSN/s6pbjaW',NULL,
				   'luispaezrocha@yahoo.com','51bcacbe7b04c3ff87085c8d19073952c5da2599',NULL,NULL,NULL,1437140430,1438866868,1,
				   'luis','paez','sicomsº','23456789');

DROP TABLE IF EXISTS users_groups;

CREATE TABLE users_groups (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(11) unsigned NOT NULL,
  group_id mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uc_users_groups (user_id,group_id),
  KEY fk_users_groups_users1_idx (user_id),
  KEY fk_users_groups_groups1_idx (group_id),
  CONSTRAINT fk_users_groups_groups1 FOREIGN KEY (group_id) REFERENCES groups (id) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT fk_users_groups_users1 FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

insert  into users_groups(id,user_id,group_id) values (3,2,2);
