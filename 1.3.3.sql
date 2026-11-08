with canciones_por_album as (
select count(*) as albumsize, albumid as id from tracks
group by albumid
)
select albums.AlbumId, albums.title, canciones_por_album.albumsize from albums
join canciones_por_album on id = albums.albumid
where albumsize > 15