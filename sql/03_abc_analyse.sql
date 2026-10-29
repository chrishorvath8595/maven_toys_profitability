-- Teilfrage 3: ABC-Analyse der Produkte nach Gewinn
-- A: bis 80 % des Gesamtgewinns, B: bis 95 %, C: der Rest
WITH product_profit AS (
    SELECT Product_Name, SUM(Profit) AS Profit
    FROM sales_full
    GROUP BY Product_Name
),
ranked AS (
    SELECT
        Product_Name,
        Profit,
        SUM(Profit) OVER (ORDER BY Profit DESC) AS Cumulative_Profit,
        SUM(Profit) OVER ()                     AS Total_Profit
    FROM product_profit
)
SELECT
    Product_Name,
    ROUND(Profit) AS Profit,
    ROUND(Cumulative_Profit * 100.0 / Total_Profit, 1) AS Cumulative_Share_Pct,
    CASE
        WHEN (Cumulative_Profit - Profit) < 0.80 * Total_Profit THEN 'A'
        WHEN (Cumulative_Profit - Profit) < 0.95 * Total_Profit THEN 'B'
        ELSE 'C'
    END AS ABC_Class
FROM ranked
ORDER BY Profit DESC;