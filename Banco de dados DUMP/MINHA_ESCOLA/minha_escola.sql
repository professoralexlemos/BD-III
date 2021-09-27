DROP DATABASE IF EXISTS minha_escola;
CREATE DATABASE IF NOT EXISTS minha_escola;
USE minha_escola;

CREATE TABLE IF NOT EXISTS aluno (
  codigo_aluno int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo interno (PK)',
  nome_aluno varchar(64) NOT NULL COMMENT 'Nome com até 64 caracteres',
  endereco_aluno varchar(230) NOT NULL COMMENT 'Endereço com ate 230 caracteres',
  email_aluno varchar(128) NOT NULL COMMENT 'Email com ate 128 caracteres',
  PRIMARY KEY (codigo_aluno)
);
DESC aluno;

INSERT INTO aluno (codigo_aluno, nome_aluno, endereco_aluno, email_aluno) VALUES
	(1, 'José', 'Rua XV de Novembro 72', 'jose@email.com.br'),
	(2, 'Wagner', 'Av. Paulista', 'wagner@email.com.br'),
	(3, 'Emílio', 'Rua Lajes 103, ap: 701', 'emilio@email.com.br'),
	(4, 'Cris', 'Rua Tauney 22', 'cris@email.com.br'),
	(5, 'Regina', 'Rua Salles 305', 'regina@email.com.br'),
	(6, 'Fernando', 'Av. Central 30', 'fernando@email.com.br'),
	(7, 'Maria', 'Avenida Angélica, 200', 'maria@email.com.br'),
	(8, 'Pedro', 'Rua Santa Catarina 21', 'predo@email.com.br'),
	(9, 'Fátima', 'Rua Santa Mariana', 'fatima@email.com.br'),
	(10, 'Santiago', 'Rua Régio 499', 'santiago@email.com.br');

CREATE TABLE IF NOT EXISTS tipo (
  codigo_tipo int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo interno (PK)',
  descricao_tipo varchar(32) NOT NULL COMMENT 'Descricao',
  PRIMARY KEY (codigo_tipo)
);
DESC aluno;

INSERT INTO tipo (codigo_tipo, descricao_tipo) VALUES
	(1, 'Banco de dados'),
	(2, 'Programação'),
	(3, 'Modelagem de dados');
	
CREATE TABLE IF NOT EXISTS instrutor (
  codigo_instrutor int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo interno (PK)',
  nome_instrutor varchar(64) NOT NULL COMMENT 'Nome com ate 64 caracteres',
  telefone_instrutor varchar(9) DEFAULT NULL COMMENT 'Telefone, podendo ser nulo caso nao tenha',
  PRIMARY KEY (codigo_instrutor)
);
DESC instrutor;

INSERT INTO instrutor (codigo_instrutor, nome_instrutor, telefone_instrutor) VALUES
	(1, 'Mário Milani', '1111-1111'),
	(2, 'Miguel Tosin', '2222-222'),
	(3, 'Ângela Silva', '3333-3333'),
	(4, 'João Petrelli', '4444-4444'),
	(5, 'Pedro Castro', '5555-5555'),
	(6, 'Renato de Azevedo', '6666-6666');

CREATE TABLE IF NOT EXISTS curso (
  codigo_curso int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo interno (PK)',
  nome_curso varchar(64) NOT NULL COMMENT 'Titulo com ate 64 caracteres',
  tipo_curso int(11) NOT NULL COMMENT 'Codigo do tipo de curso (identico a PK em CURSO)',
  instrutor_curso int(11) NOT NULL COMMENT 'Codigo do instrutor (identico a PK em INSTRUTOR)',
  PRIMARY KEY (codigo_curso),
  KEY FK_TIPO (tipo_curso),
  KEY FK_INSTRUTOR (instrutor_curso),
  CONSTRAINT curso_ibfk_1 FOREIGN KEY (tipo_curso) REFERENCES tipo (CODIGO_TIPO),
  CONSTRAINT curso_ibfk_2 FOREIGN KEY (instrutor_curso) REFERENCES instrutor (CODIGO_INSTRUTOR)
);
DESC curso;

INSERT INTO curso (codigo_curso, nome_curso, tipo_curso, instrutor_curso) VALUES
	(1, 'Java Fundamentos', 2, 2),
	(2, 'Java Avançado', 2, 2),
	(3, 'SQL Básico', 3, 1),
	(4, 'SQL Intermediário', 1, 1),
	(5, 'SQL Avançado', 1, 3),
	(6, 'Lógica de Programação', 2, 4);

CREATE TABLE IF NOT EXISTS pedido (
  codigo_pedido int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo interno (PK)',
  aluno_pedido int(11) NOT NULL COMMENT 'Codigo do aluno (identico a PK em ALUNO)',
  data_hora_pedido datetime NOT NULL COMMENT 'Armazena data e hora em uma unica coluna',
  PRIMARY KEY (codigo_pedido),
  KEY FK_ALUNO (aluno_pedido),
  CONSTRAINT pedido_ibfk_1 FOREIGN KEY (aluno_pedido) REFERENCES aluno (codigo_aluno)
);
DESC pedido;

