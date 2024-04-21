create table tbl_cidades(
cod_cidade serial primary key,
nome text not null);

create table tbl_departamentos(
cod_departamento serial primary key,
nome text not null,
data_inicio date,
cod_cidade int references tbl_cidades(cod_cidade));

create table tbl_projetos(
cod_projeto serial primary key,
nome text not null,
cod_departamento int references tbl_departamentos(cod_departamento));

create table tbl_empregados
(cod_empregado serial primary key,
 nome text,
 data_nascimento date,
 endereco text,
 sexo char,
 salario real,
 cod_departamento int references tbl_departamentos(cod_departamento)
 );

 INSERT INTO tbl_cidades (nome) VALUES
('New York'),
('Los Angeles'),
('Chicago'),
('Houston'),
('Phoenix'),
('Philadelphia'),
('San Antonio'),
('San Diego'),
('Dallas'),
('San Jose'),
('Austin'),
('Jacksonville'),
('San Francisco'),
('Columbus'),
('Indianapolis'),
('Fort Worth'),
('Charlotte'),
('Seattle'),
('Denver'),
('El Paso'),
('Detroit'),
('Washington'),
('Boston'),
('Memphis'),
('Nashville'),
('Portland'),
('Oklahoma City'),
('Las Vegas'),
('Baltimore'),
('Louisville'),
('Milwaukee'),
('Albuquerque'),
('Tucson'),
('Fresno'),
('Sacramento'),
('Kansas City'),
('Long Beach'),
('Mesa'),
('Atlanta'),
('Colorado Springs'),
('Raleigh'),
('Omaha'),
('Miami'),
('Tampa'),
('Minneapolis'),
('New Orleans'),
('Cleveland'),
('Honolulu');

INSERT INTO tbl_departamentos (nome, data_inicio, cod_cidade) VALUES
('Departamento 1', '2023-01-01', 1),
('Departamento 2', '2023-02-15', 2),
('Departamento 3', '2023-03-10', 3),
('Departamento 4', '2023-04-20', 4),
('Departamento 5', '2023-05-05', 4),
('Departamento 6', '2023-06-30', 4),
('Departamento 7', '2023-07-12', 4),
('Departamento 8', '2023-08-22', 5),
('Departamento 9', '2023-09-18', 5),
('Departamento 10', '2023-10-05', 10),
('Departamento 11', '2023-11-11', 10),
('Departamento 12', '2023-12-25', 10),
('Departamento 13', '2024-01-03', 10),
('Departamento 14', '2024-02-14', 10),
('Departamento 15', '2024-03-21', 10),
('Departamento 16', '2024-04-02', 10),
('Departamento 17', '2024-05-17', 10),
('Departamento 18', '2024-06-28', 18),
('Departamento 19', '2024-07-30', 18),
('Departamento 20', '2024-08-08', 28),
('Departamento 21', '2024-09-10', 21),
('Departamento 22', '2024-10-12', 21),
('Departamento 23', '2024-11-20', 21),
('Departamento 24', '2024-12-24', 21),
('Departamento 25', '2025-01-07', 21),
('Departamento 26', '2025-02-19', 21),
('Departamento 27', '2025-03-25', 24),
('Departamento 28', '2025-04-30', 24),
('Departamento 29', '2025-05-02', 24),
('Departamento 30', '2025-06-15', 30),
('Departamento 31', '2025-07-22', 31),
('Departamento 32', '2025-08-11', 32),
('Departamento 33', '2025-09-09', 30),
('Departamento 34', '2025-10-28', 30),
('Departamento 35', '2025-11-15', 30),
('Departamento 36', '2025-12-10', 30);

INSERT INTO tbl_projetos (nome, cod_departamento) VALUES
('Projeto A', 1),
('Projeto B', 2),
('Projeto C', 2),
('Projeto D', 1),
('Projeto E', 4),
('Projeto F', 4),
('Projeto G', 4),
('Projeto H', 6),
('Projeto I', 6),
('Projeto J', 10),
('Projeto K', 11),
('Projeto L', 12),
('Projeto M', 13),
('Projeto N', 14),
('Projeto O', 14),
('Projeto P', 14),
('Projeto Q', 14),
('Projeto R', 14),
('Projeto S', 14),
('Projeto T', 24);


