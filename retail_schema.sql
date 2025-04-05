CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY, -- unique identifier for each customer
  name VARCHAR(255) NOT NULL,              -- customer name
  email VARCHAR(255) UNIQUE NOT NULL,     -- unique email address
  signup_date DATE                -- date the customer signed up
);

-- Creating Products Table: stores product catalog
CREATE TABLE products (
  product_id INTEGER PRIMARY KEY, -- unique product ID
  name TEXT NOT NULL,             -- product name
  category TEXT,                  -- product category (e.g., Electronics)
  price DECIMAL(10, 2),           -- unit price
  stock_quantity INTEGER          -- current stock available
);

-- Creating Orders Table: stores purchase orders
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,   -- unique order ID
  customer_id INTEGER,            -- reference to the customer
  order_date DATE,                -- date the order was placed
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Creating Order Items Table: maps products to orders
CREATE TABLE order_items (
  order_item_id INTEGER PRIMARY KEY, -- unique line item ID
  order_id INTEGER,                  -- order this item belongs to
  product_id INTEGER,                -- product being purchased
  quantity INTEGER,                  -- quantity purchased
  unit_price DECIMAL(10, 2),         -- price at time of order
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Creating Indexes for performance optimization
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_order_items_order_id ON order_items(order_id);
CREATE INDEX idx_order_items_product_id ON order_items(product_id);
