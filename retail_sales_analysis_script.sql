SELECT

-----Date
DATE(Date) AS Purchase_date,
DAYNAME(Date) AS Day_name,
MONTHNAME(Date)As Month_name,
DAYOFMONTH(Date) AS Day_of_month,

CASE 

        WHEN Age BETWEEN 18 AND 35 THEN 'Youth'
        WHEN Age BETWEEN 36 AND 55 THEN 'Adult'
        ELSE 'Senior'
        END AS AgeGroup,

CASE
        WHEN Total_Amount < 100 THEN 'Low Spender'
        WHEN Total_Amount BETWEEN 100 AND 500 THEN 'Medium Spender'
        WHEN Total_Amount BETWEEN 501 AND 1000 THEN 'High Spender'
        ELSE 'Very High Spender'
        END AS SpendBucket,

------------Count

COUNT(DISTINCT transaction_id)AS Total_sales,
COUNT(DISTINCT customer_id)AS Number_of_customer,

--------------Sum

SUM(Quantity) AS Units_Sold,
SUM(Total_amount) AS Total_Revunue,

--------------Categories

Gender,
product_category,

FROM
TIN_CLOTHING.SALES.STORES
GROUP BY ALL;
