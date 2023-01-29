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

SELECT  id AS kode ,
        name AS nama,
        price AS harga,
        quantity AS stock,
        description AS keterangan
FROM product;

SELECT  p.id AS kode ,
        p.name AS nama,
        p.price AS harga,
        p.quantity AS stock,
        p.description AS keterangan
FROM product AS p;

SELECT  * FROM  product WHERE quantity >100;

SELECT  * FROM  product WHERE  quantity >= 100;

SELECT  * FROM  product WHERE  product.category !='Makanan';

SELECT  * FROM  product WHERE product.category <> 'Makanan';

SELECT  * FROM  product WHERE  quantity >= 100 AND  price < 15000;

SELECT  * FROM  product WHERE  quantity <= 70 OR  price < 15000;

SELECT * FROM  product WHERE name LIKE  'Mie%';

SELECT  * FROM  product WHERE price BETWEEN 9000 AND 15000;

SELECT  * FROM  product WHERE price NOT BETWEEN 9000 AND 15000;

SELECT * FROM  product ORDER BY price DESC , quantity;

SELECT *
FROM  product
WHERE  price> 0
ORDER BY price
limit 4;

SELECT distinct category FROM product;

SELECT  id, name, price DIV 1000 AS 'price in k' FROM product;

SELECT  id , cos(price), sin(price), tan(price) FROM product;

SELECT  id, name, price AS 'price in k' FROM product WHERE price DIV 1000 >15;


ALTER  table  product
ADD FULLTEXT  product_fulltext(name, description);

SELECT * FROM product
WHERE  MATCH(name, description) AGAINST('ayam' IN NATURAL  LANGUAGE  MODE );

SELECT * FROM product
WHERE  MATCH(name, description) AGAINST('+ayam -bakso' IN BOOLEAN MODE );

SELECT * FROM product
WHERE  MATCH(name, description) AGAINST('bakso' WITH QUERY EXPANSION );

INSERT INTO product(id, name,description, price, quantity)
values ('Pxxx','Contoh','lain-lain',15000,100);

ALTER TABLE product
    DROP  column category;

ALTER TABLE product
ADD COLUMN id_category VARCHAR(10);


ALTER TABLE product
ADD CONSTRAINT fk_product_category
FOREIGN KEY (id_category) REFERENCES category(id);

SELECT * FROM product;

INSERT INTO category(id, name)
VALUES ('C001', 'Makanan'),
       ('C002', 'Minuman'),
       ('C003', 'Lain-lain');

SELECT  * FROM category;

UPDATE  product
SET  id_category = 'C001'
WHERE id IN ('P001','P002','P003','P004','P005','P006');

SELECT  product.id, product.name, category.name
FROM product
JOIN category on product.id_category = category.id;