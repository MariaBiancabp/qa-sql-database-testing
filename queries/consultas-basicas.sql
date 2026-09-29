-- 1. Listar todos os usuários
SELECT * FROM usuarios;

-- 2. Listar todos os pedidos
SELECT * FROM pedidos;

-- 3. Listar pedidos pendentes
SELECT *
FROM pedidos
WHERE status = 'PENDENTE';
