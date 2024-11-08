-- Create table for products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Laptop', 'Electronics', 750.00),
(2, 'Smartphone', 'Electronics', 600.00),
(3, 'Tablet', 'Electronics', 400.00),
(4, 'Chair', 'Furniture', 120.00),
(5, 'Desk', 'Furniture', 300.00),
(6, 'Bookshelf', 'Furniture', 250.00),
(7, 'Jacket', 'Clothing', 80.00),
(8, 'Jeans', 'Clothing', 60.00),
(9, 'T-shirt', 'Clothing', 20.00),
(10, 'Shoes', 'Clothing', 100.00);

-- Create table for sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Sales
INSERT INTO Sales (SaleID, ProductID, SaleDate, Quantity) VALUES
(101, 1, '2024-10-01', 5),
(102, 2, '2024-10-02', 3),
(103, 3, '2024-10-03', 4),
(104, 4, '2024-10-04', 2),
(105, 5, '2024-10-05', 1),
(106, 6, '2024-10-06', 3),
(107, 7, '2024-10-07', 6),
(108, 8, '2024-10-08', 4),
(109, 9, '2024-10-09', 10),
(110, 10, '2024-10-10', 5);

-- Task: Find the total revenue generated per product category. Display only those categories where the total revenue exceeds 5000.

select * from products; 
select * from sales;

SELECT 
	P.CATEGORY,
    SUM(P.PRICE * S.QUANTITY) AS TOTAL_REV
FROM PRODUCTS AS P INNER JOIN SALES AS S
ON P.PRODUCTID = S.PRODUCTID
GROUP BY P.CATEGORY
HAVING SUM(P.PRICE * S.QUANTITY) >=5000 ;
