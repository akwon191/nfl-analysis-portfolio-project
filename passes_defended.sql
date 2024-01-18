/* DPOY Query 2: Passes Defended
This query will show the number of passes defended by a defensive player */
SELECT 
    player, passes_defended
FROM
    defense_dataset
WHERE
    games_played > 11
ORDER BY passes_defended DESC
LIMIT 25;