INSERT INTO pedido (codigo_pedido, aluno_pedido, data_hora_pedido) VALUES
	(1, 1, '2015-01-01 00:00:00'),
	(2, 2, '2015-01-01 00:00:00'),
	(3, 3, '2015-01-01 00:00:00'),
	(4, 4, '2015-01-01 00:00:00'),
	(5, 5, '2015-01-01 00:00:00'),
	(6, 6, '2015-01-01 00:00:00'),
	(7, 7, '2015-01-01 00:00:00'),
	(8, 8, '2015-01-01 00:00:00'),
	(9, 9, '2015-01-01 00:00:00'),
	(10, 10, '2015-01-01 00:00:00'),
	(11, 1, '2016-01-01 00:00:00'),
	(12, 2, '2016-01-01 00:00:00'),
	(13, 3, '2016-01-01 00:00:00'),
	(14, 4, '2016-01-01 00:00:00'),
	(15, 5, '2016-01-01 00:00:00'),
	(16, 6, '2016-01-01 00:00:00'),
	(17, 7, '2016-01-01 00:00:00'),
	(18, 8, '2016-01-01 00:00:00'),
	(19, 9, '2016-01-01 00:00:00'),
	(20, 10, '2016-01-01 00:00:00'),
	(21, 1, '2017-01-01 00:00:00'),
	(22, 2, '2017-01-01 00:00:00'),
	(23, 3, '2017-01-01 00:00:00'),
	(24, 4, '2017-01-01 00:00:00'),
	(25, 5, '2017-01-01 00:00:00'),
	(26, 6, '2017-01-01 00:00:00'),
	(27, 7, '2017-01-01 00:00:00'),
	(28, 8, '2017-01-01 00:00:00'),
	(29, 9, '2017-01-01 00:00:00'),
	(30, 10, '2017-01-01 00:00:00'),
	(31, 1, '2018-01-01 00:00:00'),
	(32, 2, '2018-01-01 00:00:00'),
	(33, 3, '2018-01-01 00:00:00'),
	(34, 4, '2018-01-01 00:00:00'),
	(35, 5, '2018-01-01 00:00:00'),
	(36, 6, '2018-01-01 00:00:00'),
	(37, 7, '2018-01-01 00:00:00'),
	(38, 8, '2018-01-01 00:00:00'),
	(39, 9, '2018-01-01 00:00:00'),
	(40, 10, '2018-01-01 00:00:00'),
	(41, 1, '2019-01-01 00:00:00'),
	(42, 2, '2019-01-01 00:00:00'),
	(43, 3, '2019-01-01 00:00:00'),
	(44, 4, '2019-01-01 00:00:00'),
	(45, 5, '2019-01-01 00:00:00'),
	(46, 6, '2019-01-01 00:00:00'),
	(47, 7, '2019-01-01 00:00:00'),
	(48, 8, '2019-01-01 00:00:00'),
	(49, 9, '2019-01-01 00:00:00'),
	(50, 10, '2019-01-01 00:00:00'),
	(51, 1, '2020-01-01 00:00:00'),
	(52, 2, '2020-01-01 00:00:00'),
	(53, 3, '2020-01-01 00:00:00'),
	(54, 4, '2020-01-01 00:00:00'),
	(55, 5, '2020-01-01 00:00:00');

CREATE TABLE IF NOT EXISTS pedido_detalhe (
  codigo_pedido int(11) NOT NULL COMMENT 'Codigo do pedido (identico a PK em PEDIDO)',
  codigo_curso int(11) NOT NULL COMMENT 'Codigo do curso (identico a PK em CURSO)',
  valor_curso double(22,0) NOT NULL COMMENT 'Valor do curso',
  PRIMARY KEY (codigo_pedido,codigo_curso),
  KEY FK_PEDIDO (codigo_pedido),
  KEY FK_CURSO (codigo_curso),
  CONSTRAINT pedido_detalhe_ibfk_1 FOREIGN KEY (codigo_pedido) REFERENCES pedido (codigo_pedido),
  CONSTRAINT pedido_detalhe_ibfk_2 FOREIGN KEY (codigo_curso) REFERENCES curso (codigo_curso)
);
DESC pedido_detalhe;

INSERT INTO pedido_detalhe (codigo_pedido, codigo_curso, valor_curso) VALUES
	(1, 1, 300),
	(2, 1, 300),
	(3, 1, 300),
	(4, 1, 300),
	(5, 1, 300),
	(6, 1, 300),
	(7, 1, 300),
	(8, 1, 300),
	(9, 1, 300),
	(10, 1, 300),
	(11, 2, 350),
	(12, 2, 350),
	(13, 2, 350),
	(14, 2, 350),
	(15, 2, 350),
	(16, 2, 350),
	(17, 2, 350),
	(18, 2, 350),
	(19, 2, 350),
	(20, 2, 350),
	(21, 3, 400),
	(22, 3, 400),
	(23, 3, 400),
	(24, 3, 400),
	(25, 3, 400),
	(26, 3, 400),
	(27, 3, 400),
	(28, 3, 400),
	(29, 3, 400),
	(30, 3, 400),
	(31, 4, 450),
	(32, 4, 450),
	(33, 4, 450),
	(34, 4, 450),
	(35, 4, 450),
	(36, 4, 450),
	(37, 4, 450),
	(38, 4, 450),
	(39, 4, 450),
	(40, 4, 450),
	(41, 5, 500),
	(42, 5, 500),
	(43, 5, 500),
	(44, 5, 500),
	(45, 5, 500),
	(46, 5, 500),
	(47, 5, 500),
	(48, 5, 500),
	(49, 5, 500),
	(50, 5, 500),
	(51, 6, 150),
	(52, 6, 150),
	(53, 6, 150),
	(54, 6, 150),
	(55, 6, 150);
	
SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM instrutor;
SELECT * FROM pedido;
SELECT * FROM pedido_detalhe;
SELECT * FROM tipo;