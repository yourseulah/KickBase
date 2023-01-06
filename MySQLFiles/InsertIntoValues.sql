-- Adding single quote (') or dash(-) for the cmDate format does not work in MySQL, however, it does work in MS SQL.
-- Adding single quote (') or colon (:) for the cmTime format does not work in MySQL, however, it does work in MS SQL.

-- Player Insert Values
-- USA 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Hope', 'Solo', 1, NULL, 19810730); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Becky', 'Sauerbrunn', 4, NULL, 19850606); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Alexandra', 'Blair Krieger', 11, NULL, 19840828); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Julie', 'Ertz', 19, NULL, 19920406); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Meghan', 'Klingenberg', 22, NULL, 19880808); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Carli', 'Lloyd', 10, NULL, 19820716); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Lauren', 'Holiday', 12, NULL, 19870930); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Morgan', 'Paige Gautrat', 14, NULL, 19930226); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Megan', 'Rapinoe', 15, NULL, 19850705); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Tobin', 'Heath', 17, NULL, 19880529); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Alex', 'Morgan', 13, NULL, 19890702); 

-- Netherlands

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Loes', 'Geurts', 1, NULL, 19860112); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Desiree', 'Van Lunteren', 2, NULL, 19920816); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Stefanie', 'Van Der Gragt', 3, NULL, 19920616); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Mandy', 'Van Den Berg', 4, NULL, 19900826); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Merel', 'Van Dongen', 15, NULL, 19930211); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Anouk', 'Dekker', 6, NULL, 19861115); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Sherida', 'Spitse', 8, NULL, 19900529); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Danielle', 'Van de Donk', 10, NULL, 19910805); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Manon', 'Melis', 7, NULL, 19860831); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Vivianne', 'Miedema', 9, NULL, 19960715); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Lieke', 'Martens', 11, NULL, 19921216); 

-- Germany 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Nadine', 'Angerer', 1, NULL, 19781110); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Leonie', 'Maier', 4, NULL, 19920929); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Annike', 'Krahn', 5, NULL, 19850701); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Babett', 'Peter', 14, NULL, 19880512); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Simone', 'Laudehr', 6, NULL, 19860712); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Melanie', 'Leupolz', 16, NULL, 19940414); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Lena', 'Goessling', 20, NULL, 19860308); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Tabea', 'Kemme', 22, NULL, 19911214); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Anja', 'Mittag', 11, NULL, 19850516); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Celia', 'Sasic', 13, NULL, 19880627);

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Alexandra', 'Popp', 18, NULL, 19910406);

--  Japan 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Ayumi', 'Kaihori', 18, NULL, 19860904); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Azusa', 'Iwashimizu', 3, NULL, 19861014); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Saki', 'Kumagai', 4, NULL, 19901017); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Aya', 'Sameshima', 5, NULL, 19870616); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Saori', 'Ariyoshi', 19, NULL, 19871101); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Mizuho', 'Sakaguchi', 6, NULL, 19871015); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Aya', 'Miyama', 8, NULL, 19850128); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Nahomi', 'Kawasumi', 9, NULL, 19850923); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Rumi', 'Utsugi', 13, NULL, 19881205); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Shinobu', 'Ohno', 11, NULL, 19840123); 

INSERT INTO Player (FName, LName, ShirtNumber, Picture, DoB)
VALUES ('Yuki', 'Nagasato', 17, NULL, 19870715); 

SELECT *
FROM Player;

-- Team Insert Values

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('USA', 'USA'); 

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('Netherlands', 'Netherlands');

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('Germany', 'Germany');

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('Japan', 'Japan');

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('England', 'England');

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('France', 'France');

INSERT INTO Team (TeamName, HomeLocation)
VALUES ('Sweden', 'Sweden'); 

SELECT *
FROM Team;

-- Coach Insert Values

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Jill', 'Ellis', 19660906); 

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Sarina', 'Wiegman-Glotzbach', 19691026); 

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Silva', 'Neid', 19640502);

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Norio ', 'Sasaki', 19580524); 

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Mark', 'Sampson', 19821018); 

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Bruno', 'Bini', 19541001);

INSERT INTO Coach (FName, LName, DoB)
VALUES ('Thomas', 'Dennerby', 19590813); 

SELECT *
FROM Coach;

-- Championship Insert Values

INSERT INTO Championship 
VALUES ('FIFA', 2023, 20230719, 20230819, null, null, null);

INSERT INTO Championship 
VALUES ('FIFA', 2019, 20190607, 20190706, 2000, 2001, 2006);

INSERT INTO Championship 
VALUES ('FIFA', 2015, 20150606, 20150704, 2000, 2003, 2004);

INSERT INTO Championship 
VALUES ('FIFA', 2011, 20110626, 20110716, 2003, 2000, 2006);

SELECT *
FROM Championship;


