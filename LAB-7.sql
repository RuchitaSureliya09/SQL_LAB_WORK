USE CSE_3A_128

--1. Display employees detail whose FIRSTNAME starts with ‘H’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'H%'

--2. Display employees detail whose FIRSTNAME consists of exactly 5 characters.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_____'

--3. Display employees detail whose CITY ends with ‘T’ and has 6 characters.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_____%T'

--4. Display employees detail whose LASTNAME ends with ‘EL’.
SELECT * FROM EMPLOYEE
WHERE LASTNAME LIKE '%EL'

--5. Display employees detail whose FIRSTNAME starts with ‘R’ and ends with ‘A’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'R%A'

--6. Display employees detail whose FIRSTNAME starts with ‘V’ and third character is ‘S’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'V%_S%'

--7. Display employees detail whose CITY is NULL and FIRSTNAME has 6 characters.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '______' AND CITY IS NULL

--8. Display employees detail whose FIRSTNAME contains ‘AR’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'AR%'

--9. Display employees detail whose CITY starts with ‘R’ or ‘B’.
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '[RB]%'

--10. Display employees detail whose DEPARTMENT is NOT NULL.
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT IS NOT NULL

--11. Display employees detail whose FIRSTNAME starts from alphabet A to H.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '[A-H]%'

--12. Display employees detail whose second character of FIRSTNAME is a vowel.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE= '_[AEIOU]%'

--13. Display employees detail whose FIRSTNAME length ≥ 5.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_____%'

--14. Display employees detail whose LASTNAME starts with ‘PA’.
SELECT * FROM EMPLOYEE
WHERE LASTNAME LIKE 'PA%'

--15. Display employees detail whose CITY does not start with ‘B’.
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '[^B]%'

--16. Display employees whose second character of FIRSTNAME is a not vowel.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_[^AEIOU]%'

--17. Display employees whose JOINING YEAR last digit is 4 or 6.
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR LIKE '%[46]'

SELECT * FROM EMPLOYEE
WHERE CAST(JOININGYEAR AS VARCHAR(20)) LIKE '%[46]'

--18. Display employees detail whose FIRSTNAME starts with ‘H’, ends with ‘I’, and CITY contains ‘RA’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'H%I' AND CITY LIKE '%RA%'

--19. Display employees detail whose FIRSTNAME contains ‘A’, CITY ends with ‘D’, and DEPARTMENT is NOT NULL.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%A%' AND CITY LIKE '%D' AND DEPARTMENT IS NOT NULL

--20. Display employees whose second and third characters of FIRSTNAME are vowels and CITY starts with ‘R’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_[AEIOU][AEIOU]%' AND CITY LIKE 'R%'

--21. Display employees whose CITY contains ‘RA’ and salary less than 13000 and joining year last digit is 6.
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '%RA%' AND SALARY < 13000 AND JOININGYEAR LIKE '%6'

--22. Display employees whose SALARY between 10000 and 15000 and CITY name contains 'KO' and FIRSTNAME start with H.
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '%KO%' AND SALARY BETWEEN 10000 AND 15000 AND FIRSTNAME LIKE 'H%'

--23. Display employees whose FIRSTNAME starts with ‘A’ or ‘D’ and SALARY greater than 12000.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '[AD]%' AND SALARY > 12000

--24. Display employees whose CITY contains ‘N’ and SALARY less than 15000.
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '%N%' AND SALARY < 15000

--25. Display employees whose FIRSTNAME length = 6 and CITY ends with ‘AR’.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '______' AND CITY LIKE '%AR'

--26. Display employees whose FIRSTNAME ends with a vowel, department name start with vowel, and SALARY is between 10000 and 15000.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%[AEIOU]' AND DEPARTMENT LIKE '[AEIOU]%' AND SALARY BETWEEN 10000 AND 15000

--27. Display employees whose LASTNAME contains ‘A’ at least twice, gender is male, and SALARY is not equal to 14000.
SELECT * FROM EMPLOYEE
WHERE LASTNAME LIKE '%A%A%' AND GENDER = 'MALE' AND SALARY <> 14000

