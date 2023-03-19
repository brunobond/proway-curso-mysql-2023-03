-- Enunciado: Criar tabela de estoques
--      id: INT
--      produto: VARCHAR (50)
--      quantidade: INT
--      preco_unitario: FLOAT(6,2)
--      data_vencimento: DATE
--      categoria: VARCHAR(30)

create table produtos(
   id INT PRIMARY KEY AUTO_INCREMENT,
   produto VARCHAR(50) not null,
   quantidade INT,
    preco_unitario FLOAT(6,2),
  data_vencimento DATE,
    categoria VARCHAR(30));

-- Inserir 7 registros
--      2 registros de frutas
--      2 registros de lanches
--      2 registros de bebidas
--      1 registro de produto de limpeza

INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('banana', '20', '3.89', '2023-03-23','frutas');
INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('abacate', '15', '6.89', '2023-03-26','frutas');
INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('coxinha', '10', '5.00', '2023-03-20','lanches');
INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('pastel', '12', '10.00', '2023-03-21','lanches');
INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('refrigerante', '30', '6.00', '2024-05-19','bebidas');
INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('suco', '25', '6.50', '2024-06-19','bebidas');
INSERT INTO produtos (produto, quantidade, preco_unitario, data_vencimento, categoria) VALUE ('sabão', '8', '3.00', '2025-03-19','produto_de_limpeza');
-- Categorias [Frutas, Lanches, Bebidas, e Produtos de Limpeza]

-- OBS.: PROIBIDO A UTILIZAÇÃO DE * EM CONSULTAS SELECT
-- Consultar todos as colunas registros
select id, produto, quantidade, preco_unitario, data_vencimento, categoria from produtos;
-- Consultar o menor preço
SELECT MIN(preco_unitario) FROM produtos;
-- Consultar a maior quantidade
SELECT MAX(quantidade) FROM produtos;
-- Consultar nome, quantidade, preço unitário e valor dos produtos
SELECT id, quantidade, preco_unitario, valor
-- Consultar soma total dos valores dos produtos(quantidade multiplicando preço unitário)
-- Consultar os produtos da categoria bebidas ordenando pela menor quantidade
-- Consultar os produtos de categoria frutas e preço unitário mair que R$ 10,00




