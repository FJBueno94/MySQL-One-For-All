SELECT
	u.username AS usuario,
    COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(t.tempo)/60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS t
ON h.musica_id = t.musica_id
GROUP BY h.usuario_id
ORDER BY usuario;