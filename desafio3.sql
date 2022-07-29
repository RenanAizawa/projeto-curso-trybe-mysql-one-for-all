SELECT users.usuario AS usuario,  COUNT(history.music_id) AS qtde_musicas_ouvidas, ROUND(SUM(music.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.historico_de_reproducoes AS history
ON users.id = history.usuario_id
INNER JOIN SpotifyClone.music AS music
ON music.id = history.music_id
group by users.usuario
ORDER BY users.usuario;