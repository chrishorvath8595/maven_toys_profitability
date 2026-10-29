-- Teilfrage 4: Produkt-Filial-Kombinationen ohne Lagerbestand
SELECT
    Product_Name,
    COUNT(*) AS Stores_Without_Stock
FROM inventory_full
WHERE Stock_On_Hand = 0
GROUP BY Product_Name
ORDER BY Stores_Without_Stock DESC;