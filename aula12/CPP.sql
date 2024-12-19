

CREATE TABLE clientes (
ID_Cliente INT PRIMARY KEY,
Nome_Cliente VARCHAR(20) NOT NULL,
Sobrenome_Cliente VARCHAR(40) NOT NULL
);

CREATE TABLE produtos (
ID_Produto INT PRIMARY KEY ,
Nome_Produto VARCHAR(30) NOT NULL,
Descricao TEXT NULL,
Preco NUMERIC CHECK (PRECO > 0 ) NOT NULL,
Qtde_Estoque SMALLINT DEFAULT 0 
);

CREATE TABLE pedidos (
ID_Pedido serial PRIMARY KEY ,
ID_Cliente INT NOT NULL REFERENCES clientes(ID_Cliente),
ID_Produto INT NOT NULL,
Qtde SMALLINT NOT NULL, 
FOREIGN KEY (ID_Produto) REFERENCES produtos(ID_Produto)
);

INSERT INTO produtos(ID_Produto, Nome_Produto, Descricao, Preco , Qtde_Estoque)
Values
(1, 'bola', 'bola colorida', 15.00, 13),
(2, 'Água', 'Água em garrafa de plástico de 1l', 5.00, 52);

INSERT INTO clientes(ID_Cliente, Nome_Cliente, Sobrenome_Cliente)
Values (1, 'João', 'Silveira');

SELECT * FROM clientes 

SELECT * FROM produtos

UPDATE produtos  

UPDATE clientes 


INSERT INTO produtos(ID_Produto, Nome_Produto, Descricao, preco, Qtde_Estoque)
Values
(3 ,  'pistola de agua' ,'pistola que atira agua', 55.00, 120),
(4, 'BatBoneco', 'boneco do batman', 20.00, 45),
(5, 'carrinho', 'carrinho de hot wheels', 100.00 , 12);

UPDATE produtos 

SELECT * FROM produtos 


INSERT INTO Pedidos(ID_Cliente, ID_Produto, Qtde)
Values
(1, 4, 8),
(1, 5, 2),
(1, 3, 4);

UPDATE pedidos

INSERT INTO clientes(ID_Cliente, Nome_Cliente, Sobrenome_Cliente)
Values 
(2, 'joão', 'xavier'),
(3, 'pedro', 'machado'),
(4, 'francisco', 'dias'),
(5, 'gustavo' ,'berned'),
(6, 'kalleu' ,'cross'),
(7, 'kalleb', 'santos '),
(8 , 'mike', 'foxis'),
(9, 'miguel', 'dias'),
(10, 'kwon', 'dead');


SELECT * FROM clientes


INSERT INTO Produtos (ID_Produto, Nome_Produto, Descricao, preco, Qtde_Estoque)
Values
(6, 'pista ataque dos tubarões ', 'pista de carrinhos de Hot wheels', 250.00, 25 ),
(7, 'boneco do super homen', 'boneco do superman de plastico', 11.00, 300),
(8, 'UNO', 'jogo de cartas para todas as idades', 15.00, 100),
(9, 'LEGO Marvel', 'bonecos De Lego dos personagem da Marvel(conjunto)', 500.00, 4),
(10, 'espada brilhante', 'espada de brinquedo feito de pla, stico que brilha', 25.00, 50);


SELECT * FROM Produtos 



SELECT * FROM Pedidos

INSERT INTO Pedidos(ID_Cliente , ID_Produto, Qtde)
Values
(4,10,9),
(5,5,4),
(6,7,6),
(7,8,8),
(8,6,7),
(9,4,5),
(10,9,10);










