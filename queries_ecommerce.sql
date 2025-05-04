-- 1. Listar todos os clientes PF
SELECT * FROM Cliente_PF;

-- 2. Listar todos os clientes PJ
SELECT * FROM Cliente_PJ;

-- 3. Listar todos os produtos
SELECT * FROM Produto;

-- 4. Listar pedidos com nome do cliente e valor total
SELECT 
    p.id_pedido,
    COALESCE(pf.nome, pj.nome) AS nome_cliente,
    p.data_pedido,
    p.total
FROM Pedido p
LEFT JOIN Cliente_PF pf ON p.id_cliente = pf.id_cliente
LEFT JOIN Cliente_PJ pj ON p.id_cliente = pj.id_cliente;

-- 5. Mostrar os itens de um pedido
SELECT 
    ip.id_pedido,
    pr.nome AS produto,
    ip.quantidade,
    ip.preco_unitario,
    (ip.quantidade * ip.preco_unitario) AS subtotal
FROM Item_Pedido ip
JOIN Produto pr ON ip.id_produto = pr.id_produto
WHERE ip.id_pedido = 1;

-- 6. Consultar forma(s) de pagamento de um pedido
SELECT 
    id_pagamento,
    id_pedido,
    tipo_pagamento,
    valor
FROM Pagamento
WHERE id_pedido = 1;

-- 7. Verificar status de entrega de um pedido
SELECT 
    id_entrega,
    id_pedido,
    status,
    codigo_rastreamento
FROM Entrega
WHERE id_pedido = 1;

-- 8. Contar total de pedidos por tipo de cliente
SELECT 
    'PF' AS tipo,
    COUNT(p.id_pedido) AS total_pedidos
FROM Pedido p
JOIN Cliente_PF pf ON p.id_cliente = pf.id_cliente

UNION ALL

SELECT 
    'PJ' AS tipo,
    COUNT(p.id_pedido) AS total_pedidos
FROM Pedido p
JOIN Cliente_PJ pj ON p.id_cliente = pj.id_cliente;