INSERT INTO tbl_empregados (nome, data_nascimento, endereco, sexo, salario, cod_departamento) VALUES
('José da Silva', '1990-05-15', 'Rua das Flores, 123, São Paulo, SP', 'M', 5000.00, 1),
('Maria dos Santos', '1988-03-20', 'Avenida Central, 456, Rio de Janeiro, RJ', 'F', 5200.00, 2),
('Antônio Oliveira', '1987-07-10', 'Rua da Praia, 789, Salvador, BA', 'M', 4800.00, 3),
('Ana Luiza Souza', '1992-02-25', 'Avenida das Palmeiras, 101, Belo Horizonte, MG', 'F', 5300.00, 3),
('Carlos Pereira', '1986-09-18', 'Rua dos Coqueiros, 222, Fortaleza, CE', 'M', 5100.00, 3),
('Mariana Santos', '1991-12-08', 'Avenida das Árvores, 333, Recife, PE', 'F', 4900.00, 3),
('Paulo Rodrigues', '1989-04-30', 'Rua das Pedras, 444, Brasília, DF', 'M', 5500.00, 7),
('Luísa Ferreira', '1993-08-05', 'Avenida das Flores, 555, Porto Alegre, RS', 'F', 5100.00, 8),
('Fernando Silva', '1986-11-12', 'Rua do Sol, 666, Manaus, AM', 'M', 5400.00, 9),
('Isabela Santos', '1990-01-22', 'Avenida da Lua, 777, Natal, RN', 'F', 5200.00, 10),
('Ricardo Almeida', '1987-06-19', 'Rua das Estrelas, 888, São Luís, MA', 'M', 5300.00, 10),
('Camila Lima', '1992-10-15', 'Avenida do Mar, 999, Belém, PA', 'F', 5000.00, 10),
('Gustavo Costa', '1988-04-03', 'Rua das Montanhas, 1111, Florianópolis, SC', 'M', 5600.00, 10),
('Juliana Vieira', '1993-07-28', 'Avenida da Praça, 1234, Cuiabá, MT', 'F', 5200.00, 10),
('Marcos Santos', '1989-09-07', 'Rua do Rio, 5678, Goiânia, GO', 'M', 5500.00, 15),
('Luciana Ferreira', '1991-05-11', 'Avenida da Cachoeira, 9876, Curitiba, PR', 'F', 5400.00, 15),
('André Oliveira', '1986-02-14', 'Rua das Cascatas, 5432, Maceió, AL', 'M', 5300.00, 17),
('Patrícia Gomes', '1990-11-29', 'Avenida das Dunas, 8765, Vitória, ES', 'F', 5100.00, 18),
('Felipe Pereira', '1987-03-06', 'Rua da Serra, 1357, Palmas, TO', 'M', 5710.00, 19),
('Laura Ribeiro', '1992-06-08', 'Avenida das Ondas, 8642, João Pessoa, PB', 'F', 5200.00, 20),
('Roberto Alves', '1988-12-01', 'Rua dos Lagos, 2468, Teresina, PI', 'M', 5400.00, 20),
('Aline Barbosa', '1993-04-17', 'Avenida dos Rios, 9753, Boa Vista, RR', 'F', 5100.00, 20),
('Sérgio Pereira', '1987-05-29', 'Rua dos Campos, 1234, Macapá, AP', 'M', 5500.00, 20),
('Elaine Silva', '1991-09-26', 'Avenida das Praias, 4321, Aracaju, SE', 'F', 5300.00, 20),
('Cristiano Santos', '1988-08-09', 'Rua das Montanhas, 8765, Porto Velho, RO', 'M', 5000.00, 20),
('Adriana Lima', '1993-01-05', 'Avenida do Céu, 7890, Boa Vista, RR', 'F', 5600.00, 20),
('Renato Gomes', '1986-09-25', 'Rua das Estrelas, 6543, Rio Branco, AC', 'M', 5200.00, 20),
('Isabella Carvalho', '1990-05-19', 'Avenida da Lua, 9876, Vitória, ES', 'F', 5500.00, 28),
('Marcos Fernandes', '1987-03-14', 'Rua do Sol, 6543, Maceió, AL', 'M', 5700.00, 29),
('Larissa Martins', '1992-08-28', 'Avenida das Ondas, 2345, João Pessoa, PB', 'F', 5400.00, 30),
('Rafael Ferreira', '1986-10-23', 'Rua das Praias, 6543, Aracaju, SE', 'M', 5200.00, 31),
('Carolina Santos', '1990-02-10', 'Avenida dos Rios, 9876, Porto Velho, RO', 'F', 5000.00, 32),
('Bruno Oliveira', '1989-07-07', 'Rua dos Campos, 5432, Teresina, PI', 'M', 5300.00, 33),
('Fernanda Barbosa', '1992-03-14', 'Avenida das Dunas, 1357, Teresina, PI', 'F', 5600.00, 34),
('Eduardo Ribeiro', '1987-12-04', 'Rua do Rio, 5432, Cuiabá, MT', 'M', 5500.00, 35),
('Silvia Lima', '1991-02-03', 'Avenida da Praça, 8765, Campo Grande, MS', 'F', 5200.00, 36),
('Daniel Almeida', '1988-06-11', 'Rua das Cascatas, 1234, Palmas, TO', 'M', 5400.00, 36),
('Mônica Vieira', '1993-11-30', 'Avenida da Serra, 2468, Natal, RN', 'F', 5300.00, 36),
('Gustavo Gomes', '1986-09-25', 'Rua das Montanhas, 5432, Belo Horizonte, MG', 'M', 5700.00, 36),
('Lúcia Castro', '1990-05-19', 'Avenida das Árvores, 7890, Curitiba, PR', 'F', 5600.00, 36);



-- exercicios


--1 Crie uma funcao denominada fc_soma que recebe dois valores inteiros e retorna o valor resultante da soma de ambos



--2 Crie uma funcao denominada fc_maior_salario, que sem usar função agregada MAX, retorne o nome do empregado com o maior salario.



--3 crie a funcao fc_media_salario que retorna a media dos salarios dos empregados




--4 Crie a funcao fc_salarios que recebe o código do empregado como parâmetro e retorne o salário, o salário acrescido de 10% e o salário reduzido em 15%.



--5 Crie uma funcao denominada fc_projetos que liste o código e o nome de todos os projetos cadastrados.



--6 Crie a funcao fc_proj_departmento que recebe o codigo do departamento e mostra quantos projetos o departamento possui


