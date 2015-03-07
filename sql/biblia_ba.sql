CREATE TABLE biblia.tbl_ba (
	name varchar(200),
    bsn varchar(200)
);

LOAD DATA LOCAL 
INFILE 'C:/wamp/www/biblia/csv/ba.csv'
INTO TABLE biblia.tbl_ba
#COLUMNS TERMINATED BY ','
FIELDS TERMINATED BY ','
#OPTIONALLY ENCLOSED BY '"'
ENCLOSED BY '"'
ESCAPED BY '"'
#LINES TERMINATED BY '\r';
#LINES TERMINATED BY '\n';
LINES TERMINATED BY '\r\n';
#------------------------------------
SET SQL_SAFE_UPDATES = 0;
UPDATE biblia.tbl_ba SET name = ltrim(name);
SET SQL_SAFE_UPDATES = 1;
#------------------------------------
SELECT * FROM biblia.tbl_ba ORDER BY name DESC;
SELECT name FROM biblia.tbl_ba WHERE name LIKE '%Zephaniah';

#------------------------------------
ALTER TABLE biblia.tbl_ba 
ADD COLUMN id FIRST;
#----------------------------------
TRUNCATE TABLE biblia.tbl_ba;
#----------------------------------
DROP TABLE biblia.tbl_ba;


