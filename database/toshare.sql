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

CREATE TABLE genero (
id INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(50)
);

ALTER TABLE filme
	ADD COLUMN fk_genero INT,
	ADD CONSTRAINT cfk_genero
		FOREIGN KEY (fk_genero)
        REFERENCES genero (id);
        
INSERT INTO genero (nome) VALUES
('Suspense'),
('Terror'),
('Ficção Científica'),
('Crime'),
('Drama'),
('Ação'),
('Mistério'),
('Comédia'),
('Romance'),
('Animação'),
('Faroeste');

INSERT INTO diretor (nome_diretor) VALUES
('Ben Affleck'),
('Alexandre Aja'),
('Woody Allen'),
('Pedro Almodóvar'),
('Alejandro Amenábar'),
('Brad Anderson'),
('Darren Aronofsky'),
('Ari Aster'),
('Max Barbakow'),
('J. A. Bayona'),
('Scott Beck'),
('Harold Becker'),
('Timur Bekmambetov'),
('Edward Berger'),
('Kathryn Bigelow'),
('Shane Black'),
('Bong Joon-ho'),
('Kenneth Branagh'),
('Neil Burger'),
('Juan José Campanella'),
('Joe Carnahan'),
('Shane Carruth'),
('Mimi Cave'),
('Aneesh Chaganty'),
('Wes Craven'),
('Zach Cregger'),
('John Dahl'),
('Stephen Daldry'),
('Frank Darabont'),
('Andrew Davis'),
('Brian De Palma'),
('Guillermo del Toro'),
('Jonathan Demme'),
('Scott Derrickson'),
('Clint Eastwood'),
('Joel Edgerton'),
('Coralie Fargeat'),
('Emerald Fennell'),
('David Fincher'),
('Tom Ford'),
('Alex Garland'),
('Galder Gaztelu-Urrutia'),
('Terry Gilliam'),
('Drew Goddard'),
('Michel Gondry'),
('F. Gary Gray'),
('Kevin Greutert'),
('Taylor Hackford'),
('Drew Hancock'),
('Curtis Hanson'),
('Mary Harron'),
('Gregory Hoblit'),
('Byron Howard'),
('Ron Howard'),
('Nicholas D. Johnson'),
('Rian Johnson'),
('Duncan Jones'),
('Richard Kelly'),
('Kim Jee-woon'),
('Satoshi Kon'),
('Yorgos Lanthimos'),
('Andrew Lau'),
('Pascal Laugier'),
('Spike Lee'),
('David Leitch'),
('Louis Leterrier'),
('Shawn Levy'),
('Richard Linklater'),
('David Lynch'),
('Adrian Lyne'),
('James Mangold'),
('Paul McGuigan'),
('John McNaughton'),
('John McTiernan'),
('Kleber Mendonça Filho'),
('JT Mollner'),
('Mark Mylod'),
('Na Hong-jin'),
('Christopher Nolan'),
('Park Chan-wook'),
('Jordan Peele'),
('Wolfgang Petersen'),
('Todd Phillips'),
('Sydney Pollack'),
('Alex Proyas'),
('Sam Raimi'),
('Richard Rush'),
('Anthony Russo'),
('John Sayles'),
('Martin Scorsese'),
('Ridley Scott'),
('John Patrick Shanley'),
('M. Night Shyamalan'),
('Bryan Singer'),
('Steven Soderbergh'),
('Steven Spielberg'),
('Michael Spierig'),
('Quentin Tarantino'),
('Justine Triet'),
('Morten Tyldum'),
('Lee Unkrich'),
('Paul Verhoeven'),
('Denis Villeneuve'),
('Lana Wachowski'),
('James Wan'),
('Jon Watts'),
('Peter Weir'),
('Leigh Whannell'),
('Edgar Wright'),
('Joe Wright'),
('Jerry Zucker');