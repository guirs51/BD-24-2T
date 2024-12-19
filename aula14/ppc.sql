select * from Produtos

select * from pedidos

select * from clientes

create table categoria (
id_categoria int PRIMARY KEY, 
nome_categoria varchar(80) not null 
); 

 alter table produtos add id_categoria int REFERENCES categoria(id_categoria)

insert into categoria(id_categoria, nome_categoria)
values
(1, 'brinquedo'),
(2, 'bebidas');

update Produtos set id_categoria = 1 where id_produto = 1
update Produtos set id_categoria = 2 where id_produto = 2

select * from categoria

select nome_categoria, nome_produto
from produtos
left join categoria
on produtos.id_categoria = categoria.id_categoria
select count(*) from Produtos 

