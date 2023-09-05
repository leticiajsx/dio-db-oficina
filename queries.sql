-- Recuperação simples de todos os clientes
SELECT * FROM Cliente;

-- Filtro para encontrar veículos de um cliente específico
SELECT * FROM Veiculo WHERE ClienteID = 1;

-- Cálculo do custo total de serviços realizados em um veículo
SELECT v.Placa, SUM(s.Preco) AS CustoTotal
FROM Veiculo v
JOIN Servico_Realizado sr ON v.ID = sr.VeiculoID
JOIN Servico s ON sr.ServicoID = s.ID
GROUP BY v.Placa;

-- Ordenação dos veículos por ano de fabricação
SELECT * FROM Veiculo ORDER BY Ano;

-- Recuperação de clientes que realizaram serviços de troca de pneus
SELECT c.Nome, v.Placa
FROM Cliente c
JOIN Veiculo v ON c.ID = v.ClienteID
JOIN Servico_Realizado sr ON v.ID = sr.VeiculoID
JOIN Servico s ON sr.ServicoID = s.ID
WHERE s.Descricao = 'Troca de Pneus';
