\d animals;
INSERT INTO animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon', '2020-2-3', 0, true, 10.23 );
SELECT * FROM animals;
INSERT INTO animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES (2, 'Gabumon', '2018-11-15', 2, true, 8 ); 
SELECT * FROM animals;
UPDATE animals SET neutered = false WHERE id = 1;
INSERT INTO animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', '2021-1-7' , 1, false , 15.04 ), (4, 'Devimon', '2017-5-12', 5, true,11);
SELECT * FROM animals;

-- The data for the second day's project

 INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES (5, 'Charmander', '2020-2-8', 0, 'false', -11),
 (6, 'Plantmon', '2021-11-15', 2, 'true', -5.7),
  (7, 'Squirtle', '1993-4-2', 3, 'false', -12.13),
 (8, 'Angemon', '2005-6-12', 1, 'true',-45),
 (9, 'Boarmon', '2005-6-7', 7, 'true', 20.4),
 (10, 'Blossom', '1998-10-13', 3, 'true', 17),
 (11, 'Ditto', '2022-5-14', 4, 'true', 22);

 SELECT * FROM animals;


 INSERT INTO owners(full_name, age)
VALUES
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

INSERT INTO species(name)
VALUES
  ('Pokemon'),
  ('Digimon');

   insert into vets(name, age, date_of_graduation)
  values
    ('William Tatcher', 45, '2000-04-23'),
    ('Maisy Smith', 26, '2019-01-17'),
    ('Stephanie Mendez', 64, '1981-05-04'),
    ('Jack Harkness', 38, '2008-06-11');

  insert into specializations(vet_id, species_id)
  values
    (1, (select id from species where name = 'Pokemon')),
    (3, (select id from species where name = 'Pokemon')),
    (3, (select id from species where name = 'Digimon')),
    (4, (select id from species where name = 'Digimon'));

    INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES
  ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '2020-05-24'),
  ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2020-07-22'),
  ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2021-02-02'),
  ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-01-05'),
  ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-03-08'),
  ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-05-14'),
  ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2021-05-04'),
  ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2021-02-24'),
  ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2019-12-21'),
  ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '2020-08-10'),
  ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2021-04-07'),
  ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2019-09-29'),
  ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2020-10-03'),
  ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Jack Harkness'), '2020-11-04'),
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2019-01-24'),
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2019-05-15'),
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-02-27'),
  ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Maisy Smith'), '2020-08-03'),
  ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Stephanie Mendez'), '2020-05-24'),
  ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'William Tatcher'), '2021-01-11');

INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';
