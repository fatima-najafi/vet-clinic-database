/* Database schema to keep the structure of the entire database. */

-- Create the vet_clinic database
CREATE DATABASE vet_clinic;
-- Create the animals' table
CREATE TABLE animals (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL
);
-- Modify your schema.sql file.
--Add a column species of type string to your animals table.
ALTER TABLE animals
ADD COLUMN species VARCHAR(100)

  --Create the owner TABLE
  CREATE TABLE owners(
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(100),
  age INTEGER
  );
--- Create species table
 CREATE TABLE species(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
 );

 -- Drop species COLUMN
  ALTER TABLE animals
  DROP COLUMN species;
  -- Modify the animals table
  
  ALTER TABLE animals
  ADD COLUMN species_id INTEGER REFERENCES species(id),
  ADD COLUMN owner_id INTEGER REFERENCES owners(id);