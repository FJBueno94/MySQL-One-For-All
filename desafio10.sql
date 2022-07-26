SELECT
	m.musica AS nome,
    COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
WHERE p.plano = "gratuito" OR p.plano = "pessoal"
GROUP BY NOME
ORDER BY NOME;