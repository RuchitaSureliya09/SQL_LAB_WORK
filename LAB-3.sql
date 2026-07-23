USE CSE_3A_128;

--Retrieve all data from table STUDENT.
SELECT * FROM STUDENT; 

--2. Display Student Name and City from STUDENT.
SELECT SNAME,CITY FROM STUDENT; 

--3. Display student details of all students who belongs to COMPUTER branch.
SELECT * FROM STUDENT
WHERE BRANCH = 'COMPUTER'; 

--4. Display names of students whose ID is less than 105 from STUDENT table.
SELECT SNAME FROM STUDENT
WHERE STDID < 105; 

--5. Give Student Name, City and SPI of student whose SPI is greater than 6.50.
SELECT SNAME,CITY,SPI FROM STUDENT
WHERE SPI > 6.5; 

--6. Give name of Student whose branch is COMPUTER and SPI is greater than 8.00.
SELECT SNAME FROM STUDENT
WHERE BRANCH = 'COMPUTER' AND SPI > 8; 
       
--7. Give names of students whose ID is greater than 103 and belongs to Rajkot city.
SELECT SNAME FROM STUDENT
WHERE STDID > 103 AND CITY = 'RAJKOT';

--8. Display names of students who belong to either ‘RAJKOT’ or ‘SURAT’ city (USE OR & IN).
SELECT SNAME FROM STUDENT
WHERE CITY = 'RAJKOT' OR CITY = 'SURAT';

SELECT SNAME FROM STUDENT
WHERE CITY IN ('RAJKOT', 'SURAT'); 

--9. Display names of students with branch whose SPI is greater than 8.0 and ID is less than 105.
SELECT SNAME FROM STUDENT
WHERE SPI > 8 AND STDID < 105;
        
--10. Find all students whose SPI is greater than or equal to 7.0 and less than or equal to 9.0 (USE AND & --BETWEEN).
SELECT * FROM STUDENT
WHERE SPI >= 7 AND SPI <= 9;

SELECT * FROM STUDENT
WHERE SPI BETWEEN 7 AND 9;

--11. Find all students who do not belong to ‘COMPUTER’ branch.
SELECT * FROM STUDENT
WHERE NOT BRANCH = 'COMPUTER';

SELECT * FROM STUDENT
WHERE BRANCH != 'COMPUTER';

SELECT * FROM STUDENT
WHERE BRANCH <> 'COMPUTER';

--12. Display Student ID, Name & SPI of students who belong to ‘COMPUTER’, ‘CIVIL’ or ‘CHEMICAL’ branch --and ID is less than 104.
SELECT STDID,SNAME,SPI FROM STUDENT
WHERE  STDID < 104 AND BRANCH IN ('COMPUTER', 'CIVIL', 'CHEMICAL'); 
       
--13. Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN).
SELECT STDID,SNAME FROM STUDENT
WHERE NOT BRANCH IN ('COMPUTER', 'CIVIL'); 

--14. Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=).
SELECT SNAME FROM STUDENT
WHERE NOT SNAME = 'DEEP';

SELECT SNAME FROM STUDENT
WHERE SNAME != 'DEEP';

SELECT SNAME FROM STUDENT
WHERE SNAME <> 'DEEP'; 

--15. Display student names whose branch is not available (NULL) in STUDENT table.
SELECT SNAME FROM STUDENT
WHERE BRANCH IS NULL;

--16. Retrieve all unique branches name from STUDENT table.
SELECT DISTINCT BRANCH
FROM STUDENT; 

--17. Retrieve first 50% records from STUDENT table.
SELECT TOP 50 PERCENT * FROM STUDENT; 

--18. Retrieve first five student IDs from STUDENT table.
SELECT TOP 50 PERCENT STDID FROM STUDENT; 

--19. Display all the details of first five students from STUDENT table.
SELECT TOP 5 * FROM STUDENT; 

--20. Display all the details of first three students whose SPI is greater than 8.0.
SELECT TOP 3 * FROM STUDENT
WHERE SPI > 8; 

--21. Display Student ID, Name of first five students whose branch does not belong to ‘COMPUTER’ branch.
SELECT TOP 5 STDID,SNAME FROM STUDENT
WHERE NOT BRANCH = 'COMPUTER'; 

--22. Select all details with student IDs not in the range 105 to 109.
SELECT * FROM STUDENT
WHERE NOT STDID BETWEEN 105 AND 109; 

--23. Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student --ID is between 102 and 108.
SELECT * FROM STUDENT
WHERE SPI > 7 AND SPI <= 9 AND STDID BETWEEN 102 AND 108; 
       
--24. Display all details of students who have SPI more than 8.5 without using * from STUDENT table.
SELECT STDID,SNAME,CITY,SPI,BRANCH FROM STUDENT
WHERE SPI > 8.5; 

--25. Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00.
SELECT SNAME FROM STUDENT
WHERE CITY = 'RAJKOT' AND SPI < 8;
       
--26. Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105.
SELECT * FROM STUDENT
WHERE SPI > 8 AND STDID < 105; 
       
 --27. Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and --110 and city is ‘RAJKOT’ or ‘SURAT’.
