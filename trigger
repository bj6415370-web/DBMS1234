1. Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;
2. Create Employee Table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);
3. Insert Maximum 10 Records
INSERT INTO Employee VALUES
(1, 'Amit', 'HR', 25000),
(2, 'Sneha', 'IT', 40000),
(3, 'Rohit', 'Finance', 35000),
(4, 'Priya', 'IT', 45000),
(5, 'Karan', 'HR', 28000),
(6, 'Neha', 'Sales', 30000),
(7, 'Arjun', 'IT', 50000),
(8, 'Pooja', 'Finance', 32000),
(9, 'Vikas', 'Sales', 27000),
(10, 'Meena', 'HR', 26000);
17. Stored Procedure in MySQL


Procedure to Increase Salary
DELIMITER //

CREATE PROCEDURE Increase_Salary(
    IN p_empid INT,
    IN p_amount INT
)
BEGIN
    UPDATE Employee
    SET Salary = Salary + p_amount
    WHERE Emp_ID = p_empid;
END //

DELIMITER ;
Execute Procedure
CALL Increase_Salary(2, 5000);
Check Output
SELECT * FROM Employee WHERE Emp_ID = 2;
