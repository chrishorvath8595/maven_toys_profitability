-- Teilfrage 2: Gewinn und Marge je Produktkategorie
-- Vergleich Januar bis September 2022 gegen 2023 (2023 reicht nur bis 30.09.)
SELECT
    Product_Category,
    strftime('%Y', Date) AS Year,
    ROUND(SUM(Revenue))  AS Revenue,
    ROUND(SUM(Profit))   AS Profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Revenue), 1) AS Margin_Pct
FROM sales_full
WHERE strftime('%m', Date) <= '09'
GROUP BY Product_Category, Year
ORDER BY Product_Category, Year;