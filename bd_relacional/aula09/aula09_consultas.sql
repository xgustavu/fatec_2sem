--1 Liste os nomes das peças e a soma das suas respectivas quantidades

select p.nome, sum(e.quantidade)
from tbl_peca p
inner join tbl_estoque e on p.cod_peca = e.cod_peca
	group by p.nome;

--2 Liste os nomes das peças e a soma das suas respectivas quantidades, caso a soma das peças seja maior que 20

select p.nome, sum(e.quantidade)
from tbl_peca p
inner join tbl_estoque e on p.cod_peca = e.cod_peca
	group by p.nome
	having sum(e.quantidade) > 20;

--3 Listar quantidade de fornecedores em cada cidade.

select cidade, count(cod_fornecedor)
from tbl_fornecedor
	group by cidade;

--4 listar quantidade de peças de cada cor

select p.cor, count(e.quantidade) qtde
from tbl_peca p
inner join tbl_estoque e on p.cod_peca = e.cod_peca
	group by p.cor
	order by qtde asc;

--5 listar quantidade de peças de cada cor. Mostrar somente as que possuem mais de 1 peça.

select p.cor, count(cod_peca) as qtde
from tbl_peca p
	group by p.cor
	having count(cod_peca) > 1;