CREATE DATABASE `cima` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
USE 'cima';
GRANT ALL PRIVILEGES ON cima.* TO 'cima'@'localhost' IDENTIFIED BY 'cima' WITH GRANT OPTION;
FLUSH PRIVILEGES;

create table product (
id int(8) unsigned NOT NULL AUTO_INCREMENT, 
name varchar(255), 
summary varchar(255), 
introduction varchar(1024), 
product_type  varchar(2), 
img_path varchar(255), 
created_date datetime,
updated_date datetime,
remark varchar(255),
sort_num int(4) default 1000,
del_flag int(1) default 0,
PRIMARY KEY (id)
);

create table news (
id int(8) unsigned NOT NULL AUTO_INCREMENT, 
title varchar(255), 
summary varchar(255), 
content varchar(2048), 
news_type char(1),
created_date datetime,
updated_date datetime,
remark varchar(255),
sort_num int(4) default 1000,
del_flag int(1) default 0,
PRIMARY KEY (id)
);

create table message (
id int(8) unsigned NOT NULL AUTO_INCREMENT, 
person_name varchar(255), 
company_name varchar(255), 
email  varchar(255), 
phone   varchar(255), 
ip  varchar(255),
content varchar(2048), 
created_date datetime,
PRIMARY KEY (id)
);
