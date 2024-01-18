/* DPOY Query 3: Completion Percentage Allowed
This query calculates a defensive player's completion percentage allowed on targets 
with a minimum of 25 targets over the season */
SELECT 
    ad.player, ad.comp_percentage_allowed
FROM
    adv_defense_dataset ad
        JOIN
    defense_dataset d ON ad.player = d.player
WHERE
    d.games_played > 11
        AND ad.comp_percentage_allowed BETWEEN 5 AND 95
ORDER BY ad.comp_percentage_allowed
LIMIT 25;