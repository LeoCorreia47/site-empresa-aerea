CREATE TABLE cliente (
  id_cliente INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  saldo_milhas INTEGER DEFAULT 0,
  id_endereco INTEGER NOT NULL,
  CONSTRAINT fk_endereco FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
);