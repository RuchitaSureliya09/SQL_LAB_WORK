USE CSE_3A_128

SELECT * FROM EMPLOYEE

--1. Create a view Employee_All with all columns.
CREATE VIEW Employee_All
AS
SELECT * 
FROM EMPLOYEE

SELECT * FROM EMPLOYEE_ALL


--2. Create a view Employee_NameDeptSalary having columns FirstName, Department and Salary.
CREATE VIEW Employee_NameDeptSalary
AS
SELECT FIRSTNAME , DEPARTMENT , SALARY 
FROM EMPLOYEE

SELECT * FROM Employee_NameDeptSalary


--3. Create a view Employee_Basic having columns EID, FirstName and City.
CREATE VIEW Employee_Basic
AS
SELECT EID , FIRSTNAME , CITY 
FROM EMPLOYEE

SELECT * FROM Employee_Basic


--4. Create a view IT_Employees that displays IT department data only.
CREATE VIEW IT_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE DEPARTMENT = 'IT'

SELECT * FROM IT_Employees


--5. Create a view HR_Employees that displays HR department data only.
CREATE VIEW HR_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE DEPARTMENT = 'HR'

SELECT * FROM HR_Employees


--6. Create a view Employee_2026 that displays employees joined in 2026 only.
CREATE VIEW Employee_2026
AS
SELECT * 
FROM EMPLOYEE
WHERE JOININGYEAR = 2026

SELECT * FROM Employee_2026


--7. Create a view Patel_Employees that displays employees whose last name is PATEL.
CREATE VIEW Patel_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE LASTNAME = 'PATEL'

SELECT * FROM Patel_Employees


--8. Create a view High_Salary_Emp having all columns but employees whose salary is more than 12000.
CREATE VIEW High_Salary_Emp
AS
SELECT * 
FROM EMPLOYEE
WHERE SALARY > 12000

SELECT * FROM High_Salary_Emp


--9. Create a view that displays information of all employees whose salary is above 14000.
CREATE VIEW Salary_Above_14000_Emp
AS
SELECT * 
FROM EMPLOYEE
WHERE SALARY > 14000

SELECT * FROM Salary_Above_14000_Emp


--10. Create a view that displays employees having salary below 10000.
CREATE VIEW Salary_Below_10000_Emp
AS
SELECT * 
FROM EMPLOYEE
WHERE SALARY < 10000

SELECT * FROM Salary_Below_10000_Emp


--11. Create a view Server_Dept that displays Server department employees only.
CREATE VIEW Server_Dept
AS
SELECT * 
FROM EMPLOYEE
WHERE DEPARTMENT = 'SERVER'

SELECT * FROM Server_Dept


--12. Insert a new record into Employee_Basic view. (111, MEET, SURAT)
INSERT INTO Employee_Basic
VALUES (111, 'MEET', 'SURAT')

SELECT * FROM Employee_Basic


--13. Update the department of DEEP from ADMIN to IT in Employee_NameDeptSalary view.
UPDATE Employee_NameDeptSalary
SET DEPARTMENT = 'IT'
WHERE FIRSTNAME = 'DEEP'

SELECT * FROM Employee_NameDeptSalary


--14. Delete an employee whose EID is 107 from Employee_Basic view.
DELETE FROM Employee_Basic
WHERE EID = 107

SELECT * FROM Employee_Basic


--15. Drop IT_Employees view from the database.
DROP VIEW IT_Employees 


--16. Create a view Admin_Employees that displays ADMIN department employees only.
CREATE VIEW Admin_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE DEPARTMENT = 'ADMIN'

SELECT * FROM Admin_Employees


--17. Create a view Female_Employees that displays female employee data only.
CREATE VIEW Female_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE GENDER = 'FEMALE'

SELECT * FROM Female_Employees


--18. Create a view Male_Employees that displays male employee data only.
CREATE VIEW Male_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE GENDER = 'MALE'

SELECT * FROM Male_Employees


