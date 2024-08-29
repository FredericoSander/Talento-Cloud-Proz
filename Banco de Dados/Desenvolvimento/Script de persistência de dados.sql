-- inserção de dados e queries
use Oficina_Mecanica;

desc cliente;
-- clients 
insert into cliente ( Nome, Sobrenome, CPF, logradouro, Número, Bairro, Cidade, Estado ,País,veículo,anofabricação,placa)
	values('Maria','Neves',12345678901,'Rua Santa Rita',29,'Jacuí','João Monlevade','MG','Brasil','Ford Fiesta',2010,'lns-2541'),
		  ('Antônio','Souza',45678912345,'Rua Juazeiro',100,'Satelite','João Monlevade','MG','Brasil','Saveiro',2006,'gds-4593'),
		  ('Joaquim','Cruz',78912345678,'Rua Parauna',78,'Castelo','João Monlevade','MG','Brasil','Golf',2010,'def-7812'),
		  ('José','Silva',78456952135,'Rua Jequitibá',62,'Santa Barbara','João Monlevade','MG','Brasil','Fiat Pálio',2020,'dge4851');
          
select * from cliente;
desc funcionarios;
select * from funcionarios;
insert into funcionarios( Nome, Sobrenome, CPF, dtAniversario,Funcao, dtAdmissao, logradouro, Numero, Bairro, Cidade, Estado ,Pais)
	values('Maria','Souza',75486214598,'1976-05-12','Mecânica','2001-02-24','Rua Ponte Nova',1001,'Belvedere','João Monlevade','MG','Brasil'),
		  ('Antônio','Barbosa',25478134896,'1982-03-29','Mecânico','2001-02-24','Rua Belém',356,'Praia','João Monlevade','MG','Brasil'),
		  ('Joaquim','Melo',74521547896,'1982-03-29','Borracheiro','2005-11-04','Rua Contagem',29,'Pará','João Monlevade','MG','Brasil'),
		  ('José','Florisval',24563217894,'1993-04-20','Mecânico','2015-11-04','Rua Betim',47,'Ipiranga','João Monlevade','MG','Brasil');
          
desc fornecedor;
select * from fornecedor;
insert into fornecedor( Razão_Social,Nome_Fantasia, CNPJ, CPF, Contato, logradouro, Número, Bairro, Cidade, Estado ,Pais)
	values('Limeira LTDA',null,12475145000154,null,31898888141,'Jacuí',15,'Jacuí','São Paulo','SP','Brasil'),
		  ('Laranja LTDA',null,451245781000154,null,15924586589,'Jequitibá',23,'Palmeiras','Curitiba','SC','Brasil'),
		  ('Jurubeba LTDA',null,789523621000174,null,31999991234,'California',45,'Leblon','Rio de Janeiro','RJ','Brasil');
select * from fornecedor;   

desc servicos;
select * from servicos; 
insert into servicos (NomeServico,ValorServico,Tiposervico) 
		values('Troca de pneu',35.00,'Manutenção'),
			  ('Alinhamento',60.00,'Revisão'),
              ('Troca de óleo',20.00,'Manutenção'),
              ('Revisão Geral',100.00,'Revisão'),
              ('Troca de limpador',5.00,'Manutenção');

desc OScliente;
select * from OScliente;
insert into OScliente(idOSCServico,idOSCCliente,idCliente,idServico) 
		value(12,3,4,12),
			 (13,3,3,13),
			 (14,1,1,14),
             (15,2,2,15),
             (16,4,4,16);
			
desc estoque;
select * from estoque;
insert into estoque(nomeProduto,valorProduto,quantProduto) 
		value('Pneu Pirelli',389.00,20),
			 ('Pneu Goodyear',399.00,15),
			 ('Óleo Havoline',55.45,20),
             ('limpador Parabrisa',55.45,50),
             ('lâmpada Farol',45.9,30);

desc ordemServico;
select * from ordemServico;
insert into ordemServico(statusServico,dtOServico,dtEntregaServico,idOSFuncionario,idOSCliente,IdOSServico) 
		value('Em análise','2023-02-06','2023-03-16',1,4,1),
			 ('Em execução','2023-02-24','2023-03-01',1,3,3),
			 ('Em execução','2023-02-28','2023-03-01',2,1,4),
		     ('Em execução','2023-03-01','2023-03-05',2,2,3),
			 ('Em execução','2023-03-01','2023-03-16',3,4,5);    
						
desc OSfuncionarios;
select * from OSfuncionarios;  
insert into OSfuncionarios(idOSFFuncionarios,idOSfServicos) 
		value(1,12),
			 (1,13),
			 (2,14),
             (2,15),
             (3,16);

desc OSEstoque;
select * from Estoque;  
insert into OSEstoque(idOSEProduto,idOSEServiços) 
		value(1,12),
			 (1,13),
			 (2,14),
             (2,15),
             (3,16);

select * from  ordemServiço;
select * from  Serviços;
select * from Estoque;       
select * from OSServiços;        
insert into OSServiços(idOSSServiços,idSServiços) 
		value(12,1),
			 (13,1),
			 (14,1),
             (15,1),
             (16,3);
