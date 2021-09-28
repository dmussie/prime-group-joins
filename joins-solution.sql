-- 1. Get all customers and their addresses

SELECT * FROM "customers" 
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id"; 

-- 2. Get all orders and their line items (orders, quantity and product)

SELECT * FROM "orders" 
JOIN "line_items" ON "orders"."id" = "line_items"."order_id"
JOIN "products" ON "line_items"."product_id" = "products"."description"; 
??? Made my best attempt. Can't seem to get this one up and running 
