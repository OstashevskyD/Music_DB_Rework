create table if not EXISTS Genre (
	Genre_id SERIAL primary key,
	Genre_name VARCHAR(60)
);

create table if not EXISTS Artists (
	Artist_id SERIAL primary key,
	Artist_name VARCHAR(80)
);

create table if not EXISTS GenreArtist (
	Genre_id INTEGER references Genre(Genre_id),
	Artist_id INTEGER references Artists(Artist_id),
	constraint pk primary key (Genre_id, Artist_id)
);

create table if not EXISTS Album (
	Album_id SERIAL primary key,
	Album_name VARCHAR(80),
	Album_year INTEGER
);

create table if not EXISTS ArtistsAlbum (
	Artist_id INTEGER references Artists(Artist_id),
	Album_id INTEGER references Album(Album_id),
	constraint pk2 primary key (Artist_id, Album_id)
);

create table if not EXISTS Song (
	Song_id SERIAL primary key,
	Song_name VARCHAR(80),
	Song_duration time,
	Album_id INTEGER not NULL references Album(Album_id)
);

create table if not EXISTS Compilation (
	Compilation_id SERIAL primary key,
	Compilation_name VARCHAR(80),
	Compilation_year INTEGER
);

create table if not EXISTS SongCompilation (
	Song_id INTEGER references Song(Song_id),
	Compilation_id INTEGER references Compilation(Compilation_id),
	constraint pk3 primary key (Song_id, Compilation_id)
);



