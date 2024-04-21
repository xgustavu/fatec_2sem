-- Criar banco de dados bd_sistema_bancario

drop database if exists bd_sistema_bancario;
create database bd_sistema_bancario;


-- Criar 5 tabelas quaisquer

create table carro (cod integer);
create table bicicleta (cod integer);
create table moto (cod integer);
create table lancha (cod integer);
create table submarino (cod integer);


-- Criar tabelas conforme MER (Sistema Bancario):

create table cliente (
	nome_cliente text, 
	cidade_cliente text, 
	endereco_cliente text);

create table emprestimo(
	numero_emprestimo integer, 
	nome_agencia text, 
	valor float);

create table conta(
	numero_conta integer, 
	nome_agencia text, 
	saldo float);

create table agencia(
	nome_agencia text, 
	cidade_agencia text, 
	depositos float);

-- Deletar as 5 tabelas criadas aleatoriamente

drop table carro;
drop table bicicleta;
drop table moto;
drop table lancha;
drop table submarino;

-- alterar as tabelas conforme o MER atualizado

alter table cliente rename to tbl_cliente;
alter table emprestimo rename to tbl_emprestimo;
alter table conta rename to tbl_conta;
alter table agencia rename to tbl_agencia;

alter table tbl_cliente add column idade integer;
alter table tbl_cliente add column cpf integer;
alter table tbl_agencia rename column cidade_agencia to endereco_agencia;

-- Criar um esquema com o seu nome

create schema gustavo;