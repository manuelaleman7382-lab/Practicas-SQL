select milliseconds as duracion, name as cancion from tracks 
where duracion > (SELECT avg(milliseconds) from tracks) order by duracion desc