SELECT
    genres.Name AS Genre,
    COUNT(TrackId) AS NumberOfTracks
FROM
    Genres
JOIN
    Tracks  ON tracks.GenreId = genres.GenreId
GROUP BY
    Genre;
