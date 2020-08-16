SELECT DISTINCT title FROM
(SELECT title FROM movies JOIN stars ON movies.id = stars.movie_id
JOIN people ON stars.person_id = people.id
WHERE name = "Johnny Depp")
NATURAL JOIN
(SELECT title FROM movies JOIN stars ON movies.id = stars.movie_id
JOIN people ON stars.person_id = people.id
WHERE name = "Helena Bonham Carter");



-- SELECT title FROM movies
-- JOIN (SELECT * FROM stars JOIN people ON stars.person_id = people.id WHERE people.name = "Johnny Depp") AS johnny ON johnny.movie_id = movies.id
-- JOIN (SELECT * FROM stars JOIN people ON stars.person_id = people.id WHERE people.name = "Helena Bonham Carter") AS helena ON helena.movie_id = movies.id;