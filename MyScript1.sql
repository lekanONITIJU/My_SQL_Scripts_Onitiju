-- SELECT *
-- FROM customers

-- SELECT first_name, last_name
-- FROM customers

-- SELECT * FROM orders

-- SELECT * FROM order_items

-- SELECT * from products

-- SELECT * FROM order_structures

-- SELECT * FROM customers
-- WHERE birth_date > "1990/01/01"

-- SELECT * FROM customers
-- WHERE customer_id > 1 AND customer_id <=6

-- SELECT * 
-- FROM customers
-- WHERE customer_id > 1 AND customer_id <=6
-- ORDER BY first_name

-- SELECT * 
-- FROM orders
-- WHERE status= "Cancelled"
-- ORDER BY shipper_id DESC

-- SELECT * , price*5 AS "new_price"
-- FROM products

-- SELECT *, 
		-- price, 
		-- price + 5 AS "price_+5", 
        -- price*5 AS "price_*5", 
        -- price-5 AS "price_<5", 
		-- (price+10)*5 AS "price2", 
        -- ((price+10)*5) - price AS "new_price"
-- FROM products
-- WHERE stock >70 AND stock <=200
-- ORDER BY stock

