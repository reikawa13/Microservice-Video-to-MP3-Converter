/* SQL script to create our database */

/* User for our database. user that represent our auth service. */
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

USE auth;

CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('reikawakami13@email.com', 'Admin123');

  




