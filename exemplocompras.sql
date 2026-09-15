create table cliente (
	codigo integer unique not null,
	nome varchar(50) not null,
	rua varchar(50),
	numero integer,
	constraint pk_cliente primary key(codigo)
);

create table pedido (
	codigo integer unique not null,
	descricao varchar(50)not null,
	data_pedido date,
	cod_cliente integer not null,
	constraint pk_pedido primary key(codigo),
	constraint fk_pedido foreign key(cod_cliente) references cliente
);

create table produto (
	codigo integer unique not null,
	descricao varchar(50),
	preco numeric(7,2),
	constraint pk_produto primary key (codigo)
);

create table itempedido(
	numero integer not null,
	cod_pedido integer not null,
	cod_produto integer not null,
	quantidade integer,
	valor numeric(7,2),
	constraint pk_itempedido primary key (numero, cod_pedido),
	constraint fk_itempedido_ped foreign key (cod_pedido) references pedido,
	constraint fk_itempedido_pro foreign key (cod_produto) references produto
);

select * from itempedido
 --conta={num_conta, saldo_conta, num_agencia_conta}
 --agencia={num_agencia, nome_age, cidade_age}
 --cilente={cod_cliente, nome_cliente, rua, numero, cidade}
 --emprestimo={num_emprestimo, valor_emprestimo, num_agencia_emprestimo}
 --devedor={cod_cliente_devedor, num_emprestimo_devedor}
 --depositante={cod_cliente_depositante, num_emprestimo_depositante}
