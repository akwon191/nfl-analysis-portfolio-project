/* DOPY Query 1: Interceptions
This query will display the total number of times a QB threw a pass
to the opposing team for a turnover of possession */
SELECT 
    player, interception
FROM
    defense_dataset
WHERE
    games_started > 11
ORDER BY interception DESC
LIMIT 25;