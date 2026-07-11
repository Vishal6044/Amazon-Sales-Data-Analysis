use office;
show tables;
SELECT 
    *
FROM
    amazon_sales_data;
    
    describe amazon_sales_data;
    
   --  Total sales
   
   SELECT 
    SUM(Total_Sales) AS -- Total_Sales yeha pe Total_sales naam ka koi coll nhi h jo h ye "Total sales" jo accept nhi kr rha h to hme iske naam ki change krnaa hoga 
FROM
    amazon_sales_data;
    
    alter table amazon_sales_data
    rename column `customer Name` to Customer_Name; -- hm yeha pe column na naam chng kr rhee hn

alter 
    
   alter table amazon_sales_data
   rename column `Total Sales` to Total_Sales;
   
   alter table amazon_sales_data
   rename column `Customer Location` to Customer_Location
   
   alter table amazon_sales_data
   rename column `Payment Method` to Payment_Method;
   
   alter table amazon_sales_data
   rename column `Order ID`to Order_ID;
   
   
  --  Total Sales
   SELECT 
    SUM(Total_Sales) AS total_sales   -- output = 243845
FROM
    amazon_sales_data;
    
   --  Total order
   
   SELECT 
    COUNT(Order_ID) AS Total_Orders  -- output= 250
FROM
    amazon_sales_data;
    
   -- Top 5 Customers with their Locations 
   
SELECT 
    Customer_Name, Customer_Location, Quantity
FROM
    amazon_sales_data
ORDER BY Quantity DESC;

SELECT 
    Customer_Name,
    Customer_Location,
    SUM(Quantity) AS Total_Quantity
FROM
    amazon_sales_data
GROUP BY Customer_Name,Customer_Location
ORDER BY Total_Quantity DESC
LIMIT 5;

	-- How many orders are Completed,Cancelled,Pending
    
    SELECT 
    Status,
    count(Status)
FROM
    amazon_sales_data
GROUP BY Status;

-- 	Kis Date ko jyda order hue hn 

SELECT 
    date, SUM(Quantity) AS Total_Quantity
FROM
    amazon_sales_data
GROUP BY date
ORDER BY Total_Quantity DESC;

-- ⦁	Top 5 Category With Their States

SELECT 
    Category, Customer_Location, SUM(Quantity) AS Total_Quantity
FROM
    amazon_sales_data
GROUP BY Category , Customer_Location
ORDER BY Total_Quantity DESC limit 5;


SELECT
    Category,
    Customer_Location,
    SUM(Quantity) AS Total_Quantity
FROM amazon_sales_data
GROUP BY Category, Customer_Location
ORDER BY Category, Total_Quantity DESC;