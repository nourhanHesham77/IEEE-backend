CREATE TABLE city (
    ID BIGSERIAL NOT NULL PRIMARY KEY ,
    NAME VARCHAR(17) NOT NULL,
    COUNTRYCODE VARCHAR(3) NOT NULL,
    DISTRICT VARCHAR(20),
    POPULATION NUMERIC
);

CREATE TABLE station (
    ID BIGSERIAL NOT NULL PRIMARY KEY ,
    CITY VARCHAR(21) NOT NULL,
    STATE VARCHAR(2) NOT NULL,
    LAT_N NUMERIC,
    LONG_W NUMERIC
);

--example of insertion---
INSERT INTO city (NAME,COUNTRYCODE,DISTRICT,POPULATION) VALUES ('sayma','JPN','saitama','162472');