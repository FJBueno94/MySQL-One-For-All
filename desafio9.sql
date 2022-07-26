SELECT
	COUNT(h.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
WHERE u.username = "Bill";