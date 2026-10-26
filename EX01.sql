/* Exercício 01 - Filtro por faixa de peso
   Localizar os produtos com peso maior que 500 e menor que 700 */

SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight < 700;
