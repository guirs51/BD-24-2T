CREATE TABLE personagens (
    id_personagem INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE cenarios (
    id_cenario INT PRIMARY KEY,
    nome_cenario VARCHAR(50)
);

CREATE TABLE itens (
    id_item INT PRIMARY KEY,
    nome_item VARCHAR(50),
    valor INT
);

CREATE TABLE coletados (
    id_personagem INT,
    id_item INT,
    id_cenario INT,
    PRIMARY KEY (id_personagem, id_item, id_cenario),
    FOREIGN KEY (id_personagem) REFERENCES personagens(id_personagem),
    FOREIGN KEY (id_item) REFERENCES itens(id_item),
    FOREIGN KEY (id_cenario) REFERENCES cenarios(id_cenario)
);

-- Inserindo dados nas tabelas
INSERT INTO personagens (id_personagem, nome) VALUES
(1, 'Aragorn'),
(2, 'Legolas'),
(3, 'Gimli'),
(4, 'Gandalf'),
(5, 'Sauron'),
(6, 'Elrond'),
(7, 'Gollum');

INSERT INTO cenarios (id_cenario, nome_cenario) VALUES
(1, 'Floresta de Lothlórien'),
(2, 'Montanhas de Moria'),
(3, 'Campo de Batalha de Helm'),
(4, 'Montanhas Nebulosas'),
(5, 'Monte da Perdição');

INSERT INTO itens (id_item, nome_item, valor) VALUES
(1, 'Espada Elfica', 500),
(2, 'Arco Longo', 300),
(3, 'Machado de Batalha', 400),
(4, 'Varinha Mágica', 600),
(5, 'Espada de Aragorn', 500),
(6, 'Anel de Poder', 700);

INSERT INTO coletados (id_personagem, id_item, id_cenario) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(1, 3, 3),
(2, 1, 1),
(5, 6, 5),
(6, 5, 4),
(6, 5, 3);

SELECT * FROM itens

SELECT * FROM cenarios

SELECT * FROM personagens


select nome_item, id_personagem
from itens
join coletados
on itens.id_item = coletados.id_item AND coletados.id_personagem = 1

select nome_cenario, id_personagem
from cenarios
join coletados
on cenarios.id_cenario = coletados.id_cenario AND coletados.id_personagem = 2

select nome_item, id_personagem
from itens
join coletados
on itens.id_item = coletados.Id_item AND coletados.id_personagem = 3 and coletados.id_cenario = 3

select SUM(valor) from itens


