Show Databases;
desc oficina_mecanica;

drop database azure_company;
-- Quantos clientes existem na base de dados?
select count(*) from Cliente;

-- Quantos produtos existem na base de dados?
select count(*) from estoque;

-- Quantos fornecedores existem na base de dados?
select count(*) from fornecedor;

-- Quantas ordens de serviço estão cadastradas?
select count(*) from ordemServiço;

-- Quantas ordens de serviços estão relacionadas a revisão e a manutenção?
select count(*) Tiposerviço from serviços where Tiposerviço = 'Manutenção';

-- Quantas ordens de serviços estão relacionadas a revisão?
select count(*) Tiposerviço from serviços where Tiposerviço = 'revisão';

-- Retorne quantas ordens de serviços estão em análise e em execução na tabela ordem de serviço?
select statusServiço, count(*)As record_count from ordemServiço where statusServiço GROUP BY statusServiço;

-- Retorne quantas ordens de serviços estão em análise e em execução na tabela ordem de serviço?
select statusServiço, count(*)As record_count from ordemServiço where statusServiço GROUP BY statusServiço;

-- Reajuste o valor dos produtos Pneu Pirelli em R$ 20.00, Pneu Goodyear em R$ 10.00 e da Lãmpada de Farol em R$ 5.00
update estoque set valorProduto =
	case
		when idEProduto = 1 then valorProduto + 20
		when idEProduto = 2 then valorProduto + 10
		when idEProduto = 5 then valorProduto + 5
        else valorProduto + 0
        end;

select * from Cliente;

-- Retorne o nome do produto e o valor de cada produto da tabela OSEstoque. 
select e.nomeProduto, e.valorProduto from estoque e join OSEstoque o on e.ideProduto = idOSEProduto;

-- Crie uma query para retornar uma relação onde a identificação do cliente é igual a identificação do pedido do cliente;        
select * from cliente c, ordemServiço o 
				where c.idcliente = idOServiço
                group by idOServiço;

-- Crie uma query para retornar o nome e a de registros de serviços do tipo manutenção cadastrados na tabela serviços.
select NomeServiço, count(*) from serviços where tiposerviço = 'Manutenção' group by NomeServiço Having count(*) >=1;

-- Ordene a tabela de produto por nome.
select * from Estoque order by nomeProduto;

-- Ordene a tabela de cliente por nome.