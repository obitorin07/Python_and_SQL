CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Aarav Patel', 'India'),
(2, 'Diya Sharma', 'India'),
(3, 'Rajesh Kumar', 'India'),
(4, 'Neha Gupta', 'USA'),
(5, 'Arjun Verma', 'UK'),
(6, 'Priya Desai', 'India'),
(7, 'Karan Singh', 'Australia'),
(8, 'Ravi Iyer', 'India'),
(9, 'Ananya Mehta', 'India'),
(10, 'Suresh Reddy', 'Canada');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES
(101, 1, '2024-10-01', 500.50),
(102, 2, '2024-10-03', 300.00),
(103, 3, '2024-10-04', 150.75),
(104, 4, '2024-10-05', 200.00),
(105, 5, '2024-10-07', 450.25),
(106, 6, '2024-10-09', 350.00),
(107, 7, '2024-10-10', 220.00),
(108, 8, '2024-10-11', 400.50),
(109, 9, '2024-10-12', 180.00),
(110, 10, '2024-10-13', 275.75);


-- Task: Find the total order amount per country and display only the countries where the total order amount exceeds 700.


SELECT * FROM ORDERS;
SELECT * FROM CUSTOMERS;

-- Task: Find the total order amount per country and display only the countries where the total order amount exceeds 700.

SELECT C.COUNTRY , SUM(O.OrderAmount) as TOTAL_ORDER_AMT
FROM ORDERS AS O
INNER JOIN CUSTOMERS AS C
ON C.CUSTOMERID = O.CUSTOMERID
GROUP BY C.COUNTRY
HAVING SUM(O.OrderAmount)>=700
