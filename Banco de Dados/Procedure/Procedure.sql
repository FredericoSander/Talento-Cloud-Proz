DELIMITER $$

CREATE PROCEDURE LevantamentoDiarioProdutosComprados()
BEGIN
    -- Criação de uma tabela temporária
    CREATE TEMPORARY TABLE IF NOT EXISTS RelatorioDiario (
        DataCompra DATE,
        ProdutoID INT,
        QuantidadeComprada INT
    );

    -- Inserir os dados na tabela temporária
    INSERT INTO RelatorioDiario (DataCompra, ProdutoID, QuantidadeComprada)
    SELECT 
        DataCompra,
        ProdutoID,
        SUM(Quantidade) AS QuantidadeComprada
    FROM 
        Vendas
    GROUP BY 
        DataCompra, ProdutoID;

    --Selecionar os dados da tabela temporária para visualização
    SELECT * FROM RelatorioDiario;

END $$

DELIMITER ;

-- Recurso utilizado para exclusão da tabel temporária. 
DROP TEMPORARY TABLE RelatorioDiario;

-- Comando utilizado para 
CALL LevantamentoDiarioProdutosComprados();