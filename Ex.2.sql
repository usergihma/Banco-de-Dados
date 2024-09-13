CREATE USER 'gaibriel'@'localhost' identified by '123';
RENAME USER 'gaibriel'@'localhost' TO 'giovanna'@'localhost';

SELECT user, HOST FROM MYSQL.user;

CREATE USER 'giulia'@'localhost' identified by '123';
DROP USER 'giulia'@'localhost';

CREATE USER 'gio'@'localhost' identified by '123';
RENAME USER 'gio'@'localhost' TO 'giih'@'localhost';
