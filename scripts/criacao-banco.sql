CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    status TEXT NOT NULL,
    valor REAL NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);