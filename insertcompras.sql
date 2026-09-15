select * from cliente
select * from mercadoria

insert into cliente (codigo, nome_cliente, rua, numero, bairro)
values (1, 'Ana Lima', 'Rua 3', 12, 'Ceilândia');
insert into cliente (codigo, nome_cliente, rua, numero, bairro)
values (2, 'Pedro Lima', 'Rua 3', 12, 'Ceilândia');
insert into cliente (codigo, nome_cliente, rua, numero, bairro)
values (3, 'João Souza', 'Rua 7', 10, 'Asa Norte');
insert into cliente (codigo, nome_cliente, rua, bairro) --*
values (4, 'José Ferraz', 'Rua 5', 'Asa Sul');
insert into cliente
values (5, 'Maria');

insert into mercadoria (codigo, descricao, preco)
values (1, 'Mouse sem fio', 129.90);
insert into mercadoria (codigo, descricao, preco)
values (2, 'Teclado mecânico', 100.90);
insert into mercadoria (codigo, descricao, preco)
values (3, 'notebook', 10000.0);
insert into mercadoria (codigo, descricao, preco)
values (4, null, 98.00);
insert into mercadoria (codigo, descricao, preco)
values (5, '', 100.90);
insert into mercadoria (codigo, descricao, preco)
values (6, 'garrafa', 591.098);