--28. Display employees whose FIRSTNAME second character is vowel and LASTNAME ends with ‘R’ and SALARY less than 12000.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_[AEIOU]%' AND LASTNAME LIKE '%R' AND SALARY < 12000

--29. Display employees whose CITY is NOT NULL and FIRSTNAME does not start with vowel and DEPARTMENT not in (‘HR’, ‘IT’).
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '[^AEIOU]%' AND CITY IS NOT NULL AND DEPARTMENT NOT IN ('HR','IT')

--30. Display employees whose CITY is not NULL, FIRSTNAME ends with vowels, and DEPARTMENT is neither ‘HR’ nor ‘IT’.
SELECT * FROM EMPLOYEE
WHERE CITY IS NOT NULL AND FIRSTNAME LIKE '%[AEIOU]' AND DEPARTMENT IN ('HR','IT')


--EXTRA QUESTION
	
DROP TABLE PATIENTRECORDS

CREATE TABLE PATIENTRECORDS
(
	RECORDID INT PRIMARY KEY,
	PATIENTNAME VARCHAR(100),
	DIAGNOSISCODE VARCHAR(50),
	TREATMENTPLAN VARCHAR(250)
);

INSERT INTO PATIENTRECORDS (RECORDID, PATIENTNAME, DIAGNOSISCODE, TREATMENTPLAN) 
VALUES (201, 'AMY SMITH', 'ABC-123', 'TAKE VITAMIN PILLS DAILY.'),
	(202, 'BOB JONES', 'ABC-999', 'REST AND DRINK WATER.'),
	(203, 'CODY MILLER', 'XYZ-450', 'TAKE ANTIBIOTICS DAILY.'),
	(204, 'DAN_WEBB', 'E11', 'CHECK BLOOD SUGAR.'),
	(205, '1ST_TEST', 'XYZ-%', 'EMERGENCY CARE.');


--1. Find all records where the PatientName starts with 'A' and ends with 'h'.
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE 'A%H'

--2. Find all records where the DiagnosisCode starts with 'abc' and ends with '9'.
SELECT * FROM PATIENTRECORDS
WHERE DIAGNOSISCODE LIKE 'ABC%9'

--3. Find all records where the PatientName starts with 'C' and is exactly 11 characters long.
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE 'C__________'

--4. Find all records where the DiagnosisCode ends with a literal percent sign %.
SELECT * FROM PATIENTRECORDS
WHERE DIAGNOSISCODE LIKE '%[%]'

--5. Find all records where the TreatmentPlan ends with a period ‘.’.
SELECT * FROM PATIENTRECORDS
WHERE TREATMENTPLAN LIKE '%[.]'

--6. Find all records where the PatientName begins with any letter from A through C.
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE '[A-C]%'

--7. Find all records where the DiagnosisCode starts with a letter between X and Z.
SELECT * FROM PATIENTRECORDS
WHERE DIAGNOSISCODE LIKE '[X-Z]%'

--8. Find all records where the DiagnosisCode contains a 3-digit number starting with 4 (i.e., 400 to 499).
SELECT * FROM PATIENTRECORDS
WHERE DIAGNOSISCODE LIKE '%[4__]%'

--9. Find all records where the PatientName does NOT start with any letter between A and C.
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE '[^A-C]%'

--10. Find all records where the PatientName starts with a number.
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE '[0-9]%'

--11. Find all records where the second letter of the PatientName is a lowercase vowel (a, e, i, o, u).
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE '_[AEIOU]%'

--12. Find all records where the DiagnosisCode starts with a letter, followed immediately by two digits.
SELECT * FROM PATIENTRECORDS
WHERE DIAGNOSISCODE LIKE '[A-Z][0-9][0-9]%'

--13. Find all records where the last character of the DiagnosisCode is not a letter or a number.
SELECT * FROM PATIENTRECORDS
WHERE DIAGNOSISCODE LIKE '%[^A-Z0-9]'

--14. Find all records where the PatientName contains a literal underscore ‘_’ anywhere inside it.
SELECT * FROM PATIENTRECORDS
WHERE PATIENTNAME LIKE '%[_]%'
