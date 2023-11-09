SELECT *
FROM genres
WHERE GenreId IN (
    SELECT GenreId
    FROM albums
    WHERE genres.Name = albums.AlbumId
);
