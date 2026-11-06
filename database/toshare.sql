CREATE DATABASE toshare;
USE toshare;

CREATE TABLE diretor (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL
);
ALTER TABLE diretor RENAME COLUMN nome TO nome_diretor;

CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
senha VARCHAR(100) NOT NULL
);

CREATE TABLE filme (
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
data_lancamento DATE NOT NULL,
poster_path VARCHAR(200) NOT NULL,
fk_diretor INT,
CONSTRAINT cfk_diretor
	FOREIGN KEY (fk_diretor)
    REFERENCES diretor(id)
);

CREATE TABLE filme_assistido (
fk_usuario INT,
fk_filme INT,
data_assistido DATETIME NOT NULL,
PRIMARY KEY (fk_usuario, fk_filme),
CONSTRAINT cfk_usuario
	FOREIGN KEY (fk_usuario)
    REFERENCES usuario(id),
CONSTRAINT cfk_filme
	FOREIGN KEY (fk_filme)
    REFERENCES filme(id)
);