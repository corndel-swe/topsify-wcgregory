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
INSERT INTO playlists (user_id, name)
VALUES
    (9, 'myPlaylist'),
    (9, 'myPlaylist2'),
    (101, 'myPlaylist'),
    (86, 'dancingBeats');
INSERT INTO playlist_tracks (playlist_id, track_id)
VALUES
    (1, '3ZCBSFcZSRM9Z48ew28Zrf'),
    (1, '4mt7C6wYeTUWDDk7xKym9w'),
    (2, '4mt7C6wYeTUWDDk7xKym9w'),
    (2, '71OvX5NNLrmz7rpq1ANTQn'),
    (2, '2DSy4HfDQoBsPPcRSoeM16'),
    (3, '6F0baA5t58AtAS9uFVe4su'),
    (4, '1Oc6LH83W9huJq6u4ZcWIH'),
    (4, '4HBDccZgvC769vqQ2QHjji'),
    (4, '2DSy4HfDQoBsPPcRSoeM16');