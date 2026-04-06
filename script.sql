USE rides;




SELECT COUNT(*) FROM divvy_trips_2018_q28; 

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q28
LIMIT 500000 OFFSET 0;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 500000;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 1000000;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 1500000;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 2000000;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 2500000;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 3000000;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q2
LIMIT 500000 OFFSET 3500000;

SELECT COUNT(*) FROM divvy_trips_2018_alll;

SELECT 'Q3' AS quarter, COUNT(*) FROM divvy_trips_2018_q3
UNION ALL
SELECT 'Q4', COUNT(*) FROM divvy_trips_2018_q4;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q3;

INSERT INTO divvy_trips_2018_alll
SELECT * FROM divvy_trips_2018_q4;

SELECT COUNT(*) FROM divvy_trips_2018_alll;

OPTIMIZE TABLE divvy_trips_2018_alll;


SELECT 
(SELECT COUNT(*) FROM divvy_trips_2018_q28) +
(SELECT COUNT(*) FROM divvy_trips_2018_q3) +
(SELECT COUNT(*) FROM divvy_trips_2018_q4) 
AS expected_total;



SELECT 
COUNT(*) AS total_rows,
COUNT(DISTINCT trip_pid) AS unique_trip_ids,
COUNT(*) - COUNT(DISTINCT trip_pid) AS duplicate_rows
FROM divvy_trips_2018_alll;

SET GLOBAL net_read_timeout = 1200;
SET GLOBAL net_write_timeout = 1200;
SET GLOBAL wait_timeout = 1200;
SET GLOBAL interactive_timeout = 1200;

SET GLOBAL max_allowed_packet = 1073741824;

CREATE TABLE divvy_trips_2018_cleann AS
SELECT DISTINCT *
FROM divvy_trips_2018_alll;


DROP table divvy_trips_2018_clean

CREATE TABLE divvy_trips_2018_clean LIKE divvy_trips_2018_alll;

ALTER TABLE divvy_trips_2018_clean
ADD PRIMARY KEY (trip_pid);


DROP TABLE IF EXISTS divvy_trips_2018_clean;

CREATE TABLE divvy_trips_2018_clean 
LIKE divvy_trips_2018_alll;

ALTER TABLE divvy_trips_2018_clean
ADD PRIMARY KEY (trip_pid);


INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 0;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 400000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 800000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 1200000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 1600000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 2000000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 2400000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 2800000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 3200000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 3600000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 4000000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 4400000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 4800000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 5200000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 5600000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 6000000;

INSERT IGNORE INTO divvy_trips_2018_clean
SELECT * FROM divvy_trips_2018_alll
LIMIT 400000 OFFSET 6400000;

SELECT COUNT(*) FROM divvy_trips_2018_clean;

SELECT COUNT(*) - COUNT(DISTINCT trip_pid)
FROM divvy_trips_2018_alll;


SELECT COUNT(*) - COUNT(DISTINCT trip_pid)
FROM divvy_trips_2018_q28;

	SELECT COUNT(*) 
	FROM (
		SELECT DISTINCT 
			start_time,
			end_time,
			bikeid,
			from_station_id,
			to_station_id
		FROM divvy_trips_2018_alll
	) AS t;

SELECT COUNT(*) FROM divvy_trips_2018_alll;

DROP TABLE divvy_trips_2018_all;

CREATE TABLE divvy_trips_2018_all
LIKE divvy_trips_2018_q28;

ALTER TABLE divvy_trips_2018_all
ADD PRIMARY KEY (trip_pid);



INSERT IGNORE INTO divvy_trips_2018_all
SELECT * FROM divvy_trips_2018_q28;

INSERT IGNORE INTO divvy_trips_2018_all
SELECT * FROM divvy_trips_2018_q3;

INSERT IGNORE INTO divvy_trips_2018_all
SELECT * FROM divvy_trips_2018_q4;

SELECT COUNT(*) 
FROM divvy_trips_2018_all;


SELECT COUNT(*) - COUNT(DISTINCT trip_pid)
FROM divvy_trips_2018_all;

SHOW CREATE TABLE divvy_trips_2018_all;



DROP TABLE IF EXISTS divvy_trips_2018_clean;

CREATE TABLE divvy_trips_2018_clean
LIKE divvy_trips_2018_all;

ALTER TABLE divvy_trips_2018_clean
MODIFY trip_pid INT NOT NULL;

ALTER TABLE divvy_trips_2018_clean
ADD PRIMARY KEY (trip_pid);

drop table if exists divvy_trips_2018_all



SHOW TABLES;

CREATE TABLE divvy_trips_2018_all
LIKE divvy_trips_2018_q28;


ALTER TABLE divvy_trips_2018_all
MODIFY trip_pid INT NOT NULL;

