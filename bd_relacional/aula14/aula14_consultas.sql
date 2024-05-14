-- exercicios
--1 crie uma trigger que atualiza a quantidade de projetos da tbl_departamentos caso um projeto for deletado

create or replace function f_rmvprojetos()
returns trigger
language plpgsql as
$$
begin

	update tbl_departamentos d
	set qtde_projetos = (select count(*) 
						 from tbl_projetos 
						 where cod_departamento = old.cod_departamento)
	where d.cod_departamento = old.cod_departamento;
	
	return old;
	
end
$$;

create trigger t_rmvprojetos
after delete on tbl_projetos
for each row
execute function f_rmvprojetos();

--2 crie uma trigger que atualiza a quantidade de projetos da tbl_departamentos caso um novo projeto for adicionado

create or replace function f_addprojetos()
returns trigger
language plpgsql as
$$
begin

	update tbl_departamentos d
	set qtde_projetos = (select count(*) 
						 from tbl_projetos 
						 where cod_departamento = new.cod_departamento)
	where d.cod_departamento = new.cod_departamento;
	
	return new;
	
end
$$;

create trigger t_addprojetos
after insert on tbl_projetos
for each row
execute function f_addprojetos();

--Consultas para testar exercícios 1 e 2:

select d.nome, count(p.cod_departamento) as total
from tbl_projetos p
join tbl_departamentos d on p.cod_departamento = d.cod_departamento
group by d.nome
order by total desc;

delete from tbl_projetos
where nome = 'Projeto P';

insert into tbl_projetos(nome, cod_departamento) values ('Projeto P', 14);

select nome, qtde_projetos from tbl_departamentos
order by qtde_projetos desc;

--3 a) Crie uma tabela chamada tbl_empregado_historico_salario com as colunas cod_empregado e salario e data
--  b) crie uma trigger que salva o salario atual de um empregado toda vez que seu salario for atualizado
-- dica: use a funcao now() para salvar a data

create or replace function f_histsalario()
returns trigger
language plpgsql as
$$
begin

	create table if not exists tbl_empregado_historico_salario (
		cod_empregado int, 
		salario real, 
		dia_hora timestamp);
	
	insert into tbl_empregado_historico_salario (cod_empregado, salario, dia_hora) values (
		old.cod_empregado, 
		old.salario, 
		now() );
		
	return old;
	
end
$$;

create or replace trigger t_empregado_historio_salario
after update on tbl_empregados
for each row
execute function f_histsalario();

--Consultas para testar exercicio 3:

update tbl_empregados
set salario = 5600.00
where nome = 'Lúcia Castro';

select * from tbl_empregados
where nome = 'Lúcia Castro';

select * from tbl_empregado_historico_salario;
	
--4 a) crie uma coluna chamada data_atualizacao na tbl_empregados do tipo TIMESTAMP
-- b) crie uma trigger que toda vez que os dados do empregado forem atualizados, que essa data tambem seja atualizada. 

alter table tbl_empregados add data_atualizacao timestamp;

create or replace function f_data_atualizacao()
returns trigger
language plpgsql as
$$
begin

	new.data_atualizacao = now();
	
	return new;

end
$$;

create trigger t_data_atualizacao
before update or insert on tbl_empregados
for each row
execute function f_data_atualizacao();
