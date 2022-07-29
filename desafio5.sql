SELECT music.nome AS cancao, COUNT(history.usuario_id) AS reproducoes
FROM SpotifyClone.music AS music
INNER JOIN SpotifyClone.historico_de_reproducoes AS history
ON music.id = history.music_id
GROUP BY music.nome
ORDER BY COUNT(history.usuario_id) DESC, music.nome
LIMIT 2;