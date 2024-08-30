create database Oficina;

use Oficina;

-- criar tabela cliente

create table cliente(
	idCliente int auto_increment primary key,
    Nome varchar(10),
    Sobrenome varchar(20),
    CPF char(11) not null,
    logradouro varchar(30),
    Número int not null,
    Bairro varchar(20),
    Cidade varchar(20),
    Estado Varchar(20),
    Pais Varchar(20),
    constraint unique_cpf_client unique (CPF)
    );
    

DELIMITER //

CREATE TRIGGER before_insert_cliente
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
    -- Verifica se o CPF possui 11 caracteres numéricos
    IF NOT NEW.CPF REGEXP '^[0-9]{11}$' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'CPF deve ter 11 dígitos numéricos';
    END IF;

  -- Este código irá formata o CPF para remover qualquer formatação anterior, como pontos ou traços
    SET NEW.CPF = REPLACE(REPLACE(REPLACE(NEW.CPF, '.', ''), '-', ''), ' ', '');
END//

DELIMITER ;

insert into cliente ( Nome, Sobrenome, CPF, logradouro, Número, Bairro, Cidade, Estado ,Pais)
	values('Maria','Neves',12345678901,'Rua Santa Rita',29,'Jacuí','João Monlevade','MG','Brasil'),
		  ('Antônio','Souza',45678912345,'Rua Juazeiro',100,'Satelite','João Monlevade','MG','Brasil'),
		  ('Joaquim','Cruz',78912345678,'Rua Parauna',78,'Castelo','João Monlevade','MG','Brasil'),
		  ('José','Silva',78456952135,'Rua Jequitibá',62,'Santa Barbara','João Monlevade','MG','Brasil');
          