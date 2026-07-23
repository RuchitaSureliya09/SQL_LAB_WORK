USE CSE_3A_128

SELECT * FROM DEPOSIT

-- PART-A :

--1. Add column state varchar(20).
ALTER TABLE DEPOSIT
ADD STATE VARCHAR(50)
SELECT * FROM DEPOSIT

--2. Add two more columns city varchar(20) and pincode int.
ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20) , PIN INT
SELECT * FROM DEPOSIT

--3. Change the size of cname column from varchar(50) to varchar(35).
ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)
SELECT * FROM DEPOSIT

--4. Change the data type of amount from decimal to int.
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT
SELECT * FROM DEPOSIT

--5. Delete column city from the DEPOSIT table.
ALTER TABLE DEPOSIT
DROP COLUMN CITY
SELECT * FROM DEPOSIT

--6. Rename column actno to ano.
EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'
SELECT * FROM DEPOSIT

--7. Rename column bname to branch_name.
EXEC SP_RENAME 'DEPOSIT.BNAME','BRANCH_NAME'
SELECT * FROM DEPOSIT

--8. Rename table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'
SELECT * FROM DEPOSIT_DETAIL

--9. Add column ifsc_code varchar(15).
ALTER TABLE DEPOSIT_DETAIL
ADD IFSC_CODE VARCHAR(15)
SELECT * FROM DEPOSIT_DETAIL

--10. Change the size of bname column from varchar(50) to varchar(30).
ALTER TABLE DEPOSIT_DETAIL
ALTER COLUMN BRANCH_NAME VARCHAR(30)
SELECT * FROM DEPOSIT_DETAIL

--11. Rename column adate to aopendate.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'
SELECT * FROM DEPOSIT_DETAIL

--12. Delete column aopendate from DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE
SELECT * FROM DEPOSIT_DETAIL

--13. Rename column cname to customer_name.
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMER_NAME'
SELECT * FROM DEPOSIT_DETAIL

--14. Add column country varchar(20).
ALTER TABLE DEPOSIT_DETAIL
ADD COUNTRY VARCHAR(20)
SELECT * FROM DEPOSIT_DETAIL

--15. Add column account_type varchar(15).
ALTER TABLE DEPOSIT_DETAIL
ADD ACCOUNT_TYPE VARCHAR(15)
SELECT * FROM DEPOSIT_DETAIL

--16. Change data type of pincode from int to bigint.
ALTER TABLE DEPOSIT_DETAIL
ALTER COLUMN PIN BIGINT
SELECT * FROM DEPOSIT_DETAIL

--17. Delete column account_type.
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN ACCOUNT_TYPE
SELECT * FROM DEPOSIT_DETAIL

--18. Rename column amount to balance.
EXEC SP_RENAME 'DEPOSIT_DETAIL.AMOUNT','BALANCE'
SELECT * FROM DEPOSIT_DETAIL

--19. Add column status varchar(10).
ALTER TABLE DEPOSIT_DETAIL
ADD STATUS VARCHAR(10)
SELECT * FROM DEPOSIT_DETAIL

--20. Change table name deposit_detail to bank_deposit.
EXEC SP_RENAME 'DEPOSIT_DETAIL' , 'BANK_DEPOSIT'
SELECT * FROM BANK_DEPOSIT

--PART-B :

--1. Delete all the records having amount less than or equal to 3000.
DELETE FROM BANK_DEPOSIT
WHERE BALANCE<=3000
SELECT * FROM BANK_DEPOSIT

--2. Delete all the accounts of ‘BEDI’ branch customer.
DELETE FROM BANK_DEPOSIT
WHERE BRANCH_NAME = 'BEDI'
SELECT * FROM BANK_DEPOSIT

--3. Delete all the accounts having account number greater than 102 and less than 109.
DELETE FROM BANK_DEPOSIT
WHERE ANO > 102 AND ANO < 109
SELECT * FROM BANK_DEPOSIT

--4. Delete all the accounts whose branch is ‘BEDI’ or ‘MADHAPAR’.
DELETE FROM BANK_DEPOSIT
WHERE BRANCH_NAME IN ('BEDI','MADHAPAR')
SELECT * FROM BANK_DEPOSIT

--5. Delete all the accounts details where amount is 8000 and account open after 1-1-2025;
DELETE FROM BANK_DEPOSIT
WHERE BALANCE=8000 AND DATE_NAME > '2025-01-01'
SELECT * FROM BANK_DEPOSIT

--6. Delete all the accounts whose account branch is NULL.
DELETE FROM BANK_DEPOSIT
WHERE BRANCH_NAME IS NULL
SELECT * FROM BANK_DEPOSIT

--7. Delete all the accounts details where amount is 7000 and name is CHARMI and branch is SHITAL PARK.
DELETE FROM BANK_DEPOSIT
WHERE BALANCE=7000 AND CUSTOMER_NAME = 'CHARMI' AND BRANCH_NAME = 'SHITAL PARK'
SELECT * FROM BANK_DEPOSIT

--8. Delete all the remaining records using DELETE command.
DELETE FROM BANK_DEPOSIT
SELECT * FROM BANK_DEPOSIT

--9. Delete all the records of DEPOSIT table. (Use TRUNCATE)
TRUNCATE TABLE DEPOSIT
SELECT * FROM DEPOSIT

--10. Remove DEPOSIT table. (Use DROP)
DROP TABLE BANK_DEPOSIT

