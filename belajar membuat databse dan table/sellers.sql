CREATE TABLE sellers(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL ,
    name2 VARCHAR(100) ,
    name3 VARCHAR(100) ,
    email varchar(100) NOT NULL ,
    primary key (id),
    UNIQUE KEY  email_unique (email),
    INDEX  name_index(name),
    INDEX  name2_index(name2),
    INDEX  name3_index(name3),
    INDEX name_name2_name3_index (name, name2, name3)
) ENGINE = InnoDB;
drop table sellers;
desc sellers;
show tables ;
show create table sellers;

SELECT * FROM sellers WHERE name = 'X';

SELECT * FROM sellers WHERE name = 'X' AND  name2 = 'X';

ALTER TABLE  sellers
DROP  INDEX  name_index;