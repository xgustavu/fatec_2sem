create table usuario(nome varchar(100), cidade varchar(100));
create table cidade(nome varchar(100), estado varchar(100));

insert into usuario(nome, cidade) values('Isaac', 'Jacarei');
insert into usuario(nome, cidade) values('André', 'Pinda');
insert into usuario(nome, cidade) values('Edlaine', 'Jacarei');
insert into usuario(nome, cidade) values('Guilherme', 'SP');

insert into cidade(nome, estado) values('Jacarei', 'SP');
insert into cidade(nome, estado) values('Pinda', 'SP');
insert into cidade(nome, estado) values('SP', 'SP');
insert into cidade(nome, estado) values('Brasilia', 'DF');
insert into cidade(nome, estado) values('Palmas', 'TO');


select * from usuario u 
	join cidade c on u.cidade = c.nome;

select * from usuario except (
	select * from usuario
	where nome = 'Guilherme'
);

select * from usuario
	where nome = 'André' union (
		select *
		from cidade
		where estado = 'SP'
);


