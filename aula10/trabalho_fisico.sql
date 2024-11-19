/* trabalho_Logico: */

CREATE TABLE Usuario (
    ID_Usuario Number(4) PRIMARY KEY,
    Nome_Usuario String(30),
    Email_Usuario String(60)
);

CREATE TABLE Conteudo (
    ID_Conteudo Number(5) PRIMARY KEY,
    Tiitulo_Conteudo String(30),
    Genero_Conteudo string(20),
    Ano_Conteudo String30)
);

CREATE TABLE Plano (
    Nome_Plano String(20),
    ID_Plano Number(5) PRIMARY KEY,
    Valor_Plano Number(7))
);

CREATE TABLE Escuta (
    fk_Usuario_ID_Usuario Number(4),
    fk_Conteudo_ID_Conteudo Number(5)
);

CREATE TABLE Tem (
    fk_Usuario_ID_Usuario Number(4),
    fk_Plano_ID_Plano Number(5)
);

CREATE TABLE Musica (
    ID_Musica Number(4) PRIMARY KEY,
    Nome_Musica String(20),
    Genero_Musica String(20)
);

CREATE TABLE Podcast (
    ID_Podcast Number(6) PRIMARY KEY,
    Nome_Podcast String(20),
    Genero_Podcast String(20)
);

CREATE TABLE Playlist (
    ID_Playlist Number(4) PRIMARY KEY,
    FK_Musica Number(4),
    FK_Artista Number(3),
    Nome_Playlist String(30),
    Genero_Playlist String(20)
);

CREATE TABLE Artista (
    ID_Artista Number(3) PRIMARY KEY,
    FK_Musica Number(4),
    Nome_Artista String(20)
);

CREATE TABLE Musica_Podcast (
    FK_Musica Number(4),
    FK_Podcast Number(6),
    FK_Conteudo_ID_Conteudo Number(5)
);

CREATE TABLE Tabela_1 (
    ID_Biblioteca Number(4) PRIMARY KEY,
    FK_Podcast Number(6),
    FK_Artista Number(3),
    FK_Playlist Number(4),
    FK_Musica Number(4),
    Quantidade Number(6)
);
 
ALTER TABLE Escuta ADD CONSTRAINT FK_Escuta_1
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Escuta ADD CONSTRAINT FK_Escuta_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Plano_ID_Plano)
    REFERENCES Plano (ID_Plano)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist ADD CONSTRAINT FK_Playlist_2
    FOREIGN KEY (FK_Musica???, FK_Artista)
    REFERENCES Artista (???, ID_Artista);
 
ALTER TABLE Artista ADD CONSTRAINT FK_Artista_2
    FOREIGN KEY (FK_Musica)
    REFERENCES Musica (ID_Musica);
 
ALTER TABLE Musica_Podcast ADD CONSTRAINT FK_Musica_Podcast_1
    FOREIGN KEY (FK_Musica???, FK_Podcast???, FK_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (???, ???, ID_Conteudo);
 
ALTER TABLE Tabela_1 ADD CONSTRAINT FK_Tabela_1_1
    FOREIGN KEY (FK_Podcast???, FK_Artista???, FK_Playlist???, FK_Musica)
    REFERENCES Musica (???, ???, ???, ID_Musica);