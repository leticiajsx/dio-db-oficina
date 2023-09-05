-- Criação das tabelas
CREATE TABLE Cliente (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);

CREATE TABLE Veiculo (
    ID INT PRIMARY KEY,
    Placa VARCHAR(10),
    Modelo VARCHAR(50),
    Ano INT,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID)
);

CREATE TABLE Servico (
    ID INT PRIMARY KEY,
    Descricao VARCHAR(255),
    Preco DECIMAL(10, 2)
);

CREATE TABLE Servico_Realizado (
    ID INT PRIMARY KEY,
    VeiculoID INT,
    ServicoID INT,
    Data DATE,
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(ID),
    FOREIGN KEY (ServicoID) REFERENCES Servico(ID)
);
