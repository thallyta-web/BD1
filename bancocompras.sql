create table cliente (
	codigo integer unique not null,
	nome varchar(50),
	rua varchar(50),
	numero integer,
	constraint pk_cliente primary key(codigo)
);

select * from cliente;

create table pedido (
	codigo integer unique not null,
	descricao varchar(50),
	data_pedido date,
	cod_cliente integer,
	constraint pk_pedido primary key(codigo),
	constraint fk_pedido foreign key(cod_cliente) references cliente
);

select * from pedido;

create table produto (
	codigo integer unique not null,
	descricao varchar(50),
	preco integer,
	constraint pk_produto primary key(codigo)
);

select * from produto;