-- contar el numero total de canciones
SELECT count(name) as total_canciones from tracks;
-- contar el numero de canciones sin repeticiones
SELECT count(DISTINCT name) as total_canciones_no_rep from tracks;