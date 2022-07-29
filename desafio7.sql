SELECT art.artista AS artista, alb.nome AS album, COUNT(fav.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS fav
ON fav.artista_id_seguido = alb.artista_id
GROUP BY alb.nome, art.artista
ORDER BY COUNT(fav.usuario_id) DESC, art.artista, alb.nome;