CREATE DATABASE IF NOT EXISTS firewallLogs CHARACTER SET utf8;
USE firewallLogs;
CREATE TABLE IF NOT EXISTS logs (
    id         INT AUTOINCREMENT,
    eventType  VARCHAR(64),
    dateTime   DATETIME,
    srcAddr    VARCHAR(16),
    srcPort    INT,
    dstAddr    VARCHAR(16),
    dstPort    INT,
    
    PRIMARY KEY (id)
);


CREATE DATABASE IF NOT EXISTS passwordsHashes CHARACTER SET utf8;
use passwordsHashes;
CREATE TABLE IF NOT EXISTS yandex (
    email           VARCHAR(256),
    passwordHash    VARCHAR(256),

    PRIMARY KEY (email)
);
CREATE TABLE IF NOT EXISTS google (
    email           VARCHAR(256),
    passwordHash    VARCHAR(256),
    
    PRIMARY KEY (email)
);
CREATE TABLE IF NOT EXISTS mailru (
    email           VARCHAR(256),
    passwordHash    VARCHAR(256),

    PRIMARY KEY (email)
);
