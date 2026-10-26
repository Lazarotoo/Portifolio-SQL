# 📊 Portfólio SQL Server

Coleção de exercícios de **SQL (T-SQL)** resolvidos no **SQL Server Management Studio (SSMS)**, organizados por tema, partindo de consultas básicas até criação e manipulação de objetos do banco.

## 🛠️ Tecnologias

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Bancos de exemplo: **AdventureWorks** e **Northwind**

## 📁 Estrutura

```
Portfolio-SQL/
├── README.md
└── scripts/
    ├── 01_select_basico.sql
    ├── 02_filtros_where.sql
    ├── ...
    └── 12_views.sql
```

## 📚 Conteúdo

| # | Script | Tema | Conceitos | Banco |
|---|--------|------|-----------|-------|
| 01 | [01_select_basico.sql](scripts/01_select_basico.sql) | Consultas básicas e contagens | `SELECT`, `WHERE`, `AND`, `COUNT`, `DISTINCT`, `TOP`, `ORDER BY` | AdventureWorks |
| 02 | [02_filtros_where.sql](scripts/02_filtros_where.sql) | Filtros avançados | `BETWEEN`, `IN`, `NOT IN`, `LIKE` | AdventureWorks |
| 03 | [03_agregacao_group_by_having.sql](scripts/03_agregacao_group_by_having.sql) | Agregações e agrupamentos | `SUM`, `AVG`, `MIN`, `GROUP BY`, `HAVING`, `AS` | AdventureWorks |
| 04 | [04_joins.sql](scripts/04_joins.sql) | Junção de tabelas | `INNER JOIN`, `LEFT JOIN`, `IS NULL` | AdventureWorks |
| 05 | [05_union.sql](scripts/05_union.sql) | União de resultados | `UNION` | AdventureWorks |
| 06 | [06_self_join_northwind.sql](scripts/06_self_join_northwind.sql) | Auto-relacionamento | `SELF JOIN`, `DATEPART` | Northwind |
| 07 | [07_subqueries.sql](scripts/07_subqueries.sql) | Subconsultas | Subquery escalar, `IN`, comparação com `JOIN` | AdventureWorks |
| 08 | [08_funcoes_de_data.sql](scripts/08_funcoes_de_data.sql) | Funções de data | `DATEPART`, agrupamento por ano/mês | AdventureWorks |
| 09 | [09_ddl_tabelas.sql](scripts/09_ddl_tabelas.sql) | Estrutura de tabelas (DDL) | `CREATE`, `ALTER`, `sp_rename`, `TRUNCATE`, `DROP`, `PK/FK` | Banco de testes |
| 10 | [10_dml_insert_update_delete.sql](scripts/10_dml_insert_update_delete.sql) | Manipulação de dados (DML) | `INSERT`, `INSERT...SELECT`, `SELECT INTO`, `UPDATE`, `DELETE` | Banco de testes |
| 11 | [11_constraints.sql](scripts/11_constraints.sql) | Integridade de dados | `CHECK`, `NOT NULL`, `UNIQUE` | Banco de testes |
| 12 | [12_views.sql](scripts/12_views.sql) | Views | `CREATE VIEW` | AdventureWorks |

## ▶️ Como executar

1. Instale o SQL Server e o SSMS.
2. Restaure o banco [AdventureWorks](https://learn.microsoft.com/sql/samples/adventureworks-install-configure) (e o Northwind para o script 06).
3. Abra o script desejado no SSMS, selecione o banco correto e execute (`F5`).
4. Os scripts 09, 10 e 11 criam tabelas próprias; execute-os em um banco de testes.

## 👤 Autor

**Matheus Lazaroto**
[GitHub](https://github.com/Lazarotoo) · [LinkedIn]https://www.linkedin.com/in/matheus-lazaroto-gon%C3%A7alves/
