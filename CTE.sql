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
	id int primary key identity(1,1),
	nome varchar(200)
)


insert into hierarquia values('Comercial')


select * from hierarquia with(nolock)


drop table if exists HierarquiaNivel
create table HierarquiaNivel (
	id int identity(1,1),
	nome varchar(200),
	descricao varchar(100),
	hierarquiaid int foreign key references hierarquia(id),
	HierarquiaNivelId int,
)

/*Primeiro Nível*/
insert into HierarquiaNivel values('João', 'Adminsitrador', 1, null)
insert into HierarquiaNivel values('Rodrigo', 'Adminsitrador', 1, null)

/* Segundo Nível*/
insert into HierarquiaNivel values('Gustavo', 'Gerente', 1, 1)
insert into HierarquiaNivel values('Renata', 'Gerente', 1, 1)

/*Gerente do Rodrigo*/
insert into HierarquiaNivel values('Carlos', 'Gerente', 1, (select MAX(id) from HierarquiaNivel
where HierarquiaNivelId is null))


/* Terceiro Nível*/
insert into HierarquiaNivel values('Ricardo', 'Analista', 1, 2)
insert into HierarquiaNivel values('Pedro', 'Analista', 1, 2)

/*Analista Gerente*/
insert into HierarquiaNivel values('Camila', 'Analista', 1, 5)

/*Analista Gerente Rodrigo*/
insert into HierarquiaNivel values('Raquel', 'Analista', 1, 6)




select * from HierarquiaNivel
order by descricao


/*Query Hierarquia Nível*/

select *
from HierarquiaNivel a with(nolock)
join HierarquiaNivel b with(nolock) on b.HierarquiaNivelId = a.id
join HierarquiaNivel c with(nolock) on c.HierarquiaNivelId = b.id





select MAX(id) from HierarquiaNivel
where HierarquiaNivelId is null