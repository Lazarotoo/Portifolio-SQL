/*==========================================================
  10 - DML: INSERT, INSERT ... SELECT, SELECT INTO, UPDATE e DELETE
  Banco: qualquer banco de testes (cria tabelas próprias)
==========================================================*/

CREATE TABLE aula (
    id   INT PRIMARY KEY,
    nome VARCHAR(200)
);

-- INSERT simples e múltiplo
INSERT INTO aula (id, nome) VALUES (1, 'aula 1');

INSERT INTO aula (id, nome)
VALUES (2, 'aula 2'),
       (3, 'aula 3'),
       (4, 'aula 4');

-- SELECT INTO: cria uma nova tabela a partir de um SELECT
SELECT * INTO tabelaNova FROM aula;

-- INSERT ... SELECT: insere dados vindos de outra tabela
CREATE TABLE aulaVideo (
    id         INT PRIMARY KEY,
    numeroAula VARCHAR(200)
);

CREATE TABLE SobreVideo (
    id                 INT PRIMARY KEY,
    professorNome      VARCHAR(200),
    professorSobrenome VARCHAR(200)
);

INSERT INTO aulaVideo (id, numeroAula)
VALUES (2, 'Aula Sobre SQL'),
       (3, 'Aula Sobre Subqueries'),
       (4, 'Aula Sobre INSERT INTO');

INSERT INTO SobreVideo (id, professorNome, professorSobrenome)
VALUES (1, 'Jhonatan', 'Souza');

INSERT INTO aulaVideo (id, numeroAula)
SELECT id, professorNome + ' ' + professorSobrenome
FROM SobreVideo;

SELECT * FROM aulaVideo;

-- UPDATE (sempre com WHERE, senão altera todas as linhas)
-- Sintaxe: UPDATE tabela SET coluna1 = valor1, coluna2 = valor2 WHERE condicao;
UPDATE aula SET nome = 'aula first one' WHERE id = 1;
UPDATE aula SET nome = 'mudei'          WHERE id = 3;
UPDATE aula SET nome = 'ultima aula'    WHERE id = 4;

SELECT * FROM aula;

-- DELETE (sempre com WHERE)
DELETE FROM aula
WHERE nome = 'mudei';

SELECT * FROM aula;
