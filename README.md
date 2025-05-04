# Projeto de Banco de Dados - E-commerce

Este projeto tem como objetivo desenvolver o esquema de banco de dados relacional para um sistema de e-commerce, incorporando conceitos do Modelo Entidade-Relacionamento Estendido (EER). O projeto contempla a modelagem de clientes (com especialização em PF e PJ), produtos, pedidos, pagamentos múltiplos e controle de entregas.

## :shopping_cart: Descrição Conceitual

O sistema de e-commerce foi projetado para permitir que clientes realizem pedidos de produtos e acompanhem o status de suas entregas. Os principais componentes conceituais do banco são:

- **Cliente PF e PJ**: Um cliente pode ser do tipo Pessoa Física (PF) ou Pessoa Jurídica (PJ), mas nunca ambos ao mesmo tempo. A especialização é disjunta e completa.
- **Produto**: Produtos possuem nome, descrição e preço.
- **Pedido**: Associado a um cliente, contém a data e o valor total do pedido.
- **Item de Pedido**: Representa os produtos contidos em cada pedido, incluindo quantidade e preço unitário.
- **Pagamento**: Um pedido pode conter múltiplas formas de pagamento, como cartão, boleto, PIX, entre outros.
- **Entrega**: Cada pedido possui um registro de entrega, com código de rastreio e status atualizado (ex: pendente, enviado, entregue).

## :hammer: Arquivos do Projeto

- `ecommerce_schema.sql`: Contém a criação das tabelas do banco de dados.
- `insert_ecommerce.sql`: Inserção de dados fictícios para testes.
- `queries_ecommerce.sql`: Consultas SQL para interagir com os dados.
- `README.md`: Este arquivo, com a descrição e instruções do projeto.

## :floppy_disk: Requisitos Atendidos

- [x] Clientes PF/PJ com especialização.
- [x] Múltiplos pagamentos por pedido.
- [x] Entrega com status e código de rastreio.
- [x] Script com queries de teste.
- [x] Scripts para criação e inserção de dados.

## :books: Como usar

1. Execute o script `ecommerce_schema.sql` para criar as tabelas.
2. Popule o banco com os dados do `insert_ecommerce.sql`.
3. Execute as consultas do `queries_ecommerce.sql` para verificar os dados.

Este projeto pode ser executado em qualquer SGBD compatível com SQL padrão, como PostgreSQL ou MySQL (com pequenas adaptações).

## :computer: Tecnologias Utilizadas

- SQL
- Modelo Entidade-Relacionamento Estendido (EER)
- SGBD: PostgreSQL (recomendado)

## :memo: Autor

Desenvolvido como parte de um desafio do curso de banco de dados.

