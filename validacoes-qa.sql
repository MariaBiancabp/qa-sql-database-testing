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

-- Encontrar pedidos com valor inválido
SELECT *
FROM pedidos
WHERE valor <= 0;

-- Encontrar status fora do permitido
SELECT *
FROM pedidos
WHERE status NOT IN ('PAGO', 'PENDENTE', 'CANCELADO');

-- Procurar e-mails duplicados
SELECT email, COUNT(*) AS quantidade
FROM usuarios
GROUP BY email
HAVING COUNT(*) > 1;

-- Procurar pedidos sem usuário correspondente
SELECT p.*
FROM pedidos p
LEFT JOIN usuarios u
    ON p.usuario_id = u.id
WHERE u.id IS NULL;

-- Procurar nomes duplicados
SELECT nome, COUNT(*) AS quantidade
FROM usuarios
GROUP BY nome
HAVING COUNT(*) > 1;