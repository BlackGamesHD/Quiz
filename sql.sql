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

/*Inserção de algumas perguntas no banco de dados*/

USE [Quiz_Alo]
GO
SET IDENTITY_INSERT [dbo].[perguntas] ON 
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (1, N'De quantos anos é constituído um século?', N'50', N'100', N'1000', N'1500', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (2, N'Qual é o coletivo de cães?', N'MATILHA', N'REBANHO', N'CARDUME', N'MANADA', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (3, N'Normalmente, quantos litros de sangue uma pessoa tem? Em média, quantos são retirados numa doação de sangue?', N'Tem entre 2 a 4 litros. São retirados 450 mililitros', N'Tem entre 4 a 6 litros. São retirados 450 mililitros', N'Tem 10 litros. São retirados 2 litros', N'Tem 7 litros. São retirados 1,5 litros', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (4, N'De quem é a famosa frase “Penso, logo existo”?', N'Platão', N'Descartes', N'Sócrates', N'Galileu Galilei', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (5, N'De onde é a invenção do chuveiro elétrico?', N'França', N'Inglaterra', N'Brasil', N'Austrália', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (6, N'Quais o menor e o maior país do mundo?', N'Malta e Estados Unidos', N'Mônaco e Canadá', N'Nauru e China', N'Vaticano e Rússia', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (7, N'Qual o nome do presidente do Brasil que ficou conhecido como Jango?', N'João Goulart', N'Jacinto Anjos', N'Jânio Quadros', N'João Figueiredo', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (8, N'Qual o grupo em que todas as palavras foram escritas corretamente?', N'Asterístico, beneficiente, meteorologia, entertido', N'Asterisco, beneficente, meteorologia, entretido', N'Asterístico, beneficiente, metereologia, entretido', N'Asterisco, beneficente, metereologia, entretido', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (9, N'Qual o livro mais vendido no mundo a seguir à Bíblia?', N'O Senhor dos Anéis', N'Ela, a Feiticeira', N'Um Conto de Duas Cidades', N'Dom Quixote', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (10, N'Quais os países que têm a maior e a menor expectativa de vida do mundo?', N'Japão e Serra Leoa', N'Austrália e Afeganistão', N'Itália e Chade', N'Estados Unidos e Angola', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (11, N'O que a palavra legend significa em português?', N'Legenda', N'Conto', N'Lenda', N'Legendário', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (12, N'Qual o número mínimo de jogadores numa partida de futebol?', N'8', N'7', N'9', N'5', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (13, N'Quais as duas datas que são comemoradas em novembro?', N'Independência do Brasil e Dia da Bandeira', N'Proclamação da República e Dia Nacional da Consciência Negra', N'Dia do Médico e Dia de São Lucas', N'Black Friday e Dia da Árvore', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (14, N'Quem pintou "Guernica"?', N'Paul Cézanne', N'Diego Rivera', N'Pablo Picasso', N'Salvador Dalí', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (15, N'Quanto tempo a luz do Sol demora para chegar à Terra?', N'12 minutos', N'segundos', N'8 minutos', N'15 minutos', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (16, N'Qual a nacionalidade de Che Guevara?', N'Cubana', N'Argentina', N'Boliviana', N'Panamenha', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (17, N'Quais são os três predadores do reino animal reconhecidos pela habilidade de caçar em grupo, se camuflar para surpreender as presas e possuir sentidos apurados, respectivamente:', N'Tubarão branco, crocodilo e sucuri', N'Tigre, gavião e orca', N'Hiena, urso branco e lobo cinzento', N'Orca, onça e tarântula', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (18, N'Qual personagem folclórico costuma ser agradado pelos caçadores com a oferta de fumo?', N'Caipora', N'Saci', N'Boitatá', N'Negrinho do Pastoreio', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (19, N'Em que período da pré-história o fogo foi descoberto?', N'Neolítico', N'Período da Pedra Polida', N'Idade Média', N'Paleolítico', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (20, N'Qual a velocidade da luz?', N'300 000 000 metros por segundo (m/s)', N'150 000 000 metros por segundo (m/s)', N'199 792 458 metros por segundo (m/s)', N'299 792 458 metros por segundo (m/s)', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (21, N'Em qual local da Ásia o português é língua oficial?', N'Índia', N'Moçambique', N'Macau', N'Portugal', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (22, N'Quem é o autor de “O Príncipe”?', N'Maquiavel', N'Antoine de Saint-Exupéry', N'Thomas Hobbes', N'Rousseau', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (23, N'Quais destas construções famosas ficam nos Estados Unidos?', N'Lincoln Memorial, Sidney Opera House e Burj Khalifa', N'Angkor Wat, Taj Mahal e Skywalk no Grand Canyon', N'Estátua da Liberdade, Golden Gate Bridge e Empire State Building', N'Estátua da Liberdade, Big Ben e The High Line', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (24, N'Quais destas doenças são sexualmente transmissíveis?', N'Aids, tricomoníase e ebola', N'Gonorreia, clamídia e sífilis', N'Hepatite B, febre tifoide e hanseníase', N'Botulismo, cistite e gonorreia', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (25, N'Qual destes países é transcontinental?', N'Rússia', N'Filipinas', N'Istambul', N'Groenlândia', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (26, N'Qual foi o recurso utilizado inicialmente pelo homem para explicar a origem das coisas?', N'A Filosofia', N'A Matemática', N'A Astronomia', N'A Mitologia', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (27, N'Qual das alternativas menciona apenas símbolos nacionais?', N'Bandeira insígnia da presidência, bandeira nacional, brasão, hinos e selo', N'Bandeira nacional, armas nacionais, hino nacional e selo nacional', N'Bandeira nacional, cores nacionais, hino nacional e hino da independência', N'Bandeira insígnia da presidência, brasão flora e fauna e hinos', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (28, N'Quais os planetas do sistema solar?', N'Terra, Vênus, Saturno, Urano, Júpiter, Marte, Netuno, Mercúrio', N'Júpiter, Marte, Mercúrio, Netuno, Plutão, Saturno, Terra, Urano, Vênus', N'Vênus, Saturno, Urano, Júpiter, Marte, Netuno, Mercúrio', N'Júpiter, Marte, Mercúrio, Netuno, Plutão, Saturno, Sol, Terra, Urano, Vênus', 1)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (29, N'Qual era o nome de Aleijadinho?', N'Alexandrino Francisco Lisboa', N'Antônio Francisco Lisboa', N'Francisco Antônio Lisboa', N'Alex Francisco Lisboa', 2)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (30, N'Qual o maior animal terrestre?', N'Baleia Azul', N'Girafa', N'Elefante africano', N'Tubarão Branco', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (31, N'Que líder mundial ficou conhecida como “Dama de Ferro”?', N'Dilma Rousseff', N'Angela Merkel', N'Margaret Thatcher', N'Hillary Clinton', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (32, N'Qual a religião monoteísta que conta com o maior número de adeptos no mundo?', N'Judaísmo', N'Zoroastrismo', N'Islamismo', N'Cristianismo', 4)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (33, N'Quem foi o primeiro homem a pisar na Lua? Em que ano aconteceu?', N'Yuri Gagarin, em 1961', N'Buzz Aldrin, em 1969', N'Neil Armstrong, em 1969.', N'Charles Duke, em 1971', 3)
GO
INSERT [dbo].[perguntas] ([idPergunta], [pergunta], [alternativa_a], [alternativa_b], [alternativa_c], [alternativa_d], [resposta]) VALUES (34, N'Qual o nome do(a) cientista que descobriu o processo de pasteurização e a vacina contra a raiva?', N' Marie Curie', N'Louis Pasteurs', N'Blaise Pascal', N'Antoine Lavoisier', 2)
GO
SET IDENTITY_INSERT [dbo].[perguntas] OFF
GO


