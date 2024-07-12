-- explicit tracks by artists
.mode json
SELECT artists.name AS artist_name, COUNT(tracks.id) AS explicit_track_count
FROM tracks
INNER JOIN albums ON tracks.album_id = albums.id
INNER JOIN artists ON albums.artist_id = artists.id
WHERE tracks.explicit = true
GROUP BY artists.id
ORDER BY explicit_track_count;