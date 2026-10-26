/*==========================================================
  01 - SELECT básico, filtros simples e contagens
  Banco: AdventureWorks (SQL Server)
  Conceitos: SELECT, WHERE, AND, COUNT, DISTINCT, TOP, ORDER BY
==========================================================*/

-- EX01 | Produtos com peso maior que 500 e menor que 700
SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight < 700;

-- EX02 | Funcionários casados e assalariados
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M'
  AND SalariedFlag = 1;

-- EX03 | Localizar o funcionário pelo nome exato e, depois, o seu e-mail
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';   -- BusinessEntityID = 26

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;

-- Desafio 1 | Quantos produtos estão cadastrados?
SELECT COUNT(*) AS TotalProdutos
FROM Production.Product;                             -- 504

-- Desafio 2 | Quantos nomes de produto distintos existem?
SELECT COUNT(DISTINCT Name) AS NomesDistintos
FROM Production.Product;

-- Desafio 3 | Quantos tamanhos diferentes de produto existem?
SELECT COUNT(DISTINCT Size) AS TamanhosDistintos
FROM Production.Product;                             -- 18

-- TOP | Primeiras 10 linhas da tabela
SELECT TOP 10 *
FROM Production.Product;

-- Desafio TOP 1 | ProductID dos 10 produtos mais caros (do mais caro ao mais barato)
SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Desafio TOP 2 | Nome e número dos produtos com ProductID entre 1 e 4
SELECT Name, ProductNumber
FROM Production.Product
WHERE ProductID BETWEEN 1 AND 4
ORDER BY ProductID;
