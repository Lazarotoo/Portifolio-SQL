/*==========================================================
  11 - Constraints: CHECK, NOT NULL e UNIQUE
  Banco: qualquer banco de testes (cria tabela própria)
==========================================================*/

CREATE TABLE CarteiraMotorista (
    Id        INT          NOT NULL,
    Nome      VARCHAR(255) NOT NULL,
    Idade     INT CHECK (Idade >= 18),
    CodigoCNH INT          NOT NULL UNIQUE
);

-- Inserção válida
INSERT INTO CarteiraMotorista (Id, Nome, Idade, CodigoCNH)
VALUES (1, 'Robert', 19, 123456);

-- Violação do CHECK (Idade < 18) -> erro esperado
-- INSERT INTO CarteiraMotorista (Id, Nome, Idade, CodigoCNH) VALUES (2, 'Rafael', 17, 222222);

-- Violação do NOT NULL (Nome nulo) -> erro esperado
-- INSERT INTO CarteiraMotorista (Id, Nome, Idade, CodigoCNH) VALUES (3, NULL, 20, 333333);

-- Violação do UNIQUE (CNH repetida) -> erro esperado
-- INSERT INTO CarteiraMotorista (Id, Nome, Idade, CodigoCNH) VALUES (4, 'Matheus', 25, 123456);

SELECT * FROM CarteiraMotorista;
