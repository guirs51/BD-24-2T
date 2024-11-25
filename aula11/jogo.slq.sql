/* JOGO_Logico: */

CREATE TABLE Jogo (
    ID_Jogo int PRIMARY KEY,
    Nome_Jogo varchar(10),
    Categoria varchar(10),
    Data_Lancamento int
);

CREATE TABLE Jogador (
    ID_Jogador int PRIMARY KEY,
    PK_Jogo int,
    PK_Mundo int,
    PK_Inventario int,
    Nome_jogador varchar(80),
    Vida int,
    Fome int
);

CREATE TABLE Mundo (
    ID_Mundo int PRIMARY KEY,
    PK_Dimensao int,
    PK_Moob int,
    PK_Bioma int,
    PK_Moob_Inte int,
    TIpo_Mundo varchar(30),
    Modo_Jogo varchar(30)
);

CREATE TABLE Bioma (
    ID_Bioma int PRIMARY KEY,
    Tipo_Bioma varchar(10),
    Nome_Bioma varchar(10),
    Localiza��o_Bioma int
);

CREATE TABLE Moob (
    ID_Moob int PRIMARY KEY,
    Nome_Moob varchar(10),
    Coracao_Moob int,
    Agrassividade int,
    Tipo_Moob varchar(10)
);

CREATE TABLE Dimensao (
    ID_Dimensao int PRIMARY KEY,
    PK_Boss int,
    Localizacao_Dimensao int,
    Nome_Dimensao varchar(10)
);

CREATE TABLE Boss (
    ID_Boss int PRIMARY KEY,
    Dano_Boss int,
    Nome_Boss varchar (10),
    Barra_Vida int
);

CREATE TABLE Inventario (
    ID_Inventario int PRIMARY KEY,
    PK_Item int,
    Quantidade_inventario int
);

CREATE TABLE Item (
    ID_item int PRIMARY KEY,
    Nome_Item varchar(10),
    Tipo_Item varchar(10)
);

CREATE TABLE Moob_Inteligente (
    ID_Moob_Inte int PRIMARY KEY,
    Nome_Moob varchar(10),
    Coracao_Moob_Inte int,
    Tipo_Moob_Inte varchar(10)
);
 
ALTER TABLE Jogador ADD CONSTRAINT FK_Jogador_2
    FOREIGN KEY (PK_Jogo)
    REFERENCES Jogo (ID_Jogo);
 
ALTER TABLE Jogador ADD CONSTRAINT FK_Jogador_3
    FOREIGN KEY (PK_Mundo)
    REFERENCES Mundo (ID_Mundo);
 
ALTER TABLE Jogador ADD CONSTRAINT FK_Jogador_4
    FOREIGN KEY (PK_Inventario)
    REFERENCES Inventario (ID_Inventario);
 
ALTER TABLE Mundo ADD CONSTRAINT FK_Mundo_2
    FOREIGN KEY (PK_Dimensao)
    REFERENCES Dimensao (ID_Dimensao);
 
ALTER TABLE Mundo ADD CONSTRAINT FK_Mundo_3
    FOREIGN KEY (PK_Moob)
    REFERENCES Moob (ID_Moob);
 
ALTER TABLE Mundo ADD CONSTRAINT FK_Mundo_4
    FOREIGN KEY (PK_Bioma)
    REFERENCES Bioma (ID_Bioma);
 
ALTER TABLE Mundo ADD CONSTRAINT FK_Mundo_5
    FOREIGN KEY (PK_Moob_Inte)
    REFERENCES Moob_Inteligente (ID_Moob_Inte);
 
ALTER TABLE Dimensao ADD CONSTRAINT FK_Dimensao_2
    FOREIGN KEY (PK_Boss)
    REFERENCES Boss (ID_Boss);
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_2
    FOREIGN KEY (PK_Item)
    REFERENCES Item (ID_item);

	SELECT * FROM JOGO