--1 Listar o nome e a cidade dos fornecedores com mais de 10 peças.Contar só as peças de código 1.

select nome, cidade
from tbl_fornecedor
where cod_fornecedor in (
	select cod_fornecedor
	from tbl_estoque
	where cod_peca = 1 and quantidade > 10
);

--2  Encontre o nome das peças com preço superior a 10 que estão disponíveis em estoque:

select nome
from tbl_peca
where cod_peca in (
	select cod_peca
	from tbl_estoque
) and preco > 10;

--3 Selecione o nome das peças que não estão em estoque:

select nome
from tbl_peca 
where cod_peca not in (
	select cod_peca
	from tbl_estoque
);

--4 Encontre o nome das peças que estão em estoque com uma quantidade maior que 20:

select nome
from tbl_peca
where cod_peca in (
	select cod_peca
	from tbl_estoque
	where quantidade > 10
);

--5 Listar todas as pecas exceto a PLACA, ordenado por nome

select cod_peca, nome, cor, preco, cidade
from tbl_peca
intersect (
	select cod_peca, nome, cor, preco, cidade
	from tbl_peca
	where nome != 'PLACA')
order by nome asc;

--6 Listar o nome e a cor das peças do fornecedor C, ordenado pelo nome da peça

select nome, cor
from tbl_peca
where cod_peca in (
	select cod_peca
	from tbl_estoque
	where cod_fornecedor in (
		select cod_fornecedor
		from tbl_fornecedor
		where nome = 'C'
	)
) order by nome asc;

--7 Listar o nome e a cor de todas as pecas de Londres

select nome, cor
from tbl_peca
intersect (
	select nome, cor
	from tbl_peca
	where  cidade = 'LONDRES');


--8 Encontre o nome das peças que estão disponíveis em estoque em Londres e não estão disponíveis em estoque em Paris:

select p.nome
from tbl_peca as p
where p.cidade = 'LONDRES' and cod_peca in (
	select cod_peca
	from tbl_estoque
	where quantidade > 0 and cod_peca not in (
		select cod_peca
		from tbl_estoque
		where quantidade > 0 and cidade = 'PARIS'
	)
);

--9 Quais os codigos das peças que possuem maior estoque do que a peça de codigo 2?

select distinct cod_peca
from tbl_estoque
where quantidade > (
	select quantidade
	from tbl_estoque
	where cod_peca = 2 
) order by cod_peca asc;
