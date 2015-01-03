DROP TABLE ratings;
DROP TABLE movies;

CREATE TABLE movies (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(50) NOT NULL, PRIMARY KEY (id));

CREATE TABLE ratings (movie_id INT NOT NULL, rating FLOAT NOT NULL, username VARCHAR(50), FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO movies (name)
VALUES ('Batman Begins'), ('The Grand Budapest Hotel');

-- INSERT INTO ratings (movie_id, rating, username)
-- VALUES (1, 5, 't_rex'), (1, 4, 'ali_cat');

INSERT INTO ratings (movie_id, rating, username)
SELECT id, 5, 't_rex'
FROM movies
WHERE name = 'Batman Begins';

INSERT INTO ratings (movie_id, rating, username)
SELECT id, 4, 'ali_cat'
FROM movies
WHERE name = 'Batman Begins';

-- SELECT * FROM movies LEFT JOIN ratings ON (ratings.movie_id = movies.id);

SELECT * FROM movies;
SELECT * FROM ratings;