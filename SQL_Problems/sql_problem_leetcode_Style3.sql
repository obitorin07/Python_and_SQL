DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE
);

INSERT INTO Employees (EmployeeID, Name, Department, Salary, JoiningDate) VALUES
(1, 'Aarav Sharma', 'HR', 50000, '2020-01-15'),
(2, 'Priya Mehta', 'Finance', 70000, '2019-06-01'),
(3, 'Vikram Singh', 'IT', 80000, '2018-03-22'),
(4, 'Neha Verma', 'Marketing', 60000, '2021-09-10'),
(5, 'Rajesh Gupta', 'IT', 85000, '2017-12-05'),
(6, 'Simran Kaur', 'Finance', 75000, '2019-07-20'),
(7, 'Rohit Kumar', 'HR', 52000, '2022-02-11'),
(8, 'Ananya Iyer', 'IT', 90000, '2016-08-18'),
(9, 'Karan Patel', 'Marketing', 61000, '2021-10-25'),
(10, 'Sneha Kapoor', 'HR', 48000, '2020-05-30');



/*
Find the average salary for each department but only display departments where the average salary exceeds 65,000. 
The output should include the department name and the average salary.
*/

SELECT 
	DEPARTMENT , 
    ROUND(AVG(SALARY)) AS AverageSalary
FROM EMPLOYEES
GROUP BY DEPARTMENT
HAVING AVG(SALARY)>65000
ORDER BY AverageSalary DESC;

