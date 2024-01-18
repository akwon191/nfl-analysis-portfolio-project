/* DPOY Query 4: Sacks
This query calculates the total amount of times a defensive player tackled
the opposing QB behind the line of scrimmage */
SELECT 
    player, sack
FROM
    defense_dataset
WHERE
    games_played > 11
ORDER BY sack DESC
LIMIT 25;