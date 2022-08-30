CREATE TABLE Adidas (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, size INTEGER, year INTEGER);  
INSERT INTO Adidas VALUES(1, "Shirt", 12000, "XL", 2002);
INSERT INTO Adidas VALUES(2, "Jacket", 20000,"S", 2021);
INSERT INTO Adidas VALUES(3, "Short", 8000, "M", 2022);
INSERT INTO Adidas VALUES(4, "Socks", 4000, "S", 2000);
INSERT INTO Adidas VALUES(5, "Goalkeeper gloves", 4000, "L", 2022);
INSERT INTO Adidas VALUES(6, "Shirt", 10000, "XL", 2022);
INSERT INTO Adidas VALUES(7, "Jacket", 25000,"XS", 2001);
INSERT INTO Adidas VALUES(8, "Short", 10000, "M", 2002);
INSERT INTO Adidas VALUES(9, "Socks", 3000, "M", 2022);
INSERT INTO Adidas VALUES(10, "Goalkeeper gloves", 5000, "XL", 2002);
INSERT INTO Adidas VALUES(11, "Shirt", 12000, "XL", 2002);
INSERT INTO Adidas VALUES(12, "Jacket", 20000,"S", 2021);
INSERT INTO Adidas VALUES(13, "Short", 8000, "M", 2022);
INSERT INTO Adidas VALUES(14, "Socks", 4000, "XL", 2000);
INSERT INTO Adidas VALUES(15, "Goalkeeper gloves", 4000, "L", 2022);
SELECT * FROM Adidas ORDER BY year;
SELECT * FROM Adidas ORDER BY value;
SELECT size, COUNT(size) FROM Adidas GROUP BY size;