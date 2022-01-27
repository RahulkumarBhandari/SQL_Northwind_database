 
      /*    TASK 2      */

use superstores;
SELECT* FROM cust_dimen;
/*1. Write a query to display the Customer_Name and Customer Segment using alias 
name “Customer Name", "Customer Segment" from table Cust_dimen.*/
SELECT Customer_Name as "Customer Name",Customer_Segment as "Customer Segment" FROM cust_dimen;

/*2.Write a query to find all the details of the customer from the table cust_dimen 
order by desc*/
SELECT* FROM cust_dimen ORDER BY Customer_Name DESC;

/*3.Write a query to get the Order ID, Order date from table orders_dimen where 
‘Order Priority’ is high.*/
SELECT Order_ID,Order_Date FROM orders_dimen WHERE Order_Priority="HIGH";

/*4.Find the total and the average sales (display total_sales and avg_sales) */
SELECT* FROM market_fact;
SELECT round(sum(Sales),2) as total_sales,round(avg(Sales),2) as avg_sales FROM market_fact;

/*5. Write a query to get the maximum and minimum sales from maket_fact table.*/
SELECT max(Sales),min(Sales) FROM market_fact;

/*6.Display the number of customers in each region in decreasing order of 
no_of_customers. The result should contain columns Region, no_of_customers.*/
SELECT Region, count(Cust_id) as "No_of_Customers" FROM cust_dimen GROUP BY Region
ORDER BY count(Cust_id);

/*7. Find the region having maximum customers (display the region name and 
max(no_of_customers)*/
select Region, count(Cust_id) as "No_of_Customers" from cust_dimen group by Region
order by count(Cust_id) DESC LIMIT 1;

/*8. Find all the customers from Atlantic region who have ever purchased ‘TABLES’ 
and the number of tables purchased (display the customer name, no_of_tables 
purchased) */
/*NOT doable
/*9.Find all the customers from Ontario province who own Small Business. (display 
the customer name, no of small business owners)*/
select* from cust_dimen;
SELECT distinct Customer_Name,Customer_Segment  FROM cust_dimen 
where Province="Ontario" AND Customer_Segment="SMALL BUSINESS";


/*10. Find the number and id of products sold in decreasing order of products sold 
(display product id, no_of_products sold) */
SELECT Prod_id, sum(Order_Quantity) as "no_of_products sold" FROM market_fact GROUP BY Prod_id
ORDER BY sum(Order_Quantity) DESC;

/*11. Display product Id and product sub category whose produt category belongs to 
Furniture and Technlogy. The result should contain columns product id, product 
sub category.*/ 
SELECT prod_Id as "product id",product_sub_category as "product sub category" FROM prod_dimen
WHERE Product_Category="Furniture" OR Product_Category="Technology" ;

/*12. Display the product categories in descending order of profits (display the product 
category wise profits i.e. product_category, profits)?*/

SELECT Product_Category as "Product Category", round(sum(Profit), 2) as "Profits"
FROM market_fact m join prod_dimen p on m.Prod_id = p.Prod_id GROUP BY  Product_Category
ORDER BY  sum(Profit) DESC;

/*13. Display the product category, product sub-category and the profit within each 
subcategory in three columns. */
SELECT Product_Category as "Product Category", Product_Sub_Category as "Product Sub Category",
round(sum(Profit), 2) as "Total Profits" FROM market_fact m JOIN prod_dimen p on m.Prod_id = p.Prod_id
GROUP BY Product_Sub_Category
ORDER BY Product_Category;

/*14. Display the order date, order quantity and the sales for the order*/

SELECT order_date as "order date",order_quantity as "order quantity",sales as "sales for the order" FROM orders_dimen o 
JOIN market_fact m on m.Ord_id=o.Ord_id;

/*15. Display the names of the customers whose name contains the 
 i) Second letter as ‘R’
 ii) Fourth letter as ‘D’ */

 SELECT Customer_Name FROM cust_dimen WHERE Customer_Name like '_R%' AND Customer_Name like'___D%';
 
 /*16. Write a SQL query to to make a list with Cust_Id, Sales, Customer Name and 
their region where sales are between 1000 and 5000.*/

SELECT Customer_Name,Sales,region FROM cust_dimen c JOIN market_fact m on m.Cust_id=c.Cust_id;

/*17. Write a SQL query to find the 3rd highest sales.*/
SELECT sales FROM market_fact ORDER BY sales DESC LIMIT 2,1;

/*18. Where is the least profitable product subcategory shipped the most? For the least 
profitable product sub-category, display the region-wise no_of_shipments and the profit made in each region in decreasing order of profits (i.e. region, 
no_of_shipments, profit_in_each_region)
 → Note: You can hardcode the name of the least profitable product subcategory */
/*Not doable




