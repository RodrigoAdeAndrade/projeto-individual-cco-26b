CREATE DATABASE toshare;
USE toshare;

CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL
);

CREATE TABLE genero (
id INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(50)
);

CREATE TABLE filme (
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
data_lancamento DATE NOT NULL,
poster_path VARCHAR(200) NOT NULL,
fk_genero INT,
CONSTRAINT cfk_genero
	FOREIGN KEY (fk_genero)
		REFERENCES genero(id)
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

INSERT INTO filme (titulo, data_lancamento, poster_path, fk_genero) VALUES
('O Vingador do Futuro', '1990-06-01', '../posters/vingadordofuturo.webp', 3),
('Alucinações do Passado', '1990-11-02', '../posters/alucinacoesdopassado.webp', 2),
('Ghost: Do Outro Lado da Vida', '1990-07-13', '../posters/ghost.webp', 9),
('O Silêncio dos Inocentes', '1991-02-14', '../posters/silencioinocentes.webp', 1),
('Shattered', '1991-10-11', '../posters/shattered.webp', 1),
('Cães de Aluguel', '1992-10-23', '../posters/caesaluguel.webp', 4),
('Traídos pelo Desejo', '1992-11-25', '../posters/traidosdesejo.webp', 5),
('Instinto Selvagem', '1992-03-20', '../posters/instintoselvagem.webp', 1),
('O Fugitivo', '1993-08-06', '../posters/fugitivo.webp', 6),
('A Firma', '1993-06-30', '../posters/firma.webp', 1),
('Malícia', '1993-10-01', '../posters/malicia.webp', 1),
('Um Sonho de Liberdade', '1994-09-23', '../posters/sonholiberdade.webp', 5),
('A Última Sedução', '1994-10-26', '../posters/ultimaseducao.webp', 1),
('Seven: Os Sete Crimes Capitais', '1995-09-22', '../posters/seven.webp', 4),
('Os Suspeitos', '1995-08-16', '../posters/theusualsuspects.webp', 4),
('12 Macacos', '1995-12-29', '../posters/12macacos.webp', 3),
('Duro de Matar 3', '1995-05-19', '../posters/durodematar3.webp', 6),
('Estranhos Prazeres', '1995-10-13', '../posters/estranhosprazeres.webp', 3),
('Primal Fear', '1996-04-05', '../posters/primalfear.webp', 1),
('Pânico', '1996-12-20', '../posters/panico.webp', 2),
('Missão: Impossível', '1996-05-22', '../posters/missaoimpossivel.webp', 6),
('Los Angeles: Cidade Proibida', '1997-09-19', '../posters/cidadeproibida.webp', 4),
('Vidas em Jogo', '1997-09-12', '../posters/vidasjogo.webp', 1),
('O Advogado do Diabo', '1997-10-17', '../posters/advogadodiabo.webp', 1),
('O Show de Truman', '1998-06-05', '../posters/showtruman.webp', 5),
('Cidade das Sombras', '1998-02-27', '../posters/cidadesombras.webp', 3),
('Garotas Selvagens', '1998-03-20', '../posters/garotasselvagens.webp', 1),
('Clube da Luta', '1999-10-15', '../posters/clubeluta.webp', 5),
('Matrix', '1999-03-31', '../posters/matrix.webp', 3),
('O Sexto Sentido', '1999-08-06', '../posters/sextosentido.webp', 1),
('A Lenda do Cavaleiro Sem Cabeça', '1999-11-19', '../posters/lendacavaleiro.webp', 2),
('Psicopata Americano', '2000-04-14', '../posters/psicopataamericano.webp', 2),
('Corpo Fechado', '2000-11-22', '../posters/corpofechado.webp', 3),
('Frequency', '2000-04-28', '../posters/frequency.webp', 3),
('Amnésia', '2001-03-16', '../posters/amnesia.webp', 1),
('Uma Mente Brilhante', '2001-12-21', '../posters/mentebrilhante.webp', 5),
('Donnie Darko', '2001-10-26', '../posters/donniedarko.webp', 3),
('Cidade dos Sonhos', '2001-10-12', '../posters/cidadesonhos.webp', 7),
('Os Outros', '2001-08-10', '../posters/osoutros.webp', 2),
('Conflitos Internos (Infernal Affairs)', '2002-12-12', '../posters/conflitosinternos.webp', 4),
('Minority Report: A Nova Lei', '2002-06-21', '../posters/minority.webp', 3),
('Insônia', '2002-05-24', '../posters/insonia.webp', 4),
('Oldboy', '2003-11-21', '../posters/oldboy.webp', 1),
('Sobre Meninos e Lobos', '2003-10-08', '../posters/meninoselobos.webp', 4),
('Identidade', '2003-04-25', '../posters/identidade.webp', 1),
('Os Vigaristas', '2003-09-12', '../posters/vigaristas.webp', 4),
('Brilho Eterno de uma Mente sem Lembranças', '2004-03-19', '../posters/brilhoeterno.webp', 9),
('O Operário', '2004-10-22', '../posters/operario.webp', 1),
('Jogos Mortais', '2004-10-29', '../posters/jogosmortais.webp', 2),
('Match Point: Ponto Final', '2005-12-26', '../posters/matchpoint.webp', 5),
('Beijos e Tiros', '2005-10-21', '../posters/beijostiros.webp', 8),
('Lady Vingança', '2005-07-29', '../posters/ladyvinganca.webp', 4),
('Os Infiltrados', '2006-10-06', '../posters/infiltrados.webp', 4),
('O Grande Truque', '2006-10-20', '../posters/grandetruque.webp', 7),
('O Ilusionista', '2006-08-18', '../posters/ilusionista.webp', 7),
('Plano Perfeito', '2006-03-24', '../posters/planoperfeito.webp', 4),
('Desejo e Reparação', '2007-09-07', '../posters/desejoreparacao.webp', 9),
('O Orfanato', '2007-10-11', '../posters/orfanato.webp', 2),
('Fracture', '2007-04-20', '../posters/fracture.webp', 1),
('O Leitor', '2008-12-10', '../posters/leitor.webp', 5),
('Dúvida', '2008-12-12', '../posters/duvida.webp', 5),
('Martyrs', '2008-09-03', '../posters/martires.webp', 2),
('O Segredo dos Seus Olhos', '2009-08-13', '../posters/segredosolhos.webp', 5),
('Lunar', '2009-06-12', '../posters/lunar.webp', 3),
('Mother: A Busca pela Verdade', '2009-05-28', '../posters/mother.webp', 7),
('Código de Conduta', '2009-10-16', '../posters/codigoconduta.webp', 1),
('A Origem', '2010-07-16', '../posters/origem.webp', 3),
('Incêndios', '2010-09-17', '../posters/incendios.webp', 5),
('Ilha do Medo', '2010-02-19', '../posters/ilhadomedo.webp', 1),
('Cisne Negro', '2010-12-03', '../posters/cisnenegro.webp', 5),
('Eu Vi o Diabo', '2010-08-12', '../posters/euviodiabo.webp', 1),
('A Pele que Habito', '2011-09-02', '../posters/pelequehabito.webp', 5),
('Contra o Tempo', '2011-04-01', '../posters/contraotempo.webp', 3),
('Sem Limites', '2011-03-18', '../posters/semlimites.webp', 3),
('Batman: O Cavaleiro das Trevas Ressurge', '2012-07-20', '../posters/batman.webp', 6),
('Looper: Assassinos do Futuro', '2012-09-28', '../posters/looper.webp', 3),
('O Segredo da Cabana', '2012-04-13', '../posters/segredodacabana.webp', 2),
('A Entidade', '2012-10-12', '../posters/entidade.webp', 2),
('Os Suspeitos', '2013-09-20', '../posters/suspeitos.webp', 1),
('Truque de Mestre', '2013-05-31', '../posters/truquedemestre.webp', 4),
('Terapia de Risco', '2013-02-08', '../posters/terapiaderisco.webp', 1),
('Interestelar', '2014-11-07', '../posters/interstelar.webp', 3),
('Garota Exemplar', '2014-10-03', '../posters/garotaexemplar.webp', 1),
('Predestinado', '2014-08-28', '../posters/predestinado.webp', 3),
('Os Oito Odiados', '2015-12-25', '../posters/oitoodiados.webp', 11),
('Ex Machina: Instinto Artificial', '2015-01-21', '../posters/exmachina.webp', 3),
('O Presente', '2015-08-07', '../posters/opresente.webp', 1),
('A Visita', '2015-09-11', '../posters/avisita.webp', 2),
('Zootopia: Essa Cidade É o Bicho', '2016-03-04', '../posters/zootopia.webp', 10),
('A Chegada', '2016-11-11', '../posters/chegada.webp', 3),
('Animais Noturnos', '2016-11-18', '../posters/animaisnoturnos.webp', 1),
('O Lamento', '2016-05-12', '../posters/lamento.webp', 2),
('Viva: A Vida É uma Festa', '2017-11-22', '../posters/avidaeumafesta.webp', 10),
('Blade Runner 2049', '2017-10-06', '../posters/bladerunner.webp', 3),
('Corra!', '2017-02-24', '../posters/corra.webp', 2),
('Fragmentado', '2017-01-20', '../posters/fragmentado.webp', 2),
('mãe!', '2017-09-15', '../posters/mae.webp', 2),
('Vingadores: Guerra Infinita', '2018-04-27', '../posters/guerrainfinita.webp', 6),
('Buscando...', '2018-08-31', '../posters/buscando.webp', 1),
('Hereditário', '2018-06-08', '../posters/hereditario.webp', 2),
('Parasita', '2019-05-30', '../posters/parasita.webp', 5),
('Coringa', '2019-10-04', '../posters/coringa.webp', 5),
('Entre Facas e Segredos', '2019-11-27', '../posters/knivesout.webp', 7),
('Homem-Aranha: Longe de Casa', '2019-07-02', '../posters/longedecasa.webp', 6),
('Bacurau', '2019-08-29', '../posters/bacurau.webp', 1),
('Nós', '2019-03-22', '../posters/nos.webp', 2),
('O Poço', '2020-03-06', '../posters/opoco.webp', 3),
('O Beco do Pesadelo', '2021-12-17', '../posters/becodopesadelo.webp', 4),
('Oxigênio', '2021-05-12', '../posters/oxigenio.webp', 3),
('Decisão de Partir', '2022-06-29', '../posters/decisaodepartir.webp', 7),
('Trem-Bala', '2022-08-05', '../posters/trembala.webp', 6),
('O Menu', '2022-11-18', '../posters/omenu.webp', 1),
('Glass Onion: Um Mistério Knives Out', '2022-11-23', '../posters/glassonion.webp', 7),
('Noites Brutais', '2022-09-09', '../posters/noitesbrutais.webp', 2),
('Anatomia de uma Queda', '2023-08-23', '../posters/anatomia.webp', 5),
('Saltburn', '2023-11-17', '../posters/saltburn.webp', 1),
('Conclave', '2024-10-25', '../posters/conclave.webp', 5),
('A Substância', '2024-09-20', '../posters/substancia.webp', 2),
('Strange Darling', '2024-08-23', '../posters/strangedar.webp', 1),
('Herege', '2024-11-08', '../posters/herege.webp', 2),
('Vivo ou Morto: Um Mistério Knives Out', '2025-11-26', '../posters/.webp', 7),
('A Hora do Mal', '2025-08-08', '../posters/horadomal.webp', 2),
('Bugonia', '2025-10-24', '../posters/bugonia.webp', 3),
('Acompanhante Perfeita', '2025-01-31', '../posters/acompanhante.webp', 3);

CREATE VIEW vw_catalogo_filmes AS
	SELECT
		f.titulo 'Filme',
        g.nome 'Gênero',
        YEAR(f.data_lancamento) 'Ano de lançamento',
        f.poster_path 'caminho'
	FROM filme f
		JOIN genero g
			ON f.fk_genero = g.id
	ORDER BY f.data_lancamento;
    
UPDATE filme set poster_path = '../posters/vivomorto.webp' WHERE id = 121;

CREATE VIEW vw_kpi3 AS
	SELECT 
		g.nome as genero,
        COUNT(g.nome) as qtd_vezes
	FROM filme_assistido as fa
	JOIN filme as f
		ON fa.fk_filme = f.id
	RIGHT JOIN genero as g
		ON f.fk_genero = g.id
	WHERE TIMESTAMPDIFF(DAY, fa.data_assistido, NOW()) BETWEEN 0 AND 7
	GROUP BY g.nome
    LIMIT 1;
    
CREATE VIEW vw_kpi1 AS
	SELECT
		f.titulo as filme,
        COUNT(f.titulo) as qtd_filme
	FROM filme_assistido as fa
	JOIN filme as f
		ON fa.fk_filme = f.id
	WHERE TIMESTAMPDIFF(DAY, fa.data_assistido, NOW()) BETWEEN 0 AND 7
	GROUP BY f.titulo
    LIMIT 1;
    
CREATE VIEW vw_kpi2 AS
	SELECT
		AVG(total_curtidas) AS media_curtidas
	FROM (
		SELECT
			COUNT(data_assistido) AS total_curtidas
		FROM filme_assistido
        WHERE TIMESTAMPDIFF(DAY, data_assistido, NOW()) BETWEEN 0 AND 7
        GROUP BY DATE(data_assistido)
        ) AS curtidas_dia;
		