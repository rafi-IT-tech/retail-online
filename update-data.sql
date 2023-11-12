-- Update data in the customer table
UPDATE retail_online.customer
SET email_address = 'new_email@example.com'
WHERE customer_id = 1;


-- Update data in the country table
UPDATE retail_online.country
SET country_name = 'New Country Name'
WHERE country_id = 1;


-- Update data in the address table
UPDATE retail_online.address
SET city = 'New City'
WHERE address_id = 1;


-- Update data in the customer_address table
UPDATE retail_online.customer_address
SET is_default = false
WHERE customer_id = 1 AND address_id = 1;


-- Update data in the promotion table
UPDATE retail_online.promotion
SET description = 'New Promotion Description'
WHERE promotion_id = 1;


-- Update data in the product_category table
UPDATE retail_online.product_category
SET category_name = 'New Category Name'
WHERE id = 1;


-- Update data in the product table
UPDATE retail_online.product
SET description = 'New Product Description'
WHERE product_id = 1;


-- Update data in the promotion_category table
UPDATE retail_online.promotion_category
SET promotion_id = 2
WHERE category_id = 1;



-- Update data in the product_item table
UPDATE retail_online.product_item
SET qty_in_stock = 50
WHERE product_item_id = 1;


-- Update data in the shopping_cart table
UPDATE retail_online.shopping_cart
SET customer_id = 2
WHERE shopping_cart_id = 1;


-- Update data in the shopping_cart_item table
UPDATE retail_online.shopping_cart_item
SET quantity = 5
WHERE shopping_cart_item_id = 1;


-- Update data in the shipping_method table
UPDATE retail_online.shipping_method
SET price = 25
WHERE shipping_method_id = 1;


-- Update data in the order_status table
UPDATE retail_online.order_status
SET status = false
WHERE order_status_id = 1;


-- Update data in the payment_type table
UPDATE retail_online.payment_type
SET value = 4
WHERE payment_type_id = 1;

-- Update data in the customer_payment_method table
UPDATE retail_online.customer_payment_method
SET provider = 'New Provider'
WHERE customer_payment_method_id = 1;


-- Update data in the shop_order table
UPDATE retail_online.shop_order
SET order_total = 1500
WHERE shop_order_id = 1;


-- Update data in the order_line table
UPDATE retail_online.order_line
SET quantity = 4
WHERE order_line_id = 1;
