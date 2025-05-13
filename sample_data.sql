
-- Insert Customers
INSERT INTO Customers VALUES (1, 'Alice', '2024-01-10');
INSERT INTO Customers VALUES (2, 'Bob', '2024-03-12');
INSERT INTO Customers VALUES (3, 'Charlie', '2024-04-05');

-- Insert Products
INSERT INTO Products VALUES (1, 'Laptop', 1000.00);
INSERT INTO Products VALUES (2, 'Mouse', 25.00);
INSERT INTO Products VALUES (3, 'Keyboard', 45.00);

-- Insert Orders
INSERT INTO Orders VALUES (1, 1, '2024-04-15', 1025.00, 'completed');
INSERT INTO Orders VALUES (2, 2, '2024-05-01', 45.00, 'completed');
INSERT INTO Orders VALUES (3, 3, '2024-05-05', 25.00, 'cancelled');

-- Insert OrderDetails
INSERT INTO OrderDetails VALUES (1, 1, 1, 1);
INSERT INTO OrderDetails VALUES (2, 1, 2, 1);
INSERT INTO OrderDetails VALUES (3, 2, 3, 1);
INSERT INTO OrderDetails VALUES (4, 3, 2, 1);
