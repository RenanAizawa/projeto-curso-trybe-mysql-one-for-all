SELECT art.artista AS artista, alb.nome AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.id = alb.artista_id
WHERE art.artista = 'Walter Phoenix';