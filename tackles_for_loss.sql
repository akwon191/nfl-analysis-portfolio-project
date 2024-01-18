/* DPOY Query 6: Tackles for Loss
Tackles for loss measures how many times a defensive player tackles an opposing 
Running Back behind the line of scrimmage, resulting in a negative amount of yards
gained on the play */
SELECT 
    player, tackles_for_loss
FROM
    defense_dataset
WHERE
    games_played > 11
ORDER BY tackles_for_loss DESC
LIMIT 25;