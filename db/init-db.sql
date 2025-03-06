-- CREATE imdb_movies TABLE
DROP TABLE IF EXISTS imdb_movies;
CREATE TABLE imdb_movies (
    id SERIAL PRIMARY KEY,
    names VARCHAR NOT NULL,
    release_date VARCHAR,
    score NUMERIC,
    genre VARCHAR,
    overview VARCHAR,
    crew VARCHAR,
    orig_title VARCHAR,
    release_status VARCHAR,
    orig_lang VARCHAR,
    budget NUMERIC,
    revenue NUMERIC,
    country VARCHAR
);

-- CREATE users TABLE
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    dob VARCHAR
);

-- CREATE oscar_winning_films TABLE
DROP TABLE IF EXISTS oscar_winning_films;
CREATE TABLE oscar_winning_films (
    id SERIAL PRIMARY KEY,
    num SMALLINT,
    film VARCHAR NOT NULL,
    release_year SMALLINT,
    awards SMALLINT,
    nominations SMALLINT
);

-- COPY imdb_movies TABLE FROM imbd_movies.csv
COPY imdb_movies(names, release_date, score, genre, overview, crew, orig_title, release_status, orig_lang, budget, revenue, country)
FROM '/app/datasets/imdb_movies.csv'
DELIMITER ','
CSV HEADER;

-- COPY users TABLE FROM users.csv
COPY users(first_name, last_name, email, dob)
FROM '/app/datasets/users.csv'
DELIMITER ','
CSV HEADER;

-- COPY oscar_winning_films TABLE FROM oscar_winning_films_1927_to_2022.csv
COPY oscar_winning_films(num, film, release_year, awards, nominations)
FROM '/app/datasets/oscar_winning_films_1927_to_2022.csv'
DELIMITER ','
CSV HEADER;