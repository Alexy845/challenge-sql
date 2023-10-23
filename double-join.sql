SELECT DISTINCT tracks.Name AS TrackName, playlists.Name AS PlayListName
FROM playlist_track
INNER JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId
INNER JOIN tracks ON playlist_track.TrackId = tracks.TrackId
WHERE PlayListName = 'TV Shows'
LIMIT 100;