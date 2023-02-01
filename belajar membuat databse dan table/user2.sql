START TRANSACTION ;
SELECT  * FROM guestbook;

UPDATE guestbook
SET title = 'ubah oleh user2'
WHERE id = 7;

COMMIT ;

START TRANSACTION ;
SELECT  * FROM  product;
SELECT  * FROM product WHERE id = 'P001' FOR UPDATE ;

UPDATE product
SET quantity = quantity -10
WHERE id = 'P001';


COMMIT ;

START TRANSACTION;
SELECT * FROM product WHERE id = 'P002' FOR UPDATE ;

SELECT * FROM  product WHERE id = 'P001' FOR UPDATE ;

COMMIT ;
UPDATE product
SET quantity = quantity -10
WHERE id = 'P001';