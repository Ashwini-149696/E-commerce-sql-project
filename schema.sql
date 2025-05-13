
-- Drop tables if they exist
DROP TABLE IF EXISTS OrderDetails;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    signup_date DATE
);

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name TEXT,
    price DECIMAL(10, 2)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
