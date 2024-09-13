CREATE DATABASE  empresa_db;

CREATE USER 'funcionario'@'localhost' identified by '123';
CREATE USER 'gerente'@'localhost' identified by '1234';
CREATE USER 'admin'@'localhost' identified by '125';

GRANT SELECT ON empresa_db.* TO 'funcionario'@'localhost';
GRANT INSERT ON empresa_db.* TO 'gerente'@'localhost';
GRANT SELECT ON empresa_db.* TO 'gerente'@'localhost';
GRANT UPDATE ON empresa_db.* TO 'gerente'@'localhost';
GRANT ALL privileges ON empresa TO 'admin'@'localhost';

REVOKE INSERT ON empresa_db.* FROM 'gerente'@'localhost';

RENAME USER 'funcionario'@'localhost' TO 'assistente'@'localhost';

ALTER USER 'gerente'@'localhost' identified by 'nova_senha_gerente';

SHOW GRANTS FOR 'assistente'@'localhost';
SHOW GRANTS FOR 'gerente'@'localhost';
SHOW GRANTS FOR 'admin'@'localhost';

DROP USER 'assistente'@'localhost';