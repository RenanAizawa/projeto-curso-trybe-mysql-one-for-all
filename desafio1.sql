DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(20) NOT NULL,
    ano_nascimento INT NOT NULL
) engine = InnoDB;

CREATE TABLE planos(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    preco DECIMAL(3,2) NOT NULL
) engine = InnoDB;

CREATE TABLE artistas (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fisrt_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL DEFAULT ' '
) engine = InnoDB;

CREATE TABLE album (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fisrt_name VARCHAR(20) NOT NULL,
    artista_id INT NOT NULL,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (id)
) engine = InnoDB;

CREATE TABLE music (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    album_id INT NOT NULL,
    duracao_segundos INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (id)
) engine = InnoDB;

CREATE TABLE assinatura_do_usuario (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES users (id),
    FOREIGN KEY (plano_id) REFERENCES planos (id)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    music_id INT NOT NULL,
    usuario_id INT NOT NULL,
    data_reproducao DATETIME NOT NULL,
    FOREIGN KEY (music_id) REFERENCES music (id),
    FOREIGN KEY (usuario_id) REFERENCES users (id)
) engine = InnoDB;

CREATE TABLE artistas_usuario () engine = InnoDB;

INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');