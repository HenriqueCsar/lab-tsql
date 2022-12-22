create table testecte(
	name varchar(200),
	nota int
)

insert into testecte values('Olivia', 10)
insert into testecte values('Ricardo', 10)
insert into testecte values('Fátima', 10)
insert into testecte values('Pamela', 10)
insert into testecte values('Jonatas', 10)
insert into testecte values('Antônio', 10)
insert into testecte values('Mateus', 10)
insert into testecte values('Renata', 10)


create table testecte2(
	name varchar(200),
	nota int
)

insert into testecte2 values('Olivia', 10)
insert into testecte2 values('Ricardo', 10)
insert into testecte2 values('Fátima', 10)
insert into testecte2 values('Pamela', 10)
insert into testecte2 values('Jonatas', 10)
insert into testecte2 values('Antônio', 10)
insert into testecte2 values('Mateus', 10)
insert into testecte2 values('Renata', 10)
insert into testecte2 values('Olivia', 10)
insert into testecte2 values('Ricardo', 10)
insert into testecte2 values('Fátima', 10)
insert into testecte2 values('Pamela', 10)
insert into testecte2 values('Jonatas', 10)
insert into testecte2 values('Antônio', 10)
insert into testecte2 values('Mateus', 10)
insert into testecte2 values('Renata', 10)


select COUNT(*) from testecte with(nolock)
select COUNT(*) from testecte2 with(nolock)


WITH testecte AS (
	SELECT * FROM testecte2 WHERE nota = 10
)
SELECT * FROM testecte WHERE [name] = 'Renata';



drop table if exists hierarquia
create table hierarquia (
	id int identity(1,1),
	nome varchar(200)
)


insert into hierarquia values('Comercial')


select * from hierarquia with(nolock)


drop table if exists HierarquiaNivel
create table HierarquiaNivel (
	id int identity(1,1),
	nome varchar(200),
	descricao varchar(100),
	hierarquiaid int,
	HierarquiaNivelId int,
)


