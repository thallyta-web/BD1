 --agencia={num_agencia, nome_agencia, cidade_agencia}
 --cilente={cod_cliente, nome_cliente, rua, numero, cidade}
 --emprestimo={num_emprestimo, valor_emprestimo, num_agencia_emprestimo*}
 --devedor={cod_cliente_devedor, num_emprestimo_devedor*}
  --conta={num_conta, saldo_conta, num_agencia_conta*}
 --depositante={cod_cliente_depositante, num_emprestimo_depositante*}

--drop table agencia
 create table agencia (
  --num_agencia integer unique not null,
	num_agencia serial,
	nome_agencia varchar(20) not null,
	cidade_agencia varchar(20),
	constraint pk_agencia primary key (num_agencia)
 );
select * from agencia;

create table cliente (
  --cod_cliente integer not null unique,
	cod_cliente serial,
	nome_cliente varchar(100),
	rua varchar(50),
	numero integer,
	cidade varchar(30),
	constraint pk_cliente primary key (cod_cliente)
);
select * from cliente;

create table emprestimo (
  --num_emprestimo integer not null unique,
	num_emprestimo serial,
	valor_emprestimo numeric(9,2),
	num_agencia_emprestimo integer not null,
	constraint pk_emprestimo primary key (num_emprestimo),
	constraint fk_emprestimo foreign key (num_agencia_emprestimo) references agencia
);
select * from emprestimo;

create table devedor (
	cod_cliente_devedor integer not null unique,
	num_emprestimo_devedor integer,
	constraint pk_devedor primary key (cod_cliente_devedor, num_emprestimo_devedor),
	constraint fk_devedor_cli foreign key (cod_cliente_devedor) references cliente,
	constraint fk_devedor_emp foreign key (num_emprestimo_devedor) references emprestimo
);
select * from devedor;

create table conta (
  --num_conta integer not null unique,
	num_conta serial,
	saldo_conta numeric(9,2),
	num_agencia_conta integer not null,
	constraint pk_conta primary key (num_conta),
	constraint fk_conta foreign key (num_agencia_conta) references conta
);

create table depositante (
	cod_cliente_depositante integer not null,
	num_conta_depositante integer,
	constraint pk_depositante primary key (cod_cliente_depositante, num_conta_depositante),
	constraint fk_depositante_cli foreign key (cod_cliente_depositante) references emprestimo,
	constraint fk_depositante_con foreign key (num_conta_depositante) references conta
);