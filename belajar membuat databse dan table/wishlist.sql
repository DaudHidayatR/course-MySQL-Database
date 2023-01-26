CREATE TABLE wishlist(
    id INT NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(10) NOT NULL ,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlist_product
                     FOREIGN KEY (id_product) references product(id)
)ENGINE = InnoDB;

show tables;
show create table wishlist;

ALTER TABLE  wishlist
DROP  CONSTRAINT fk_wishlist_product;

ALTER TABLE  wishlist
ADD  CONSTRAINT fk_wishlist_product
FOREIGN KEY (id_product) REFERENCES product (id);

ALTER TABLE  wishlist
ADD CONSTRAINT fk_wishlist_product
FOREIGN KEY (id_product) REFERENCES product (id)
ON DELETE CASCADE ON UPDATE CASCADE ;

ALTER TABLE wishlist
ADD description TEXT;
INSERT INTO wishlist(id_product,description)
VALUES ('P001', 'Makanan Kesukaan');

DELETE
    FROM product
WHERE id = 'Pxxx';

SELECT * FROM wishlist;
SELECT * FROM product;
INSERT INTO wishlist(id_product,description)
values ('pxxx', 'makanan Kesukaan');

SELECT * FROM wishlist JOIN product p on p.id = wishlist.id_product;

SELECT
    w.id,
    p.id,
    p.name,
    w.description
FROM wishlist w
    join product p on w.id_product = p.id;

desc customers;

ALTER TABLE  wishlist
ADD COLUMN  id_customer INT;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customer
FOREIGN KEY (id_customer) REFERENCES  customers(id);

SELECT  * FROM  customers;

UPDATE wishlist
SET wishlist.id_customer= 1 WHERE wishlist.id =1;

SELECT
    w.id,
    c.id,
    p.id,
    c.email,
    p.id,
    p.name,
    w.description
FROM wishlist w
    join product p on w.id_product = p.id
    JOIN customers c ON w.id_customer = c.id;