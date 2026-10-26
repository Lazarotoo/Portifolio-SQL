/*==========================================================
  09 - DDL: CREATE, ALTER, RENAME, TRUNCATE e DROP
  Banco: qualquer banco de testes (cria tabelas próprias)
  Conceitos: PRIMARY KEY, FOREIGN KEY, DEFAULT, UNIQUE, ALTER COLUMN, sp_rename
==========================================================*/

-- Exercício | Duas tabelas relacionadas (a tabela referenciada deve ser criada primeiro)
CREATE TABLE Cabos (
    CaboId         INT PRIMARY KEY,
    CaboDeForca    VARCHAR(150) NOT NULL,
    UsbMouse       INT DEFAULT 0,
    UsbTeclado     INT DEFAULT 0,
    Monitor        INT DEFAULT 0,
    SuporteMonitor INT DEFAULT 0
);

CREATE TABLE Computador (
    ComputadorId INT PRIMARY KEY,
    PlacaMae     VARCHAR(150) NOT NULL,
    MemoriaRam   INT DEFAULT 0,
    Fonte        VARCHAR(150) NOT NULL,
    PlacaDeVideo VARCHAR(150) NOT NULL,
    CaboId       INT FOREIGN KEY REFERENCES Cabos(CaboId)
);

SELECT * FROM Cabos;
SELECT * FROM Computador;

-- Desafio | Criar tabela com 3 colunas, alterar tipo, renomear coluna e renomear tabela
CREATE TABLE Instagram (
    id      INT PRIMARY KEY,
    Apelido VARCHAR(100) NOT NULL UNIQUE,
    Idade   INT DEFAULT 0
);

-- 1) Alterar o tipo/tamanho de uma coluna
ALTER TABLE Instagram
ALTER COLUMN Apelido VARCHAR(200) NOT NULL;

-- 2) Renomear uma coluna
EXEC sp_rename 'Instagram.Apelido', 'NickName', 'COLUMN';

-- 3) Renomear a tabela
EXEC sp_rename 'Instagram', 'RedeSocial';

SELECT * FROM RedeSocial;

-- TRUNCATE e DROP (feitos em cópia, para não alterar tabelas do AdventureWorks)
SELECT * INTO PasswordCopia FROM Person.Password;

TRUNCATE TABLE PasswordCopia;     -- apaga todas as linhas, mantém a estrutura
SELECT * FROM PasswordCopia;

DROP TABLE PasswordCopia;         -- apaga a tabela inteira
