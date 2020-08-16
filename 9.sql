SELECT name FROM (SELECT DISTINCT people.name, people.id FROM
people JOIN stars ON people.id = stars.person_id JOIN
movies ON movies.id = stars.movie_id
WHERE year = 2004 ORDER BY birth);