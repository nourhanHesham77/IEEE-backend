--Medium(Basic)..https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true

SELECT CAST(ROUND(ABS(MAX(LAT_N)-MIN(LAT_N))+ABS(MAX(LONG_W)-MIN(LONG_W)),4) AS NUMERIC(12,4)) FROM STATION;