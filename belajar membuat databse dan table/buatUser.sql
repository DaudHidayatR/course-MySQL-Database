CREATE USER 'daud'@'localhost';
CREATE USER 'kipli'@'localhost';

DROP  USER 'daud'@'localhost';
DROP USER  'kipli'@'localhost';

GRANT  SELECT ON  belajar_mysql.* TO 'daud'@'localhost';
GRANT SELECT ON  belajar_mysql.* TO 'kipli'@'localhost';

GRANT INSERT, UPDATE, DELETE ON  belajar_mysql.* TO 'daud'@'localhost';

SHOW GRANTS FOR 'daud'@'localhost';

SET PASSWORD  FOR 'daud'@'localhost' = PASSWORD ('rahasia');
SET PASSWORD  FOR 'kipli'@'localhost' = PASSWORD ('rahasia');