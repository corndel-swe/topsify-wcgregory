-- query to generate all albums from the table albums
-- retrieve the name, artist_id, release_date and image_url
-- sqlite3 db/db.sqlite < queries/albums.sql > reports/albums.json
.mode json
SELECT
    albums.name,
    artists.name AS artist_name,
    albums.release_date,
    albums.image_url
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id
ORDER BY release_date DESC;
-- LIMIT 20 OFFSET 0;