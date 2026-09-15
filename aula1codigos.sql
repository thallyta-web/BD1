create table Aluno (
	ra integer,
	nome varchar(50),
	datanascimento date
);


create table Alunos (
	ra integer UNIQUE NOT NULL,
	nome varchar(50),
	datanascimento date,
	CONSTRAINT pk_alunos PRIMARY KEY(ra)
);


SELECT * FROM alunos;

create table disciplina (
	codigo integer not null unique,
	nome varchar (20) not null,
	sigla char(3),
	ra_aluno integer,
	constraint pk_disciplina primary key(codigo),
	constraint fk_disciplina foreign key(ra_aluno) references alunos
);

Select * from disciplina;

-- cliente={codigo, nome, rua, numero}
-- pedido={codigo, descricao, data, codigo_cliente}
-- item_pedido={numero, codigo_pedido* quantidade, valor, codigo_produto}
-- produto={codigo, descricao, preco}