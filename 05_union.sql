/*==========================================================
  05 - UNION
  Banco: AdventureWorks (SQL Server)
  Conceitos: UNION (remove duplicados) vs UNION ALL (mantém)
==========================================================*/

-- Produtos com 'Chain' OU 'Decal' no nome
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Decal%';

-- Pessoas com título 'Mr.' OU com MiddleName 'A'
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A';

-- Pessoas com título 'Ms.' OU do tipo 'SC'
SELECT PersonType, Title
FROM Person.Person
WHERE Title = 'Ms.'
UNION
SELECT PersonType, Title
FROM Person.Person
WHERE PersonType = 'SC';
