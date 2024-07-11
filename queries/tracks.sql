-- query to generate all tracks from the table tracks
-- retrieve all fields
-- sqlite3 db/db.sqlite < queries/tracks.sql > reports/tracks.json
.mode json
SELECT tracks.name, tracks.album_id, tracks.explicit, tracks.preview_url, tracks.disc_number,
    tracks.track_number, tracks.duration_ms
FROM tracks
INNER JOIN albums ON tracks.album_id = albums.id
ORDER BY albums.release_date DESC
LIMIT 50;