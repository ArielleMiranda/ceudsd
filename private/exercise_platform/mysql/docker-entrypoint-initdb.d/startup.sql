CREATE USER 'zeppelin'@'%' IDENTIFIED BY 'zeppelin';


CREATE DATABASE admin; 
USE admin;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE barbayeva_anna; 
USE barbayeva_anna;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE benya_diana;
USE benya_diana;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE canyurt_baha;
USE canyurt_baha;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE cheng_alec;
USE cheng_alec;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE figuerres_karlo;
USE figuerres_karlo;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE futo_gergely;
USE futo_gergely;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE grigoryan_anna;
USE grigoryan_anna;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE gulyas_attila;
USE gulyas_attila;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE jarabek_gergely;
USE jarabek_gergely;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE kacerja_ilda;
USE kacerja_ilda;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE kerekes_szabolcs;
USE kerekes_szabolcs;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE mishra_abhishek;
USE mishra_abhishek;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE molnar_istvan;
USE molnar_istvan;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE molnar_monika;
USE molnar_monika;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE pasztor_benedek;
USE pasztor_benedek;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE surman_domonkos;
USE surman_domonkos;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE szekely_gergo;
USE szekely_gergo;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE szigeti_patrik;
USE szigeti_patrik;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE tanveer_sama;
USE tanveer_sama;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE toth_bence;
USE toth_bence;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE gaspor_adam;
USE gaspor_adam;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE li_shengxia;
USE li_shengxia;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE qamar_iqra;
USE qamar_iqra;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;



CREATE DATABASE alshaibani_ahmed;
USE alshaibani_ahmed;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE matisz_agnes;
USE matisz_agnes;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;


GRANT FILE ON *.* TO 'zeppelin'@'%';
GRANT ALL PRIVILEGES ON admin.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON barbayeva_anna.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON benya_diana.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON canyurt_baha.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON cheng_alec.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON figuerres_karlo.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON futo_gergely.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON grigoryan_anna.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON gulyas_attila.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON jarabek_gergely.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON kacerja_ilda.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON kerekes_szabolcs.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON mishra_abhishek.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON molnar_istvan.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON molnar_monika.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON pasztor_benedek.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON surman_domonkos.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON szekely_gergo.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON szigeti_patrik.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON tanveer_sama.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON toth_bence.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON gaspor_adam.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON li_shengxia.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON qamar_iqra.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON alshaibani_ahmed.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON matisz_agnes.* TO 'zeppelin'@'%' WITH GRANT OPTION;
