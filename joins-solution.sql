-- 1. Get all customers and their addresses

SELECT * FROM "customers" 
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id"; 

-- 2. Get all orders and their line items (orders, quantity and product)

SELECT * FROM "orders" 
JOIN "line_items" ON "orders"."id" = "line_items"."order_id"
JOIN "products" ON "products"."id" = "line_items"."product_id";


-- 5. Get the number of orders for each customer. 

SELECT "c"."id", "c"."first_name", COUNT("o"."id") FROM "customers" as "c"
JOIN "addresses" as "a" ON "c"."id" = "a"."customer_id"
JOIN "orders" as "o" ON "a"."id" = "o"."address_id"
GROUP BY "c"."id", "c"."first_name"
LIMIT 100; 
