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

SELECT id , LOWER(name) as 'Name lower',LENGTH(name) as 'Name length' FROM product;

SELECT id , UPPER(name) as 'Name lower',LENGTH(name) as 'Name length' FROM product;

SELECT  id, created_at,
        EXTRACT(YEAR  FROM  created_at)as 'Year',
        EXTRACT(MONTH FROM  created_at)as 'Month'
FROM product;

SELECT  id, created_at, YEAR(created_at), MONTH(created_at) FROM product;

SELECT  id,
        CASE category
            WHEN 'Makanan' THEN  'Enak'
            WHEN 'Minuman' THEN 'Segar'
            ElSE 'apa itu?'
            END AS 'Category'
FROM product;

SELECT  id,
        price,
        IF(price <= 15000, 'Murah', IF(price <= 20000, 'Mahal', 'Mahal banget')) as 'Mahal?'
FROM product;

SELECT  id, name, IFNULL(description, 'kosong')as 'description' FROM product;