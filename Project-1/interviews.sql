--Hard...https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true


SELECT c.contest_id,c.hacker_id,c.name,SUM(ss.total_submissions),SUM(SS. total_accepted_submissions),SUM(vs.total_views),SUM(vs.total_unique_views) FROM Contests AS c
JOIN Colleges  ON Colleges.contest_id=c.contest_id
JOIN Challenges ON Colleges.college_id=Challenges.college_id
LEFT JOIN (SELECT v.challenge_id,SUM(v.total_views)as total_views,SUM(v.total_unique_views) as total_unique_views FROM View_Stats AS v GROUP BY v.challenge_id  )AS vs ON Challenges.challenge_id=vs.challenge_id
LEFT JOIN (SELECT s.challenge_id, SUM(s.total_submissions) as total_submissions,SUM(s.total_accepted_submissions)as total_accepted_submissions FROM Submission_Stats AS s GROUP BY s.challenge_id ) AS ss ON ss.challenge_id=Challenges.challenge_id

GROUP BY  c.contest_id,c.hacker_id,c.name HAVING (SUM(ss.total_submissions)>0 OR SUM(SS.total_accepted_submissions)>0 OR SUM(vs.total_views)>0 OR SUM(vs.total_unique_views)>0)ORDER BY c.contest_id;