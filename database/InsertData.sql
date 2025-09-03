USE RetailSales
GO

-- (1) Table customers

-- String or binary data would be truncated in table 'RetailSales.dbo.customers', column 'email'. Truncated value: 'priya.sharma@example.c'
-- error solution
ALTER table customers
ALTER COLUMN email VARCHAR(50)
SELECT * from customers

-- inserting data 
INSERT INTO customers (customer_id, first_name, last_name, email, phone, city)
VALUES
(1, 'Vikram', 'Roy', 'vikram.roy@example.com', '+919876543210', 'Delhi'),
(2, 'Amit', 'Kumar', 'amit.kumar@example.com', '+919812345678', 'Mumbai'),
(3, 'Priya', 'Sharma', 'priya.sharma@example.com', '+919899887766', 'Bangalore'),
(4, 'Rohit', 'Verma', 'rohit.verma@example.com', '+919811223344', 'Hyderabad'),
(5, 'Neha', 'Singh', 'neha.singh@example.com', '+919877665544', 'Chennai'),
(6, 'Ankit', 'Gupta', 'ankit.gupta@example.com', '+919900112233', 'Pune'),
(7, 'Sonal', 'Mehta', 'sonal.mehta@example.com', '+919988776655', 'Kolkata'),
(8, 'Raj', 'Patel', 'raj.patel@example.com', '+919911223344', 'Ahmedabad'),
(9, 'Simran', 'Kaur', 'simran.kaur@example.com', '+919922334455', 'Chandigarh'),
(10, 'Arjun', 'Reddy', 'arjun.reddy@example.com', '+919933445566', 'Hyderabad'),
(11, 'Tanya', 'Jain', 'tanya.jain@example.com', '+919944556677', 'Delhi'),
(12, 'Manish', 'Shah', 'manish.shah@example.com', '+919955667788', 'Mumbai'),
(13, 'Pooja', 'Chopra', 'pooja.chopra@example.com', '+919966778899', 'Bangalore'),
(14, 'Karan', 'Malhotra', 'karan.malhotra@example.com', '+919977889900', 'Chennai'),
(15, 'Ritika', 'Verma', 'ritika.verma@example.com', '+919988990011', 'Pune'),
(16, 'Siddharth', 'Kohli', 'siddharth.kohli@example.com', '+919899001122', 'Kolkata'),
(17, 'Isha', 'Kapoor', 'isha.kapoor@example.com', '+919900112244', 'Ahmedabad'),
(18, 'Rahul', 'Bansal', 'rahul.bansal@example.com', '+919911223355', 'Chandigarh'),
(19, 'Megha', 'Rai', 'megha.rai@example.com', '+919922334466', 'Delhi'),
(20, 'Vineet', 'Nair', 'vineet.nair@example.com', '+919933445577', 'Mumbai');


-- (2) products 
INSERT INTO products (product_name, category, price, stock_quantity)
VALUES
('iPhone 15', 'Electronics', 79999.00, 25),
('Samsung Galaxy S24', 'Electronics', 69999.00, 30),
('OnePlus 12', 'Electronics', 54999.00, 20),
('MacBook Pro 16', 'Electronics', 239999.00, 10),
('Dell XPS 15', 'Electronics', 149999.00, 15),
('Nike Air Max', 'Footwear', 8999.99, 50),
('Adidas Ultraboost', 'Footwear', 10999.99, 40),
('Puma Running Shoes', 'Footwear', 7999.99, 35),
('Levi\s Jeans', 'Clothing', 2999.99, 60),
('Zara Shirt', 'Clothing', 1999.99, 70),
('Ray-Ban Sunglasses', 'Accessories', 8999.99, 25),
('Apple Watch Series 9', 'Electronics', 45999.00, 20),
('Samsung Galaxy Watch 6', 'Electronics', 34999.00, 18),
('HP Spectre x360', 'Electronics', 129999.00, 12),
('Canon EOS 250D', 'Electronics', 59999.00, 8),
('Sony WH-1000XM5', 'Electronics', 24999.00, 30),
('Bose QuietComfort 45', 'Electronics', 22999.00, 25),
('Fila Sneakers', 'Footwear', 6999.99, 45),
('H&M T-Shirt', 'Clothing', 799.99, 100),
('Samsung 55" QLED TV', 'Electronics', 79999.00, 10);

