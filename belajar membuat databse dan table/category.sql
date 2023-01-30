CREATE TABLE category(
    id VARCHAR(10) NOT NULL ,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
)ENGINE  = InnoDB;

DESC category;
SELECT  * FROM category;

INSERT INTO  category (id, name)
VALUES ('C004', 'Oleh-oleh'),
       ('C005', 'Gadget');