--11. Delete all the students whose stdid is greater than 105.
DELETE FROM STUDENT
WHERE STDID > 105
SELECT * FROM STUDENT

--12. Delete the records whose branch is NULL and sname is not NULL.
DELETE FROM STUDENT
WHERE BRANCH IS NULL AND SNAME IS NOT NULL
SELECT * FROM STUDENT

--13. Delete the records whose SPI is less than 9 and city is RAJKOT.
DELETE FROM STUDENT
WHERE SPI < 9 AND CITY='RAJKOT'
SELECT * FROM STUDENT

--14. Delete the records whose branch name is not empty.
DELETE FROM STUDENT
WHERE BRANCH IS NOT NULL
SELECT * FROM STUDENT

--15. Delete all the records of STUDENT table. (Use TRUNCATE)
TRUNCATE TABLE STUDENT


--EXTRA

--1. Display the names and cities of all students.
SELECT SNAME , CITY FROM STUDENT

--2. Change the salary of employee EID 106 to 8000.
UPDATE EMPLOYEE
SET SALARY = 8000
WHERE EID=106
SELECT * FROM EMPLOYEE

--3. Add a column named EMAIL to the STUDENT table.
ALTER TABLE STUDENT
ADD EMAIL VARCHAR(50)
SELECT * FROM STUDENT

--4. Display details of students whose SPI is greater than 8.50.
SELECT * FROM STUDENT
WHERE SPI > 8.5

--5. Rename the column SNAME to STUDENT_NAME in the STUDENT table.
EXEC SP_RENAME 'STUDENT.SNAME','STUDENT_NAME'
SELECT * FROM STUDENT

--6. Display all deposit records from the MADHAPAR branch.
SELECT * FROM DEPOSIT_DETAIL
WHERE BRANCH_NAME='MADHAPAR'

--7. Increase the salary of all employees in the IT department by 1500.
UPDATE EMPLOYEE
SET SALARY=SALARY+1500
SELECT * FROM EMPLOYEE

--8. Display employee details who joined in 2026.
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR=2026

--9. Remove the GENDER column from the EMPLOYEE table.
ALTER TABLE EMPLOYEE
DROP COLUMN GENDER
SELECT * FROM EMPLOYEE

--10. Display the names of depositors whose amount is greater than 5000.
SELECT * FROM EMPLOYEE
WHERE SALARY>5000

--11. Rename the DEPOSIT table to BANK_DEPOSIT.
EXEC SP_RENAME 'DEPOSIT','BANK_DEPOSIT'

--12. Display all students from RAJKOT city
SELECT * FROM STUDENT
WHERE CITY='RAJKOT'

--13. Change the city of employee EID 110 to AHMEDABAD.
UPDATE EMPLOYEE
SET CITY='AHMEDABAD'
WHERE EID=110
SELECT * FROM EMPLOYEE

--14. Display employee names and salaries in descending order of salary.
SELECT FIRSTNAME,SALARY FROM EMPLOYEE
ORDER BY SALARY DESC

--15. Increase the size of the CITY column in the STUDENT table to 100 characters.
ALTER TABLE STUDENT
ALTER COLUMN CITY VARCHAR(100)
SELECT * FROM STUDENT

--16. Display the account number, customer name, and amount from the DEPOSIT table.
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--17. Update the SPI of student HARSH to 6.50.
UPDATE STUDENT
SET SPI = 6.5
WHERE SNAME='HARSH'

--18. Display all employees belonging to the HR department.
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT = 'HR'

--19. Add a MOBILE_NO column to the EMPLOYEE table.
ALTER TABLE EMPLOYEE
ADD MOBILE_NO INT
SELECT * FROM EMPLOYEE

--20. Display distinct cities from the STUDENT table.
SELECT DISTINCT CITY FROM STUDENT

--21. Rename the EMPLOYEE table to STAFF.
EXEC SP_RENAME 'EMPLOYEE','STAFF'
SELECT * FROM EMPLOYEE

--22. Change the deposit amount of account number 107 to 2500.
UPDATE EMPLOYEE
SET AMOUNT = 2500
WHERE EID = 107
SELECT * FROM EMPLOYEE

--23. Display students whose branch is COMPUTER.
SELECT * FROM STUDENT
WHERE BRANCH = 'COMPUTER'

--24. Display all deposit records sorted by amount in descending order.
SELECT * FROM EMPLOYEE
ORDER BY AMOUNT DESC

--25. Remove the MOBILE_NO column from the EMPLOYEE table.
ALTER TABLE EMPLOYEE
DROP COLUMN MOBILE_NO
SELECT * FROM EMPLOYEE

--26. Display employees whose salary is between 10000 and 15000.
SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 10000 AND 15000

--27. Change the branch of student RIYA to IT.
UPDATE STUDENT
SET BRANCH = 'IT'
WHERE SNAME = 'RIYA'

--28. Display the details of students whose city starts with 'R'.
SELECT * FROM EMPLOYEE
WHERE CITY = 'R%'

--29. Add a DATE_OF_BIRTH column to the STUDENT table.
ALTER TABLE STUDENT
ADD DATE_OF_BIRTH DATE
SELECT * FROM STUDENT

--30. Display all employees from RAJKOT or SURAT cities.
SELECT * FROM STUDENT
WHERE CITY IN ('RAJKOT','SURAT')