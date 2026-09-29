# QA SQL Database Testing

Projeto prático de **SQL aplicado a Quality Assurance**, utilizando **SQLite** para simular validações de dados em um cenário simples de usuários e pedidos.

O objetivo é demonstrar como SQL pode ser usado por QA para consultar informações, cruzar dados entre tabelas, validar regras de negócio e identificar inconsistências.

## Tecnologias

- SQL
- SQLite
- Visual Studio Code
- Extensão SQLite para VS Code
- Git e GitHub

## Estrutura do projeto

```text
qa-sql-database-testing/
├── queries/
│   ├── consultas-basicas.sql
│   └── validacoes-qa.sql
├── scripts/
│   ├── criacao-banco.sql
│   ├── dados-teste.sql
│   └── dados-invalidos.sql
└── README.md
```

O arquivo local `qa-database.db` não é versionado. O banco pode ser recriado executando os scripts SQL.

## Modelo de dados

O projeto utiliza duas tabelas:

- **usuarios**: id, nome e e-mail;
- **pedidos**: id, usuário, status e valor.

A tabela `pedidos` possui relacionamento com `usuarios` por meio de `usuario_id`.

## Consultas básicas

O arquivo `queries/consultas-basicas.sql` contém consultas para:

- listar usuários;
- listar pedidos;
- filtrar pedidos pendentes.

## Validações de QA

O arquivo `queries/validacoes-qa.sql` cobre cenários como:

- pedidos com valor inválido;
- contagem de pedidos por status;
- relacionamento entre usuário e pedido com `JOIN`;
- pedidos sem usuário correspondente com `LEFT JOIN`;
- status fora da lista permitida;
- e-mails duplicados;
- nomes duplicados;
- quantidade de pedidos por usuário.

## Dados inválidos

O arquivo `scripts/dados-invalidos.sql` contém dados inseridos propositalmente para simular inconsistências e permitir a execução das validações de QA, incluindo:

- valor negativo;
- status inválido;
- tentativa de e-mail duplicado;
- pedido vinculado a usuário inexistente;
- nomes duplicados.

Alguns cenários podem ser bloqueados pelo próprio banco, como e-mail duplicado, demonstrando também o papel das constraints na integridade dos dados.

## Conceitos SQL praticados

- `SELECT`
- `WHERE`
- `INSERT`
- `UPDATE`
- `DELETE`
- `COUNT`
- `GROUP BY`
- `HAVING`
- `JOIN`
- `LEFT JOIN`

## Como executar

1. Crie um banco SQLite local.
2. Execute `scripts/criacao-banco.sql`.
3. Execute `scripts/dados-teste.sql`.
4. Rode as consultas de `queries/consultas-basicas.sql`.
5. Use `scripts/dados-invalidos.sql` para simular inconsistências.
6. Execute as consultas de `queries/validacoes-qa.sql` para identificar e analisar os problemas.

> Recomenda-se executar os blocos de dados inválidos individualmente, pois alguns cenários são propositalmente rejeitados pelas constraints do banco.

## Objetivo de portfólio

Este projeto faz parte do meu portfólio de estudos em **Quality Assurance** e demonstra o uso de SQL como apoio à validação de dados, investigação de inconsistências e verificação de regras de negócio.
