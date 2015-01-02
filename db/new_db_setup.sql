DROP TABLE movies;

CREATE TABLE movies (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(50) NOT NULL, rating FLOAT, PRIMARY KEY (id));

INSERT INTO movies (name, rating)
VALUES ('Batman Begins', 5), ('The Grand Budapest Hotel', NULL);

SELECT * from movies;