CREATE TABLE livraria(
    nome VARCHAR(50) NOT NULL,
    funcionarios_fk VARCHAR(100),
    cnpj_pk VARCHAR(14) NOT NULL,
    localizacao VARCHAR(100) NOT NULL,
    livros_fk VARCHAR(13),
    PRIMARY KEY (cnpj_pk),
    FOREIGN KEY (livros_fk) REFERENCES livro (isbn_pk),
    FOREIGN KEY (funcionarios_fk) REFERENCES funcionario (id_pk)
);

CREATE TABLE editora(
    nome VARCHAR(50) NOT NULL,
    cnpj_pk VARCHAR(14) NOT NULL,
    PRIMARY KEY (cnpj_pk)
);

CREATE TABLE livro(
    isbn_pk VARCHAR(13),
    titulo VARCHAR(50) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editora_fk VARCHAR(50),
    ano_publicacao INT,
    PRIMARY KEY (isbn_pk),
    FOREIGN KEY (editora_fk) REFERENCES editora (cnpj_pk)
);

CREATE TABLE usuario(
    cpf_pk VARCHAR(11),
    nome VARCHAR(150) NOT NULL,
    login_loja VARCHAR(50),
    PRIMARY KEY (cpf_pk)
);

CREATE TABLE funcionario(
    id_pk VARCHAR(15) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    contrato_limite INT NOT NULL,
    PRIMARY KEY (id_pk)
);

INSERT INTO livraria (nome, funcionarios_fk, cnpj_pk, localizacao, livros_fk)
VALUES ('Livraria Qualquer', '895671236507612', '12345678909876', 'Avenida Dom Pedro Segund0 68', '9876543210123')

INSERT INTO editora (nome, cnpj_pk)
VALUES ('Editora da Boa', '76302541985374')

INSERT INTO livro (isbn_pk, titulo, autor, editora_fk, ano_publicacao)
VALUES ('9876543210123', 'Qualquer', 'João da Silva Silveira', '76302541985374', '2000')

INSERT INTO usuario (cpf_pk, nome, login_loja)
VALUES ('10203051802', 'Renato Ademar', 'renataodabarra@gmail.com')

INSERT INTO funcionario (id_pk, nome, cargo, contrato_limite)
VALUES ('895671236507612', 'Marcos João', 'Gerente de Vendas', 2025)

SELECT * FROM livraria
SELECT * FROM editora
SELECT * FROM livro
SELECT * FROM usuario
SELECT * FROM funcionario