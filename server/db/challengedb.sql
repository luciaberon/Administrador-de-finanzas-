CREATE DATABASE IF NOT EXISTS challengeDB;

USE challengeDB;

-- USERS TABLE --
CREATE TABLE IF NOT EXISTS users(
    email varchar(20) NOT NULL,
    password varchar (60) NOT NULL,
    id INT(11) NOT NULL,
    PRIMARY KEY (id)
);


ALTER TABLE users
	MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;


-- RECORDS TABLE --
CREATE TABLE IF NOT EXISTS records(
	type_of_operation enum('withdrawal','deposit'),
    amount integer NOT NULL,
    recordID INT(11) NOT NULL,
    operationDate DATE,
    FOREIGN KEY(recordID) REFERENCES users(id)		
);

   