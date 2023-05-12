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

--  day 3 project

CREATE TABLE owners(
    id SERIAL PRIMARY KEY,
    full_name CHAR(50),
    age INT
);

CREATE TABLE species(
    id SERIAL PRIMARY KEY,
    name CHAR(50)
);

CREATE SEQUENCE my_id AS integer START 1 OWNED BY animals.id;

ALTER TABLE animals ALTER COLUMN id SET DEFAULT nextval('my_id');

\d animals;

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN
species_id INTEGER REFERENCES species(id);

SELECT * FROM animals;

 ALTER TABLE animals ADD COLUMN
  owner_id INTEGER REFERENCES owners(id);