--19. Create a view Rajkot_Employees that displays employees from Rajkot city only.
CREATE VIEW Rajkot_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE CITY = 'RAJKOT'

SELECT * FROM Rajkot_Employees


--20. Create a view Ahmedabad_Employees that displays employees from Ahmedabad city only.
CREATE VIEW Ahmedabad_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE CITY = 'AHMEDABAD'

SELECT * FROM Ahmedabad_Employees


--21. Create a view Salary_Between that displays employees whose salary is between 10000 and 14000.
CREATE VIEW Salary_Between
AS
SELECT * 
FROM EMPLOYEE
WHERE SALARY BETWEEN 10000 AND 14000

SELECT * FROM Salary_Between


--22. Create a view Recent_Employees that displays employees joined after 2023.
CREATE VIEW Recent_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE JOININGYEAR > 2023

SELECT * FROM Recent_Employees


--23. Create a view Old_Employees that displays employees joined before 2023.
CREATE VIEW Old_Employees
AS
SELECT * 
FROM EMPLOYEE
WHERE JOININGYEAR < 2023

SELECT * FROM Old_Employees


--24. Create a view Employees_Start_R that displays employees whose first name starts with R.
CREATE VIEW Employees_Start_R
AS
SELECT * 
FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'R%'

SELECT * FROM Employees_Start_R


--25. Create a view Employees_End_A that displays employees whose first name ends with A.
CREATE VIEW Employees_End_A
AS
SELECT * 
FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%A'

SELECT * FROM Employees_End_A


--26. Create a view Employees_NameContains_H that displays employees whose first name contains H.
CREATE VIEW Employees_NameContains_H
AS
SELECT * 
FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%H%'

SELECT * FROM Employees_NameContains_H


--27. Create a view for the employees whose first name contains vowels.
CREATE VIEW Employees_NameContains_Vowel
AS
SELECT * 
FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%[AEIOU]%'

SELECT * FROM Employees_NameContains_Vowel


--28. Create a view FourLetter_Name having EID, FirstName and Department columns in which FirstName consists of four letters.
CREATE VIEW FourLetter_Name
AS
SELECT EID, FIRSTNAME , DEPARTMENT 
FROM EMPLOYEE
WHERE FIRSTNAME LIKE '____'

CREATE VIEW FourLetter_Name
AS
SELECT EID, FIRSTNAME , DEPARTMENT 
FROM EMPLOYEE
WHERE LEN(FIRSTNAME) = 4

SELECT * FROM FourLetter_Name


--29. Create a view for the employees whose name starts with M and ends with N.
CREATE VIEW Employees_Start_M_End_N
AS
SELECT * 
FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'M%N'

SELECT * FROM Employees_Start_M_End_N


--30. Create a view Transport_Dept that displays Transport department employees only.
CREATE VIEW Transport_Dept
AS
SELECT * 
FROM EMPLOYEE
WHERE DEPARTMENT = 'TRANSPORT'

SELECT * FROM Transport_Dept


--EXTRA

--CUSTOMER TABLE
CREATE TABLE Customers 
(
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR (100) NOT NULL,
	City VARCHAR (100),
	Membership VARCHAR (20)
);

INSERT INTO Customers (CustomerID, CustomerName, City, Membership) 
VALUES (101, 'Alice', 'Mumbai', 'Gold'),
	(102, 'Bob', 'Delhi', 'Silver'),
	(103, 'Charlie', 'Pune', 'Gold'),
	(104, 'David', 'Ahmedabad', 'Silver'),
	(105, 'Eva', 'Mumbai', 'Platinum');

SELECT * FROM Customers
	

--ORDER TABLE
CREATE TABLE Orders 
(
	OrderID INT PRIMARY KEY,
	CustomerID INT NOT NULL,
	Products VARCHAR (100) NOT NULL,
	Category VARCHAR (50),
	Quantity INT NOT NULL,
	Price DECIMAL (10,2) NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, Products, Category, Quantity, Price) 
