# CRUD

USE gravadora;

DESC gravadora;

# INSERT
INSERT INTO gravadora (nome_gravadora, codigo_gravadora, endereco_gravadora, telefone_gravadora) 
VALUES ('Outra Gravadora de Teste', 103, 'Rua Boa Morada', '55555555');

# SELECT
SELECT gravadora.*
  FROM gravadora
 WHERE telefone_gravadora IS NOT NULL;

# UPDATE  
UPDATE gravadora 
   SET nome_gravadora = 'Novo nome para a gravadora',
       contato_gravadora = 'Elias',
       url_gravadora = 'www.etec.com.br'
WHERE codigo_gravadora = 103;


# DELETE
DELETE FROM gravadora WHERE codigo_gravadora = 100;
