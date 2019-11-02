if not exists(select * from sys.databases where name = 'Quiz_Alo')
    create database Quiz_Alo

go

use Quiz_Alo;

go

if not exists(select * from sys.tables where name = 'perguntas')
	create table perguntas(
	idPergunta int identity not null,
	pergunta varchar(250),
	alternativa_a varchar(250),
	alternativa_b varchar(250),
	alternativa_c varchar(250),
	alternativa_d varchar(250),
	resposta int,
	primary key(idPergunta)
	);

go

if not exists(select * from sys.tables where name = 'quantidade_perguntas')
	create table quantidade_perguntas(
	quantidade int
	);
	insert into quantidade_perguntas values (0)

select * from quantidade_perguntas