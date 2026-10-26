/*==========================================================
  08 - Funções de data
  Banco: AdventureWorks (SQL Server)
  Conceitos: DATEPART, GROUP BY, ORDER BY
==========================================================*/

-- Desafio | Ano e mês de envio dos pedidos, com a quantidade de pedidos
SELECT DATEPART(YEAR,  ShipDate) AS Ano,
       DATEPART(MONTH, ShipDate) AS Mes,
       COUNT(*)                  AS TotalPedidos
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, ShipDate), DATEPART(MONTH, ShipDate)
ORDER BY Ano, Mes;
