-- creates the database friendzy_db and the tables states, cities,
-- users, interests

-- Drop database
DROP DATABASE IF EXISTS friendzy_dev_db;

-- Create database + user if doesn't exist
CREATE DATABASE IF NOT EXISTS friendzy_dev_db;
CREATE USER IF NOT EXISTS 'friendzy_dev'@'localhost';
SET PASSWORD FOR 'friendzy_dev'@'localhost' = 'friendzy_pwd';
GRANT ALL ON `friendzy_dev_db`.* TO 'friendzy_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'friendzy_dev'@'localhost';
FLUSH PRIVILEGES;

USE friendzy_dev_db;

DROP TABLE IF EXISTS states;
CREATE TABLE IF NOT EXISTS states (
    id varchar(60) PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    );

DROP TABLE IF EXISTS cities;
CREATE TABLE IF NOT EXISTS cities (
    id varchar(60) PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    state_id VARCHAR(60) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states (id),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id varchar(60) PRIMARY KEY,
    email varchar(128) NOT NULL,
    password varchar(128) NOT NULL,
    first_name varchar(128) DEFAULT NULL,
    last_name varchar(128) DEFAULT NULL
    );
INSERT INTO users VALUES ('28328ecf-43d8-4cc1-9405-d288c8f6ef3e', 'charlotte.lane@example.com', '1qaz2wsx', 'Charlotte', 'Lane'), ('34ac3690-02e3-409f-b433-38621f71ea7b', 'carl.boyd@example.com', 'mommy', 'Carl', 'Boyd');

DROP TABLE IF EXISTS interests;
CREATE TABLE interests (
    id varchar(60) PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
    );
