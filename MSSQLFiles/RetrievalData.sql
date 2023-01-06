USE KickBase;

-- 1. Display players’ information of a specific team 
-- CONCAT to pull first and last name together, ALIASE
-- Age as a derived attribute from DoB
-- INNER JOIN / 3 Tables (Player, Player_Plays_Team, Team)
SELECT Player.PlayerID, CONCAT(FName, ' ',LName) AS "Full Name", Player_Plays_Team.pRole AS 'Position',
ShirtNumber, DoB AS "Birth Date",  (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) AS Age , Player_Plays_Team.TeamID, Team.TeamName
FROM Player
INNER JOIN Player_Plays_Team ON Player.PlayerID = Player_Plays_Team.PlayerID
INNER JOIN Team ON Player_Plays_Team.TeamID = Team.TeamID
WHERE Team.TeamName = 'USA';


-- 2. Provides a list of the coaches and their information on which team they served
-- DATEDIFF function to generate duration as a derived attribute in years, ALIASE
-- Age as a derived attribute from DoB
-- LEFT JOIN with Coach_Coaches_Team to retrieve StartDate and EndDate
-- INNER JOIN with Team to retrieve the Team Name
--*In MySQL, DATEDIFF function doesn't work, used :
--(YEAR(EndDate) - YEAR(StartDate)) as ‘Duration(yr)’ instead
SELECT Coach.CoachID, CONCAT(FName, ' ',LName) AS "Full Name", DoB AS "Birth Date",  
	    (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) AS Age,
		Coach_Coaches_Team.TeamID, Team.TeamName , 
		year(Coach_Coaches_Team.StartDate) AS "Start Year" , year(Coach_Coaches_Team.EndDate) AS "End Year",
		DATEDIFF(year, StartDate, EndDate) AS "Duration(yr)"
FROM Coach 
LEFT JOIN Coach_Coaches_Team ON Coach.CoachID = Coach_Coaches_Team.CoachID
INNER JOIN Team ON Coach_Coaches_Team.TeamID = Team.TeamID;


-- 3. Display information about each championship and which team won 1st, 2nd, and 3rd place respectively
-- CONCAT to pull first and last name together, ALIASE
-- DATEDIFF function to generate duration as a derived attribute in days
-- INNER JOIN with Championship_Match table to retrieve location value 
-- SELECT DISTINCT
--*In MySQL, DATEDIFF function doesn't work, used :
--(DAY(StartDate) - DAY(EndDate)) as "Duration (in Days)" 
SELECT DISTINCT CONCAT(Championship.Competition, ' ',Championship.chYear) AS "Championship", 
	StartDate, EndDate, DATEDIFF(day, StartDate, EndDate) AS "Duration (in Days)",
	 Championship_Match.cmLocation AS Location, TeamID_1stPlace, TeamID_2ndPlace, TeamID_3rdPlace
FROM Championship
INNER JOIN Championship_Match ON Championship.Competition = Championship_Match.Competition AND 
Championship.chYear = Championship_Match.chYear;


-- 4. UPDATE: Update player role.
UPDATE Player_Plays_Team
SET pRole='Defender'
WHERE PlayerID=1000;


-- 5. DELETE: Sponsor pulls out of a sponsor offer/no longer wishes to sponsor a team match
DELETE FROM Sponsor WHERE SponsorID=1001;


-- 6. Dipay Final and Semi-Final match information and indicate which team won or null for tied 
-- CASE WHEN to determine who is the winner or tied 
-- CONCAT, CONVERT, ALIASE
-- CONVERT function to display Hour and Minute only
--*In MySQL, CONVERT function doesn't work, used :
-- date_format(cmTime, '%h:%i') AS 'Time'
SELECT MatchID, CONCAT(Competition, ' ',chYear) AS "Championship League", cmLocation AS 'Location', 
		cmDate AS 'Date', CONVERT(char(5), cmTime, 108) AS 'Time', 
       Team1ID, Team1_NumberOfGoals, Team2ID, Team2_NumberOfGoals, 
	   (CASE 
			WHEN Team1_NumberOfGoals > Team2_NumberOfGoals then Team1ID 
			WHEN Team1_NumberOfGoals = Team2_NumberOfGoals then NULL
			ELSE Team2ID 
		END) AS 'Winner'
FROM Championship_Match;


