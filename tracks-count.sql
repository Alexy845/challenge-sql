SELECT
    genres.Name AS Genre,
    COUNT(TrackId) AS NumberOfTracks
FROM
    Genres
JOIN
    Tracks  ON genres.GenreId = tracks.GenreId
GROUP BY
    Genre;
