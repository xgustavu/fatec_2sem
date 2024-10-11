-- CREATE TABLE --

create table if not exists tbl_departamentos(
	id_departamento integer primary key,
	nome_departamento text
);


create table if not exists tbl_funcionarios(
	id_funcionario integer primary key,
	primeiro_nome text,
	sobrenome text,
	salario real
);

create table if not exists tbl_tarefas(
	id_tarefa integer primary key,
	nome_tarefa text,
	prazo date,
	id_funcionario integer,
	constraint fk_funcionario_tarefa
		foreign key (id_funcionario)
		references tbl_funcionarios (id_funcionario)
);

create table if not exists tbl_funcionario_departamento (
    id_funcionario integer,
    id_departamento integer,
    constraint fk_departamento
        foreign key (id_departamento)
        references tbl_departamentos (id_departamento),
	constraint fk_funcionario
		foreign key (id_funcionario)
		references tbl_funcionarios (id_funcionario)
);


-- INSERTS --

insert into tbl_departamentos (id_departamento, nome_departamento) values
(1, 'TI'),
(2, 'RH'),
(3, 'Finanças'),
(4, 'Marketing'),
(5, 'Vendas');

insert into tbl_funcionarios (id_funcionario, primeiro_nome, sobrenome, salario) values
(1, 'Clara', 'Ribeiro', 65000),
(2, 'Rodrigo', 'Costa', 80000),
(3, 'Juliana', 'Almeida', 90000),
(4, 'Marcio', 'Cunha', 72000),
(5, 'Helena', 'Lima', 68000);

insert into tbl_funcionario_departamento values
(1, 1),
(2,1),
(3,2),
(4,2),
(5,5);

insert into tbl_tarefas values
(1, 'Tarefa 1', '2023-12-01', 1),
(2, 'Tarefa 2', '2023-12-15', 2),
(3, 'Tarefa 3', '2023-12-10', 3),
(4, 'Tarefa 4', '2023-12-05', 4),
(5, 'Tarefa 5', '2023-11-30', 5);


-- EXERCICIO 1 --

select * from tbl_funcionarios;
select * from tbl_departamentos;
select * from tbl_funcionario_departamento;
select * from tbl_tarefas;


-- EXERCICIO 2 --

create view v_funcionarios_salario_alto as
select upper(primeiro_nome) from tbl_funcionarios
where salario > 70000;

select * from v_funcionarios_salario_alto;


-- EXERCIO 3 --

create or replace procedure sp_atribuir_tarefa_funcionario(id_tar integer, id_func integer)
language plpgsql as 
$$
	begin
		update tbl_tarefas
		set id_funcionario = id_func
		where id_tarefa = id_tar;
	end;
$$;

call sp_atribuir_tarefa_funcionario(2,3);
select * from tbl_tarefas order by 1;

-- EXERCICIO 4 --

-- função
create or replace function registrar_mudanca_salario()
returns trigger
language plpgsql as
$$
	begin
		CREATE TABLE IF NOT EXISTS tbl_log_salario (
			id_log SERIAL PRIMARY KEY,
			id_funcionario INTEGER,
			salario_anterior REAL,
			novo_salario REAL
		);
		
		insert into tbl_log_salario (id_funcionario, salario_anterior, novo_salario)
		values (old.id_funcionario, old.salario, new.salario);

		return new;
	end;
$$;

-- trigger
create trigger tr_log_mudancas_salario
after update of salario on tbl_funcionarios
for each row
execute function registrar_mudanca_salario();


update tbl_funcionarios set salario=10000 where id_funcionario=1;
select * from tbl_funcionarios;
select * from tbl_log_salario;