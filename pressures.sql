/* DPOY Query 5: Pressures
Pressures include how many times a defensive player hurries, knockdowns, or sacks an 
opposing QB. This statistic is generally a much better indicator of the havoc a 
defensive player is causing on the offensive line and QB */
SELECT 
    d.player, ad.pressures
FROM
    defense_dataset d
        JOIN
    adv_defense_dataset ad ON d.player = ad.player
WHERE
    d.games_played > 11
ORDER BY ad.pressures DESC
LIMIT 25;