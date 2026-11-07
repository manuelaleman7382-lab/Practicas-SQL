select albums.title as titulo, artists.name as artista from albums
join artists on artists.artistid = albums.artistid;