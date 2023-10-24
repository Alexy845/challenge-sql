SELECT
    genres.Name,
    COUNT(tracks.TrackId) AS NumberOfTracks
FROM
    genres
JOIN
    Tracks ON genres.GenreId = tracks.GenreId
GROUP BY
    genres.Name;
