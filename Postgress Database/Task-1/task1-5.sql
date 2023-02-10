-- task1..https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
SELECT * FROM CITY WHERE ID = 1661;

-- task2..https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
SELECT CITY,STATE FROM STATION;

--task3..https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE='USA';

--task-4..https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0;

--task-5..https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
SELECT COUNT(CITY)-COUNT(DISTINCT CITY) FROM STATION;
