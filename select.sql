SELECT track_name, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT track_name
FROM track
WHERE duration >= '3:30';

SELECT collection_name
FROM collection
WHERE c_release_year BETWEEN 2018 AND 2020;

SELECT musician_name
FROM musician
WHERE array_length(string_to_array(musician_name, ' '), 1) < 2;

SELECT track_name
FROM track
WHERE lower(track_name) LIKE '%my%'
OR lower(track_name) LIKE '%мой%';

SELECT g.genre_name, COUNT(gm.genre_id) AS count
FROM genre g 
JOIN gen_mus gm 
ON g.id = gm.genre_id 
GROUP BY g.genre_name
ORDER BY count DESC;

SELECT a.album_name, COUNT(*)
FROM album a
JOIN track t 
ON a.id = t.album_id
GROUP BY album_name;

SELECT a.album_name, AVG(EXTRACT(EPOCH FROM ('00:' || t.duration) ::time)) AS seconds
FROM album a
JOIN track t 
ON a.id = t.album_id
GROUP BY album_name;

SELECT m.musician_name
FROM musician m 
JOIN mus_alb ma ON m.id = ma.musician_id 
JOIN album a ON a.id = ma.album_id
GROUP BY m.musician_name
HAVING NOT (2020 = ANY(array_agg(a.a_release_year)));

SELECT DISTINCT c.collection_name 
FROM collection c
JOIN track_col tc ON c.id = tc.collection_id 
JOIN track t ON t.id = tc.track_id 
JOIN album a ON a.id = t.album_id 
JOIN mus_alb ma ON a.id = ma.album_id 
JOIN musician m ON m.id  = ma.musician_id 
WHERE m.musician_name = 'Black Eyed Peas';
