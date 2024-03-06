create table cliente(
	nome_cliente text not null primary key,
	cidade_cliente text,
	endereco_cliente text
);

create table conta(
	numero_conta int not null primary key,
	nome_agencia text,
	saldo float
);

create table emprestimo(
	numero_emprestimo int not null primary key,
	numero_agencia int,
	valor float
);

create table agencia(
	nome_agencia text not null primary key,
	cidade_agencia text,
	depositos float
);

create table investimentos(
	nome_investimentos text not null primary key,
	valor float,
	data_investimento date
);

alter table cliente add column idade int;
alter table clinte rename column idade to idades;
alter table cliente drop column idades;

select * from cliente;

alter table cliente rename to tbl_cliente;
alter table conta rename to tbl_conta;
alter table emprestimo rename to tbl_emprestimo;
alter table agencia rename to tbl_agencia;
alter table investimentos rename to tbl_investimento;

create schema gustavo;

drop table tbl_conta, tbl_agencia, tbl_cliente, tbl_emprestimo, tbl_investimento;	