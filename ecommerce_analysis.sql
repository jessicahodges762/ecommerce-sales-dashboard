
-- ========================================
-- E-Commerce Sales Analysis
-- Author: Jessica Hodges
-- Description: SQL queries for cleaning and analyzing retail data
-- ========================================


-- 1. Create Revenue Column
SELECT *,
       Quantity * UnitPrice AS Revenue
FROM clean_retail;


-- 2. Customer-Level Revenue Aggregation
SELECT CustomerID,
       SUM(Quantity * UnitPrice) AS total_revenue
FROM clean_retail
WHERE Quantity > 0
GROUP BY CustomerID;


-- 3. Customer Segmentation
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS total_revenue,
    CASE 
        WHEN SUM(Quantity * UnitPrice) >= 100000 THEN 'High Value'
        WHEN SUM(Quantity * UnitPrice) >= 50000 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM clean_retail
GROUP BY CustomerID;


-- 4. Revenue Percentage by Segment
SELECT 
    customer_segment,
    ROUND(SUM(segment_revenue) * 100.0 /
        (SELECT SUM(Quantity * UnitPrice) FROM clean_retail WHERE Quantity > 0), 2
    ) AS revenue_percentage
FROM (
    SELECT 
        CustomerID,
        SUM(Quantity * UnitPrice) AS segment_revenue,
        CASE 
            WHEN SUM(Quantity * UnitPrice) >= 100000 THEN 'High Value'
            WHEN SUM(Quantity * UnitPrice) >= 50000 THEN 'Mid Value'
            ELSE 'Low Value'
        END AS customer_segment
    FROM clean_retail
    GROUP BY CustomerID
) sub
GROUP BY customer_segment;
