/*==========================================================
  07 - Subqueries (subselects)
  Banco: AdventureWorks (SQL Server)
  Conceitos: subquery escalar, subquery com IN, comparação com INNER JOIN
==========================================================*/

-- Produtos com preço acima da média (média calculada dinamicamente)
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

-- Funcionários com cargo 'Design Engineer' - com SUBSELECT
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
    SELECT BusinessEntityID
    FROM HumanResources.Employee
    WHERE JobTitle = 'Design Engineer'
);

-- Mesmo resultado com INNER JOIN
SELECT p.FirstName
FROM Person.Person AS p
INNER JOIN HumanResources.Employee AS e
        ON p.BusinessEntityID = e.BusinessEntityID
       AND e.JobTitle = 'Design Engineer';

-- Desafio | Endereços do estado/província 'Alberta'
SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
    SELECT StateProvinceID
    FROM Person.StateProvince
    WHERE Name = 'Alberta'
);
