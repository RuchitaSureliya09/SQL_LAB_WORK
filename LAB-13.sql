USE CSE_3A_128

--1. Combine information from Student and Result table using cross join (Cartesian product).
SELECT * 
FROM STUDENT_INFO , RESULT

SELECT * FROM 
STUDENT_INFO CROSS JOIN RESULT

--2. Perform inner join on Student and Result tables.
SELECT * 
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO

--3. Perform the left outer join on Student and Result tables.
SELECT * 
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO

SELECT * 
FROM RESULT R LEFT OUTER JOIN STUDENT_INFO S
ON S.RNO = R.RNO

--4. Perform the right outer join on Student and Result tables.
SELECT * 
FROM RESULT R RIGHT OUTER JOIN STUDENT_INFO S
ON S.RNO = R.RNO

SELECT * 
FROM STUDENT_INFO S RIGHT OUTER JOIN RESULT R
ON S.RNO = R.RNO

--5. Perform the full outer join on Student and Result tables.
SELECT * 
FROM STUDENT_INFO S FULL OUTER JOIN RESULT R
ON S.RNO = R.RNO

SELECT * 
FROM RESULT R FULL OUTER JOIN STUDENT_INFO S
ON S.RNO = R.RNO

--6. Display Rno, Name, Branch and SPI of all students.
SELECT S.RNO , S.NAME , S.BRANCH , R.SPI 
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO

--7. Display Rno, Name, Branch and SPI of CE branch students only.
SELECT S.RNO , S.NAME , S.BRANCH , R.SPI 
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S.BRANCH = 'CE'

--8. Display Rno, Name, Branch and SPI of students other than EC branch.
SELECT S.RNO , S.NAME , S.BRANCH , R.SPI 
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S.BRANCH != 'EC'

--9. Display Rno, Name and SPI of students whose SPI is greater than 8.
SELECT S.RNO , S.NAME , R.SPI 
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE R.SPI > 8

--10. Display Rno, Name and Branch of students whose SPI is less than 8.
SELECT S.RNO , S.NAME , S.BRANCH , R.SPI 
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE R.SPI < 8

--11. Display average result of each branch.
SELECT S.BRANCH , AVG(R.SPI) AS AVG_SPI
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH

--12. Display average result of CE and ME branch.
SELECT S.BRANCH , AVG(R.SPI) AS AVG_SPI
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S. BRANCH IN ('CE','ME')
GROUP BY S.BRANCH

--13. Display maximum and minimum SPI of each branch.
SELECT S.BRANCH , MAX(R.SPI) AS MAX_SPI , MIN(R.SPI) AS MIN_SPI
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH

--14. Display branch-wise student count in descending order.
SELECT S.BRANCH , COUNT(*) AS COUNT_STUDENT
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY COUNT(S.BRANCH) DESC

--15. Display branch-wise total SPI of students.
SELECT S.BRANCH , SUM(R.SPI) TOTAL_SPI
FROM STUDENT_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH

--16. Display branch-wise number of students having SPI greater than 8.
SELECT S.BRANCH , COUNT(*) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
WHERE R.SPI > 8
GROUP BY S.BRANCH

--17. Display branch-wise number of students having SPI less than 8.
SELECT S.BRANCH , COUNT(*) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
WHERE R.SPI < 8
GROUP BY S.BRANCH

--18. Display branch-wise average SPI greater than 7.
SELECT S.BRANCH , AVG(R.SPI) AS AVERAGE_SPI
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
HAVING AVG(R.SPI) > 7

--19. Display branches having more than 1 students.
SELECT S.BRANCH , COUNT(*) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
HAVING COUNT(S.BRANCH) > 1

--20. Display branches where maximum SPI is greater than 9.
SELECT S.BRANCH , MAX(SPI) AS MAX_SPI
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
HAVING MAX(SPI) >9

--21. Display average result of each branch and sort them in ascending order by SPI.
SELECT S.BRANCH , AVG(R.SPI) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY AVG(R.SPI)

--22. Display highest SPI from each branch and sort them in descending order.
SELECT S.BRANCH , MAX(R.SPI) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY MAX(R.SPI) DESC

--23. Display average result of each branch and sort them in ascending order by SPI.
SELECT S.BRANCH , AVG(R.SPI) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY AVG(R.SPI)

--24. Display highest SPI from each branch and sort them in descending order.
SELECT S.BRANCH , MAX(R.SPI) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY MAX(R.SPI) DESC

--25. Display branches where difference between max and min SPI is greater than 1.
SELECT S.BRANCH , MAX(R.SPI)-MIN(R.SPI) AS COUNT_STUDENT
FROM STUDENT_INFO S INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
HAVING MAX(R.SPI)-MIN(R.SPI) >1