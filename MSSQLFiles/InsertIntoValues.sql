USE KickBase;

-- Adding single quote (') or dash(-) for the date in MS SQL
-- No quote (') or dash(-) for the date in MySQL

-- TABLE Player
-- USA
INSERT INTO Player
VALUES ('Hope', 'Solo', 1, NULL, '1981-07-30'); --1000
 
INSERT INTO Player
VALUES ('Becky', 'Sauerbrunn', 4, NULL, '1985-06-06');
 
INSERT INTO Player
VALUES ('Alexandra', 'Blair Krieger', 11, NULL, '1984-08-28');
 
INSERT INTO Player
VALUES ('Julie', 'Ertz', 19, NULL, '1992-04-06');
 
INSERT INTO Player
VALUES ('Meghan', 'Klingenberg', 22, NULL, '1988-08-08');
 
INSERT INTO Player
VALUES ('Carli', 'Lloyd', 10, NULL, '1982-07-16');
 
INSERT INTO Player
VALUES ('Lauren', 'Holiday', 12, NULL, '1987-09-30');
 
INSERT INTO Player
VALUES ('Morgan', 'Paige Gautrat', 14, NULL, '1993-02-26');
 
INSERT INTO Player
VALUES ('Megan', 'Rapinoe', 15, NULL, '1985-07-05');
 
INSERT INTO Player
VALUES ('Tobin', 'Heath', 17, NULL, '1988-05-29');
 
INSERT INTO Player
VALUES ('Alex', 'Morgan', 13, NULL, '1989-07-02');
 
-- Netherlands
 
INSERT INTO Player
VALUES ('Loes', 'Geurts', 1, NULL, '1986-01-12'); --1011
 
INSERT INTO Player
VALUES ('Desiree', 'Van Lunteren', 2, NULL, '1992-08-16');
 
INSERT INTO Player
VALUES ('Stefanie', 'Van Der Gragt', 3, NULL, '1992-06-16');
 
INSERT INTO Player
VALUES ('Mandy', 'Van Den Berg', 4, NULL, '1990-08-26');
 
INSERT INTO Player
VALUES ('Merel', 'Van Dongen', 15, NULL, '1993-02-11');
 
INSERT INTO Player
VALUES ('Anouk', 'Dekker', 6, NULL, '1986-11-15');
 
INSERT INTO Player
VALUES ('Sherida', 'Spitse', 8, NULL, '1990-05-29');
 
INSERT INTO Player
VALUES ('Danielle', 'Van de Donk', 10, NULL, '1991-08-05');
 
INSERT INTO Player
VALUES ('Manon', 'Melis', 7, NULL, '1986-08-31');
 
INSERT INTO Player
VALUES ('Vivianne', 'Miedema', 9, NULL, '1996-07-15');
 
INSERT INTO Player
VALUES ('Lieke', 'Martens', 11, NULL, '1992-12-16');

-- Germany
 
INSERT INTO Player
VALUES ('Nadine', 'Angerer', 1, NULL, '1978-11-10'); --1022
 
INSERT INTO Player
VALUES ('Leonie', 'Maier', 4, NULL, '1992-09-29');
 
INSERT INTO Player
VALUES ('Annike', 'Krahn', 5, NULL, '1985-07-01');
 
INSERT INTO Player
VALUES ('Babett', 'Peter', 14, NULL, '1988-05-12');
 
INSERT INTO Player
VALUES ('Simone', 'Laudehr', 6, NULL, '1986-07-12');
 
INSERT INTO Player
VALUES ('Melanie', 'Leupolz', 16, NULL, '1994-04-14');
 
INSERT INTO Player
VALUES ('Lena', 'Goessling', 20, NULL, '1986-03-08');
 
INSERT INTO Player
VALUES ('Tabea', 'Kemme', 22, NULL, '1991-12-14');
 
INSERT INTO Player
VALUES ('Anja', 'Mittag', 11, NULL, '1985-05-16');
 
INSERT INTO Player
VALUES ('Celia', 'Sasic', 13, NULL, '1988-06-27');
 
INSERT INTO Player
VALUES ('Alexandra', 'Popp', 18, NULL, '1991-04-06');
 
 --  Japan
 
INSERT INTO Player
VALUES ('Ayumi', 'Kaihori', 18, NULL, '1986-09-04'); --1033
 
INSERT INTO Player
VALUES ('Azusa', 'Iwashimizu', 3, NULL, '1986-10-14');
 
INSERT INTO Player
VALUES ('Saki', 'Kumagai', 4, NULL, '1990-10-17');
 
INSERT INTO Player
VALUES ('Aya', 'Sameshima', 5, NULL, '1987-06-16');
 
INSERT INTO Player
VALUES ('Saori', 'Ariyoshi', 19, NULL, '1987-11-01');
 
INSERT INTO Player
VALUES ('Mizuho', 'Sakaguchi', 6, NULL, '1987-10-15');
 
INSERT INTO Player
VALUES ('Aya', 'Miyama', 8, NULL, '1985-01-28');
 
INSERT INTO Player
VALUES ('Nahomi', 'Kawasumi', 9, NULL, '1985-09-23');
 
INSERT INTO Player
VALUES ('Rumi', 'Utsugi', 13, NULL, '1988-12-05');
 
INSERT INTO Player
VALUES ('Shinobu', 'Ohno', 11, NULL, '1984-01-23');
 
INSERT INTO Player
VALUES ('Yuki', 'Nagasato', 17, NULL, '1987-07-15');

SELECT *
FROM Player;

-- TABLE Team
INSERT INTO Team 
VALUES ('USA', 'USA'); --2000

INSERT INTO Team 
VALUES ('Netherlands', 'Netherlands'); --2001

INSERT INTO Team 
VALUES ('Germany', 'Germany'); --2002

INSERT INTO Team 
VALUES ('Japan', 'Japan'); --2003

INSERT INTO Team 
VALUES ('England', 'England'); --2004

INSERT INTO Team 
VALUES ('France', 'France'); --2005

INSERT INTO Team 
VALUES ('Sweden', 'Sweden'); --2006

SELECT *
FROM Team;

-- TABLE Coach 
INSERT INTO Coach
VALUES ('Jill', 'Ellis', '1966-09-06'); -- USA 3000

INSERT INTO Coach
VALUES ('Sarina', 'Wiegman-Glotzbach', '1969-10-26'); --Netherland 3001

INSERT INTO Coach
VALUES ('Silva', 'Neid', '1964-05-02'); -- Germany 3002

INSERT INTO Coach 
VALUES ('Norio ', 'Sasaki', '1958-05-24'); --Japan 3003

INSERT INTO Coach
VALUES ('Mark', 'Sampson', '1982-10-18'); -- England 3004

INSERT INTO Coach
VALUES ('Bruno', 'Bini', '1954-10-1'); -- France 3005

INSERT INTO Coach
VALUES ('Thomas', 'Dennerby', '1959-08-13'); -- Sweden 3006

SELECT *
FROM Coach;


-- TABLE Championship
INSERT INTO Championship 
VALUES ('FIFA', 2023, '2023-07-19', '2023-08-19', null, null, null);

INSERT INTO Championship 
VALUES ('FIFA', 2019, '2019-06-07', '2019-07-06', 2000, 2001, 2006);

INSERT INTO Championship 
VALUES ('FIFA', 2015, '2015-06-06', '2015-07-04', 2000, 2003, 2004);

INSERT INTO Championship 
VALUES ('FIFA', 2011, '2011-06-26', '2011-07-16', 2003, 2000, 2006);

SELECT *
FROM Championship;


-- TABLE Sponsor
INSERT INTO Sponsor 
VALUES ('Adidas');  --4000

INSERT INTO Sponsor 
VALUES ('Coca-Cola'); --4001

INSERT INTO Sponsor 
VALUES ('Hyundai'); --4002

SELECT *
FROM Sponsor;

-- TABLE Championship_Match
INSERT INTO Championship_Match
VALUES ('FIFA', 2023, 202352, 'Austrailia NewZealand', null, null, null, null, null, null);

INSERT INTO Championship_Match
VALUES ('FIFA', 2019, 201952, 'France', '2019-07-07', '17:00:00', 2, 0, 2000, 2001);

INSERT INTO Championship_Match
VALUES ('FIFA', 2019, 201951, 'France', '2019-07-06', '17:00:00', 1, 2, 2004, 2006);

INSERT INTO Championship_Match
VALUES ('FIFA', 2015, 201552, 'Canada', '2015-07-05', '16:00:00', 5, 2, 2000, 2003);

INSERT INTO Championship_Match
VALUES ('FIFA', 2015, 201551, 'Canada', '2015-07-04', '14:00:00', 0, 1, 2002, 2004);

INSERT INTO Championship_Match
VALUES ('FIFA', 2011, 201132, 'Germany', '2011-07-17', '20:45:00', 2, 2, 2003, 2000);

INSERT INTO Championship_Match
VALUES ('FIFA', 2011, 201131, 'Germany', '2011-07-16', '08:30:00', 2, 1, 2006, 2005);
-- adding single quote (') or colon (:) for the time does not work in mySQL

SELECT *
FROM Championship_Match;

-- TABLE Player_Plays_Team
-- USA
INSERT INTO Player_Plays_Team
VALUES (1000, 2000, 'Goalkeeper');

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

-- TABLE Coach_Coaches_Team
INSERT INTO Coach_Coaches_Team 
VALUES (3000, 2000, '2014-01-01', '2019-10-01'); 

INSERT INTO Coach_Coaches_Team 
VALUES (3001, 2001, '2014-01-01', '2021-08-01'); 

INSERT INTO Coach_Coaches_Team 
VALUES (3002, 2002, '2005-01-01', '2016-09-01'); 

INSERT INTO Coach_Coaches_Team 
VALUES (3003, 2003, '2006-01-01', '2016-09-01'); 

INSERT INTO Coach_Coaches_Team 
VALUES (3004, 2004, '2013-01-01', '2017-08-01'); 

INSERT INTO Coach_Coaches_Team 
VALUES (3005, 2005, '1993-01-01', '2013-09-01'); 

INSERT INTO Coach_Coaches_Team 
VALUES (3006, 2006, '2005-01-01', '2012-09-01'); 

SELECT *
FROM Coach_Coaches_Team;

-- TABLE Sponsor_Sponsors_Team_Match
INSERT INTO Sponsor_Sponsors_Team_Match
VALUES (2000, 'FIFA', 2019, 201952, 4002, 1005000.00); 

--INSERT INTO Sponsor_Sponsors_Team_Match
--VALUES (2001, 'FIFA', 2019, 201952, 4002, 1005000.00); 

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