ALTER TABLE divvy_trips_2018_all
ADD PRIMARY KEY (trip_pid);



INSERT IGNORE INTO divvy_trips_2018_all
SELECT * FROM divvy_trips_2018_q28;

INSERT IGNORE INTO divvy_trips_2018_all
SELECT * FROM divvy_trips_2018_q3;

INSERT IGNORE INTO divvy_trips_2018_all
SELECT * FROM divvy_trips_2018_q4;


SELECT COUNT(*) FROM divvy_trips_2018_all;


SELECT COUNT(*) - COUNT(DISTINCT trip_pid)
FROM divvy_trips_2018_all;


SHOW TABLES;


SELECT 
    COUNT(*) AS total_rows,
    SUM(gender IS NULL) AS null_gender,
    SUM(birthyear IS NULL) AS null_birthyear,
    SUM(usertype IS NULL) AS null_usertype,
    SUM(start_time IS NULL) AS null_start_time,
    SUM(end_time IS NULL) AS null_end_time
FROM divvy_trips_2018_all;


!!
SELECT COUNT(*) 
FROM divvy_trips_2018_all
WHERE end_time <= start_time;

DELETE FROM divvy_trips_2018_all
WHERE end_time <= start_time;

SELECT MIN(tripduration), MAX(tripduration)
FROM divvy_trips_2018_all;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;


ALTER TABLE divvy_trips_2018_all
ADD COLUMN ride_length_minutes INT;


UPDATE divvy_trips_2018_all
SET ride_length_minutes =
TIMESTAMPDIFF(MINUTE, start_time, end_time);

SELECT MIN(ride_length_minutes), MAX(ride_length_minutes)
FROM divvy_trips_2018_all;

DELETE FROM divvy_trips_2018_all
WHERE ride_length_minutes <= 0
   OR ride_length_minutes > 1440;


!!an

ALTER TABLE divvy_trips_2018_all
ADD COLUMN ride_month INT;

UPDATE divvy_trips_2018_all
SET ride_month = MONTH(start_time);


ALTER TABLE divvy_trips_2018_all
ADD COLUMN ride_weekday VARCHAR(20);

UPDATE divvy_trips_2018_all
SET ride_weekday = DAYNAME(start_time);


DESCRIBE divvy_trips_2018_all;

SELECT *
FROM divvy_trips_2018_all
LIMIT 10;


SELECT COUNT(*) AS total_rows
FROM divvy_trips_2018_all;

SELECT DISTINCT usertype
FROM divvy_trips_2018_all;


SELECT DISTINCT gender
FROM divvy_trips_2018_all;

SELECT 
    MIN(start_time) AS first_trip,
    MAX(start_time) AS last_trip
FROM divvy_trips_2018_all;

SELECT 
    usertype,
    COUNT(*) AS total_rides
FROM divvy_trips_2018_all
GROUP BY usertype;

SELECT 
    AVG(ride_length_minutes) AS avg_ride
FROM divvy_trips_2018_all;


SELECT 
    AVG(ride_length_minutes) AS avg_ride
FROM divvy_trips_2018_all;

SELECT 
    MIN(ride_length_minutes),
    MAX(ride_length_minutes)
FROM divvy_trips_2018_all;

SELECT 
    MONTH(start_time) AS month,
    COUNT(*) AS rides
FROM divvy_trips_2018_all
GROUP BY month
ORDER BY month;

SELECT 
    DAYNAME(start_time) AS weekday,
    COUNT(*) AS rides
FROM divvy_trips_2018_all
GROUP BY weekday;

SELECT 
    HOUR(start_time) AS hour,
    COUNT(*) AS rides
FROM divvy_trips_2018_all
GROUP BY hour
ORDER BY hour;

select
	gender AS gender,
	COUNT(*) AS gender
FROM divvy_trips_2018_all
GROUP BY gender
ORDER BY gender;    


SELECT 
    usertype,
    AVG(ride_length_minutes)
FROM divvy_trips_2018_all
GROUP BY usertype;




SELECT 
    CASE 
        WHEN DAYOFWEEK(start_time) IN (1,7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    COUNT(*)
FROM divvy_trips_2018_all
GROUP BY day_type;


SELECT *
INTO OUTFILE '/tmp/divvy_clean.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM divvy_trips_2018_all;

SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * FROM divvy_trips_2018_all;

SELECT * 
FROM divvy_trips_2018_all
LIMIT 1000000 OFFSET 0;

SELECT * 
FROM divvy_trips_2018_all
LIMIT 1000000 OFFSET 1000000;

SELECT * 
FROM divvy_trips_2018_all
LIMIT 1000000 OFFSET 2000000;


SELECT * 
FROM divvy_trips_2018_all
LIMIT 1000000 OFFSET 3000000;