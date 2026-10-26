/*==========================================================
  12 - Views
  Banco: AdventureWorks (SQL Server)
  Conceitos: CREATE VIEW, GO (separador de lote)
==========================================================*/

CREATE VIEW PessoasSimplificado AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.';
GO

SELECT * FROM PessoasSimplificado;
