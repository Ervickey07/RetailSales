USE  RetailSales
GO

-- Orders per Status ?
SELECT STATUS ,COUNT(*) as total_Sale
from Orders
GROUP BY STATUS;



SELECT * from customers
SELECT * from products
SELECT * FROM orders
SELECT * from order_items
SELECT * FROM payments

-- 🔹 Beginner Level (Basics)


-- List all customers with their city and phone number.
SELECT city,phone FROM customers 

-- Show all products in the “Clothing” category.
SELECT category FROM products
WHERE category = 'Clothing'

-- Find the total number of orders placed so far.
select COUNT(*) FROM orders as total


SELECT COUNT(*) as total_order
FROM orders
WHERE [status]='Delivered'

-- Retrieve all orders with status = ‘Shipped’.
SELECT * FROM orders
WHERE [status]='Shipped'

-- Display all payments made using UPI.
SELECT * from payments
WHERE payment_method ='UPI'

SELECT COUNT(*) FROM payments as totalpayment
WHERE payment_method='UPI'
