CREATE TABLE biblia.tbl_bna (
	bsn varchar(200),
    abbr varchar(200)
);

LOAD DATA LOCAL 
INFILE 'C:/wamp/www/biblia/csv/bna.csv'
INTO TABLE biblia.tbl_bna
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
#LINES TERMINATED BY '\r';
LINES TERMINATED BY '\r\n';

SELECT * FROM biblia.tbl_bna ORDER BY abbr;

TRUNCATE TABLE biblia.tbl_bna;

DROP TABLE biblia.tbl_bna;