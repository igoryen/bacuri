CREATE TABLE biblia.tbl_bc (
	bsn varchar(200),
    name varchar(200)
);

LOAD DATA LOCAL 
INFILE 'C:/wamp/www/biblia/csv/bc.csv'
INTO TABLE biblia.tbl_bc
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
#LINES TERMINATED BY '\r';
LINES TERMINATED BY '\r\n';

SELECT * FROM biblia.tbl_bc ORDER BY name;

TRUNCATE TABLE biblia.tbl_bc;
DROP TABLE biblia.tbl_bc;
#----------------------------------
SELECT count(*) FROM  biblia.tbl_bc;
#----------------------------------
SELECT count(DISTINCT name) FROM  biblia.tbl_bc;
#---------------------------------
SELECT DISTINCT name FROM  biblia.tbl_bc ORDER BY name;