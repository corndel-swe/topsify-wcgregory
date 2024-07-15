SELECT 
    users.username AS username,
    playlists.name playlist_name,
    tracks.name AS track_name
FROM playlist_tracks
JOIN playlists ON playlist_tracks.playlist_id = playlists.id
JOIN tracks ON playlist_tracks.track_id = tracks.id
JOIN users ON playlists.user_id = users.id
GROUP BY playlist_tracks.track_id
ORDER BY users.id, playlist_name;
-- GROUP BY playlist_tracks.playlist_id
-- ORDER BY users.id;