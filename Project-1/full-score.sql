--Medium(Intermediate)...https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

SELECT Submissions.hacker_id,Hackers.name FROM Hackers
JOIN Submissions ON Hackers.hacker_id=Submissions.hacker_id 
JOIN Challenges  ON Challenges.challenge_id = Submissions.challenge_id
JOIN Difficulty  ON Difficulty.difficulty_level=Challenges.difficulty_level AND Difficulty.score = Submissions.score 
GROUP BY Submissions.hacker_id, Hackers.name 
HAVING COUNT(Submissions.hacker_id) > 1 
ORDER BY COUNT(Submissions.challenge_id) DESC,hacker_id ASC;