-- ## Objectives 01 ##
USE restaurant_db;

-- -- 1. View the menu items table.
SELECT *
FROM menu_items

-- -- 2. find number of items on the menu.
SELECT count(*)
FROM menu_items

-- -- 3. What are the least and most expensive item on the menu?
SELECT *
FROM menu_items
ORDER BY price

SELECT *
FROM menu_items
ORDER BY price DESC

-- -- 4. How many Italian dishes on the menu?
SELECT count(*)
FROM menu_items
WHERE category = "Italian"

-- -- 5. What are the least and most expensive italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = "Italian"
ORDER BY price

SELECT *
FROM menu_items
WHERE category = "Italian"
ORDER BY price DESC

-- -- 6. How many dishes are in each category?
SELECT category, count(menu_item_id) as num_of_dishes
FROM menu_items
GROUP BY category


-- -- 7. What is the average dish price in each category?
SELECT category, avg(price) as avg_price
FROM menu_items
GROUP BY category
