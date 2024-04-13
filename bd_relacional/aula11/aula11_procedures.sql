-- exercicios

--1 crie uma store procedure chamada proc_upd_nome_depart para atualizar o nome de um departamento. 
--recebe como parametro um codigo inteiro e um novonome em texto atualizando o nome do departamento com esse respectivo codigo

create procedure proc_upd_nome_depart(codigo int, novonome text) language plpgsql as
$$ 
	begin 

	update tbl_departamentos set
	nome = novonome
	where cod_departamento = codigo;

	commit;
	
	end
$$;


call proc_upd_nome_depart(1, 'Departamento 01');


--2 crie uma store procedure chamada proc_copiatbl que cria uma copia da tabela tbl_cidades toda vez que for executada;

create proc_copiatbl() language plpgsql as
$$
	begin

	create table tbl_cidades_copy as table tbl_cidades;

	commit;
	
	end
$$;

call proc_copiatbl();

--3 crie uma store procedure chamada proc_novoprojeto que adiciona um novo projeto na tabela tbl_projetos
--recebe como parametros o nome do projeto e o codigo do departamento

create procedure proc_novoprojeto(nome text, codigo int) language plpgsql as
$$
	begin

	insert into tbl_projetos (nome, cod_projeto) values (nome, codigo);

	commit;

	end
$$;

call proc_novoprojeto('DepartMenos', 2424);

--4 crie uma store procedure chamada proc_delprojeto que deleta um projeto da tbl_projetos
-- recebe como parametro o codigo do projeto

create procedure proc_delprojeto(codigo int) language plpgsql as
$$
	begin

	delete from tbl_projetos
	where cod_projeto = codigo;
	
	commit;

	end
$$;

call proc_delprojeto(2424);

--5 crie uma store procedure chamada proc_projeto_arquivado que recebe o codigo de um projeto.
--a procedure devera criar uma tabela chamada tbl_projetos_arquivados, caso ela nao exista. tabela deve ter 2 colunas: codigo_projeto e nome.
--a procedure deve salvar o projeto do codigo recebido na tbl_projetos_arquivados e deleta-la da tabela tbl_projetos.

create or replace procedure proc_projeto_arquivado(codigo int) language plpgsql as
$$
	begin

	create table if not exists tbl_projetos_arquivados (
		codigo_projeto serial primary key,
		nome text not null
	);

	insert into tbl_projetos_arquivados (codigo_projeto, nome)
	select cod_projeto, nome
	from tbl_projetos
	where cod_projeto = codigo;

	delete from tbl_projetos
	where cod_projeto = codigo;
	
	end
$$;

call proc_projeto_arquivado(2424);

select * from tbl_projetos_arquivados;