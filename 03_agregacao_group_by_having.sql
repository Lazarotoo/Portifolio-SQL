/*==========================================================
  03 - Funções de agregação, ALIAS, GROUP BY e HAVING
  Banco: AdventureWorks (SQL Server)
  Conceitos: SUM, MIN, AVG, COUNT, AS, GROUP BY, HAVING, ORDER BY
==========================================================*/

-- Alias (AS): renomear colunas no resultado
SELECT TOP 10 FirstName AS "Primeiro Nome", LastName AS "Sobrenome"
FROM Person.Person;

SELECT TOP 10 ProductNumber AS "Número do Produto"
FROM Production.Product;

SELECT TOP 10 UnitPrice AS "Preço Unitário"
FROM Sales.SalesOrderDetail;

-- Funções de agregação sobre o total das vendas
SELECT SUM(LineTotal) AS Soma,
       MIN(LineTotal) AS Minimo,
       AVG(LineTotal) AS Media
FROM Sales.SalesOrderDetail;

-- Quantas vezes cada nome aparece no banco
SELECT FirstName, COUNT(FirstName) AS Contagem
FROM Person.Person
GROUP BY FirstName
ORDER BY Contagem DESC;

-- Quantas vezes cada produto aparece nos itens de venda
SELECT ProductID, COUNT(ProductID) AS Contagem
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- Preço médio dos produtos de cor prata
SELECT Color, AVG(ListPrice) AS PrecoMedio
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color;

-- 1) Quantas pessoas têm o mesmo MiddleName
SELECT MiddleName, COUNT(FirstName) AS Quantidade
FROM Person.Person
GROUP BY MiddleName;

-- 2) Quantidade média vendida de cada produto
SELECT ProductID, AVG(OrderQty) AS Media
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- 3) Os 10 produtos com maior valor total de venda
SELECT TOP 10 ProductID, SUM(LineTotal) AS TotalVendido
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY TotalVendido DESC;

-- 4) Ordens de serviço: contagem e quantidade média por produto
SELECT ProductID,
       COUNT(ProductID) AS Contagem,
       AVG(OrderQty)    AS Media
FROM Production.WorkOrder
GROUP BY ProductID;

/*---------------- HAVING (filtro após o agrupamento) ----------------*/

-- Nomes que aparecem mais de 10 vezes
SELECT FirstName, COUNT(FirstName) AS Quantidade
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

-- Produtos com total de vendas entre 162 mil e 500 mil
SELECT ProductID, SUM(LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

-- Províncias (StateProvinceID) com mais de 1000 endereços
SELECT StateProvinceID, COUNT(StateProvinceID) AS Quantidade
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000;

-- Desafio | Produtos cuja média de venda é inferior a 1 milhão
SELECT ProductID, AVG(LineTotal) AS MediaVenda
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000;
