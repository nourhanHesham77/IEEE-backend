--p7..https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN('a','e','i','o','u');
--another solution
SELECT CITY FROM STATION GROUP BY CITY HAVING RIGHT(CITY,1) NOT IN('a','e','i','o','u');