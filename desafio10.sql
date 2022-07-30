SELECT mus.nome AS nome, COUNT(hist.usuario_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS hist
INNER JOIN SpotifyClone.users as us
ON hist.usuario_id = us.id
INNER JOIN SpotifyClone.music AS mus
ON mus.id = hist.music_id
WHERE us.plano_id = 1 OR us.plano_id = 3
GROUP BY mus.nome
ORDER BY mus.nome;