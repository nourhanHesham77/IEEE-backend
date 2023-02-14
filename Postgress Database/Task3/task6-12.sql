--task6..https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN('A','E','I','O','U') OR RIGHT(CITY,1) NOT IN('a','e','i','o','u'); 

--task7..https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN('a','e','i','o','u');
--another solution
SELECT CITY FROM STATION GROUP BY CITY HAVING RIGHT(CITY,1) NOT IN('a','e','i','o','u');

--task8..https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN('A','I','E','O','U');
--another solution
SELECT CITY FROM STATION GROUP BY CITY HAVING LEFT(CITY,1) NOT IN('A','E','I','O','U');

--task9..https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN('A','E','I','O','U') AND RIGHT(CITY,1) IN('a','e','i','o','u');

--task10..https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) IN('a','e','i','o','u');

--task11..https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN('A','E','I','O','U');

--task12..https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY LIMIT 1;
SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;
--another solution
SELECT CITY,LENGTH(CITY) FROM STATION WHERE LENGTH(CITY)=(SELECT MAX(LENGTH(CITY)) FROM STATION) ORDER BY CITY LIMIT 1;
SELECT CITY,LENGTH(CITY) FROM STATION WHERE LENGTH(CITY)=(SELECT MIN(LENGTH(CITY)) FROM STATION) ORDER BY CITY LIMIT 1;
--another solution
SELECT CITY,LENGTH(CITY) FROM STATION  WHERE LENGTH(CITY) IN (SELECT MAX(LENGTH(CITY)) FROM STATION UNION SELECT
 MIN(LENGTH(CITY)) FROM STATION) ORDER BY LENGTH(CITY) DESC,CITY ASC LIMIT 2;