/*==========================================================
  06 - SELF JOIN
  Banco: NORTHWIND (SQL Server)  <-- atenção: não é o AdventureWorks
  Conceitos: SELF JOIN, alias para a mesma tabela, DATEPART, DISTINCT
  Obs.: a condição de desigualdade evita que cada linha seja
        combinada com ela mesma.
==========================================================*/

-- Clientes que moram na mesma região
SELECT a.ContactName AS Cliente1, a.Region,
       b.ContactName AS Cliente2, b.Region
FROM Customers AS a
INNER JOIN Customers AS b
        ON a.Region = b.Region
       AND a.CustomerID <> b.CustomerID;

-- Funcionários contratados no mesmo ano
SELECT a.FirstName AS Funcionario1, a.HireDate,
       b.FirstName AS Funcionario2, b.HireDate
FROM Employees AS a
INNER JOIN Employees AS b
        ON DATEPART(YEAR, a.HireDate) = DATEPART(YEAR, b.HireDate)
       AND a.EmployeeID <> b.EmployeeID;

-- Desafio | Produtos com o mesmo percentual de desconto em [Order Details]
-- DISTINCT + '<' evitam pares repetidos (A,B) e (B,A)
SELECT DISTINCT a.ProductID, a.Discount, b.ProductID, b.Discount
FROM [Order Details] AS a
INNER JOIN [Order Details] AS b
        ON a.Discount = b.Discount
       AND a.ProductID < b.ProductID;
