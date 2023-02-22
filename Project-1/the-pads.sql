--Medium(Basic)..https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

--(MYSQL)
SELECT CONCAT(Name,'(',LEFT(occupation,1),')')  AS lat FROM occupations
UNION
SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.') AS lat  FROM occupations GROUP BY occupation  ORDER BY lat ASC;