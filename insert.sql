-- Inserção de dados de exemplo
INSERT INTO Cliente (ID, Nome, Endereco, Telefone)
VALUES
    (1, 'João Silva', 'Rua A, 123', '(11) 9999-1234'),
    (2, 'Maria Santos', 'Av. B, 456', '(11) 8888-5678');

INSERT INTO Veiculo (ID, Placa, Modelo, Ano, ClienteID)
VALUES
    (1, 'ABC-1234', 'Ford Fiesta', 2018, 1),
    (2, 'XYZ-5678', 'Chevrolet Cruze', 2020, 2);

INSERT INTO Servico (ID, Descricao, Preco)
VALUES
    (1, 'Troca de Óleo', 50.00),
    (2, 'Reparo de Freios', 120.00),
    (3, 'Troca de Pneus', 200.00);

INSERT INTO Servico_Realizado (ID, VeiculoID, ServicoID, Data)
VALUES
    (1, 1, 1, '2023-01-15'),
    (2, 1, 2, '2023-02-20'),
    (3, 2, 3, '2023-03-25');