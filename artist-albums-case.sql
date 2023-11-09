SELECT
    artists.Name,
    COUNT(DISTINCT albums.AlbumId) AS NbAlbums,
    CASE
        WHEN COUNT(DISTINCT albums.AlbumId) = 1 THEN 'Unproductive'
        WHEN COUNT(DISTINCT albums.AlbumId) > 1 AND COUNT(DISTINCT albums.AlbumId) < 10 THEN 'Productive'
        WHEN COUNT(DISTINCT albums.AlbumId) >= 10 THEN 'Very Productive'
    END AS IsProductive
FROM
    artists
JOIN
    albums ON artists.ArtistId = albums.ArtistId
GROUP BY
    artists.ArtistId, artists.Name
ORDER BY
    artists.ArtistId
LIMIT 100;
