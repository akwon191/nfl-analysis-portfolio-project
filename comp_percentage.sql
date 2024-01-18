/* MVP Query 5: Completion Percentage
Completion Percentage calculates the number of completed passes by a QB divided by the
number of passes thrown. */
SELECT 
    player, comp_percentage
FROM
    passing_dataset
WHERE
    games_started > 11 AND position = 'QB'
ORDER BY comp_percentage DESC
LIMIT 25;