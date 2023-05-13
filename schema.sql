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



update animals set species_id = case 
  when name like '%mon' then (select id from species where name = 'Digimon')
  else (select id from species where name = 'Pokemon')
end;

update animals set owner_id = case
  when name = 'Agumon' then (select id from owners where full_name = 'Sam Smith')
  when name = 'Pikachu' or name = 'Gabumon'  then (select id from owners where full_name = 'Jesnnifer Orwell')
  when name = 'Plantmon' then (select id from owners where full_name = 'Bob')
  when name = 'Charmander' or name = 'Squirtle' or name = 'Blossom' then (select id from owners where full_name = 'Melody Pond')
  when name = 'Angemon' or name = 'Boarmon' then (select id from owners where full_name = 'Dean Winchester')
  end;

  create table vets (id serial primary key, name varchar(255), age integer, date_of_graduation date);

create table specializations (
    vet_id integer references vets(id),
    species_id integer references species(id),
    primary key(vet_id, species_id)
);

ALTER TABLE animals ALTER COLUMN ADD UNIQUE(id);

CREATE TABLE visits(
  id INT GENERATED ALWAYS AS IDENTITY,
  animal_id INT REFERENCES animals(id),
  vet_id INT REFERENCES vets(id),
  date_of_visit DATE,
  PRIMARY KEY(id)
);