-- Top 10 profitable products
SELECT 
    Product_Name, 
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;
