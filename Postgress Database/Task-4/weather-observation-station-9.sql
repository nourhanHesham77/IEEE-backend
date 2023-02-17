--p8..https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN('A','I','E','O','U');
--another solution
SELECT CITY FROM STATION GROUP BY CITY HAVING LEFT(CITY,1) NOT IN('A','E','I','O','U');