--1 crie uma view chamada v_depcidade que liste o nome de cada departamento com o nome da cidade onde este departamento está localizado.
--Após a criacao executar Select * from v_depcidade; retorna 36 linhas

create view v_depcidade (departamento, cidade)
as select d.nome as departamento, c.nome as cidade from tbl_departamentos d
join tbl_cidades c on d.cod_cidade = c.cod_cidade;

select * from v_depcidade;

--2 crie uma view denominada v_depcidadehouston, a partir de v_depcidade que mostre somente os departamentos localizados em Houston
-- execute select * from v_depcidadehouston

create view v_depcidadehouston (departamento)
as select departamento as departamento from v_depcidade
where cidade = 'Houston';

select * from v_depcidadehouston;

--3 Crie uma visão denominada de v_opsalario, a qual lista a soma e média de todos os salários dos empregados.
-- execute select * from v_opsalario

create view v_opsalario (soma, media)
as select sum(salario) as soma, avg(salario) as media from tbl_empregados;

select * v_opsalario;

--4 Criar a view vw_empregados_salarial que exibe o nome e o salário de todos os empregados com salário acima de 5500.
-- execute select * from v_empregados_salarial

create view v_empregados_salarial(nome, salario)
as select nome as nome, salario as salario from tbl_empregados
where salario > 5500;

select * from v_empregados_salarial;

--5 criar uma view v_departemp para listar os departamentos e a quantidade de empregados em cada um
-- listar os departamentos e as quantidades por orderm decrescente de quantidade.

create view v_departemp (departamento, quantidade)
as select d.nome as departamento, count(e.nome) as quantidade from tbl_departamentos d
join tbl_empregados e on d.cod_departamento = e.cod_departamento
group by departamento
order by quantidade desc;

select * from v_departemp;

--6 criar uma view v_departrouble para listar os nomes dos departamentos que possuem mais projetos do que empregados.


