-- Teilfrage 4: Lagerwert und Reichweite je Kategorie
-- Reichweite = Lagerwert / durchschnittliche monatliche Warenkosten (Juli bis September 2023)
WITH stock AS (
    SELECT Product_Category, SUM(Stock_Value) AS Stock_Value
    FROM inventory_full
    GROUP BY Product_Category
),
monthly_cost AS (
    SELECT Product_Category, SUM(Total_Cost) / 3.0 AS Monthly_Cost
    FROM sales_full
    WHERE Date >= '2023-07-01' AND Date < '2023-10-01'
    GROUP BY Product_Category
)
SELECT
    s.Product_Category,
    ROUND(s.Stock_Value)  AS Stock_Value,
    ROUND(c.Monthly_Cost) AS Monthly_Cost,
    ROUND(s.Stock_Value / c.Monthly_Cost, 2) AS Months_Coverage
FROM stock s
JOIN monthly_cost c ON c.Product_Category = s.Product_Category
ORDER BY Months_Coverage DESC;