-- album characteristics by artists
.mode json
SELECT 
    artists.name AS artist_name,
    albums.name AS album_name,
    AVG(danceability) AS average_danceability,
    AVG(energy) AS average_energy,
    AVG(speechiness) AS average_speechiness,
    AVG(acousticness) AS average_acousticness,
    AVG(liveness) AS average_liveness
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id
INNER JOIN tracks ON albums.id = tracks.album_id
INNER JOIN features ON tracks.id = features.track_id
GROUP BY albums.id
ORDER BY artists.name
-- ORDER BY average_danceability DESC;