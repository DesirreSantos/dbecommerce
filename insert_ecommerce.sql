-- Inserção de dados simples para testes

-- Clientes Pessoa Física
INSERT INTO Cliente_PF (nome, email, cpf) VALUES 
('João Silva', 'joao@email.com', '12345678900'),
('Maria Souza', 'maria@email.com', '98765432100');

-- Clientes Pessoa Jurídica
INSERT INTO Cliente_PJ (nome, email, cnpj) VALUES 
('Empresa XYZ', 'contato@xyz.com', '11222333000181'),
('Empresa ABC', 'vendas@abc.com', '99888777000155');

-- Produtos
INSERT INTO Produto (nome, descricao, preco) VALUES 
('Notebook', 'Notebook 14 polegadas', 3000.00),
('Mouse', 'Mouse óptico USB', 50.00),
('Teclado', 'Teclado mecânico ABNT2', 200.00);

-- Pedidos
INSERT INTO Pedido (id_cliente, data_pedido, total) VALUES 
(1, '2024-05-01', 3050.00),
(3, '2024-05-02', 200.00);

-- Itens do pedido
INSERT INTO Item_Pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES 
(1, 1, 1, 3000.00),
(1, 2, 1, 50.00),
(2, 3, 1, 200.00);

-- Pagamentos
INSERT INTO Pagamento (id_pedido, tipo_pagamento, valor) VALUES 
(1, 'Cartão de Crédito', 3050.00),
(2, 'Boleto', 200.00);

-- Entregas
INSERT INTO Entrega (id_pedido, status, codigo_rastreamento) VALUES 
(1, 'Enviado', 'BR1234567890'),
(2, 'Pendente', 'BR9876543210');
