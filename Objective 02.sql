-- ## Objectives 02 ##
USE restaurant_db;

-- -- 1. View the order details table.
SELECT *
FROM order_details

-- -- 2. What is the date range of the table?
SELECT min(order_date), max(order_date)
FROM order_details

-- -- 3. How many orders were made within this date range?
SELECT count(DISTINCT order_id) as total_orders
FROM order_details

-- -- 4. How many items were ordered within this date range?
SELECT count(*)
FROM order_details

-- -- 5. Which orders had the most number of items?
SELECT order_id, count(item_id) as num_of_items
FROM order_details
GROUP BY order_id
ORDER BY num_of_items DESC



-- -- 6. How many orders had more than 12 items?
SELECT COUNT(*) as num_of_orders
FROM (SELECT order_id, count(item_id) as num_of_items
		FROM order_details
		GROUP BY order_id
		HAVING num_of_items > 12) AS num_orders

