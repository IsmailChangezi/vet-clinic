\d animals;
INSERT INTO animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon', '2020-2-3',0,true,10.23 );
SELECT * FROM animals;
INSERT INTO animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES (2, 'Gabumon', '2018-11-15',2,true,8 ); 
SELECT * FROM animals;
UPDATE animals SET neutered = false WHERE id = 1;
INSERT INTO animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', '2021-1-7',1,false,15.04 ), (4, 'Devimon', '2017-5-7', 5, true,11);
SELECT * FROM animals;