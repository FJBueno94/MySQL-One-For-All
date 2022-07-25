SELECT
	u.username AS usuario,
IF(MAX(h.data_reprod) >= '2021-%', "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM  SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON h.usuario_id = u.usuario_id
GROUP BY usuario;
