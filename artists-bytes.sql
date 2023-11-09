SELECT
    artists.Name AS ArtistName,
    albums.Title AS AlbumName,
    tracks.Name AS TrackName,
    ROUND(tracks.Bytes / 1048576, 2) || ' MB' AS MegaBytes
FROM
    artists
INNER JOIN
    albums  ON artists.ArtistId = albums.ArtistId
INNER JOIN
    tracks ON albums.AlbumId = tracks.AlbumId
WHERE
    albums.Title = 'American Idiot';

