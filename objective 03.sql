-- ## Objectives 03 ##
USE restaurant_db;

-- -- 1. combine menu items and order details in a single table.
SELECT * FROM menu_items
SELECT * FROM order_details

SELECT *
FROM order_details as od LEFT JOIN menu_items as mi
						ON od.item_id = mi.menu_item_id

-- -- 2. what were least and most ordered items? what categories were they in?
-- least
SELECT item_name, category, count(order_details_id) as num_purchases
FROM order_details as od LEFT JOIN menu_items as mi
						ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases 

-- most
SELECT item_name, category, count(order_details_id) as num_purchases
FROM order_details as od LEFT JOIN menu_items as mi
						ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC


-- -- 3. TOP 5 orders
SELECT order_id, sum(price) as total_spend
FROM order_details as od LEFT JOIN menu_items as mi
						ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5


-- -- 4. View details of the highest spent order. what insights can be gathered?
SELECT category, count(item_id) as num_of_items
FROM order_details as od LEFT JOIN menu_items as mi
						ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category


-- -- 5. View details of the top 5 highest spent order. what insights can be gathered??
SELECT ORDER_ID, category, count(item_id) as num_of_items
FROM order_details as od LEFT JOIN menu_items as mi
						ON od.item_id = mi.menu_item_id
WHERE order_id in (440, 2075, 1957, 330, 2675)
GROUP BY ORDER_ID, category

'440	192.15
2075	191.05
1957	190.10
330	189.70
2675	185.10'


