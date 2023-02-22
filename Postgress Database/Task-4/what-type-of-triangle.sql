-- p4..https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Note about this: checking not triangle first then the rest, or put the 'not triangle' condition with all of them


-- (MYsql)
SELECT CASE WHEN (A+B <= C OR A+C <= B OR B+C <= A) THEN 'Not A Triangle' WHEN A=B AND B=C THEN 'Equilateral' WHEN ((A=B) AND (A!=C)) OR ((A=C) AND (A !=B)) OR ((B=C) AND (B!=A)) THEN 'Isosceles' ELSE 'Scalene' END
FROM TRIANGLES;