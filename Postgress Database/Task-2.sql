--Task1..https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true
SELECT * FROM CITY;

--Task2..https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

--Task3..https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

--Task4..https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
SELECT NAME FROM CITY WHERE COUNTRYCODE='JPN';

--Task5..https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true
SELECT name FROM Employee ORDER BY name;

--Task6..https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(Name,3),ID ASC;

--Task7..https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
--i used cast to throw zeros after 2 dec.
SELECT CAST(ROUND(SUM(LAT_N), 2)AS NUMERIC(12,2)) AS lat, CAST(ROUND(SUM(LONG_W), 2) AS NUMERIC(12,2)) AS lan from STATION;

--Task8..https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN('A','E','I','O','U') AND RIGHT(CITY,1) NOT IN('a','e','i','o','u'); 

