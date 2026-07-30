USE CSE_3A_128

SELECT * FROM EMPLOYEE

--1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM 
FROM EMPLOYEE
SELECT MIN(SALARY) AS MINIMUM 
FROM EMPLOYEE

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(SALARY) AS TOTAL_SAL 
FROM EMPLOYEE
SELECT AVG(SALARY) AS AVERAGE_SAL 
FROM EMPLOYEE

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) AS MAXIMUM 
FROM EMPLOYEE

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAX_RAJKOT 
FROM EMPLOYEE
WHERE CITY='RAJKOT'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAX_IT 
FROM EMPLOYEE
WHERE DEPARTMENT = 'IT'

--6. Count employee department is HR.
SELECT COUNT(EID) AS HR_EMPLOYEE
FROM EMPLOYEE
WHERE DEPARTMENT='HR'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVERAGE_ADMIN
FROM EMPLOYEE
WHERE DEPARTMENT='ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY) AS MAX_SAL_HR
FROM EMPLOYEE
WHERE DEPARTMENT='HR'

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS TOTAL_CITY 
FROM EMPLOYEE
WHERE CITY IS NOT NULL

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS TOTAL_DEPARTMENTS 
FROM EMPLOYEE
WHERE DEPARTMENT IS NOT NULL

--11. Display minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MIN_SAL_AHMEDABAD 
FROM EMPLOYEE
WHERE CITY = 'AHMEDABAD'

--12. Find city wise highest salary.
SELECT CITY,MAX(SALARY) AS HIGHEST_SAL 
FROM EMPLOYEE
WHERE CITY IS NOT NULL
GROUP BY CITY

--13. Find department wise lowest salary.
SELECT DEPARTMENT,MIN(SALARY) AS LOWEST_SAL 
FROM EMPLOYEE
WHERE DEPARTMENT IS NOT NULL
GROUP BY DEPARTMENT

--14. Display minimum salary in each city.
SELECT CITY,MIN(SALARY) AS LOWEST_SAL 
FROM EMPLOYEE
WHERE CITY IS NOT NULL
GROUP BY CITY

--15. Display average salary of employees from Surat.
SELECT AVG(SALARY) AS SAL_AVG_SURAT 
FROM EMPLOYEE
WHERE CITY='SURAT'

--16. Display total salary of female employees.
SELECT SUM(SALARY) AS SUM_SAL_FEMALE 
FROM EMPLOYEE
WHERE GENDER = 'FEMALE'

--17. Count number of male employees.
SELECT COUNT(GENDER) AS MALE_EMPLOYEE 
FROM EMPLOYEE
WHERE GENDER='MALE'

--18. Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(*) AS CITY_EMPLOYEE 
FROM EMPLOYEE
WHERE CITY IS NOT NULL
GROUP BY CITY

--19. Count number of employees in each city where gender is MALE.
SELECT CITY,COUNT(GENDER) AS MALE_EMPLOYEE 
FROM EMPLOYEE
WHERE CITY IS NOT NULL
GROUP BY CITY

--20. Display maximum salary in each department where city is not Ahmedabad.
SELECT DEPARTMENT,MAX(SALARY) AS MAX_SALARY 
FROM EMPLOYEE
WHERE CITY IS NOT NULL OR CITY != 'AHMEDABAD' 
GROUP BY DEPARTMENT

--21. Display minimum salary in each city where gender is FEMALE.
SELECT CITY,MIN(SALARY) AS FEMALE_MIN_SALARY 
FROM EMPLOYEE
WHERE GENDER = 'FEMALE' 
GROUP BY CITY

--22. Give total salary of each department of EMPLOYEE table.
SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY 
FROM EMPLOYEE
GROUP BY DEPARTMENT

--23. Give average salary of each department of EMPLOYEE table without displaying the respective department name.
SELECT AVG(SALARY) AS AVG_SAL_BY_DEPARTMENT 
FROM EMPLOYEE
GROUP BY DEPARTMENT

--24. Count the number of employees for each department in every city.
SELECT CITY,COUNT(DEPARTMENT) AS DEAPTMENT_VISE_EMPLOYEE 
FROM EMPLOYEE
WHERE CITY IS NOT NULL 
GROUP BY CITY

--25. Calculate the total salary distributed to male and female employees.
SELECT GENDER,SUM(SALARY) AS TOTAL_SALARY 
FROM EMPLOYEE
GROUP BY GENDER

--26. Give city wise maximum and minimum salary of female employees.
SELECT GENDER , MAX(SALARY) AS MAX_SALARY , MIN(SALARY) AS MIN_SALARY 
FROM EMPLOYEE
WHERE CITY IS NOT NULL OR CITY != 'AHMEDABAD' 
GROUP BY GENDER

--27. Calculate department, city, and gender wise average salary.
SELECT AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEE
GROUP BY DEPARTMENT,CITY,GENDER

--28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE_SALARY
FROM EMPLOYEE

--29. Display sum of salaries of department wise where department name consist 5 letter.
SELECT SUM(SALARY) AS AVG_SALARY 
FROM EMPLOYEE
--WHERE DEPARTMENT LIKE '_____'
WHERE LEN(DEPARTMENT) = 5
GROUP BY DEPARTMENT

--30. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT MAX(SALARY) AS AVG_SALARY FROM EMPLOYEE
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT,CITY
