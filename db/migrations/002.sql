-- create two new tables for playlists and playlist_tracks.
-- use the table schema below.
--
--  playlists {
--      integer id PK "Primary Key"
--      integer user_id FK "Foreign Key"
--      text name
--  }
--
--  playlist_tracks {
--      integer playlist_id FK "Foreign Key"
--      text track_id FK "Foreign Key"
--  }

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  name TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS playlist_tracks;
CREATE TABLE playlist_tracks (
  playlist_id INTEGER REFERENCES playlists(id) ON DELETE CASCADE,
  track_id INTEGER REFERENCES tracks(id) ON DELETE CASCADE,
  PRIMARY KEY (playlist_id, track_id)
);