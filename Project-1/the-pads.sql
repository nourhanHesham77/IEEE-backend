--Medium(Basic)..https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true


-- SELECT name || '(' || substr(occupation,1,1) || ')' AS Occupation_Name FROM Occupations ORDER BY Occupation_Name ASC;

SELECT Name || '(' || LEFT(occupation,1) || ')'  AS lat FROM occupations
ORDER BY lat ASC;
--note..(GROUP BY)
SELECT 'There are a total of '||COUNT(occupation),LOWER(occupation)||'s.' FROM occupations GROUP BY occupation  ORDER BY COUNT(occupation), LOWER(occupation);