-- 7. Identify the sponsored team(s) in a specific match 
-- AGGREGATE functions (COUNT, SUM), FORMAT function for currency, ALIASE
-- GROUP BY
-- INNER JOIN with Sponsor Table to retrieve Company Name
SELECT Competition, chYear, MatchID, Sponsor_Sponsors_Team_Match.SponsorID, Sponsor.CompanyName,
	COUNT(TeamID) AS "Number of Team sponsored",
	FORMAT(SUM(Amount), 'c') AS "Amount"
FROM Sponsor_Sponsors_Team_Match
INNER JOIN Sponsor ON Sponsor_Sponsors_Team_Match.SponsorID = Sponsor.SponsorID
GROUP BY Competition, chYear, MatchID, Sponsor_Sponsors_Team_Match.SponsorID, Sponsor.CompanyName;


--8. Determine the largest amount and the total amount each sponsor has given. 
-- AGGREGATE functions (MAX, SUM), ALIASE, FORMAT function for currency
-- GROUP BY
-- RIGHT JOIN with Sponsor to retrieve Company Name
SELECT Sponsor.CompanyName, FORMAT(MAX(Amount), 'c') AS 'Largest Amount', 
FORMAT(SUM(Amount), 'c') AS 'Total Amount'
FROM Sponsor_Sponsors_Team_Match
RIGHT JOIN Sponsor ON Sponsor_Sponsors_Team_Match.SponsorID = Sponsor.SponsorID
GROUP BY Sponsor.CompanyName;


-- 9. Display the number of registered players in each team
-- AGGREGATE function (COUNT), GROUP BY
-- INNER JOIN with Team Table to retrieve the Team Name
SELECT Player_Plays_Team.TeamID, Team.TeamName, COUNT(PlayerID) as "Number of Players"
FROM Player_Plays_Team
INNER JOIN Team ON Player_Plays_Team.TeamID = Team.TeamID
GROUP BY Player_Plays_Team.TeamID, Team.TeamName;


--10. Display players who are goalkeeper in ascending order by name
-- WHERE EXISTS (subquery), ORDER BY
-- ALIASE, CONCAT, YEAR
SELECT PlayerID, CONCAT(FName, ' ',LName) AS "Full Name",
ShirtNumber, DoB AS "Birth Date",  (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) AS Age
FROM Player
WHERE EXISTS (SELECT pRole FROM Player_Plays_Team 
WHERE Player_Plays_Team.PlayerID = Player.PlayerID AND Player_Plays_Team.pRole = 'goalkeeper')
ORDER BY "Full Name";


-- 11. Provide the age of the most experience and the youngest of the team whose average age is less than 34
-- AGGREGATE Functions (Max, Min), ALIASE
-- GROUP BY, HAVING
SELECT  Max((YEAR(CURRENT_TIMESTAMP) - YEAR(DoB))) AS "Age of Most Experienced",
		Min((YEAR(CURRENT_TIMESTAMP) - YEAR(DoB))) AS "Age of Rookie",
		Team.TeamName
FROM Player
LEFT JOIN Player_Plays_Team ON Player.PlayerID = Player_Plays_Team.PlayerID
INNER JOIN Team ON Player_Plays_Team.TeamID = Team.TeamID
GROUP BY Team.TeamName
HAVING AVG((YEAR(CURRENT_TIMESTAMP) - YEAR(DoB))) <= 34;


-- 12. Provide coaches' information whose age is below 55
-- INNER JOIN
-- WHERE EXISTs (subquery)
-- Age : a derived attribute from DoB
-- ALIASE, CONCAT, DATEDIFF, YEAR
SELECT Coach.CoachID, CONCAT(FName, ' ',LName) AS "Full Name", DoB AS "Birth Date",  
	    (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) AS Age,
		Coach_Coaches_Team.TeamID, Team.TeamName, 
		YEAR(Coach_Coaches_Team.StartDate) AS "Start Year", 
		YEAR(Coach_Coaches_Team.EndDate) AS "End Year",
		DATEDIFF(year, StartDate, EndDate) AS "Duration(yr)"
FROM Coach 
LEFT JOIN Coach_Coaches_Team 
ON Coach.CoachID = Coach_Coaches_Team.CoachID
INNER JOIN Team ON Coach_Coaches_Team.TeamID = Team.TeamID
WHERE EXISTS (SELECT CoachID FROM Coach_Coaches_Team
WHERE Coach_Coaches_Team.CoachID = Coach.CoachID AND (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) < 55)
ORDER BY Team.TeamName DESC;


