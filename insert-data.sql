-- Insert data into country table
INSERT INTO retail_online.country (country_name) VALUES
    ('United States'),
    ('United Kingdom'),
    ('Canada'),
    ('Australia'),
    ('Germany'),
    ('France'),
    ('Japan'),
    ('China'),
    ('Brazil'),
    ('India');

-- Insert data into country table
INSERT INTO retail_online.country (country_name) VALUES
    ('United States'),
    ('United Kingdom'),
    ('Canada'),
    ('Australia'),
    ('Germany'),
    ('France'),
    ('Japan'),
    ('China'),
    ('Brazil'),
    ('India');


-- Insert data into customer table
INSERT INTO retail_online.customer (email_address, phone_number, password) VALUES
    ('customer1@example.com', '123-456-7890', 'password123'),
    ('customer2@example.com', '987-654-3210', 'securepass'),
    ('customer3@example.com', '555-123-4567', 'pass123word'),
    ('customer4@example.com', '333-999-8888', 'p@ssw0rd'),
    ('customer5@example.com', '111-222-3333', 'passwordpass'),
    ('customer6@example.com', '444-555-6666', 'testpassword'),
    ('customer7@example.com', '777-888-9999', 'myp@ssword'),
    ('customer8@example.com', '666-555-4444', 'securepass123'),
    ('customer9@example.com', '222-333-4444', 'passwordsecure'),
    ('customer10@example.com', '999-888-7777', 'samplepass');


-- Insert data into address table
INSERT INTO retail_online.address (unit_number, street_number, address_line1, address_line2, city, region, postal_code, country_id) VALUES
    (101, 123, 'Main St', 'Apt 1', 'Cityville', 'Region1', '12345', 1),
    (202, 456, 'Oak St', 'Suite 5', 'Townburg', 'Region2', '67890', 2),
    (303, 789, 'Maple St', 'Unit 10', 'Villagetown', 'Region3', '54321', 3),
    (404, 987, 'Cedar St', 'Apt 7', 'Hamletville', 'Region4', '09876', 4),
    (505, 654, 'Pine St', 'Suite 3', 'Citytown', 'Region5', '23456', 5),
    (606, 321, 'Birch St', 'Unit 8', 'Villageburg', 'Region6', '78901', 6),
    (707, 111, 'Elm St', 'Apt 12', 'Townville', 'Region7', '34567', 7),
    (808, 222, 'Ash St', 'Suite 4', 'Cityburg', 'Region8', '89012', 8),
    (909, 333, 'Spruce St', 'Unit 6', 'Villeburg', 'Region9', '45678', 9),
    (1010, 444, 'Fir St', 'Apt 9', 'Burgtown', 'Region10', '01234', 10);


-- Insert data into customer_address table
INSERT INTO retail_online.customer_address (customer_id, address_id, is_default) VALUES
    (1, 1, true),
    (2, 2, true),
    (3, 3, true),
    (4, 4, true),
    (5, 5, true),
    (6, 6, true),
    (7, 7, true),
    (8, 8, true),
    (9, 9, true),
    (10, 10, true);


-- Insert data into product_category table
INSERT INTO retail_online.product_category (parent_category_id, category_name) VALUES
    (NULL, 'Electronics'),
    (NULL, 'Clothing'),
    (1, 'Laptops'),
    (1, 'Smartphones'),
    (2, 'Men''s Clothing'),
    (2, 'Women''s Clothing'),
    (4, 'Android Phones'),
    (4, 'iOS Phones'),
    (5, 'Shirts'),
    (5, 'Dresses');


-- Insert data into product table
INSERT INTO retail_online.product (category_id, name, description, product_image) VALUES
    (3, 'Laptop Model X', 'High-performance laptop with the latest features.', 'laptop_image.jpg'),
    (4, 'Smartphone Model Y', 'Powerful smartphone with a large display.', 'phone_image.jpg'),
    (6, 'Men''s Shirt A', 'Comfortable shirt for men in various colors.', 'shirt_image.jpg'),
    (8, 'iOS Phone Z', 'Premium smartphone with the latest iOS.', 'iphone_image.jpg'),
    (10, 'Women''s Dress B', 'Elegant dress for various occasions.', 'dress_image.jpg'),
    (7, 'Android Phone W', 'Affordable Android smartphone with great specs.', 'android_phone_image.jpg');


