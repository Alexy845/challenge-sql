SELECT albums.Title AS AlbumName, tracks.Name AS TrackName, Milliseconds
FROM albums
JOIN tracks ON albums.AlbumId = tracks.AlbumId
ORDER BY Milliseconds ASC
LIMIT 50