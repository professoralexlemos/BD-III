CREATE DATABASE IF NOT EXISTS gravadora;
USE gravadora;

CREATE TABLE IF NOT EXISTS produtos (
  id         int(11) DEFAULT NULL,
  nome       varchar(256) DEFAULT NULL,
  fabricante varchar(256) DEFAULT NULL,
  quantidade int(11) DEFAULT NULL,
  vlunitario decimal(10,4) DEFAULT NULL,
  tipo       varchar(256) DEFAULT NULL
);

INSERT INTO produtos (id, nome, fabricante, quantidade, vlunitario, tipo) VALUES
	(1, 'Playstation 3'          , 'Sony'     , 100, 1999.0000, 'Console'     ),
	(2, 'Core 2 Duo 4GB RamGB HD', 'Dell'     , 200, 1899.0000, 'Notebook'    ),
	(3, 'X Box 360 120 GB'       , 'Microsoft', 350, 1299.0000, 'Console'     ),
	(4, 'GT-16220 Quad Band'     , 'Samsung'  , 300, 499.0000 , 'Celuar'      ),
	(5, 'Iphone 4 32GB'          , 'Apple'    , 50 , 1499.0000, 'Smartphone'  ),
	(6, 'Playstation 2'          , 'Sony'     , 100, 399.0000 , 'Console'     ),
	(7, 'Sofá Estofado'          , 'Coréia'   , 200, 499.0000 , 'Sofá'        ),
	(8, 'Armário de Serviço'     , 'Aracaju'  , 50 , 129.0000 , 'Armário'     ),
	(9, 'Refrigerador 240L'      , 'CCE'      , 200, 1499.0000, 'Refrigerador'),
	(10, 'Wii 120GB'             , 'Nintendo' , 250, 999.0000 , 'Console'     );