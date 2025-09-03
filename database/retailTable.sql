-- Database access
USE RetailSales


-- Crreatig Table
-- (1)
CREATE TABLE customers
(
    customer_id int PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(10),
    email VARCHAR(22),
    phone VARCHAR(14),
    city VARCHAR(15)
);
SELECT * from customers

-- Table Product 
-- (2)
CREATE TABLE products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-increment ID
    product_name VARCHAR(100) NOT NULL,        -- Product name
    category VARCHAR(50) NOT NULL,             -- Category (e.g., Electronic Clothing)
    price DECIMAL(10,2) NOT NULL,              -- Price with 2 decimal places
    stock_quantity INT NOT NULL                -- How many units in stock
);

SELECT * from products

-- table orders with fk and pk
-- (3)
CREATE TABLE orders (
    order_id     INT IDENTITY(1,1) PRIMARY KEY,
    customer_id  INT NOT NULL,
    order_date   DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),
    status       VARCHAR(20)  NOT NULL,
    CONSTRAINT CK_orders_status
        CHECK (status IN ('Pending','Shipped','Delivered','Cancelled')),
    CONSTRAINT FK_orders_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

SELECT * FROM orders

-- (4)
CREATE TABLE order_items (

    order_item_id INT IDENTITY(1,1) PRIMARY KEY,   -- unique item per row
    order_id INT NOT NULL,                         -- FK → orders
    product_id INT NOT NULL,                       -- FK → products
    quantity INT NOT NULL CHECK (quantity > 0),    -- how many units of the product
    total_price DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_order_id 
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_product_id
        FOREIGN KEY (product_id) REFERENCES products(product_id)

)
SELECT * from order_items


-- payments
-- (5)

CREATE table payments (

    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id int NOT NULL,   --fk -orders
    payment_date DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),
    amount DECIMAL(2,0) NOT NULL CHECK(amount >= 0),
    payment_method VARCHAR(15),

    -- constraints
    CONSTRAINT ck_payment_method
        CHECK (payment_method IN('Cash','UPI','Card')),
    CONSTRAINT fk_order_id2
        FOREIGN KEY (order_id)REFERENCES orders(order_id)
)
SELECT * FROM payments
SELECT * from order_items
SELECT * FROM orders
SELECT * from products
SELECT * from customers



