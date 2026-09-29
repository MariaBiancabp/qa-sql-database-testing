-- 1. Validar se existem pedidos com valor inválido
SELECT *
FROM pedidos
WHERE valor <= 0;

-- 2. Contar pedidos por status
SELECT status, COUNT(*) AS quantidade
FROM pedidos
GROUP BY status;

-- 3. Validar relacionamento entre usuário e pedido
SELECT
    p.id AS pedido_id,
    u.nome AS usuario,
    p.status,
    p.valor
FROM pedidos p
JOIN usuarios u
    ON p.usuario_id = u.id;

-- 4. Validar se existem pedidos sem usuário correspondente
SELECT p.*
FROM pedidos p
LEFT JOIN usuarios u
    ON p.usuario_id = u.id
WHERE u.id IS NULL;

-- 5. Encontrar status fora do permitido
SELECT *
FROM pedidos
WHERE status NOT IN ('PAGO', 'PENDENTE', 'CANCELADO');

-- 6. Procurar e-mails duplicados
SELECT email, COUNT(*) AS quantidade
FROM usuarios
GROUP BY email
HAVING COUNT(*) > 1;

-- 7. Procurar nomes duplicados
SELECT nome, COUNT(*) AS quantidade
FROM usuarios
GROUP BY nome
HAVING COUNT(*) > 1;

-- 8. Contar quantidade de pedidos por usuário
SELECT
    u.id AS usuario_id,
    u.nome,
    COUNT(p.id) AS total_pedidos
FROM usuarios u
LEFT JOIN pedidos p
    ON u.id = p.usuario_id
GROUP BY u.id, u.nome;
