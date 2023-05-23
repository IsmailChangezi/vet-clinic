                               
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

 CREATE TABLE invoices (
 id INT NOT NULL PRIMARY KEY,
 total_amount DECIMAL,
 generated_at TIMESTAMP,
 payed_at TIMESTAMP,
 medical_history_id INT ,
 FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id));

 CREATE TABLE invoice_items (
 id INT NOT NULL,
 unit_price DECIMAL,
 quantity INT NOT NULL,
 total_price DECIMAL,
 invoice_id INT ,
 treatment_id INT,
 FOREIGN KEY (invoice_id) REFERENCES invoices(id),
 FOREIGN KEY (treatment_id) REFERENCES treatments(id));

