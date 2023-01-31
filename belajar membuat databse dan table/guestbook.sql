CREATE TABLE guestbook (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100),
    title VARCHAR(200),
    content TEXT,
    PRIMARY KEY (id)
)ENGINE = InnoDB;

drop table guestbook;

SELECT  * FROM customers;

INSERT INTO guestbook(email, title, content)
values ('daud28ramadhan@gmail.com','hello', 'hello'),
       ('daud28hidayat@gmail.com','hello', 'hello'),
       ('guest2@gmail.com','hello', 'hello'),
       ('guest3@gmail.com','hello', 'hello');

SELECT * FROM guestbook;

SELECT  DISTINCT  email FROM customers
UNION
SELECT DISTINCT  email FROM guestbook;


SELECT  emails.email , count(emails.email) FROM (
SELECT email FROM  customers
UNION ALL
SELECT email FROM guestbook) as emails
GROUP BY  emails.email;

SELECT DISTINCT  email FROM  customers
WHERE email IN (SELECT DISTINCT  email FROM  guestbook);

SELECT DISTINCT  customers.email FROM customers
INNER JOIN  guestbook ON guestbook.email = customers.email;

SELECT DISTINCT customers.email FROM customers
LEFT JOIN guestbook g on customers.email = g.email
WHERE  g.email IS NULL ;


