select milliseconds as duracion, name as cancion from tracks 
having duracion > (SELECT avg(milliseconds) from tracks) order by duracion desc