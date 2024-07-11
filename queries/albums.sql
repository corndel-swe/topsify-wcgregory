-- query to generate all artists from the table artists
-- sqlite3 db/db.sqlite < queries/albums.sql > reports/albums.json
.mode json
SELECT name
FROM albums;