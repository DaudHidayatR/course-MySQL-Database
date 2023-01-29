CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    total INT NOT NULL ,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)ENGINE = InnoDB;

DESC orders;

CREATE  TABLE orders_detail(
    id_product VARCHAR(10) NOT NULL ,
    id_order INT NOT NULL ,
    price INT NOT NULL,
    quantity INT NOT NULL ,
    PRIMARY KEY (id_product, id_order)
)ENGINE = InnoDB;

DESC orders_detail;

ALTER TABLE  orders_detail
ADD CONSTRAINT fk_order_detail_product
FOREIGN KEY (id_product) REFERENCES product(id);

ALTER TABLE  orders_detail
ADD CONSTRAINT fk_order_detail_orders
FOREIGN KEY (id_order) REFERENCES orders(id);

SHOW CREATE table orders_detail;

SELECT * FROM orders;

INSERT INTO  orders(total) VALUES (50000);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P001',1, 11000,1  ),
       ('P002',1, 15000,5  ),
       ('P003',2, 13000,3  ),
       ('P002',3, 15000,7  ),
       ('P001',2, 11000,1  ),
       ('P003',3, 13000,1  );

SELECT * FROM orders_detail;

SELECT * FROM orders
JOIN orders_detail ON  orders_detail.id_order = orders.id
JOIN  product ON product.id = orders_detail.id_product;

SELECT  orders.id, product.id,product.name, orders_detail.quantity, orders_detail.price FROM orders
JOIN orders_detail ON  orders_detail.id_order = orders.id
JOIN  product ON product.id = orders_detail.id_product;