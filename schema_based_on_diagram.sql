                               
 CREATE DATABASE diagram_database;
 
 \c diagram_database;

 CREATE TABLE patients (
 id INT NOT NULL PRIMARY KEY,
 name VARCHAR(30),
 date_of_birth DATE);

 CREATE TABLE medical_histories(
 id INT NOT NULL PRIMARY KEY,
 admitted_at TIMESTAMP NOT NULL,
 patient_id INT NOT NULL,
 status VARCHAR(50),
 FOREIGN KEY (patient_id) REFERENCES patients(id));

 CREATE TABLE treatments (
 id INT NOT NULL,
 type VARCHAR(30),
 name VARCHAR(30));

 ALTER TABLE treatments ADD PRIMARY KEY (id);

