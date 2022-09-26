-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cliente (
nome_cliente VARCHAR( 80),
id_cliente INTEGER PRIMARY KEY,
endereco_cliente VARCHAR(100),
cpf_cliente VARCHAR(11)
)

CREATE TABLE compra (
data_ida DATETIME,
data_volta DATETIME,
valor_compra DECIMAL(10),
id_compra INTEGER PRIMARY KEY,
id_cliente INTEGER,
id_passagem INTEGER,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
)

CREATE TABLE passagem (
id_passagem INTEGER PRIMARY KEY,
cruzeiro_passagem VARCHAR(10),
aviao_passagem VARCHAR(10),
valor_passagem DECIMAL(10)
)

ALTER TABLE compra ADD FOREIGN KEY(id_passagem) REFERENCES passagem (id_passagem)
