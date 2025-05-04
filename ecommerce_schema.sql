-- ecommerce_schema.sql

CREATE TABLE Cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Cliente_PF (
    id_cliente INTEGER PRIMARY KEY REFERENCES Cliente(id_cliente),
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE
);

CREATE TABLE Cliente_PJ (
    id_cliente INTEGER PRIMARY KEY REFERENCES Cliente(id_cliente),
    cnpj CHAR(14) UNIQUE NOT NULL,
    razao_social VARCHAR(150) NOT NULL
);

CREATE TABLE Produto (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INTEGER NOT NULL
);

CREATE TABLE Pedido (
    id_pedido SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES Cliente(id_cliente),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2)
);

CREATE TABLE Pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_pedido INTEGER REFERENCES Pedido(id_pedido),
    forma_pagamento VARCHAR(50),
    valor DECIMAL(10,2),
    data_pagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Entrega (
    id_entrega SERIAL PRIMARY KEY,
    id_pedido INTEGER REFERENCES Pedido(id_pedido),
    status VARCHAR(50) NOT NULL,
    codigo_rastreio VARCHAR(100)
);

CREATE TABLE Item_Pedido (
    id_item SERIAL PRIMARY KEY,
    id_pedido INTEGER REFERENCES Pedido(id_pedido),
    id_produto INTEGER REFERENCES Produto(id_produto),
    quantidade INTEGER NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
);
