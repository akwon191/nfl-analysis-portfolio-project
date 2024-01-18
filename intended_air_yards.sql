/* MVP Query 3: IAY(Intended Air Yards)
Intended air yards are yards that a quarterback threw on all of his pass attempts, 
regardless of whether the pass was complete or not.  This statistic has a strong correlation 
with actual passing yards, with a r-squared over 0.85 */
SELECT 
    player, intended_air_yards
FROM
    adv_passing_dataset
ORDER BY intended_air_yards DESC
LIMIT 25;