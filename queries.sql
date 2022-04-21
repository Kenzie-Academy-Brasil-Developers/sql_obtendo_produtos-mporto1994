CREATE TABLE IF NOT EXISTS produtos(
	id BIGSERIAL CONSTRAINT prodId PRIMARY KEY,
  	nome VARCHAR(128) NOT NULL  UNIQUE,
  	categoria VARCHAR(128) NOT NULL,
  	price DECIMAL(6,2) NOT NULL
);

-- 
ALTER TABLE produtos RENAME price TO preco

DELETE FROM produtos WHERE nome='Webcam' RETURNING *;

UPDATE produtos SET preco = 1899.99 WHERE nome='Cama de casal' RETURNING *;

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco>1000;

SELECT * FROM produtos WHERE nome LIKE 'T%';

SELECT * FROM produtos WHERE nome LIKE '%Gamer%';

SELECT COUNT(*) FROM produtos;

SELECT MAX(preco) FROM produtos;

SELECT AVG(preco) FROM produtos ;

SELECT AVG(preco)FROM produtos WHERE nome LIKE 'M%';

SELECT SUM(preco) FROM produtos;

SELECT * FROM produtos ORDER BY nome;

SELECT * FROM produtos ORDER BY preco DESC;


SELECT
  LOWER(categoria),COUNT(*)
FROM
  produtos
GROUP BY
  LOWER(categoria);


SELECT
	LOWER(categoria), AVG(preco)
FROM
  produtos
GROUP BY
  LOWER(categoria);


SELECT
  LOWER(categoria),MIN(preco)
FROM
  produtos
GROUP BY
  LOWER(categoria);


SELECT
  categoria, COUNT(*) 
FROM
  produtos
WHERE
  preco<1000
GROUP BY
  categoria;



