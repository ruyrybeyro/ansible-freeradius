create TABLE banned_list (
id int auto_increment,
mac_address varchar(50) NOT NULL default '', 
username varchar(64) NOT NULL default '',
PRIMARY KEY (id)
);
