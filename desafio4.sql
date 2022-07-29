SELECT users.usuario AS usuario, IF(YEAR(MAX(history.data_reproducao)) > 2020, "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.historico_de_reproducoes AS history
ON users.id = history.usuario_id
GROUP BY users.usuario
ORDER BY users.usuario;