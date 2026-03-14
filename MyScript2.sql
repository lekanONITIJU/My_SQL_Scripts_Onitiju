-- Get customers details born year 1990 and above
-- SELECT *
-- FROM customers
-- WHERE birth_date > "1990-01-01"

-- Get orders place in year 2024, serialise by date shipped
-- SELECT *
-- FROM orders
-- WHERE order_date >= "2024-01-01" AND order_date >= "2024-12-31"
-- ORDER BY shipping_date

-- Get orders place in the CURRENT YEAR , serialise by date shipped
-- SELECT *
-- FROM orders
-- WHERE order_date >= "2024-01-01" AND order_date >= "2024-12-31"
-- ORDER BY shipping_date

-- Get orders placed in year 2024 and orders canelled serialise by date shipped
-- SELECT *
-- FROM orders
-- WHERE order_date >= "2024-01-01" AND order_date <= "2024-12-31" AND status = "Cancelled"
-- ORDER BY shipping_date

-- Get orders placed in year 2024 OR orders shipped
-- SELECT *
-- FROM orders
-- WHERE order_date >= "2024-01-01" AND order_date <= "2024-12-31" OR status = "Shipped"

-- Get orders NOT placed in year 2025 and but shipped
-- SELECT *
-- FROM orders
-- WHERE NOT (order_date >= "2025-01-01" AND order_date <= "2025-12-31") AND status = "Shipped"

-- Get orders NOT placed in year 2025 and NOT shipped
-- SELECT *
-- FROM orders
-- WHERE NOT (order_date >= "2025-01-01" AND order_date <= "2025-12-31") AND NOT status = "Shipped"

-- Get orders NOT placed in year 2025 and NOT shipped
-- SELECT *
-- FROM orders
-- WHERE order_date < "2025-01-01"  AND NOT status = "Shipped"

-- From the product table, get the items for product id greater than 10 
-- where the stock is greater than 100
-- SELECT *
-- FROM products
-- WHERE product_id >=10 AND stock >=100 

-- IN OPERATOR (Return products with quantity in stock equal to 50, 120, 150)
 -- SELECT *
 -- FROM products
 -- WHERE stock IN (50, 120, 150)

-- NOT IN OPERATOR (Return products with quantity in stock not equal to 50, 120, 150)
 -- SELECT *
 -- FROM products
 -- WHERE stock NOT IN (50, 120, 150)
 
 -- BETWEEN OPERATOR (Return products with quantity in stock equal to 50, 120, 150)
 -- SELECT *
 -- FROM products
 -- WHERE stock BETWEEN 50 AND 120
 
 -- SELECT *
 -- FROM customers
 -- WHERE birth_date BETWEEN "1986-01-01" AND "1996-12-31"
 
 -- LIKE OPERATOR (To get rows that match with specific spring pathern)
 -- % to present any number of character
 -- _ to present a single character
 -- Retrive the records from customers table whose first name start with letter L
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name LIKE "l%"
 
 -- Retrive the records from customers table whose first name has letter a in it
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name LIKE "%a%"
 
 -- Retrive the records from customers table 
 -- whose last name ends with n 
 -- SELECT *
 -- FROM customers 
 -- WHERE last_name LIKE "%n"
 
 -- Get the customers whose phone number ends with 3 
 -- SELECT *
 -- FROM customers 
 -- WHERE phone LIKE "%3"
 
  -- Get the customers whose phone number dont ends with 3 
 -- SELECT *
 -- FROM customers 
 -- WHERE phone NOT LIKE "%3"
 
  -- Retrive the records from customers table 
 -- whose last name is 6 characters and ends with n. 
 -- HINT: use _ in 5 places before n 
 -- SELECT *
 -- FROM customers 
 -- WHERE last_name LIKE "_____n"
 
 -- Retrive the records from customers table 
 -- whose last name is 5 characters and starts with b and ends with n. 
 -- HINT: 3 _s should be btw b and n 
 -- SELECT *
 -- FROM customers 
 -- WHERE last_name LIKE "b___n"
 
 -- Get the customers whose address contains Avenue or Close 
 -- SELECT *
 -- FROM customers 
 -- WHERE address LIKE "%Avenue%" OR address LIKE "%Close%"
 
 -- USING REGEX (REGULAR EXPRESSION)IN PLACE OF LIKE
 -- % will not be used in REGEXP
 -- ^ begining: indicates the begining of a string. 
 -- 	"^Micheal" means the string must start with Micheal
 -- $ end: indicates the end of a string
 -- 	"Micheal$" means the string must end with Micheal
 -- | logical or: retrive either particular string OR the other
 -- 	"Avenue|Close" means the string must contain either Avenue OR Close
 -- [] retrive string that has specific character before of after certain character
 -- 	"[ac]e" means the string that ends with e but has ac before it
  -- [a-f] range a to f  
 
 -- Get the customers whose address contains Avenue or Close 
 -- SELECT *
 -- FROM customers 
 -- WHERE address REGEXP "Avenue" OR address REGEXP "Close"
 
  -- Get the customers whose address contains Avenue or Close or Road
 -- SELECT *
 -- FROM customers 
 -- WHERE address REGEXP "Avenue|Close|Road"
 
  -- Get the customers whose first name start with M or contains Emma or Lucas
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name REGEXP "^M|Emma|Lucas"
 
 -- Get the customers whose first name ends with E or contains Emma or Lucas
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name REGEXP "E$|Emma|Lucas"
 
 -- Get the customers whose first name ends with "e" but has "ac" beofre it
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name REGEXP "[ac]e"
 
  -- Get the customers whose first name 
  -- has "e" but still has "c" beofre it OR 
  -- has "e" but still has "o" beofre it
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name REGEXP "[c]e|[o]e"
 
 -- Get the customers whose first name 
 --    has "e" but has characer between a to h before it
 -- SELECT *
 -- FROM customers 
 -- WHERE first_name REGEXP "[a-h]l"