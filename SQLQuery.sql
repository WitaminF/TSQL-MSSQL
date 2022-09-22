-- Créer une base de données
CREATE DATABASE BDD

-- Renomer une base de données
ALTER DATABASE BDD MODIFY NAME = BDD_2

-- Supprimer une base de données
DROP DATABASE BDD_2

-- Creer une table
CREATE DATABASE BDD
USE BDD
CREATE TABLE Personne (nom varchar(200), prenom varchar(200))

-- Renomer une table
sp_rename 'Personne', 'Citoyen'

-- Supprimer une table
DROP TABLE Citoyen

-- Insérer des données dans la table (INTO n'est pas obligatoire)
INSERT INTO Citoyen VALUES
('Le roi', 'Lion'),
('Winnnie', 'L''ourson')

-- Selectionner des données dans une table
SELECT * FROM Citoyen

-- Selectionner des données dans une table avec WHERE
SELECT * FROM Citoyen WHERE prenom = 'Lion'

