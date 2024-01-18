/* DPOY Query 8: Defensive Points Scored
This metric will include all defensive points that a defensive player has scored,
either through a touchdown for 6 points, or a safety (when a defensive player records
a sack or tackle-for-loss in the opposing team's own end zone) for 2 points */
SELECT 
    player,
    (int_touchdown * 6) + (fumble_touchdown * 6) + (safety * 2) AS total_def_points
FROM
    defense_dataset
WHERE
    games_played > 11
ORDER BY total_def_points DESC
LIMIT 25;