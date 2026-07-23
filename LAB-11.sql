USE CSE_3A_128

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS TODAY_DATE

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(YEAR,1,GETDATE()) 

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(),'MMM d yyyy HH:MM')

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(),'dd MMM yyyy')

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(),'MMM d, yy')

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(DAY ,'31-DEC-08','31-MAR-09')

--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR ,'25-Jan-12 7:00','26-Jan-12 10:30')

--8. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DATEPART(DAY , '12-May-16')
SELECT DATEPART(MONTH , '12-May-16')
SELECT DATEPART(YEAR , '12-May-16')

--9. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR,5,GETDATE())

--10. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE())

--11. Extract month from current date using datename () and datepart () function.
SELECT DATEPART(MONTH,GETDATE())
SELECT DATENAME(MONTH,GETDATE())

--12. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE())

--13. Calculate your age in years and months.
SELECT DATEDIFF(YEAR,'16-SEP-2007',GETDATE())
SELECT DATEDIFF(MONTH,'16-SEP-2007',GETDATE())

--14. Display all records where account date is in the year 2025.
SELECT * FROM DEPOSIT
WHERE DATEPART(YEAR,ADATE) = 2025

--15. Display all records where account date is in the month of March.
SELECT * FROM DEPOSIT
WHERE DATEPART(MONTH,ADATE) = 3

--16. Display records where account date is after ‘01-Jan-2025’.
SELECT * FROM DEPOSIT
WHERE ADATE > '01-JAN-2025'

--17. Display records where account date is before ‘01-Jan-2025’.
SELECT * FROM DEPOSIT
WHERE ADATE < '01-JAN-2025'

--18. Display records where day of account date is 1.
SELECT * FROM DEPOSIT
WHERE DATEPART(DAY,ADATE) = 1

--19. Display records where month of account date is greater than 6.
SELECT * FROM DEPOSIT
WHERE DATEPART(MONTH,ADATE) >6

--20. Display records where year of account date is 2026.
SELECT * FROM DEPOSIT
WHERE DATEPART(YEAR,ADATE) = 2026

--21. Display number of accounts opened in each year.
SELECT YEAR(ADATE) AS YEARS,COUNT(*) AS ACT_NO FROM DEPOSIT
GROUP BY YEAR(ADATE)

--22. Display number of accounts opened in each month.
SELECT MONTH(ADATE) AS MONTHS,COUNT(*) AS ACT_NO FROM DEPOSIT
GROUP BY MONTH(ADATE)

--23. Display maximum amount deposited in each year.
SELECT YEAR(ADATE) AS YEARS,MAX(AMOUNT) AS MAX_AMOUNT FROM DEPOSIT
GROUP BY YEAR(ADATE)

--24. Display minimum amount deposited in each month.
SELECT MONTH(ADATE) AS MONTHS,MIN(AMOUNT) AS MIN_AMOUNT FROM DEPOSIT
GROUP BY MONTH(ADATE)

--25. Display total amount deposited in each year.
SELECT YEAR(ADATE) AS YEARS,SUM(AMOUNT) AS TOTAL_AMOUNT FROM DEPOSIT
GROUP BY YEAR(ADATE)

--26. Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’.
SELECT * FROM DEPOSIT
WHERE ADATE BETWEEN '01-Mar-2025' AND '31-Dec-2025'

--27. Display records where account date is in the current year.
SELECT * FROM DEPOSIT
WHERE YEAR(ADATE) = DATEPART(YEAR,GETDATE())

--28. Display difference in days between today’s date and account date.
SELECT DATEDIFF(DAY,ADATE,GETDATE()) AS DIFFERENCES FROM DEPOSIT
