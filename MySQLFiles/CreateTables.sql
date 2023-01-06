-- BLOB data type works for MySQL but does not work for MS SQL. (VARBINARY is used on MS SQL instead.)
-- AUTO_INCREMENT is used in MySQL but does not work for MS SQL. (IDENTIFY is used on MS SQL instead.)
-- To set up AUTO_INCREMENT, ALTER TABLE table_name is used to set up the initial value. 

CREATE DATABASE KickBase;

USE KickBase;

CREATE TABLE Player (
PlayerID INT AUTO_INCREMENT, 
FName VARCHAR(50) NOT NULL,
LName VARCHAR(50) NOT NULL,
ShirtNumber NUMERIC(2),
Picture	BLOB, 
DoB DATE,
PRIMARY KEY (PlayerID)
);

ALTER TABLE Player AUTO_INCREMENT=1000;

CREATE TABLE Team (
TeamID INT AUTO_INCREMENT,
TeamName VARCHAR(20),
HomeLocation VARCHAR(20),
PRIMARY KEY (TeamID)
);

ALTER TABLE Team AUTO_INCREMENT=2000;

CREATE TABLE Coach(
CoachID INT AUTO_INCREMENT,
FName VARCHAR(50) NOT NULL,
LName VARCHAR(50) NOT NULL,
DoB DATE,
PRIMARY KEY (CoachID)
);

ALTER TABLE Coach AUTO_INCREMENT=3000;

CREATE TABLE Championship (
Competition VARCHAR(20),
chYear INT,
StartDate DATE,
EndDate DATE,
TeamID_1stPlace INT, 
TeamID_2ndPlace INT, 
TeamID_3rdPlace INT,
PRIMARY KEY (Competition, chYear),
FOREIGN KEY (TeamID_1stPlace) REFERENCES Team(TeamID),
FOREIGN KEY (TeamID_2ndPlace) REFERENCES Team(TeamID),
FOREIGN KEY (TeamID_3rdPlace) REFERENCES Team(TeamID)
);

CREATE TABLE Sponsor (
SponsorID INT AUTO_INCREMENT,
CompanyName VARCHAR(20),
PRIMARY KEY(SponsorID)
);

ALTER TABLE Sponsor AUTO_INCREMENT=4000;

CREATE TABLE Championship_Match(
Competition VARCHAR(20),
chYear INT,
MatchID INT,
cmLocation VARCHAR(20),
cmDate DATE,
cmTime TIME, 
Team1_NumberOfGoals INT, 
Team2_NumberOfGoals INT, 
Team1ID INT,
Team2ID INT,
PRIMARY KEY (Competition, chYear, MatchID),
FOREIGN KEY (Competition, chYear) REFERENCES Championship(Competition, chYear) ON DELETE CASCADE,
FOREIGN KEY (Team1ID)  REFERENCES Team(TeamID),
FOREIGN KEY (Team2ID)  REFERENCES Team(TeamID)
);

CREATE TABLE Player_Plays_Team(
PlayerID INT,
TeamID INT, 
pRole VARCHAR(20),
PRIMARY KEY (PlayerID, TeamID),
FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
FOREIGN KEY (TeamID) REFERENCES Team(TeamID) ON DELETE CASCADE
);

CREATE TABLE Coach_Coaches_Team(
CoachID INT, 
TeamID INT, 
StartDate DATE, 
EndDate DATE,
PRIMARY KEY (CoachID, TeamID),
FOREIGN KEY (CoachID) REFERENCES Coach(CoachID),
FOREIGN KEY (TeamID) REFERENCES Team(TeamID) ON DELETE CASCADE
);

CREATE TABLE Sponsor_Sponsors_Team_Match (
TeamID INT,
Competition VARCHAR(20),
chYear INT,
MatchID INT,
SponsorID INT,
Amount NUMERIC(10, 2),
PRIMARY KEY(TeamID,Competition, chYear, MatchID, SponsorID),
FOREIGN KEY (TeamID)  REFERENCES Team(TeamID) ON DELETE CASCADE,
FOREIGN KEY (Competition, chYear, MatchID) REFERENCES Championship_Match(Competition, chYear, MatchID) ON DELETE CASCADE,
FOREIGN KEY (SponsorID) REFERENCES Sponsor(SponsorID)ON DELETE CASCADE
);
