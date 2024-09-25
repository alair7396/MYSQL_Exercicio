CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE financiador (
id_financiador INT NOT NULL AUTO_INCREMENT,
nome_financiador VARCHAR(45),
cnpj_financiador BIGINT,
PRIMARY KEY (id_financiador)
);

CREATE TABLE autor (
id_autor INT NOT NULL AUTO_INCREMENT,
nome_autor VARCHAR(45),
rg_autor BIGINT,
PRIMARY KEY (id_autor)
);

CREATE TABLE cliente (
id_cliente INT NOT NULL AUTO_INCREMENT,
nome_cliente VARCHAR(45),
rg_cliente BIGINT,
cpf_cliente BIGINT,
end_rua VARCHAR(45),
end_bairro VARCHAR(45),
end_cidade VARCHAR(45),
end_estado VARCHAR(45),
end_pais VARCHAR(45),
end_cep INT,
PRIMARY KEY (id_cliente)
);

CREATE TABLE editora (
id_editora INT NOT NULL AUTO_INCREMENT,
nome_fantasia_editora VARCHAR(45),
razao_social_editora VARCHAR(45),
end_rua VARCHAR(45),
end_bairro VARCHAR(45),
end_cidade VARCHAR(45),
end_estado VARCHAR(45),
end_pais VARCHAR(45),
end_cep INT,
PRIMARY KEY (id_editora)
);

CREATE TABLE telefone (
id_telefone INT NOT NULL AUTO_INCREMENT,
telefone BIGINT,
PRIMARY KEY (id_telefone)
);

CREATE TABLE livro (
id_livro INT NOT NULL AUTO_INCREMENT,
isbn_livro VARCHAR(45),
titulo_livro VARCHAR(45),
preco_livro INT,
categotia_livro VARCHAR(45),
PRIMARY KEY (id_livro)
);

CREATE TABLE pedido (
id_pedido INT NOT NULL AUTO_INCREMENT,
qtd_pedido INT,
PRIMARY KEY (id_pedido)
);

ALTER TABLE pedido
ADD COLUMN cliente_id INT,
ADD FOREIGN KEY (cliente_id)
REFERENCES cliente(id_cliente);

ALTER TABLE pedido
ADD COLUMN livro_id INT,
ADD FOREIGN KEY (livro_id)
REFERENCES livro(id_livro);

ALTER TABLE livro
ADD COLUMN financiador_id INT,
ADD FOREIGN KEY (financiador_id)
REFERENCES financiador(id_financiador);

ALTER TABLE livro
ADD COLUMN autor_id INT,
ADD FOREIGN KEY (autor_id)
REFERENCES autor(id_autor);

ALTER TABLE livro
ADD COLUMN editora_id INT,
ADD FOREIGN KEY (editora_id)
REFERENCES editora(id_editora);

ALTER TABLE telefone
ADD COLUMN editora_id INT,
ADD FOREIGN KEY (editora_id)
REFERENCES editora(id_editora);

INSERT INTO financiador (nome_financiador,cnpj_financiador) VALUES
('financiador 1',111111111111111),
('financiador 2',211111111111111),
('financiador 3',311111111111111),
('financiador 4',411111111111111),
('financiador 5',511111111111111);

INSERT INTO autor (nome_autor, rg_autor) VALUES
('Autor A', 123456789),
('Autor B', 234567890),
('Autor C', 345678901),
('Autor D', 456789012),
('Autor E', 567890123);

-- Inserir 5 registros na tabela cliente
INSERT INTO cliente (nome_cliente, rg_cliente, cpf_cliente, end_rua, end_bairro, end_cidade, end_estado, end_pais, end_cep) VALUES
('Cliente A', 123456789, 12345678901, 'Rua A', 'Bairro A', 'Cidade A', 'Estado A', 'Pais A', 12345),
('Cliente B', 234567890, 23456789012, 'Rua B', 'Bairro B', 'Cidade B', 'Estado B', 'Pais B', 23456),
('Cliente C', 345678901, 34567890123, 'Rua C', 'Bairro C', 'Cidade C', 'Estado C', 'Pais C', 34567),
('Cliente D', 456789012, 45678901234, 'Rua D', 'Bairro D', 'Cidade D', 'Estado D', 'Pais D', 45678),
('Cliente E', 567890123, 56789012345, 'Rua E', 'Bairro E', 'Cidade E', 'Estado E', 'Pais E', 56789);

-- Inserir 5 registros na tabela editora
INSERT INTO editora (nome_fantasia_editora, razao_social_editora, end_rua, end_bairro, end_cidade, end_estado, end_pais, end_cep) VALUES
('Editora A', 'Razão A', 'Rua 1', 'Bairro 1', 'Cidade 1', 'Estado 1', 'Pais 1', 11111),
('Editora B', 'Razão B', 'Rua 2', 'Bairro 2', 'Cidade 2', 'Estado 2', 'Pais 2', 22222),
('Editora C', 'Razão C', 'Rua 3', 'Bairro 3', 'Cidade 3', 'Estado 3', 'Pais 3', 33333),
('Editora D', 'Razão D', 'Rua 4', 'Bairro 4', 'Cidade 4', 'Estado 4', 'Pais 4', 44444),
('Editora E', 'Razão E', 'Rua 5', 'Bairro 5', 'Cidade 5', 'Estado 5', 'Pais 5', 55555);

-- Inserir 5 registros na tabela telefone
INSERT INTO telefone (telefone) VALUES
(1234567890),
(2345678901),
(3456789012),
(4567890123),
(5678901234);

-- Inserir 5 registros na tabela livro
INSERT INTO livro (isbn_livro, titulo_livro, preco_livro, categotia_livro) VALUES
('978-3-16-148410-0', 'Livro A', 50, 'Ficção'),
('978-3-16-148411-7', 'Livro B', 60, 'Aventura'),
('978-3-16-148412-4', 'Livro C', 70, 'Terror'),
('978-3-16-148413-1', 'Livro D', 80, 'Romance'),
('978-3-16-148414-8', 'Livro E', 90, 'Biografia');

-- Inserir 5 registros na tabela pedido
INSERT INTO pedido (qtd_pedido) VALUES
(1),
(2),
(3),
(4),
(5);

































