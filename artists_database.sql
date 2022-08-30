CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);
    
INSERT INTO artists(name, country, genre)
VALUES ("Taylor Swift", "US", "Pop");
INSERT INTO artists(name, country, genre)
VALUES ("Olivia Rodrigo", "US", "Pop");
INSERT INTO artists(name, country, genre)
VALUES ("Dua Lipa", "UK", "Pop");
INSERT INTO artists(name, country, genre)
VALUES ("Jesse & Joy ", "Mexico", "Pop");
INSERT INTO artists(name, country, genre)
VALUES ("La Oreja de Van Gogh", "Spain", "Rock");

CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    artists_id INTEGER,
    qualification NUMERIC,
    mood TEXT,
    genre TEXT);
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Red", 1, 9, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("You Belong With Me", 1, 9, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Enchanted", 1, 8, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Getaway Car", 1, 8, "Calm", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("This Is Why We Can't Have Nice Things", 1, 8.5, "Frantic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Dress", 1, 8.5, "Frantic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Kimg Of My Heart",1, 8, "Frantic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Don´t Blame Me", 1, 8.8, "Frantic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Blank Space", 1, 9, "Exuberant", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("We Are Never Ever Getting Back Together", 1, 9, "Exuberant", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Lover", 1, 9, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("drivers license", 2, 10, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("traitor", 2, 9, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("brutal", 2, 10, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("happier", 2, 10, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("good 4 u", 2, 10, "Frantic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("emough for you", 2, 8, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Don´t Start Now", 3, 7, "Contentment", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Break my heart", 3, 9, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Levitating", 3, 9, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("New Rules", 3, 7.4, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("One Kiss", 3, 8.6, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Physical", 3, 8, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Love Again", 3, 8, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Be The One", 3, 9, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Dueles", 4, 9, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("¡Corre!", 4, 8.3, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Me Soltaste", 4, 7.3, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Ecos De Amor", 4, 9.3, "Frantic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Llorar", 4, 10, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("La De La Mala Suerte", 4, 9.5, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Tanto (Live Performance)", 4, 10, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("¿Con Quien Se Queda El Perro?", 4, 8.5, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("No Soy Una de Esas", 4, 8, "Contentment", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Rosas", 5, 9, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("20 de Enero", 5, 10, "Contentment", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("El Primer Dia del Resto de MI Vida", 5, 9.5, "Contentment", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Jueves", 5, 8, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Puedes Contar Conmigo", 5, 9.5, "Contentment", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Cuidate", 5, 10, "Contentment", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Dulce Locura", 5, 8, "Sad", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("Muñeca de Trapo", 5, 7, "Energetic", "Pop");
INSERT INTO songs(name, artists_id, qualification, mood, genre)
VALUES("El Último Vals", 5, 8, "Contentment", "Pop");

SELECT artists.name, songs.name, songs.mood, songs.qualification FROM artists
JOIN songs
ON artists.id = songs.artists_id
WHERE songs.mood = "Sad"
AND songs.qualification >8
ORDER BY songs.qualification desc;

SELECT songs.mood, COUNT(songs.name) AS quantity FROM artists
JOIN songs
ON artists.id = songs.artists_id
GROUP BY songs.mood
ORDER BY quantity desc;

SELECT artists.name, COUNT(artists.name) AS songs FROM artists
JOIN songs
ON artists.id = songs.artists_id
GROUP BY artists.name
ORDER BY songs desc;

SELECT artists.name, songs.name, songs.mood, songs.qualification FROM artists
JOIN songs
ON artists.id = songs.artists_id
WHERE songs.mood = "Energetic"
AND songs.qualification <=9
ORDER BY songs.qualification desc;

SELECT songs.name FROM artists
JOIN songs
ON artists.id = songs.artists_id
WHERE songs.qualification = 10
ORDER BY songs.qualification desc;

SELECT artists.name, ROUND(AVG(songs.qualification), 2) AS qualifications FROM artists
JOIN songs
ON artists.id = songs.artists_id
GROUP BY artists.name
ORDER BY qualifications desc;