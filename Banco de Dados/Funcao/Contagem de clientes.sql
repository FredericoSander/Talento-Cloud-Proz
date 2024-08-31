DELIMITER $$

CREATE FUNCTION ContarClientesCadastradosPorDia(data DATE)
RETURNS INT
BEGIN
    DECLARE total_clientes INT;
    
    SELECT COUNT(*) INTO total_clientes
    FROM Clientes
    WHERE DataCadastro = data;

    RETURN total_clientes;
END $$

DELIMITER ;

-- Comando para executar a função contar clientes cadastrados por dia
SELECT ContarClientesCadastradosPorDia('data dd/mm/aaaa') AS TotalClientes;