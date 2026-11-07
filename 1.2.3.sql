SELECT genres.name AS genero, COUNT(*) AS canciones
FROM genres
JOIN tracks ON tracks.genreid = genres.genreid
GROUP BY genres.genreid
ORDER BY canciones DESC;