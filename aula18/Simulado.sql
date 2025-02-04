
CREATE TABLE casa (
    IDcasa INT NOT NULL PRIMARY KEY,
    nomeDaCasa VARCHAR (20)
);

CREATE TABLE Feitico (
    IDFeitico INT NOT NULL PRIMARY KEY,
    NomeFeitico VARCHAR (20)
);

CREATE TABLE Materia (
    IDMateria INT NOT NULL PRIMARY KEY,
    nomeMateria VARCHAR (20),
    IDFeitico INT NOT NULL,
    FOREIGN KEY(IDFeitico) REFERENCES Feitico (IDFeitico)
);

CREATE TABLE professores (
    IDPROFESSO INT NOT NULL PRIMARY KEY,
    nomeProfessor VARCHAR (80),
    idadeProfessor INT,
    IDMateria INT NOT NULL,
    FOREIGN KEY(IDMateria) REFERENCES Materia (IDMateria),
    IDcasa INT NOT NULL,
    FOREIGN KEY(IDcasa) REFERENCES casa (IDcasa),
    IDFeitico INT NOT NULL,
    FOREIGN KEY(IDFeitico) REFERENCES Feitico (IDFeitico)
);

CREATE TABLE personagem (
    idPersonagem INT NOT NULL PRIMARY KEY ,
    nomePersonagem varchar (80),
    dataDeNascimento varchar (100),
    IDcasa INT NOT NULL,
    FOREIGN KEY(IDcasa) REFERENCES  casa (IDcasa),
    IDMateria INT NOT NULL,
    FOREIGN KEY (IDMateria) REFERENCES Materia (IDMateria),
    IDFeitico INT NOT NULL,
    FOREIGN KEY(IDFeitico) REFERENCES Feitico (IDFeitico),
    IDPROFESSOR INT NOT NULL,
    FOREIGN KEY(IDPROFESSOR) REFERENCES professores (IDPROFESSOR)
);

INSERT INTO casa (IDcasa, nomeDaCasa)
VALUES
(1, 'Grifinória'),
(2, 'Corvinal'),
(3, 'Lufa-Lufa'),
(4, 'Sonserina');

INSERT INTO Feitico (IDFeitico, NomeFeitico)
VALUES
(1,'Lumos'),
(2, 'Maldição Imperius'),
(3, 'Transfiguração'),
(4, 'Maldição da Morte');

INSERT INTO Materia (IDMateria, nomeMateria, IDFeitico)
VALUES
(1, 'Defesa Contra as Artes das Trevas', 4),
(2, 'Transfiguração', 3),
(3, 'Trato das Criaturas Mágicas', 2),
(4, 'Herbologia', 1);


INSERT INTO professores (IDPROFESSOR, nomeProfessor, idadeProfessor,IDMateria,IDcasa,IDFeitico)
VALUES
(1, 'Dumbledore', 115, 2,1,3),
(2,'Severo Snape', 38, 1, 4,4),
(3,'Silvano Kettleburn',56,3,3,2),
(4,'Neville Longbottom', 30, 4,1,1);

INSERT INTO personagem (idPersonagem,nomePersonagem,dataDeNascimento,IDMateria, IDcasa, IDFeitico, idprofessor)
VALUES
(1,'Harray potter', '31 de julho de 1980', 1,1,1,1),
(2, 'Draco Lúcio Malfoy', '5 de junho de 1980',1,4,4,2),
(3,'Hermione Granger', '19 de setembro de 1979', 3,1,3,4),
(4,'Ron Weasley', '1 de março de 1980', 4,1,2,1),
(5,'Voldemort', '31 de dezembro de 1926', 1,4,4,1);

SELECT nomePersonagem, nomeDaCasa
FROM  personagem, casa

SELECT  * FROM personagem 
WHERE IDcasa = 1

CREATE OR REPLACE VIEW  view_personagens_grifinoria AS 
SELECT nomePersonagem, dataDeNascimento , nomeDaCasa
FROM personagem
INNER JOIN casa
ON personagem.IDcasa = casa.IDcasa
WHERE personagem.IDcasa = 1

select * from view_personagens_grifinoria 

CREATE INDEX nomePersonagem ON  (idPersonagem)
