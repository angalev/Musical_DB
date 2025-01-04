--Данные:

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(50) UNIQUE
	);

CREATE TABLE IF NOT EXISTS Musician (
	id SERIAL PRIMARY KEY,
	musician_name VARCHAR(80) UNIQUE
	);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(60) UNIQUE,
	a_release_year INTEGER CHECK(
		a_release_year BETWEEN 1900 
		AND date_part('year', CURRENT_DATE))
	);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(60) UNIQUE,
	album_id INTEGER REFERENCES Album(id),
	duration varchar(5)
	);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60) UNIQUE,
	c_release_year INTEGER CHECK(
		c_release_year BETWEEN 1900 
		AND date_part('year', CURRENT_DATE))
	);
--Связи таблиц с данными:

CREATE TABLE IF NOT EXISTS Gen_mus (
	genre_id INTEGER REFERENCES Genre(id),
	musician_id INTEGER REFERENCES Musician(id),
	UNIQUE (genre_id, musician_id)
	);

CREATE TABLE IF NOT EXISTS mus_alb (
	musician_id INTEGER REFERENCES Musician(id),
	album_id INTEGER REFERENCES Album(id),
	UNIQUE (musician_id, album_id)
	);
	
CREATE TABLE IF NOT EXISTS track_col (
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	UNIQUE (track_id, collection_id)
	);