SELECT Name
FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY Name
HAVING COUNT(Name) >= 4
ORDER BY Name DESC