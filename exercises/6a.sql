-- Create a list of all artist names
-- Include a count of how many albums they have released
-- Order your results by artist name in ascending order
-- (You should group the artists by id, not by name)
SELECT artists.name, COUNT(albums.id)
FROM albums
JOIN artists on albums.artist_id = artists.id
GROUP BY artists.id
ORDER BY artists.name;