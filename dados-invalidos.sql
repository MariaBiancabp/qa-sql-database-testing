-- 1. Pedido com valor negativo
INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES (105, 1, 'PAGO', -50.00);

-- 2. Pedido com status inválido
INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES (106, 2, 'EM_ANALISE_X', 120.00);

-- 3. Usuário com e-mail duplicado
INSERT INTO usuarios (id, nome, email)
VALUES (4, 'Joana Silva', 'bia@email.com');

-- 4. Pedido com usuário inexistente
INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES (107, 999, 'PAGO', 90.00);

-- 5. Usuário com nome duplicado
INSERT INTO usuarios (id, nome, email)
VALUES (4, 'Joao Silva', 'bia5@email.com');

INSERT INTO usuarios (id, nome, email)
VALUES (5, 'Joao Silva', 'bia6@email.com');