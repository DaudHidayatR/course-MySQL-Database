create TABLE customers
(
    id INT NOT NULL  AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL ,
    first_name VARCHAR(100) NOT NULL ,
    last_name VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE email_unique(email)
)ENGINE= InnoDB;

desc customers;

INSERT INTO customers(email, first_name, last_name)
values ('daud28ramadhan@gmail.com', 'daud hidayat', 'ramadhan');

INSERT INTO customers(email, first_name, last_name)
values ('daud28hidayat@gmail.com', 'daud hidayat', 'ramadhan');

SELECT * FROM customers;
SELECT * FROM product;

INSERT INTO product (id, name, category, quantity, price)
values('P015','permen', 'lain-lain', 500, 1000);

update  product
SET quantity = 1000 WHERE id = 'P015';

ALTER TABLE product
ADD  CONSTRAINT  price_check CHECK ( price >=1000 );

SHOW create table product;