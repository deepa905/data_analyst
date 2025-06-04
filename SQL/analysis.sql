-- 1. Customer Segmentation (Top 5 Customers by Sales)
SELECT 
    Customer_Name, 
    SUM(Sales) AS Total_Sales,
    COUNT(Order_ID) AS Order_Count
FROM sales
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- 2. Product Performance (High Sales but Low Profit)
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales,
    AVG(Profit_Margin) AS Avg_Profit_Margin
FROM sales
GROUP BY Product_Name
HAVING Avg_Profit_Margin < 10 AND Total_Sales > 5000;
