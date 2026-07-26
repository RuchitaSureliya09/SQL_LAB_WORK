USE CSE_3A_128

--MATH FUNCTION

--1. Display the result of 5 multiply by 30.
SELECT 5*30 AS ANSWER

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS ABSOLUTE_VALUE, ABS(25) AS ABSOLUTE_VALUE, ABS(-50) AS ABSOLUTE_VALUE, ABS(50) AS ABSOLUTE_VALUE

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS CEILING_VALUE, CEILING(25.7) AS CEILING_VALUE, CEILING(-25.2) AS CEILING_VALUE

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS FLOOR_VALUE, FLOOR(25.7) AS FLOOR_VALUE, FLOOR(-25.2) AS FLOOR_VALUE

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2 AS ANSWER , 5%3 AS ANSWER

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2) AS POWER_VALUE, POWER(4,3) AS POWER_VALUE

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS SQUARE_ROOT, SQRT(30) AS SQUARE_ROOT, SQRT(50) AS SQUARE_ROOT

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5) AS SQUARE_VALUE, SQUARE(15) AS SQUARE_VALUE, SQUARE(25) AS SQUARE_VALUE

--9. Find out the value of PI.
SELECT PI() AS PI_VALUE

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2) AS ROUND_2 ,ROUND(157.732,0) AS ROUND_0 ,ROUND(157.732,-2) AS ROUND_NAG_2 

--11. Find out exponential value of 2 and 3.
SELECT EXP(2) AS EXP_2 , EXP(3) AS EXP_3

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10) AS LOG_e_10 , LOG(2) AS LOG_e_2

--13. Find logarithm base 10 of 5 and 100
SELECT LOG10(5) AS LOG_10_5 , LOG(100) AS LOG_10_100

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415) AS SINE, COS(3.1415) AS COSINE, TAN(3.1415) AS TANGENT

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25) AS SIGN_NAG_25, SIGN(0) AS SIGN_0, SIGN(25) AS SIGN_25

--16. Generate random number using function.
SELECT RAND() AS RANDOM_NUMBER

--STRING FUNCTION

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL) AS LEN_NULL, LEN(' HELLO ') AS LEN_HELLO, LEN('') AS LEN_BLANK

--2. Display your name in lower & upper case.
SELECT LOWER('DREAMY') AS LOWER_CASE, UPPER('LENCY') AS UPPER_CASE

--3. Display first three characters of your name.
SELECT LEFT('DREAMY',3) AS FIRST_THREE_CHAR

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('LENCY RABDIYA',3,8) AS DISPLAY_CHAR

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','123','XYZ') AS REPLACE_STRING, REPLACE('ABCANCABC','C','5') AS REPLACE_STRING

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('A') AS ASCII_A, ASCII('a') AS ASCII_a,ASCII('z') AS ASCII_z,
	ASCII('Z') AS ASCII_Z,ASCII('0') AS ASCII_0,ASCII('9') AS ASCII_9

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR('97') AS CHAR_97, CHAR('65') AS CHAR_65, CHAR('122') AS CHAR_122,
	CHAR('90') AS CHAR_90, CHAR('48') AS CHAR_48, CHAR('57') AS CHAR_57

--8. Write a query to remove spaces from left of a given string ‘ hello world ‘.
SELECT LTRIM(' HELLO WORD ') REMOVE_SPACE_LEFT

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM(' HELLO WORD ') REMOVE_SPACE_RIGHT

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4) AS LEFT_4_CHAR, RIGHT('SQL SERVER',5) AS RIGHT_5_CHAR

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST('1234.56'AS DECIMAL) AS CAST_NUMBER , CONVERT(DECIMAL, '1234.56') AS CONVERT_NUMBER

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST(10.58 AS INT) AS CAST_INT , CONVERT(INT , 10.58) AS CONVERT_INT

--13. Put 10 space before your name using function.
SELECT SPACE(10) + 'DREAMY JATIYA' AS ADD_SPACE

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT('LENCY',' ','RABDIYA') AS CONCAT_FUN , 'DREAMY'+' '+'JATIYA' AS CONCAT_PLUS

--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN') AS REVERSE_STRING

--16. Repeat your name 3 times.
SELECT REPLICATE('LENCY ',3) AS REPLICATE_FUNCTION

--17. Display FIRSTNAME and LASTNAME in lowercase and uppercase.
SELECT LOWER(FIRSTNAME) AS LOWER_FIRSTNAME , UPPER(LASTNAME) AS UPPER_LASTNAME FROM EMPLOYEE

--18. Display full name by combining FIRSTNAME and LASTNAME.
SELECT CONCAT(FIRSTNAME,' ',LASTNAME) AS CONCAT_FULLNAME FROM EMPLOYEE

--19. Display FIRSTNAME with first 3 characters only.
SELECT LEFT(FIRSTNAME,3) AS LEFT_3_CHAR_FIRSTNAME FROM EMPLOYEE

--20. Display LASTNAME with last 2 characters only.
SELECT RIGHT(LASTNAME,2) AS RIGHT_2_CHAR_LASTNAME FROM EMPLOYEE

--21. Display length of each employee’s FIRSTNAME.
SELECT LEN(FIRSTNAME) AS LEN_FIRSTNAME FROM EMPLOYEE

--22. Display FIRSTNAME after replacing ‘A’ with ‘@’.
SELECT REPLACE(FIRSTNAME,'A','@') AS REPLACE_A_@ FROM EMPLOYEE

--23. Display FIRSTNAME and LASTNAME with - between them using CONCAT.
SELECT CONCAT_WS(' - ',FIRSTNAME,LASTNAME) AS CONCAT_FULLNAME FROM EMPLOYEE

--24. Display FIRSTNAME without first and last character.
SELECT SUBSTRING(FIRSTNAME,2,LEN(FIRSTNAME)-2) AS SUBSTRING_FUN FROM EMPLOYEE

--25. Display FIRSTNAME after replacing vowels with '*'.
SELECT REPLACE( REPLACE( REPLACE( REPLACE( REPLACE(FIRSTNAME,'A','*'),'E','*'),'I','*'),'O','*'),'U','*')
AS REPLACE_VOWEL_STAR FROM EMPLOYEE

--26. Display employees where combined length of FIRSTNAME and LASTNAME is greater than 10.
SELECT * FROM EMPLOYEE
WHERE LEN(FIRSTNAME)+LEN(LASTNAME) >10

--27. Display FIRSTNAME and its reverse.
SELECT FIRSTNAME, REVERSE(FIRSTNAME) AS REVERSE_FIRSTNAME FROM EMPLOYEE

--28. Display employees whose FIRSTNAME and LASTNAME start with same character using LEFT()
SELECT * FROM EMPLOYEE
WHERE LEFT(FIRSTNAME,1) = LEFT(LASTNAME,1)
