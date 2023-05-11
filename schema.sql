 CREATE DATABASE vet_clinic;
\c vet_clinic;
 CREATE TABLE animals(
 id INT,
 name CHAR(50),
 date_of_birth DATE,
 escape_attempts INT,
 neutered BOOLEAN,
 weight_kg DECIMAL);

-- for the second day's project

 ALTER TABLE animals ADD COLUMN species VARCHAR(50);