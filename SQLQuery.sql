-- Cr�er une base de donn�es
CREATE DATABASE BDD

-- Renomer une base de donn�es
ALTER DATABASE BDD MODIFY NAME = BDD_2

-- Supprimer une base de donn�es
DROP DATABASE BDD_2

-- Creer une table
CREATE DATABASE BDD
USE BDD
CREATE TABLE Personne (nom varchar(200), prenom varchar(200))

sp_rename 'Personne', 'Citoyen'

DROP TABLE Citoyen

