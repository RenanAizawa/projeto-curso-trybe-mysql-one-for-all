SELECT COUNT(hist.music_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS hist
INNER JOIN SpotifyClone.users AS us
ON hist.usuario_id = us.id
WHERE us.usuario = 'Bill'
ORDER BY hist.usuario_id;