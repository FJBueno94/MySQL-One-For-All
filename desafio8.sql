SELECT
	a.nome_artista AS artista,
    al.album AS album
FROM SpotifyClone.artistas AS a
RIGHT JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
WHERE a.nome_artista = "Walter Phoenix";
