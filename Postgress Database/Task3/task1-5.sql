--task1..https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true
SELECT ROUND(AVG(POPULATION)) FROM CITY;

--task2..https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = 'California';

--task3..https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
SELECT COUNT(*) FROM CITY WHERE POPULATION > 100000;

--task4..https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
--Note about this: checking not triangle first then the rest, or put the 'not triangle' condition with all of them

SELECT CASE WHEN (A+B <= C) OR (A+C <= B) OR (B+C <= A) THEN 'Not A Triangle'
WHEN A=B AND B=C THEN 'Equilateral'
WHEN ((A=B) AND (A!=C)) OR ((A=C) AND (A !=B)) OR ((B=C) AND (B!=A)) THEN 'Isosceles'
WHEN A!=B AND A!=C AND B!=C THEN 'Scalene'
END
FROM TRIANGLES;

--task5..https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
SELECT name FROM Employee WHERE salary > 2000 AND months <10 ORDER BY employee_id;