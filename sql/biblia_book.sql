CREATE TABLE biblia.tbl_book (
	bsn varchar(200),
    name varchar(200)
);

LOAD DATA LOCAL 
INFILE 'C:/wamp/www/biblia/csv/book.csv'
INTO TABLE biblia.tbl_book
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
#LINES TERMINATED BY '\r';
LINES TERMINATED BY '\r\n';

SELECT * FROM biblia.tbl_book ORDER BY bsn;

TRUNCATE TABLE biblia.tbl_book;

DROP TABLE biblia.tbl_book;
#-----------------------------
# show me authors and the books they wrote
SELECT a.name AS guy, b.name AS book
FROM tbl_ba a LEFT OUTER JOIN tbl_book b
ON (a.bsn = b.bsn)
ORDER BY guy DESC;
#-----------------------------
