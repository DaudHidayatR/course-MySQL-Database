SHOW ENGINES;

SHOW TABLES;

CREATE TABLE barang
(
    id     INT          NOT NULL,
    nama   VARCHAR(100) NOT NULL,
    harga  INT          NOT NULL DEFAULT 0,
    jumlah INT          NOT NULL DEFAULT 0
) ENGINE = InnoDB;

DESCRIBE barang;

SHOW CREATE TABLE barang;

ALTER TABLE barang
ADD COLUMN deskripsi TEXT;

ALTER TABLE barang
ADD COLUMN  salah TEXT;

ALTER TABLE barang
DROP COLUMN salah;

ALTER TABLE barang
MODIFY nama varchar(100) after deskripsi;

ALTER TABLE barang
MODIFY  nama varchar(100) first ;
DESC barang;

ALTER TABLE barang
MODIFY id int NOT NULL ;
DESC barang;

ALTER TABLE barang
MODIFY nama varchar(100) NOT NULL ;

DESC barang;

ALTER TABLE  barang
MODIFY jumlah INT NOT NULL DEFAULT 0;

ALTER TABLE  barang
MODIFY harga INT NOT NULL DEFAULT 0;

ALTER TABLE  barang
ADD waktu_dibuat TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP;

INSERT INTO barang (id, nama) VALUES (1, 'apel');

SELECT * FROM barang;

TRUNCATE barang;

DROP TABLE barang;
SHOW TABLES ;