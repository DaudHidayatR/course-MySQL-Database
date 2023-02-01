START TRANSACTION ;

SELECT * FROM guestbook;

UPDATE guestbook
SET title = 'ubah oleh user1'
WHERE id = 7;

COMMIT ;

START TRANSACTION ;

SELECT  * FROM  product;
SELECT  * FROM product WHERE id = 'P001' FOR UPDATE ;

UPDATE product
SET quantity = quantity +100
WHERE id = 'P001';
COMMIT ;

#DEADLOCK

START TRANSACTION ;

SELECT * FROM  product WHERE id = 'P001' FOR UPDATE ;

SELECT * FROM product WHERE id = 'P002' FOR UPDATE ;

#LOCK table

LOCK TABLES  product READ ;

UPDATE product
SET quantity = quantity -10
WHERE id = 'P001';

UNLOCK TABLES ;

LOCK TABLES  product WRITE ;
UPDATE product
SET quantity = quantity -10
WHERE id = 'P001';
UNLOCK TABLES ;

#LOCK INSTANCE
# LOCK INSTANCE FOR BACKUP;
# UNLOCK INSTANCE;
