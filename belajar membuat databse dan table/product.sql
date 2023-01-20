CREATE TABLE product (
    id VARCHAR(10) NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP

)ENGINE = InnoDB;
show tables ;
DESC product;

INSERT INTO product(id, name, price, quantity)
values ('P001','Mie Ayam Jumbo',11000,100);
SELECT * FROM product;
INSERT INTO product(id, name,description, price, quantity)
values ('P002','Mie Ayam lava','Mie ayam pedas',15000,100);
SELECT * FROM product;

INSERT INTO product(id, name,description, price, quantity)
values ('P009','Bakso Dower','Bakso jumbo pedas',11000,50),
       ('P010', 'Bakso Dower lava','Bakso Jumbo++ pedas', 18000,750),
       ('P011','Bakso Iga','Bakso x Iga', 20000,40);
SELECT * FROM product;

SELECT id, name,price, quantity FROM  product;

SELECT name,quantity,id FROM  product;

ALTER TABLE  product
ADD PRIMARY KEY (id);

DESC product;
SELECT * FROM product WHERE quantity = 0;
SELECT * FROM product WHERE quantity = 100;
SELECT * FROM product WHERE price = 15000;

alter table product
ADD COLUMN  category ENUM('Makanan', 'Minuman', 'Lain-lain')
AFTER  name;
SELECT  * FROM product;

UPDATE  product
SET  ``.product.category = 'Makanan'
WHERE id = 'P001';

UPDATE  product
SET  ``.product.category = 'Makanan',
     description = 'mie yamin enak'
WHERE id = 'P008';


UPDATE  product
SET  description = 'Bakso Ukuran Jumbo'
WHERE id = 'P011';
SELECT * FROM product;

DELETE FROM product where id = 'P009';
