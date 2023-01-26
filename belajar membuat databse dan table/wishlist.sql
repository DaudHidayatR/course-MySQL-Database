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