SELECT * FROM products
-- (3) orders table

INSERT INTO orders (customer_id, status)
VALUES
(1, 'Pending'),
(2, 'Shipped'),
(3, 'Delivered'),
(4, 'Cancelled'),
(5, 'Pending'),
(6, 'Shipped'),
(7, 'Delivered'),
(8, 'Pending'),
(9, 'Shipped'),
(10, 'Delivered'),
(11, 'Pending'),
(12, 'Shipped'),
(13, 'Delivered'),
(14, 'Cancelled'),
(15, 'Pending'),
(16, 'Shipped'),
(17, 'Delivered'),
(18, 'Pending'),
(19, 'Shipped'),
(20, 'Delivered');
SELECT * FROM orders


-- (4) order_items table
INSERT INTO order_items (order_id, product_id, quantity, total_price)
VALUES
(1, 1, 2, 79999.00 * 2),   -- iPhone 15
(1, 6, 1, 8999.99 * 1),    -- Nike Air Max
(2, 2, 1, 69999.00 * 1),   -- Samsung Galaxy S24
(2, 7, 2, 10999.99 * 2),   -- Adidas Ultraboost
(3, 3, 1, 54999.00 * 1),   -- OnePlus 12
(3, 8, 3, 7999.99 * 3),    -- Puma Running Shoes
(4, 4, 1, 239999.00 * 1),  -- MacBook Pro 16
(4, 9, 2, 2999.99 * 2),    -- Levi's Jeans
(5, 5, 1, 149999.00 * 1),  -- Dell XPS 15
(5, 10, 2, 1999.99 * 2),   -- Zara Shirt
(6, 11, 1, 8999.99 * 1),   -- Ray-Ban Sunglasses
(6, 12, 1, 45999.00 * 1),  -- Apple Watch Series 9
(7, 13, 2, 34999.00 * 2),  -- Samsung Galaxy Watch 6
(7, 14, 1, 129999.00 * 1), -- HP Spectre x360
(8, 15, 1, 59999.00 * 1),  -- Canon EOS 250D
(8, 16, 1, 24999.00 * 1),  -- Sony WH-1000XM5
(9, 17, 1, 22999.00 * 1),  -- Bose QuietComfort 45
(9, 18, 2, 6999.99 * 2),   -- Fila Sneakers
(10, 19, 3, 799.99 * 3),   -- H&M T-Shirt
(10, 20, 1, 79999.00 * 1); -- Samsung 55" QLED TV
SELECT * from order_items

-- (5) payments

alter table payments
alter COLUMN amount DECIMAL(15,2) NOT NULL

ALTER TABLE payments
ADD CONSTRAINT chk_amount_positive
CHECK (amount > 0);

INSERT INTO payments (order_id, amount, payment_method)
VALUES
(1, 169998.00, 'UPI'),
(2, 92999.98, 'Card'),
(3, 77998.00, 'Cash'),
(4, 245999.00, 'Card'),
(5, 151999.00, 'UPI'),
(6, 54999.00, 'Cash'),
(7, 164998.00, 'UPI'),
(8, 32998.00, 'Card'),
(9, 22998.00, 'Cash'),
(10, 82398.00, 'UPI'),
(1, 8999.99, 'Card'),       -- multiple payments for order 1
(2, 10999.99, 'UPI'),
(3, 7999.99, 'Cash'),
(4, 2999.99, 'Card'),
(5, 1999.99, 'UPI'),
(6, 45999.00, 'Card'),
(7, 34999.00, 'UPI'),
(8, 129999.00, 'Cash'),
(9, 59999.00, 'UPI'),
(10, 22999.00, 'Card');

select * from payments 