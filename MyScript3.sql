-- NULL OPERATION
-- get the customer whose phone number is NULL
-- SELECT *
-- FROM customers 
-- WHERE phone IS NULL

-- get the customer whose phone number is not NULL
-- SELECT *
-- FROM customers 
-- WHERE phone IS NOT NULL

-- get the orders that are not shipped
-- SELECT *
-- FROM orders 
-- WHERE status = "shipped"

-- LIMIT CLAUSE (How to limit the records in the search)
-- The LIMIT CLAUSE always comes last in the quary
-- 1. Get the records of first 3 orders
-- SELECT *
-- FROM orders
-- LIMIT 3

-- 2. Get the records of the next 3 orders after 6th oders
-- HINT: This means order 7,8, and 9 
-- SELECT *
-- FROM orders
-- LIMIT 6, 3

-- 3. Get the records of the top 3 stock from products table
-- SELECT *
-- FROM products
-- ORDER BY stock DESC
-- LIMIT 3

-- INNER JOIN (Selecting columns from multiple tables)
-- This works like Vlookup in Excel
-- 1. Join records from order table and customrs table using customer_id as the basis
-- SELECT *
-- FROM orders
-- JOIN customers 
	-- ON orders.customer_id=customers.customer_id

-- 2. Join records from order table and customrs table using customer_id as the basis 
-- and get the custormer_id from order table, order_id, custormer names, order_status 
-- SELECT orders.customer_id, order_id, first_name, last_name, order_date, status
-- FROM orders
-- JOIN customers 
	-- ON orders.customer_id=customers.customer_id
-- ORDER BY order_id
    
   -- JOIN CONDITION (representing the table namewith single letter e.g.orders = o)
    -- 3. Join records from order table and customrs table using customer_id as the basis 
-- and get the custormer_id from order table, order_id, custormer names, order_status 
-- SELECT o.customer_id, order_id, first_name, last_name, order_date, status
-- FROM orders o
-- JOIN customers c
	-- ON o.customer_id=c.customer_id
-- ORDER BY order_id

-- 4. Join records from order table and shipper table using shipper_id as the basis  
-- SELECT *
-- FROM orders o  
-- JOIN shippers s ON o.shipper_id=s.shipper_id

-- JOINING ACCROSS MULTIPLE DATABASESS
-- HINT: You need to prfix the table from another databases withthe database name
-- 1. Join records from order table in sales_db database 
-- and custormer table in sales100 database using customer_id as the basis  
-- SELECT *
-- FROM sales_db.orders so
-- JOIN sales100.customers sc ON so.customer_id=sc.customer_id

-- SELF JOINS (To join a table with itself, this is the same as joining another table)
-- HINT: make use of different alias letter. This can perfectly work in HR database where the list of emplyeees and manager code is another column in form of their staff ID
 -- 1. Get staff details and their manager where manager is represented by report_to (staff_id)
 --   SELECT *
-- 		e.employee_id,
-- 		e.first_name,
--		m.first_name AS manager
 --   FROM emplyees e
  --  JOIN emplyees M
--		ON e.reorts_to = m.employee_id

-- JOIN MORE THAN TWO TABLES
 -- 1. Get details from order, customers and shipper tables
 --		orders and customer based on customer_id, order and shipper table based on shipper_id
--	SELECT *
--	FROM orders o
--	JOIN customers c
--		ON o.customer_id = c.customer_id
--	JOIN shippers s
--		ON o.shipper_id =s.shipper_id
        
-- TO SIMPLIFY THE needed columns
      -- 2. Get details from order, customers and shipper tables orders and customer based on customer_id, order and shipper table based on shipper_id
--	SELECT 
--		o.order_id, 
--       o.order_date,
--       c.first_name,
--       c.last_name,
--       s.shipper_name AS shippers,
 --      o.status
--	FROM orders o
--	JOIN customers c
--		ON o.customer_id = c.customer_id
--	JOIN shippers s
--		ON o.shipper_id =s.shipper_id

-- OUTER JOINS (LEFT JOIN AND RIGHT JOIN)
-- Left join reveals all the records 
-- on right join not putting into consedrarion the logical condition

      -- 2. Get details from order, customers and shipper tables orders and customer based on customer_id, order and shipper table based on shipper_id
-- SELECT 
	-- o.order_date,
    -- o.order_id, 
	-- c.first_name,
    -- s.shipper_name AS shipper,
	-- o.status
-- FROM orders o
-- JOIN customers c
-- ON o.customer_id = c.customer_id
-- LEFT JOIN shippers s
-- ON o.shipper_id =s.shipper_id

-- NATURAL JOIN CAN PRODUCE UNDISCOURAGE RESULTS, SO DONT USE
-- SELECT 
	-- o.order_date,
    -- o.order_id, 
	-- c.first_name,
    -- o.status
-- FROM orders o
-- NATURAL JOIN customers c

-- CROSS JOINS: This is use to combine every record fron 1st table 
-- and every record in the 2nd table 

-- SELECT 
	-- c.customer_id,
    -- c.first_name AS customer,
    -- c.phone,
    -- p.product_name AS product,
    -- p.price
-- FROM customers c
-- CROSS JOIN products p

-- The implicit syntax produce same result

 -- SELECT 
	-- c.customer_id,
     -- c.first_name AS customer,
     -- c.phone,
     -- p.product_name AS product,
     -- p.price
 -- FROM customers c, products p
 
 -- UNIONS (COMBINE ROWS FROM MULTIPLE TABLES)
-- SELECT 
	-- order_id as "Result"
-- FROM orders
-- WHERE order_id >=490
-- UNION
-- SELECT 
	-- last_name
-- FROM customers
 