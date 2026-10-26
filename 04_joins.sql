/*==========================================================
  04 - JOINs
  Banco: AdventureWorks (SQL Server)
  Conceitos: INNER JOIN, LEFT JOIN, alias de tabela, IS NULL
==========================================================*/

-- Pessoas e seus e-mails
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS p
INNER JOIN Person.EmailAddress AS pe
        ON p.BusinessEntityID = pe.BusinessEntityID;

-- Produtos com a sua subcategoria
SELECT pr.ListPrice, pr.Name, pc.Name AS NomeSubcategoria
FROM Production.Product AS pr
INNER JOIN Production.ProductSubcategory AS pc
        ON pc.ProductSubcategoryID = pr.ProductSubcategoryID;

-- Desafio 1 | Telefones com o tipo de telefone
SELECT pp.BusinessEntityID, pt.Name, pt.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PersonPhone AS pp
INNER JOIN Person.PhoneNumberType AS pt
        ON pt.PhoneNumberTypeID = pp.PhoneNumberTypeID;

-- Desafio 2 | Endereços com o nome do estado/província
SELECT pa.AddressID, pa.City, ps.StateProvinceID, ps.Name
FROM Person.Address AS pa
INNER JOIN Person.StateProvince AS ps
        ON ps.StateProvinceID = pa.StateProvinceID;

-- Pessoas COM cartão de crédito registrado (INNER JOIN): 19118 resultados
SELECT pp.BusinessEntityID, pp.FirstName, pp.LastName
FROM Person.Person AS pp
INNER JOIN Sales.PersonCreditCard AS pc
        ON pp.BusinessEntityID = pc.BusinessEntityID;

-- Pessoas SEM cartão de crédito (LEFT JOIN + IS NULL)
-- Total de pessoas (19972) - com cartão (19118) = 854
SELECT pp.BusinessEntityID, pp.FirstName, pp.LastName
FROM Person.Person AS pp
LEFT JOIN Sales.PersonCreditCard AS pc
       ON pp.BusinessEntityID = pc.BusinessEntityID
WHERE pc.BusinessEntityID IS NULL;
