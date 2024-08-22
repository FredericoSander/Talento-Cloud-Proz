-- criação do banco de dados para o cenário de site de repositório Proz Connect
create database Proz_Connect;

-- drop database Proz_Connect;

use Proz_Connect;


create table Cliente(
	idCliente int auto_increment primary key,
    Nome varchar(10),
    Sobrenome varchar(20),
    CPF char(11) not null,
    DataNascimento date not null,
    constraint unique_cpf_client unique (CPF)
    );

-- drop table Endereco;

create table Endereco(
	idEndereco int auto_increment primary key,
    logradouro varchar(30),
    Número int not null,
    Complemento varchar(45),
    Bairro varchar(20),
    Cidade varchar(20),
    Estado Varchar(20),
    CEP Varchar(9),
    Pais Varchar(20),
    TipoEndereco enum('Residencial', 'Comercial'),
    idCliente int,
    constraint fk_Cliente foreign key (idCliente) references Cliente(idCliente)
   );
  
  -- drop table ExperienciaProfissional;
  
create table ExperienciaProfissional(
	idExpProfissional int auto_increment primary key,
    idCliente int,
    NomeEmpresa varchar(45) not null,
    Areaatuacao varchar(45) not null,
    Cargo varchar(30),
    DataInicio date,
    Datatermino date,
    Descricaoatividades varchar(200),
    constraint fk_ProCliente foreign key (idCliente) references Cliente(idCliente)
   );

 create table ExperienciaAcademica(
	idExperienciaAcademica int auto_increment primary key,
    idCliente int,
    Formacao  enum('Fundamental','Médio','Técnico','Superior'),
    Situacao  enum('Completo','Em andamento','Incompleto'),
    Curso varchar(45) not null,
    Instituicao varchar(45) not null,
    DataInicio date,
    Datatermino date,
    constraint fk_AcadCliente foreign key (idCliente) references Cliente(idCliente)
   );
   
create table Idioma(
	idIdioma int auto_increment primary key,
    idCliente int,
    Idioma Varchar(20),
    constraint fk_IdioCliente foreign key (idCliente) references Cliente(idCliente)
   );
   
   
create table Contato(
	idContato int auto_increment primary key,
    idCliente int,
    TelefoneContato Varchar(11),
    EmailPrincipal Varchar(45),
    PerfilLinkeding Varchar(45),
    PerfilGithub Varchar(45),
    OutrosPerfis Varchar(45),
    Site Varchar(45),
	constraint fk_ContCliente foreign key (idCliente) references Cliente(idCliente)
   );
   
   create table Sobre(
	idsobre int auto_increment primary key,
    idCliente int,
	ResumoQualificacoes Varchar(500),
	SoftSkills Varchar(500),
    HardSkills Varchar(500),
    Hobbies Varchar(500),
    constraint fk_SobreCliente foreign key (idCliente) references Cliente(idCliente)
   );
   
   
   create table Habilidades(
	idHabilidades int auto_increment primary key,
    idCliente int,
	habilidades Varchar(45),
	constraint fk_HabCliente foreign key (idCliente) references Cliente(idCliente)
   );

   
   
   
   
   
   
   