/* MVP Query 4: YAC(Yards After Catch)
Yards after Catch are yards that a receiver ran for after making the catch. This statistic
is relevant because it demonstrates the QB's ability to throw an accurate pass while leading
his receiver into open space to run */
SELECT 
    ad.player, ad.yards_after_catch
FROM
    adv_passing_dataset ad
        JOIN
    passing_dataset d ON ad.player = d.player
WHERE
    d.games_played > 11
        AND d.position = 'QB'
ORDER BY yards_after_catch DESC
LIMIT 25;