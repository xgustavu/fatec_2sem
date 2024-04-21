-- exercicios

--1 Crie uma funcao denominada fc_soma que recebe dois valores inteiros e retorna o valor resultante da soma de ambos

create function fc_soma(valor1 int, valor2 int)
returns int
language plpgsql as
$$
	declare
	
		soma int;
	
	begin
		soma := valor1 + valor2;
		return soma;
	
	end
$$

select fc_soma(2,3);

--2 Crie uma funcao denominada fc_maior_salario, que sem usar função agregada MAX, retorne o nome do empregado com o maior salario.

create function fc_maior_salario()
returns text
language plpgsql as
$$
	declare
	
		nome_empregado text;
		maior real;

	begin

		select salario into maior
		from tbl_empregados
		order by salario desc
		limit 1;

		select nome into nome_empregado
		from tbl_empregados
		where salario = maior;
	
		return nome_empregado;

	end
$$

select fc_maior_salario();

select nome, salario from tbl_empregados order by salario desc;

--3 crie a funcao fc_media_salario que retorna a media dos salarios dos empregados


create function fc_media_salario()
returns real
language plpgsql as
$$
	declare

		media real;

	begin

		select avg(salario) into media
		from tbl_empregados;
	
		return media;

	end
$$

select fc_media_salario();

--4 Crie a funcao fc_salarios que recebe o código do empregado como parâmetro e retorne o salário, o salário acrescido de 10% e o salário reduzido em 15%.

create or replace function fc_salarios(codigo int, out acres real, out decres real)
language plpgsql as
$$
	begin

		select salario into acres
		from tbl_empregados
		where cod_empregado = codigo;

		acres := acres + acres * 10 / 100;

		select salario into decres
		from tbl_empregados
		where cod_empregado = codigo;

		decres := decres - decres * 10 / 100;

	end
$$	

select fc_salarios(5);

--5 Crie uma funcao denominada fc_projetos que liste o código e o nome de todos os projetos cadastrados.

create or replace function fc_projetos()
returns table (codigo int, nome text)
language plpgsql as
$$
	begin

		return query
		select p.cod_projeto, p.nome
		from tbl_projetos as p;
	
	end
$$

select fc_projetos();

--6 Crie a funcao fc_proj_departmento que recebe o codigo do departamento e mostra quantos projetos o departamento possui

create or replace function fc_proj_departmento(codigo int)
returns int
language plpgsql as
$$
	declare

		soma int;
	
	begin

		select count(*) into soma
		from tbl_projetos
		where cod_departamento = codigo;

		return soma;
	end
$$

select fc_proj_departmento(14);

