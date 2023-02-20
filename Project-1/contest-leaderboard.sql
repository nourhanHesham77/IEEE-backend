--Medium(Intermediate)...https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

SELECT s1.hacker_id,Hackers.name ,SUM(s1.mscore) FROM Hackers
JOIN (SELECT s.hacker_id,s.challenge_id,MAX(s.score)AS mscore FROM Submissions AS s GROUP BY s.hacker_id,s.challenge_id )
AS s1 ON Hackers.hacker_id=s1.hacker_id
GROUP BY s1.hacker_id,Hackers.name HAVING SUM(s1.mscore) >0 ORDER BY SUM(s1.mscore) DESC,hacker_id;
