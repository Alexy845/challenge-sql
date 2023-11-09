SELECT *
FROM tracks
WHERE GenreId IN (
    SELECT GenreId
    FROM genres
    WHERE genres.Name = tracks.Name
);
