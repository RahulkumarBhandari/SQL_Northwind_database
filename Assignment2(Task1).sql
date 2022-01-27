                         /*     TASK 1    */

/*1. Describe the data in hand in your own words. */
  
/*This data contains Sales details of transaction of a superstore. 
 The database has 5 tables, namely cust_dimen (containing details about 
 customer and their respective locations), prod_dimen (containing 
 product category and their subcategories), orders_dimen (with order no,
 date, and priority), shipping_dimen (with ship date, order and shipping 
 mode), and market_fact (orderwise customerwise marketwise order quantity, 
 sales value, discount profit and shipping cost details).

 Upon proper database design these tables will get informationn handy upon 
 querying. These are having dimensions and has facts releated to it. using 
 market_fact we can derive various insights,useful hidden information  which will aid in 
 helping decisions regarding Product segmentwise sales and profitability, Shipping mode wise 
 profitability etc.  */
 
 /*2.Identify and list the Primary Keys and Foreign Keys for this dataset provided to 
you(In case you don’t find either primary or foreign key, then specially mention 
this in your answer) */

/* 1. cust_dimen - Cust_id as Primary Key, no foreign key
 2. prod_dimen - Prod_id as Primary Key, no foreign key 
 3. orders_dimen - Ord_id as Primary Key, although Order_ID is also there but 
	it is advisable to use Ord_id as primary Key to ensure relationship consistency. 
	But Order_ID will as foreign key in shipping_dimen will help retrieve the details
 4. shipping_dimen - Shipping id as primary key and Order_ID as foreign key.
 5. market_fact - Ord_id, Prod_id, Ship_id and Cust_id as foreign key. No Primary Key.     */

 