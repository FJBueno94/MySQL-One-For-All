SELECT
	a.nome_artista AS artista,
    al.album AS album,
    COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
RIGHT JOIN SpotifyClone.albuns AS al
ON al.artista_id = a.artista_id
RIGHT JOIN SpotifyClone.artistas_seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY al.artista_id, al.album
ORDER BY seguidores DESC, artista ASC, album ASC;