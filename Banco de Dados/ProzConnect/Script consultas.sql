use proz_connect;

-- Descreva a tabela cliente
desc Cliente;

-- Mostre a tabela cliente:
select * from Cliente;

-- Quantos clientes existem na base de dados?
select count(*) from Cliente;

-- Quanto cliente nasceram no ano de 1990:
Select count(*) AS NumeroCliente FROM Cliente Where year(DataNascimento) = 1990;



-- Descreva a tabela endereço:
desc Endereco;

-- Quantos endereços existem na base de dados?
select COUNT(*) AS Num_Enderecos FROM Endereco;

-- Quantas pessoas tem endereço comercial?
select COUNT(*) AS End_Comercial FROM Endereco Where TipoEndereco = 'Comercial';

-- Quantas pessoas tem endereço comercial?
select COUNT(*) AS End_Domiciliar FROM Endereco Where TipoEndereco = 'Residencial';

-- Quantas pessoas são da cidade do Rio de Janeiro?
select COUNT(*) AS City_Rio FROM Endereco Where cidade = 'Rio de Janeiro';

-- Quantas pessoas são do estado de Minas Gerais?
select COUNT(*) AS Estado_MG FROM Endereco Where Estado = 'MG';


-- Descreva a tabela endereço:
desc ExperienciaProfissional;

-- Quantos endereços existem na base de dados?
select COUNT(*) AS Num_Experiencias FROM ExperienciaProfissional;

-- Quanto pessoas foram contratadas no ano de 2015:
Select count(*) AS Contratacoes_2015 FROM ExperienciaProfissional Where year(DataInicio) = 2015;

-- Quantas pessoas foram demitidas no ano de 2023:
Select count(*) AS Demisoes_2023 FROM ExperienciaProfissional Where year(Datatermino) = 2023;

-- Quantas experiencias cadastradas são da areas de Tecnologia:
Select count(*) AS Exp_Tech FROM ExperienciaProfissional Where Areaatuacao = 'Tecnologia';


-- Descreva a tabela experiencia academica:
desc ExperienciaAcademica;

-- Quantos clientes possuem ensino técnico:
select COUNT(*) AS Nº_Tecnico FROM ExperienciaAcademica Where Formacao = 'tecnico';

-- Quantos clientes possuem ensino superior:
select COUNT(*) FROM ExperienciaAcademica Where Formacao = 'Superior';

-- Quantos clientes possuem ensino superior em completo:
select COUNT(*) AS Sup_Completo FROM ExperienciaAcademica Where Formacao = 'Superior'AND Situacao = 'Completo';

-- Quantos clientes possuem ensino superior em Incompleto:
select COUNT(*) AS Sup_Incompleto FROM ExperienciaAcademica Where Formacao = 'Superior'AND Situacao = 'Incompleto';

-- Quantos clientes possuem ensino superior em completo:
select COUNT(*) FROM ExperienciaAcademica Where Situacao = 'Completo';


-- Descreva a tabela Idioma:
desc Idioma;

-- Quantos clientes possuem o idioma Inglês:
select COUNT(*) AS Inglês FROM Idioma Where Idioma = 'Inglês';

-- Quantos clientes possuem o idioma Espanhol:
select COUNT(*) AS Espanhol FROM Idioma Where Idioma = 'Espanhol';

-- Quantos clientes possuem o idioma Alemão:
select COUNT(*) AS Alemão FROM Idioma Where Idioma = 'Alemão';

-- Quantos clientes possuem o idioma Mandarim:
select COUNT(*) AS Mandarim FROM Idioma Where Idioma = 'Mandarim';

-- Quantos clientes possuem o idioma Francês:
select COUNT(*) AS Francês FROM Idioma Where Idioma = 'Francês';


-- Descreva a tabela Sobre:
desc Sobre;

-- Mostre a tabela contato:
select * from Sobre;

-- Quantos clientes possuem Java como hardskill:
select COUNT(*) AS Hard_Java FROM sobre WHERE HardSkills LIKE '%Java%';

-- Quantos clientes possuem Java e Python como hardskill:
select COUNT(*) AS Hard_Java_e_Python FROM sobre WHERE HardSkills LIKE '%Java%' AND HardSkills LIKE '%Python%';

