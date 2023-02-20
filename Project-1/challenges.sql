--Medium(Intermediate)....https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

--note: the condition was if count=max then it's fine no matter if its repeated or not that's why OR is added. 
SELECT ch.hacker_id,Hackers.name,COUNT(ch.hacker_id) FROM Hackers
JOIN Challenges AS ch ON ch.hacker_id = Hackers.hacker_id
GROUP BY ch.hacker_id,Hackers.name
HAVING COUNT(ch.challenge_id) =(SELECT COUNT(ch2.challenge_id) FROM Challenges AS ch2 GROUP BY ch2.hacker_id ORDER BY
COUNT(*) DESC LIMIT 1) OR 
COUNT(ch.challenge_id) NOT IN (SELECT COUNT(ch3.challenge_id) FROM challenges
 AS ch3 GROUP BY ch3.hacker_id HAVING ch.hacker_id!=ch3.hacker_id)
ORDER BY COUNT(ch.challenge_id) DESC,hacker_id ASC;