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
	constraint pk_pedido primary key(codigo)
	constraint fk_pedido foreign key(cod_clinte) references cliente*
);

create table produto (
	codigo integer unique not null,
	descricao varchar(50),
	preco numeric(7,2),
	constraint pk_produto primary key (codigo)
);

select * from produto
alter table pedido alter column descricao set not null;
alter table pedido alter column cod_cliente set not null;
alter table cliente alter column nome set not null;

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