-- Sponsor Insert Values

INSERT INTO Sponsor (CompanyName)
VALUES ('Adidas'); 

INSERT INTO Sponsor (CompanyName)
VALUES ('Coca-Cola'); 

INSERT INTO Sponsor (CompanyName)
VALUES ('Hyundai'); 

SELECT *
FROM Sponsor;

-- Championship Match Insert Values

INSERT INTO Championship_Match
VALUES ('FIFA', 2023, 202352, 'Australia NewZealand', null, null, null, null, null, null);

INSERT INTO Championship_Match
VALUES ('FIFA', 2019, 201952, 'France', 20190707, 170000, 2, 0, 2000, 2001);

INSERT INTO Championship_Match
VALUES ('FIFA', 2019, 201951, 'France', 20190706, 170000, 1, 2, 2004, 2006);

INSERT INTO Championship_Match
VALUES ('FIFA', 2015, 201552, 'Canada', 20150705, 160000, 5, 2, 2000, 2003);

INSERT INTO Championship_Match
VALUES ('FIFA', 2015, 201551, 'Canada', 20150704, 140000, 0, 1, 2002, 2004);

INSERT INTO Championship_Match
VALUES ('FIFA', 2011, 201132, 'Germany', 20110717, 204500, 2, 2, 2003, 2000);

INSERT INTO Championship_Match
VALUES ('FIFA', 2011, 201131, 'Germany', 20110716, 083000, 2, 1, 2006, 2005);

SELECT *
FROM Championship_Match;

-- Player Plays Team Insert Values

-- USA
INSERT INTO Player_Plays_Team
VALUES (1000, 2000, 'goalkeeper');

INSERT INTO Player_Plays_Team
VALUES (1001, 2000, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1002, 2000, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1003, 2000, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1004, 2000, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1005, 2000, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1006, 2000, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1007, 2000, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1008, 2000, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1009, 2000, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1010, 2000, 'forward');

-- Netherlands

INSERT INTO Player_Plays_Team
VALUES (1011, 2001, 'goalkeeper');

INSERT INTO Player_Plays_Team
VALUES (1012, 2001, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1013, 2001, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1014, 2001, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1015, 2001, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1016, 2001, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1017, 2001, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1018, 2001, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1019, 2001, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1020, 2001, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1021, 2001, 'forward');

-- Germany

INSERT INTO Player_Plays_Team
VALUES (1022, 2002, 'goalkeeper');

INSERT INTO Player_Plays_Team
VALUES (1023, 2002, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1024, 2002, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1025, 2002, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1026, 2002, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1027, 2002, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1028, 2002, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1029, 2002, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1030, 2002, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1031, 2002, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1032, 2002, 'forward');

-- Japan

INSERT INTO Player_Plays_Team
VALUES (1033, 2003, 'goalkeeper');

INSERT INTO Player_Plays_Team
VALUES (1034, 2003, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1035, 2003, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1036, 2003, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1037, 2003, 'defender');

INSERT INTO Player_Plays_Team
VALUES (1038, 2003, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1039, 2003, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1040, 2003, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1041, 2003, 'midfielder');

INSERT INTO Player_Plays_Team
VALUES (1042, 2003, 'forward');

INSERT INTO Player_Plays_Team
VALUES (1043, 2003, 'forward');

SELECT *
FROM Player_Plays_Team;


-- Coach_Coaches_Team Insert Values
INSERT INTO Coach_Coaches_Team 
VALUES (3000, 2000, 20140101, 20191001); 

INSERT INTO Coach_Coaches_Team 
VALUES (3001, 2001, 20140101, 20210801); 

INSERT INTO Coach_Coaches_Team 
VALUES (3002, 2002, 20050101, 20160901); 

INSERT INTO Coach_Coaches_Team 
VALUES (3003, 2003, 20060101, 20160901); 

INSERT INTO Coach_Coaches_Team 
VALUES (3004, 2004, 20130101, 20170801); 

INSERT INTO Coach_Coaches_Team 
VALUES (3005, 2005, 19930101, 20130901); 

INSERT INTO Coach_Coaches_Team 
VALUES (3006, 2006, 20050101, 20120901); 

SELECT *
FROM Coach_Coaches_Team;

-- Sponsor Sponsors Team Match Insert Values 

INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2000, 'FIFA', 2019, 201952, 4002, 1005000.00); 

INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2001, 'FIFA', 2019, 201952, 4002, 1005000.00); 

INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2000, 'FIFA', 2015, 201552, 4001, 1250000.00); 

INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2003, 'FIFA', 2015, 201552, 4001, 250000.00); 

INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2003, 'FIFA', 2011, 201132, 4000, 1000000.00); 

INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2000, 'FIFA', 2011, 201132, 4000, 50000.00); 

SELECT *
FROM Sponsor_Sponsors_Team_Match;
