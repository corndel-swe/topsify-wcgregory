-- query to generate all tracks from the table tracks
-- retrieve all fields
-- sqlite3 db/db.sqlite < queries/tracks.sql > reports/tracks.json
.mode json
SELECT tracks.name, albums.name AS album_name, tracks.explicit, tracks.preview_url, 
    tracks.disc_number, tracks.track_number, tracks.duration_ms
FROM tracks
INNER JOIN albums ON tracks.album_id = albums.id
INNER JOIN artists ON albums.artist_id = artists.id
ORDER BY albums.release_date DESC;