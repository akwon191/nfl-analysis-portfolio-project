/* MVP Query 6: Sack Percentage
Sack Percentage is calculated by the following formula: 
((Passes Attempted + Times Sacked)/Times Sacked)
This stat shows a QB's ability to escape pressure from the defense while also attempting
a pass play. */
SELECT 
    player, sack_percentage
FROM
    passing_dataset
WHERE
    games_started > 11 AND position = 'QB'
ORDER BY sack_percentage
LIMIT 25;
