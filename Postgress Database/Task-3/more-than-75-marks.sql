--p6..https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(Name,3),ID ASC;