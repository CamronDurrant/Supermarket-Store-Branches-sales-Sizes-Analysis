---PULLING EVERYHTING FROM THE SUPERMARKET SCHEMA
SELECT *
FROM Stores$

----Figure out the stores store area to analyze and see which one had the highest store sales. (TABLEAU VIZULIZATION)
SELECT [Store ID ], Store_Area, Store_Sales
FROM Stores$
ORDER BY 3 DESC 

-----Which store has the largest physical area in yard square (TABLEAU VIZULIZATION)
SELECT [Store ID ], Store_Area
FROM Stores$
ORDER BY 2 DESC

SELECT [Store ID ], Store_Area, Items_Available
FROM Stores$
WHERE [Store ID ] = 541

SELECT [Store ID ], Store_Area, Items_Available
FROM Stores$
WHERE [Store ID ] = 467

---- Analyze which store had the most inventory and which one had the least.(Bigger the store area bigger the store inventory?) :)
SELECT [Store ID ], Store_Area, Items_Available
FROM Stores$
ORDER BY 2,3 DESC ---BIGGER THE STORE BIGGER THE INVENTORY ;)

-----All Stores Overall Inventory
SELECT [Store ID ], Items_Available
FROM Stores$
ORDER BY 2 DESC

-----Analyze the stores daily customer count on to find the top 5 stores that had the greatest amount of daily customers. (TABLEAU VIZULIZATION)
SELECT Top 5 [Store ID ], Daily_Customer_Count 
FROM Stores$
ORDER BY Daily_Customer_Count DESC

----DOES DAILY CUSTOMER COUNT AFFECT SALES?
SELECT  [Store ID ], Daily_Customer_Count, Store_Sales
FROM Stores$
ORDER BY 3 DESC 
