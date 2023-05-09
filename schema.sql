 CREATE DATABASE vet_clinic;
\c vet_clinic;
 CREATE TABLE animals(
 id INT,
 name CHAR(50),
 date_of_birth DATE,
 escape_attempts INT,
 neutered BOOLEAN,
 weight_kg DECIMAL);