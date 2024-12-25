--Данные:

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(50)
	);

CREATE TABLE IF NOT EXISTS Musician (
	id SERIAL PRIMARY KEY,
	musician_name VARCHAR(80)
	);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(60),
	a_release_year INTEGER
	);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(60),
	album_id INTEGER REFERENCES Album(id),
	duration INTEGER
	);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60),
	c_release_year INTEGER
	);
--Связи таблиц с данными:

CREATE TABLE IF NOT EXISTS Gen_mus (
	genre_id INTEGER REFERENCES Genre(id),
	musician_id INTEGER REFERENCES Musician(id)
	);

CREATE TABLE IF NOT EXISTS mus_alb (
	musician_id INTEGER REFERENCES Musician(id),
	album_id INTEGER REFERENCES Album(id)
	);
	
CREATE TABLE IF NOT EXISTS track_col (
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id)
	);