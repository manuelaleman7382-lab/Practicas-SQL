select albums.title as album, artists.name as artista from albums
join artists on artists.artistid = albums.artistid;