INSERT INTO usuarios (id, nome, email)
VALUES
(1, 'Maria Bianca', 'bia@email.com'),
(2, 'Ana Luiza', 'ana@email.com'),
(3, 'Carlos Souza', 'carlos@email.com');

INSERT INTO pedidos (id, usuario_id, status, valor)
VALUES
(101, 1, 'PAGO', 150.00),
(102, 1, 'PENDENTE', 80.00),
(103, 2, 'CANCELADO', 200.00),
(104, 3, 'PAGO', 320.50);