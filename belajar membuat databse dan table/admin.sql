CREATE TABLE admin
(
    id         INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name  VARCHAR(100),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SHOW TABLES;
DESC admin;
INSERT INTO admin(first_name, last_name)
VALUES ('daud', 'hidayat'),
       ('bintang', 'rahmatullah'),
       ('Rafli', 'ihsanudin'),
       ('nabil', 'najmudin'),
       ('zahwa', 'amira'),
       ('naela', 'fauzul');
SELECT * FROM admin;

INSERT INTO admin(first_name, last_name)
VALUES ('kharisma', 'suci');

SELECT LAST_INSERT_ID();