-- 13. Determine which team made it to the semi-finals/finals more than twice since FIFA 2011.
-- GROUP BY, HAVING
-- FULL JOIN **FULL JOIN doesn't work in MySQL, it requires LEFT JOIN UNION RIGHT JOIN  
-- AGGREGATE function (COUNT), ALIASE
SELECT Team.TeamName, COUNT(Team1ID + Team2ID) AS "Num of Participation"
FROM Championship_Match
FULL JOIN Team 
ON Championship_Match.Team1ID = Team.TeamID OR Championship_Match.Team2ID = Team.TeamID
GROUP BY Team.TeamName
HAVING COUNT(Team1ID + Team2ID) > 2;


-- 14. Display matches held in FIFA 2011 and FIFA 2015
-- IN
SELECT *
FROM Championship_Match
WHERE chYear IN (2011, 2015) 


-- 15. Display Sponsor in order of largest amount between year 2000 and 2020
-- BETWEEN AND
SELECT CONCAT(Sponsor_Sponsors_Team_Match.Competition, ' ',Sponsor_Sponsors_Team_Match.chYear) AS "Championship",
Sponsor_Sponsors_Team_Match.SponsorID, Sponsor.CompanyName, Sponsor_Sponsors_Team_Match.Amount
FROM Sponsor_Sponsors_Team_Match
INNER JOIN Sponsor ON Sponsor_Sponsors_Team_Match.SponsorID = Sponsor.SponsorID
WHERE Sponsor_Sponsors_Team_Match.chYear BETWEEN 2000 AND 2022
ORDER BY Sponsor_Sponsors_Team_Match.Amount DESC;


-- 16. Display all players whose last name starting with "Van"
-- LIKE, WILDCARD
SELECT Player.PlayerID, Player.FName AS "First Name", Player.LName AS "Last Name", 
Player_Plays_Team.pRole AS 'Position', ShirtNumber, DoB as "Birth Date",
(YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) as Age, Player_Plays_Team.TeamID, Team.TeamName
FROM Player
INNER JOIN Player_Plays_Team ON Player.PlayerID = Player_Plays_Team.PlayerID
INNER JOIN Team ON Player_Plays_Team.TeamID = Team.TeamID
WHERE LName LIKE 'Van%'; 


-- 17. Display all the registered coaches and players by their last name
-- UNION, ORDER BY
SELECT LName, FName, DoB AS "Birth Date" FROM Player
UNION
SELECT LName, FName, DoB AS "Birth Date" FROM Coach
ORDER BY LName;


-- 18. Display 1st place teams in each championship
-- INNER JOIN
-- CONCAT
SELECT CONCAT(Championship.Competition, ' ',Championship.chYear) AS "Championship", 
Team.TeamName AS "First Place"
FROM Team
INNER JOIN Championship ON Team.TeamID = Championship.TeamID_1stPlace


-- 19. Display matches held in France 
-- CREATE VIEW, ALIASES 
-- **MySQL : date_format(cmTime, '%h:%i') AS 'Time
CREATE VIEW Matches_in_France 
AS
SELECT MatchID, Competition, chYear AS 'Year', cmDate as 'Date', 
CONVERT(char(5), cmTime, 108) AS 'Time'
FROM Championship_Match
WHERE cmLocation = 'France';

SELECT * FROM Matches_in_France
DROP VIEW Matches_in_France


-- 20. Dispaly players in position of midfielder gouped by country
-- CREATE VIEW, ALIASE
-- INNER JOIN
-- GROUP BY
CREATE VIEW Players_MidFielder
AS
SELECT Team.TeamName, Player.PlayerID, CONCAT(FName, ' ',LName) AS "Full Name", 
ShirtNumber, DoB AS "Birth Date",  (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) AS Age
FROM Player
INNER JOIN Player_Plays_Team ON Player_Plays_Team.PlayerID = Player.PlayerID
INNER JOIN Team ON Team.TeamID = Player_Plays_Team.TeamID
WHERE Player_Plays_Team.pRole = 'midfielder'
GROUP BY Team.TeamName, Player.PlayerID, CONCAT(FName, ' ',LName), 
ShirtNumber, DoB, (YEAR(CURRENT_TIMESTAMP) - YEAR(DoB)) ;

SELECT * FROM Players_MidFielder
DROP VIEW Players_MidFielder

