-- 1. Pedido com valor negativo
INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES (105, 1, 'PAGO', -50.00);

-- 2. Pedido com status inválido
INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES (106, 2, 'EM_ANALISE_X', 120.00);

-- 3. Tentativa de usuário com e-mail duplicado
-- Deve falhar porque email possui restrição UNIQUE.
INSERT INTO usuarios (id, nome, email)
VALUES (4, 'Joana Silva', 'bia@email.com');

-- 4. Pedido com usuário inexistente
-- Pode ser aceito ou rejeitado conforme a configuração de foreign_keys do SQLite.
INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES (107, 999, 'PAGO', 90.00);

-- 5. Usuários com nome duplicado
-- IDs e e-mails são diferentes para permitir testar a duplicidade apenas do nome.
INSERT INTO usuarios (id, nome, email)
VALUES (5, 'Joana Silva', 'bia5@email.com');

INSERT INTO usuarios (id, nome, email)
VALUES (6, 'Joana Silva', 'bia6@email.com');
