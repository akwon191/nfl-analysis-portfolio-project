/* MVP Query 8: Touchdowns/Turnovers
This query will calculate the total number of passing and rushing touchdowns divided 
by the total number of turnovers that a QB has accounted for. */
SELECT 
    pd.player,
    ROUND((pd.touchdown + rd.touchdown) / (pd.interception + rd.fumbles),
            2) AS td_turnover_ratio
FROM
    passing_dataset pd
        JOIN
    rushing_dataset rd ON pd.player = rd.player
WHERE
    pd.games_started > 11
        AND pd.position = 'QB'
ORDER BY td_turnover_ratio DESC
LIMIT 25;