/* MVP Query 1: QBR 
According to ESPN, QBR incorporates all of a Quarterback's contributions to winning, including 
how he impacts the game on passes, rushes, turnovers, and penalties. RAW QBR is calculated 
as g(adjustedEPA/ActionPlays), where g() is a function that scales from 0-100, where 50 is 
the average */
SELECT 
    player, qbr
FROM
    passing_dataset
WHERE
    games_started > 11 AND position = 'QB'
ORDER BY qbr DESC
LIMIT 25;