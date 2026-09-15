select * from cliente
select * from mercadoria
select * from pedido
select * from itempedido
insert into cliente (codigo, nome_cliente, rua, numero, bairro)
values (3, 'Ana Lima', 'Rua 3', 12, 'Ceilândia');


insert into mercadoria (codigo, descriao, preco)
values (3, 'Mouse sem fio', 129.90);

insert into pedido (codigo,cod_cliente, descricao, data_pedido)
values (1, 1, 'pedido 1', '2026-03-05');

insert into pedido values (2, 'Pedido 2', '2026-03-06', 2);
insert into pedido values (3, 'Pedido 3', '2026-05-07', 3);
insert into pedido values (4, 'Pedido 2', '2026-05-08', 6); --não funciona porque viola a foreign key

insert into itempedido values (1, 1, 1, 3, 30);
insert into itempedido values (2, 1, 2, 5, 100);
insert into itempedido values (1, 2, 3, 2, 60);
insert into itempedido values (2, 2, 1, 1, 10);
insert into itempedido values (1, 3, 3, 10, 100);
insert into itempedido values (2, 3, 2, 20, 400);
insert into itempedido values (3, 3, 1, 30, 900);

insert into itempedido
values (1, 1, 1, 3, 30),
		(2, 1, 2, 5, 100),
		(1, 2, 3, 2, 60),
		(2, 2, 1, 1, 10),
		(1, 3, 3, 10, 100),
		(2, 3, 2, 20, 400),
		(3, 3, 1, 30, 900)

delete from itempedido --apaga todos os dados da tabela
delete from itempedido -- apaga dados de uma tabela de maneira filtrada
where (cod_pedido = 3);

update mercadoria --altera o preco de todas as mercadorias
set preco = 10;

update mercadoria
set preco = 10
where (codigo = 4);

update mercadoria set descricao = 'celular' where (codigo = 6);--?

update mercadoria set descricao = 'garrafa' where (codigo = 5);--?

update cliente set bairro = 'Asa Sul' where (codigo = 3);
delete from cliente where (codigo = 2);