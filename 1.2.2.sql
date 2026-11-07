select tracks.name as canciones, genres.name as genero from tracks
join genres on genres.genreid = tracks.genreid limit 10;