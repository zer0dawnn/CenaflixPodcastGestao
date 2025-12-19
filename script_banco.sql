CREATE DATABASE CenaflixPodcastGestao;
USE CenaflixPodcastGestao;

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    login VARCHAR(50) UNIQUE,
    senha VARCHAR(50),
    tipo VARCHAR(20) -- Administrador, Operador, Usuario
);

CREATE TABLE podcast (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produtor VARCHAR(100),
    nome_episodio VARCHAR(150),
    numero_episodio INT,
    duracao VARCHAR(20),
    url_repo VARCHAR(255)
);

-- Inserindo usuários iniciais para teste
INSERT INTO usuario (nome, login, senha, tipo) VALUES 
('Chefe', 'admin', 'admin123', 'Administrador'),
('Funcionario', 'operador', 'operador123', 'Operador'),
('Visitante', 'comum', 'user123', 'Usuario');