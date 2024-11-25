/* netlfix.logico: */

CREATE TABLE Usuario (
    ID_Usuario int  PRIMARY KEY,
    ID_Filme int ,
    ID_Serie int ,
    ID_Plano int ,
    ID_Favorito int,
    ID_Desejo int ,
    ID_Avaliacao int,
    Nome_Usuario varchar(20),
    Email varchar(100)
);

select * from Usuario

CREATE TABLE Filme (
    ID_Filme int PRIMARY KEY,
    Nome_Filme varchar,
    Classificacao_Filme varchar(20),
    Duracao_Filme varchar(50)
);

CREATE TABLE Genero (
    ID_Genero int PRIMARY KEY,
    ID_Filme int,
    ID_Serie int,
    Tipos_Generos varchar(20),
    Quantidade_Generos int
);

CREATE TABLE Episodio (
    ID_Episodio int PRIMARY KEY,
    Nome_Episodio int,
    Quantidade_Episodio int,
    Duracao_Episodio varchar(30)
);

CREATE TABLE Avaliacao (
    ID_Avaliacao int PRIMARY KEY,
    ID_Series int,
    ID_FIlme int,
    TIpo_avaliacao varchar(10),
    Nota_Valiacao varchar(5)
);

CREATE TABLE ListaDeDesejos (
    ID_Lista_Desejos int PRIMARY KEY,
    Quantidade_De_Desejos int,
    Nome_Desejo int
);

CREATE TABLE Series  (
    ID_Serie int PRIMARY KEY,
    ID_Episodio int,
    Nome_serie varchar(50),
    Classificacao_serie varchar(20)
);

CREATE TABLE Planos (
    ID_Plano int PRIMARY KEY,
    Tipo_Plano int,
    Valor_Plano int
);

CREATE TABLE Favoritos (
    ID_Favoritos int PRIMARY KEY,
    Quantidade int
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (ID_Filme)
    REFERENCES Filme (ID_Filme);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_3
    FOREIGN KEY (ID_Serie)
    REFERENCES Series  (ID_Serie);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_4
    FOREIGN KEY (ID_Plano)
    REFERENCES Planos (ID_Plano);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_5
    FOREIGN KEY (ID_Favorito)
    REFERENCES Favoritos (ID_Favoritos);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_6
    FOREIGN KEY (ID_Desejo)
    REFERENCES ListaDeDesejos (ID_Lista_Desejos);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_7
    FOREIGN KEY (ID_Avaliacao)
    REFERENCES Avaliacao (ID_Avaliacao);
 
ALTER TABLE Genero ADD CONSTRAINT FK_Genero_2
    FOREIGN KEY (ID_Filme)
    REFERENCES Filme (ID_Filme);
 
ALTER TABLE Genero ADD CONSTRAINT FK_Genero_3
    FOREIGN KEY (ID_Serie)
    REFERENCES Series  (ID_Serie);
 
ALTER TABLE Episodio ADD CONSTRAINT FK_Episodio_2
    FOREIGN KEY (Duracao_Episodio)
    REFERENCES Series  (ID_Serie);
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_2
    FOREIGN KEY (ID_Series)
    REFERENCES Series  (ID_Serie);
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_3
    FOREIGN KEY (ID_FIlme)
    REFERENCES Filme (ID_Filme);
 
ALTER TABLE Series  ADD CONSTRAINT FK_Series _2
    FOREIGN KEY (ID_Episodio)
    REFERENCES Episodio (ID_Episodio);
 
ALTER TABLE Favoritos ADD CONSTRAINT FK_Favoritos_2
    FOREIGN KEY (ID_Filme_Favo???, ID_Serie_Favo???, ID_Serie_Fav???, ID_Filme_Fav???, Campo???, ID_Filme???, ID_Series)
    REFERENCES Series  (???, ???, ???, ???, ???, ???, ID_Serie);

    SELECT * FROM Usuario