select max(music.id) as cancoes, max(albuns.artista_id) as artistas,  max(music.album_id) as albuns 
from SpotifyClone.music as music
inner join SpotifyClone.albuns as albuns
on albuns.id = music.album_id;