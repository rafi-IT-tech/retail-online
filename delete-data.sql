-- Delete data from the customer table
DELETE FROM retail_online.customer
WHERE customer_id = 1;


-- Delete data from the country table
DELETE FROM retail_online.country
WHERE country_id = 1;

-- Delete data from the address table
DELETE FROM retail_online.address
WHERE address_id = 1;

-- Delete data from the customer_address table
DELETE FROM retail_online.customer_address
WHERE customer_id = 1 AND address_id = 1;


-- Delete data from the promotion table
DELETE FROM retail_online.promotion
WHERE promotion_id = 1;

-- Delete data from the product_category table
DELETE FROM retail_online.product_category
WHERE id = 1;

-- Delete data from the product table
DELETE FROM retail_online.product
WHERE product_id = 1;

-- Delete data from the promotion_category table
DELETE FROM retail_online.promotion_category
WHERE category_id = 1;

-- Delete data from the product_item table
DELETE FROM retail_online.product_item
WHERE product_item_id = 1;

-- Delete data from the shopping_cart table
DELETE FROM retail_online.shopping_cart
WHERE shopping_cart_id = 1;


-- Delete data from the shopping_cart_item table
DELETE FROM retail_online.shopping_cart_item
WHERE shopping_cart_item_id = 1;


-- Delete data from the shipping_method table
DELETE FROM retail_online.shipping_method
WHERE shipping_method_id = 1;


-- Delete data from the order_status table
DELETE FROM retail_online.order_status
WHERE order_status_id = 1;


-- Delete data from the payment_type table
DELETE FROM retail_online.payment_type
WHERE payment_type_id = 1;


-- Delete data from the customer_payment_method table
DELETE FROM retail_online.customer_payment_method
WHERE customer_payment_method_id = 1;


-- Delete data from the shop_order table
DELETE FROM retail_online.shop_order
WHERE shop_order_id = 1;


-- Delete data from the order_line table
DELETE FROM retail_online.order_line
WHERE order_line_id = 1;
