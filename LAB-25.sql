USE CSE_3A_128

--1. Implement scalar function to return "Welcome to DBMS Lab".

CREATE OR ALTER FUNCTION FN_STRING()
RETURNS VARCHAR(50)
AS
BEGIN
	RETURN 'Welcome to DBMS Lab'
END

SELECT DBO.FN_STRING() AS MSG



--2. Implement scalar function to calculate simple interest.

CREATE OR ALTER FUNCTION FN_INTREST(
	@P DECIMAL(10,2),
	@R DECIMAL(10,2),
	@T DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
	RETURN (@P*@R*@T)/100
END

SELECT DBO.FN_INTREST(10000,1.5,5) AS SIMPLE_INTREST



--3. Implement scalar function to find difference in days between two dates.

CREATE OR ALTER FUNCTION FN_DATE(
	@DATE_1 DATE,
	@DATE_2 DATE
)
RETURNS INT
AS
BEGIN
	RETURN DATEDIFF(DAY,@DATE_1 ,@DATE_2)
END

SELECT DBO.FN_DATE('2026-09-11','2026-09-16') AS DATE_DIFFERENCE



--4. Implement scalar function to check whether number is odd or even.

CREATE OR ALTER FUNCTION FN_ODD_EVEN(
	@N INT
)
RETURNS VARCHAR(20)
AS
BEGIN
	IF @N%2 = 0
		RETURN 'EVEN NUMBER'
	
		RETURN 'ODD NUMBER'
END

SELECT DBO.FN_ODD_EVEN(10) AS NUMBER_TYPE



--5. Implement scalar function to print numbers from 1 to N.

CREATE OR ALTER FUNCTION FN_PRINT(
	@N INT
)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @I INT = 1
	DECLARE @RESULT VARCHAR(100)=''

	WHILE @I <= @N
	BEGIN
		SET @RESULT = @RESULT + CAST(@I AS VARCHAR)+' '
		SET @I=@I+1
	END
	RETURN @RESULT
END

SELECT DBO.FN_PRINT(10) AS NUMBERS



--6. Implement scalar function to calculate factorial of given number.

CREATE OR ALTER FUNCTION FN_FACTORIAL(
	@N INT
)
RETURNS INT
AS
BEGIN
	DECLARE @I INT = 1
	DECLARE @RESULT INT = 1

	WHILE @I <= @N
	BEGIN
		SET @RESULT = @RESULT * @I
		SET @I=@I+1
	END
	RETURN @RESULT
END

SELECT DBO.FN_FACTORIAL(5) AS FACTORIAL



--7. Implement scalar function to check palindrome number.

CREATE OR ALTER FUNCTION FN_PALINDROME(
	@STR INT
)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @REV_STR VARCHAR(50) = REVERSE(@STR)

	IF(@STR = @REV_STR)
		RETURN 'PALINDROME STRING'

		RETURN 'NOT PALINDROME STRING'
END

SELECT DBO.FN_PALINDROME(101) AS MSG



--8. Implement scalar function to find maximum of three numbers.

CREATE OR ALTER FUNCTION FN_MAXIMUM(
	@N1 INT,
	@N2 INT,
	@N3 INT
)
RETURNS INT
AS
BEGIN
	IF @N1 > @N2
	BEGIN
		IF @N1 > @N3
			RETURN @N1
	
		RETURN @N3
	END

	BEGIN
		IF @N2 > @N3
			RETURN @N2
	
		RETURN @N3
	END
END

SELECT DBO.FN_MAXIMUM(10,20,30) AS MAXIMUM_NUM



--9. Implement scalar function to calculate square and cube of a number.

CREATE OR ALTER FUNCTION FN_SQR(
    @N INT
)
RETURNS INT
AS
BEGIN
    RETURN @N * @N
END

CREATE OR ALTER FUNCTION FN_CUBE(
    @N INT
)
RETURNS INT
AS
BEGIN
    RETURN @N * @N * @N
END

SELECT DBO.FN_SQR(4) AS NUM_SQURE , DBO.FN_CUBE(4) AS NUM_CUBE



--From the table EMPLOYEE perform the following queries:

--10. Implement scalar function to return employee full details using EID.

CREATE OR ALTER FUNCTION FN_EMPLOYEE_DETAILS(
    @EID INT
)
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @DETAILS VARCHAR(500);

    SELECT @DETAILS =
        'EID: ' + CAST(EID AS VARCHAR(20)) +
        '  ,  Name : ' + FIRSTNAME + ' ' + LASTNAME +
		'  , DEPARTMENT : ' + DEPARTMENT +
        '  ,  Salary : ' + CAST(SALARY AS VARCHAR(20))  +
		'  ,  CITY : ' + CITY + '  , GENDER : ' + GENDER +
		'  , JOININGYEAR : ' + CAST(JOININGYEAR AS VARCHAR(20))
    FROM EMPLOYEE
    WHERE EID = @EID

    RETURN @DETAILS
END

SELECT DBO.FN_EMPLOYEE_DETAILS(101) AS EMPLOYEE_DETAILS



--11. Implement scalar function to return highest salary from a given department.

CREATE OR ALTER FUNCTION FN_HIGH_SALARY(
    @DEPARTMENT VARCHAR(50)
)
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @HIGH_SALARY INT

    SELECT @HIGH_SALARY = MAX(SALARY) 
    FROM EMPLOYEE
    WHERE DEPARTMENT = @DEPARTMENT

    RETURN @HIGH_SALARY
END

SELECT DBO.FN_HIGH_SALARY('ADMIN') AS DEPARTMENT_HIGH_SALARY



--12. Implement scalar function to count total employees in EMPLOYEE table.

CREATE OR ALTER FUNCTION FN_TOTAL_EMPLOYEE()
RETURNS INT
AS
BEGIN
    DECLARE @TOTAL INT

    SELECT @TOTAL = COUNT(EID) 
    FROM EMPLOYEE

    RETURN @TOTAL
END

SELECT DBO.FN_TOTAL_EMPLOYEE() AS TOTAL_EMPLOYEE



--13. Implement scalar function to find total experience of employee using JoiningYear.

CREATE OR ALTER FUNCTION FN_EXPERIENCE(
	@YEAR INT
)
RETURNS INT
AS
BEGIN
	DECLARE @DIFF INT

	SELECT @DIFF = YEAR(GETDATE()) - @YEAR
	FROM EMPLOYEE

	RETURN @DIFF
END

SELECT DBO.FN_EXPERIENCE('2024') AS EXPERIENCE



--14. Implement scalar function to return total number of employees in a given department.

CREATE OR ALTER FUNCTION FN_EMPLOYEE_DEPARTMENT(
	@DEPART VARCHAR(50)
)
RETURNS INT
AS
BEGIN
    DECLARE @TOTAL INT

    SELECT @TOTAL = COUNT(EID) 
    FROM EMPLOYEE
	WHERE DEPARTMENT = @DEPART

    RETURN @TOTAL
END

SELECT DBO.FN_EMPLOYEE_DEPARTMENT('IT') AS TOTAL_EMPLOYEE



--15. Implement scalar function to count total employees from a given city.

CREATE OR ALTER FUNCTION FN_EMPLOYEE_CITY(
	@CITY VARCHAR(30)
)
RETURNS INT
AS
BEGIN
    DECLARE @TOTAL INT

    SELECT @TOTAL = COUNT(EID) 
    FROM EMPLOYEE
	WHERE CITY = @CITY

    RETURN @TOTAL
END

SELECT DBO.FN_EMPLOYEE_CITY('RAJKOT') AS TOTAL_EMPOYEE
