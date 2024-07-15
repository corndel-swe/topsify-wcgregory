-- query to generate all artists from the table artists
-- sqlite3 db/db.sqlite < queries/artists.sql > reports/artists.json
.mode json
SELECT name, url
FROM artists
ORDER BY name;