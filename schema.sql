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