/* Marvel Heroes and Villains
 Based on the website http://marvel.wikia.com/Main_Page
 with popularity data from http://observationdeck.io9.com/something-i-found-marvel-character-popularity-poll-cb-1568108064 
 and power grid data from http://marvel.wikia.com/Power_Grid#Power
 Collected by: https://www.khanacademy.org/profile/Mentrasto/
 */

CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m NUMERIC,
    weight_kg NUMERIC,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER);
    
INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4); 
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4); 
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 1, 7, 3, 7, 5, 4); 
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7);
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 2, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3);
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4);
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3);
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4);
INSERT INTO marvels VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4);
INSERT INTO marvels VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7);
INSERT INTO marvels VALUES(13, "Storm", 2, "Good", "Female", 1.80, 66, "Kenya", 2, 2, 3, 2, 5, 4);
INSERT INTO marvels VALUES(14, "Nightcrawler", 6, "Good", "Male", 1.75, 73, "Germany", 3, 2, 7, 2, 1, 3);
INSERT INTO marvels VALUES(15, "Gambit", 7, "Good", "Male", 1.88, 81, "EUA", 2, 2, 2, 2, 2, 4);
INSERT INTO marvels VALUES(16, "Captain America", 9, "Good", "Male", 1.88, 108, "EUA", 3, 3, 2, 3, 1, 6);
INSERT INTO marvels VALUES(17, "Cyclops", 10, "Good", "Male", 1.90, 88, "EUA", 3, 2, 2, 2, 5, 4);
INSERT INTO marvels VALUES(18, "Emma Frost", 12, "Neutral", "Female", 1.78, 65, "EUA", 4, 4, 2, 5, 5, 3);
INSERT INTO marvels VALUES(19, "Kitty Pryde", 13, "Good", "Female", 1.68, 50, "EUA", 4, 2, 2, 3, 1, 5);
INSERT INTO marvels VALUES(20, "Daredevil", 14, "Good", "Male", 1.83, 91, "EUA", 3, 3, 2, 2, 4, 5);
INSERT INTO marvels VALUES(21, "Punisher", 50, "Neutral", "Male", 1.85, 91, "EUA", 3, 3, 2, 2, 1, 6);
INSERT INTO marvels VALUES(22, "Silver Surfer", 33, "Good", "Male", 1.93, 102, "Zenn-La", 3, 7, 7, 6, 7, 2);
INSERT INTO marvels VALUES(23, "Ghost Rider", 86, "Good", "Male", 1.88, 99, "EUA", 2, 4, 3, 5, 4, 2);
INSERT INTO marvels VALUES(24, "Venon", 78, "Neutral", "Male", 1.90, 118, "EUA", 3, 4, 2, 6, 1, 4);
INSERT INTO marvels VALUES(25, "Juggernaut", 76, "Neutral", "Male", 2.87, 862, "EUA", 2, 7, 2, 7, 1, 4);
INSERT INTO marvels VALUES(26, "Professor X", 58, "Good", "Male", 1.83, 86, "EUA", 5, 2, 2, 2, 5, 3);

SELECT name, MAX(popularity) FROM marvels;
SELECT name, MAX(height_m) FROM marvels;
SELECT name, MAX(weight_kg) FROM marvels;
SELECT name, MAX(intelligence) FROM marvels;
SELECT name, MAX(strength) FROM marvels;
SELECT name, MAX(speed) FROM marvels;
SELECT name, MAX(durability) FROM marvels;
SELECT name, MAX(energy_Projection) FROM marvels;
SELECT name, MAX(fighting_Skills) FROM marvels;

SELECT name, MIN(popularity) FROM marvels;
SELECT name, MIN(height_m) FROM marvels;
SELECT name, MIN(weight_kg) FROM marvels;
SELECT name, MIN(intelligence) FROM marvels;
SELECT name, MIN(strength) FROM marvels;
SELECT name, MIN(speed) FROM marvels;
SELECT name, MIN(durability) FROM marvels;
SELECT name, MIN(energy_Projection) FROM marvels;
SELECT name, MIN(fighting_Skills) FROM marvels;
 
SELECT ROUND(AVG(popularity)) AS fanatism FROM marvels;
SELECT ROUND(AVG(height_m)) AS stature FROM marvels;
SELECT ROUND(AVG(weight_kg)) AS mass FROM marvels;
SELECT ROUND(AVG(intelligence)) AS intellect FROM marvels;
SELECT ROUND(AVG(strength)) AS force FROM marvels;
SELECT ROUND(AVG(speed)) AS  velocity FROM marvels;
SELECT ROUND(AVG(durability)) AS toughness FROM marvels;
SELECT ROUND(AVG(energy_Projection)) AS vital_power FROM marvels;
SELECT ROUND(AVG(fighting_Skills)) AS combative FROM marvels;

 SELECT gender, COUNT(gender) AS gender,
ROUND(AVG(intelligence)) AS intellect,  
ROUND(AVG(popularity)) AS fanatism,
ROUND(AVG(strength)) AS force,
ROUND(AVG(speed)) AS velocity,
ROUND(AVG(durability)) AS toughness,
ROUND(AVG(energy_Projection)) AS vital_power,
ROUND(AVG(fighting_Skills)) AS combative
 FROM marvels GROUP BY gender;

 SELECT alignment, COUNT(alignment) AS amount,
ROUND(AVG(intelligence), 2) AS intellect,
ROUND(AVG(popularity), 2) AS fanatism,
ROUND(AVG(strength), 2) AS force,
ROUND(AVG(speed), 2) AS velocity,
ROUND(AVG(durability), 2) AS toughness,
ROUND(AVG(energy_Projection), 2) AS vital_power,
ROUND(AVG(fighting_Skills), 2) AS combative
 FROM marvels GROUP BY alignment;
 
  SELECT hometown, COUNT(hometown) AS citizens,
ROUND(AVG(intelligence)) AS intellect,
ROUND(AVG(popularity)) AS fanatism,
ROUND(AVG(strength)) AS force,
ROUND(AVG(speed)) AS velocity,
ROUND(AVG(durability)) AS toughness,
ROUND(AVG(energy_Projection)) AS vital_power,
ROUND(AVG(fighting_Skills)) AS combative
 FROM marvels GROUP BY hometown ORDER BY citizens DESC;
 
 SELECT name FROM marvels WHERE height_m > 2.0 AND alignment = "Neutral";
 
SELECT name, AVG(height_m) AS avg_height FROM marvels GROUP BY name HAVING avg_height > 1.6;
 
 SELECT name, SUM(height_m) AS total_height FROM marvels GROUP BY name HAVING total_height > 1.8
 ORDER BY total_height desc;
 
 SELECT name, weight_kg FROM marvels WHERE weight_kg > 100
 ORDER BY weight_kg desc;

SELECT name FROM marvels WHERE alignment = "Good";




