-- Create Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Insert sample data
INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Position, Salary, HireDate)
VALUES 
(1, 'John', 'Doe', 'IT', 'Software Engineer', 70000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'HR', 'HR Manager', 80000.00, '2018-05-20'),
(3, 'Alice', 'Johnson', 'Marketing', 'Marketing Specialist', 60000.00, '2019-09-10');

-- Retrieve all employees
SELECT * FROM Employee;

-- Retrieve employees by department
SELECT * FROM Employee WHERE Department = 'IT';

-- Retrieve employees hired after a certain date
SELECT * FROM Employee WHERE HireDate > '2022-01-01';

-- Update employee salary
UPDATE Employee SET Salary = 75000.00 WHERE EmployeeID = 1;

-- Delete an employee
DELETE FROM Employee WHERE EmployeeID = 3;

