

-- Insert sample data
INSERT INTO Users (name, email, password_hash, role) VALUES
('Admin User', 'admin@swiftcart.com', '$2y$04$bysVRw4j6KL1ciVtIILyQe2w9/bMbDQvDiLr.osJ4ZDYB9xHx8h6q', 'ADMIN'),
('John Doe', 'john.doe@example.com', '$2y$04$bysVRw4j6KL1ciVtIILyQe2w9/bMbDQvDiLr.osJ4ZDYB9xHx8h6q', 'USER'),
('Jane Smith', 'jane.smith@example.com', '$2y$04$bysVRw4j6KL1ciVtIILyQe2w9/bMbDQvDiLr.osJ4ZDYB9xHx8h6q', 'USER'),
('Mike Johnson', 'mike.johnson@example.com', '$2y$04$bysVRw4j6KL1ciVtIILyQe2w9/bMbDQvDiLr.osJ4ZDYB9xHx8h6q', 'USER');

INSERT INTO Categories (name) VALUES
('Men''s Clothing'),
('Women''s Clothing'),
('Accessories'),
('Footwear');

INSERT INTO Products (name, description, price, stock, category_id, image_url) VALUES
('Men''s Classic T-Shirt', '100% cotton crew neck t-shirt for men, available in multiple colors', 19.99, 100, 1, 'https://freeimage.host/i/3veIuja'),
('Women''s Summer Dress', 'Lightweight floral print dress with short sleeves', 39.99, 75, 2, 'https://freeimage.host/i/3veIuja'),
('Denim Jeans', 'Slim fit jeans with stretch for all-day comfort', 49.99, 50, 1, 'https://freeimage.host/i/3veIuja'),
('Leather Jacket', 'Genuine leather jacket with multiple pockets', 129.99, 30, 1, 'https://freeimage.host/i/3veIuja'),
('Silk Blouse', 'Elegant silk blouse with button-down collar', 59.99, 40, 2, 'https://freeimage.host/i/3veIuja'),
('Casual Sneakers', 'Comfortable sneakers for everyday wear', 45.99, 60, 4, 'https://freeimage.host/i/3veIuja'),
('Wool Scarf', 'Warm wool scarf for winter season', 24.99, 80, 3, 'https://freeimage.host/i/3veIuja'),
('Formal Suit', 'Two-piece suit for business occasions', 199.99, 25, 1, 'https://freeimage.host/i/3veIuja');

INSERT INTO CartItems (user_id, product_id, quantity) VALUES
(2, 1, 2),
(2, 3, 1),
(3, 5, 1),
(3, 6, 1),
(3, 2, 1);

INSERT INTO WishlistItems (user_id, product_id) VALUES
(2, 4),
(2, 6),
(3, 1),
(4, 8);

INSERT INTO Orders (user_id, total_amount, status) VALUES
(2, 89.97, 'delivered'),
(3, 105.98, 'processing'),
(4, 199.99, 'pending');

INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 19.99),
(1, 3, 1, 49.99),
(1, 7, 1, 24.99),
(2, 2, 1, 39.99),
(2, 5, 1, 59.99),
(3, 8, 1, 199.99);

INSERT INTO Reviews (user_id, product_id, rating, comment) VALUES
(2, 1, 5, 'Great quality and perfect fit!'),
(2, 3, 4, 'Comfortable but runs a bit large'),
(3, 2, 5, 'Beautiful dress, received many compliments'),
(4, 8, 3, 'Good quality but expensive for what you get');

INSERT INTO Addresses (user_id, street, city, state, postal_code, country) VALUES
(2, '123 Main St', 'New York', 'NY', '10001', 'USA'),
(3, '456 Oak Ave', 'Los Angeles', 'CA', '90001', 'USA'),
(4, '789 Pine Rd', 'Chicago', 'IL', '60601', 'USA');

INSERT INTO Payments (order_id, payment_method, payment_status, paid_at) VALUES
(1, 'credit_card', 'paid', '2023-05-15 14:30:00'),
(2, 'paypal', 'paid', '2023-05-16 10:15:00'),
(3, 'credit_card', 'pending', NULL);