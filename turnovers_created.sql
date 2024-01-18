1/* DOPY Query 1: Turnovers Created 
This query will display the total number of times a defensive player intercepted an 
opposing QB's pass or tackled the opposing player and causing a fumble */
SELECT 
    player, interception + forced_fumbles AS turnovers_created
FROM
    defense_dataset
WHERE
    games_started > 11
ORDER BY turnovers_created DESC
LIMIT 25;