-- PRCE-002 Snack Analysis - Optional Supporting SQL
-- Assumes a combined table named snack_data with:
-- Brand, Item_Name, Calories, Fat_g, Carbs_g, Fiber_g,
-- Protein_g, Sodium_mg, Sugar_g, item_type

-- Overall brand comparison
SELECT
    Brand,
    COUNT(*) AS Item_Count,
    ROUND(AVG(Calories), 1) AS Calories_avg,
    ROUND(AVG(Fat_g), 1) AS Fat_g_avg,
    ROUND(AVG(Carbs_g), 1) AS Carbs_g_avg,
    ROUND(AVG(Fiber_g), 1) AS Fiber_g_avg,
    ROUND(AVG(Protein_g), 1) AS Protein_g_avg,
    ROUND(AVG(Sodium_mg), 1) AS Sodium_mg_avg,
    ROUND(AVG(Sugar_g), 1) AS Sugar_g_avg
FROM snack_data
GROUP BY Brand;

-- Brand and item-type comparison
SELECT
    Brand,
    item_type,
    COUNT(*) AS Item_Count,
    ROUND(AVG(Calories), 1) AS Calories_avg,
    ROUND(AVG(Fat_g), 1) AS Fat_g_avg,
    ROUND(AVG(Carbs_g), 1) AS Carbs_g_avg,
    ROUND(AVG(Fiber_g), 1) AS Fiber_g_avg,
    ROUND(AVG(Protein_g), 1) AS Protein_g_avg,
    ROUND(AVG(Sodium_mg), 1) AS Sodium_mg_avg,
    ROUND(AVG(Sugar_g), 1) AS Sugar_g_avg
FROM snack_data
GROUP BY Brand, item_type;

-- Highest-calorie items
SELECT Brand, Item_Name, Calories
FROM snack_data
WHERE Calories IS NOT NULL
ORDER BY Calories DESC
LIMIT 10;

-- Highest-sodium items
SELECT Brand, Item_Name, Sodium_mg
FROM snack_data
WHERE Sodium_mg IS NOT NULL
ORDER BY Sodium_mg DESC
LIMIT 10;

-- Highest-sugar items
SELECT Brand, Item_Name, Sugar_g
FROM snack_data
WHERE Sugar_g IS NOT NULL
ORDER BY Sugar_g DESC
LIMIT 10;
