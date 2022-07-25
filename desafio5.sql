SELECT
	m.musica AS cancao,
	COUNT(h.musica_id) AS reproducoes
    FROM SpotifyClone.musicas AS m
    INNER JOIN SpotifyClone.historico AS h
    ON m.musica_id = h.musica_id
    GROUP BY h.musica_id
    ORDER BY reproducoes DESC, cancao ASC
    LIMIT 2;