INSERT INTO Genre(Genre_name) values
	('Rock'),
	('Jazz'),
	('Hip-Hop'),
	('Pop'),
	('Indie');

INSERT INTO Genre(Genre_name) 
VALUES('Blues');


INSERT INTO Artists(Artist_name) values
	('Pink Floyd'),
	('The Beatles'),
	('Miles Davis'),
	('Art Blakey'),
	('Nas'),
	('Drake'),
	('Dua Lipa'),
	('Gorillaz'),
	('Muddy Waters');

INSERT INTO GenreArtist(Genre_id, Artist_id) values
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(3, 6),
	(4, 7),
	(5, 8),
	(6, 9);

INSERT INTO Album(Album_name, Album_year) values
	('The Wall', 1979),
	('Help', 1965),
	('My Old Flame', 2023),
	('The Big Beat', 2017),
	('Stillmatic', 2001),
	('Scorpion', 2018),
	('Future Nostalgia', 2020),
	('Humanz', 2017),
	('One Dance Live', 2016),
	('King Bee', 1981);

INSERT INTO ArtistsAlbum(Artist_id, Album_id) values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(7, 9),
	(6, 9),
	(9, 10);

INSERT INTO Song(Song_name, Song_duration, Album_id) values
	('Mother', '00:05:35', 1),
	('Hey You ', '00:04:41', 1),
	('Help', '00:02:20', 2),
	('Another Girl', '00:02:06', 2),
	('Cheryl', '00:03:04', 3),
	('Boplicity', '00:03:02', 3),
	('Politely', '00:06:03', 4),
	('Dat dere', '00:08:45', 4),
	('Ether', '00:04:37', 5),
	('Rewind', '00:02:13', 5),
	('Peak', '00:03:27', 6),
	('Jaded', '00:04:23', 6),
	('Cool', '00:03:30', 7),
	('Fever', '00:02:37', 7),
	('Momentz', '00:03:16', 8),
	('Charger', '00:03:34', 8),
	('One Dance', '00:03:19', 9),
	('Too Young to Know', '00:04:31', 10);

INSERT INTO Compilation(Compilation_name, Compilation_year) values
	('H Rock', 1980),
	('All Jazz', 2023),
	('Black Rap', 2022),
	('2017 Music', 2017),
	('Old School Rock', 2010),
	('P Songs', 2023),
	('C Songs', 2023),
	('M Songs', 2018);

INSERT INTO SongCompilation(Song_id, Compilation_id) values
	(2, 1),
	(3, 1),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(10, 3),
	(12, 3),
	(8, 4),
	(15, 4),
	(1, 5),
	(4, 5),
	(7, 6),
	(11, 6),
	(5, 7),
	(13, 7),
	(16, 7),
	(1, 8),
	(15, 8);

	


	



	