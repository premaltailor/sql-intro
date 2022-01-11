-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

-- To Look up tables
-- SELECT * FROM players WHERE first_name = "Barry" and last_name = "Bonds"
-- SELECT * FROM stats WHERE player_ID = 1678;

SELECT SUM(stats.hits)
FROM players INNER JOIN stats ON players.id = stats.player_id
WHERE players.first_name = "Barry" 
AND  players.last_name = "Bonds";
