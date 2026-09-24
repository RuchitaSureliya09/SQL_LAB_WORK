USE CSE_3A_128

--From the table STUDENT perform the following queries:

--1. Create a table valued function to display all student records.

CREATE OR ALTER FUNCTION FN_STUDENT_DETAILS()
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT


SELECT * FROM FN_STUDENT_DETAILS()



--2. Create a table valued function that accepts CITY and returns all students from that city.

CREATE OR ALTER FUNCTION FN_STUDENT_CITY(
    @CITY VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE CITY = @CITY


SELECT * FROM FN_STUDENT_CITY('RAJKOT')



--3. Create a table valued function that accepts BRANCH and returns all students of that branch.

CREATE OR ALTER FUNCTION FN_STUDENT_BRANCH(
    @BRANCH VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH


SELECT * FROM FN_STUDENT_BRANCH('COMPUTER')



--4. Create a table valued function that accepts SPI and returns students whose SPI is greater than entered SPI.

CREATE OR ALTER FUNCTION FN_STUDENT_SPI(
    @SPI DECIMAL(4,2)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE SPI > @SPI


SELECT * FROM FN_STUDENT_SPI(8)



--5. Create a table valued function that accepts MIN_SPI and MAX_SPI and returns students whose SPI lies between given range.

CREATE OR ALTER FUNCTION FN_SPI_RANGE(
    @MIN_SPI DECIMAL(4,2),
    @MAX_SPI DECIMAL(4,2)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE SPI BETWEEN @MIN_SPI AND @MAX_SPI


SELECT * FROM FN_SPI_RANGE(8.5,8.9)



--6. Create a table valued function that accepts STDID and returns details of that student.

CREATE OR ALTER FUNCTION FN_STDID_DETAILS(
    @STDID INT
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE STDID = @STDID


SELECT * FROM FN_STDID_DETAILS(105)



--7. Create a table valued function that accepts CITY and returns students whose SPI is greater than 7 from that city.

CREATE OR ALTER FUNCTION FN_SPI_CITY(
    @CITY VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE CITY = @CITY AND SPI > 7


SELECT * FROM FN_SPI_CITY('SURAT')



--8. Create a table valued function that accepts BRANCH and returns students whose SPI is less than 8 from that branch.

CREATE OR ALTER FUNCTION FN_SPI_BRANCH(
    @BRANCH VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH AND SPI < 8


SELECT * FROM FN_SPI_BRANCH('EC')



--9. Create a table valued function that accepts TOPN and returns top N students based on SPI.

CREATE OR ALTER FUNCTION FN_SPI_TOPN(
    @N INT
)
RETURNS TABLE
AS
RETURN
    SELECT TOP (@N) *
    FROM STUDENT
    ORDER BY SPI DESC


SELECT * FROM FN_SPI_TOPN(2)



--10. Create a table valued function that accepts BRANCH and returns highest SPI student from that branch.

CREATE OR ALTER FUNCTION FN_HSPI_BRANCH(
    @BRANCH VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT TOP 1 *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
    ORDER BY SPI DESC


SELECT * FROM FN_HSPI_BRANCH('CIVIL')



--11. Create a table valued function that accepts CITY and returns total students from that city.

CREATE OR ALTER FUNCTION FN_CITY_STD(
    @CITY VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT COUNT(*) AS TOTAL_STD
    FROM STUDENT
    WHERE CITY = @CITY


SELECT * FROM FN_CITY_STD('RAJKOT')



--12. Create a table valued function that accepts BRANCH and returns students ordered by SPI in descending order.

CREATE OR ALTER FUNCTION FN_OSPI_BRANCH(
    @BRANCH VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH


SELECT * FROM FN_OSPI_BRANCH('COMPUTER')
ORDER BY SPI DESC



--13. Create a table valued function that accepts CITY and returns top 3 student from that city based on SPI.

CREATE OR ALTER FUNCTION FN_TOP3_CITY(
    @CITY VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT TOP 3 *
    FROM STUDENT
    WHERE CITY = @CITY
    ORDER BY SPI DESC


SELECT * FROM FN_TOP3_CITY('SURAT')



--14. Create a table valued function that accepts STDID and returns student rank based on SPI (RANK).

CREATE OR ALTER FUNCTION FN_STDID_RANK(
    @STDID INT
)
RETURNS TABLE
AS
RETURN
    SELECT * FROM 
    (
      SELECT *,
      RANK() OVER(ORDER BY SPI DESC) AS RN
      FROM STUDENT 
    )
    AS R
    WHERE STDID = @STDID


SELECT * FROM FN_STDID_RANK(105)



--15. Create a table valued function that accepts BRANCH and returns students having second highest SPI from that branch.

CREATE OR ALTER FUNCTION FN_2SPI_BRANCH(
    @BRANCH VARCHAR(20)
)
RETURNS TABLE
AS
RETURN
    SELECT MAX(SPI) AS SPI_2
    FROM STUDENT
    WHERE BRANCH = @BRANCH
        AND SPI < (
                SELECT MAX(SPI)
                FROM STUDENT
                WHERE BRANCH = @BRANCH
        )


SELECT * FROM FN_2SPI_BRANCH('COMPUTER')

---------------------- OR -----------------------

CREATE OR ALTER FUNCTION FN_2SPI_BRANCH(
@BRANCH VARCHAR(20)
)
RETURNS TABLE
AS 
RETURN
	SELECT * FROM(
		SELECT * ,
		DENSE_RANK() OVER (ORDER BY SPI DESC) AS D_RN
		FROM STUDENT
		WHERE BRANCH = @BRANCH
	) AS R
	WHERE D_RN=2


SELECT * FROM FN_2SPI_BRANCH('MECHANICAL')