-- Insert data into product_item table
INSERT INTO retail_online.product_item (product_id, sku, qty_in_stock, product_image, price) VALUES
    (1, 'LPTX001', 50, 'laptop_item_image.jpg', 1200),
    (2, 'PHNY002', 100, 'phone_item_image.jpg', 800),
    (3, 'MSHA003', 75, 'shirt_item_image.jpg', 50),
    (4, 'IOSZ004', 30, 'iphone_item_image.jpg', 1000),
    (5, 'WDRE005', 40, 'dress_item_image.jpg', 150),
    (6, 'ANDW006', 60, 'android_phone_item_image.jpg', 300);


-- Insert data into shopping_cart table
INSERT INTO retail_online.shopping_cart (customer_id) VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);


-- Insert data into shopping_cart_item table
INSERT INTO retail_online.shopping_cart_item (shopping_cart_id, product_item_id, quantity) VALUES
    (1, 1, 2),
    (2, 3, 1),
    (3, 5, 3),
    (4, 2, 2),
    (5, 4, 1),
    (6, 6, 2),
    (7, 1, 1),
    (8, 3, 2),
    (9, 5, 1),
    (10, 2, 3);


-- Insert data into shipping_method table
INSERT INTO retail_online.shipping_method (name, price) VALUES
    ('Standard Shipping', 10),
    ('Express Shipping', 20),
    ('Free Shipping', 0),
    ('International Shipping', 30);


-- Insert data into order_status table
INSERT INTO retail_online.order_status (status) VALUES
    (true), -- true for "Order Placed"
    (false); -- false for "Order Completed"


    -- Insert data into payment_type table
INSERT INTO retail_online.payment_type (value) VALUES
    (1), -- 1 for Credit Card
    (2), -- 2 for PayPal
    (3); -- 3 for Bank Transfer


-- Insert data into customer_payment_method table
INSERT INTO retail_online.customer_payment_method (customer_id, payment_type_id, provider, account_number, expired_date, is_default) VALUES
    (1, 1, 'Visa', '1234567890123456', '2025-12-31', true),
    (2, 2, 'PayPal', 'user@example.com', '2024-10-15', false),
    (3, 3, 'Bank of Retail', '9876543210', '2023-08-20', true),
    (4, 1, 'MasterCard', '5555666677778888', '2026-05-01', false),
    (5, 2, 'PayPal', 'anotheruser@example.com', '2024-09-30', true),
    (6, 3, 'Bank of Retail', '1111222233334444', '2023-11-15', false),
    (7, 1, 'Visa', '8888777766665555', '2025-06-22', true),
    (8, 2, 'PayPal', 'thirduser@example.com', '2024-12-10', false),
    (9, 3, 'Bank of Retail', '9999888877776666', '2023-10-05', true),
    (10, 1, 'MasterCard', '4444333322221111', '2026-03-15', false);


-- Insert data into shop_order table
INSERT INTO retail_online.shop_order (customer_id,order_date, payment_type_id, shipping_method_id, order_total, order_status_id) VALUES
    (1, '2023-01-15', 1, 1, 1200, 1),
    (2, '2023-02-20', 2, 3, 500, 1),
    (3, '2023-03-25', 3, 2, 750, 1),
    (4, '2023-04-30', 1, 4, 1600, 1),
    (5, '2023-05-05', 2, 1, 200, 1),
    (6, '2023-06-10', 3, 2, 900, 1),
    (7, '2023-07-15', 1, 3, 700, 1),
    (8, '2023-08-20', 2, 1, 300, 1),
    (9, '2023-09-25', 3, 4, 1100, 1),
    (10, '2023-10-30', 1, 2, 400, 1);



-- Insert data into order_line table
INSERT INTO retail_online.order_line (product_item_id, shop_order_id, quantity, price) VALUES
    (1, 1, 2, 1200),
    (3, 2, 1, 500),
    (5, 3, 3, 750),
    (2, 4, 2, 1600),
    (4, 5, 1, 200),
    (6, 6, 2, 900),
    (1, 7, 1, 700),
    (3, 8, 2, 300),
    (5, 9, 1, 1100),
    (2, 10, 3, 400);
