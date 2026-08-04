USE CSE_3A_128

SELECT * FROM STADIUM
SELECT * FROM TEAM
SELECT * FROM PLAYER

--1. Display players who belong to teams located in ‘Mumbai’.
SELECT CONCAT_WS(' ',P.PLAYER_FIRST_NAME,P.PLAYER_LAST_NAME) AS PLAYERS_NAME
FROM PLAYER P 
INNER JOIN TEAM T
ON P.TEAM_ID = T.TEAM_ID
WHERE T.TEAM_NAME = 'Mumbai Indians'


--2. Display all teams and players.
SELECT T.TEAM_NAME ,
  CONCAT_WS(' ',P.PLAYER_FIRST_NAME,P.PLAYER_LAST_NAME) AS PLAYERS_NAME
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID


--3. Display players along with team wins and stadium city.
SELECT CONCAT_WS(' ',P.PLAYER_FIRST_NAME,P.PLAYER_LAST_NAME) AS PLAYERS_NAME
	, T.TEAM_WINS , S.Stadium_city
FROM PLAYER P
INNER JOIN TEAM T
ON P.TEAM_ID = T.TEAM_ID
INNER JOIN STADIUM S
ON S.Stadium_id = T.HOME_STADIUM_ID


--4. Display team name and number of players in each team.
SELECT T.TEAM_NAME , COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM PLAYER P 
INNER JOIN TEAM T
ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME


--5. Display team name, coach, and number of bowlers in each team.
SELECT T.TEAM_NAME , T.TEAM_COACH ,
	COUNT(P.PLAYER_ID) AS TOTAL_BOWLERS
FROM TEAM T
INNER JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
WHERE P.PLAYER_ROLE IN ('BOWLER','ALL-ROUNDER')
GROUP BY TEAM_NAME , T.TEAM_COACH


--6. Display team name with count of batsmen, bowlers, and all-rounders.
SELECT T.TEAM_NAME , COUNT(P.PLAYER_ID) AS [BATSMEN_BOWLERS_ALL-ROUNDER]
FROM TEAM T
INNER JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
WHERE P.PLAYER_ROLE IN ('BATSMEN','BOWLER','ALL-ROUNDER')
GROUP BY TEAM_NAME


--7. Display stadiums where teams have won more than 10 matches.
SELECT S.Stadium_name
FROM STADIUM S
INNER JOIN TEAM T
ON S.Stadium_id = T.HOME_STADIUM_ID
WHERE T.TEAM_WINS > 10


--8. Display team name and number of players whose matches played is greater than 25.
SELECT T.TEAM_NAME , COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM TEAM T
INNER JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
WHERE P.PLAYER_MATCHES_PLAYED > 25
GROUP BY TEAM_NAME


--9. Display team name and total number of players having jersey number greater than 30.
SELECT T.TEAM_NAME , COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM TEAM T
INNER JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
WHERE P.PLAYER_JERSEY_NUMBER > 30
GROUP BY TEAM_NAME


--10. Display team name and total matches played by its players.
SELECT T.TEAM_NAME , COUNT(P.PLAYER_MATCHES_PLAYED) AS TOTAL_MATCHES
FROM TEAM T
INNER JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME


--11. Display stadium city and total number of teams in each city.
SELECT S.Stadium_city , COUNT(T.TEAM_ID) AS TOTAL_TEAMS
FROM STADIUM S
INNER JOIN TEAM T
ON S.Stadium_id = T.HOME_STADIUM_ID
GROUP BY S.Stadium_city


--12. Display team name and average matches played by players in each team.
SELECT T.TEAM_NAME , AVG(P.PLAYER_MATCHES_PLAYED) AS AVG_MATCHES
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
GROUP BY TEAM_NAME


--13. Display team name and maximum matches played by any player in each team.
SELECT T.TEAM_NAME , MAX(P.PLAYER_MATCHES_PLAYED) AS MAX_MATCHES
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
GROUP BY TEAM_NAME


--14. Display team name and minimum matches played by any player in each team.
SELECT T.TEAM_NAME , MIN(P.PLAYER_MATCHES_PLAYED) AS MIN_MATCHES
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
GROUP BY TEAM_NAME


--15. Display stadium name and total number of players playing under teams of that stadium.
SELECT S.Stadium_name , T.TEAM_NAME , COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM STADIUM S
INNER JOIN TEAM T
ON S.Stadium_id = T.HOME_STADIUM_ID
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
GROUP BY S.Stadium_name , T.TEAM_NAME


--16. Display teams having more all-rounders than bowlers.
SELECT T.TEAM_NAME
FROM TEAM T
INNER JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID
GROUP BY T.TEAM_NAME
HAVING COUNT(CASE WHEN P.PLAYER_ROLE = 'ALL-ROUNDER' THEN 1 ELSE NULL END) >
	COUNT(CASE WHEN P.PLAYER_ROLE = 'BOWLER' THEN 1 ELSE NULL END)


--17. Display teams where difference between max and min player matches is greater than 5.
SELECT T.TEAM_NAME
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
GROUP BY TEAM_NAME
HAVING MAX(P.PLAYER_MATCHES_PLAYED) - MIN(P.PLAYER_MATCHES_PLAYED) > 5


--18. Display stadium city and total wins of teams in that city.
SELECT S.Stadium_city , T.TEAM_WINS
FROM STADIUM S
INNER JOIN TEAM T
ON S.Stadium_id = T.HOME_STADIUM_ID


--19. Display team name and total number of players for each role (grouped by role).
SELECT T.TEAM_NAME , P.PLAYER_ROLE , COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
GROUP BY P.PLAYER_ROLE ,T.TEAM_NAME 


--20. Display team name and total number of players whose name starts with ‘A’
SELECT T.TEAM_NAME , COUNT(P.PLAYER_ID) AS TOTAL_PLAYERS
FROM TEAM T
INNER JOIN PLAYER P
ON P.TEAM_ID = T.TEAM_ID
WHERE P.PLAYER_FIRST_NAME LIKE 'A%'
GROUP BY T.TEAM_NAME