--Medium(Intermediate)...https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

SELECT CASE
    WHEN GRADES.GRADE >= 8 THEN STUDENTS.NAME
    WHEN GRADES.GRADE < 8 THEN 'NULL' END AS NAME ,GRADES.GRADE, STUDENTS.MARKS
FROM Students
JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark 
ORDER BY GRADES.GRADE DESC, STUDENTS.NAME ASC, STUDENTS.MARKS ASC;