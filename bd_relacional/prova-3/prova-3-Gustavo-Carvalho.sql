-- CREATE TABLE --

create table if not exists tbl_cursos(
	id_curso integer primary key,
	nome_curso text,
	instrutor text
);


create table if not exists tbl_alunos(
	id_aluno integer primary key,
	primeiro_nome text,
	sobrenome text,
	idade real
);

create table if not exists tbl_atividades(
	id_atividades integer primary key,
	nome_atividade text,
	data_entrega date,
	id_aluno integer,
	constraint fk_aluno_atividade
		foreign key (id_aluno)
		references tbl_alunos (id_aluno)
);

create table if not exists tbl_alunos_cursos (
    id_aluno integer,
    id_curso integer,
    constraint fk_curso
        foreign key (id_curso)
        references tbl_cursos (id_curso),
	constraint fk_aluno
		foreign key (id_aluno)
		references tbl_alunos (id_aluno)
);

-- INSERTS --

insert into tbl_cursos values
(1, 'Matematica', 'Dr. Johnson'),
(2, 'Ciencia da Computacao', 'Prof. Silva'),
(3, 'Historia', 'Dr. Davis'),
(4, 'Fisica', 'Prof. Miller'),
(5, 'Ingles', 'Dr. Wilson');

insert into tbl_alunos values
(1, 'Alice', 'Silva', 20),
(2, 'Bob', 'Johson', 22),
(3, 'Charlie', 'Brown', 21),
(4, 'David', 'Miller', 72000),
(5, 'Eva', 'Davis', 22);

insert into tbl_alunos_cursos values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

insert into tbl_atividades values
(1, 'Atividade 1', '2023-12-01', 1),
(2, 'Atividade 2', '2023-12-15', 2),
(3, 'Atividade 3', '2023-12-10', 3),
(4, 'Atividade 4', '2023-12-05', 4),
(5, 'Atividade 5', '2023-11-30', 5);


-- EXERCICIO 1 --

select * from tbl_alunos;
select * from tbl_cursos;
select * from tbl_alunos_cursos;
select * from tbl_atividades;


-- EXERCICIO 2 --

create view v_alunos_ciencia_computacao as
select a.primeiro_nome, a.sobrenome, c.nome_curso
from tbl_alunos a
join tbl_alunos_cursos ac on a.id_aluno = ac.id_aluno
join tbl_cursos c on ac.id_curso = c.id_curso
where c.nome_curso = 'Ciencia da Computacao';

select * from v_alunos_ciencia_computacao;


-- EXERCIO 3 --

create or replace procedure sp_atribuir_atividade_aluno(id_atv integer, id_alun integer)
language plpgsql as 
$$
	begin
		update tbl_atividades
		set id_aluno = id_alun
		where id_atividades = id_atv;
	end;
$$;

call sp_atribuir_atividade_aluno(3,5);
select * from tbl_atividades;

-- EXERCICIO 4 --

-- função
create or replace function f_log_atividades()
returns trigger
language plpgsql as
$$
	begin
		create table if not exists tbl_log_atividades (
			log_id serial primary key,
			id_aluno integer,
			id_atividades integer,
			nome_atividade text
		);

		
		insert into tbl_log_atividades (id_aluno, id_atividades, nome_atividade)
		values (old.id_aluno, old.id_atividades, old.nome_atividade);
		
		return old;
	end;
$$;

-- trigger
create trigger trg_log_atividades
after update on tbl_atividades
for each row
execute function f_log_atividades();


update tbl_atividades set nome_atividade='Nova 2' where id_atividades=2;
select * from tbl_atividades;
select * from tbl_log_atividades;