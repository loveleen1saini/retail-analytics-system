-- Inserting sample data into Customers table
INSERT INTO customers (customer_id, name, email, signup_date) VALUES
(1, 'Alice Smith', 'alice@example.com', '2022-01-10'),
(2, 'Bob Johnson', 'bob@example.com', '2022-03-22'),
(3, 'Charlie Lee', 'charlie@example.com', '2022-07-01');

-- Inserting sample data into Products table
INSERT INTO products (product_id, name, category, price, stock_quantity) VALUES
(1, 'Laptop', 'Electronics', 899.99, 10),
(2, 'Headphones', 'Electronics', 199.99, 50),
(3, 'Desk Chair', 'Furniture', 129.99, 20),
(4, 'Notebook', 'Stationery', 5.99, 200);

-- Inserting sample data into Orders table
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-01-17'),
(3, 1, '2023-02-20'),
(4, 3, '2023-03-05');

-- Inserting sample data into Order Items table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 899.99),
(2, 1, 2, 2, 199.99),
(3, 2, 4, 10, 5.99),
(4, 3, 3, 1, 129.99),
(5, 4, 2, 1, 199.99);
