SELECT artists.name as artistas, albums.title as album from artists
left join albums on albums.ArtistId = artists.ArtistId 
where album is null