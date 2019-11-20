use master

go

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

go

if not exists(select * from sys.tables where name = 'leaderboard')
	create table leaderboard(
	idJogador int identity not null,
	nome varchar(125) not null,
	score int not null
	);

go

/*Inser��o de algumas perguntas no banco de dados*/

USE [Quiz_Alo]
GO
SET IDENTITY_INSERT [dbo].[perguntas] ON 
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (1, N'De quantos anos � constitu�do um s�culo?', N'50', N'100', N'1000', N'1500', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (2, N'Qual � o coletivo de c�es?', N'MATILHA', N'REBANHO', N'CARDUME', N'MANADA', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (3, N'Normalmente, quantos litros de sangue uma pessoa tem? Em m�dia, quantos s�o retirados numa doa��o de sangue?', N'Tem entre 2 a 4 litros. S�o retirados 450 mililitros', N'Tem entre 4 a 6 litros. S�o retirados 450 mililitros', N'Tem 10 litros. S�o retirados 2 litros', N'Tem 7 litros. S�o retirados 1,5 litros', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (4, N'De quem � a famosa frase �Penso, logo existo�?', N'Plat�o', N'Descartes', N'S�crates', N'Galileu Galilei', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (5, N'De onde � a inven��o do chuveiro el�trico?', N'Fran�a', N'Inglaterra', N'Brasil', N'Austr�lia', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (6, N'Quais o menor e o maior pa�s do mundo?', N'Malta e Estados Unidos', N'M�naco e Canad�', N'Nauru e China', N'Vaticano e R�ssia', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (7, N'Qual o nome do presidente do Brasil que ficou conhecido como Jango?', N'Jo�o Goulart', N'Jacinto Anjos', N'J�nio Quadros', N'Jo�o Figueiredo', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (8, N'Qual o grupo em que todas as palavras foram escritas corretamente?', N'Aster�stico, beneficiente, meteorologia, entertido', N'Asterisco, beneficente, meteorologia, entretido', N'Aster�stico, beneficiente, metereologia, entretido', N'Asterisco, beneficente, metereologia, entretido', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (9, N'Qual o livro mais vendido no mundo a seguir � B�blia?', N'O Senhor dos An�is', N'Ela, a Feiticeira', N'Um Conto de Duas Cidades', N'Dom Quixote', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (10, N'Quais os pa�ses que t�m a maior e a menor expectativa de vida do mundo?', N'Jap�o e Serra Leoa', N'Austr�lia e Afeganist�o', N'It�lia e Chade', N'Estados Unidos e Angola', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (11, N'O que a palavra legend significa em portugu�s?', N'Legenda', N'Conto', N'Lenda', N'Legend�rio', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (12, N'Qual o n�mero m�nimo de jogadores numa partida de futebol?', N'8', N'7', N'9', N'5', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (13, N'Quais as duas datas que s�o comemoradas em novembro?', N'Independ�ncia do Brasil e Dia da Bandeira', N'Proclama��o da Rep�blica e Dia Nacional da Consci�ncia Negra', N'Dia do M�dico e Dia de S�o Lucas', N'Black Friday e Dia da �rvore', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (14, N'Quem pintou "Guernica"?', N'Paul C�zanne', N'Diego Rivera', N'Pablo Picasso', N'Salvador Dal�', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (15, N'Quanto tempo a luz do Sol demora para chegar � Terra?', N'12 minutos', N'segundos', N'8 minutos', N'15 minutos', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (16, N'Qual a nacionalidade de Che Guevara?', N'Cubana', N'Argentina', N'Boliviana', N'Panamenha', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (17, N'Quais s�o os tr�s predadores do reino animal reconhecidos pela habilidade de ca�ar em grupo, se camuflar para surpreender as presas e possuir sentidos apurados, respectivamente:', N'Tubar�o branco, crocodilo e sucuri', N'Tigre, gavi�o e orca', N'Hiena, urso branco e lobo cinzento', N'Orca, on�a e tar�ntula', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (18, N'Qual personagem folcl�rico costuma ser agradado pelos ca�adores com a oferta de fumo?', N'Caipora', N'Saci', N'Boitat�', N'Negrinho do Pastoreio', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (19, N'Em que per�odo da pr�-hist�ria o fogo foi descoberto?', N'Neol�tico', N'Per�odo da Pedra Polida', N'Idade M�dia', N'Paleol�tico', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (20, N'Qual a velocidade da luz?', N'300 000 000 metros por segundo (m/s)', N'150 000 000 metros por segundo (m/s)', N'199 792 458 metros por segundo (m/s)', N'299 792 458 metros por segundo (m/s)', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (21, N'Em qual local da �sia o portugu�s � l�ngua oficial?', N'�ndia', N'Mo�ambique', N'Macau', N'Portugal', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (22, N'Quem � o autor de �O Pr�ncipe�?', N'Maquiavel', N'Antoine de Saint-Exup�ry', N'Thomas Hobbes', N'Rousseau', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (23, N'Quais destas constru��es famosas ficam nos Estados Unidos?', N'Lincoln Memorial, Sidney Opera House e Burj Khalifa', N'Angkor Wat, Taj Mahal e Skywalk no Grand Canyon', N'Est�tua da Liberdade, Golden Gate Bridge e Empire State Building', N'Est�tua da Liberdade, Big Ben e The High Line', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (24, N'Quais destas doen�as s�o sexualmente transmiss�veis?', N'Aids, tricomon�ase e ebola', N'Gonorreia, clam�dia e s�filis', N'Hepatite B, febre tifoide e hansen�ase', N'Botulismo, cistite e gonorreia', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (25, N'Qual destes pa�ses � transcontinental?', N'R�ssia', N'Filipinas', N'Istambul', N'Groenl�ndia', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (26, N'Qual foi o recurso utilizado inicialmente pelo homem para explicar a origem das coisas?', N'A Filosofia', N'A Matem�tica', N'A Astronomia', N'A Mitologia', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (27, N'Qual das alternativas menciona apenas s�mbolos nacionais?', N'Bandeira ins�gnia da presid�ncia, bandeira nacional, bras�o, hinos e selo', N'Bandeira nacional, armas nacionais, hino nacional e selo nacional', N'Bandeira nacional, cores nacionais, hino nacional e hino da independ�ncia', N'Bandeira ins�gnia da presid�ncia, bras�o flora e fauna e hinos', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (28, N'Quais os planetas do sistema solar?', N'Terra, V�nus, Saturno, Urano, J�piter, Marte, Netuno, Merc�rio', N'J�piter, Marte, Merc�rio, Netuno, Plut�o, Saturno, Terra, Urano, V�nus', N'V�nus, Saturno, Urano, J�piter, Marte, Netuno, Merc�rio', N'J�piter, Marte, Merc�rio, Netuno, Plut�o, Saturno, Sol, Terra, Urano, V�nus', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (29, N'Qual era o nome de Aleijadinho?', N'Alexandrino Francisco Lisboa', N'Ant�nio Francisco Lisboa', N'Francisco Ant�nio Lisboa', N'Alex Francisco Lisboa', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (30, N'Qual o maior animal terrestre?', N'Baleia Azul', N'Girafa', N'Elefante africano', N'Tubar�o Branco', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (31, N'Que l�der mundial ficou conhecida como �Dama de Ferro�?', N'Dilma Rousseff', N'Angela Merkel', N'Margaret Thatcher', N'Hillary Clinton', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (32, N'Qual a religi�o monote�sta que conta com o maior n�mero de adeptos no mundo?', N'Juda�smo', N'Zoroastrismo', N'Islamismo', N'Cristianismo', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (33, N'Quem foi o primeiro homem a pisar na Lua? Em que ano aconteceu?', N'Yuri Gagarin, em 1961', N'Buzz Aldrin, em 1969', N'Neil Armstrong, em 1969.', N'Charles Duke, em 1971', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (34, N'Qual o nome do(a) cientista que descobriu o processo de pasteuriza��o e a vacina contra a raiva?', N' Marie Curie', N'Louis Pasteurs', N'Blaise Pascal', N'Antoine Lavoisier', 2)
GO
SET IDENTITY_INSERT [dbo].[perguntas] OFF
GO


