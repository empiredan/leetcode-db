# Write your MySQL query statement below

SELECT Score,
	(SELECT COUNT(*)
	FROM (SELECT DISTINCT SCORE s FROM Scores) tmp
	WHERE s >= Score) Rank
FROM Scores
ORDER BY Score DESC;
