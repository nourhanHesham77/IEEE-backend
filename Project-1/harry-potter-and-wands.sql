--Medium(Intermediate)....https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

SELECT W1.id,P.age,W1.coins_needed,W1.power FROM Wands AS W1
JOIN Wands_Property AS P ON P.code=W1.code
WHERE P.is_evil = 0 AND (W1.coins_needed) = (SELECT MIN(W.coins_needed) FROM Wands AS W 
JOIN Wands_Property AS P2 ON P2.code=W.code AND P2.age=P.age AND P2.is_evil=0 AND W1.power=W.power )
 ORDER BY W1.power DESC ,P.age DESC;