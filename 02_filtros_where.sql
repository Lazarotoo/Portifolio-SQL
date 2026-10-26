/*==========================================================
  02 - Filtros com WHERE
  Banco: AdventureWorks (SQL Server)
  Conceitos: BETWEEN, NOT BETWEEN, IN, NOT IN, LIKE, COUNT, DISTINCT
==========================================================*/

-- Produtos FORA da faixa de preço 1000 a 1500
SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500;

-- Funcionários contratados entre 2009 e 2010 (BETWEEN inclui os extremos)
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009-01-01' AND '2010-01-01'
ORDER BY HireDate;

-- Pessoas com BusinessEntityID específico
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13);

-- Pessoas com BusinessEntityID diferente dos informados
SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2, 7, 13);

-- 1) Quantos produtos custam mais de 1500 dólares?
SELECT COUNT(*) AS Total
FROM Production.Product
WHERE ListPrice > 1500;

-- 2) Quantas pessoas têm sobrenome começando com a letra P?
SELECT COUNT(*) AS Total
FROM Person.Person
WHERE LastName LIKE 'P%';

-- 3) Em quantas cidades únicas há endereços cadastrados?
SELECT COUNT(DISTINCT City) AS TotalCidades
FROM Person.Address;

-- 4) Quais são as cidades únicas cadastradas?
SELECT DISTINCT City
FROM Person.Address
ORDER BY City;

-- 5) Quantos produtos vermelhos custam entre 500 e 1000 dólares?
SELECT COUNT(*) AS Total
FROM Production.Product
WHERE Color = 'Red'
  AND ListPrice BETWEEN 500 AND 1000;

-- 6) Quantos produtos têm a palavra 'road' no nome?
SELECT COUNT(*) AS Total
FROM Production.Product
WHERE Name LIKE '%road%';
