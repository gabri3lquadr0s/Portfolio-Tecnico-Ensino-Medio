CREATE TABLE mapa(
    coordenadas_PK VARCHAR(30) NOT NULL, 
    bioma VARCHAR(15) NOT NULL,
    localizacao_itens VARCHAR(30) NOT NULL, 
    localizacao_player VARCHAR(30) NOT NULL, 
    construcoes VARCHAR(30) NOT NULL, 
    localizacao_inimigos VARCHAR(30) NOT NULL, 
    PRIMARY KEY (Coordenadas_PK)
)

CREATE TABLE player(
    nick_PK VARCHAR(15) NOT NULL,
    itens_no_inventario_FK VARCHAR(100),
    vida INT NOT NULL,
    mana INT NOT NULL,
    habilidades VARCHAR(50),
    localizacao_FK VARCHAR(30) NOT NULL,
    PRIMARY KEY (nick_pk),
    FOREIGN KEY (itens_no_inventario_FK) REFERENCES inventario (itens_guardados_PK), 
    FOREIGN KEY (Localizacao_FK) REFERENCES mapa (localizacao_player)
)

CREATE TABLE inventario(
    slots INT NOT NULL,
    numero_de_itens INT,
    dono_FK VARCHAR(15) NOT NULL,
    itens_guardados_PK VARCHAR(100) NOT NULL,
    PRIMARY KEY (tens_guardados_PK),
    FOREIGN KEY (dono_FK) REFERENCES player (nick_PK)
)

CREATE TABLE item(
    id_codigo_PK VARCHAR(10) NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    utilidade VARCHAR(30) NOT NULL,
    localizacao_FK VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_codigo_PK),
    FOREIGN KEY (Localizacao_FK) REFERENCES mapa (localizacao_itens)
)

CREATE TABLE inimigo(
    nome_PK VARCHAR(15) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    habilidades VARCHAR(100),
    vida INT NOT NULL,
    localizacao_FK VARCHAR(30) NOT NULL,
    PRIMARY KEY (nome_PK),
    FOREIGN KEY (localizacao_FK) REFERENCES mapa (localizacao_inimigos)
)
