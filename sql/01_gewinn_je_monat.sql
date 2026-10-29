-- Teilfrage 1: Entwicklung von Umsatz, Gewinn und Marge je Monat
SELECT
    strftime('%Y-%m', Date) AS Month,
    ROUND(SUM(Revenue))     AS Revenue,
    ROUND(SUM(Profit))      AS Profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Revenue), 1) AS Margin_Pct
FROM sales_full
GROUP BY Month
ORDER BY Month;