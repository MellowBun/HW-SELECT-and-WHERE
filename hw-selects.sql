USE EntertainmentAgencyExample;

-- Find the first names, last names, and hire dates for all agents. Sort results by hire date from oldest to newest (3 columns, 9 rows).
--SELECT 
--	AgtFirstName, 
--	AgtLastName,
--	DateHired  
--FROM Agents
--ORDER BY DateHired ASC;

-- ###########################################################################

-- Find all genders represented in the Members table (including NULL values). Remove all duplicates (1 column, 3 rows).
-- my way
--SELECT Gender FROM Members
--GROUP BY Gender
--your way
--SELECT DISTINCT Gender FROM Members

-- ###########################################################################

-- Find the engagement numbers and prices of all engagements with contract prices over $800. Sort results by price from highest to lowest (2 columns, 59 rows).
--SELECT EngagementNumber, ContractPrice FROM Engagements
--WHERE ContractPrice > 800
--ORDER BY ContractPrice DESC;

-- ###########################################################################

-- Find the start and end dates for all engagements before 2018. Sort results by start date, then end date from earliest to latest. (2 columns, 62 rows)
--SELECT StartDate, EndDate FROM Engagements
--WHERE StartDate < '2018-01-01'
--ORDER BY StartDate, EndDate ASC;

-- ###########################################################################

-- Find the stage names of all entertainers whose stage name contains 'azz' (1 column, 2 rows).
--SELECT * FROM Entertainers
--WHERE EntStageName LIKE '%azz%'

-- ###########################################################################

-- Find the number, start date, and entertainer ID's for all engagements with one of the following entertainer ID's: 1004, 1007, 1010. Sort the results by entertainer ID from lowest to highest. For engagements with the same entertainer ID, sort by start date from earliest to latest (3 columns, 26 rows).

-- ###########################################################################

-- Find the stage names of all entertainers who do not have a web page. Sort results by stage name in alphabetical order (1 column, 5 rows).

-- ###########################################################################

-- Find the last name of all agents whose last name does not start with the letter 'v' (1 column, 7 rows).

-- ###########################################################################

-- Find the stage name, web page and email address for all entertainers who have a web page or email address listed (3 columns, 10 rows).

-- ###########################################################################

-- Find the engagement number, entertainer ID, contract price, and agent ID for all engagements featuring entertainer #1001 that either cost more than $500 or used agent #5 (4 columns, 8 rows).

-- ###########################################################################
 
USE SchoolSchedulingExample;
 
-- Find the code and name of all subjects that have a prerequisite (2 columns, 9 rows).
--SELECT SubjectPreReq, SubjectCode FROM Subjects
--WHERE SubjectPreReq != 'null'

-- ###########################################################################

-- Find the ID and description of all categories whose descriptions end in 'ology' (2 columns, 2 rows).
--SELECT CategoryID, CategoryDescription FROM Categories
--WHERE CategoryDescription LIKE '%ology%' 

-- ###########################################################################

-- * Find the codes for all buildings that have at least one classroom that can hold more than 60 people. Remove all duplicates (1 column, 3 rows).
--SELECT DISTINCT BuildingCode FROM Class_Rooms
--WHERE Capacity >= 60


-- ###########################################################################

-- * Find the building code, number of floors, and elevator access for all buildings that either have only 1 floor or have elevator access (3 columns, 6 rows).
--SELECT BuildingCode, NumberOfFloors, ElevatorAccess FROM Buildings

-- ###########################################################################

-- Find the ID, marital status, birth date, and state of all students who are single ('S') and either were born before 2000 or live in Washington (4 columns, 13 rows).

--SELECT StudentID, StudMaritalStatus, StudBirthDate ,StudState FROM Students
--WHERE 
--	StudMaritalStatus = 'S'
--AND
--	(
--		StudBirthDate < '2000-01-01'
--		OR
--		StudState IN ('WA')
--	)

-- ###########################################################################

USE BowlingLeagueExample;
 
-- Find the ID's of all bowlers who have ever earned a raw score of 190 points or more. Remove all duplicates. Sort results by bowler ID from lowest to highest (1 column, 8 rows).

--SELECT DISTINCT BowlerID FROM Bowler_Scores
--WHERE RawScore >= 190
--ORDER BY BowlerID DESC


-- ###########################################################################

-- * Find the names of all locations that hosted a tournament after the year 2017. Remove all duplicates and sort results alphabetically (1 column, 6 rows).

-- * I have 1 column and 7 rows instead if 6, what did I do wrong?
--SELECT DISTINCT TourneyLocation FROM Tournaments
--WHERE TourneyDate > '2017-01-01'
--ORDER BY TourneyLocation ASC

-- ###########################################################################

-- * Find the first and last name and phone numbers for all bowlers whose phone number matches the pattern (xxx) 882-xxxx (3 columns, 3 rows).

-- * How do we work with phone numbers like this
--SELECT BowlerFirstName, BowlerLastName, BowlerPhoneNumber FROM Bowlers
--WHERE BowlerPhoneNumber LIKE 

-- ###########################################################################

-- Find the match ID for all matches where bowler #2 lost the first and/or second game (1 column, 9 rows).

--SELECT DISTINCT MatchID FROM Bowler_Scores
--WHERE 
--	BowlerID = 2
--AND
--	WonGame = 0
--AND
--	GameNumber <> 3

-- ###########################################################################

-- Find the match ID for all matches in which team #3 played against team #6 (1 column, 2 rows).

--SELECT * FROM Tourney_Matches
--WHERE
--	OddLaneTeamID IN (3, 6)
--AND
--	EvenLaneTeamID IN (6, 3)
