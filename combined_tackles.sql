/* DPOY Query 7: Combined Tackles
Combined tackles measures how many times a defensive player tackled the 
opposing player, including solo and assisted tackles (2+ defenders making a tackle in unison) */
SELECT 
    player, tackles
FROM
    defense_dataset
WHERE
    games_played > 11
ORDER BY tackles DESC
LIMIT 25;