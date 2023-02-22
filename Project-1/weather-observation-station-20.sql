--Medium(Intermediate)..https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
--(MYSQL)..
--note:the problem in hackerrank only tests the odd num of rows so there is no need for adding even condition

 --note:in this solution the condition was that the count before selected one = the count after the selected one which is the median
 --in case even we can add(sum(s.lat_n)/2) inside of round..
SELECT ROUND(S.LAT_N,4) FROM STATION AS S WHERE
 (SELECT count(LAT_N) FROM STATION WHERE LAT_N < S.LAT_N ) = (SELECT count(LAT_N) FROM STATION WHERE LAT_N > S.LAT_N);


--another solution..
  SELECT ROUND(LAT_N,4)  FROM (SELECT LAT_N,ROW_NUMBER() OVER(ORDER BY LAT_N ASC) AS NAS, ROW_NUMBER() 
   OVER (ORDER BY LAT_N DESC) AS NDES FROM STATION) AS ST2 WHERE ST2.NAS =ST2.NDES;