CREATE TABLE pessoa(
    nome VARCHAR(20) NOT NULL,
    altura INT NOT NULL,
    peso INT NOT NULL,
    bmi INT NOT NULL,
    cpf_PK VARCHAR(15) NOT NULL,
    PRIMARY KEY (cpf_PK)
)

CREATE TABLE historicoMedico(
    historicoMed_PK VARCHAR(100) NOT NULL,
    cirurgias VARCHAR(100) NOT NULL,
    limitacoesFisicas VARCHAR(100) NOT NULL,
    historicoFamiliar VARCHAR(100) NOT NULL,
    PRIMARY KEY (historicoMed_PK)
)

CREATE TABLE sinaisVitais(
    pressao_PK VARCHAR(10) NOT NULL,
    respiracao VARCHAR(10) NOT NULL,
    batimentoCardiaco INT NOT NULL,
    oxigenioSangue INT NOT NULL,
    historico_FK VARCHAR(100) NOT NULL,
    PRIMARY KEY (pressao_FK),
    FOREIGN KEY (historico_FK) REFERENCES historicoMedico (historicoMed_PK)
)

CREATE TABLE exercicios(
    esporte_PK VARCHAR(30) NOT NULL,
    duracao INT NOT NULL,
    caloriasQueimadas INT NOT NULL,
    rotina VARCHAR(100) NOT NULL,
    PRIMARY KEY (esporte_PK)
)