-- album loudness over time
.mode json
SELECT 
    albums.name AS album_name,
    AVG(features.loudness) AS average_loudness,
    albums.release_date
FROM albums
-- INNER JOIN artists ON albums.artist_id = artists.id
INNER JOIN tracks ON albums.id = tracks.album_id
INNER JOIN features ON tracks.id = features.track_id
GROUP BY albums.id
ORDER BY average_loudness
-- ORDER BY average_danceability DESC;