VALUES (201, 101, 'Laptop', 'Electronics', 1, 70000),
(202, 101, 'Mouse', 'Electronics', 2, 800),
(203, 102, 'Chair', 'Furniture', 3, 2500),
(204, 103, 'Phone', 'Electronics', 1, 45000),
(205, 104, 'Table', 'Furniture', 2, 6000),
(206, 105, 'Laptop', 'Electronics', 2, 70000),
(207, 105, 'Printer', 'Electronics', 1, 12000),
(208, 103, 'Desk', 'Furniture', 1, 8000);

SELECT * FROM Orders


--1) Create a view named CustomerOrders displaying:
--Customer Name , City , Products , Category , Quantity , Price
CREATE VIEW CustomerOrders
AS
SELECT C.CustomerName , C.City , O.Products , O.Category , 
	   O.Quantity , O.Price  
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID

SELECT * FROM CustomerOrders


--2) Create a view named GoldCustomersOrders that displays all orders placed by gold members.
CREATE VIEW GoldCustomersOrders 
AS
SELECT C.CustomerName, C.City, O.OrderID, O.Products, 
	   O.Category, O.Quantity, O.Price
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
WHERE C.Membership = 'Gold'

SELECT * FROM GoldCustomersOrders


--3) Create a view ElectronicOrders displaying only Electronics orders.
CREATE VIEW ElectronicOrders 
AS
SELECT OrderID, CustomerID, Products, Category, Quantity, Price
FROM Orders
WHERE Category = 'Electronics'

SELECT * FROM ElectronicOrders


--4) Create a view CustomerPurchaseSummary showing the total purchase amount for each customer.
--(Purchase Amount = Quantity * Price)
CREATE VIEW CustomerPurchaseSummary 
AS
SELECT C.CustomerID, C.CustomerName,
       SUM(O.Quantity * O.Price) AS TotalPurchaseAmount
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CustomerName

SELECT * FROM CustomerPurchaseSummary


--5) Create a view CustomerOrderCount showing:
--Customer Name , Number of Orders placed
CREATE VIEW CustomerOrderCount 
AS
SELECT C.CustomerName, COUNT(O.OrderID) AS NumberOfOrders
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName

SELECT * FROM CustomerOrderCount


--6) Create a view CategorySales displaying:
--Category , Number of Orders , Total quantity sold
CREATE VIEW CategorySales 
AS
SELECT Category, COUNT(OrderID) AS NumberOfOrders,
	   SUM(Quantity) AS TotalQuantitySold
FROM Orders
GROUP BY Category

SELECT * FROM CategorySales


--7) Create a view AmountDetails displaying:
--Membership Type, Average purchase amount per order
CREATE VIEW AmountDetails 
AS
SELECT C.Membership, AVG(O.Quantity * O.Price) AS AveragePurchaseAmount
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.Membership

SELECT * FROM AmountDetails


--8) Create a view CitySales displaying:
--City , Total Customers who placed orders , Total purchase amount
CREATE VIEW CitySales 
AS
SELECT C.City, COUNT(DISTINCT C.CustomerID) AS TotalCustomers,
	   SUM(O.Quantity * O.Price) AS TotalPurchaseAmount
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.City

SELECT * FROM CitySales


--9) Create a view CustomerSales displaying:
--Customer Name, Membership, Total quantity purchased, Total amount spent
CREATE VIEW CustomerSales 
AS
SELECT C.CustomerName, C.Membership,
	   SUM(O.Quantity) AS TotalQuantityPurchased,
       SUM(O.Quantity * O.Price) AS TotalAmountSpent
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName, C.Membership

SELECT * FROM CustomerSales


--10) Create a view CustomerMembership displaying:
--Category, Membership Type, Total sales, Average quantity purchased
CREATE VIEW CustomerMembership 
AS
SELECT O.Category, C.Membership,
       SUM(O.Quantity * O.Price) AS TotalSales,
       AVG(O.Quantity) AS AverageQuantityPurchased
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY O.Category, C.Membership

SELECT * FROM CustomerMembership