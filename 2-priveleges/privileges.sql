/*
1) Пользователя для управления только данными во всех БД на сервере.
имя: admin
хост: любой хост
без права передавать привилегии
*/

DROP USER IF EXISTS 'admin'@'%';
CREATE USER 'admin'@'%' IDENTIFIED BY "12345678";
GRANT CREATE, DELETE, DROP, INSERT, UPDATE, SELECT 
    ON *.*
    TO 'admin'@'%';

/*
2) Пользователя для управления схемой firewallLogs
имя: firewallAdmin
хост: localhost
с правом передавать привелегии
*/

DROP USER IF EXISTS 'firewallAdmin'@'localhost';
CREATE USER 'firewallAdmin'@'localhost' IDENTIFIED BY "12345678";
GRANT ALL PRIVILEGES 
    ON firewallLogs.* 
    TO 'firewallAdmin'@'localhost'
    WITH GRANT OPTION;

/*
3) Пользователя для загрузки данных в таблицы схемы passwordsHashes
имя: pwdLoader
хост: любой хост
без права передавать привилегии
*/

DROP USER IF EXISTS 'pwdLoader'@'%';
CREATE USER 'pwdLoader'@'%' IDENTIFIED BY "12345678";
GRANT INSERT 
    ON passwordsHashes.* 
    TO 'pwdLoader'@'%';

/*
4) Пользователя для анализа данных в схеме passwordsHashes
имя: pwdAnalyst
с правом передавать привилегии
*/

DROP USER IF EXISTS 'pwdAnalyst'@'%';
CREATE USER 'pwdAnalyst'@'%' IDENTIFIED BY "12345678";
GRANT SELECT 
    ON passwordsHashes.* 
    TO 'pwdAnalyst'@'%'
    WITH GRANT OPTION;

/*
5) Анонимного пользователя
без права передавать привелегии
 */

DROP USER IF EXISTS ''@'%';
CREATE USER ''@'%';
REVOKE ALL PRIVILEGES
    ON *.*
    FROM ''@'%';
