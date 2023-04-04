CREATE TABLE usuario(
    nome VARCHAR(50) NOT NULL,
    email_PK VARCHAR(50) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    playlists_FK VARCHAR(100),
    albuns_FK VARCHAR(100),
    musicas_FK VARCHAR(100),
    PRIMARY KEY (email_PK),
    FOREIGN KEY (playlist_FK) REFERENCES playlist (id_PK),
    FOREIGN KEY (albuns_FK) REFERENCES album (id_PK),
    FOREIGN KEY (musicas_FK) REFERENCES musicas (id_PK)
);

CREATE TABLE musicas(
    titulo VARCHAR(100) NOT NULL,
    id_PK VARCHAR(30) NOT NULL,
    album_FK VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    genero_musical_FK VARCHAR(100) NOT NULL,
    playlists_FK VARCHAR(100) NOT NULL,
    artista_FK VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_PK),
    FOREIGN KEY (album_FK) REFERENCES album (id_PK),
    FOREIGN KEY (playlists_FK) REFERENCES playlist (id_PK),
    FOREIGN KEY (artista_FK) REFERENCES artista (id_PK)
);

CREATE TABLE album(
    titulo VARCHAR(100) NOT NULL,
    id_PK VARCHAR(30) NOT NULL,
    musicas_FK VARCHAR(1000) NOT NULL,
    artista_FK VARCHAR(100) NOT NULL,
    duracao_total INT NOT NULL,
    PRIMARY KEY (id_PK),
    FOREIGN KEY (musicas_FK) REFERENCES musicas (id_PK),
    FOREIGN KEY (artista_FK) REFERENCES artista (id_PK)
);

CREATE TABLE playlist(
    nome VARCHAR(100) NOT NULL,
    id_PK VARCHAR(30) NOT NULL,
    musicas_FK VARCHAR(100),
    usuario_dono_FK VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    PRIMARY KEY (id_PK),
    FOREIGN KEY (musicas_FK) REFERENCES musicas (id_PK),
    FOREIGN KEY (usuario_dono_FK) REFERENCES usuario (email_PK)
);

CREATE TABLE artista(
    nome VARCHAR(100) NOT NULL,
    id_PK VARCHAR(30) NOT NULL,
    albums_FK VARCHAR(100),
    musicas_FK VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_PK),
    FOREIGN KEY (albums_FK) REFERENCES album (id_PK),
    FOREIGN KEY (musicas_FK) REFERENCES musicas (id_PK)
);
