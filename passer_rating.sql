/* MVP Query 2: Passer Rating 
Passer rating, is calculated by using a player's passing attempts, completions, yards, 
touchdowns, and interceptions. In the NFL, passer rating sclaes from 0 - 158.3 */
SELECT 
    player, qb_rating
FROM
    passing_dataset
WHERE
    games_started > 11 AND position = 'QB'
ORDER BY qb_rating DESC
LIMIT 25;
