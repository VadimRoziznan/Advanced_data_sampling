-- CREATE TABLES --

CREATE TABLE IF NOT EXISTS ganre(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(40) NOT NULL
);

ALTER TABLE artist ADD UNIQUE (name);

ALTER TABLE ganre rename to genre;

CREATE TABLE IF NOT EXISTS genreartist(
	genre_id INTEGER REFERENCES genre(id), 
	artist_id INTEGER REFERENCES artist(id), 
	CONSTRAINT ga PRIMARY KEY(genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(40) UNIQUE NOT NULL, 
	year INTEGER CHECK(year > 1900) NOT NULL
);

CREATE TABLE IF NOT EXISTS artistalbum(
	album_id INTEGER REFERENCES album(id), 
	artist_id INTEGER REFERENCES artist(id), 
	CONSTRAINT aa PRIMARY KEY(album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS track(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(99) UNIQUE NOT NULL, 
	duration INTEGER check(duration < 15) NOT NULL, 
	album_id INTEGER NOT NULL REFERENCES album(id)
);

create table if not exists collection(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(40) unique not null, 
	year INTEGER check(year > 1900) not null
);

CREATE TABLE IF NOT EXISTS albumtrack(
	collection_id INTEGER REFERENCES collection(id), 
	track_id INTEGER REFERENCES track(id), 
	CONSTRAINT at PRIMARY KEY(collection_id, track_id)
);