-- Teilfrage 3: Anteil von Colorbuds am Monatsgewinn
SELECT
    strftime('%Y-%m', Date) AS Month,
    ROUND(SUM(Profit)) AS Total_Profit,
    ROUND(SUM(CASE WHEN Product_Name = 'Colorbuds' THEN Profit ELSE 0 END)) AS Colorbuds_Profit,
    ROUND(SUM(CASE WHEN Product_Name = 'Colorbuds' THEN Profit ELSE 0 END) * 100.0
          / SUM(Profit), 1) AS Colorbuds_Share_Pct
FROM sales_full
GROUP BY Month
ORDER BY Month;