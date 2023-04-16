CREATE TABLE conta(
    id_pk VARCHAR(20) NOT NULL,
    quantidade_dinheiro VARCHAR(20) NOT NULL,
    numero_agencia VARCHAR(10) NOT NULL,
    tipo_conta VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_pk)
)

CREATE TABLE banco(
    nome VARCHAR(30) NOT NULL,
    cnpj_pk VARCHAR(15) NOT NULL,
    contas_id_fk VARCHAR(1000) NOT NULL,
    funcionarios VARCHAR(100) NOT NULL,
    PRIMARY KEY (cnpj_pk),
    FOREIGN KEY (contas_id_fk) REFERENCES conta (id_pk)
)

CREATE TABLE usuario(
    nome VARCHAR(50) NOT NULL,
    cpf_pk VARCHAR(15) NOT NULL,
    conta_id_fk VARCHAR(15) NOT NULL,
    PRIMARY KEY (cpf_pk),
    FOREIGN KEY (conta_id_fk) REFERENCES conta (id_pk)
)

CREATE TABLE cartao(
    numero_cartao_pk VARCHAR(15) NOT NULL,
    dono_cartao_fk VARCHAR(50) NOT NULL,
    codigo_seguranca VARCHAR(3) NOT NULL,
    data_validade VARCHAR(10) NOT NULL,
    conta_associada_id_fk VARCHAR(20) NOT NULL,
    PRIMARY KEY (numero_cartao_pk),
    FOREIGN KEY (dono_cartao_fk) REFERENCES usuario (cpf_pk),
    FOREIGN KEY (conta_associada_id_fk) REFERENCES conta (id_pk)
)

INSERT INTO conta (id_pk, quantidade_dinheiro, numero_agencia, tipo_conta)
VALUES ('123456789', '24,90', '0987654321', 'corrente'),
	   ('924293492', '1390123', '7843832023', 'poupança')
       
INSERT INTO usuario (nome, cpf_pk, conta_id_fk)
VALUES ('Renato', '68439741088265', '924293492'),
       ('Adalberto', '845663210798520', '123456789')
       
INSERT INTO banco (nome, cnpj_pk, contas_id_fk, funcionarios)
VALUES ('Santan', '59871369852201', '123456789', 'Marcelo, Marcos, Leonardo, João'),
	   ('Brades', '89641236774137', '924293492', 'Vinícios, Pedro, Romano, Bruno')

INSERT INTO cartao (numero_cartao_pk, dono_cartao_fk, codigo_seguranca, data_validade, conta_associada_id_fk)
VALUES ('12356789123450', '68439741088265', '696', '2030-11-11', '924293492'),
       ('98765432103218', '845663210798520', '257', '2027-09-09', '123456789')
       
SELECT * FROM conta
SELECT * FROM usuario
SELECT * FROM banco
SELECT * FROM cartao