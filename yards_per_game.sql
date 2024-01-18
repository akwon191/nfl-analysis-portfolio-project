/* MVP Query 2: Yards Per Game
This metric calculates the total number of passing and rushing yards
per game that a QB accounted for */
SELECT 
    pd.player,
    ROUND(pd.yards_per_game + rd.yards_per_game, 2) AS yards_total
FROM
    passing_dataset pd
        JOIN
    rushing_dataset rd ON pd.player = rd.player
WHERE
    pd.games_started > 11
        AND pd.position = 'QB'
ORDER BY yards_total DESC
LIMIT 25;