SELECT * FROM STUDENT
WHERE SPI > 7.5 AND STDID BETWEEN 100 AND 110;
       
 --28. Display details of students who belong to ‘CIVIL’ or ‘MECHANICAL’ branch and SPI is greater than 8.0.
SELECT * FROM STUDENT
WHERE BRANCH IN ('CIVIL', 'MECHANICAL') AND SPI > 8;
       
--extra question

--1. Display all students whose city is ‘RAJKOT’ and branch is ‘COMPUTER’.
SELECT * FROM STUDENT
WHERE CITY = ' RAJKOT' AND BRANCH = 'COMPUTER'; 

--2. Retrieve names and SPI of students whose SPI is less than 7.00.
SELECT SNAME,SPI FROM STUDENT
WHERE SPI < 7; 

--3. Display all details of students whose ID is between 103 and 107.
SELECT * FROM STUDENT
WHERE STDID BETWEEN 103 AND 107;

--4. Retrieve Student ID, Name, and Branch of students whose branch is ‘MECHANICAL’.
SELECT STDID,SNAME,BRANCH FROM STUDENT
WHERE BRANCH = 'MECHANICAL'; 

--5. Display all records where the city is not ‘SURAT’.
SELECT * FROM STUDENT
WHERE CITY != 'SURAT';

--6. Display names of students whose branch is either ‘ELECTRICAL’ or ‘MECHANICAL’.
SELECT SNAME FROM STUDENT
WHERE BRANCH IN ('ELECTRICAL', 'MECHANICAL');

--7. Retrieve all students whose SPI is not between 6.0 and 8.0.
SELECT * FROM STUDENT
WHERE NOT SPI BETWEEN 6 AND 8;

--8. Display details of students whose city is NULL.
SELECT * FROM STUDENT
WHERE CITY IS NULL;

--9. Display all students whose SPI is greater than 8.0 and who do not belong to either COMPUTER or CIVIL branch.
SELECT * FROM STUDENT
WHERE NOT BRANCH IN ('COMPUTER', 'CIVIL') AND SPI > 8;
       
--10. Display all students whose branch is NULL and whose city is not NULL.
SELECT * FROM STUDENT
WHERE CITY IS NULL AND BRANCH IS NULL; 

--11. Retrieve students whose SPI is greater than 7.5 and less than 9.0 but whose IDs are not between 104 and 108.
SELECT * FROM STUDENT
WHERE  NOT STDID BETWEEN 104 AND 108 AND SPI > 7.5 AND SPI < 9;
       
 --12. Retrieve all records where the city is RAJKOT and the branch is not COMPUTER.
SELECT *
FROM   STUDENT
WHERE  CITY = 'RAJKOT' AND BRANCH != 'COMPUTER'; 

--13. Display students whose IDs are not between 102 and 107 and whose SPI is greater than 7.5.
SELECT * FROM STUDENT
WHERE NOT STDID BETWEEN 102 AND 107 AND SPI > 7.5; 
       
 --14. Retrieve students whose SPI is between 7.0 and 8.5 and who belong to COMPUTER, CIVIL, or MECHANICAL branches.
SELECT * FROM STUDENT
WHERE SPI BETWEEN 7 AND 8.5 AND BRANCH IN ('COMPUTER', 'CIVIL', 'MECHANICAL'); 

--15. Display records where the branch is COMPUTER and city is not RAJKOT and SPI is greater than 7.0.
SELECT *
FROM STUDENT
WHERE BRANCH = 'COMPUTER' AND CITY != 'RAJKOT' AND SPI > 7;
       
--16. Retrieve student name and id along with the city whose city is RAJKOT and SPI is less than 8.0, or whose city is SURAT and SPI is greater than 8.0.
SELECT SNAME,STDID,CITY FROM STUDENT
WHERE (CITY = 'RAJKOT' AND SPI < 8) OR (CITY = 'SURAT' AND SPI > 8); 
           
--17. Display students who belong to COMPUTER branch and have SPI greater than 8.0, or belong to CIVIL branch and have SPI greater than 7.0.
SELECT * FROM STUDENT
WHERE (BRANCH = 'COMPUTER' AND SPI > 8) OR (BRANCH = 'CIVIL' AND SPI > 7); 
           
--18. Retrieve students whose IDs are in the range 101–110 but not in the range 104–107.
SELECT * FROM STUDENT
WHERE (NOT STDID BETWEEN 104 AND 107) AND (STDID BETWEEN 101 AND 110); 
       
--19. Display students whose city is RAJKOT and branch is COMPUTER, or whose city is SURAT and branch is CIVIL.
SELECT * FROM STUDENT
WHERE (CITY = 'RAJKOT' AND BRANCH = 'COMPUTER') OR (CITY = 'SURAT' AND BRANCH = 'CIVIL'); 
           
--20. Retrieve student names whose city is neither RAJKOT nor SURAT.
SELECT * FROM STUDENT
WHERE NOT CITY IN ('RAJKOT', 'SURAT');